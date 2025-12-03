@interface SSSearchableWebsiteResultBuilder
+ (BOOL)supportsResult:(id)result;
+ (id)cardSectionForSearchWebsiteCommand:(id)command searchString:(id)string;
+ (id)websiteNameForURL:(id)l;
- (SSSearchableWebsiteResultBuilder)initWithResult:(id)result;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildSecondaryCommand;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)bundleIdentifierForAppIconBadgeImage;
- (void)setQueryContext:(id)context;
@end

@implementation SSSearchableWebsiteResultBuilder

+ (BOOL)supportsResult:(id)result
{
  contentType = [result contentType];
  v4 = [contentType isEqualToString:@"com.apple.safari.quickWebsiteSearchProvider"];

  return v4;
}

- (SSSearchableWebsiteResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v28.receiver = self;
  v28.super_class = SSSearchableWebsiteResultBuilder;
  v5 = [(SSResultBuilder *)&v28 initWithResult:resultCopy];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x1E695DFF8];
    result = [(SSResultBuilder *)v5 result];
    v9 = [result valueForAttribute:*MEMORY[0x1E6964DD8] withType:objc_opt_class()];
    v10 = [v7 URLWithString:v9];

    result2 = [(SSResultBuilder *)v6 result];
    v12 = [result2 valueForAttribute:*MEMORY[0x1E6964DE0] withType:objc_opt_class()];

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

    [(SSSearchableWebsiteResultBuilder *)v6 setUrl:v17];

    v18 = objc_opt_class();
    v19 = [(SSSearchableWebsiteResultBuilder *)v6 url];
    v20 = [v18 websiteNameForURL:v19];
    if (v20)
    {
      [(SSSearchableWebsiteResultBuilder *)v6 setWebsiteName:v20];
    }

    else
    {
      v21 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
      [(SSSearchableWebsiteResultBuilder *)v6 setWebsiteName:v21];
    }

    result3 = [(SSResultBuilder *)v6 result];
    applicationBundleIdentifier = [result3 applicationBundleIdentifier];
    [(SSSearchableWebsiteResultBuilder *)v6 setBundleIdentifier:applicationBundleIdentifier];

    result4 = [(SSResultBuilder *)v6 result];
    v25 = [result4 valueForAttribute:*MEMORY[0x1E6963C28] withType:objc_opt_class()];
    [(SSSearchableWebsiteResultBuilder *)v6 setEntityIdentifier:v25];

    rankingItem = [resultCopy rankingItem];
    -[SSSearchableWebsiteResultBuilder setPrimaryCommandExecutesSearch:](v6, "setPrimaryCommandExecutesSearch:", [rankingItem isMatchedAliasShortcut]);
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
      +[SSSearchableWebsiteResultBuilder websiteNameForURL:];
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
          defaultCStringEncoding = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
          pStmt = 0;
          v4 = 0;
          if (!sqlite3_prepare(ppDb, "SELECT name FROM websiteNames WHERE domain=?", -1, &pStmt, 0))
          {
            sqlite3_bind_text(pStmt, 1, [host cStringUsingEncoding:defaultCStringEncoding], -1, 0);
            v4 = 0;
            if (sqlite3_step(pStmt) == 100)
            {
              v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:sqlite3_column_text(pStmt encoding:{0), defaultCStringEncoding}];
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
        v9 = &stru_1F556FE60;
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

uint64_t __54__SSSearchableWebsiteResultBuilder_websiteNameForURL___block_invoke()
{
  websiteNameForURL__websiteNameCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (void)setQueryContext:(id)context
{
  v8.receiver = self;
  v8.super_class = SSSearchableWebsiteResultBuilder;
  [(SSResultBuilder *)&v8 setQueryContext:context];
  if ([(SSSearchableWebsiteResultBuilder *)self primaryCommandExecutesSearch])
  {
    queryContext = [(SSResultBuilder *)self queryContext];
    searchString = [queryContext searchString];

    v6 = [searchString rangeOfString:@" "];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [searchString substringFromIndex:v6 + 1];
      [(SSSearchableWebsiteResultBuilder *)self setSearchString:v7];
    }
  }
}

- (id)buildThumbnail
{
  thumbnail = [(SSSearchableWebsiteResultBuilder *)self thumbnail];
  v4 = thumbnail;
  if (thumbnail)
  {
    buildThumbnail = thumbnail;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSSearchableWebsiteResultBuilder;
    buildThumbnail = [(SSResultBuilder *)&v8 buildThumbnail];
  }

  v6 = buildThumbnail;

  return v6;
}

- (id)bundleIdentifierForAppIconBadgeImage
{
  bundleIdentifier = [(SSSearchableWebsiteResultBuilder *)self bundleIdentifier];
  v4 = bundleIdentifier;
  if (bundleIdentifier)
  {
    bundleIdentifierForAppIconBadgeImage = bundleIdentifier;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSSearchableWebsiteResultBuilder;
    bundleIdentifierForAppIconBadgeImage = [(SSResultBuilder *)&v8 bundleIdentifierForAppIconBadgeImage];
  }

  v6 = bundleIdentifierForAppIconBadgeImage;

  return v6;
}

- (id)buildTitle
{
  v16.receiver = self;
  v16.super_class = SSSearchableWebsiteResultBuilder;
  buildTitle = [(SSResultBuilder *)&v16 buildTitle];
  if ([(SSSearchableWebsiteResultBuilder *)self primaryCommandExecutesSearch])
  {
    v4 = MEMORY[0x1E69CA3A0];
    v5 = MEMORY[0x1E696AEC0];
    websiteName3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [websiteName3 localizedStringForKey:@"SEARCH_WEBSITE_FORMAT" value:&stru_1F556FE60 table:@"SpotlightServices"];
    websiteName = [(SSSearchableWebsiteResultBuilder *)self websiteName];
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
    websiteName2 = [(SSSearchableWebsiteResultBuilder *)self websiteName];
    v13 = [websiteName2 length];

    if (!v13)
    {
      goto LABEL_10;
    }

    v14 = MEMORY[0x1E69CA3A0];
    websiteName3 = [(SSSearchableWebsiteResultBuilder *)self websiteName];
    v11 = [v14 textWithString:websiteName3];
    v7 = buildTitle;
  }

  buildTitle = v11;
LABEL_10:

  return buildTitle;
}

- (id)buildDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(SSSearchableWebsiteResultBuilder *)self primaryCommandExecutesSearch])
  {
    bundleIdentifier = [(SSSearchableWebsiteResultBuilder *)self bundleIdentifier];
    SSAppNameForBundleId(bundleIdentifier);
  }

  else
  {
    bundleIdentifier = [(SSSearchableWebsiteResultBuilder *)self url];
    [SSLocalWebResultBuilder stringWithUrl:bundleIdentifier];
  }
  v4 = ;

  if (v4)
  {
    v5 = [MEMORY[0x1E69CA3A0] textWithString:v4];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)buildCommand
{
  if ([(SSSearchableWebsiteResultBuilder *)self primaryCommandExecutesSearch])
  {
    bundleIdentifier = [(SSSearchableWebsiteResultBuilder *)self bundleIdentifier];
    entityIdentifier = [(SSSearchableWebsiteResultBuilder *)self entityIdentifier];
    searchString = [(SSSearchableWebsiteResultBuilder *)self searchString];
    buildCommand = [_TtC17SpotlightServices29SSQuickWebsiteSearchUtilities quickWebsiteSearchCommandWithBundleIdentifier:bundleIdentifier entityIdentifier:entityIdentifier searchQuery:searchString];
  }

  else
  {
    v7 = [(SSSearchableWebsiteResultBuilder *)self url];

    if (v7)
    {
      buildCommand = objc_opt_new();
      v8 = MEMORY[0x1E69CA320];
      v9 = [(SSSearchableWebsiteResultBuilder *)self url];
      v10 = [v8 punchoutWithURL:v9];
      [buildCommand setPunchout:v10];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = SSSearchableWebsiteResultBuilder;
      buildCommand = [(SSResultBuilder *)&v12 buildCommand];
    }
  }

  return buildCommand;
}

- (id)buildSecondaryCommand
{
  if ([(SSSearchableWebsiteResultBuilder *)self primaryCommandExecutesSearch])
  {
    v3 = 0;
  }

  else
  {
    buildThumbnail = [(SSSearchableWebsiteResultBuilder *)self buildThumbnail];
    if (!buildThumbnail)
    {
      buildThumbnail = objc_opt_new();
      bundleIdentifier = [(SSSearchableWebsiteResultBuilder *)self bundleIdentifier];
      [buildThumbnail setBundleIdentifier:bundleIdentifier];
    }

    v3 = objc_opt_new();
    bundleIdentifier2 = [(SSSearchableWebsiteResultBuilder *)self bundleIdentifier];
    [v3 setBundleIdentifier:bundleIdentifier2];

    entityIdentifier = [(SSSearchableWebsiteResultBuilder *)self entityIdentifier];
    [v3 setEntityIdentifier:entityIdentifier];

    [v3 setTokenImage:buildThumbnail];
    websiteName = [(SSSearchableWebsiteResultBuilder *)self websiteName];
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