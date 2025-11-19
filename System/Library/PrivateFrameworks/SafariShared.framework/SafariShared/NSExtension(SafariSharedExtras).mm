@interface NSExtension(SafariSharedExtras)
- (id)_safari_containingAppRecord;
- (id)_safari_stringFromContainingAppInfoPlistWithKey:()SafariSharedExtras;
- (id)safari_containingAppAdamID;
- (id)safari_correspondingMacOSExtensionBundleIdentifier;
- (id)safari_displayVersion;
- (id)safari_humanReadableDescription;
- (id)safari_launchServicesDeveloperIdentifier;
- (id)safari_launchServicesDeveloperName;
- (id)safari_localizedContainingAppDisplayName;
- (id)safari_localizedDisplayName;
- (id)sf_uniqueIdentifier;
- (uint64_t)safari_containingAppIsTestFlightApp;
- (uint64_t)safari_isTestExtension;
- (uint64_t)safari_isUnpackedExtension;
- (uint64_t)safari_isUnsignedExtension;
- (void)_safari_containingAppRecord;
@end

@implementation NSExtension(SafariSharedExtras)

- (id)sf_uniqueIdentifier
{
  v1 = [a1 _plugIn];
  v2 = [v1 uuid];

  return v2;
}

- (id)safari_humanReadableDescription
{
  v1 = [a1 _extensionBundle];
  v2 = [v1 localizedInfoDictionary];
  v3 = [v2 safari_stringForKey:@"NSHumanReadableDescription"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v1 infoDictionary];
    v5 = [v6 safari_stringForKey:@"NSHumanReadableDescription"];
  }

  return v5;
}

- (id)safari_localizedDisplayName
{
  v1 = [a1 _extensionBundle];
  v2 = [v1 safari_localizedDisplayName];

  return v2;
}

- (id)safari_displayVersion
{
  v1 = [a1 _extensionBundle];
  v2 = [v1 safari_localizedShortVersion];

  return v2;
}

- (id)safari_localizedContainingAppDisplayName
{
  v1 = [a1 _plugIn];
  v2 = [v1 containingUrl];

  if (v2)
  {
    v3 = [v1 localizedContainingName];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = MEMORY[0x1E696AAE8];
      v7 = [v1 containingUrl];
      v8 = [v6 bundleWithURL:v7];
      v5 = [v8 safari_localizedDisplayName];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)safari_launchServicesDeveloperIdentifier
{
  v1 = [a1 _safari_containingAppRecord];
  v2 = [v1 teamIdentifier];

  return v2;
}

- (id)safari_launchServicesDeveloperName
{
  v1 = [a1 _safari_containingAppRecord];
  v2 = [v1 iTunesMetadata];
  v3 = [v2 artistName];

  return v3;
}

- (id)_safari_containingAppRecord
{
  v2 = objc_alloc(MEMORY[0x1E69635F8]);
  v3 = [a1 _plugIn];
  v4 = [v3 containingUrl];
  v9 = 0;
  v5 = [v2 initWithURL:v4 allowPlaceholder:0 error:&v9];
  v6 = v9;

  if (!v5)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXExtensions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(NSExtension(SafariSharedExtras) *)v7 _safari_containingAppRecord];
    }
  }

  return v5;
}

- (id)safari_containingAppAdamID
{
  v2 = objc_getAssociatedObject(a1, safari_containingAppAdamID_containingAppAdamIDKey);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [a1 _safari_containingAppRecord];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 iTunesMetadata];
      v4 = [v7 storeItemIdentifier];

      if (v4)
      {
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
        v4 = [v8 stringValue];

        objc_setAssociatedObject(a1, safari_containingAppAdamID_containingAppAdamIDKey, v4, 1);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (uint64_t)safari_containingAppIsTestFlightApp
{
  v1 = [a1 _safari_containingAppRecord];
  v2 = [v1 isBeta];

  return v2;
}

- (id)_safari_stringFromContainingAppInfoPlistWithKey:()SafariSharedExtras
{
  v4 = a3;
  v5 = [a1 _plugIn];
  v6 = [v5 containingUrl];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithURL:v6];
    v8 = [v7 infoDictionary];
    v9 = [v8 safari_stringForKey:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)safari_correspondingMacOSExtensionBundleIdentifier
{
  v1 = [a1 _extensionBundle];
  v2 = [v1 infoDictionary];
  v3 = [v2 safari_stringForKey:@"SFSafariCorrespondingMacOSExtensionBundleIdentifier"];

  return v3;
}

- (uint64_t)safari_isTestExtension
{
  v1 = [a1 identifier];
  v2 = [v1 hasPrefix:@"com.apple.Safari.TestExtensions."];

  return v2;
}

- (uint64_t)safari_isUnpackedExtension
{
  v1 = [a1 identifier];
  v2 = [v1 hasPrefix:@"com.apple.Safari.UnpackedExtensions."];

  return v2;
}

- (uint64_t)safari_isUnsignedExtension
{
  v2 = [a1 safari_launchServicesDeveloperIdentifier];
  if ([v2 isEqualToString:@"0000000000"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [a1 safari_isUnpackedExtension];
  }

  return v3;
}

- (void)_safari_containingAppRecord
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 identifier];
  v7 = [a3 safari_privacyPreservingDescription];
  v8 = 138478083;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Couldn't find LSApplicationRecord for %{private}@, error: %{public}@", &v8, 0x16u);
}

@end