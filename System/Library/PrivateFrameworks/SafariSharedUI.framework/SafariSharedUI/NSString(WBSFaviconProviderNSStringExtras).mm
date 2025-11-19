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
  v2 = [a1 _safari_variantsOfURLStringInFaviconFormat:1];
  v3 = [v2 mutableCopy];

  v4 = [a1 safari_stringByFormattingForFaviconDatabase];
  [v3 addObject:v4];

  v5 = [v3 allObjects];
  v6 = [v5 mutableCopy];

  [v6 sortUsingComparator:&__block_literal_global_11];

  return v6;
}

- (id)safari_domainFaviconURLStringVariantsForFaviconDatabase
{
  v1 = [a1 safari_domainURLStringPrefixVariantsForFaviconDatabase];
  v2 = [v1 safari_mapObjectsUsingBlock:&__block_literal_global_3];

  return v2;
}

- (id)safari_domainURLStringPrefixVariantsForFaviconDatabase
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@", a1];
  v4 = [v3 safari_stringByFormattingForFaviconDatabase];
  [v2 addObject:v4];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://www.%@", a1];
  v6 = [v5 safari_stringByFormattingForFaviconDatabase];
  [v2 addObject:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"http://%@", a1];
  v8 = [v7 safari_stringByFormattingForFaviconDatabase];
  [v2 addObject:v8];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"http://www.%@", a1];
  v10 = [v9 safari_stringByFormattingForFaviconDatabase];
  [v2 addObject:v10];

  return v2;
}

- (id)safari_urlStringVariantsForIconControllerDatabase
{
  v2 = [a1 _safari_variantsOfURLStringInFaviconFormat:0];
  v3 = [v2 mutableCopy];

  v4 = [MEMORY[0x1E695DFF8] URLWithString:a1];
  v5 = [v4 path];
  if ([v5 length])
  {
    [v3 addObject:a1];
  }

  else
  {
    v6 = [a1 safari_stringByFormattingForIconControllerDatabase];
    [v3 addObject:v6];
  }

  v7 = [v3 allObjects];
  v8 = [v7 mutableCopy];

  [v8 sortUsingComparator:&__block_literal_global_20];

  return v8;
}

- (id)safari_stringByFormattingForFaviconDatabase
{
  v1 = a1;
  if ([v1 hasSuffix:@"/"])
  {
    do
    {
      v2 = [v1 substringToIndex:{objc_msgSend(v1, "length") - 1}];

      v1 = v2;
    }

    while (([v2 hasSuffix:@"/"] & 1) != 0);
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

- (id)safari_stringByFormattingForIconControllerDatabase
{
  if ([a1 hasSuffix:@"/"])
  {
    v2 = a1;
  }

  else
  {
    v2 = [a1 stringByAppendingString:@"/"];
  }

  return v2;
}

- (id)_safari_variantsOfURLStringInFaviconFormat:()WBSFaviconProviderNSStringExtras
{
  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E695DFF8] URLWithString:a1];
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
      [a1 safari_stringByFormattingForFaviconDatabase];
    }

    else
    {
      [a1 safari_stringByFormattingForIconControllerDatabase];
    }
    v12 = ;
    [v5 addObject:v12];

    v8 = v5;
    goto LABEL_10;
  }

  v9 = [v7 safari_URLByRemovingUserPasswordPathQueryAndFragment];
  v10 = [v9 absoluteString];
  v11 = v10;
  if (a3)
  {
    [v10 safari_stringByFormattingForFaviconDatabase];
  }

  else
  {
    [v10 safari_stringByFormattingForIconControllerDatabase];
  }
  v14 = ;
  [v5 addObject:v14];

  v15 = [v9 host];
  v16 = [v15 safari_highLevelDomainFromHost];

  if (v16)
  {
    v17 = v9;
    v18 = [v17 host];
    v19 = v17;
    if (v18)
    {
      v20 = v18;
      v36 = v17;
      v19 = v17;
      while (1)
      {
        if ([v20 isEqualToString:{v16, v36}])
        {
          goto LABEL_24;
        }

        v21 = [v20 rangeOfString:@"."];
        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v22 = [v20 substringFromIndex:v21 + 1];
        v23 = [v19 safari_URLByReplacingHostWithString:v22];

        v24 = [v23 absoluteString];
        v25 = v24;
        if (v24)
        {
          if (a3)
          {
            [v24 safari_stringByFormattingForFaviconDatabase];
          }

          else
          {
            [v24 safari_stringByFormattingForIconControllerDatabase];
          }
          v26 = ;
          [v5 addObject:v26];
        }

        v20 = [v23 host];
        v19 = v23;
        if (!v20)
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
      if (([v16 safari_hasCaseInsensitivePrefix:@"www."] & 1) == 0)
      {
        v27 = [@"www." stringByAppendingString:v16];
        v28 = [v17 safari_URLByReplacingHostWithString:v27];

        v29 = [v28 absoluteString];
        v30 = v29;
        if (v29)
        {
          if (a3)
          {
            [v29 safari_stringByFormattingForFaviconDatabase];
          }

          else
          {
            [v29 safari_stringByFormattingForIconControllerDatabase];
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