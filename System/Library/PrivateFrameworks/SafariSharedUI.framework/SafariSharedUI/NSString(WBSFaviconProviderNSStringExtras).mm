@interface NSString(WBSFaviconProviderNSStringExtras)
- (id)_safari_variantsOfURLStringInFaviconFormat:()WBSFaviconProviderNSStringExtras;
- (id)safari_domainFaviconURLStringVariantsForFaviconDatabase;
- (id)safari_domainURLStringPrefixVariantsForFaviconDatabase;
- (id)safari_stringByFormattingForFaviconDatabase;
- (id)safari_stringByFormattingForIconControllerDatabase;
- (id)safari_urlStringVariantsForFaviconDatabase;
- (id)safari_urlStringVariantsForIconControllerDatabase;
@end

@implementation NSString(WBSFaviconProviderNSStringExtras)

- (id)safari_urlStringVariantsForFaviconDatabase
{
  v2 = [self _safari_variantsOfURLStringInFaviconFormat:1];
  v3 = [v2 mutableCopy];

  safari_stringByFormattingForFaviconDatabase = [self safari_stringByFormattingForFaviconDatabase];
  [v3 addObject:safari_stringByFormattingForFaviconDatabase];

  allObjects = [v3 allObjects];
  v6 = [allObjects mutableCopy];

  [v6 sortUsingComparator:&__block_literal_global_11];

  return v6;
}

- (id)safari_domainFaviconURLStringVariantsForFaviconDatabase
{
  safari_domainURLStringPrefixVariantsForFaviconDatabase = [self safari_domainURLStringPrefixVariantsForFaviconDatabase];
  v2 = [safari_domainURLStringPrefixVariantsForFaviconDatabase safari_mapObjectsUsingBlock:&__block_literal_global_3];

  return v2;
}

- (id)safari_domainURLStringPrefixVariantsForFaviconDatabase
{
  array = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@", self];
  safari_stringByFormattingForFaviconDatabase = [v3 safari_stringByFormattingForFaviconDatabase];
  [array addObject:safari_stringByFormattingForFaviconDatabase];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://www.%@", self];
  safari_stringByFormattingForFaviconDatabase2 = [v5 safari_stringByFormattingForFaviconDatabase];
  [array addObject:safari_stringByFormattingForFaviconDatabase2];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"http://%@", self];
  safari_stringByFormattingForFaviconDatabase3 = [v7 safari_stringByFormattingForFaviconDatabase];
  [array addObject:safari_stringByFormattingForFaviconDatabase3];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"http://www.%@", self];
  safari_stringByFormattingForFaviconDatabase4 = [v9 safari_stringByFormattingForFaviconDatabase];
  [array addObject:safari_stringByFormattingForFaviconDatabase4];

  return array;
}

- (id)safari_urlStringVariantsForIconControllerDatabase
{
  v2 = [self _safari_variantsOfURLStringInFaviconFormat:0];
  v3 = [v2 mutableCopy];

  v4 = [MEMORY[0x1E695DFF8] URLWithString:self];
  path = [v4 path];
  if ([path length])
  {
    [v3 addObject:self];
  }

  else
  {
    safari_stringByFormattingForIconControllerDatabase = [self safari_stringByFormattingForIconControllerDatabase];
    [v3 addObject:safari_stringByFormattingForIconControllerDatabase];
  }

  allObjects = [v3 allObjects];
  v8 = [allObjects mutableCopy];

  [v8 sortUsingComparator:&__block_literal_global_20];

  return v8;
}

- (id)safari_stringByFormattingForFaviconDatabase
{
  selfCopy = self;
  if ([selfCopy hasSuffix:@"/"])
  {
    do
    {
      v2 = [selfCopy substringToIndex:{objc_msgSend(selfCopy, "length") - 1}];

      selfCopy = v2;
    }

    while (([v2 hasSuffix:@"/"] & 1) != 0);
  }

  else
  {
    v2 = selfCopy;
  }

  return v2;
}

- (id)safari_stringByFormattingForIconControllerDatabase
{
  if ([self hasSuffix:@"/"])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self stringByAppendingString:@"/"];
  }

  return selfCopy;
}

- (id)_safari_variantsOfURLStringInFaviconFormat:()WBSFaviconProviderNSStringExtras
{
  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E695DFF8] URLWithString:self];
  v7 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x1E695DFD8] set];
LABEL_10:
    v13 = v8;
    goto LABEL_37;
  }

  if ([v6 isFileURL])
  {
    if (a3)
    {
      [self safari_stringByFormattingForFaviconDatabase];
    }

    else
    {
      [self safari_stringByFormattingForIconControllerDatabase];
    }
    v12 = ;
    [v5 addObject:v12];

    v8 = v5;
    goto LABEL_10;
  }

  safari_URLByRemovingUserPasswordPathQueryAndFragment = [v7 safari_URLByRemovingUserPasswordPathQueryAndFragment];
  absoluteString = [safari_URLByRemovingUserPasswordPathQueryAndFragment absoluteString];
  v11 = absoluteString;
  if (a3)
  {
    [absoluteString safari_stringByFormattingForFaviconDatabase];
  }

  else
  {
    [absoluteString safari_stringByFormattingForIconControllerDatabase];
  }
  v14 = ;
  [v5 addObject:v14];

  host = [safari_URLByRemovingUserPasswordPathQueryAndFragment host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  if (safari_highLevelDomainFromHost)
  {
    v17 = safari_URLByRemovingUserPasswordPathQueryAndFragment;
    host2 = [v17 host];
    v19 = v17;
    if (host2)
    {
      host3 = host2;
      v36 = v17;
      v19 = v17;
      while (1)
      {
        if ([host3 isEqualToString:{safari_highLevelDomainFromHost, v36}])
        {
          goto LABEL_24;
        }

        v21 = [host3 rangeOfString:@"."];
        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v22 = [host3 substringFromIndex:v21 + 1];
        v23 = [v19 safari_URLByReplacingHostWithString:v22];

        absoluteString2 = [v23 absoluteString];
        v25 = absoluteString2;
        if (absoluteString2)
        {
          if (a3)
          {
            [absoluteString2 safari_stringByFormattingForFaviconDatabase];
          }

          else
          {
            [absoluteString2 safari_stringByFormattingForIconControllerDatabase];
          }
          v26 = ;
          [v5 addObject:v26];
        }

        host3 = [v23 host];
        v19 = v23;
        if (!host3)
        {
          v19 = v23;
LABEL_24:

          v17 = v36;
          goto LABEL_25;
        }
      }

      v32 = v5;
    }

    else
    {
LABEL_25:
      if (([safari_highLevelDomainFromHost safari_hasCaseInsensitivePrefix:@"www."] & 1) == 0)
      {
        v27 = [@"www." stringByAppendingString:safari_highLevelDomainFromHost];
        v28 = [v17 safari_URLByReplacingHostWithString:v27];

        absoluteString3 = [v28 absoluteString];
        v30 = absoluteString3;
        if (absoluteString3)
        {
          if (a3)
          {
            [absoluteString3 safari_stringByFormattingForFaviconDatabase];
          }

          else
          {
            [absoluteString3 safari_stringByFormattingForIconControllerDatabase];
          }
          v33 = ;
          [v5 addObject:v33];
        }
      }

      v34 = v5;
    }
  }

  else
  {
    v31 = v5;
  }

  v13 = v5;
LABEL_37:

  return v13;
}

@end