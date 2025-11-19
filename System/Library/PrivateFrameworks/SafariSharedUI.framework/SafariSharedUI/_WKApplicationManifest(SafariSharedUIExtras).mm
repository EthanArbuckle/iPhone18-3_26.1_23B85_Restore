@interface _WKApplicationManifest(SafariSharedUIExtras)
+ (id)_manifestWithInfoDictionary:()SafariSharedUIExtras withSynthesizedProperties:;
+ (id)safari_manifestWithName:()SafariSharedUIExtras URL:;
- (BOOL)safari_isStandalone;
- (id)_safari_quirkedNameFrom:()SafariSharedUIExtras;
- (id)safari_applicationCategoryType;
- (id)safari_dictionaryRepresentation;
- (id)safari_enforcedStartURLPrefix;
- (id)safari_name;
- (id)safari_scope;
- (id)safari_startURL;
- (uint64_t)safari_displayMode;
- (uint64_t)safari_respectsHasOpener;
- (void)safari_dictionaryRepresentation;
- (void)safari_setName:()SafariSharedUIExtras;
- (void)safari_setStartURL:()SafariSharedUIExtras;
@end

@implementation _WKApplicationManifest(SafariSharedUIExtras)

+ (id)safari_manifestWithName:()SafariSharedUIExtras URL:
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionary];
  [v8 setObject:v7 forKeyedSubscript:@"name"];

  v9 = [v6 safari_originalDataAsString];
  [v8 setObject:v9 forKeyedSubscript:@"start_url"];

  v10 = MEMORY[0x1E69853C0];
  v11 = [v8 safari_jsonRepresentation];
  v12 = [v10 applicationManifestFromJSON:v11 manifestURL:0 documentURL:v6];

  return v12;
}

+ (id)_manifestWithInfoDictionary:()SafariSharedUIExtras withSynthesizedProperties:
{
  v5 = a3;
  v6 = [v5 safari_dictionaryForKey:@"Manifest"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"start_url"];
    v9 = [v7 mutableCopy];
    if (a4)
    {
      v10 = [v7 objectForKeyedSubscript:@"display"];
      v11 = [v10 lowercaseString];
      if ([v11 isEqualToString:@"fullscreen"])
      {
        v12 = 3;
      }

      else if ([v11 isEqualToString:@"standalone"])
      {
        v12 = 2;
      }

      else
      {
        v12 = [v11 isEqualToString:@"minimal-ui"];
      }

      v13 = [MEMORY[0x1E695DFF8] URLWithString:v8];
      v14 = resolvedDisplayModeForURL(v12, v13);

      if (v14 > 3)
      {
        v15 = 0;
      }

      else
      {
        v15 = off_1E8289890[v14 - 1];
      }

      [v9 setObject:v15 forKeyedSubscript:@"display"];
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = MEMORY[0x1E695DFF8];
  v17 = [v5 objectForKeyedSubscript:@"WKManifestURL"];
  v18 = [v16 URLWithString:v17];

  v19 = MEMORY[0x1E695DFF8];
  v20 = [v9 objectForKeyedSubscript:@"start_url"];
  v21 = [v19 URLWithString:v20];

  if (a4 && [v5 safari_BOOLForKey:@"WKManifestIsSynthesized"])
  {
    [v9 setObject:0 forKeyedSubscript:@"scope"];
  }

  v22 = MEMORY[0x1E69853C0];
  v23 = [v9 safari_jsonRepresentation];
  v24 = [v22 applicationManifestFromJSON:v23 manifestURL:v18 documentURL:v21];

  if (!v24)
  {
    v25 = WBS_LOG_CHANNEL_PREFIXWebApps();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [_WKApplicationManifest(SafariSharedUIExtras) _manifestWithInfoDictionary:v25 withSynthesizedProperties:?];
    }
  }

  v26 = [v5 safari_stringForKey:@"WKManifestIconKind"];
  [v24 safari_setIconKind:v26];

  return v24;
}

- (id)safari_dictionaryRepresentation
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 rawJSON];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 dataUsingEncoding:4];
  if (!v3)
  {
    goto LABEL_9;
  }

  v18 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v18];
  v5 = v18;
  v6 = [v4 mutableCopy];

  if (v5)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXWebApps();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_WKApplicationManifest(SafariSharedUIExtras) *)v7 safari_dictionaryRepresentation];
    }
  }

  if (!v6)
  {
LABEL_9:
    v6 = [MEMORY[0x1E695DF90] dictionary];
  }

  v8 = [a1 name];
  v9 = [a1 _safari_quirkedNameFrom:v8];
  [v6 setObject:v9 forKeyedSubscript:@"name"];

  v10 = objc_getAssociatedObject(a1, safariNameKey);
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"short_name"];
  }

  else
  {
    v11 = [a1 shortName];
    v12 = [a1 _safari_quirkedNameFrom:v11];
    [v6 setObject:v12 forKeyedSubscript:@"short_name"];
  }

  v13 = [a1 safari_startURL];
  v14 = [v13 safari_originalDataAsString];
  [v6 setObject:v14 forKeyedSubscript:@"start_url"];

  v15 = [v6 safari_dictionaryByRemovingNullObjects];
  v16 = [v15 mutableCopy];

  return v16;
}

- (uint64_t)safari_respectsHasOpener
{
  v1 = [a1 startURL];
  v2 = [v1 host];
  v3 = [v2 safari_highLevelDomainFromHost];
  v4 = [v3 safari_hasCaseInsensitivePrefix:@"pinterest."];

  return v4 ^ 1u;
}

- (BOOL)safari_isStandalone
{
  v2 = [a1 startURL];
  v3 = [v2 safari_isEligibleToShowNotSecureWarning];

  return (v3 & 1) == 0 && ([a1 safari_displayMode] & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (id)safari_applicationCategoryType
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 categories];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  v3 = [_WBSWKApplicationManifestExtrasUtilities applicationCategoryTypeForCategories:v2];

  return v3;
}

- (id)safari_enforcedStartURLPrefix
{
  v1 = [a1 safari_scope];
  v2 = [v1 absoluteString];

  v3 = [v2 safari_urlStringSuppressingHTTPFamilySchemeAndWWWSubdomain];
  v4 = [v3 containsString:@"/"];

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = [v2 stringByAppendingString:@"/"];
  }

  v6 = v5;

  return v6;
}

- (id)_safari_quirkedNameFrom:()SafariSharedUIExtras
{
  v4 = a3;
  if ([v4 isEqualToString:@"webhp"] && (objc_msgSend(a1, "startURL"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "safari_userVisibleHostWithoutWWWSubdomain"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "safari_hasCaseInsensitivePrefix:", @"google."), v6, v5, (v7 & 1) != 0) || (objc_msgSend(&unk_1F466D6B8, "containsObject:", v4) & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (uint64_t)safari_displayMode
{
  v2 = [a1 displayMode];
  v3 = [a1 safari_scope];
  v4 = resolvedDisplayModeForURL(v2, v3);

  return v4;
}

- (id)safari_name
{
  v2 = objc_getAssociatedObject(a1, safariNameKey);
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v4 = [a1 shortName];
    v5 = [a1 _safari_quirkedNameFrom:v4];

    if ([v5 length])
    {
      v3 = v5;
    }

    else
    {
      v6 = [a1 name];
      v7 = [a1 _safari_quirkedNameFrom:v6];

      if ([v7 length])
      {
        v3 = v7;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (void)safari_setName:()SafariSharedUIExtras
{
  value = a3;
  v4 = [a1 safari_name];
  v5 = [value isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    objc_setAssociatedObject(a1, safariNameKey, value, 1);
  }
}

- (void)safari_setStartURL:()SafariSharedUIExtras
{
  value = a3;
  v4 = [value absoluteString];
  v5 = [a1 safari_startURL];
  v6 = [v5 absoluteString];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    objc_setAssociatedObject(a1, safariStartURLKey, value, 1);
  }
}

- (id)safari_startURL
{
  v2 = objc_getAssociatedObject(a1, safariStartURLKey);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [a1 startURL];
  }

  v5 = v4;

  return v5;
}

- (id)safari_scope
{
  if (objc_opt_respondsToSelector() & 1) != 0 && ([a1 isDefaultScope])
  {
    v2 = objc_getAssociatedObject(a1, safariScopeKey);
  }

  else
  {
    v2 = [a1 scope];
  }

  v3 = v2;
  if (!v2)
  {
    v4 = [a1 startURL];
    v5 = [v4 safari_originalDataAsString];
    v6 = [v5 componentsSeparatedByString:@"/"];

    if ([v6 count] <= 3)
    {
      v7 = [v6 count];
    }

    else
    {
      v7 = 3;
    }

    v8 = [v6 subarrayWithRange:{0, v7}];

    v9 = [v8 componentsJoinedByString:@"/"];
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    objc_setAssociatedObject(a1, safariScopeKey, v3, 1);
  }

  return v3;
}

- (void)safari_dictionaryRepresentation
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Unable to serialize manifest with %{public}@", &v5, 0xCu);
}

@end