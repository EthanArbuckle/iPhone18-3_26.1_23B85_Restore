@interface SUCoreDevice
+ (id)sharedDevice;
- (BOOL)_hasSplatOnlyUpdateInstalled;
- (BOOL)_supportsAppleInternalVariant;
- (BOOL)_supportsCoreServices;
- (BOOL)_supportsFactoryVersion;
- (BOOL)_supportsPreservedFactoryVersion;
- (BOOL)_supportsRecoveryOSRestoreVersion;
- (BOOL)_supportsRecoveryOSSystemVersion;
- (BOOL)_supportsRestoreVersion;
- (BOOL)_supportsSFRRestoreVersion;
- (BOOL)_supportsSFRSystemVersion;
- (BOOL)_supportsSplatRestoreVersion;
- (BOOL)_supportsSplatSystemVersion;
- (BOOL)hasEligibleRollback;
- (BOOL)hasSemiSplatActive;
- (BOOL)isCorrectlyFormattedBuildVersion:(id)version;
- (BOOL)isCorrectlyFormattedProductVersion:(id)version;
- (BOOL)isMajorOSUpdate:(id)update;
- (BOOL)isMinorOSUpdate:(id)update;
- (BOOL)requiresDocAssetForUpdate;
- (NSDictionary)splatCryptex1RestoreVersionPlistContents;
- (NSDictionary)splatCryptex1SystemVersionPlistContents;
- (NSDictionary)splatRollbackRestoreVersionPlistContents;
- (NSDictionary)splatRollbackSystemVersionPlistContents;
- (NSString)splatBuildVersion;
- (NSString)splatCryptex1BuildVersion;
- (NSString)splatCryptex1BuildVersionOverride;
- (NSString)splatCryptex1ProductVersion;
- (NSString)splatCryptex1ProductVersionExtra;
- (NSString)splatCryptex1ReleaseType;
- (NSString)splatCryptex1RestoreVersion;
- (NSString)splatProductVersion;
- (NSString)splatProductVersionExtra;
- (NSString)splatReleaseType;
- (NSString)splatRestoreVersion;
- (NSString)splatRollbackBuildVersion;
- (NSString)splatRollbackProductVersion;
- (NSString)splatRollbackProductVersionExtra;
- (NSString)splatRollbackReleaseType;
- (NSString)splatRollbackRestoreVersion;
- (__CFString)_gestaltKeyForQueryKey:(int64_t)key;
- (id)_copyCoreServicesAppleInternalValue;
- (id)_copyCoreServicesValueForKey:(int64_t)key;
- (id)_copyFactoryVersionValueForKey:(int64_t)key;
- (id)_copyGestaltValueForKey:(int64_t)key;
- (id)_copyRecoveryOSRestoreVersionValueForKey:(int64_t)key;
- (id)_copyRecoveryOSSystemVersionValueForKey:(int64_t)key;
- (id)_copyRestoreVersionValueForKey:(int64_t)key;
- (id)_copySFRRestoreVersionValueForKey:(int64_t)key;
- (id)_copySFRSystemVersionValueForKey:(int64_t)key;
- (id)_copySplatCryptex1RestoreVersionPath;
- (id)_copySplatCryptex1SystemVersionPath;
- (id)_copySplatCryptex1ValueForKey:(int64_t)key;
- (id)_copySplatRollbackObjectsPath;
- (id)_copySplatRollbackRestoreVersionPath;
- (id)_copySplatRollbackSystemVersionPath;
- (id)_copySplatRollbackValueForKey:(int64_t)key;
- (id)_copySplatValueForKey:(int64_t)key;
- (id)_copyStringValueForKey:(int64_t)key;
- (id)_copySysCtlValueForKey:(int64_t)key;
- (id)_coreServicesKeyForQueryKey:(int64_t)key;
- (id)_factoryVersionKeyForQueryKey:(int64_t)key;
- (id)_factoryVersionPlistContentsForKey:(int64_t)key;
- (id)_getMajorVersionFromBuildVersion:(id)version;
- (id)_nameForQueryKey:(int64_t)key;
- (id)_nameForQueryMethod:(int64_t)method;
- (id)_restoreVersionKeyForQueryKey:(int64_t)key;
- (id)_splatCryptex1VersionPlistContentsForKey:(int64_t)key;
- (id)_splatRollbackVersionPlistContentsForKey:(int64_t)key;
- (id)_splatVersionKeyForQueryKey:(int64_t)key;
- (id)_splatVersionPlistContentsForKey:(int64_t)key;
- (id)_sysCtlKeyForQueryKey:(int64_t)key;
- (id)description;
- (id)getSystemRecoveryNSIHDirectory;
- (id)initTargetingSystemVolume:(id)volume;
- (id)summary;
- (int64_t)_queryMethodForKey:(int64_t)key;
- (void)_copySplatCryptex1RestoreVersionPath;
- (void)_copySplatCryptex1SystemVersionPath;
- (void)_copySplatRollbackObjectsPath;
- (void)_initializeBridgeOSProperties;
- (void)_parseBridgeOSBuildInformationFromDevice:(id)device;
- (void)_reloadPlistContentsForKey:(int64_t)key;
- (void)adjustTargetingSystemVolume:(id)volume;
- (void)hasEligibleRollback;
- (void)reloadDevice;
@end

@implementation SUCoreDevice

- (BOOL)hasEligibleRollback
{
  v20 = *MEMORY[0x1E69E9840];
  _copySplatRollbackObjectsPath = [(SUCoreDevice *)self _copySplatRollbackObjectsPath];
  if (_copySplatRollbackObjectsPath)
  {
    v13 = 0;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [defaultManager fileExistsAtPath:_copySplatRollbackObjectsPath isDirectory:&v13];
    LODWORD(oslog2) = (v4 & v13);

    v6 = +[SUCoreLog sharedLogger];
    oslog = [v6 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (oslog2)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      *buf = 138543874;
      v15 = _copySplatRollbackObjectsPath;
      v16 = 2114;
      if (v13)
      {
        v8 = @"YES";
      }

      v17 = v9;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Checking if rollback objects are present in preboot at path: %{public}@, exists: %{public}@, isDir: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v10 = +[SUCoreLog sharedLogger];
    oslog2 = [v10 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice hasEligibleRollback];
    }

    LOBYTE(oslog2) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return oslog2;
}

- (BOOL)hasSemiSplatActive
{
  v35 = *MEMORY[0x1E69E9840];
  if (![(SUCoreDevice *)self hasSplat])
  {
    v20 = 0;
    v19 = @"Splat is not supported on this platform; semi-splat is not possible";
    goto LABEL_17;
  }

  splatRestoreVersion = [(SUCoreDevice *)self splatRestoreVersion];
  if (!splatRestoreVersion)
  {
    goto LABEL_9;
  }

  v4 = splatRestoreVersion;
  splatCryptex1RestoreVersion = [(SUCoreDevice *)self splatCryptex1RestoreVersion];
  if (!splatCryptex1RestoreVersion)
  {

LABEL_9:
    splatRestoreVersion2 = [(SUCoreDevice *)self splatRestoreVersion];
    if (!splatRestoreVersion2 || (v22 = splatRestoreVersion2, [(SUCoreDevice *)self splatCryptex1RestoreVersion], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, !v23))
    {
      v25 = objc_alloc(MEMORY[0x1E696AEC0]);
      splatRestoreVersion3 = [(SUCoreDevice *)self splatRestoreVersion];
      splatCryptex1RestoreVersion2 = [(SUCoreDevice *)self splatCryptex1RestoreVersion];
      v19 = [v25 initWithFormat:@"One of Splat RestoreVersion (%@) or Cryptex1 RestoreVersion (%@) are not present", splatRestoreVersion3, splatCryptex1RestoreVersion2];
      goto LABEL_13;
    }

    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    splatRestoreVersion3 = [(SUCoreDevice *)self splatRestoreVersion];
    splatCryptex1RestoreVersion2 = [(SUCoreDevice *)self splatCryptex1RestoreVersion];
    v19 = [v24 initWithFormat:@"Splat RestoreVersion (%@) and Cryptex1 RestoreVersion (%@) are not equal", splatRestoreVersion3, splatCryptex1RestoreVersion2];
LABEL_15:
    v20 = 1;
    goto LABEL_16;
  }

  v6 = splatCryptex1RestoreVersion;
  splatRestoreVersion4 = [(SUCoreDevice *)self splatRestoreVersion];
  splatCryptex1RestoreVersion3 = [(SUCoreDevice *)self splatCryptex1RestoreVersion];
  v9 = [SUCore stringIsEqual:splatRestoreVersion4 to:splatCryptex1RestoreVersion3];

  if (!v9)
  {
    goto LABEL_9;
  }

  splatProductVersionExtra = [(SUCoreDevice *)self splatProductVersionExtra];
  splatCryptex1ProductVersionExtra = [(SUCoreDevice *)self splatCryptex1ProductVersionExtra];
  v12 = [SUCore stringIsEqual:splatProductVersionExtra to:splatCryptex1ProductVersionExtra];

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  splatRestoreVersion3 = [(SUCoreDevice *)self splatRestoreVersion];
  splatCryptex1RestoreVersion2 = [(SUCoreDevice *)self splatProductVersionExtra];
  splatCryptex1RestoreVersion4 = [(SUCoreDevice *)self splatCryptex1RestoreVersion];
  splatCryptex1ProductVersionExtra2 = [(SUCoreDevice *)self splatCryptex1ProductVersionExtra];
  v18 = splatCryptex1ProductVersionExtra2;
  if (!v12)
  {
    v19 = [v13 initWithFormat:@"Splat ProductVersionExtra (%@; %@) and Cryptex1 ProductVersionExtra (%@; %@) are not equal", splatRestoreVersion3, splatCryptex1RestoreVersion2, splatCryptex1RestoreVersion4, splatCryptex1ProductVersionExtra2];

    goto LABEL_15;
  }

  v19 = [v13 initWithFormat:@"Splat RestoreVersion (%@; %@) and Cryptex1 RestoreVersion (%@; %@) are equal", splatRestoreVersion3, splatCryptex1RestoreVersion2, splatCryptex1RestoreVersion4, splatCryptex1ProductVersionExtra2];

LABEL_13:
  v20 = 0;
LABEL_16:

LABEL_17:
  v26 = +[SUCoreLog sharedLogger];
  oslog = [v26 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v28 = @"NO";
    if (v20)
    {
      v28 = @"YES";
    }

    *buf = 138543618;
    v32 = v28;
    v33 = 2114;
    v34 = v19;
    _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Semi-splat active: %{public}@ (%{public}@)", buf, 0x16u);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v20;
}

- (NSString)splatRestoreVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:23];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:23];
  splatRestoreVersion = selfCopy->_splatRestoreVersion;
  selfCopy->_splatRestoreVersion = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatRestoreVersion;

  return v5;
}

- (NSDictionary)splatCryptex1SystemVersionPlistContents
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  splatCryptex1SystemVersionPlistPath = [(SUCoreDevice *)selfCopy splatCryptex1SystemVersionPlistPath];
  v5 = [v3 initWithContentsOfFile:splatCryptex1SystemVersionPlistPath];
  splatCryptex1SystemVersionPlistContents = selfCopy->_splatCryptex1SystemVersionPlistContents;
  selfCopy->_splatCryptex1SystemVersionPlistContents = v5;

  objc_sync_exit(selfCopy);
  v7 = selfCopy->_splatCryptex1SystemVersionPlistContents;

  return v7;
}

- (NSString)splatCryptex1BuildVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:36];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:36];
  splatCryptex1BuildVersion = selfCopy->_splatCryptex1BuildVersion;
  selfCopy->_splatCryptex1BuildVersion = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatCryptex1BuildVersion;

  return v5;
}

- (NSString)splatCryptex1RestoreVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:33];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:33];
  splatCryptex1RestoreVersion = selfCopy->_splatCryptex1RestoreVersion;
  selfCopy->_splatCryptex1RestoreVersion = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatCryptex1RestoreVersion;

  return v5;
}

- (NSString)splatCryptex1ProductVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:34];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:34];
  splatCryptex1ProductVersion = selfCopy->_splatCryptex1ProductVersion;
  selfCopy->_splatCryptex1ProductVersion = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatCryptex1ProductVersion;

  return v5;
}

- (NSString)splatProductVersionExtra
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:27];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:27];
  splatProductVersionExtra = selfCopy->_splatProductVersionExtra;
  selfCopy->_splatProductVersionExtra = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatProductVersionExtra;

  return v5;
}

- (NSString)splatCryptex1ProductVersionExtra
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:35];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:35];
  splatCryptex1ProductVersionExtra = selfCopy->_splatCryptex1ProductVersionExtra;
  selfCopy->_splatCryptex1ProductVersionExtra = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatCryptex1ProductVersionExtra;

  return v5;
}

- (NSDictionary)splatCryptex1RestoreVersionPlistContents
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  splatCryptex1RestoreVersionPlistPath = [(SUCoreDevice *)selfCopy splatCryptex1RestoreVersionPlistPath];
  v5 = [v3 initWithContentsOfFile:splatCryptex1RestoreVersionPlistPath];
  splatCryptex1RestoreVersionPlistContents = selfCopy->_splatCryptex1RestoreVersionPlistContents;
  selfCopy->_splatCryptex1RestoreVersionPlistContents = v5;

  objc_sync_exit(selfCopy);
  v7 = selfCopy->_splatCryptex1RestoreVersionPlistContents;

  return v7;
}

+ (id)sharedDevice
{
  if (sharedDevice_onceToken != -1)
  {
    +[SUCoreDevice sharedDevice];
  }

  v3 = sharedDevice___sharedDevice;

  return v3;
}

- (NSString)splatCryptex1ReleaseType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:38];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:38];
  splatCryptex1ReleaseType = selfCopy->_splatCryptex1ReleaseType;
  selfCopy->_splatCryptex1ReleaseType = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatCryptex1ReleaseType;

  return v5;
}

- (BOOL)_hasSplatOnlyUpdateInstalled
{
  splatProductVersionExtra = [(SUCoreDevice *)self splatProductVersionExtra];

  if (splatProductVersionExtra)
  {
    return 1;
  }

  v5 = [SUCoreRestoreVersion alloc];
  restoreVersion = [(SUCoreDevice *)self restoreVersion];
  v7 = [(SUCoreRestoreVersion *)v5 initWithRestoreVersion:restoreVersion];

  v8 = [SUCoreRestoreVersion alloc];
  splatRestoreVersion = [(SUCoreDevice *)self splatRestoreVersion];
  v10 = [(SUCoreRestoreVersion *)v8 initWithRestoreVersion:splatRestoreVersion];

  v4 = [(SUCoreRestoreVersion *)v7 isComparable:v10]&& [(SUCoreRestoreVersion *)v7 compare:v10]== -1;
  return v4;
}

uint64_t __28__SUCoreDevice_sharedDevice__block_invoke()
{
  sharedDevice___sharedDevice = [[SUCoreDevice alloc] initTargetingSystemVolume:@"/"];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initTargetingSystemVolume:(id)volume
{
  volumeCopy = volume;
  v11.receiver = self;
  v11.super_class = SUCoreDevice;
  v5 = [(SUCoreDevice *)&v11 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  if (volumeCopy)
  {
    [(SUCoreDevice *)v5 adjustTargetingSystemVolume:volumeCopy];
LABEL_4:
    v7 = v6;
    goto LABEL_8;
  }

  v8 = +[SUCoreLog sharedLogger];
  oslog = [v8 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice initTargetingSystemVolume:];
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)adjustTargetingSystemVolume:(id)volume
{
  v175 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  if (volumeCopy)
  {
    [(SUCoreDevice *)self setTargetedSystemVolume:volumeCopy];
    v5 = [volumeCopy stringByAppendingPathComponent:@"/System/Library/CoreServices/"];
    v6 = [v5 stringByAppendingPathComponent:@"SystemVersion.plist"];
    [(SUCoreDevice *)self setSystemVersionPlistPath:v6];

    v7 = [volumeCopy stringByAppendingPathComponent:@"/System/Library/CoreServices/"];
    v8 = [v7 stringByAppendingPathComponent:@"RestoreVersion.plist"];
    [(SUCoreDevice *)self setRestoreVersionPlistPath:v8];

    v9 = [volumeCopy stringByAppendingPathComponent:@"/System/Library/CoreServices/"];
    v10 = [v9 stringByAppendingPathComponent:@"AppleInternalVariant.plist"];
    [(SUCoreDevice *)self setAppleInternalVariantPlistPath:v10];

    v11 = [@"/System/Volumes/iSCPreboot/SFR/current/" stringByAppendingPathComponent:@"SystemVersion.plist"];
    [(SUCoreDevice *)self setSfrSystemVersionPlistPath:v11];

    v12 = [@"/System/Volumes/iSCPreboot/SFR/current/" stringByAppendingPathComponent:@"RestoreVersion.plist"];
    [(SUCoreDevice *)self setSfrRestoreVersionPlistPath:v12];

    getSystemRecoveryNSIHDirectory = [(SUCoreDevice *)self getSystemRecoveryNSIHDirectory];
    v14 = getSystemRecoveryNSIHDirectory;
    v15 = @"/System/Volumes/iSCPreboot/SystemRecovery/current/";
    if (getSystemRecoveryNSIHDirectory)
    {
      v15 = getSystemRecoveryNSIHDirectory;
    }

    oslog17 = v15;

    v17 = [oslog17 stringByAppendingPathComponent:@"SystemVersion.plist"];
    [(SUCoreDevice *)self setRecoveryOSSystemVersionPlistPath:v17];

    v18 = [oslog17 stringByAppendingPathComponent:@"RestoreVersion.plist"];
    [(SUCoreDevice *)self setRecoveryOSRestoreVersionPlistPath:v18];

    v19 = [@"/System/Volumes/Hardware/" stringByAppendingPathComponent:@"FactoryVersion.plist"];
    [(SUCoreDevice *)self setFactoryVersionPlistPath:v19];

    v20 = [@"/System/Volumes/Hardware/" stringByAppendingPathComponent:@"PreservedFactoryVersion.plist"];
    [(SUCoreDevice *)self setPreservedFactoryVersionPlistPath:v20];

    v21 = [volumeCopy stringByAppendingPathComponent:@"/System/Cryptexes/OS/System/Library/CoreServices/"];
    v22 = [v21 stringByAppendingPathComponent:@"RestoreVersion.plist"];
    [(SUCoreDevice *)self setSplatRestoreVersionPlistPath:v22];

    v23 = [volumeCopy stringByAppendingPathComponent:@"/System/Cryptexes/OS/System/Library/CoreServices/"];
    v24 = [v23 stringByAppendingPathComponent:@"SystemVersion.plist"];
    [(SUCoreDevice *)self setSplatSystemVersionPlistPath:v24];

    _copySplatRollbackRestoreVersionPath = [(SUCoreDevice *)self _copySplatRollbackRestoreVersionPath];
    [(SUCoreDevice *)self setSplatRollbackRestoreVersionPlistPath:_copySplatRollbackRestoreVersionPath];

    _copySplatRollbackSystemVersionPath = [(SUCoreDevice *)self _copySplatRollbackSystemVersionPath];
    [(SUCoreDevice *)self setSplatRollbackSystemVersionPlistPath:_copySplatRollbackSystemVersionPath];

    _copySplatCryptex1RestoreVersionPath = [(SUCoreDevice *)self _copySplatCryptex1RestoreVersionPath];
    [(SUCoreDevice *)self setSplatCryptex1RestoreVersionPlistPath:_copySplatCryptex1RestoreVersionPath];

    _copySplatCryptex1SystemVersionPath = [(SUCoreDevice *)self _copySplatCryptex1SystemVersionPath];
    [(SUCoreDevice *)self setSplatCryptex1SystemVersionPlistPath:_copySplatCryptex1SystemVersionPath];

    v29 = +[SUCoreLog sharedLogger];
    oslog = [v29 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      systemVersionPlistPath = [(SUCoreDevice *)self systemVersionPlistPath];
      *buf = 138543362;
      v174 = systemVersionPlistPath;
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using systemVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v32 = +[SUCoreLog sharedLogger];
    oslog2 = [v32 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      restoreVersionPlistPath = [(SUCoreDevice *)self restoreVersionPlistPath];
      *buf = 138543362;
      v174 = restoreVersionPlistPath;
      _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using restoreVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v35 = +[SUCoreLog sharedLogger];
    oslog3 = [v35 oslog];

    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
      appleInternalVariantPlistPath = [(SUCoreDevice *)self appleInternalVariantPlistPath];
      *buf = 138543362;
      v174 = appleInternalVariantPlistPath;
      _os_log_impl(&dword_1E0F71000, oslog3, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using appleInternalVariantPlistPath: %{public}@", buf, 0xCu);
    }

    v38 = +[SUCoreLog sharedLogger];
    oslog4 = [v38 oslog];

    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
    {
      sfrSystemVersionPlistPath = [(SUCoreDevice *)self sfrSystemVersionPlistPath];
      *buf = 138543362;
      v174 = sfrSystemVersionPlistPath;
      _os_log_impl(&dword_1E0F71000, oslog4, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using sfrSystemVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v41 = +[SUCoreLog sharedLogger];
    oslog5 = [v41 oslog];

    if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
    {
      sfrRestoreVersionPlistPath = [(SUCoreDevice *)self sfrRestoreVersionPlistPath];
      *buf = 138543362;
      v174 = sfrRestoreVersionPlistPath;
      _os_log_impl(&dword_1E0F71000, oslog5, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using sfrRestoreVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v44 = +[SUCoreLog sharedLogger];
    oslog6 = [v44 oslog];

    if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
    {
      recoveryOSSystemVersionPlistPath = [(SUCoreDevice *)self recoveryOSSystemVersionPlistPath];
      *buf = 138543362;
      v174 = recoveryOSSystemVersionPlistPath;
      _os_log_impl(&dword_1E0F71000, oslog6, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using recoveryOSSystemVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v47 = +[SUCoreLog sharedLogger];
    oslog7 = [v47 oslog];

    if (os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT))
    {
      recoveryOSRestoreVersionPlistPath = [(SUCoreDevice *)self recoveryOSRestoreVersionPlistPath];
      *buf = 138543362;
      v174 = recoveryOSRestoreVersionPlistPath;
      _os_log_impl(&dword_1E0F71000, oslog7, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using recoveryOSRestoreVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v50 = +[SUCoreLog sharedLogger];
    oslog8 = [v50 oslog];

    if (os_log_type_enabled(oslog8, OS_LOG_TYPE_DEFAULT))
    {
      factoryVersionPlistPath = [(SUCoreDevice *)self factoryVersionPlistPath];
      *buf = 138543362;
      v174 = factoryVersionPlistPath;
      _os_log_impl(&dword_1E0F71000, oslog8, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using factoryVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v53 = +[SUCoreLog sharedLogger];
    oslog9 = [v53 oslog];

    if (os_log_type_enabled(oslog9, OS_LOG_TYPE_DEFAULT))
    {
      preservedFactoryVersionPlistPath = [(SUCoreDevice *)self preservedFactoryVersionPlistPath];
      *buf = 138543362;
      v174 = preservedFactoryVersionPlistPath;
      _os_log_impl(&dword_1E0F71000, oslog9, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using preservedFactoryVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v56 = +[SUCoreLog sharedLogger];
    oslog10 = [v56 oslog];

    if (os_log_type_enabled(oslog10, OS_LOG_TYPE_DEFAULT))
    {
      splatRestoreVersionPlistPath = [(SUCoreDevice *)self splatRestoreVersionPlistPath];
      *buf = 138543362;
      v174 = splatRestoreVersionPlistPath;
      _os_log_impl(&dword_1E0F71000, oslog10, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using splatRestoreVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v59 = +[SUCoreLog sharedLogger];
    oslog11 = [v59 oslog];

    if (os_log_type_enabled(oslog11, OS_LOG_TYPE_DEFAULT))
    {
      splatSystemVersionPlistPath = [(SUCoreDevice *)self splatSystemVersionPlistPath];
      *buf = 138543362;
      v174 = splatSystemVersionPlistPath;
      _os_log_impl(&dword_1E0F71000, oslog11, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using splatSystemVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v62 = +[SUCoreLog sharedLogger];
    oslog12 = [v62 oslog];

    if (os_log_type_enabled(oslog12, OS_LOG_TYPE_DEFAULT))
    {
      splatRollbackRestoreVersionPlistPath = [(SUCoreDevice *)self splatRollbackRestoreVersionPlistPath];
      *buf = 138543362;
      v174 = splatRollbackRestoreVersionPlistPath;
      _os_log_impl(&dword_1E0F71000, oslog12, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using splatRollbackRestoreVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v65 = +[SUCoreLog sharedLogger];
    oslog13 = [v65 oslog];

    if (os_log_type_enabled(oslog13, OS_LOG_TYPE_DEFAULT))
    {
      splatRollbackSystemVersionPlistPath = [(SUCoreDevice *)self splatRollbackSystemVersionPlistPath];
      *buf = 138543362;
      v174 = splatRollbackSystemVersionPlistPath;
      _os_log_impl(&dword_1E0F71000, oslog13, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using splatRollbackSystemVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v68 = +[SUCoreLog sharedLogger];
    oslog14 = [v68 oslog];

    if (os_log_type_enabled(oslog14, OS_LOG_TYPE_DEFAULT))
    {
      splatCryptex1RestoreVersionPlistPath = [(SUCoreDevice *)self splatCryptex1RestoreVersionPlistPath];
      *buf = 138543362;
      v174 = splatCryptex1RestoreVersionPlistPath;
      _os_log_impl(&dword_1E0F71000, oslog14, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using splatCryptex1RestoreVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v71 = +[SUCoreLog sharedLogger];
    oslog15 = [v71 oslog];

    if (os_log_type_enabled(oslog15, OS_LOG_TYPE_DEFAULT))
    {
      splatCryptex1SystemVersionPlistPath = [(SUCoreDevice *)self splatCryptex1SystemVersionPlistPath];
      *buf = 138543362;
      v174 = splatCryptex1SystemVersionPlistPath;
      _os_log_impl(&dword_1E0F71000, oslog15, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using splatCryptex1SystemVersionPlistPath: %{public}@", buf, 0xCu);
    }

    [(SUCoreDevice *)self setDeviceSupportsMobileGestalt:[(SUCoreDevice *)self _supportsMobileGestalt]];
    [(SUCoreDevice *)self setDeviceSupportsCoreServices:[(SUCoreDevice *)self _supportsCoreServices]];
    [(SUCoreDevice *)self setDeviceSupportsAppleInternalVariant:[(SUCoreDevice *)self _supportsAppleInternalVariant]];
    [(SUCoreDevice *)self setDeviceSupportsRestoreVersion:[(SUCoreDevice *)self _supportsRestoreVersion]];
    [(SUCoreDevice *)self setDeviceSupportsSFRSystemVersion:[(SUCoreDevice *)self _supportsSFRSystemVersion]];
    [(SUCoreDevice *)self setDeviceSupportsSFRRestoreVersion:[(SUCoreDevice *)self _supportsSFRRestoreVersion]];
    [(SUCoreDevice *)self setDeviceSupportsRecoveryOSSystemVersion:[(SUCoreDevice *)self _supportsRecoveryOSSystemVersion]];
    [(SUCoreDevice *)self setDeviceSupportsRecoveryOSRestoreVersion:[(SUCoreDevice *)self _supportsRecoveryOSRestoreVersion]];
    [(SUCoreDevice *)self setDeviceSupportsFactoryVersion:[(SUCoreDevice *)self _supportsFactoryVersion]];
    [(SUCoreDevice *)self setDeviceSupportsPreservedFactoryVersion:[(SUCoreDevice *)self _supportsPreservedFactoryVersion]];
    [(SUCoreDevice *)self setDeviceSupportsSplatRestoreVersion:[(SUCoreDevice *)self _supportsSplatRestoreVersion]];
    [(SUCoreDevice *)self setDeviceSupportsSplatSystemVersion:[(SUCoreDevice *)self _supportsSplatSystemVersion]];
    [(SUCoreDevice *)self setDeviceSupportsMultiVolumeBoot:0];
    [(SUCoreDevice *)self setSystemVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsCoreServices])
    {
      v74 = objc_alloc(MEMORY[0x1E695DF20]);
      systemVersionPlistPath2 = [(SUCoreDevice *)self systemVersionPlistPath];
      v76 = [v74 initWithContentsOfFile:systemVersionPlistPath2];
      [(SUCoreDevice *)self setSystemVersionPlistContents:v76];
    }

    [(SUCoreDevice *)self setRestoreVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsRestoreVersion])
    {
      v77 = objc_alloc(MEMORY[0x1E695DF20]);
      restoreVersionPlistPath2 = [(SUCoreDevice *)self restoreVersionPlistPath];
      v79 = [v77 initWithContentsOfFile:restoreVersionPlistPath2];
      [(SUCoreDevice *)self setRestoreVersionPlistContents:v79];
    }

    [(SUCoreDevice *)self setSfrSystemVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSFRSystemVersion])
    {
      v80 = objc_alloc(MEMORY[0x1E695DF20]);
      sfrSystemVersionPlistPath2 = [(SUCoreDevice *)self sfrSystemVersionPlistPath];
      v82 = [v80 initWithContentsOfFile:sfrSystemVersionPlistPath2];
      [(SUCoreDevice *)self setSfrSystemVersionPlistContents:v82];
    }

    [(SUCoreDevice *)self setSfrRestoreVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSFRRestoreVersion])
    {
      v83 = objc_alloc(MEMORY[0x1E695DF20]);
      sfrRestoreVersionPlistPath2 = [(SUCoreDevice *)self sfrRestoreVersionPlistPath];
      v85 = [v83 initWithContentsOfFile:sfrRestoreVersionPlistPath2];
      [(SUCoreDevice *)self setSfrRestoreVersionPlistContents:v85];
    }

    [(SUCoreDevice *)self setRecoveryOSSystemVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsRecoveryOSRestoreVersion])
    {
      v86 = objc_alloc(MEMORY[0x1E695DF20]);
      recoveryOSSystemVersionPlistPath2 = [(SUCoreDevice *)self recoveryOSSystemVersionPlistPath];
      v88 = [v86 initWithContentsOfFile:recoveryOSSystemVersionPlistPath2];
      [(SUCoreDevice *)self setRecoveryOSSystemVersionPlistContents:v88];
    }

    [(SUCoreDevice *)self setRecoveryOSRestoreVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsRecoveryOSRestoreVersion])
    {
      v89 = objc_alloc(MEMORY[0x1E695DF20]);
      recoveryOSRestoreVersionPlistPath2 = [(SUCoreDevice *)self recoveryOSRestoreVersionPlistPath];
      v91 = [v89 initWithContentsOfFile:recoveryOSRestoreVersionPlistPath2];
      [(SUCoreDevice *)self setRecoveryOSRestoreVersionPlistContents:v91];
    }

    [(SUCoreDevice *)self setFactoryVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsFactoryVersion])
    {
      v92 = objc_alloc(MEMORY[0x1E695DF20]);
      factoryVersionPlistPath2 = [(SUCoreDevice *)self factoryVersionPlistPath];
      v94 = [v92 initWithContentsOfFile:factoryVersionPlistPath2];
      [(SUCoreDevice *)self setFactoryVersionPlistContents:v94];
    }

    [(SUCoreDevice *)self setPreservedFactoryVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsPreservedFactoryVersion])
    {
      v95 = objc_alloc(MEMORY[0x1E695DF20]);
      preservedFactoryVersionPlistPath2 = [(SUCoreDevice *)self preservedFactoryVersionPlistPath];
      v97 = [v95 initWithContentsOfFile:preservedFactoryVersionPlistPath2];
      [(SUCoreDevice *)self setPreservedFactoryVersionPlistContents:v97];
    }

    [(SUCoreDevice *)self setAppleInternalVariantPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsCoreServices])
    {
      v98 = objc_alloc(MEMORY[0x1E695DF20]);
      appleInternalVariantPlistPath2 = [(SUCoreDevice *)self appleInternalVariantPlistPath];
      v100 = [v98 initWithContentsOfFile:appleInternalVariantPlistPath2];
      [(SUCoreDevice *)self setAppleInternalVariantPlistContents:v100];
    }

    [(SUCoreDevice *)self setSplatRestoreVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSplatRestoreVersion])
    {
      v101 = objc_alloc(MEMORY[0x1E695DF20]);
      splatRestoreVersionPlistPath2 = [(SUCoreDevice *)self splatRestoreVersionPlistPath];
      v103 = [v101 initWithContentsOfFile:splatRestoreVersionPlistPath2];
      [(SUCoreDevice *)self setSplatRestoreVersionPlistContents:v103];
    }

    [(SUCoreDevice *)self setSplatSystemVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSplatSystemVersion])
    {
      v104 = objc_alloc(MEMORY[0x1E695DF20]);
      splatSystemVersionPlistPath2 = [(SUCoreDevice *)self splatSystemVersionPlistPath];
      v106 = [v104 initWithContentsOfFile:splatSystemVersionPlistPath2];
      [(SUCoreDevice *)self setSplatSystemVersionPlistContents:v106];
    }

    [(SUCoreDevice *)self setSplatRollbackRestoreVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSplatRollbackRestoreVersion])
    {
      v107 = objc_alloc(MEMORY[0x1E695DF20]);
      splatRollbackRestoreVersionPlistPath2 = [(SUCoreDevice *)self splatRollbackRestoreVersionPlistPath];
      v109 = [v107 initWithContentsOfFile:splatRollbackRestoreVersionPlistPath2];
      [(SUCoreDevice *)self setSplatRollbackRestoreVersionPlistContents:v109];
    }

    [(SUCoreDevice *)self setSplatRollbackSystemVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSplatRollbackSystemVersion])
    {
      v110 = objc_alloc(MEMORY[0x1E695DF20]);
      splatRollbackSystemVersionPlistPath2 = [(SUCoreDevice *)self splatRollbackSystemVersionPlistPath];
      v112 = [v110 initWithContentsOfFile:splatRollbackSystemVersionPlistPath2];
      [(SUCoreDevice *)self setSplatRollbackSystemVersionPlistContents:v112];
    }

    [(SUCoreDevice *)self setSplatCryptex1RestoreVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSplatCryptex1RestoreVersion])
    {
      v113 = objc_alloc(MEMORY[0x1E695DF20]);
      splatCryptex1RestoreVersionPlistPath2 = [(SUCoreDevice *)self splatCryptex1RestoreVersionPlistPath];
      v115 = [v113 initWithContentsOfFile:splatCryptex1RestoreVersionPlistPath2];
      [(SUCoreDevice *)self setSplatCryptex1RestoreVersionPlistContents:v115];
    }

    [(SUCoreDevice *)self setSplatCryptex1SystemVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSplatCryptex1SystemVersion])
    {
      v116 = objc_alloc(MEMORY[0x1E695DF20]);
      splatCryptex1SystemVersionPlistPath2 = [(SUCoreDevice *)self splatCryptex1SystemVersionPlistPath];
      v118 = [v116 initWithContentsOfFile:splatCryptex1SystemVersionPlistPath2];
      [(SUCoreDevice *)self setSplatCryptex1SystemVersionPlistContents:v118];
    }

    v119 = [(SUCoreDevice *)self _copyStringValueForKey:1];
    [(SUCoreDevice *)self setBuildVersion:v119];

    v120 = [(SUCoreDevice *)self _copyStringValueForKey:2];
    [(SUCoreDevice *)self setProductVersion:v120];

    v121 = [(SUCoreDevice *)self _copyStringValueForKey:3];
    [(SUCoreDevice *)self setHwModelString:v121];

    v122 = [(SUCoreDevice *)self _copyStringValueForKey:5];
    [(SUCoreDevice *)self setDeviceClass:v122];

    v123 = [(SUCoreDevice *)self _copyStringValueForKey:6];
    [(SUCoreDevice *)self setMarketingProductName:v123];

    v124 = [(SUCoreDevice *)self _copyStringValueForKey:7];
    [(SUCoreDevice *)self setProductType:v124];

    v125 = [(SUCoreDevice *)self _copyStringValueForKey:8];
    [(SUCoreDevice *)self setReleaseType:v125];

    _copyDeviceBoardID = [(SUCoreDevice *)self _copyDeviceBoardID];
    [(SUCoreDevice *)self setDeviceBoardID:_copyDeviceBoardID];

    v127 = [(SUCoreDevice *)self _copyStringValueForKey:4];
    [(SUCoreDevice *)self setHwTarget:v127];

    [(SUCoreDevice *)self setRestoreVersion:0];
    if ([(SUCoreDevice *)self deviceSupportsRestoreVersion])
    {
      v128 = [(SUCoreDevice *)self _copyStringValueForKey:9];
      v129 = [(SUCoreDevice *)self _copyStringValueForKey:10];
      v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v128, v129];
      [(SUCoreDevice *)self setRestoreVersion:v129];
    }

    releaseType = [(SUCoreDevice *)self releaseType];
    -[SUCoreDevice setIsInternal:](self, "setIsInternal:", [releaseType isEqualToString:@"Internal"]);

    v132 = +[SUCore sharedCore];
    commonDomain = [v132 commonDomain];
    [commonDomain UTF8String];
    [(SUCoreDevice *)self setIsBootedOSSecureInternal:os_variant_has_internal_content()];

    [(SUCoreDevice *)self setHasEmbeddedOS:0];
    [(SUCoreDevice *)self setHasBridgeOS:0];
    [(SUCoreDevice *)self setBridgeRestoreVersion:0];
    [(SUCoreDevice *)self setBridgeBuildVersion:0];
    [(SUCoreDevice *)self setIsBridgeInternal:0];
    [(SUCoreDevice *)self setHasSFR:[(SUCoreDevice *)self _supportsSFR]];
    [(SUCoreDevice *)self setSfrRestoreVersion:0];
    [(SUCoreDevice *)self setSfrBuildVersion:0];
    [(SUCoreDevice *)self setSfrProductVersion:0];
    [(SUCoreDevice *)self setSfrReleaseType:0];
    if ([(SUCoreDevice *)self hasSFR])
    {
      v134 = [(SUCoreDevice *)self _copyStringValueForKey:14];
      v135 = [(SUCoreDevice *)self _copyStringValueForKey:15];
      v136 = v135;
      if (v134 && v135)
      {
        v135 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v134, v135];
        [(SUCoreDevice *)self setSfrRestoreVersion:v135];
      }

      else
      {
        v139 = +[SUCoreLog sharedLogger];
        v135 = [v139 oslog];

        if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
        {
          [SUCoreDevice adjustTargetingSystemVolume:];
        }
      }

      v140 = [(SUCoreDevice *)self _copyStringValueForKey:11];
      [(SUCoreDevice *)self setSfrBuildVersion:v140];

      v141 = [(SUCoreDevice *)self _copyStringValueForKey:12];
      [(SUCoreDevice *)self setSfrProductVersion:v141];

      v142 = [(SUCoreDevice *)self _copyStringValueForKey:13];
      [(SUCoreDevice *)self setSfrReleaseType:v142];
    }

    [(SUCoreDevice *)self setHasRecoveryOS:[(SUCoreDevice *)self _supportsRecoveryOS]];
    [(SUCoreDevice *)self setRecoveryOSBuildVersion:0];
    [(SUCoreDevice *)self setRecoveryOSProductVersion:0];
    [(SUCoreDevice *)self setRecoveryOSRestoreVersion:0];
    [(SUCoreDevice *)self setRecoveryOSReleaseType:0];
    if ([(SUCoreDevice *)self hasRecoveryOS])
    {
      v143 = [(SUCoreDevice *)self _copyStringValueForKey:19];
      v144 = [(SUCoreDevice *)self _copyStringValueForKey:20];
      v145 = v144;
      if (v143 && v144)
      {
        v144 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v143, v144];
        [(SUCoreDevice *)self setRecoveryOSRestoreVersion:v144];
      }

      else
      {
        v147 = +[SUCoreLog sharedLogger];
        v144 = [v147 oslog];

        if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
        {
          [SUCoreDevice adjustTargetingSystemVolume:];
        }
      }

      v148 = [(SUCoreDevice *)self _copyStringValueForKey:16];
      [(SUCoreDevice *)self setRecoveryOSBuildVersion:v148];

      v149 = [(SUCoreDevice *)self _copyStringValueForKey:17];
      [(SUCoreDevice *)self setRecoveryOSProductVersion:v149];

      v150 = [(SUCoreDevice *)self _copyStringValueForKey:18];
      [(SUCoreDevice *)self setRecoveryOSReleaseType:v150];
    }

    [(SUCoreDevice *)self setFactoryRestoreVersion:0];
    if ([(SUCoreDevice *)self deviceSupportsFactoryVersion])
    {
      v151 = [(SUCoreDevice *)self _copyStringValueForKey:21];
      [(SUCoreDevice *)self setFactoryRestoreVersion:v151];
    }

    [(SUCoreDevice *)self setPreservedFactoryRestoreVersion:0];
    if ([(SUCoreDevice *)self deviceSupportsPreservedFactoryVersion])
    {
      v152 = [(SUCoreDevice *)self _copyStringValueForKey:22];
      [(SUCoreDevice *)self setPreservedFactoryRestoreVersion:v152];
    }

    [(SUCoreDevice *)self setHasSplat:[(SUCoreDevice *)self _supportsSplat]];
    [(SUCoreDevice *)self setSplatRestoreVersion:0];
    [(SUCoreDevice *)self setSplatProductVersion:0];
    [(SUCoreDevice *)self setSplatBuildVersion:0];
    [(SUCoreDevice *)self setSplatReleaseType:0];
    [(SUCoreDevice *)self setSplatProductVersionExtra:0];
    [(SUCoreDevice *)self setSplatRollbackRestoreVersion:0];
    [(SUCoreDevice *)self setSplatRollbackProductVersion:0];
    [(SUCoreDevice *)self setSplatRollbackBuildVersion:0];
    [(SUCoreDevice *)self setSplatRollbackReleaseType:0];
    [(SUCoreDevice *)self setSplatRollbackProductVersionExtra:0];
    [(SUCoreDevice *)self setSplatCryptex1RestoreVersion:0];
    [(SUCoreDevice *)self setSplatCryptex1ProductVersion:0];
    [(SUCoreDevice *)self setSplatCryptex1BuildVersion:0];
    [(SUCoreDevice *)self setSplatCryptex1BuildVersionOverride:0];
    [(SUCoreDevice *)self setSplatCryptex1ReleaseType:0];
    [(SUCoreDevice *)self setSplatCryptex1ProductVersionExtra:0];
    [(SUCoreDevice *)self setHasSplatOnlyUpdateInstalled:0];
    if ([(SUCoreDevice *)self hasSplat])
    {
      v153 = [(SUCoreDevice *)self _copyStringValueForKey:23];
      [(SUCoreDevice *)self setSplatRestoreVersion:v153];

      v154 = [(SUCoreDevice *)self _copyStringValueForKey:24];
      [(SUCoreDevice *)self setSplatProductVersion:v154];

      v155 = [(SUCoreDevice *)self _copyStringValueForKey:25];
      [(SUCoreDevice *)self setSplatBuildVersion:v155];

      v156 = [(SUCoreDevice *)self _copyStringValueForKey:26];
      [(SUCoreDevice *)self setSplatReleaseType:v156];

      v157 = [(SUCoreDevice *)self _copyStringValueForKey:27];
      [(SUCoreDevice *)self setSplatProductVersionExtra:v157];

      v158 = [(SUCoreDevice *)self _copyStringValueForKey:28];
      [(SUCoreDevice *)self setSplatRollbackRestoreVersion:v158];

      v159 = [(SUCoreDevice *)self _copyStringValueForKey:29];
      [(SUCoreDevice *)self setSplatRollbackProductVersion:v159];

      v160 = [(SUCoreDevice *)self _copyStringValueForKey:31];
      [(SUCoreDevice *)self setSplatRollbackBuildVersion:v160];

      v161 = [(SUCoreDevice *)self _copyStringValueForKey:32];
      [(SUCoreDevice *)self setSplatRollbackReleaseType:v161];

      v162 = [(SUCoreDevice *)self _copyStringValueForKey:30];
      [(SUCoreDevice *)self setSplatRollbackProductVersionExtra:v162];

      v163 = [(SUCoreDevice *)self _copyStringValueForKey:33];
      [(SUCoreDevice *)self setSplatCryptex1RestoreVersion:v163];

      v164 = [(SUCoreDevice *)self _copyStringValueForKey:34];
      [(SUCoreDevice *)self setSplatCryptex1ProductVersion:v164];

      v165 = [(SUCoreDevice *)self _copyStringValueForKey:36];
      [(SUCoreDevice *)self setSplatCryptex1BuildVersion:v165];

      v166 = [(SUCoreDevice *)self _copyStringValueForKey:37];
      [(SUCoreDevice *)self setSplatCryptex1BuildVersionOverride:v166];

      v167 = [(SUCoreDevice *)self _copyStringValueForKey:38];
      [(SUCoreDevice *)self setSplatCryptex1ReleaseType:v167];

      v168 = [(SUCoreDevice *)self _copyStringValueForKey:35];
      [(SUCoreDevice *)self setSplatCryptex1ProductVersionExtra:v168];

      [(SUCoreDevice *)self setHasSplatOnlyUpdateInstalled:[(SUCoreDevice *)self _hasSplatOnlyUpdateInstalled]];
    }

    [(SUCoreDevice *)self _adjustValuesForMacOS];
    v169 = +[SUCoreLog sharedLogger];
    oslog16 = [v169 oslog];

    if (os_log_type_enabled(oslog16, OS_LOG_TYPE_DEFAULT))
    {
      v171 = [(SUCoreDevice *)self description];
      *buf = 138543362;
      v174 = v171;
      _os_log_impl(&dword_1E0F71000, oslog16, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Initialized new device: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v138 = +[SUCoreLog sharedLogger];
    oslog17 = [v138 oslog];

    if (os_log_type_enabled(oslog17, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice adjustTargetingSystemVolume:];
    }
  }

  v172 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)splatRollbackRestoreVersionPlistContents
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  splatRollbackRestoreVersionPlistPath = [(SUCoreDevice *)selfCopy splatRollbackRestoreVersionPlistPath];
  v5 = [v3 initWithContentsOfFile:splatRollbackRestoreVersionPlistPath];
  splatRollbackRestoreVersionPlistContents = selfCopy->_splatRollbackRestoreVersionPlistContents;
  selfCopy->_splatRollbackRestoreVersionPlistContents = v5;

  objc_sync_exit(selfCopy);
  v7 = selfCopy->_splatRollbackRestoreVersionPlistContents;

  return v7;
}

- (NSDictionary)splatRollbackSystemVersionPlistContents
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  splatRollbackSystemVersionPlistPath = [(SUCoreDevice *)selfCopy splatRollbackSystemVersionPlistPath];
  v5 = [v3 initWithContentsOfFile:splatRollbackSystemVersionPlistPath];
  splatRollbackSystemVersionPlistContents = selfCopy->_splatRollbackSystemVersionPlistContents;
  selfCopy->_splatRollbackSystemVersionPlistContents = v5;

  objc_sync_exit(selfCopy);
  v7 = selfCopy->_splatRollbackSystemVersionPlistContents;

  return v7;
}

- (NSString)splatProductVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:24];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:24];
  splatProductVersion = selfCopy->_splatProductVersion;
  selfCopy->_splatProductVersion = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatProductVersion;

  return v5;
}

- (NSString)splatBuildVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:25];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:25];
  splatBuildVersion = selfCopy->_splatBuildVersion;
  selfCopy->_splatBuildVersion = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatBuildVersion;

  return v5;
}

- (NSString)splatReleaseType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:26];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:26];
  splatReleaseType = selfCopy->_splatReleaseType;
  selfCopy->_splatReleaseType = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatReleaseType;

  return v5;
}

- (void)reloadDevice
{
  targetedSystemVolume = [(SUCoreDevice *)self targetedSystemVolume];
  [(SUCoreDevice *)self adjustTargetingSystemVolume:targetedSystemVolume];
}

- (BOOL)isCorrectlyFormattedBuildVersion:(id)version
{
  if (!version)
  {
    return 0;
  }

  v3 = MEMORY[0x1E696AE70];
  versionCopy = version;
  v5 = [v3 regularExpressionWithPattern:@"^([0-9]+)[a-zA-Z]([0-9]+)[a-z]?$" options:0 error:0];
  v6 = [v5 firstMatchInString:versionCopy options:0 range:{0, objc_msgSend(versionCopy, "length")}];

  v7 = v6 != 0;
  return v7;
}

- (BOOL)isCorrectlyFormattedProductVersion:(id)version
{
  if (!version)
  {
    return 0;
  }

  v3 = MEMORY[0x1E696AE70];
  versionCopy = version;
  v5 = [v3 regularExpressionWithPattern:@"^([0-9]+).([0-9]+)(.[0-9]+)?$" options:0 error:0];
  v6 = [v5 firstMatchInString:versionCopy options:0 range:{0, objc_msgSend(versionCopy, "length")}];

  v7 = v6 != 0;
  return v7;
}

- (BOOL)isMinorOSUpdate:(id)update
{
  v24 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  buildVersion = [(SUCoreDevice *)self buildVersion];
  v6 = [(SUCoreDevice *)self _getMajorVersionFromBuildVersion:buildVersion];

  v7 = [(SUCoreDevice *)self _getMajorVersionFromBuildVersion:updateCopy];

  v8 = +[SUCoreLog sharedLogger];
  oslog = [v8 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    intValue = [v6 intValue];
    intValue2 = [v7 intValue];
    intValue3 = [v6 intValue];
    intValue4 = [v7 intValue];
    v14 = @"NO";
    v19[0] = 67109634;
    v19[1] = intValue;
    if (intValue3 == intValue4)
    {
      v14 = @"YES";
    }

    v20 = 1024;
    v21 = intValue2;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Build version comparison found current version %d, build version %d, isMinorOSUpdate: %{public}@", v19, 0x18u);
  }

  v15 = 0;
  if (v6 && v7)
  {
    intValue5 = [v6 intValue];
    v15 = intValue5 == [v7 intValue];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)isMajorOSUpdate:(id)update
{
  v24 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  buildVersion = [(SUCoreDevice *)self buildVersion];
  v6 = [(SUCoreDevice *)self _getMajorVersionFromBuildVersion:buildVersion];

  v7 = [(SUCoreDevice *)self _getMajorVersionFromBuildVersion:updateCopy];

  v8 = +[SUCoreLog sharedLogger];
  oslog = [v8 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    intValue = [v6 intValue];
    intValue2 = [v7 intValue];
    intValue3 = [v6 intValue];
    intValue4 = [v7 intValue];
    v14 = @"NO";
    v19[0] = 67109634;
    v19[1] = intValue;
    if (intValue3 < intValue4)
    {
      v14 = @"YES";
    }

    v20 = 1024;
    v21 = intValue2;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Build version comparison found current version %d, build version %d, isMajorOSUpdate: %{public}@", v19, 0x18u);
  }

  v15 = 0;
  if (v6 && v7)
  {
    intValue5 = [v6 intValue];
    v15 = intValue5 < [v7 intValue];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)_getMajorVersionFromBuildVersion:(id)version
{
  versionCopy = version;
  if (versionCopy)
  {
    oslog2 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^([0-9]+).*" options:0 error:0];
    v5 = -[NSObject firstMatchInString:options:range:](oslog2, "firstMatchInString:options:range:", versionCopy, 0, 0, [versionCopy length]);
    v6 = v5;
    if (v5 && [v5 numberOfRanges])
    {
      v7 = [v6 rangeAtIndex:1];
      v9 = [versionCopy substringWithRange:{v7, v8}];
    }

    else
    {
      v10 = +[SUCoreLog sharedLogger];
      oslog = [v10 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        [SUCoreDevice _getMajorVersionFromBuildVersion:];
      }

      v9 = 0;
    }
  }

  else
  {
    v12 = +[SUCoreLog sharedLogger];
    oslog2 = [v12 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice _getMajorVersionFromBuildVersion:];
    }

    v9 = 0;
  }

  return v9;
}

- (id)_copySplatCryptex1SystemVersionPath
{
  mEMORY[0x1E69AD998] = [MEMORY[0x1E69AD998] sharedDataAccessor];
  v9 = 0;
  v3 = [mEMORY[0x1E69AD998] copyPathForPersistentData:115 error:&v9];
  v4 = v9;

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[SUCoreLog sharedLogger];
    oslog = [v6 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice _copySplatCryptex1SystemVersionPath];
    }
  }

  return v3;
}

- (id)_copySplatCryptex1RestoreVersionPath
{
  mEMORY[0x1E69AD998] = [MEMORY[0x1E69AD998] sharedDataAccessor];
  v9 = 0;
  v3 = [mEMORY[0x1E69AD998] copyPathForPersistentData:116 error:&v9];
  v4 = v9;

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[SUCoreLog sharedLogger];
    oslog = [v6 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice _copySplatCryptex1RestoreVersionPath];
    }
  }

  return v3;
}

- (id)_copySplatRollbackObjectsPath
{
  mEMORY[0x1E69AD998] = [MEMORY[0x1E69AD998] sharedDataAccessor];
  v9 = 0;
  v3 = [mEMORY[0x1E69AD998] copyPathForPersistentData:112 error:&v9];
  v4 = v9;

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[SUCoreLog sharedLogger];
    oslog = [v6 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice _copySplatRollbackObjectsPath];
    }
  }

  return v3;
}

- (id)_copySplatRollbackSystemVersionPath
{
  _copySplatRollbackObjectsPath = [(SUCoreDevice *)self _copySplatRollbackObjectsPath];
  v3 = _copySplatRollbackObjectsPath;
  if (_copySplatRollbackObjectsPath)
  {
    v4 = [_copySplatRollbackObjectsPath stringByAppendingPathComponent:@"SystemVersion.plist"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_copySplatRollbackRestoreVersionPath
{
  _copySplatRollbackObjectsPath = [(SUCoreDevice *)self _copySplatRollbackObjectsPath];
  if (_copySplatRollbackObjectsPath)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", _copySplatRollbackObjectsPath, @"RestoreVersion.plist"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)splatRollbackRestoreVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:28];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:28];
  splatRollbackRestoreVersion = selfCopy->_splatRollbackRestoreVersion;
  selfCopy->_splatRollbackRestoreVersion = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatRollbackRestoreVersion;

  return v5;
}

- (NSString)splatRollbackProductVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:29];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:29];
  splatRollbackProductVersion = selfCopy->_splatRollbackProductVersion;
  selfCopy->_splatRollbackProductVersion = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatRollbackProductVersion;

  return v5;
}

- (NSString)splatRollbackProductVersionExtra
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:30];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:30];
  splatRollbackProductVersionExtra = selfCopy->_splatRollbackProductVersionExtra;
  selfCopy->_splatRollbackProductVersionExtra = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatRollbackProductVersionExtra;

  return v5;
}

- (NSString)splatRollbackBuildVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:31];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:31];
  splatRollbackBuildVersion = selfCopy->_splatRollbackBuildVersion;
  selfCopy->_splatRollbackBuildVersion = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatRollbackBuildVersion;

  return v5;
}

- (NSString)splatRollbackReleaseType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:32];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:32];
  splatRollbackReleaseType = selfCopy->_splatRollbackReleaseType;
  selfCopy->_splatRollbackReleaseType = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatRollbackReleaseType;

  return v5;
}

- (NSString)splatCryptex1BuildVersionOverride
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SUCoreDevice *)selfCopy _reloadPlistContentsForKey:37];
  v3 = [(SUCoreDevice *)selfCopy _copyStringValueForKey:37];
  splatCryptex1BuildVersionOverride = selfCopy->_splatCryptex1BuildVersionOverride;
  selfCopy->_splatCryptex1BuildVersionOverride = v3;

  objc_sync_exit(selfCopy);
  v5 = selfCopy->_splatCryptex1BuildVersionOverride;

  return v5;
}

- (BOOL)_supportsCoreServices
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  systemVersionPlistPath = [(SUCoreDevice *)self systemVersionPlistPath];
  v5 = [defaultManager fileExistsAtPath:systemVersionPlistPath];

  return v5;
}

- (BOOL)_supportsAppleInternalVariant
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  appleInternalVariantPlistPath = [(SUCoreDevice *)self appleInternalVariantPlistPath];
  v5 = [defaultManager fileExistsAtPath:appleInternalVariantPlistPath];

  return v5;
}

- (BOOL)_supportsRestoreVersion
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  restoreVersionPlistPath = [(SUCoreDevice *)self restoreVersionPlistPath];
  v5 = [defaultManager fileExistsAtPath:restoreVersionPlistPath];

  return v5;
}

- (BOOL)_supportsSFRSystemVersion
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  sfrSystemVersionPlistPath = [(SUCoreDevice *)self sfrSystemVersionPlistPath];
  v5 = [defaultManager fileExistsAtPath:sfrSystemVersionPlistPath];

  return v5;
}

- (BOOL)_supportsSFRRestoreVersion
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  sfrRestoreVersionPlistPath = [(SUCoreDevice *)self sfrRestoreVersionPlistPath];
  v5 = [defaultManager fileExistsAtPath:sfrRestoreVersionPlistPath];

  return v5;
}

- (BOOL)_supportsRecoveryOSSystemVersion
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  recoveryOSSystemVersionPlistPath = [(SUCoreDevice *)self recoveryOSSystemVersionPlistPath];
  v5 = [defaultManager fileExistsAtPath:recoveryOSSystemVersionPlistPath];

  return v5;
}

- (BOOL)_supportsRecoveryOSRestoreVersion
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  recoveryOSRestoreVersionPlistPath = [(SUCoreDevice *)self recoveryOSRestoreVersionPlistPath];
  v5 = [defaultManager fileExistsAtPath:recoveryOSRestoreVersionPlistPath];

  return v5;
}

- (BOOL)_supportsFactoryVersion
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  factoryVersionPlistPath = [(SUCoreDevice *)self factoryVersionPlistPath];
  v5 = [defaultManager fileExistsAtPath:factoryVersionPlistPath];

  return v5;
}

- (BOOL)_supportsPreservedFactoryVersion
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  preservedFactoryVersionPlistPath = [(SUCoreDevice *)self preservedFactoryVersionPlistPath];
  v5 = [defaultManager fileExistsAtPath:preservedFactoryVersionPlistPath];

  return v5;
}

- (BOOL)_supportsSplatRestoreVersion
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  splatRestoreVersionPlistPath = [(SUCoreDevice *)self splatRestoreVersionPlistPath];
  v5 = [defaultManager fileExistsAtPath:splatRestoreVersionPlistPath];

  return v5;
}

- (BOOL)_supportsSplatSystemVersion
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  splatSystemVersionPlistPath = [(SUCoreDevice *)self splatSystemVersionPlistPath];
  v5 = [defaultManager fileExistsAtPath:splatSystemVersionPlistPath];

  return v5;
}

- (BOOL)requiresDocAssetForUpdate
{
  deviceClass = [(SUCoreDevice *)self deviceClass];
  v3 = [deviceClass isEqualToString:@"AppleTV"];

  return v3 ^ 1;
}

- (void)_initializeBridgeOSProperties
{
  if (MEMORY[0x1EEE90DE0] && MEMORY[0x1EEE90DE8] && MEMORY[0x1EEE90DF0] && MEMORY[0x1EEE90DD8])
  {
    oslog3 = remote_device_copy_unique_of_type();
    if (*__error() == 35)
    {
      v4 = remote_device_copy_unique_of_type();

      oslog3 = v4;
    }

    if (oslog3)
    {
      v5 = +[SUCoreLog sharedLogger];
      oslog = [v5 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] RemoteServiceDiscovery indicates that this is a T2 bridgeOS device via REMOTE_DEVICE_TYPE_BRIDGE_COPROC (initializeBridgeOSProperties)", buf, 2u);
      }

      [(SUCoreDevice *)self setHasBridgeOS:1];
LABEL_19:
      [(SUCoreDevice *)self _parseBridgeOSBuildInformationFromDevice:oslog3];
      goto LABEL_20;
    }

    oslog3 = remote_device_copy_unique_of_type();
    if (*__error() == 35)
    {
      v8 = remote_device_copy_unique_of_type();

      oslog3 = v8;
    }

    v9 = +[SUCoreLog sharedLogger];
    oslog2 = [v9 oslog];

    v11 = os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT);
    if (oslog3)
    {
      if (v11)
      {
        *v13 = 0;
        _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] RemoteServiceDiscovery indicates that this is a T1 bridgeOS device via REMOTE_DEVICE_TYPE_EOS (initializeBridgeOSProperties)", v13, 2u);
      }

      [(SUCoreDevice *)self setHasEmbeddedOS:1];
      goto LABEL_19;
    }

    if (v11)
    {
      *v12 = 0;
      _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] RemoteServiceDiscovery indicates that this is not a bridgeOS device (initializeBridgeOSProperties)", v12, 2u);
    }

    oslog3 = oslog2;
  }

  else
  {
    v7 = +[SUCoreLog sharedLogger];
    oslog3 = [v7 oslog];

    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1E0F71000, oslog3, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] RemoteServiceDiscovery methods are not available on this platform (initializeBridgeOSProperties)", v15, 2u);
    }
  }

LABEL_20:
}

- (void)_parseBridgeOSBuildInformationFromDevice:(id)device
{
  deviceCopy = device;
  v4 = remote_device_copy_bridge_version_string();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v4];
    [(SUCoreDevice *)self setBridgeRestoreVersion:v6];

    free(v5);
  }

  v7 = remote_device_copy_os_build();
  if (v7)
  {
    v8 = v7;
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v7];
    [(SUCoreDevice *)self setBridgeBuildVersion:v9];

    free(v8);
  }

  [(SUCoreDevice *)self setIsBridgeInternal:remote_device_copy_internal_build()];
}

- (id)getSystemRecoveryNSIHDirectory
{
  v2 = +[SUCoreLog sharedLogger];
  oslog = [v2 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] SystemRecoveryNSIH: Device does not support variable boot policy", v5, 2u);
  }

  return 0;
}

- (void)_reloadPlistContentsForKey:(int64_t)key
{
  if (key > 28)
  {
    if ((key - 34) < 5)
    {
      v8 = objc_alloc(MEMORY[0x1E695DF20]);
      splatCryptex1SystemVersionPlistPath = [(SUCoreDevice *)self splatCryptex1SystemVersionPlistPath];
      v5 = [v8 initWithContentsOfFile:splatCryptex1SystemVersionPlistPath];
      [(SUCoreDevice *)self setSplatCryptex1SystemVersionPlistContents:v5];
      goto LABEL_14;
    }

    if ((key - 29) < 4)
    {
      v6 = objc_alloc(MEMORY[0x1E695DF20]);
      splatCryptex1SystemVersionPlistPath = [(SUCoreDevice *)self splatRollbackSystemVersionPlistPath];
      v5 = [v6 initWithContentsOfFile:splatCryptex1SystemVersionPlistPath];
      [(SUCoreDevice *)self setSplatRollbackSystemVersionPlistContents:v5];
      goto LABEL_14;
    }

    if (key == 33)
    {
      v10 = objc_alloc(MEMORY[0x1E695DF20]);
      splatCryptex1SystemVersionPlistPath = [(SUCoreDevice *)self splatCryptex1RestoreVersionPlistPath];
      v5 = [v10 initWithContentsOfFile:splatCryptex1SystemVersionPlistPath];
      [(SUCoreDevice *)self setSplatCryptex1RestoreVersionPlistContents:v5];
      goto LABEL_14;
    }
  }

  else
  {
    if ((key - 24) < 4)
    {
      v4 = objc_alloc(MEMORY[0x1E695DF20]);
      splatCryptex1SystemVersionPlistPath = [(SUCoreDevice *)self splatSystemVersionPlistPath];
      v5 = [v4 initWithContentsOfFile:splatCryptex1SystemVersionPlistPath];
      [(SUCoreDevice *)self setSplatSystemVersionPlistContents:v5];
LABEL_14:

      return;
    }

    if (key == 23)
    {
      v9 = objc_alloc(MEMORY[0x1E695DF20]);
      splatCryptex1SystemVersionPlistPath = [(SUCoreDevice *)self splatRestoreVersionPlistPath];
      v5 = [v9 initWithContentsOfFile:splatCryptex1SystemVersionPlistPath];
      [(SUCoreDevice *)self setSplatRestoreVersionPlistContents:v5];
      goto LABEL_14;
    }

    if (key == 28)
    {
      v7 = objc_alloc(MEMORY[0x1E695DF20]);
      splatCryptex1SystemVersionPlistPath = [(SUCoreDevice *)self splatRollbackRestoreVersionPlistPath];
      v5 = [v7 initWithContentsOfFile:splatCryptex1SystemVersionPlistPath];
      [(SUCoreDevice *)self setSplatRollbackRestoreVersionPlistContents:v5];
      goto LABEL_14;
    }
  }

  v11 = +[SUCoreLog sharedLogger];
  oslog = [v11 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice _reloadPlistContentsForKey:];
  }
}

- (id)_copyStringValueForKey:(int64_t)key
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [(SUCoreDevice *)self _queryMethodForKey:?];
  switch(v5)
  {
    case 1:
      v6 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copyGestaltValueForKey:key];
      break;
    case 2:
      v15 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copyCoreServicesValueForKey:key];
      break;
    case 3:
      v12 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copyCoreServicesAppleInternalValue];
      break;
    case 4:
      v13 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copyRestoreVersionValueForKey:key];
      break;
    case 5:
      v9 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copySysCtlValueForKey:key];
      break;
    case 6:
      v16 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copySFRSystemVersionValueForKey:key];
      break;
    case 7:
      v21 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copySFRRestoreVersionValueForKey:key];
      break;
    case 8:
      v14 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copyRecoveryOSSystemVersionValueForKey:key];
      break;
    case 9:
      v23 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copyRecoveryOSRestoreVersionValueForKey:key];
      break;
    case 10:
      v11 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copyFactoryVersionValueForKey:key];
      break;
    case 11:
      v22 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copySplatValueForKey:key];
      break;
    case 12:
      v8 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copySplatRollbackValueForKey:key];
      break;
    case 13:
      v10 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copySplatCryptex1ValueForKey:key];
      break;
    default:
      v17 = v5;
      v18 = +[SUCoreLog sharedLogger];
      oslog = [v18 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v24 = [(SUCoreDevice *)self _nameForQueryMethod:v17];
        v25 = [(SUCoreDevice *)self _nameForQueryKey:key];
        v26 = 138543618;
        v27 = v24;
        v28 = 2114;
        v29 = v25;
        _os_log_error_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_ERROR, "[SUCoreDevice] Unsupported query method %{public}@ attempted for key %{public}@", &v26, 0x16u);
      }

      v20 = *MEMORY[0x1E69E9840];
      result = 0;
      break;
  }

  return result;
}

- (int64_t)_queryMethodForKey:(int64_t)key
{
  keyCopy = key;
  switch(key)
  {
    case 0:
      return keyCopy;
    case 1:
    case 2:
      if ([(SUCoreDevice *)self deviceSupportsMultiVolumeBoot])
      {
        keyCopy = 2;
      }

      else
      {
        keyCopy = 1;
      }

      break;
    case 3:
    case 5:
    case 6:
    case 7:
      keyCopy = 1;
      break;
    case 4:
      keyCopy = 5;
      break;
    case 8:
      if ([(SUCoreDevice *)self deviceSupportsMultiVolumeBoot])
      {
        keyCopy = 3;
      }

      else
      {
        keyCopy = 1;
      }

      break;
    case 9:
    case 10:
      keyCopy = 4;
      break;
    case 11:
    case 12:
    case 13:
      keyCopy = 6;
      break;
    case 14:
    case 15:
      keyCopy = 7;
      break;
    case 16:
    case 17:
    case 18:
      keyCopy = 8;
      break;
    case 19:
    case 20:
      keyCopy = 9;
      break;
    case 21:
    case 22:
      keyCopy = 10;
      break;
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
      keyCopy = 11;
      break;
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
      keyCopy = 12;
      break;
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
      keyCopy = 13;
      break;
    default:
      v4 = +[SUCoreLog sharedLogger];
      oslog = [v4 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        [SUCoreDevice _queryMethodForKey:];
      }

      keyCopy = 0;
      break;
  }

  return keyCopy;
}

- (id)_copyGestaltValueForKey:(int64_t)key
{
  [(SUCoreDevice *)self _gestaltKeyForQueryKey:key];

  return MGCopyAnswer();
}

- (id)_copyCoreServicesValueForKey:(int64_t)key
{
  v4 = [(SUCoreDevice *)self _coreServicesKeyForQueryKey:key];
  systemVersionPlistContents = [(SUCoreDevice *)self systemVersionPlistContents];
  v6 = [systemVersionPlistContents safeStringForKey:v4];
  v7 = [v6 copy];

  return v7;
}

- (id)_copyRestoreVersionValueForKey:(int64_t)key
{
  v4 = [(SUCoreDevice *)self _restoreVersionKeyForQueryKey:key];
  restoreVersionPlistContents = [(SUCoreDevice *)self restoreVersionPlistContents];
  v6 = [restoreVersionPlistContents safeStringForKey:v4];
  v7 = [v6 copy];

  return v7;
}

- (id)_copyCoreServicesAppleInternalValue
{
  appleInternalVariantPlistContents = [(SUCoreDevice *)self appleInternalVariantPlistContents];
  v3 = [appleInternalVariantPlistContents safeULLForKey:@"AppleInternal"];

  if (v3 != 1)
  {
    return 0;
  }

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);

  return [v4 initWithString:@"Internal"];
}

- (id)_copySysCtlValueForKey:(int64_t)key
{
  v3 = [(SUCoreDevice *)self _sysCtlKeyForQueryKey:key];
  v11 = 0;
  if (sysctlbyname([v3 UTF8String], 0, &v11, 0, 0) || !v11)
  {
    v8 = +[SUCoreLog sharedLogger];
    oslog = [v8 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreDevice *)v3 _copySysCtlValueForKey:?];
    }

    v7 = 0;
  }

  else
  {
    v4 = malloc_type_calloc(v11 + 1, 1uLL, 0x2772FD70uLL);
    if (sysctlbyname([v3 UTF8String], v4, &v11, 0, 0))
    {
      v5 = +[SUCoreLog sharedLogger];
      oslog2 = [v5 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
      {
        [(SUCoreDevice *)v3 _copySysCtlValueForKey:?];
      }

      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
    }

    free(v4);
  }

  return v7;
}

- (id)_copySFRSystemVersionValueForKey:(int64_t)key
{
  v4 = [(SUCoreDevice *)self _coreServicesKeyForQueryKey:key];
  sfrSystemVersionPlistContents = [(SUCoreDevice *)self sfrSystemVersionPlistContents];
  v6 = [sfrSystemVersionPlistContents safeStringForKey:v4];
  v7 = [v6 copy];

  return v7;
}

- (id)_copySFRRestoreVersionValueForKey:(int64_t)key
{
  v4 = [(SUCoreDevice *)self _restoreVersionKeyForQueryKey:key];
  sfrRestoreVersionPlistContents = [(SUCoreDevice *)self sfrRestoreVersionPlistContents];
  v6 = [sfrRestoreVersionPlistContents safeStringForKey:v4];
  v7 = [v6 copy];

  return v7;
}

- (id)_copyRecoveryOSSystemVersionValueForKey:(int64_t)key
{
  v4 = [(SUCoreDevice *)self _coreServicesKeyForQueryKey:key];
  recoveryOSSystemVersionPlistContents = [(SUCoreDevice *)self recoveryOSSystemVersionPlistContents];
  v6 = [recoveryOSSystemVersionPlistContents safeStringForKey:v4];
  v7 = [v6 copy];

  return v7;
}

- (id)_copyFactoryVersionValueForKey:(int64_t)key
{
  v5 = [(SUCoreDevice *)self _factoryVersionKeyForQueryKey:?];
  v6 = [(SUCoreDevice *)self _factoryVersionPlistContentsForKey:key];
  v7 = [v6 safeStringForKey:v5];
  v8 = [v7 copy];

  return v8;
}

- (id)_copyRecoveryOSRestoreVersionValueForKey:(int64_t)key
{
  v4 = [(SUCoreDevice *)self _restoreVersionKeyForQueryKey:key];
  recoveryOSRestoreVersionPlistContents = [(SUCoreDevice *)self recoveryOSRestoreVersionPlistContents];
  v6 = [recoveryOSRestoreVersionPlistContents safeStringForKey:v4];
  v7 = [v6 copy];

  return v7;
}

- (id)_copySplatValueForKey:(int64_t)key
{
  v5 = [(SUCoreDevice *)self _splatVersionKeyForQueryKey:?];
  v6 = [(SUCoreDevice *)self _splatVersionPlistContentsForKey:key];
  v7 = [v6 safeStringForKey:v5];
  v8 = [v7 copy];

  return v8;
}

- (id)_copySplatRollbackValueForKey:(int64_t)key
{
  v5 = [(SUCoreDevice *)self _splatVersionKeyForQueryKey:?];
  v6 = [(SUCoreDevice *)self _splatRollbackVersionPlistContentsForKey:key];
  v7 = [v6 safeStringForKey:v5];
  v8 = [v7 copy];

  return v8;
}

- (id)_copySplatCryptex1ValueForKey:(int64_t)key
{
  v5 = [(SUCoreDevice *)self _splatVersionKeyForQueryKey:?];
  v6 = [(SUCoreDevice *)self _splatCryptex1VersionPlistContentsForKey:key];
  v7 = [v6 safeStringForKey:v5];
  v8 = [v7 copy];

  return v8;
}

- (__CFString)_gestaltKeyForQueryKey:(int64_t)key
{
  v3 = key - 1;
  if (key - 1) < 8 && ((0xF7u >> v3))
  {
    return off_1E86FCEE8[v3];
  }

  v5 = +[SUCoreLog sharedLogger];
  oslog = [v5 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice _gestaltKeyForQueryKey:];
  }

  return 0;
}

- (id)_coreServicesKeyForQueryKey:(int64_t)key
{
  v3 = key - 1;
  if (key - 1) < 0x12 && ((0x39C03u >> v3))
  {
    return off_1E86FCF28[v3];
  }

  v5 = +[SUCoreLog sharedLogger];
  oslog = [v5 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice _coreServicesKeyForQueryKey:];
  }

  return 0;
}

- (id)_restoreVersionKeyForQueryKey:(int64_t)key
{
  v3 = key - 9;
  if (key - 9) < 0xC && ((0xC63u >> v3))
  {
    return off_1E86FCFB8[v3];
  }

  v5 = +[SUCoreLog sharedLogger];
  oslog = [v5 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice _restoreVersionKeyForQueryKey:];
  }

  return 0;
}

- (id)_factoryVersionKeyForQueryKey:(int64_t)key
{
  if ((key - 21) < 2)
  {
    return @"RestoreLongVersion";
  }

  v4 = +[SUCoreLog sharedLogger];
  oslog = [v4 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice _factoryVersionKeyForQueryKey:];
  }

  return 0;
}

- (id)_factoryVersionPlistContentsForKey:(int64_t)key
{
  if (key == 22)
  {
    preservedFactoryVersionPlistContents = [(SUCoreDevice *)self preservedFactoryVersionPlistContents];
  }

  else if (key == 21)
  {
    preservedFactoryVersionPlistContents = [(SUCoreDevice *)self factoryVersionPlistContents];
  }

  else
  {
    v4 = +[SUCoreLog sharedLogger];
    oslog = [v4 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice _factoryVersionPlistContentsForKey:];
    }

    preservedFactoryVersionPlistContents = 0;
  }

  return preservedFactoryVersionPlistContents;
}

- (id)_sysCtlKeyForQueryKey:(int64_t)key
{
  switch(key)
  {
    case 3:
      return @"hw.model";
    case 7:
      return @"hw.product";
    case 4:
      return @"hw.target";
  }

  v4 = +[SUCoreLog sharedLogger];
  oslog = [v4 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice _sysCtlKeyForQueryKey:];
  }

  return 0;
}

- (id)_splatVersionKeyForQueryKey:(int64_t)key
{
  if ((key - 23) < 0x10)
  {
    return off_1E86FD018[key - 23];
  }

  v4 = +[SUCoreLog sharedLogger];
  oslog = [v4 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice _splatVersionKeyForQueryKey:];
  }

  return 0;
}

- (id)_splatVersionPlistContentsForKey:(int64_t)key
{
  if ((key - 24) >= 4)
  {
    if (key == 23)
    {
      splatRestoreVersionPlistContents = [(SUCoreDevice *)self splatRestoreVersionPlistContents];
    }

    else
    {
      v4 = +[SUCoreLog sharedLogger];
      oslog = [v4 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        [SUCoreDevice _splatVersionPlistContentsForKey:];
      }

      splatRestoreVersionPlistContents = 0;
    }
  }

  else
  {
    splatRestoreVersionPlistContents = [(SUCoreDevice *)self splatSystemVersionPlistContents];
  }

  return splatRestoreVersionPlistContents;
}

- (id)_splatRollbackVersionPlistContentsForKey:(int64_t)key
{
  if ((key - 29) >= 4)
  {
    if (key == 28)
    {
      splatRollbackRestoreVersionPlistContents = [(SUCoreDevice *)self splatRollbackRestoreVersionPlistContents];
    }

    else
    {
      v4 = +[SUCoreLog sharedLogger];
      oslog = [v4 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        [SUCoreDevice _splatRollbackVersionPlistContentsForKey:];
      }

      splatRollbackRestoreVersionPlistContents = 0;
    }
  }

  else
  {
    splatRollbackRestoreVersionPlistContents = [(SUCoreDevice *)self splatRollbackSystemVersionPlistContents];
  }

  return splatRollbackRestoreVersionPlistContents;
}

- (id)_splatCryptex1VersionPlistContentsForKey:(int64_t)key
{
  if ((key - 34) >= 5)
  {
    if (key == 33)
    {
      splatCryptex1RestoreVersionPlistContents = [(SUCoreDevice *)self splatCryptex1RestoreVersionPlistContents];
    }

    else
    {
      v5 = +[SUCoreLog sharedLogger];
      oslog = [v5 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        [SUCoreDevice _splatCryptex1VersionPlistContentsForKey:];
      }

      splatCryptex1RestoreVersionPlistContents = 0;
    }
  }

  else
  {
    splatCryptex1RestoreVersionPlistContents = [(SUCoreDevice *)self splatCryptex1SystemVersionPlistContents];
  }

  return splatCryptex1RestoreVersionPlistContents;
}

- (id)_nameForQueryMethod:(int64_t)method
{
  if (method >= 0xE)
  {
    method = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownQueryMethod(%ld)", method];
  }

  else
  {
    method = off_1E86FD098[method];
  }

  return method;
}

- (id)_nameForQueryKey:(int64_t)key
{
  if (key >= 0x27)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownQueryKey(%ld)", key];
  }

  else
  {
    v4 = off_1E86FD108[key];
  }

  return v4;
}

- (id)description
{
  v56 = MEMORY[0x1E696AEC0];
  targetedSystemVolume = [(SUCoreDevice *)self targetedSystemVolume];
  if ([(SUCoreDevice *)self deviceSupportsMobileGestalt])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v55 = v3;
  if ([(SUCoreDevice *)self deviceSupportsCoreServices])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v54 = v4;
  if ([(SUCoreDevice *)self deviceSupportsAppleInternalVariant])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v53 = v5;
  if ([(SUCoreDevice *)self deviceSupportsRestoreVersion])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v52 = v6;
  if ([(SUCoreDevice *)self deviceSupportsSFRSystemVersion])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v51 = v7;
  if ([(SUCoreDevice *)self deviceSupportsSFRRestoreVersion])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v50 = v8;
  if ([(SUCoreDevice *)self deviceSupportsMultiVolumeBoot])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v49 = v9;
  if ([(SUCoreDevice *)self deviceSupportsSplatRestoreVersion])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v48 = v10;
  if ([(SUCoreDevice *)self deviceSupportsSplatSystemVersion])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v47 = v11;
  buildVersion = [(SUCoreDevice *)self buildVersion];
  productVersion = [(SUCoreDevice *)self productVersion];
  hwModelString = [(SUCoreDevice *)self hwModelString];
  deviceClass = [(SUCoreDevice *)self deviceClass];
  marketingProductName = [(SUCoreDevice *)self marketingProductName];
  productType = [(SUCoreDevice *)self productType];
  releaseType = [(SUCoreDevice *)self releaseType];
  deviceBoardID = [(SUCoreDevice *)self deviceBoardID];
  hwTarget = [(SUCoreDevice *)self hwTarget];
  if ([(SUCoreDevice *)self isInternal])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v46 = v12;
  if ([(SUCoreDevice *)self isBootedOSSecureInternal])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v45 = v13;
  restoreVersion = [(SUCoreDevice *)self restoreVersion];
  if ([(SUCoreDevice *)self hasEmbeddedOS])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v44 = v14;
  if ([(SUCoreDevice *)self hasBridgeOS])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v43 = v15;
  bridgeBuildVersion = [(SUCoreDevice *)self bridgeBuildVersion];
  bridgeRestoreVersion = [(SUCoreDevice *)self bridgeRestoreVersion];
  if ([(SUCoreDevice *)self isBridgeInternal])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v42 = v16;
  if ([(SUCoreDevice *)self hasSFR])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v41 = v17;
  sfrProductVersion = [(SUCoreDevice *)self sfrProductVersion];
  sfrBuildVersion = [(SUCoreDevice *)self sfrBuildVersion];
  sfrRestoreVersion = [(SUCoreDevice *)self sfrRestoreVersion];
  sfrReleaseType = [(SUCoreDevice *)self sfrReleaseType];
  if ([(SUCoreDevice *)self hasRecoveryOS])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v40 = v18;
  recoveryOSProductVersion = [(SUCoreDevice *)self recoveryOSProductVersion];
  recoveryOSBuildVersion = [(SUCoreDevice *)self recoveryOSBuildVersion];
  recoveryOSRestoreVersion = [(SUCoreDevice *)self recoveryOSRestoreVersion];
  recoveryOSReleaseType = [(SUCoreDevice *)self recoveryOSReleaseType];
  factoryRestoreVersion = [(SUCoreDevice *)self factoryRestoreVersion];
  preservedFactoryRestoreVersion = [(SUCoreDevice *)self preservedFactoryRestoreVersion];
  if ([(SUCoreDevice *)self hasSplat])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v35 = v19;
  if ([(SUCoreDevice *)self hasSplatOnlyUpdateInstalled])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v33 = v20;
  splatRestoreVersion = [(SUCoreDevice *)self splatRestoreVersion];
  splatProductVersion = [(SUCoreDevice *)self splatProductVersion];
  splatProductVersionExtra = [(SUCoreDevice *)self splatProductVersionExtra];
  splatBuildVersion = [(SUCoreDevice *)self splatBuildVersion];
  splatReleaseType = [(SUCoreDevice *)self splatReleaseType];
  if ([(SUCoreDevice *)self hasEligibleRollback])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  splatRollbackRestoreVersion = [(SUCoreDevice *)self splatRollbackRestoreVersion];
  splatRollbackProductVersion = [(SUCoreDevice *)self splatRollbackProductVersion];
  splatRollbackProductVersionExtra = [(SUCoreDevice *)self splatRollbackProductVersionExtra];
  splatRollbackBuildVersion = [(SUCoreDevice *)self splatRollbackBuildVersion];
  splatRollbackReleaseType = [(SUCoreDevice *)self splatRollbackReleaseType];
  if ([(SUCoreDevice *)self hasSemiSplatActive])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  splatCryptex1RestoreVersion = [(SUCoreDevice *)self splatCryptex1RestoreVersion];
  splatCryptex1ProductVersion = [(SUCoreDevice *)self splatCryptex1ProductVersion];
  splatCryptex1ProductVersionExtra = [(SUCoreDevice *)self splatCryptex1ProductVersionExtra];
  splatCryptex1BuildVersion = [(SUCoreDevice *)self splatCryptex1BuildVersion];
  splatCryptex1BuildVersionOverride = [(SUCoreDevice *)self splatCryptex1BuildVersionOverride];
  splatCryptex1ReleaseType = [(SUCoreDevice *)self splatCryptex1ReleaseType];
  v57 = [v56 stringWithFormat:@"\n[>>>\n               targetedSystemVolume: %@\n        deviceSupportsMobileGestalt: %@\n         deviceSupportsCoreServices: %@\n deviceSupportsAppleInternalVariant: %@\n       deviceSupportsRestoreVersion: %@\n     deviceSupportsSFRSystemVersion: %@\n    deviceSupportsSFRRestoreVersion: %@\n      deviceSupportsMultiVolumeBoot: %@\n  deviceSupportsSplatRestoreVersion: %@\n   deviceSupportsSplatSystemVersion: %@\n                       buildVersion: %@\n                     productVersion: %@\n                      hwModelString: %@\n                        deviceClass: %@\n               marketingProductName: %@\n                        productType: %@\n                        releaseType: %@\n                      deviceBoardID: %@\n                           hwTarget: %@\n                         isInternal: %@\n           isBootedOSSecureInternal: %@\n                     restoreVersion: %@\n                      hasEmbeddedOS: %@\n                        hasBridgeOS: %@\n                 bridgeBuildVersion: %@\n               bridgeRestoreVersion: %@\n                   isBridgeInternal: %@\n                             hasSFR: %@\n                  sfrProductVersion: %@\n                    sfrBuildVersion: %@\n                  sfrRestoreVersion: %@\n                     sfrReleaseType: %@\n                      hasRecoveryOS: %@\n           recoveryOSProductVersion: %@\n             recoveryOSBuildVersion: %@\n           recoveryOSRestoreVersion: %@\n              recoveryOSReleaseType: %@\n              factoryRestoreVersion: %@\n     preservedFactoryRestoreVersion: %@\n                           hasSplat: %@\n        hasSplatOnlyUpdateInstalled: %@\n                splatRestoreVersion: %@\n                splatProductVersion: %@\n           splatProductVersionExtra: %@\n                  splatBuildVersion: %@\n                   splatReleaseType: %@\n                hasEligibleRollback: %@\n        splatRollbackRestoreVersion: %@\n        splatRollbackProductVersion: %@\n   splatRollbackProductVersionExtra: %@\n          splatRollbackBuildVersion: %@\n           splatRollbackReleaseType: %@\n                 hasSemiSplatActive: %@\n        splatCryptex1RestoreVersion: %@\n        splatCryptex1ProductVersion: %@\n   splatCryptex1ProductVersionExtra: %@\n          splatCryptex1BuildVersion: %@\n  splatCryptex1BuildVersionOverride: %@\n           splatCryptex1ReleaseType: %@\n<<<]", targetedSystemVolume, v55, v54, v53, v52, v51, v50, v49, v48, v47, buildVersion, productVersion, hwModelString, deviceClass, marketingProductName, productType, releaseType, deviceBoardID, hwTarget, v46, v45, restoreVersion, v44, v43, bridgeBuildVersion, bridgeRestoreVersion, v42, v41, sfrProductVersion, sfrBuildVersion, sfrRestoreVersion, sfrReleaseType, v40, recoveryOSProductVersion, recoveryOSBuildVersion, recoveryOSRestoreVersion, recoveryOSReleaseType, factoryRestoreVersion, preservedFactoryRestoreVersion, v35, v33, splatRestoreVersion, splatProductVersion, splatProductVersionExtra, splatBuildVersion, splatReleaseType, v21, splatRollbackRestoreVersion, splatRollbackProductVersion, splatRollbackProductVersionExtra, splatRollbackBuildVersion, splatRollbackReleaseType, v23, splatCryptex1RestoreVersion, splatCryptex1ProductVersion, splatCryptex1ProductVersionExtra, splatCryptex1BuildVersion, splatCryptex1BuildVersionOverride, splatCryptex1ReleaseType];

  return v57;
}

- (id)summary
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  targetedSystemVolume = [(SUCoreDevice *)self targetedSystemVolume];
  [v3 appendFormat:@"SystemVolume(TargetedSystemVolume:%@)", targetedSystemVolume];

  deviceSupportsRestoreVersion = [(SUCoreDevice *)self deviceSupportsRestoreVersion];
  buildVersion = [(SUCoreDevice *)self buildVersion];
  productVersion = [(SUCoreDevice *)self productVersion];
  v8 = productVersion;
  if (deviceSupportsRestoreVersion)
  {
    restoreVersion = [(SUCoreDevice *)self restoreVersion];
    [v3 appendFormat:@" Build(BuildVersion:%@|ProductVersion:%@|RestoreVersion:%@)", buildVersion, v8, restoreVersion];
  }

  else
  {
    [v3 appendFormat:@" Build(BuildVersion:%@|ProductVersion:%@)", buildVersion, productVersion];
  }

  deviceClass = [(SUCoreDevice *)self deviceClass];
  marketingProductName = [(SUCoreDevice *)self marketingProductName];
  productType = [(SUCoreDevice *)self productType];
  hwModelString = [(SUCoreDevice *)self hwModelString];
  [v3 appendFormat:@" Device(DeviceClass:%@|MarketingProductName:%@|ProductType:%@|HWModelStr:%@)", deviceClass, marketingProductName, productType, hwModelString];

  releaseType = [(SUCoreDevice *)self releaseType];
  if ([(SUCoreDevice *)self isInternal])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if ([(SUCoreDevice *)self isBootedOSSecureInternal])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  [v3 appendFormat:@" ReleaseType(ReleaseType:%@|Internal:%@|BootedOSSecureInternal:%@)", releaseType, v15, v16];

  if ([(SUCoreDevice *)self hasEmbeddedOS])
  {
    bridgeBuildVersion = [(SUCoreDevice *)self bridgeBuildVersion];
    bridgeRestoreVersion = [(SUCoreDevice *)self bridgeRestoreVersion];
    if ([(SUCoreDevice *)self isBridgeInternal])
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    [v3 appendFormat:@" EmbeddedOS(Build:%@|RestoreVersion:%@|Internal:%@)", bridgeBuildVersion, bridgeRestoreVersion, v19];
  }

  if ([(SUCoreDevice *)self hasBridgeOS])
  {
    bridgeBuildVersion2 = [(SUCoreDevice *)self bridgeBuildVersion];
    bridgeRestoreVersion2 = [(SUCoreDevice *)self bridgeRestoreVersion];
    if ([(SUCoreDevice *)self isBridgeInternal])
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    [v3 appendFormat:@" BridgeOS(Build:%@|RestoreVersion:%@|Internal:%@)", bridgeBuildVersion2, bridgeRestoreVersion2, v22];
  }

  if ([(SUCoreDevice *)self hasSFR])
  {
    sfrBuildVersion = [(SUCoreDevice *)self sfrBuildVersion];
    sfrProductVersion = [(SUCoreDevice *)self sfrProductVersion];
    sfrRestoreVersion = [(SUCoreDevice *)self sfrRestoreVersion];
    sfrReleaseType = [(SUCoreDevice *)self sfrReleaseType];
    [v3 appendFormat:@" SFR(Build:%@|ProductVersion:%@|RestoreVersion:%@|ReleaseType:%@)", sfrBuildVersion, sfrProductVersion, sfrRestoreVersion, sfrReleaseType];
  }

  if ([(SUCoreDevice *)self hasRecoveryOS])
  {
    recoveryOSBuildVersion = [(SUCoreDevice *)self recoveryOSBuildVersion];
    recoveryOSProductVersion = [(SUCoreDevice *)self recoveryOSProductVersion];
    recoveryOSRestoreVersion = [(SUCoreDevice *)self recoveryOSRestoreVersion];
    recoveryOSReleaseType = [(SUCoreDevice *)self recoveryOSReleaseType];
    [v3 appendFormat:@" RecoveryOS(Build:%@|ProductVersion:%@|RestoreVersion:%@|ReleaseType:%@)", recoveryOSBuildVersion, recoveryOSProductVersion, recoveryOSRestoreVersion, recoveryOSReleaseType];
  }

  if ([(SUCoreDevice *)self deviceSupportsFactoryVersion]|| [(SUCoreDevice *)self deviceSupportsPreservedFactoryVersion])
  {
    factoryRestoreVersion = [(SUCoreDevice *)self factoryRestoreVersion];
    v32 = factoryRestoreVersion;
    if (factoryRestoreVersion)
    {
      preservedFactoryRestoreVersion = factoryRestoreVersion;
    }

    else
    {
      preservedFactoryRestoreVersion = [(SUCoreDevice *)self preservedFactoryRestoreVersion];
    }

    v34 = preservedFactoryRestoreVersion;

    preservedFactoryRestoreVersion2 = [(SUCoreDevice *)self preservedFactoryRestoreVersion];
    if (preservedFactoryRestoreVersion2)
    {
      v36 = @"YES";
    }

    else
    {
      v36 = @"NO";
    }

    [v3 appendFormat:@" FactoryVersion(Version:%@|Preserved:%@)", v34, v36];
  }

  if ([(SUCoreDevice *)self hasSplat])
  {
    splatRestoreVersion = [(SUCoreDevice *)self splatRestoreVersion];
    splatProductVersion = [(SUCoreDevice *)self splatProductVersion];
    splatProductVersionExtra = [(SUCoreDevice *)self splatProductVersionExtra];
    splatBuildVersion = [(SUCoreDevice *)self splatBuildVersion];
    splatReleaseType = [(SUCoreDevice *)self splatReleaseType];
    if ([(SUCoreDevice *)self hasSplatOnlyUpdateInstalled])
    {
      v42 = @"YES";
    }

    else
    {
      v42 = @"NO";
    }

    [v3 appendFormat:@" Splat(RestoreVersion:%@|ProductVersion:%@|ProductVersionExtra:%@|BuildVersion:%@|ReleaseType:%@|HasSplatOnlyUpdateInstalled:%@)", splatRestoreVersion, splatProductVersion, splatProductVersionExtra, splatBuildVersion, splatReleaseType, v42];

    splatRollbackRestoreVersion = [(SUCoreDevice *)self splatRollbackRestoreVersion];
    splatRollbackProductVersion = [(SUCoreDevice *)self splatRollbackProductVersion];
    splatRollbackProductVersionExtra = [(SUCoreDevice *)self splatRollbackProductVersionExtra];
    splatRollbackBuildVersion = [(SUCoreDevice *)self splatRollbackBuildVersion];
    splatRollbackReleaseType = [(SUCoreDevice *)self splatRollbackReleaseType];
    if ([(SUCoreDevice *)self hasEligibleRollback])
    {
      v48 = @"YES";
    }

    else
    {
      v48 = @"NO";
    }

    [v3 appendFormat:@" SplatRollback(RestoreVersion:%@|ProductVersion:%@|ProductVersionExtra:%@|BuildVersion:%@|ReleaseType:%@|HasEligibleRollback:%@)", splatRollbackRestoreVersion, splatRollbackProductVersion, splatRollbackProductVersionExtra, splatRollbackBuildVersion, splatRollbackReleaseType, v48];

    splatCryptex1RestoreVersion = [(SUCoreDevice *)self splatCryptex1RestoreVersion];
    splatCryptex1ProductVersion = [(SUCoreDevice *)self splatCryptex1ProductVersion];
    splatCryptex1ProductVersionExtra = [(SUCoreDevice *)self splatCryptex1ProductVersionExtra];
    splatCryptex1BuildVersion = [(SUCoreDevice *)self splatCryptex1BuildVersion];
    splatCryptex1BuildVersionOverride = [(SUCoreDevice *)self splatCryptex1BuildVersionOverride];
    splatCryptex1ReleaseType = [(SUCoreDevice *)self splatCryptex1ReleaseType];
    if ([(SUCoreDevice *)self hasSemiSplatActive])
    {
      v55 = @"YES";
    }

    else
    {
      v55 = @"NO";
    }

    [v3 appendFormat:@" SplatCryptex1(RestoreVersion:%@|ProductVersion:%@|ProductVersionExtra:%@|BuildVersion:%@|BuildVersionOverride:%@|ReleaseType:%@|HasSemiSplatActive:%@)", splatCryptex1RestoreVersion, splatCryptex1ProductVersion, splatCryptex1ProductVersionExtra, splatCryptex1BuildVersion, splatCryptex1BuildVersionOverride, splatCryptex1ReleaseType, v55];
  }

  v56 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  return v56;
}

- (void)initTargetingSystemVolume:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)adjustTargetingSystemVolume:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1E0F71000, v0, v1, "[SUCoreDevice] Unable to determine SFR restore version (sfrRestoreVersion=%{public}@, sfrRestoreBuildGroup=%{public}@)");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)adjustTargetingSystemVolume:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1E0F71000, v0, v1, "[SUCoreDevice] Unable to determine RecoveryOS restore version (recoveryOSRestoreVersion=%{public}@, recoveryOSRestoreBuildGroup=%{public}@)");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)adjustTargetingSystemVolume:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getMajorVersionFromBuildVersion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_getMajorVersionFromBuildVersion:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_copySplatCryptex1SystemVersionPath
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_copySplatCryptex1RestoreVersionPath
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_copySplatRollbackObjectsPath
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)hasEligibleRollback
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_reloadPlistContentsForKey:.cold.1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  v2 = [v1 _nameForQueryKey:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_queryMethodForKey:.cold.1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  v2 = [v1 _nameForQueryKey:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_copySysCtlValueForKey:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  v5 = *a2;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x26u);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_copySysCtlValueForKey:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  v5 = *a2;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x26u);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_gestaltKeyForQueryKey:.cold.1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  v2 = [v1 _nameForQueryKey:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_coreServicesKeyForQueryKey:.cold.1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  v2 = [v1 _nameForQueryKey:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_restoreVersionKeyForQueryKey:.cold.1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  v2 = [v1 _nameForQueryKey:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_factoryVersionKeyForQueryKey:.cold.1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  v2 = [v1 _nameForQueryKey:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_factoryVersionPlistContentsForKey:.cold.1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  v2 = [v1 _nameForQueryKey:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_sysCtlKeyForQueryKey:.cold.1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  v2 = [v1 _nameForQueryKey:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_splatVersionKeyForQueryKey:.cold.1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  v2 = [v1 _nameForQueryKey:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_splatVersionPlistContentsForKey:.cold.1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  v2 = [v1 _nameForQueryKey:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_splatRollbackVersionPlistContentsForKey:.cold.1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  v2 = [v1 _nameForQueryKey:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_splatCryptex1VersionPlistContentsForKey:.cold.1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  v2 = [v1 _nameForQueryKey:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

@end