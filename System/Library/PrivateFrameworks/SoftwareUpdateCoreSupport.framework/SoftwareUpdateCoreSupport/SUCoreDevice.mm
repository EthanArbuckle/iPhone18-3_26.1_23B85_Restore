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
- (BOOL)isCorrectlyFormattedBuildVersion:(id)a3;
- (BOOL)isCorrectlyFormattedProductVersion:(id)a3;
- (BOOL)isMajorOSUpdate:(id)a3;
- (BOOL)isMinorOSUpdate:(id)a3;
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
- (__CFString)_gestaltKeyForQueryKey:(int64_t)a3;
- (id)_copyCoreServicesAppleInternalValue;
- (id)_copyCoreServicesValueForKey:(int64_t)a3;
- (id)_copyFactoryVersionValueForKey:(int64_t)a3;
- (id)_copyGestaltValueForKey:(int64_t)a3;
- (id)_copyRecoveryOSRestoreVersionValueForKey:(int64_t)a3;
- (id)_copyRecoveryOSSystemVersionValueForKey:(int64_t)a3;
- (id)_copyRestoreVersionValueForKey:(int64_t)a3;
- (id)_copySFRRestoreVersionValueForKey:(int64_t)a3;
- (id)_copySFRSystemVersionValueForKey:(int64_t)a3;
- (id)_copySplatCryptex1RestoreVersionPath;
- (id)_copySplatCryptex1SystemVersionPath;
- (id)_copySplatCryptex1ValueForKey:(int64_t)a3;
- (id)_copySplatRollbackObjectsPath;
- (id)_copySplatRollbackRestoreVersionPath;
- (id)_copySplatRollbackSystemVersionPath;
- (id)_copySplatRollbackValueForKey:(int64_t)a3;
- (id)_copySplatValueForKey:(int64_t)a3;
- (id)_copyStringValueForKey:(int64_t)a3;
- (id)_copySysCtlValueForKey:(int64_t)a3;
- (id)_coreServicesKeyForQueryKey:(int64_t)a3;
- (id)_factoryVersionKeyForQueryKey:(int64_t)a3;
- (id)_factoryVersionPlistContentsForKey:(int64_t)a3;
- (id)_getMajorVersionFromBuildVersion:(id)a3;
- (id)_nameForQueryKey:(int64_t)a3;
- (id)_nameForQueryMethod:(int64_t)a3;
- (id)_restoreVersionKeyForQueryKey:(int64_t)a3;
- (id)_splatCryptex1VersionPlistContentsForKey:(int64_t)a3;
- (id)_splatRollbackVersionPlistContentsForKey:(int64_t)a3;
- (id)_splatVersionKeyForQueryKey:(int64_t)a3;
- (id)_splatVersionPlistContentsForKey:(int64_t)a3;
- (id)_sysCtlKeyForQueryKey:(int64_t)a3;
- (id)description;
- (id)getSystemRecoveryNSIHDirectory;
- (id)initTargetingSystemVolume:(id)a3;
- (id)summary;
- (int64_t)_queryMethodForKey:(int64_t)a3;
- (void)_copySplatCryptex1RestoreVersionPath;
- (void)_copySplatCryptex1SystemVersionPath;
- (void)_copySplatRollbackObjectsPath;
- (void)_initializeBridgeOSProperties;
- (void)_parseBridgeOSBuildInformationFromDevice:(id)a3;
- (void)_reloadPlistContentsForKey:(int64_t)a3;
- (void)adjustTargetingSystemVolume:(id)a3;
- (void)hasEligibleRollback;
- (void)reloadDevice;
@end

@implementation SUCoreDevice

- (BOOL)hasEligibleRollback
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [(SUCoreDevice *)self _copySplatRollbackObjectsPath];
  if (v2)
  {
    v13 = 0;
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [v3 fileExistsAtPath:v2 isDirectory:&v13];
    LODWORD(v5) = (v4 & v13);

    v6 = +[SUCoreLog sharedLogger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v5)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      *buf = 138543874;
      v15 = v2;
      v16 = 2114;
      if (v13)
      {
        v8 = @"YES";
      }

      v17 = v9;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_1E0F71000, v7, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Checking if rollback objects are present in preboot at path: %{public}@, exists: %{public}@, isDir: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v10 = +[SUCoreLog sharedLogger];
    v5 = [v10 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice hasEligibleRollback];
    }

    LOBYTE(v5) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
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

  v3 = [(SUCoreDevice *)self splatRestoreVersion];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [(SUCoreDevice *)self splatCryptex1RestoreVersion];
  if (!v5)
  {

LABEL_9:
    v21 = [(SUCoreDevice *)self splatRestoreVersion];
    if (!v21 || (v22 = v21, [(SUCoreDevice *)self splatCryptex1RestoreVersion], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, !v23))
    {
      v25 = objc_alloc(MEMORY[0x1E696AEC0]);
      v14 = [(SUCoreDevice *)self splatRestoreVersion];
      v15 = [(SUCoreDevice *)self splatCryptex1RestoreVersion];
      v19 = [v25 initWithFormat:@"One of Splat RestoreVersion (%@) or Cryptex1 RestoreVersion (%@) are not present", v14, v15];
      goto LABEL_13;
    }

    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [(SUCoreDevice *)self splatRestoreVersion];
    v15 = [(SUCoreDevice *)self splatCryptex1RestoreVersion];
    v19 = [v24 initWithFormat:@"Splat RestoreVersion (%@) and Cryptex1 RestoreVersion (%@) are not equal", v14, v15];
LABEL_15:
    v20 = 1;
    goto LABEL_16;
  }

  v6 = v5;
  v7 = [(SUCoreDevice *)self splatRestoreVersion];
  v8 = [(SUCoreDevice *)self splatCryptex1RestoreVersion];
  v9 = [SUCore stringIsEqual:v7 to:v8];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [(SUCoreDevice *)self splatProductVersionExtra];
  v11 = [(SUCoreDevice *)self splatCryptex1ProductVersionExtra];
  v12 = [SUCore stringIsEqual:v10 to:v11];

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [(SUCoreDevice *)self splatRestoreVersion];
  v15 = [(SUCoreDevice *)self splatProductVersionExtra];
  v16 = [(SUCoreDevice *)self splatCryptex1RestoreVersion];
  v17 = [(SUCoreDevice *)self splatCryptex1ProductVersionExtra];
  v18 = v17;
  if (!v12)
  {
    v19 = [v13 initWithFormat:@"Splat ProductVersionExtra (%@; %@) and Cryptex1 ProductVersionExtra (%@; %@) are not equal", v14, v15, v16, v17];

    goto LABEL_15;
  }

  v19 = [v13 initWithFormat:@"Splat RestoreVersion (%@; %@) and Cryptex1 RestoreVersion (%@; %@) are equal", v14, v15, v16, v17];

LABEL_13:
  v20 = 0;
LABEL_16:

LABEL_17:
  v26 = +[SUCoreLog sharedLogger];
  v27 = [v26 oslog];

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_1E0F71000, v27, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Semi-splat active: %{public}@ (%{public}@)", buf, 0x16u);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v20;
}

- (NSString)splatRestoreVersion
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:23];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:23];
  splatRestoreVersion = v2->_splatRestoreVersion;
  v2->_splatRestoreVersion = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatRestoreVersion;

  return v5;
}

- (NSDictionary)splatCryptex1SystemVersionPlistContents
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [(SUCoreDevice *)v2 splatCryptex1SystemVersionPlistPath];
  v5 = [v3 initWithContentsOfFile:v4];
  splatCryptex1SystemVersionPlistContents = v2->_splatCryptex1SystemVersionPlistContents;
  v2->_splatCryptex1SystemVersionPlistContents = v5;

  objc_sync_exit(v2);
  v7 = v2->_splatCryptex1SystemVersionPlistContents;

  return v7;
}

- (NSString)splatCryptex1BuildVersion
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:36];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:36];
  splatCryptex1BuildVersion = v2->_splatCryptex1BuildVersion;
  v2->_splatCryptex1BuildVersion = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatCryptex1BuildVersion;

  return v5;
}

- (NSString)splatCryptex1RestoreVersion
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:33];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:33];
  splatCryptex1RestoreVersion = v2->_splatCryptex1RestoreVersion;
  v2->_splatCryptex1RestoreVersion = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatCryptex1RestoreVersion;

  return v5;
}

- (NSString)splatCryptex1ProductVersion
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:34];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:34];
  splatCryptex1ProductVersion = v2->_splatCryptex1ProductVersion;
  v2->_splatCryptex1ProductVersion = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatCryptex1ProductVersion;

  return v5;
}

- (NSString)splatProductVersionExtra
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:27];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:27];
  splatProductVersionExtra = v2->_splatProductVersionExtra;
  v2->_splatProductVersionExtra = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatProductVersionExtra;

  return v5;
}

- (NSString)splatCryptex1ProductVersionExtra
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:35];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:35];
  splatCryptex1ProductVersionExtra = v2->_splatCryptex1ProductVersionExtra;
  v2->_splatCryptex1ProductVersionExtra = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatCryptex1ProductVersionExtra;

  return v5;
}

- (NSDictionary)splatCryptex1RestoreVersionPlistContents
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [(SUCoreDevice *)v2 splatCryptex1RestoreVersionPlistPath];
  v5 = [v3 initWithContentsOfFile:v4];
  splatCryptex1RestoreVersionPlistContents = v2->_splatCryptex1RestoreVersionPlistContents;
  v2->_splatCryptex1RestoreVersionPlistContents = v5;

  objc_sync_exit(v2);
  v7 = v2->_splatCryptex1RestoreVersionPlistContents;

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
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:38];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:38];
  splatCryptex1ReleaseType = v2->_splatCryptex1ReleaseType;
  v2->_splatCryptex1ReleaseType = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatCryptex1ReleaseType;

  return v5;
}

- (BOOL)_hasSplatOnlyUpdateInstalled
{
  v3 = [(SUCoreDevice *)self splatProductVersionExtra];

  if (v3)
  {
    return 1;
  }

  v5 = [SUCoreRestoreVersion alloc];
  v6 = [(SUCoreDevice *)self restoreVersion];
  v7 = [(SUCoreRestoreVersion *)v5 initWithRestoreVersion:v6];

  v8 = [SUCoreRestoreVersion alloc];
  v9 = [(SUCoreDevice *)self splatRestoreVersion];
  v10 = [(SUCoreRestoreVersion *)v8 initWithRestoreVersion:v9];

  v4 = [(SUCoreRestoreVersion *)v7 isComparable:v10]&& [(SUCoreRestoreVersion *)v7 compare:v10]== -1;
  return v4;
}

uint64_t __28__SUCoreDevice_sharedDevice__block_invoke()
{
  sharedDevice___sharedDevice = [[SUCoreDevice alloc] initTargetingSystemVolume:@"/"];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initTargetingSystemVolume:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SUCoreDevice;
  v5 = [(SUCoreDevice *)&v11 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v4)
  {
    [(SUCoreDevice *)v5 adjustTargetingSystemVolume:v4];
LABEL_4:
    v7 = v6;
    goto LABEL_8;
  }

  v8 = +[SUCoreLog sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice initTargetingSystemVolume:];
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)adjustTargetingSystemVolume:(id)a3
{
  v175 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [(SUCoreDevice *)self setTargetedSystemVolume:v4];
    v5 = [v4 stringByAppendingPathComponent:@"/System/Library/CoreServices/"];
    v6 = [v5 stringByAppendingPathComponent:@"SystemVersion.plist"];
    [(SUCoreDevice *)self setSystemVersionPlistPath:v6];

    v7 = [v4 stringByAppendingPathComponent:@"/System/Library/CoreServices/"];
    v8 = [v7 stringByAppendingPathComponent:@"RestoreVersion.plist"];
    [(SUCoreDevice *)self setRestoreVersionPlistPath:v8];

    v9 = [v4 stringByAppendingPathComponent:@"/System/Library/CoreServices/"];
    v10 = [v9 stringByAppendingPathComponent:@"AppleInternalVariant.plist"];
    [(SUCoreDevice *)self setAppleInternalVariantPlistPath:v10];

    v11 = [@"/System/Volumes/iSCPreboot/SFR/current/" stringByAppendingPathComponent:@"SystemVersion.plist"];
    [(SUCoreDevice *)self setSfrSystemVersionPlistPath:v11];

    v12 = [@"/System/Volumes/iSCPreboot/SFR/current/" stringByAppendingPathComponent:@"RestoreVersion.plist"];
    [(SUCoreDevice *)self setSfrRestoreVersionPlistPath:v12];

    v13 = [(SUCoreDevice *)self getSystemRecoveryNSIHDirectory];
    v14 = v13;
    v15 = @"/System/Volumes/iSCPreboot/SystemRecovery/current/";
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;

    v17 = [v16 stringByAppendingPathComponent:@"SystemVersion.plist"];
    [(SUCoreDevice *)self setRecoveryOSSystemVersionPlistPath:v17];

    v18 = [v16 stringByAppendingPathComponent:@"RestoreVersion.plist"];
    [(SUCoreDevice *)self setRecoveryOSRestoreVersionPlistPath:v18];

    v19 = [@"/System/Volumes/Hardware/" stringByAppendingPathComponent:@"FactoryVersion.plist"];
    [(SUCoreDevice *)self setFactoryVersionPlistPath:v19];

    v20 = [@"/System/Volumes/Hardware/" stringByAppendingPathComponent:@"PreservedFactoryVersion.plist"];
    [(SUCoreDevice *)self setPreservedFactoryVersionPlistPath:v20];

    v21 = [v4 stringByAppendingPathComponent:@"/System/Cryptexes/OS/System/Library/CoreServices/"];
    v22 = [v21 stringByAppendingPathComponent:@"RestoreVersion.plist"];
    [(SUCoreDevice *)self setSplatRestoreVersionPlistPath:v22];

    v23 = [v4 stringByAppendingPathComponent:@"/System/Cryptexes/OS/System/Library/CoreServices/"];
    v24 = [v23 stringByAppendingPathComponent:@"SystemVersion.plist"];
    [(SUCoreDevice *)self setSplatSystemVersionPlistPath:v24];

    v25 = [(SUCoreDevice *)self _copySplatRollbackRestoreVersionPath];
    [(SUCoreDevice *)self setSplatRollbackRestoreVersionPlistPath:v25];

    v26 = [(SUCoreDevice *)self _copySplatRollbackSystemVersionPath];
    [(SUCoreDevice *)self setSplatRollbackSystemVersionPlistPath:v26];

    v27 = [(SUCoreDevice *)self _copySplatCryptex1RestoreVersionPath];
    [(SUCoreDevice *)self setSplatCryptex1RestoreVersionPlistPath:v27];

    v28 = [(SUCoreDevice *)self _copySplatCryptex1SystemVersionPath];
    [(SUCoreDevice *)self setSplatCryptex1SystemVersionPlistPath:v28];

    v29 = +[SUCoreLog sharedLogger];
    v30 = [v29 oslog];

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(SUCoreDevice *)self systemVersionPlistPath];
      *buf = 138543362;
      v174 = v31;
      _os_log_impl(&dword_1E0F71000, v30, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using systemVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v32 = +[SUCoreLog sharedLogger];
    v33 = [v32 oslog];

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [(SUCoreDevice *)self restoreVersionPlistPath];
      *buf = 138543362;
      v174 = v34;
      _os_log_impl(&dword_1E0F71000, v33, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using restoreVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v35 = +[SUCoreLog sharedLogger];
    v36 = [v35 oslog];

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [(SUCoreDevice *)self appleInternalVariantPlistPath];
      *buf = 138543362;
      v174 = v37;
      _os_log_impl(&dword_1E0F71000, v36, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using appleInternalVariantPlistPath: %{public}@", buf, 0xCu);
    }

    v38 = +[SUCoreLog sharedLogger];
    v39 = [v38 oslog];

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [(SUCoreDevice *)self sfrSystemVersionPlistPath];
      *buf = 138543362;
      v174 = v40;
      _os_log_impl(&dword_1E0F71000, v39, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using sfrSystemVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v41 = +[SUCoreLog sharedLogger];
    v42 = [v41 oslog];

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [(SUCoreDevice *)self sfrRestoreVersionPlistPath];
      *buf = 138543362;
      v174 = v43;
      _os_log_impl(&dword_1E0F71000, v42, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using sfrRestoreVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v44 = +[SUCoreLog sharedLogger];
    v45 = [v44 oslog];

    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [(SUCoreDevice *)self recoveryOSSystemVersionPlistPath];
      *buf = 138543362;
      v174 = v46;
      _os_log_impl(&dword_1E0F71000, v45, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using recoveryOSSystemVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v47 = +[SUCoreLog sharedLogger];
    v48 = [v47 oslog];

    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = [(SUCoreDevice *)self recoveryOSRestoreVersionPlistPath];
      *buf = 138543362;
      v174 = v49;
      _os_log_impl(&dword_1E0F71000, v48, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using recoveryOSRestoreVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v50 = +[SUCoreLog sharedLogger];
    v51 = [v50 oslog];

    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [(SUCoreDevice *)self factoryVersionPlistPath];
      *buf = 138543362;
      v174 = v52;
      _os_log_impl(&dword_1E0F71000, v51, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using factoryVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v53 = +[SUCoreLog sharedLogger];
    v54 = [v53 oslog];

    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = [(SUCoreDevice *)self preservedFactoryVersionPlistPath];
      *buf = 138543362;
      v174 = v55;
      _os_log_impl(&dword_1E0F71000, v54, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using preservedFactoryVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v56 = +[SUCoreLog sharedLogger];
    v57 = [v56 oslog];

    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = [(SUCoreDevice *)self splatRestoreVersionPlistPath];
      *buf = 138543362;
      v174 = v58;
      _os_log_impl(&dword_1E0F71000, v57, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using splatRestoreVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v59 = +[SUCoreLog sharedLogger];
    v60 = [v59 oslog];

    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = [(SUCoreDevice *)self splatSystemVersionPlistPath];
      *buf = 138543362;
      v174 = v61;
      _os_log_impl(&dword_1E0F71000, v60, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using splatSystemVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v62 = +[SUCoreLog sharedLogger];
    v63 = [v62 oslog];

    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = [(SUCoreDevice *)self splatRollbackRestoreVersionPlistPath];
      *buf = 138543362;
      v174 = v64;
      _os_log_impl(&dword_1E0F71000, v63, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using splatRollbackRestoreVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v65 = +[SUCoreLog sharedLogger];
    v66 = [v65 oslog];

    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = [(SUCoreDevice *)self splatRollbackSystemVersionPlistPath];
      *buf = 138543362;
      v174 = v67;
      _os_log_impl(&dword_1E0F71000, v66, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using splatRollbackSystemVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v68 = +[SUCoreLog sharedLogger];
    v69 = [v68 oslog];

    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = [(SUCoreDevice *)self splatCryptex1RestoreVersionPlistPath];
      *buf = 138543362;
      v174 = v70;
      _os_log_impl(&dword_1E0F71000, v69, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using splatCryptex1RestoreVersionPlistPath: %{public}@", buf, 0xCu);
    }

    v71 = +[SUCoreLog sharedLogger];
    v72 = [v71 oslog];

    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = [(SUCoreDevice *)self splatCryptex1SystemVersionPlistPath];
      *buf = 138543362;
      v174 = v73;
      _os_log_impl(&dword_1E0F71000, v72, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Using splatCryptex1SystemVersionPlistPath: %{public}@", buf, 0xCu);
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
      v75 = [(SUCoreDevice *)self systemVersionPlistPath];
      v76 = [v74 initWithContentsOfFile:v75];
      [(SUCoreDevice *)self setSystemVersionPlistContents:v76];
    }

    [(SUCoreDevice *)self setRestoreVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsRestoreVersion])
    {
      v77 = objc_alloc(MEMORY[0x1E695DF20]);
      v78 = [(SUCoreDevice *)self restoreVersionPlistPath];
      v79 = [v77 initWithContentsOfFile:v78];
      [(SUCoreDevice *)self setRestoreVersionPlistContents:v79];
    }

    [(SUCoreDevice *)self setSfrSystemVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSFRSystemVersion])
    {
      v80 = objc_alloc(MEMORY[0x1E695DF20]);
      v81 = [(SUCoreDevice *)self sfrSystemVersionPlistPath];
      v82 = [v80 initWithContentsOfFile:v81];
      [(SUCoreDevice *)self setSfrSystemVersionPlistContents:v82];
    }

    [(SUCoreDevice *)self setSfrRestoreVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSFRRestoreVersion])
    {
      v83 = objc_alloc(MEMORY[0x1E695DF20]);
      v84 = [(SUCoreDevice *)self sfrRestoreVersionPlistPath];
      v85 = [v83 initWithContentsOfFile:v84];
      [(SUCoreDevice *)self setSfrRestoreVersionPlistContents:v85];
    }

    [(SUCoreDevice *)self setRecoveryOSSystemVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsRecoveryOSRestoreVersion])
    {
      v86 = objc_alloc(MEMORY[0x1E695DF20]);
      v87 = [(SUCoreDevice *)self recoveryOSSystemVersionPlistPath];
      v88 = [v86 initWithContentsOfFile:v87];
      [(SUCoreDevice *)self setRecoveryOSSystemVersionPlistContents:v88];
    }

    [(SUCoreDevice *)self setRecoveryOSRestoreVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsRecoveryOSRestoreVersion])
    {
      v89 = objc_alloc(MEMORY[0x1E695DF20]);
      v90 = [(SUCoreDevice *)self recoveryOSRestoreVersionPlistPath];
      v91 = [v89 initWithContentsOfFile:v90];
      [(SUCoreDevice *)self setRecoveryOSRestoreVersionPlistContents:v91];
    }

    [(SUCoreDevice *)self setFactoryVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsFactoryVersion])
    {
      v92 = objc_alloc(MEMORY[0x1E695DF20]);
      v93 = [(SUCoreDevice *)self factoryVersionPlistPath];
      v94 = [v92 initWithContentsOfFile:v93];
      [(SUCoreDevice *)self setFactoryVersionPlistContents:v94];
    }

    [(SUCoreDevice *)self setPreservedFactoryVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsPreservedFactoryVersion])
    {
      v95 = objc_alloc(MEMORY[0x1E695DF20]);
      v96 = [(SUCoreDevice *)self preservedFactoryVersionPlistPath];
      v97 = [v95 initWithContentsOfFile:v96];
      [(SUCoreDevice *)self setPreservedFactoryVersionPlistContents:v97];
    }

    [(SUCoreDevice *)self setAppleInternalVariantPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsCoreServices])
    {
      v98 = objc_alloc(MEMORY[0x1E695DF20]);
      v99 = [(SUCoreDevice *)self appleInternalVariantPlistPath];
      v100 = [v98 initWithContentsOfFile:v99];
      [(SUCoreDevice *)self setAppleInternalVariantPlistContents:v100];
    }

    [(SUCoreDevice *)self setSplatRestoreVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSplatRestoreVersion])
    {
      v101 = objc_alloc(MEMORY[0x1E695DF20]);
      v102 = [(SUCoreDevice *)self splatRestoreVersionPlistPath];
      v103 = [v101 initWithContentsOfFile:v102];
      [(SUCoreDevice *)self setSplatRestoreVersionPlistContents:v103];
    }

    [(SUCoreDevice *)self setSplatSystemVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSplatSystemVersion])
    {
      v104 = objc_alloc(MEMORY[0x1E695DF20]);
      v105 = [(SUCoreDevice *)self splatSystemVersionPlistPath];
      v106 = [v104 initWithContentsOfFile:v105];
      [(SUCoreDevice *)self setSplatSystemVersionPlistContents:v106];
    }

    [(SUCoreDevice *)self setSplatRollbackRestoreVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSplatRollbackRestoreVersion])
    {
      v107 = objc_alloc(MEMORY[0x1E695DF20]);
      v108 = [(SUCoreDevice *)self splatRollbackRestoreVersionPlistPath];
      v109 = [v107 initWithContentsOfFile:v108];
      [(SUCoreDevice *)self setSplatRollbackRestoreVersionPlistContents:v109];
    }

    [(SUCoreDevice *)self setSplatRollbackSystemVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSplatRollbackSystemVersion])
    {
      v110 = objc_alloc(MEMORY[0x1E695DF20]);
      v111 = [(SUCoreDevice *)self splatRollbackSystemVersionPlistPath];
      v112 = [v110 initWithContentsOfFile:v111];
      [(SUCoreDevice *)self setSplatRollbackSystemVersionPlistContents:v112];
    }

    [(SUCoreDevice *)self setSplatCryptex1RestoreVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSplatCryptex1RestoreVersion])
    {
      v113 = objc_alloc(MEMORY[0x1E695DF20]);
      v114 = [(SUCoreDevice *)self splatCryptex1RestoreVersionPlistPath];
      v115 = [v113 initWithContentsOfFile:v114];
      [(SUCoreDevice *)self setSplatCryptex1RestoreVersionPlistContents:v115];
    }

    [(SUCoreDevice *)self setSplatCryptex1SystemVersionPlistContents:0];
    if ([(SUCoreDevice *)self deviceSupportsSplatCryptex1SystemVersion])
    {
      v116 = objc_alloc(MEMORY[0x1E695DF20]);
      v117 = [(SUCoreDevice *)self splatCryptex1SystemVersionPlistPath];
      v118 = [v116 initWithContentsOfFile:v117];
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

    v126 = [(SUCoreDevice *)self _copyDeviceBoardID];
    [(SUCoreDevice *)self setDeviceBoardID:v126];

    v127 = [(SUCoreDevice *)self _copyStringValueForKey:4];
    [(SUCoreDevice *)self setHwTarget:v127];

    [(SUCoreDevice *)self setRestoreVersion:0];
    if ([(SUCoreDevice *)self deviceSupportsRestoreVersion])
    {
      v128 = [(SUCoreDevice *)self _copyStringValueForKey:9];
      v129 = [(SUCoreDevice *)self _copyStringValueForKey:10];
      v130 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v128, v129];
      [(SUCoreDevice *)self setRestoreVersion:v130];
    }

    v131 = [(SUCoreDevice *)self releaseType];
    -[SUCoreDevice setIsInternal:](self, "setIsInternal:", [v131 isEqualToString:@"Internal"]);

    v132 = +[SUCore sharedCore];
    v133 = [v132 commonDomain];
    [v133 UTF8String];
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
        v137 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v134, v135];
        [(SUCoreDevice *)self setSfrRestoreVersion:v137];
      }

      else
      {
        v139 = +[SUCoreLog sharedLogger];
        v137 = [v139 oslog];

        if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
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
        v146 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v143, v144];
        [(SUCoreDevice *)self setRecoveryOSRestoreVersion:v146];
      }

      else
      {
        v147 = +[SUCoreLog sharedLogger];
        v146 = [v147 oslog];

        if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
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
    v170 = [v169 oslog];

    if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
    {
      v171 = [(SUCoreDevice *)self description];
      *buf = 138543362;
      v174 = v171;
      _os_log_impl(&dword_1E0F71000, v170, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Initialized new device: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v138 = +[SUCoreLog sharedLogger];
    v16 = [v138 oslog];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice adjustTargetingSystemVolume:];
    }
  }

  v172 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)splatRollbackRestoreVersionPlistContents
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [(SUCoreDevice *)v2 splatRollbackRestoreVersionPlistPath];
  v5 = [v3 initWithContentsOfFile:v4];
  splatRollbackRestoreVersionPlistContents = v2->_splatRollbackRestoreVersionPlistContents;
  v2->_splatRollbackRestoreVersionPlistContents = v5;

  objc_sync_exit(v2);
  v7 = v2->_splatRollbackRestoreVersionPlistContents;

  return v7;
}

- (NSDictionary)splatRollbackSystemVersionPlistContents
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [(SUCoreDevice *)v2 splatRollbackSystemVersionPlistPath];
  v5 = [v3 initWithContentsOfFile:v4];
  splatRollbackSystemVersionPlistContents = v2->_splatRollbackSystemVersionPlistContents;
  v2->_splatRollbackSystemVersionPlistContents = v5;

  objc_sync_exit(v2);
  v7 = v2->_splatRollbackSystemVersionPlistContents;

  return v7;
}

- (NSString)splatProductVersion
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:24];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:24];
  splatProductVersion = v2->_splatProductVersion;
  v2->_splatProductVersion = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatProductVersion;

  return v5;
}

- (NSString)splatBuildVersion
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:25];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:25];
  splatBuildVersion = v2->_splatBuildVersion;
  v2->_splatBuildVersion = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatBuildVersion;

  return v5;
}

- (NSString)splatReleaseType
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:26];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:26];
  splatReleaseType = v2->_splatReleaseType;
  v2->_splatReleaseType = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatReleaseType;

  return v5;
}

- (void)reloadDevice
{
  v3 = [(SUCoreDevice *)self targetedSystemVolume];
  [(SUCoreDevice *)self adjustTargetingSystemVolume:v3];
}

- (BOOL)isCorrectlyFormattedBuildVersion:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = MEMORY[0x1E696AE70];
  v4 = a3;
  v5 = [v3 regularExpressionWithPattern:@"^([0-9]+)[a-zA-Z]([0-9]+)[a-z]?$" options:0 error:0];
  v6 = [v5 firstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];

  v7 = v6 != 0;
  return v7;
}

- (BOOL)isCorrectlyFormattedProductVersion:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = MEMORY[0x1E696AE70];
  v4 = a3;
  v5 = [v3 regularExpressionWithPattern:@"^([0-9]+).([0-9]+)(.[0-9]+)?$" options:0 error:0];
  v6 = [v5 firstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];

  v7 = v6 != 0;
  return v7;
}

- (BOOL)isMinorOSUpdate:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SUCoreDevice *)self buildVersion];
  v6 = [(SUCoreDevice *)self _getMajorVersionFromBuildVersion:v5];

  v7 = [(SUCoreDevice *)self _getMajorVersionFromBuildVersion:v4];

  v8 = +[SUCoreLog sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 intValue];
    v11 = [v7 intValue];
    v12 = [v6 intValue];
    v13 = [v7 intValue];
    v14 = @"NO";
    v19[0] = 67109634;
    v19[1] = v10;
    if (v12 == v13)
    {
      v14 = @"YES";
    }

    v20 = 1024;
    v21 = v11;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&dword_1E0F71000, v9, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Build version comparison found current version %d, build version %d, isMinorOSUpdate: %{public}@", v19, 0x18u);
  }

  v15 = 0;
  if (v6 && v7)
  {
    v16 = [v6 intValue];
    v15 = v16 == [v7 intValue];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)isMajorOSUpdate:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SUCoreDevice *)self buildVersion];
  v6 = [(SUCoreDevice *)self _getMajorVersionFromBuildVersion:v5];

  v7 = [(SUCoreDevice *)self _getMajorVersionFromBuildVersion:v4];

  v8 = +[SUCoreLog sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 intValue];
    v11 = [v7 intValue];
    v12 = [v6 intValue];
    v13 = [v7 intValue];
    v14 = @"NO";
    v19[0] = 67109634;
    v19[1] = v10;
    if (v12 < v13)
    {
      v14 = @"YES";
    }

    v20 = 1024;
    v21 = v11;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&dword_1E0F71000, v9, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] Build version comparison found current version %d, build version %d, isMajorOSUpdate: %{public}@", v19, 0x18u);
  }

  v15 = 0;
  if (v6 && v7)
  {
    v16 = [v6 intValue];
    v15 = v16 < [v7 intValue];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)_getMajorVersionFromBuildVersion:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^([0-9]+).*" options:0 error:0];
    v5 = -[NSObject firstMatchInString:options:range:](v4, "firstMatchInString:options:range:", v3, 0, 0, [v3 length]);
    v6 = v5;
    if (v5 && [v5 numberOfRanges])
    {
      v7 = [v6 rangeAtIndex:1];
      v9 = [v3 substringWithRange:{v7, v8}];
    }

    else
    {
      v10 = +[SUCoreLog sharedLogger];
      v11 = [v10 oslog];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SUCoreDevice _getMajorVersionFromBuildVersion:];
      }

      v9 = 0;
    }
  }

  else
  {
    v12 = +[SUCoreLog sharedLogger];
    v4 = [v12 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice _getMajorVersionFromBuildVersion:];
    }

    v9 = 0;
  }

  return v9;
}

- (id)_copySplatCryptex1SystemVersionPath
{
  v2 = [MEMORY[0x1E69AD998] sharedDataAccessor];
  v9 = 0;
  v3 = [v2 copyPathForPersistentData:115 error:&v9];
  v4 = v9;

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[SUCoreLog sharedLogger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice _copySplatCryptex1SystemVersionPath];
    }
  }

  return v3;
}

- (id)_copySplatCryptex1RestoreVersionPath
{
  v2 = [MEMORY[0x1E69AD998] sharedDataAccessor];
  v9 = 0;
  v3 = [v2 copyPathForPersistentData:116 error:&v9];
  v4 = v9;

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[SUCoreLog sharedLogger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice _copySplatCryptex1RestoreVersionPath];
    }
  }

  return v3;
}

- (id)_copySplatRollbackObjectsPath
{
  v2 = [MEMORY[0x1E69AD998] sharedDataAccessor];
  v9 = 0;
  v3 = [v2 copyPathForPersistentData:112 error:&v9];
  v4 = v9;

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[SUCoreLog sharedLogger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice _copySplatRollbackObjectsPath];
    }
  }

  return v3;
}

- (id)_copySplatRollbackSystemVersionPath
{
  v2 = [(SUCoreDevice *)self _copySplatRollbackObjectsPath];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringByAppendingPathComponent:@"SystemVersion.plist"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_copySplatRollbackRestoreVersionPath
{
  v2 = [(SUCoreDevice *)self _copySplatRollbackObjectsPath];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", v2, @"RestoreVersion.plist"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)splatRollbackRestoreVersion
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:28];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:28];
  splatRollbackRestoreVersion = v2->_splatRollbackRestoreVersion;
  v2->_splatRollbackRestoreVersion = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatRollbackRestoreVersion;

  return v5;
}

- (NSString)splatRollbackProductVersion
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:29];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:29];
  splatRollbackProductVersion = v2->_splatRollbackProductVersion;
  v2->_splatRollbackProductVersion = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatRollbackProductVersion;

  return v5;
}

- (NSString)splatRollbackProductVersionExtra
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:30];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:30];
  splatRollbackProductVersionExtra = v2->_splatRollbackProductVersionExtra;
  v2->_splatRollbackProductVersionExtra = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatRollbackProductVersionExtra;

  return v5;
}

- (NSString)splatRollbackBuildVersion
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:31];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:31];
  splatRollbackBuildVersion = v2->_splatRollbackBuildVersion;
  v2->_splatRollbackBuildVersion = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatRollbackBuildVersion;

  return v5;
}

- (NSString)splatRollbackReleaseType
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:32];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:32];
  splatRollbackReleaseType = v2->_splatRollbackReleaseType;
  v2->_splatRollbackReleaseType = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatRollbackReleaseType;

  return v5;
}

- (NSString)splatCryptex1BuildVersionOverride
{
  v2 = self;
  objc_sync_enter(v2);
  [(SUCoreDevice *)v2 _reloadPlistContentsForKey:37];
  v3 = [(SUCoreDevice *)v2 _copyStringValueForKey:37];
  splatCryptex1BuildVersionOverride = v2->_splatCryptex1BuildVersionOverride;
  v2->_splatCryptex1BuildVersionOverride = v3;

  objc_sync_exit(v2);
  v5 = v2->_splatCryptex1BuildVersionOverride;

  return v5;
}

- (BOOL)_supportsCoreServices
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(SUCoreDevice *)self systemVersionPlistPath];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)_supportsAppleInternalVariant
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(SUCoreDevice *)self appleInternalVariantPlistPath];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)_supportsRestoreVersion
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(SUCoreDevice *)self restoreVersionPlistPath];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)_supportsSFRSystemVersion
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(SUCoreDevice *)self sfrSystemVersionPlistPath];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)_supportsSFRRestoreVersion
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(SUCoreDevice *)self sfrRestoreVersionPlistPath];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)_supportsRecoveryOSSystemVersion
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(SUCoreDevice *)self recoveryOSSystemVersionPlistPath];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)_supportsRecoveryOSRestoreVersion
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(SUCoreDevice *)self recoveryOSRestoreVersionPlistPath];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)_supportsFactoryVersion
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(SUCoreDevice *)self factoryVersionPlistPath];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)_supportsPreservedFactoryVersion
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(SUCoreDevice *)self preservedFactoryVersionPlistPath];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)_supportsSplatRestoreVersion
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(SUCoreDevice *)self splatRestoreVersionPlistPath];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)_supportsSplatSystemVersion
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(SUCoreDevice *)self splatSystemVersionPlistPath];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)requiresDocAssetForUpdate
{
  v2 = [(SUCoreDevice *)self deviceClass];
  v3 = [v2 isEqualToString:@"AppleTV"];

  return v3 ^ 1;
}

- (void)_initializeBridgeOSProperties
{
  if (MEMORY[0x1EEE90DE0] && MEMORY[0x1EEE90DE8] && MEMORY[0x1EEE90DF0] && MEMORY[0x1EEE90DD8])
  {
    v3 = remote_device_copy_unique_of_type();
    if (*__error() == 35)
    {
      v4 = remote_device_copy_unique_of_type();

      v3 = v4;
    }

    if (v3)
    {
      v5 = +[SUCoreLog sharedLogger];
      v6 = [v5 oslog];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E0F71000, v6, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] RemoteServiceDiscovery indicates that this is a T2 bridgeOS device via REMOTE_DEVICE_TYPE_BRIDGE_COPROC (initializeBridgeOSProperties)", buf, 2u);
      }

      [(SUCoreDevice *)self setHasBridgeOS:1];
LABEL_19:
      [(SUCoreDevice *)self _parseBridgeOSBuildInformationFromDevice:v3];
      goto LABEL_20;
    }

    v3 = remote_device_copy_unique_of_type();
    if (*__error() == 35)
    {
      v8 = remote_device_copy_unique_of_type();

      v3 = v8;
    }

    v9 = +[SUCoreLog sharedLogger];
    v10 = [v9 oslog];

    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v11)
      {
        *v13 = 0;
        _os_log_impl(&dword_1E0F71000, v10, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] RemoteServiceDiscovery indicates that this is a T1 bridgeOS device via REMOTE_DEVICE_TYPE_EOS (initializeBridgeOSProperties)", v13, 2u);
      }

      [(SUCoreDevice *)self setHasEmbeddedOS:1];
      goto LABEL_19;
    }

    if (v11)
    {
      *v12 = 0;
      _os_log_impl(&dword_1E0F71000, v10, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] RemoteServiceDiscovery indicates that this is not a bridgeOS device (initializeBridgeOSProperties)", v12, 2u);
    }

    v3 = v10;
  }

  else
  {
    v7 = +[SUCoreLog sharedLogger];
    v3 = [v7 oslog];

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1E0F71000, v3, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] RemoteServiceDiscovery methods are not available on this platform (initializeBridgeOSProperties)", v15, 2u);
    }
  }

LABEL_20:
}

- (void)_parseBridgeOSBuildInformationFromDevice:(id)a3
{
  v10 = a3;
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
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E0F71000, v3, OS_LOG_TYPE_DEFAULT, "[SUCoreDevice] SystemRecoveryNSIH: Device does not support variable boot policy", v5, 2u);
  }

  return 0;
}

- (void)_reloadPlistContentsForKey:(int64_t)a3
{
  if (a3 > 28)
  {
    if ((a3 - 34) < 5)
    {
      v8 = objc_alloc(MEMORY[0x1E695DF20]);
      v13 = [(SUCoreDevice *)self splatCryptex1SystemVersionPlistPath];
      v5 = [v8 initWithContentsOfFile:v13];
      [(SUCoreDevice *)self setSplatCryptex1SystemVersionPlistContents:v5];
      goto LABEL_14;
    }

    if ((a3 - 29) < 4)
    {
      v6 = objc_alloc(MEMORY[0x1E695DF20]);
      v13 = [(SUCoreDevice *)self splatRollbackSystemVersionPlistPath];
      v5 = [v6 initWithContentsOfFile:v13];
      [(SUCoreDevice *)self setSplatRollbackSystemVersionPlistContents:v5];
      goto LABEL_14;
    }

    if (a3 == 33)
    {
      v10 = objc_alloc(MEMORY[0x1E695DF20]);
      v13 = [(SUCoreDevice *)self splatCryptex1RestoreVersionPlistPath];
      v5 = [v10 initWithContentsOfFile:v13];
      [(SUCoreDevice *)self setSplatCryptex1RestoreVersionPlistContents:v5];
      goto LABEL_14;
    }
  }

  else
  {
    if ((a3 - 24) < 4)
    {
      v4 = objc_alloc(MEMORY[0x1E695DF20]);
      v13 = [(SUCoreDevice *)self splatSystemVersionPlistPath];
      v5 = [v4 initWithContentsOfFile:v13];
      [(SUCoreDevice *)self setSplatSystemVersionPlistContents:v5];
LABEL_14:

      return;
    }

    if (a3 == 23)
    {
      v9 = objc_alloc(MEMORY[0x1E695DF20]);
      v13 = [(SUCoreDevice *)self splatRestoreVersionPlistPath];
      v5 = [v9 initWithContentsOfFile:v13];
      [(SUCoreDevice *)self setSplatRestoreVersionPlistContents:v5];
      goto LABEL_14;
    }

    if (a3 == 28)
    {
      v7 = objc_alloc(MEMORY[0x1E695DF20]);
      v13 = [(SUCoreDevice *)self splatRollbackRestoreVersionPlistPath];
      v5 = [v7 initWithContentsOfFile:v13];
      [(SUCoreDevice *)self setSplatRollbackRestoreVersionPlistContents:v5];
      goto LABEL_14;
    }
  }

  v11 = +[SUCoreLog sharedLogger];
  v12 = [v11 oslog];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice _reloadPlistContentsForKey:];
  }
}

- (id)_copyStringValueForKey:(int64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [(SUCoreDevice *)self _queryMethodForKey:?];
  switch(v5)
  {
    case 1:
      v6 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copyGestaltValueForKey:a3];
      break;
    case 2:
      v15 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copyCoreServicesValueForKey:a3];
      break;
    case 3:
      v12 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copyCoreServicesAppleInternalValue];
      break;
    case 4:
      v13 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copyRestoreVersionValueForKey:a3];
      break;
    case 5:
      v9 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copySysCtlValueForKey:a3];
      break;
    case 6:
      v16 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copySFRSystemVersionValueForKey:a3];
      break;
    case 7:
      v21 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copySFRRestoreVersionValueForKey:a3];
      break;
    case 8:
      v14 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copyRecoveryOSSystemVersionValueForKey:a3];
      break;
    case 9:
      v23 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copyRecoveryOSRestoreVersionValueForKey:a3];
      break;
    case 10:
      v11 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copyFactoryVersionValueForKey:a3];
      break;
    case 11:
      v22 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copySplatValueForKey:a3];
      break;
    case 12:
      v8 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copySplatRollbackValueForKey:a3];
      break;
    case 13:
      v10 = *MEMORY[0x1E69E9840];

      result = [(SUCoreDevice *)self _copySplatCryptex1ValueForKey:a3];
      break;
    default:
      v17 = v5;
      v18 = +[SUCoreLog sharedLogger];
      v19 = [v18 oslog];

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v24 = [(SUCoreDevice *)self _nameForQueryMethod:v17];
        v25 = [(SUCoreDevice *)self _nameForQueryKey:a3];
        v26 = 138543618;
        v27 = v24;
        v28 = 2114;
        v29 = v25;
        _os_log_error_impl(&dword_1E0F71000, v19, OS_LOG_TYPE_ERROR, "[SUCoreDevice] Unsupported query method %{public}@ attempted for key %{public}@", &v26, 0x16u);
      }

      v20 = *MEMORY[0x1E69E9840];
      result = 0;
      break;
  }

  return result;
}

- (int64_t)_queryMethodForKey:(int64_t)a3
{
  v3 = a3;
  switch(a3)
  {
    case 0:
      return v3;
    case 1:
    case 2:
      if ([(SUCoreDevice *)self deviceSupportsMultiVolumeBoot])
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }

      break;
    case 3:
    case 5:
    case 6:
    case 7:
      v3 = 1;
      break;
    case 4:
      v3 = 5;
      break;
    case 8:
      if ([(SUCoreDevice *)self deviceSupportsMultiVolumeBoot])
      {
        v3 = 3;
      }

      else
      {
        v3 = 1;
      }

      break;
    case 9:
    case 10:
      v3 = 4;
      break;
    case 11:
    case 12:
    case 13:
      v3 = 6;
      break;
    case 14:
    case 15:
      v3 = 7;
      break;
    case 16:
    case 17:
    case 18:
      v3 = 8;
      break;
    case 19:
    case 20:
      v3 = 9;
      break;
    case 21:
    case 22:
      v3 = 10;
      break;
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
      v3 = 11;
      break;
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
      v3 = 12;
      break;
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
      v3 = 13;
      break;
    default:
      v4 = +[SUCoreLog sharedLogger];
      v5 = [v4 oslog];

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SUCoreDevice _queryMethodForKey:];
      }

      v3 = 0;
      break;
  }

  return v3;
}

- (id)_copyGestaltValueForKey:(int64_t)a3
{
  [(SUCoreDevice *)self _gestaltKeyForQueryKey:a3];

  return MGCopyAnswer();
}

- (id)_copyCoreServicesValueForKey:(int64_t)a3
{
  v4 = [(SUCoreDevice *)self _coreServicesKeyForQueryKey:a3];
  v5 = [(SUCoreDevice *)self systemVersionPlistContents];
  v6 = [v5 safeStringForKey:v4];
  v7 = [v6 copy];

  return v7;
}

- (id)_copyRestoreVersionValueForKey:(int64_t)a3
{
  v4 = [(SUCoreDevice *)self _restoreVersionKeyForQueryKey:a3];
  v5 = [(SUCoreDevice *)self restoreVersionPlistContents];
  v6 = [v5 safeStringForKey:v4];
  v7 = [v6 copy];

  return v7;
}

- (id)_copyCoreServicesAppleInternalValue
{
  v2 = [(SUCoreDevice *)self appleInternalVariantPlistContents];
  v3 = [v2 safeULLForKey:@"AppleInternal"];

  if (v3 != 1)
  {
    return 0;
  }

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);

  return [v4 initWithString:@"Internal"];
}

- (id)_copySysCtlValueForKey:(int64_t)a3
{
  v3 = [(SUCoreDevice *)self _sysCtlKeyForQueryKey:a3];
  v11 = 0;
  if (sysctlbyname([v3 UTF8String], 0, &v11, 0, 0) || !v11)
  {
    v8 = +[SUCoreLog sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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
      v6 = [v5 oslog];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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

- (id)_copySFRSystemVersionValueForKey:(int64_t)a3
{
  v4 = [(SUCoreDevice *)self _coreServicesKeyForQueryKey:a3];
  v5 = [(SUCoreDevice *)self sfrSystemVersionPlistContents];
  v6 = [v5 safeStringForKey:v4];
  v7 = [v6 copy];

  return v7;
}

- (id)_copySFRRestoreVersionValueForKey:(int64_t)a3
{
  v4 = [(SUCoreDevice *)self _restoreVersionKeyForQueryKey:a3];
  v5 = [(SUCoreDevice *)self sfrRestoreVersionPlistContents];
  v6 = [v5 safeStringForKey:v4];
  v7 = [v6 copy];

  return v7;
}

- (id)_copyRecoveryOSSystemVersionValueForKey:(int64_t)a3
{
  v4 = [(SUCoreDevice *)self _coreServicesKeyForQueryKey:a3];
  v5 = [(SUCoreDevice *)self recoveryOSSystemVersionPlistContents];
  v6 = [v5 safeStringForKey:v4];
  v7 = [v6 copy];

  return v7;
}

- (id)_copyFactoryVersionValueForKey:(int64_t)a3
{
  v5 = [(SUCoreDevice *)self _factoryVersionKeyForQueryKey:?];
  v6 = [(SUCoreDevice *)self _factoryVersionPlistContentsForKey:a3];
  v7 = [v6 safeStringForKey:v5];
  v8 = [v7 copy];

  return v8;
}

- (id)_copyRecoveryOSRestoreVersionValueForKey:(int64_t)a3
{
  v4 = [(SUCoreDevice *)self _restoreVersionKeyForQueryKey:a3];
  v5 = [(SUCoreDevice *)self recoveryOSRestoreVersionPlistContents];
  v6 = [v5 safeStringForKey:v4];
  v7 = [v6 copy];

  return v7;
}

- (id)_copySplatValueForKey:(int64_t)a3
{
  v5 = [(SUCoreDevice *)self _splatVersionKeyForQueryKey:?];
  v6 = [(SUCoreDevice *)self _splatVersionPlistContentsForKey:a3];
  v7 = [v6 safeStringForKey:v5];
  v8 = [v7 copy];

  return v8;
}

- (id)_copySplatRollbackValueForKey:(int64_t)a3
{
  v5 = [(SUCoreDevice *)self _splatVersionKeyForQueryKey:?];
  v6 = [(SUCoreDevice *)self _splatRollbackVersionPlistContentsForKey:a3];
  v7 = [v6 safeStringForKey:v5];
  v8 = [v7 copy];

  return v8;
}

- (id)_copySplatCryptex1ValueForKey:(int64_t)a3
{
  v5 = [(SUCoreDevice *)self _splatVersionKeyForQueryKey:?];
  v6 = [(SUCoreDevice *)self _splatCryptex1VersionPlistContentsForKey:a3];
  v7 = [v6 safeStringForKey:v5];
  v8 = [v7 copy];

  return v8;
}

- (__CFString)_gestaltKeyForQueryKey:(int64_t)a3
{
  v3 = a3 - 1;
  if (a3 - 1) < 8 && ((0xF7u >> v3))
  {
    return off_1E86FCEE8[v3];
  }

  v5 = +[SUCoreLog sharedLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice _gestaltKeyForQueryKey:];
  }

  return 0;
}

- (id)_coreServicesKeyForQueryKey:(int64_t)a3
{
  v3 = a3 - 1;
  if (a3 - 1) < 0x12 && ((0x39C03u >> v3))
  {
    return off_1E86FCF28[v3];
  }

  v5 = +[SUCoreLog sharedLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice _coreServicesKeyForQueryKey:];
  }

  return 0;
}

- (id)_restoreVersionKeyForQueryKey:(int64_t)a3
{
  v3 = a3 - 9;
  if (a3 - 9) < 0xC && ((0xC63u >> v3))
  {
    return off_1E86FCFB8[v3];
  }

  v5 = +[SUCoreLog sharedLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice _restoreVersionKeyForQueryKey:];
  }

  return 0;
}

- (id)_factoryVersionKeyForQueryKey:(int64_t)a3
{
  if ((a3 - 21) < 2)
  {
    return @"RestoreLongVersion";
  }

  v4 = +[SUCoreLog sharedLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice _factoryVersionKeyForQueryKey:];
  }

  return 0;
}

- (id)_factoryVersionPlistContentsForKey:(int64_t)a3
{
  if (a3 == 22)
  {
    v3 = [(SUCoreDevice *)self preservedFactoryVersionPlistContents];
  }

  else if (a3 == 21)
  {
    v3 = [(SUCoreDevice *)self factoryVersionPlistContents];
  }

  else
  {
    v4 = +[SUCoreLog sharedLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDevice _factoryVersionPlistContentsForKey:];
    }

    v3 = 0;
  }

  return v3;
}

- (id)_sysCtlKeyForQueryKey:(int64_t)a3
{
  switch(a3)
  {
    case 3:
      return @"hw.model";
    case 7:
      return @"hw.product";
    case 4:
      return @"hw.target";
  }

  v4 = +[SUCoreLog sharedLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice _sysCtlKeyForQueryKey:];
  }

  return 0;
}

- (id)_splatVersionKeyForQueryKey:(int64_t)a3
{
  if ((a3 - 23) < 0x10)
  {
    return off_1E86FD018[a3 - 23];
  }

  v4 = +[SUCoreLog sharedLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDevice _splatVersionKeyForQueryKey:];
  }

  return 0;
}

- (id)_splatVersionPlistContentsForKey:(int64_t)a3
{
  if ((a3 - 24) >= 4)
  {
    if (a3 == 23)
    {
      v3 = [(SUCoreDevice *)self splatRestoreVersionPlistContents];
    }

    else
    {
      v4 = +[SUCoreLog sharedLogger];
      v5 = [v4 oslog];

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SUCoreDevice _splatVersionPlistContentsForKey:];
      }

      v3 = 0;
    }
  }

  else
  {
    v3 = [(SUCoreDevice *)self splatSystemVersionPlistContents];
  }

  return v3;
}

- (id)_splatRollbackVersionPlistContentsForKey:(int64_t)a3
{
  if ((a3 - 29) >= 4)
  {
    if (a3 == 28)
    {
      v3 = [(SUCoreDevice *)self splatRollbackRestoreVersionPlistContents];
    }

    else
    {
      v4 = +[SUCoreLog sharedLogger];
      v5 = [v4 oslog];

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SUCoreDevice _splatRollbackVersionPlistContentsForKey:];
      }

      v3 = 0;
    }
  }

  else
  {
    v3 = [(SUCoreDevice *)self splatRollbackSystemVersionPlistContents];
  }

  return v3;
}

- (id)_splatCryptex1VersionPlistContentsForKey:(int64_t)a3
{
  if ((a3 - 34) >= 5)
  {
    if (a3 == 33)
    {
      v3 = [(SUCoreDevice *)self splatCryptex1RestoreVersionPlistContents];
    }

    else
    {
      v5 = +[SUCoreLog sharedLogger];
      v6 = [v5 oslog];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [SUCoreDevice _splatCryptex1VersionPlistContentsForKey:];
      }

      v3 = 0;
    }
  }

  else
  {
    v3 = [(SUCoreDevice *)self splatCryptex1SystemVersionPlistContents];
  }

  return v3;
}

- (id)_nameForQueryMethod:(int64_t)a3
{
  if (a3 >= 0xE)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownQueryMethod(%ld)", a3];
  }

  else
  {
    v4 = off_1E86FD098[a3];
  }

  return v4;
}

- (id)_nameForQueryKey:(int64_t)a3
{
  if (a3 >= 0x27)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownQueryKey(%ld)", a3];
  }

  else
  {
    v4 = off_1E86FD108[a3];
  }

  return v4;
}

- (id)description
{
  v56 = MEMORY[0x1E696AEC0];
  v82 = [(SUCoreDevice *)self targetedSystemVolume];
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
  v81 = [(SUCoreDevice *)self buildVersion];
  v79 = [(SUCoreDevice *)self productVersion];
  v80 = [(SUCoreDevice *)self hwModelString];
  v77 = [(SUCoreDevice *)self deviceClass];
  v78 = [(SUCoreDevice *)self marketingProductName];
  v76 = [(SUCoreDevice *)self productType];
  v75 = [(SUCoreDevice *)self releaseType];
  v73 = [(SUCoreDevice *)self deviceBoardID];
  v74 = [(SUCoreDevice *)self hwTarget];
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
  v70 = [(SUCoreDevice *)self restoreVersion];
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
  v72 = [(SUCoreDevice *)self bridgeBuildVersion];
  v71 = [(SUCoreDevice *)self bridgeRestoreVersion];
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
  v69 = [(SUCoreDevice *)self sfrProductVersion];
  v68 = [(SUCoreDevice *)self sfrBuildVersion];
  v67 = [(SUCoreDevice *)self sfrRestoreVersion];
  v66 = [(SUCoreDevice *)self sfrReleaseType];
  if ([(SUCoreDevice *)self hasRecoveryOS])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v40 = v18;
  v60 = [(SUCoreDevice *)self recoveryOSProductVersion];
  v65 = [(SUCoreDevice *)self recoveryOSBuildVersion];
  v64 = [(SUCoreDevice *)self recoveryOSRestoreVersion];
  v62 = [(SUCoreDevice *)self recoveryOSReleaseType];
  v63 = [(SUCoreDevice *)self factoryRestoreVersion];
  v61 = [(SUCoreDevice *)self preservedFactoryRestoreVersion];
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
  v59 = [(SUCoreDevice *)self splatRestoreVersion];
  v39 = [(SUCoreDevice *)self splatProductVersion];
  v38 = [(SUCoreDevice *)self splatProductVersionExtra];
  v37 = [(SUCoreDevice *)self splatBuildVersion];
  v58 = [(SUCoreDevice *)self splatReleaseType];
  if ([(SUCoreDevice *)self hasEligibleRollback])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v22 = [(SUCoreDevice *)self splatRollbackRestoreVersion];
  v36 = [(SUCoreDevice *)self splatRollbackProductVersion];
  v34 = [(SUCoreDevice *)self splatRollbackProductVersionExtra];
  v32 = [(SUCoreDevice *)self splatRollbackBuildVersion];
  v31 = [(SUCoreDevice *)self splatRollbackReleaseType];
  if ([(SUCoreDevice *)self hasSemiSplatActive])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  v30 = [(SUCoreDevice *)self splatCryptex1RestoreVersion];
  v29 = [(SUCoreDevice *)self splatCryptex1ProductVersion];
  v28 = [(SUCoreDevice *)self splatCryptex1ProductVersionExtra];
  v24 = [(SUCoreDevice *)self splatCryptex1BuildVersion];
  v25 = [(SUCoreDevice *)self splatCryptex1BuildVersionOverride];
  v26 = [(SUCoreDevice *)self splatCryptex1ReleaseType];
  v57 = [v56 stringWithFormat:@"\n[>>>\n               targetedSystemVolume: %@\n        deviceSupportsMobileGestalt: %@\n         deviceSupportsCoreServices: %@\n deviceSupportsAppleInternalVariant: %@\n       deviceSupportsRestoreVersion: %@\n     deviceSupportsSFRSystemVersion: %@\n    deviceSupportsSFRRestoreVersion: %@\n      deviceSupportsMultiVolumeBoot: %@\n  deviceSupportsSplatRestoreVersion: %@\n   deviceSupportsSplatSystemVersion: %@\n                       buildVersion: %@\n                     productVersion: %@\n                      hwModelString: %@\n                        deviceClass: %@\n               marketingProductName: %@\n                        productType: %@\n                        releaseType: %@\n                      deviceBoardID: %@\n                           hwTarget: %@\n                         isInternal: %@\n           isBootedOSSecureInternal: %@\n                     restoreVersion: %@\n                      hasEmbeddedOS: %@\n                        hasBridgeOS: %@\n                 bridgeBuildVersion: %@\n               bridgeRestoreVersion: %@\n                   isBridgeInternal: %@\n                             hasSFR: %@\n                  sfrProductVersion: %@\n                    sfrBuildVersion: %@\n                  sfrRestoreVersion: %@\n                     sfrReleaseType: %@\n                      hasRecoveryOS: %@\n           recoveryOSProductVersion: %@\n             recoveryOSBuildVersion: %@\n           recoveryOSRestoreVersion: %@\n              recoveryOSReleaseType: %@\n              factoryRestoreVersion: %@\n     preservedFactoryRestoreVersion: %@\n                           hasSplat: %@\n        hasSplatOnlyUpdateInstalled: %@\n                splatRestoreVersion: %@\n                splatProductVersion: %@\n           splatProductVersionExtra: %@\n                  splatBuildVersion: %@\n                   splatReleaseType: %@\n                hasEligibleRollback: %@\n        splatRollbackRestoreVersion: %@\n        splatRollbackProductVersion: %@\n   splatRollbackProductVersionExtra: %@\n          splatRollbackBuildVersion: %@\n           splatRollbackReleaseType: %@\n                 hasSemiSplatActive: %@\n        splatCryptex1RestoreVersion: %@\n        splatCryptex1ProductVersion: %@\n   splatCryptex1ProductVersionExtra: %@\n          splatCryptex1BuildVersion: %@\n  splatCryptex1BuildVersionOverride: %@\n           splatCryptex1ReleaseType: %@\n<<<]", v82, v55, v54, v53, v52, v51, v50, v49, v48, v47, v81, v79, v80, v77, v78, v76, v75, v73, v74, v46, v45, v70, v44, v43, v72, v71, v42, v41, v69, v68, v67, v66, v40, v60, v65, v64, v62, v63, v61, v35, v33, v59, v39, v38, v37, v58, v21, v22, v36, v34, v32, v31, v23, v30, v29, v28, v24, v25, v26];

  return v57;
}

- (id)summary
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(SUCoreDevice *)self targetedSystemVolume];
  [v3 appendFormat:@"SystemVolume(TargetedSystemVolume:%@)", v4];

  v5 = [(SUCoreDevice *)self deviceSupportsRestoreVersion];
  v6 = [(SUCoreDevice *)self buildVersion];
  v7 = [(SUCoreDevice *)self productVersion];
  v8 = v7;
  if (v5)
  {
    v9 = [(SUCoreDevice *)self restoreVersion];
    [v3 appendFormat:@" Build(BuildVersion:%@|ProductVersion:%@|RestoreVersion:%@)", v6, v8, v9];
  }

  else
  {
    [v3 appendFormat:@" Build(BuildVersion:%@|ProductVersion:%@)", v6, v7];
  }

  v10 = [(SUCoreDevice *)self deviceClass];
  v11 = [(SUCoreDevice *)self marketingProductName];
  v12 = [(SUCoreDevice *)self productType];
  v13 = [(SUCoreDevice *)self hwModelString];
  [v3 appendFormat:@" Device(DeviceClass:%@|MarketingProductName:%@|ProductType:%@|HWModelStr:%@)", v10, v11, v12, v13];

  v14 = [(SUCoreDevice *)self releaseType];
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

  [v3 appendFormat:@" ReleaseType(ReleaseType:%@|Internal:%@|BootedOSSecureInternal:%@)", v14, v15, v16];

  if ([(SUCoreDevice *)self hasEmbeddedOS])
  {
    v17 = [(SUCoreDevice *)self bridgeBuildVersion];
    v18 = [(SUCoreDevice *)self bridgeRestoreVersion];
    if ([(SUCoreDevice *)self isBridgeInternal])
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    [v3 appendFormat:@" EmbeddedOS(Build:%@|RestoreVersion:%@|Internal:%@)", v17, v18, v19];
  }

  if ([(SUCoreDevice *)self hasBridgeOS])
  {
    v20 = [(SUCoreDevice *)self bridgeBuildVersion];
    v21 = [(SUCoreDevice *)self bridgeRestoreVersion];
    if ([(SUCoreDevice *)self isBridgeInternal])
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    [v3 appendFormat:@" BridgeOS(Build:%@|RestoreVersion:%@|Internal:%@)", v20, v21, v22];
  }

  if ([(SUCoreDevice *)self hasSFR])
  {
    v23 = [(SUCoreDevice *)self sfrBuildVersion];
    v24 = [(SUCoreDevice *)self sfrProductVersion];
    v25 = [(SUCoreDevice *)self sfrRestoreVersion];
    v26 = [(SUCoreDevice *)self sfrReleaseType];
    [v3 appendFormat:@" SFR(Build:%@|ProductVersion:%@|RestoreVersion:%@|ReleaseType:%@)", v23, v24, v25, v26];
  }

  if ([(SUCoreDevice *)self hasRecoveryOS])
  {
    v27 = [(SUCoreDevice *)self recoveryOSBuildVersion];
    v28 = [(SUCoreDevice *)self recoveryOSProductVersion];
    v29 = [(SUCoreDevice *)self recoveryOSRestoreVersion];
    v30 = [(SUCoreDevice *)self recoveryOSReleaseType];
    [v3 appendFormat:@" RecoveryOS(Build:%@|ProductVersion:%@|RestoreVersion:%@|ReleaseType:%@)", v27, v28, v29, v30];
  }

  if ([(SUCoreDevice *)self deviceSupportsFactoryVersion]|| [(SUCoreDevice *)self deviceSupportsPreservedFactoryVersion])
  {
    v31 = [(SUCoreDevice *)self factoryRestoreVersion];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = [(SUCoreDevice *)self preservedFactoryRestoreVersion];
    }

    v34 = v33;

    v35 = [(SUCoreDevice *)self preservedFactoryRestoreVersion];
    if (v35)
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
    v37 = [(SUCoreDevice *)self splatRestoreVersion];
    v38 = [(SUCoreDevice *)self splatProductVersion];
    v39 = [(SUCoreDevice *)self splatProductVersionExtra];
    v40 = [(SUCoreDevice *)self splatBuildVersion];
    v41 = [(SUCoreDevice *)self splatReleaseType];
    if ([(SUCoreDevice *)self hasSplatOnlyUpdateInstalled])
    {
      v42 = @"YES";
    }

    else
    {
      v42 = @"NO";
    }

    [v3 appendFormat:@" Splat(RestoreVersion:%@|ProductVersion:%@|ProductVersionExtra:%@|BuildVersion:%@|ReleaseType:%@|HasSplatOnlyUpdateInstalled:%@)", v37, v38, v39, v40, v41, v42];

    v43 = [(SUCoreDevice *)self splatRollbackRestoreVersion];
    v44 = [(SUCoreDevice *)self splatRollbackProductVersion];
    v45 = [(SUCoreDevice *)self splatRollbackProductVersionExtra];
    v46 = [(SUCoreDevice *)self splatRollbackBuildVersion];
    v47 = [(SUCoreDevice *)self splatRollbackReleaseType];
    if ([(SUCoreDevice *)self hasEligibleRollback])
    {
      v48 = @"YES";
    }

    else
    {
      v48 = @"NO";
    }

    [v3 appendFormat:@" SplatRollback(RestoreVersion:%@|ProductVersion:%@|ProductVersionExtra:%@|BuildVersion:%@|ReleaseType:%@|HasEligibleRollback:%@)", v43, v44, v45, v46, v47, v48];

    v49 = [(SUCoreDevice *)self splatCryptex1RestoreVersion];
    v50 = [(SUCoreDevice *)self splatCryptex1ProductVersion];
    v51 = [(SUCoreDevice *)self splatCryptex1ProductVersionExtra];
    v52 = [(SUCoreDevice *)self splatCryptex1BuildVersion];
    v53 = [(SUCoreDevice *)self splatCryptex1BuildVersionOverride];
    v54 = [(SUCoreDevice *)self splatCryptex1ReleaseType];
    if ([(SUCoreDevice *)self hasSemiSplatActive])
    {
      v55 = @"YES";
    }

    else
    {
      v55 = @"NO";
    }

    [v3 appendFormat:@" SplatCryptex1(RestoreVersion:%@|ProductVersion:%@|ProductVersionExtra:%@|BuildVersion:%@|BuildVersionOverride:%@|ReleaseType:%@|HasSemiSplatActive:%@)", v49, v50, v51, v52, v53, v54, v55];
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