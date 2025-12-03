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
  dictionary = [v5 dictionary];
  [dictionary setObject:v7 forKeyedSubscript:@"name"];

  safari_originalDataAsString = [v6 safari_originalDataAsString];
  [dictionary setObject:safari_originalDataAsString forKeyedSubscript:@"start_url"];

  v10 = MEMORY[0x1E69853C0];
  safari_jsonRepresentation = [dictionary safari_jsonRepresentation];
  v12 = [v10 applicationManifestFromJSON:safari_jsonRepresentation manifestURL:0 documentURL:v6];

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
      lowercaseString = [v10 lowercaseString];
      if ([lowercaseString isEqualToString:@"fullscreen"])
      {
        v12 = 3;
      }

      else if ([lowercaseString isEqualToString:@"standalone"])
      {
        v12 = 2;
      }

      else
      {
        v12 = [lowercaseString isEqualToString:@"minimal-ui"];
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
  safari_jsonRepresentation = [v9 safari_jsonRepresentation];
  v24 = [v22 applicationManifestFromJSON:safari_jsonRepresentation manifestURL:v18 documentURL:v21];

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
    rawJSON = [self rawJSON];
  }

  else
  {
    rawJSON = 0;
  }

  v3 = [rawJSON dataUsingEncoding:4];
  if (!v3)
  {
    goto LABEL_9;
  }

  v18 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v18];
  v5 = v18;
  dictionary = [v4 mutableCopy];

  if (v5)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXWebApps();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_WKApplicationManifest(SafariSharedUIExtras) *)v7 safari_dictionaryRepresentation];
    }
  }

  if (!dictionary)
  {
LABEL_9:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  name = [self name];
  v9 = [self _safari_quirkedNameFrom:name];
  [dictionary setObject:v9 forKeyedSubscript:@"name"];

  v10 = objc_getAssociatedObject(self, safariNameKey);
  if (v10)
  {
    [dictionary setObject:v10 forKeyedSubscript:@"short_name"];
  }

  else
  {
    shortName = [self shortName];
    v12 = [self _safari_quirkedNameFrom:shortName];
    [dictionary setObject:v12 forKeyedSubscript:@"short_name"];
  }

  safari_startURL = [self safari_startURL];
  safari_originalDataAsString = [safari_startURL safari_originalDataAsString];
  [dictionary setObject:safari_originalDataAsString forKeyedSubscript:@"start_url"];

  safari_dictionaryByRemovingNullObjects = [dictionary safari_dictionaryByRemovingNullObjects];
  v16 = [safari_dictionaryByRemovingNullObjects mutableCopy];

  return v16;
}

- (uint64_t)safari_respectsHasOpener
{
  startURL = [self startURL];
  host = [startURL host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
  v4 = [safari_highLevelDomainFromHost safari_hasCaseInsensitivePrefix:@"pinterest."];

  return v4 ^ 1u;
}

- (BOOL)safari_isStandalone
{
  startURL = [self startURL];
  safari_isEligibleToShowNotSecureWarning = [startURL safari_isEligibleToShowNotSecureWarning];

  return (safari_isEligibleToShowNotSecureWarning & 1) == 0 && ([self safari_displayMode] & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (id)safari_applicationCategoryType
{
  if (objc_opt_respondsToSelector())
  {
    categories = [self categories];
  }

  else
  {
    categories = MEMORY[0x1E695E0F0];
  }

  v3 = [_WBSWKApplicationManifestExtrasUtilities applicationCategoryTypeForCategories:categories];

  return v3;
}

- (id)safari_enforcedStartURLPrefix
{
  safari_scope = [self safari_scope];
  absoluteString = [safari_scope absoluteString];

  safari_urlStringSuppressingHTTPFamilySchemeAndWWWSubdomain = [absoluteString safari_urlStringSuppressingHTTPFamilySchemeAndWWWSubdomain];
  v4 = [safari_urlStringSuppressingHTTPFamilySchemeAndWWWSubdomain containsString:@"/"];

  if (v4)
  {
    v5 = absoluteString;
  }

  else
  {
    v5 = [absoluteString stringByAppendingString:@"/"];
  }

  v6 = v5;

  return v6;
}

- (id)_safari_quirkedNameFrom:()SafariSharedUIExtras
{
  v4 = a3;
  if ([v4 isEqualToString:@"webhp"] && (objc_msgSend(self, "startURL"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "safari_userVisibleHostWithoutWWWSubdomain"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "safari_hasCaseInsensitivePrefix:", @"google."), v6, v5, (v7 & 1) != 0) || (objc_msgSend(&unk_1F466D6B8, "containsObject:", v4) & 1) != 0)
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
  displayMode = [self displayMode];
  safari_scope = [self safari_scope];
  v4 = resolvedDisplayModeForURL(displayMode, safari_scope);

  return v4;
}

- (id)safari_name
{
  v2 = objc_getAssociatedObject(self, safariNameKey);
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    shortName = [self shortName];
    v5 = [self _safari_quirkedNameFrom:shortName];

    if ([v5 length])
    {
      v3 = v5;
    }

    else
    {
      name = [self name];
      v7 = [self _safari_quirkedNameFrom:name];

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
  safari_name = [self safari_name];
  v5 = [value isEqualToString:safari_name];

  if ((v5 & 1) == 0)
  {
    objc_setAssociatedObject(self, safariNameKey, value, 1);
  }
}

- (void)safari_setStartURL:()SafariSharedUIExtras
{
  value = a3;
  absoluteString = [value absoluteString];
  safari_startURL = [self safari_startURL];
  absoluteString2 = [safari_startURL absoluteString];
  v7 = [absoluteString isEqualToString:absoluteString2];

  if ((v7 & 1) == 0)
  {
    objc_setAssociatedObject(self, safariStartURLKey, value, 1);
  }
}

- (id)safari_startURL
{
  v2 = objc_getAssociatedObject(self, safariStartURLKey);
  v3 = v2;
  if (v2)
  {
    startURL = v2;
  }

  else
  {
    startURL = [self startURL];
  }

  v5 = startURL;

  return v5;
}

- (id)safari_scope
{
  if (objc_opt_respondsToSelector() & 1) != 0 && ([self isDefaultScope])
  {
    scope = objc_getAssociatedObject(self, safariScopeKey);
  }

  else
  {
    scope = [self scope];
  }

  v3 = scope;
  if (!scope)
  {
    startURL = [self startURL];
    safari_originalDataAsString = [startURL safari_originalDataAsString];
    v6 = [safari_originalDataAsString componentsSeparatedByString:@"/"];

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
    objc_setAssociatedObject(self, safariScopeKey, v3, 1);
  }

  return v3;
}

- (void)safari_dictionaryRepresentation
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = safari_privacyPreservingDescription;
  _os_log_error_impl(&dword_1C6968000, selfCopy, OS_LOG_TYPE_ERROR, "Unable to serialize manifest with %{public}@", &v5, 0xCu);
}

@end