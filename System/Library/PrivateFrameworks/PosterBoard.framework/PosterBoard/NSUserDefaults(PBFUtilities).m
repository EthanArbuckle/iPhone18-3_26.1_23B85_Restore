@interface NSUserDefaults(PBFUtilities)
+ (BOOL)pbf_clearStashedDeviceType;
+ (BOOL)pbf_deviceIsCleanInstall;
+ (BOOL)pbf_hasHadFileProtectionsReset;
+ (id)pbf_activeChargerIdentifier;
+ (id)pbf_ignoredExtensionIdentifiers;
+ (id)pbf_snapshotsBuildVersion;
+ (id)pbf_snapshotsLocaleIdentifier;
+ (id)pbf_unprotectedUserDefaults;
+ (uint64_t)pbf_keynoteModeEnabled;
+ (uint64_t)pbf_needsFileProtectionsReset;
+ (uint64_t)pbf_snapshotsLocaleDidChange;
+ (uint64_t)pbf_stashedDeviceTypeOutOfSync;
+ (uint64_t)pbf_updateStashedDeviceType;
+ (void)pbf_ignoreExtension:()PBFUtilities;
+ (void)pbf_setActiveChargerIdentifier:()PBFUtilities;
+ (void)pbf_setKeynoteModeEnabled:()PBFUtilities;
+ (void)pbf_setNeedsFileProtectionsReset:()PBFUtilities;
+ (void)pbf_setSnapshotsBuildVersion:()PBFUtilities;
+ (void)pbf_setSnapshotsLocaleDidChange:()PBFUtilities;
+ (void)pbf_setSnapshotsLocaleIdentifier:()PBFUtilities;
+ (void)pbf_unignoreExtension:()PBFUtilities;
@end

@implementation NSUserDefaults(PBFUtilities)

+ (id)pbf_unprotectedUserDefaults
{
  if (pbf_unprotectedUserDefaults_onceToken != -1)
  {
    +[NSUserDefaults(PBFUtilities) pbf_unprotectedUserDefaults];
  }

  v1 = pbf_unprotectedUserDefaults_unprotectedUserDefaults;

  return v1;
}

+ (id)pbf_snapshotsBuildVersion
{
  v0 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [v0 stringForKey:@"SnapshotsBuildVersion"];

  return v1;
}

+ (void)pbf_setSnapshotsBuildVersion:()PBFUtilities
{
  v5 = a3;
  v3 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v4 = v3;
  if (v5)
  {
    [v3 setObject:v5 forKey:@"SnapshotsBuildVersion"];
  }

  else
  {
    [v3 removeObjectForKey:@"SnapshotsBuildVersion"];
  }
}

+ (BOOL)pbf_deviceIsCleanInstall
{
  v0 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [v0 stringForKey:@"StashedDeviceType"];

  v2 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v3 = [v2 stringForKey:@"SnapshotsBuildVersion"];

  v4 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v5 = [v4 stringForKey:@"PBF_LOCALE_IDENTIFIER"];

  return (v1 | v3 | v5) == 0;
}

+ (uint64_t)pbf_stashedDeviceTypeOutOfSync
{
  v0 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [v0 stringForKey:@"StashedDeviceType"];

  if ([v1 length])
  {
    v2 = [MEMORY[0x277CF0CA8] sharedInstance];
    v3 = [v2 productType];

    v4 = BSEqualStrings() ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (uint64_t)pbf_updateStashedDeviceType
{
  v0 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [v0 stringForKey:@"StashedDeviceType"];

  v2 = [MEMORY[0x277CF0CA8] sharedInstance];
  v3 = [v2 productType];

  v4 = BSEqualStrings();
  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
    [v5 setObject:v3 forKey:@"StashedDeviceType"];
  }

  return v4 ^ 1u;
}

+ (BOOL)pbf_clearStashedDeviceType
{
  v0 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [v0 stringForKey:@"StashedDeviceType"];

  v2 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  [v2 removeObjectForKey:@"StashedDeviceType"];

  v3 = [v1 length] != 0;
  return v3;
}

+ (id)pbf_snapshotsLocaleIdentifier
{
  v0 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [v0 stringForKey:@"PBF_LOCALE_IDENTIFIER"];

  return v1;
}

+ (void)pbf_setSnapshotsLocaleIdentifier:()PBFUtilities
{
  v5 = a3;
  v3 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v4 = v3;
  if (v5)
  {
    [v3 setObject:v5 forKey:@"PBF_LOCALE_IDENTIFIER"];
  }

  else
  {
    [v3 removeObjectForKey:@"PBF_LOCALE_IDENTIFIER"];
  }
}

+ (uint64_t)pbf_snapshotsLocaleDidChange
{
  v0 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [v0 BOOLForKey:@"PBF_LOCALE_DID_CHANGE"];

  return v1;
}

+ (void)pbf_setSnapshotsLocaleDidChange:()PBFUtilities
{
  v4 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  [v4 setBool:a3 forKey:@"PBF_LOCALE_DID_CHANGE"];
}

+ (uint64_t)pbf_keynoteModeEnabled
{
  v0 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [v0 BOOLForKey:@"KEYNOTE_MODE"];

  return v1;
}

+ (void)pbf_setKeynoteModeEnabled:()PBFUtilities
{
  v4 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v5 = v4;
  if (a3)
  {
    [v4 setBool:1 forKey:@"KEYNOTE_MODE"];
  }

  else
  {
    [v4 removeObjectForKey:@"KEYNOTE_MODE"];
  }
}

+ (void)pbf_setNeedsFileProtectionsReset:()PBFUtilities
{
  v4 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  [v4 setBool:a3 forKey:@"PBF_RESET_FILE_PROTECTIONS"];
}

+ (uint64_t)pbf_needsFileProtectionsReset
{
  v0 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [v0 BOOLForKey:@"PBF_RESET_FILE_PROTECTIONS"];

  return v1;
}

+ (BOOL)pbf_hasHadFileProtectionsReset
{
  v0 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [v0 objectForKey:@"PBF_RESET_FILE_PROTECTIONS"];
  v2 = v1 != 0;

  return v2;
}

+ (id)pbf_activeChargerIdentifier
{
  v0 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [v0 objectForKey:@"kPBFActiveChargerIdentifierUserDefaultKey"];

  return v1;
}

+ (void)pbf_setActiveChargerIdentifier:()PBFUtilities
{
  v5 = a3;
  v3 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v4 = v3;
  if (v5)
  {
    [v3 setObject:v5 forKey:@"kPBFActiveChargerIdentifierUserDefaultKey"];
  }

  else
  {
    [v3 removeObjectForKey:@"kPBFActiveChargerIdentifierUserDefaultKey"];
  }
}

+ (void)pbf_ignoreExtension:()PBFUtilities
{
  v13 = a3;
  v4 = [a1 pbf_ignoredExtensionIdentifiers];
  v5 = [v4 containsObject:v13];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
    v7 = [v6 arrayForKey:@"IgnoredExtensionIdentifiers"];
    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = v10;

    [v11 addObject:v13];
    v12 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
    [v12 setObject:v11 forKey:@"IgnoredExtensionIdentifiers"];
  }
}

+ (void)pbf_unignoreExtension:()PBFUtilities
{
  v13 = a3;
  v4 = [a1 pbf_ignoredExtensionIdentifiers];
  v5 = [v4 containsObject:v13];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
    v7 = [v6 arrayForKey:@"IgnoredExtensionIdentifiers"];
    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = v10;

    [v11 removeObject:v13];
    v12 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
    [v12 setObject:v11 forKey:@"IgnoredExtensionIdentifiers"];
  }
}

+ (id)pbf_ignoredExtensionIdentifiers
{
  v0 = MEMORY[0x277CBEB98];
  v1 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v2 = [v1 arrayForKey:@"IgnoredExtensionIdentifiers"];
  v3 = [v0 setWithArray:v2];

  return v3;
}

@end