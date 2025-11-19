@interface SPUISSearchableWebsiteResultBuilder
+ (BOOL)supportsResult:(id)a3;
+ (id)cardSectionForSearchWebsiteCommand:(id)a3 searchString:(id)a4;
+ (id)websiteNameForURL:(id)a3;
- (SPUISSearchableWebsiteResultBuilder)initWithResult:(id)a3;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildSecondaryCommand;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)bundleIdentifierForAppIconBadgeImage;
- (void)setQueryContext:(id)a3;
@end

@implementation SPUISSearchableWebsiteResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v3 = [a3 contentType];
  v4 = [v3 isEqualToString:@"com.apple.safari.quickWebsiteSearchProvider"];

  return v4;
}

- (SPUISSearchableWebsiteResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = SPUISSearchableWebsiteResultBuilder;
  v5 = [(SPUISResultBuilder *)&v28 initWithResult:v4];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = [(SPUISResultBuilder *)v5 result];
    v9 = [v8 valueForAttribute:*MEMORY[0x277CC3380] withType:objc_opt_class()];
    v10 = [v7 URLWithString:v9];

    v11 = [(SPUISResultBuilder *)v6 result];
    v12 = [v11 valueForAttribute:*MEMORY[0x277CC3388] withType:objc_opt_class()];

    v13 = objc_opt_new();
    [v13 setHost:v12];
    v14 = [v10 scheme];
    [v13 setScheme:v14];

    v15 = [v13 URL];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v10;
    }

    [(SPUISSearchableWebsiteResultBuilder *)v6 setUrl:v17];

    v18 = objc_opt_class();
    v19 = [(SPUISSearchableWebsiteResultBuilder *)v6 url];
    v20 = [v18 websiteNameForURL:v19];
    if (v20)
    {
      [(SPUISSearchableWebsiteResultBuilder *)v6 setWebsiteName:v20];
    }

    else
    {
      v21 = [v4 valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
      [(SPUISSearchableWebsiteResultBuilder *)v6 setWebsiteName:v21];
    }

    v22 = [(SPUISResultBuilder *)v6 result];
    v23 = [v22 applicationBundleIdentifier];
    [(SPUISSearchableWebsiteResultBuilder *)v6 setBundleIdentifier:v23];

    v24 = [(SPUISResultBuilder *)v6 result];
    v25 = [v24 valueForAttribute:*MEMORY[0x277CC2418] withType:objc_opt_class()];
    [(SPUISSearchableWebsiteResultBuilder *)v6 setEntityIdentifier:v25];

    v26 = [v4 rankingItem];
    -[SPUISSearchableWebsiteResultBuilder setPrimaryCommandExecutesSearch:](v6, "setPrimaryCommandExecutesSearch:", [v26 isMatchedAliasShortcut]);
  }

  return v6;
}

+ (id)websiteNameForURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (websiteNameForURL__onceToken != -1)
    {
      +[SPUISSearchableWebsiteResultBuilder websiteNameForURL:];
    }

    v4 = [websiteNameForURL__websiteNameCache objectForKey:v3];
    if (!v4)
    {
      v5 = [v3 host];
      if ([v5 hasPrefix:@"www."])
      {
        v6 = [v5 substringFromIndex:{objc_msgSend(@"www.", "length")}];

        v5 = v6;
      }

      if ([v5 length])
      {
        ppDb = 0;
        v4 = 0;
        if (!sqlite3_open_v2([@"/System/Volumes/Preboot/Cryptexes/OS/System/Library/Frameworks/AuthenticationServices.framework/Versions/A/Resources/WebsiteNamesForPasswordManager.sqlite" UTF8String], &ppDb, 1, 0))
        {
          v7 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
          pStmt = 0;
          v4 = 0;
          if (!sqlite3_prepare(ppDb, "SELECT name FROM websiteNames WHERE domain=?", -1, &pStmt, 0))
          {
            sqlite3_bind_text(pStmt, 1, [v5 cStringUsingEncoding:v7], -1, 0);
            v4 = 0;
            if (sqlite3_step(pStmt) == 100)
            {
              v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:sqlite3_column_text(pStmt encoding:{0), v7}];
            }

            sqlite3_finalize(pStmt);
          }

          sqlite3_close(ppDb);
        }
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        v9 = v4;
      }

      else
      {
        v9 = &stru_287C50EE8;
      }

      [websiteNameForURL__websiteNameCache setObject:v9 forKey:v3];
    }

    if ([(__CFString *)v4 length])
    {
      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __57__SPUISSearchableWebsiteResultBuilder_websiteNameForURL___block_invoke()
{
  websiteNameForURL__websiteNameCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)setQueryContext:(id)a3
{
  v8.receiver = self;
  v8.super_class = SPUISSearchableWebsiteResultBuilder;
  [(SPUISResultBuilder *)&v8 setQueryContext:a3];
  if ([(SPUISSearchableWebsiteResultBuilder *)self primaryCommandExecutesSearch])
  {
    v4 = [(SPUISResultBuilder *)self queryContext];
    v5 = [v4 searchString];

    v6 = [v5 rangeOfString:@" "];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v5 substringFromIndex:v6 + 1];
      [(SPUISSearchableWebsiteResultBuilder *)self setSearchString:v7];
    }
  }
}

- (id)buildThumbnail
{
  v3 = [(SPUISSearchableWebsiteResultBuilder *)self thumbnail];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISSearchableWebsiteResultBuilder;
    v5 = [(SPUISResultBuilder *)&v8 buildThumbnail];
  }

  v6 = v5;

  return v6;
}

- (id)bundleIdentifierForAppIconBadgeImage
{
  v3 = [(SPUISSearchableWebsiteResultBuilder *)self bundleIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISSearchableWebsiteResultBuilder;
    v5 = [(SPUISResultBuilder *)&v8 bundleIdentifierForAppIconBadgeImage];
  }

  v6 = v5;

  return v6;
}

- (id)buildTitle
{
  v16.receiver = self;
  v16.super_class = SPUISSearchableWebsiteResultBuilder;
  v3 = [(SPUISResultBuilder *)&v16 buildTitle];
  if ([(SPUISSearchableWebsiteResultBuilder *)self primaryCommandExecutesSearch])
  {
    v4 = MEMORY[0x277D4C598];
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Search %@" value:0 table:0];
    v8 = [(SPUISSearchableWebsiteResultBuilder *)self websiteName];
    v9 = v8;
    if (!v8)
    {
      v9 = [v3 text];
    }

    v10 = [v5 stringWithFormat:v7, v9];
    v11 = [v4 textWithString:v10];

    if (!v8)
    {
    }
  }

  else
  {
    v12 = [(SPUISSearchableWebsiteResultBuilder *)self websiteName];
    v13 = [v12 length];

    if (!v13)
    {
      goto LABEL_10;
    }

    v14 = MEMORY[0x277D4C598];
    v6 = [(SPUISSearchableWebsiteResultBuilder *)self websiteName];
    v11 = [v14 textWithString:v6];
    v7 = v3;
  }

  v3 = v11;
LABEL_10:

  return v3;
}

- (id)buildDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ([(SPUISSearchableWebsiteResultBuilder *)self primaryCommandExecutesSearch])
  {
    v3 = [(SPUISSearchableWebsiteResultBuilder *)self bundleIdentifier];
    SSAppNameForBundleId();
  }

  else
  {
    v3 = [(SPUISSearchableWebsiteResultBuilder *)self url];
    [SPUISLocalWebResultBuilder stringWithUrl:v3];
  }
  v4 = ;

  if (v4)
  {
    v5 = [MEMORY[0x277D4C598] textWithString:v4];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)buildCommand
{
  if ([(SPUISSearchableWebsiteResultBuilder *)self primaryCommandExecutesSearch])
  {
    v3 = [(SPUISSearchableWebsiteResultBuilder *)self bundleIdentifier];
    v4 = [(SPUISSearchableWebsiteResultBuilder *)self entityIdentifier];
    v5 = [(SPUISSearchableWebsiteResultBuilder *)self searchString];
    v6 = [_TtC19SpotlightUIServices32SPUISQuickWebsiteSearchUtilities quickWebsiteSearchCommandWithBundleIdentifier:v3 entityIdentifier:v4 searchQuery:v5];
  }

  else
  {
    v7 = [(SPUISSearchableWebsiteResultBuilder *)self url];

    if (v7)
    {
      v6 = objc_opt_new();
      v8 = MEMORY[0x277D4C550];
      v9 = [(SPUISSearchableWebsiteResultBuilder *)self url];
      v10 = [v8 punchoutWithURL:v9];
      [v6 setPunchout:v10];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = SPUISSearchableWebsiteResultBuilder;
      v6 = [(SPUISResultBuilder *)&v12 buildCommand];
    }
  }

  return v6;
}

- (id)buildSecondaryCommand
{
  if ([(SPUISSearchableWebsiteResultBuilder *)self primaryCommandExecutesSearch])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(SPUISSearchableWebsiteResultBuilder *)self buildThumbnail];
    if (!v4)
    {
      v4 = objc_opt_new();
      v5 = [(SPUISSearchableWebsiteResultBuilder *)self bundleIdentifier];
      [v4 setBundleIdentifier:v5];
    }

    v3 = objc_opt_new();
    v6 = [(SPUISSearchableWebsiteResultBuilder *)self bundleIdentifier];
    [v3 setBundleIdentifier:v6];

    v7 = [(SPUISSearchableWebsiteResultBuilder *)self entityIdentifier];
    [v3 setEntityIdentifier:v7];

    [v3 setTokenImage:v4];
    v8 = [(SPUISSearchableWebsiteResultBuilder *)self websiteName];
    [v3 setTokenString:v8];
  }

  return v3;
}

+ (id)cardSectionForSearchWebsiteCommand:(id)a3 searchString:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setPrimaryCommandExecutesSearch:1];
  [v7 setSearchString:v5];

  v8 = [v6 tokenString];
  [v7 setWebsiteName:v8];

  v9 = [v6 bundleIdentifier];
  [v7 setBundleIdentifier:v9];

  v10 = [v6 entityIdentifier];
  [v7 setEntityIdentifier:v10];

  v11 = [v6 tokenImage];

  [v7 setThumbnail:v11];
  v12 = [v7 buildInlineCardSection];

  return v12;
}

@end