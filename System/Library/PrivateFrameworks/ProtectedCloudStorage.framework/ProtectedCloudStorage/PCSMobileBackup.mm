@interface PCSMobileBackup
+ (id)defaultMobileBackup;
- (BOOL)isBackupEnabled;
- (PCSMobileBackup)init;
@end

@implementation PCSMobileBackup

+ (id)defaultMobileBackup
{
  if (defaultMobileBackup_onceToken != -1)
  {
    +[PCSMobileBackup defaultMobileBackup];
  }

  v3 = defaultMobileBackup_mb;

  return v3;
}

uint64_t __38__PCSMobileBackup_defaultMobileBackup__block_invoke()
{
  defaultMobileBackup_mb = objc_alloc_init(PCSMobileBackup);

  return MEMORY[0x1EEE66BB8]();
}

- (PCSMobileBackup)init
{
  v11.receiver = self;
  v11.super_class = PCSMobileBackup;
  v2 = [(PCSMobileBackup *)&v11 init];
  if (v2)
  {
    v3 = MobileBackupLibraryCore();
    v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Monitoring backup status with MBManager", buf, 2u);
      }

      v17 = 0;
      v18 = &v17;
      v19 = 0x2050000000;
      v5 = getMBManagerClass_softClass;
      v20 = getMBManagerClass_softClass;
      if (!getMBManagerClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        v13 = 3221225472;
        v14 = __getMBManagerClass_block_invoke;
        v15 = &unk_1E7B18A90;
        v16 = &v17;
        __getMBManagerClass_block_invoke(buf);
        v5 = v18[3];
      }

      v6 = v5;
      _Block_object_dispose(&v17, 8);
      v7 = [[v5 alloc] initWithDelegate:v2];
      backupManager = v2->_backupManager;
      v2->_backupManager = v7;
    }

    else if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to use MBManager", buf, 2u);
    }

    v9 = v2;
  }

  return v2;
}

- (BOOL)isBackupEnabled
{
  if (_PCSMobileBackupOverride == -1)
  {
    v9 = v2;
    v10 = v3;
    isBackupEnabled = [(MBManager *)self->_backupManager isBackupEnabled];
    v4 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (isBackupEnabled)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Mobile backup is enabled", buf, 2u);
      }

      LOBYTE(v4) = 1;
    }

    else if (v4)
    {
      *v7 = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Mobile backup is disabled", v7, 2u);
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = _PCSMobileBackupOverride != 0;
  }

  return v4;
}

@end