@interface BYDaemonDataMigrator
- (BYDaemonDataMigrator)init;
- (void)migrateWithStoredMigratorVersion:(unsigned int)a3 userDataDisposition:(unsigned int)a4;
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

- (void)migrateWithStoredMigratorVersion:(unsigned int)a3 userDataDisposition:(unsigned int)a4
{
  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109376;
    LODWORD(v14[0]) = a3;
    WORD2(v14[0]) = 1024;
    *(v14 + 6) = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BYDaemonDataMigrator will migrate with storedMigratorVersion %d user data disposition %d", &v13, 0xEu);
  }

  if (a3 <= 0xC && (a4 & 2) != 0)
  {
    v8 = +[NSLocale currentLocale];
    v9 = [v8 regionCode];

    v10 = _BYLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14[0] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BYDaemonDataMigrator: Setting eligibility device locale to %@", &v13, 0xCu);
    }

    v11 = [(BYDaemonDataMigrator *)self capabilities];
    [v11 eligibilitySetDeviceLocale:v9];
  }

  v12 = _BYLoggingFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BYDaemonDataMigrator done", &v13, 2u);
  }
}

@end