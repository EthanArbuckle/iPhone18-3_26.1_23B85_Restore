@interface BRCReadWriteClientDatabaseFacade
- (BOOL)saveAppLibrary:(id)a3;
- (BOOL)saveAppLibrary:(id)a3 supportsEnhancedDrivePrivacy:(BOOL)a4;
- (BOOL)updateClientStateData:(id)a3;
- (BOOL)updateClientStateDictionary:(id)a3;
- (BRCReadWriteClientDatabaseFacade)initWithDB:(id)a3 workloop:(id)a4;
@end

@implementation BRCReadWriteClientDatabaseFacade

- (BRCReadWriteClientDatabaseFacade)initWithDB:(id)a3 workloop:(id)a4
{
  v5.receiver = self;
  v5.super_class = BRCReadWriteClientDatabaseFacade;
  return [(BRCDatabaseFacade *)&v5 _initWithDB:a3 workloop:a4];
}

- (BOOL)updateClientStateData:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [BRCReadWriteClientDatabaseFacade updateClientStateData:];
  }

  v5 = [(BRCPQLConnection *)self->super.super._db execute:@"UPDATE client_state SET v = %@", v4];

  return v5;
}

- (BOOL)updateClientStateDictionary:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [BRCReadWriteClientDatabaseFacade updateClientStateDictionary:];
  }

  v5 = [(BRCPQLConnection *)self->super.super._db execute:@"UPDATE client_state SET v = %@", v4];

  return v5;
}

- (BOOL)saveAppLibrary:(id)a3 supportsEnhancedDrivePrivacy:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  db = self->super.super._db;
  v8 = [v6 plist];
  v9 = [v6 zoneRowID];
  if (v4)
  {
    v10 = [v6 childBasehashSalt];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v6, "saltingState")}];
    v12 = [v6 dbRowID];
    v13 = [(BRCPQLConnection *)db execute:@"UPDATE app_libraries SET app_library_plist = %@, zone_rowid = %@, child_basehash_salt = %@, salting_state = %@ WHERE rowid = %@", v8, v9, v10, v11, v12];
  }

  else
  {
    v10 = [v6 dbRowID];
    v13 = [(BRCPQLConnection *)db execute:@"UPDATE app_libraries SET app_library_plist = %@, zone_rowid = %@ WHERE rowid = %@", v8, v9, v10];
  }

  if (v13)
  {
    [v6 setNeedsSave:0];
    v14 = 1;
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [BRCReadWriteClientDatabaseFacade saveAppLibrary:v15 supportsEnhancedDrivePrivacy:v16];
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)saveAppLibrary:(id)a3
{
  v4 = a3;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  LOBYTE(self) = -[BRCReadWriteClientDatabaseFacade saveAppLibrary:supportsEnhancedDrivePrivacy:](self, "saveAppLibrary:supportsEnhancedDrivePrivacy:", v4, [v5 supportsEnhancedDrivePrivacy]);

  return self;
}

@end