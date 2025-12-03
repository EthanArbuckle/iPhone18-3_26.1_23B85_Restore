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
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [pbf_unprotectedUserDefaults stringForKey:@"SnapshotsBuildVersion"];

  return v1;
}

+ (void)pbf_setSnapshotsBuildVersion:()PBFUtilities
{
  v5 = a3;
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v4 = pbf_unprotectedUserDefaults;
  if (v5)
  {
    [pbf_unprotectedUserDefaults setObject:v5 forKey:@"SnapshotsBuildVersion"];
  }

  else
  {
    [pbf_unprotectedUserDefaults removeObjectForKey:@"SnapshotsBuildVersion"];
  }
}

+ (BOOL)pbf_deviceIsCleanInstall
{
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [pbf_unprotectedUserDefaults stringForKey:@"StashedDeviceType"];

  pbf_unprotectedUserDefaults2 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v3 = [pbf_unprotectedUserDefaults2 stringForKey:@"SnapshotsBuildVersion"];

  pbf_unprotectedUserDefaults3 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v5 = [pbf_unprotectedUserDefaults3 stringForKey:@"PBF_LOCALE_IDENTIFIER"];

  return (v1 | v3 | v5) == 0;
}

+ (uint64_t)pbf_stashedDeviceTypeOutOfSync
{
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [pbf_unprotectedUserDefaults stringForKey:@"StashedDeviceType"];

  if ([v1 length])
  {
    mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
    productType = [mEMORY[0x277CF0CA8] productType];

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
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [pbf_unprotectedUserDefaults stringForKey:@"StashedDeviceType"];

  mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
  productType = [mEMORY[0x277CF0CA8] productType];

  v4 = BSEqualStrings();
  if ((v4 & 1) == 0)
  {
    pbf_unprotectedUserDefaults2 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
    [pbf_unprotectedUserDefaults2 setObject:productType forKey:@"StashedDeviceType"];
  }

  return v4 ^ 1u;
}

+ (BOOL)pbf_clearStashedDeviceType
{
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [pbf_unprotectedUserDefaults stringForKey:@"StashedDeviceType"];

  pbf_unprotectedUserDefaults2 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  [pbf_unprotectedUserDefaults2 removeObjectForKey:@"StashedDeviceType"];

  v3 = [v1 length] != 0;
  return v3;
}

+ (id)pbf_snapshotsLocaleIdentifier
{
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [pbf_unprotectedUserDefaults stringForKey:@"PBF_LOCALE_IDENTIFIER"];

  return v1;
}

+ (void)pbf_setSnapshotsLocaleIdentifier:()PBFUtilities
{
  v5 = a3;
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v4 = pbf_unprotectedUserDefaults;
  if (v5)
  {
    [pbf_unprotectedUserDefaults setObject:v5 forKey:@"PBF_LOCALE_IDENTIFIER"];
  }

  else
  {
    [pbf_unprotectedUserDefaults removeObjectForKey:@"PBF_LOCALE_IDENTIFIER"];
  }
}

+ (uint64_t)pbf_snapshotsLocaleDidChange
{
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [pbf_unprotectedUserDefaults BOOLForKey:@"PBF_LOCALE_DID_CHANGE"];

  return v1;
}

+ (void)pbf_setSnapshotsLocaleDidChange:()PBFUtilities
{
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  [pbf_unprotectedUserDefaults setBool:a3 forKey:@"PBF_LOCALE_DID_CHANGE"];
}

+ (uint64_t)pbf_keynoteModeEnabled
{
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [pbf_unprotectedUserDefaults BOOLForKey:@"KEYNOTE_MODE"];

  return v1;
}

+ (void)pbf_setKeynoteModeEnabled:()PBFUtilities
{
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v5 = pbf_unprotectedUserDefaults;
  if (a3)
  {
    [pbf_unprotectedUserDefaults setBool:1 forKey:@"KEYNOTE_MODE"];
  }

  else
  {
    [pbf_unprotectedUserDefaults removeObjectForKey:@"KEYNOTE_MODE"];
  }
}

+ (void)pbf_setNeedsFileProtectionsReset:()PBFUtilities
{
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  [pbf_unprotectedUserDefaults setBool:a3 forKey:@"PBF_RESET_FILE_PROTECTIONS"];
}

+ (uint64_t)pbf_needsFileProtectionsReset
{
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [pbf_unprotectedUserDefaults BOOLForKey:@"PBF_RESET_FILE_PROTECTIONS"];

  return v1;
}

+ (BOOL)pbf_hasHadFileProtectionsReset
{
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [pbf_unprotectedUserDefaults objectForKey:@"PBF_RESET_FILE_PROTECTIONS"];
  v2 = v1 != 0;

  return v2;
}

+ (id)pbf_activeChargerIdentifier
{
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v1 = [pbf_unprotectedUserDefaults objectForKey:@"kPBFActiveChargerIdentifierUserDefaultKey"];

  return v1;
}

+ (void)pbf_setActiveChargerIdentifier:()PBFUtilities
{
  v5 = a3;
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v4 = pbf_unprotectedUserDefaults;
  if (v5)
  {
    [pbf_unprotectedUserDefaults setObject:v5 forKey:@"kPBFActiveChargerIdentifierUserDefaultKey"];
  }

  else
  {
    [pbf_unprotectedUserDefaults removeObjectForKey:@"kPBFActiveChargerIdentifierUserDefaultKey"];
  }
}

+ (void)pbf_ignoreExtension:()PBFUtilities
{
  v13 = a3;
  pbf_ignoredExtensionIdentifiers = [self pbf_ignoredExtensionIdentifiers];
  v5 = [pbf_ignoredExtensionIdentifiers containsObject:v13];

  if ((v5 & 1) == 0)
  {
    pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
    v7 = [pbf_unprotectedUserDefaults arrayForKey:@"IgnoredExtensionIdentifiers"];
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
    pbf_unprotectedUserDefaults2 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
    [pbf_unprotectedUserDefaults2 setObject:v11 forKey:@"IgnoredExtensionIdentifiers"];
  }
}

+ (void)pbf_unignoreExtension:()PBFUtilities
{
  v13 = a3;
  pbf_ignoredExtensionIdentifiers = [self pbf_ignoredExtensionIdentifiers];
  v5 = [pbf_ignoredExtensionIdentifiers containsObject:v13];

  if (v5)
  {
    pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
    v7 = [pbf_unprotectedUserDefaults arrayForKey:@"IgnoredExtensionIdentifiers"];
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
    pbf_unprotectedUserDefaults2 = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
    [pbf_unprotectedUserDefaults2 setObject:v11 forKey:@"IgnoredExtensionIdentifiers"];
  }
}

+ (id)pbf_ignoredExtensionIdentifiers
{
  v0 = MEMORY[0x277CBEB98];
  pbf_unprotectedUserDefaults = [MEMORY[0x277CBEBD0] pbf_unprotectedUserDefaults];
  v2 = [pbf_unprotectedUserDefaults arrayForKey:@"IgnoredExtensionIdentifiers"];
  v3 = [v0 setWithArray:v2];

  return v3;
}

@end