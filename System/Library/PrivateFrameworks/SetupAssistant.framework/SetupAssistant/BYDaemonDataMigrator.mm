@interface BYDaemonDataMigrator
- (BYDaemonDataMigrator)init;
- (void)migrateWithStoredMigratorVersion:(unsigned int)version userDataDisposition:(unsigned int)disposition;
@end

@implementation BYDaemonDataMigrator

- (BYDaemonDataMigrator)init
{
  v5.receiver = self;
  v5.super_class = BYDaemonDataMigrator;
  v2 = [(BYDaemonDataMigrator *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(BYCapabilities);
    [(BYDaemonDataMigrator *)v2 setCapabilities:v3];
  }

  return v2;
}

- (void)migrateWithStoredMigratorVersion:(unsigned int)version userDataDisposition:(unsigned int)disposition
{
  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109376;
    LODWORD(v14[0]) = version;
    WORD2(v14[0]) = 1024;
    *(v14 + 6) = disposition;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BYDaemonDataMigrator will migrate with storedMigratorVersion %d user data disposition %d", &v13, 0xEu);
  }

  if (version <= 0xC && (disposition & 2) != 0)
  {
    v8 = +[NSLocale currentLocale];
    regionCode = [v8 regionCode];

    v10 = _BYLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14[0] = regionCode;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BYDaemonDataMigrator: Setting eligibility device locale to %@", &v13, 0xCu);
    }

    capabilities = [(BYDaemonDataMigrator *)self capabilities];
    [capabilities eligibilitySetDeviceLocale:regionCode];
  }

  v12 = _BYLoggingFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BYDaemonDataMigrator done", &v13, 2u);
  }
}

@end