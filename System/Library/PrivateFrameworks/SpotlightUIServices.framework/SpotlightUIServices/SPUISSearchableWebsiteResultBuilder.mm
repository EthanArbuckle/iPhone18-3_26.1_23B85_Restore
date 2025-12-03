@interface SPUISSearchableWebsiteResultBuilder
+ (BOOL)supportsResult:(id)result;
+ (id)cardSectionForSearchWebsiteCommand:(id)command searchString:(id)string;
+ (id)websiteNameForURL:(id)l;
- (SPUISSearchableWebsiteResultBuilder)initWithResult:(id)result;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildSecondaryCommand;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)bundleIdentifierForAppIconBadgeImage;
- (void)setQueryContext:(id)context;
@end

@implementation SPUISSearchableWebsiteResultBuilder

+ (BOOL)supportsResult:(id)result
{
  contentType = [result contentType];
  v4 = [contentType isEqualToString:@"com.apple.safari.quickWebsiteSearchProvider"];

  return v4;
}

- (SPUISSearchableWebsiteResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v28.receiver = self;
  v28.super_class = SPUISSearchableWebsiteResultBuilder;
  v5 = [(SPUISResultBuilder *)&v28 initWithResult:resultCopy];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CBEBC0];
    result = [(SPUISResultBuilder *)v5 result];
    v9 = [result valueForAttribute:*MEMORY[0x277CC3380] withType:objc_opt_class()];
    v10 = [v7 URLWithString:v9];

    result2 = [(SPUISResultBuilder *)v6 result];
    v12 = [result2 valueForAttribute:*MEMORY[0x277CC3388] withType:objc_opt_class()];

    v13 = objc_opt_new();
    [v13 setHost:v12];
    scheme = [v10 scheme];
    [v13 setScheme:scheme];

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
      v21 = [resultCopy valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
      [(SPUISSearchableWebsiteResultBuilder *)v6 setWebsiteName:v21];
    }

    result3 = [(SPUISResultBuilder *)v6 result];
    applicationBundleIdentifier = [result3 applicationBundleIdentifier];
    [(SPUISSearchableWebsiteResultBuilder *)v6 setBundleIdentifier:applicationBundleIdentifier];

    result4 = [(SPUISResultBuilder *)v6 result];
    v25 = [result4 valueForAttribute:*MEMORY[0x277CC2418] withType:objc_opt_class()];
    [(SPUISSearchableWebsiteResultBuilder *)v6 setEntityIdentifier:v25];

    rankingItem = [resultCopy rankingItem];
    -[SPUISSearchableWebsiteResultBuilder setPrimaryCommandExecutesSearch:](v6, "setPrimaryCommandExecutesSearch:", [rankingItem isMatchedAliasShortcut]);
  }

  return v6;
}

+ (id)websiteNameForURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    if (websiteNameForURL__onceToken != -1)
    {
      +[SPUISSearchableWebsiteResultBuilder websiteNameForURL:];
    }

    v4 = [websiteNameForURL__websiteNameCache objectForKey:lCopy];
    if (!v4)
    {
      host = [lCopy host];
      if ([host hasPrefix:@"www."])
      {
        v6 = [host substringFromIndex:{objc_msgSend(@"www.", "length")}];

        host = v6;
      }

      if ([host length])
      {
        ppDb = 0;
        v4 = 0;
        if (!sqlite3_open_v2([@"/System/Volumes/Preboot/Cryptexes/OS/System/Library/Frameworks/AuthenticationServices.framework/Versions/A/Resources/WebsiteNamesForPasswordManager.sqlite" UTF8String], &ppDb, 1, 0))
        {
          defaultCStringEncoding = [MEMORY[0x277CCACA8] defaultCStringEncoding];
          pStmt = 0;
          v4 = 0;
          if (!sqlite3_prepare(ppDb, "SELECT name FROM websiteNames WHERE domain=?", -1, &pStmt, 0))
          {
            sqlite3_bind_text(pStmt, 1, [host cStringUsingEncoding:defaultCStringEncoding], -1, 0);
            v4 = 0;
            if (sqlite3_step(pStmt) == 100)
            {
              v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:sqlite3_column_text(pStmt encoding:{0), defaultCStringEncoding}];
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

      [websiteNameForURL__websiteNameCache setObject:v9 forKey:lCopy];
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

- (void)setQueryContext:(id)context
{
  v8.receiver = self;
  v8.super_class = SPUISSearchableWebsiteResultBuilder;
  [(SPUISResultBuilder *)&v8 setQueryContext:context];
  if ([(SPUISSearchableWebsiteResultBuilder *)self primaryCommandExecutesSearch])
  {
    queryContext = [(SPUISResultBuilder *)self queryContext];
    searchString = [queryContext searchString];

    v6 = [searchString rangeOfString:@" "];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [searchString substringFromIndex:v6 + 1];
      [(SPUISSearchableWebsiteResultBuilder *)self setSearchString:v7];
    }
  }
}

- (id)buildThumbnail
{
  thumbnail = [(SPUISSearchableWebsiteResultBuilder *)self thumbnail];
  v4 = thumbnail;
  if (thumbnail)
  {
    buildThumbnail = thumbnail;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISSearchableWebsiteResultBuilder;
    buildThumbnail = [(SPUISResultBuilder *)&v8 buildThumbnail];
  }

  v6 = buildThumbnail;

  return v6;
}

- (id)bundleIdentifierForAppIconBadgeImage
{
  bundleIdentifier = [(SPUISSearchableWebsiteResultBuilder *)self bundleIdentifier];
  v4 = bundleIdentifier;
  if (bundleIdentifier)
  {
    bundleIdentifierForAppIconBadgeImage = bundleIdentifier;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISSearchableWebsiteResultBuilder;
    bundleIdentifierForAppIconBadgeImage = [(SPUISResultBuilder *)&v8 bundleIdentifierForAppIconBadgeImage];
  }

  v6 = bundleIdentifierForAppIconBadgeImage;

  return v6;
}

- (id)buildTitle
{
  v16.receiver = self;
  v16.super_class = SPUISSearchableWebsiteResultBuilder;
  buildTitle = [(SPUISResultBuilder *)&v16 buildTitle];
  if ([(SPUISSearchableWebsiteResultBuilder *)self primaryCommandExecutesSearch])
  {
    v4 = MEMORY[0x277D4C598];
    v5 = MEMORY[0x277CCACA8];
    websiteName3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [websiteName3 localizedStringForKey:@"Search %@" value:0 table:0];
    websiteName = [(SPUISSearchableWebsiteResultBuilder *)self websiteName];
    text = websiteName;
    if (!websiteName)
    {
      text = [buildTitle text];
    }

    v10 = [v5 stringWithFormat:v7, text];
    v11 = [v4 textWithString:v10];

    if (!websiteName)
    {
    }
  }

  else
  {
    websiteName2 = [(SPUISSearchableWebsiteResultBuilder *)self websiteName];
    v13 = [websiteName2 length];

    if (!v13)
    {
      goto LABEL_10;
    }

    v14 = MEMORY[0x277D4C598];
    websiteName3 = [(SPUISSearchableWebsiteResultBuilder *)self websiteName];
    v11 = [v14 textWithString:websiteName3];
    v7 = buildTitle;
  }

  buildTitle = v11;
LABEL_10:

  return buildTitle;
}

- (id)buildDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ([(SPUISSearchableWebsiteResultBuilder *)self primaryCommandExecutesSearch])
  {
    bundleIdentifier = [(SPUISSearchableWebsiteResultBuilder *)self bundleIdentifier];
    SSAppNameForBundleId();
  }

  else
  {
    bundleIdentifier = [(SPUISSearchableWebsiteResultBuilder *)self url];
    [SPUISLocalWebResultBuilder stringWithUrl:bundleIdentifier];
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
    bundleIdentifier = [(SPUISSearchableWebsiteResultBuilder *)self bundleIdentifier];
    entityIdentifier = [(SPUISSearchableWebsiteResultBuilder *)self entityIdentifier];
    searchString = [(SPUISSearchableWebsiteResultBuilder *)self searchString];
    buildCommand = [_TtC19SpotlightUIServices32SPUISQuickWebsiteSearchUtilities quickWebsiteSearchCommandWithBundleIdentifier:bundleIdentifier entityIdentifier:entityIdentifier searchQuery:searchString];
  }

  else
  {
    v7 = [(SPUISSearchableWebsiteResultBuilder *)self url];

    if (v7)
    {
      buildCommand = objc_opt_new();
      v8 = MEMORY[0x277D4C550];
      v9 = [(SPUISSearchableWebsiteResultBuilder *)self url];
      v10 = [v8 punchoutWithURL:v9];
      [buildCommand setPunchout:v10];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = SPUISSearchableWebsiteResultBuilder;
      buildCommand = [(SPUISResultBuilder *)&v12 buildCommand];
    }
  }

  return buildCommand;
}

- (id)buildSecondaryCommand
{
  if ([(SPUISSearchableWebsiteResultBuilder *)self primaryCommandExecutesSearch])
  {
    v3 = 0;
  }

  else
  {
    buildThumbnail = [(SPUISSearchableWebsiteResultBuilder *)self buildThumbnail];
    if (!buildThumbnail)
    {
      buildThumbnail = objc_opt_new();
      bundleIdentifier = [(SPUISSearchableWebsiteResultBuilder *)self bundleIdentifier];
      [buildThumbnail setBundleIdentifier:bundleIdentifier];
    }

    v3 = objc_opt_new();
    bundleIdentifier2 = [(SPUISSearchableWebsiteResultBuilder *)self bundleIdentifier];
    [v3 setBundleIdentifier:bundleIdentifier2];

    entityIdentifier = [(SPUISSearchableWebsiteResultBuilder *)self entityIdentifier];
    [v3 setEntityIdentifier:entityIdentifier];

    [v3 setTokenImage:buildThumbnail];
    websiteName = [(SPUISSearchableWebsiteResultBuilder *)self websiteName];
    [v3 setTokenString:websiteName];
  }

  return v3;
}

+ (id)cardSectionForSearchWebsiteCommand:(id)command searchString:(id)string
{
  stringCopy = string;
  commandCopy = command;
  v7 = objc_opt_new();
  [v7 setPrimaryCommandExecutesSearch:1];
  [v7 setSearchString:stringCopy];

  tokenString = [commandCopy tokenString];
  [v7 setWebsiteName:tokenString];

  bundleIdentifier = [commandCopy bundleIdentifier];
  [v7 setBundleIdentifier:bundleIdentifier];

  entityIdentifier = [commandCopy entityIdentifier];
  [v7 setEntityIdentifier:entityIdentifier];

  tokenImage = [commandCopy tokenImage];

  [v7 setThumbnail:tokenImage];
  buildInlineCardSection = [v7 buildInlineCardSection];

  return buildInlineCardSection;
}

@end