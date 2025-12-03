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
  _plugIn = [self _plugIn];
  uuid = [_plugIn uuid];

  return uuid;
}

- (id)safari_humanReadableDescription
{
  _extensionBundle = [self _extensionBundle];
  localizedInfoDictionary = [_extensionBundle localizedInfoDictionary];
  v3 = [localizedInfoDictionary safari_stringForKey:@"NSHumanReadableDescription"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    infoDictionary = [_extensionBundle infoDictionary];
    v5 = [infoDictionary safari_stringForKey:@"NSHumanReadableDescription"];
  }

  return v5;
}

- (id)safari_localizedDisplayName
{
  _extensionBundle = [self _extensionBundle];
  safari_localizedDisplayName = [_extensionBundle safari_localizedDisplayName];

  return safari_localizedDisplayName;
}

- (id)safari_displayVersion
{
  _extensionBundle = [self _extensionBundle];
  safari_localizedShortVersion = [_extensionBundle safari_localizedShortVersion];

  return safari_localizedShortVersion;
}

- (id)safari_localizedContainingAppDisplayName
{
  _plugIn = [self _plugIn];
  containingUrl = [_plugIn containingUrl];

  if (containingUrl)
  {
    localizedContainingName = [_plugIn localizedContainingName];
    v4 = localizedContainingName;
    if (localizedContainingName)
    {
      safari_localizedDisplayName = localizedContainingName;
    }

    else
    {
      v6 = MEMORY[0x1E696AAE8];
      containingUrl2 = [_plugIn containingUrl];
      v8 = [v6 bundleWithURL:containingUrl2];
      safari_localizedDisplayName = [v8 safari_localizedDisplayName];
    }
  }

  else
  {
    safari_localizedDisplayName = 0;
  }

  return safari_localizedDisplayName;
}

- (id)safari_launchServicesDeveloperIdentifier
{
  _safari_containingAppRecord = [self _safari_containingAppRecord];
  teamIdentifier = [_safari_containingAppRecord teamIdentifier];

  return teamIdentifier;
}

- (id)safari_launchServicesDeveloperName
{
  _safari_containingAppRecord = [self _safari_containingAppRecord];
  iTunesMetadata = [_safari_containingAppRecord iTunesMetadata];
  artistName = [iTunesMetadata artistName];

  return artistName;
}

- (id)_safari_containingAppRecord
{
  v2 = objc_alloc(MEMORY[0x1E69635F8]);
  _plugIn = [self _plugIn];
  containingUrl = [_plugIn containingUrl];
  v9 = 0;
  v5 = [v2 initWithURL:containingUrl allowPlaceholder:0 error:&v9];
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
  v2 = objc_getAssociatedObject(self, safari_containingAppAdamID_containingAppAdamIDKey);
  v3 = v2;
  if (v2)
  {
    storeItemIdentifier = v2;
  }

  else
  {
    _safari_containingAppRecord = [self _safari_containingAppRecord];
    v6 = _safari_containingAppRecord;
    if (_safari_containingAppRecord)
    {
      iTunesMetadata = [_safari_containingAppRecord iTunesMetadata];
      storeItemIdentifier = [iTunesMetadata storeItemIdentifier];

      if (storeItemIdentifier)
      {
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:storeItemIdentifier];
        storeItemIdentifier = [v8 stringValue];

        objc_setAssociatedObject(self, safari_containingAppAdamID_containingAppAdamIDKey, storeItemIdentifier, 1);
      }
    }

    else
    {
      storeItemIdentifier = 0;
    }
  }

  return storeItemIdentifier;
}

- (uint64_t)safari_containingAppIsTestFlightApp
{
  _safari_containingAppRecord = [self _safari_containingAppRecord];
  isBeta = [_safari_containingAppRecord isBeta];

  return isBeta;
}

- (id)_safari_stringFromContainingAppInfoPlistWithKey:()SafariSharedExtras
{
  v4 = a3;
  _plugIn = [self _plugIn];
  containingUrl = [_plugIn containingUrl];

  if (containingUrl)
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithURL:containingUrl];
    infoDictionary = [v7 infoDictionary];
    v9 = [infoDictionary safari_stringForKey:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)safari_correspondingMacOSExtensionBundleIdentifier
{
  _extensionBundle = [self _extensionBundle];
  infoDictionary = [_extensionBundle infoDictionary];
  v3 = [infoDictionary safari_stringForKey:@"SFSafariCorrespondingMacOSExtensionBundleIdentifier"];

  return v3;
}

- (uint64_t)safari_isTestExtension
{
  identifier = [self identifier];
  v2 = [identifier hasPrefix:@"com.apple.Safari.TestExtensions."];

  return v2;
}

- (uint64_t)safari_isUnpackedExtension
{
  identifier = [self identifier];
  v2 = [identifier hasPrefix:@"com.apple.Safari.UnpackedExtensions."];

  return v2;
}

- (uint64_t)safari_isUnsignedExtension
{
  safari_launchServicesDeveloperIdentifier = [self safari_launchServicesDeveloperIdentifier];
  if ([safari_launchServicesDeveloperIdentifier isEqualToString:@"0000000000"])
  {
    safari_isUnpackedExtension = 1;
  }

  else
  {
    safari_isUnpackedExtension = [self safari_isUnpackedExtension];
  }

  return safari_isUnpackedExtension;
}

- (void)_safari_containingAppRecord
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  identifier = [a2 identifier];
  safari_privacyPreservingDescription = [a3 safari_privacyPreservingDescription];
  v8 = 138478083;
  v9 = identifier;
  v10 = 2114;
  v11 = safari_privacyPreservingDescription;
  _os_log_error_impl(&dword_1BB6F3000, selfCopy, OS_LOG_TYPE_ERROR, "Couldn't find LSApplicationRecord for %{private}@, error: %{public}@", &v8, 0x16u);
}

@end