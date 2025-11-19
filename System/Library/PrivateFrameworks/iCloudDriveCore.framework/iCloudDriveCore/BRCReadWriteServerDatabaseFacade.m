@interface BRCReadWriteServerDatabaseFacade
- (BOOL)doesParticipantExistForItemID:(id)a3 zoneRowID:(id)a4 userName:(id)a5;
- (BOOL)insertOrReplaceParticipantForSharedItemID:(id)a3 zoneRowID:(id)a4 participantUserName:(id)a5 shareParticipantsOptions:(unint64_t)a6;
- (BOOL)saveServerZone:(id)a3;
- (BOOL)updateParticipantsForSharedItemID:(id)a3 zoneRowID:(id)a4 paticipantFlagsCallblock:(id)a5;
- (BOOL)updateServerItemWithSideCarInfo:(id)a3 sideCarInfo:(id)a4 zoneRowID:(id)a5;
- (BRCReadWriteServerDatabaseFacade)initWithDB:(id)a3 workloop:(id)a4;
- (id)createDeviceKeyForName:(id)a3;
- (id)getOrCreateUserKeyForOwnerName:(id)a3;
- (void)insertSideCarLookAheadInfo:(id)a3 shareRecordName:(id)a4 sideCarInfo:(id)a5;
- (void)setUserIdentityForUserName:(id)a3 userIdentity:(id)a4;
@end

@implementation BRCReadWriteServerDatabaseFacade

- (BRCReadWriteServerDatabaseFacade)initWithDB:(id)a3 workloop:(id)a4
{
  v5.receiver = self;
  v5.super_class = BRCReadWriteServerDatabaseFacade;
  return [(BRCDatabaseFacade *)&v5 _initWithDB:a3 workloop:a4];
}

- (BOOL)saveServerZone:(id)a3
{
  v4 = a3;
  v5 = [v4 dbRowID];

  if (!v5)
  {
    [BRCReadWriteServerDatabaseFacade saveServerZone:];
  }

  db = self->super._db;
  v7 = [v4 plist];
  v8 = [v4 dbRowID];
  v9 = [(BRCPQLConnection *)db execute:@"UPDATE server_zones SET zone_plist = %@ WHERE rowid = %@", v7, v8];

  if (v9)
  {
    [v4 setNeedsSave:0];
  }

  else
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(BRCReadWriteServerDatabaseFacade *)v10 saveServerZone:v11, v12, v13, v14, v15, v16, v17];
    }
  }

  return v9;
}

- (id)getOrCreateUserKeyForOwnerName:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(BRCDatabaseFacade *)self userKeyForOwnerName:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      v6 = v7;
LABEL_11:
      v17 = v7;
      goto LABEL_16;
    }

    if ([(BRCPQLConnection *)self->super._db execute:@"INSERT INTO users (user_name) VALUES (%@)", v4])
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [BRCReadWriteServerDatabaseFacade getOrCreateUserKeyForOwnerName:];
      }

      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[BRCPQLConnection lastInsertedRowID](self->super._db, "lastInsertedRowID")}];
      goto LABEL_11;
    }

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v22 = [(BRCPQLConnection *)self->super._db lastError];
      *buf = 138412802;
      v24 = v4;
      v25 = 2112;
      v26 = v22;
      v27 = 2112;
      v28 = v18;
      _os_log_fault_impl(&dword_223E7A000, v19, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't insert user name: '%@': %@%@", buf, 0x20u);
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(BRCReadWriteServerDatabaseFacade *)v6 getOrCreateUserKeyForOwnerName:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  v17 = 0;
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)createDeviceKeyForName:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v5 = [(BRCDatabaseFacade *)self deviceKeyForName:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v6 = v7;
  }

  else
  {
    if (![(BRCPQLConnection *)self->super._db execute:@"INSERT INTO devices (name) VALUES (%@)", v4])
    {
      v6 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(BRCReadWriteServerDatabaseFacade *)v4 createDeviceKeyForName:v6, v12];
      }

      v8 = 0;
      goto LABEL_10;
    }

    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [BRCReadWriteServerDatabaseFacade createDeviceKeyForName:];
    }

    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[BRCPQLConnection lastInsertedRowID](self->super._db, "lastInsertedRowID")}];
  }

  v8 = v7;
LABEL_10:

LABEL_11:

  return v8;
}

- (void)setUserIdentityForUserName:(id)a3 userIdentity:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(BRCReadWriteServerDatabaseFacade *)self getOrCreateUserKeyForOwnerName:v6];
  v9 = [(BRCPQLConnection *)self->super._db execute:@"UPDATE users SET user_plist = %@ WHERE user_name = %@", v7, v6];

  if (!v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v21 = [(BRCPQLConnection *)self->super._db lastError];
      *buf = 138412802;
      v23 = v6;
      v24 = 2112;
      v25 = v21;
      v26 = 2112;
      v27 = v10;
      _os_log_fault_impl(&dword_223E7A000, v11, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't insert user identity for name '%@': %@%@", buf, 0x20u);
    }
  }

  if ([(BRCPQLConnection *)self->super._db changes]!= 1)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [(BRCReadWriteServerDatabaseFacade *)v12 setUserIdentityForUserName:v13 userIdentity:v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)insertSideCarLookAheadInfo:(id)a3 shareRecordName:(id)a4 sideCarInfo:(id)a5
{
  v15 = a5;
  v8 = a4;
  v9 = a3;
  if ([v15 favoriteRank])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v15, "favoriteRank")}];
  }

  else
  {
    v10 = 0;
  }

  if ([v15 lastUsedTime])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v15, "lastUsedTime")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v15 finderTags];
  db = self->super._db;
  v14 = [v15 ckInfo];
  [(BRCPQLConnection *)db execute:@"INSERT OR REPLACE INTO side_car_lookahead (record_name, root_alias_record_name, item_favoriterank, item_lastusedtime, item_side_car_ckinfo, item_finder_tags) VALUES (%@, %@, %@, %@, %@, %@)", v9, v8, v10, v11, v14, v12];
}

- (BOOL)updateServerItemWithSideCarInfo:(id)a3 sideCarInfo:(id)a4 zoneRowID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([v8 favoriteRank])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "favoriteRank")}];
  }

  else
  {
    v11 = 0;
  }

  if ([v8 lastUsedTime])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "lastUsedTime")}];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v8 finderTags];
  db = self->super._db;
  v15 = [v8 ckInfo];
  [(BRCPQLConnection *)db execute:@"UPDATE server_items SET item_favoriterank = %@, item_lastusedtime = %@, item_finder_tags = %@, item_side_car_ckinfo = %@, item_rank = NULL WHERE zone_rowid = %@ AND item_id = %@", v11, v12, v13, v15, v9, v10];

  v16 = [(BRCPQLConnection *)self->super._db changes]!= 0;
  return v16;
}

- (BOOL)insertOrReplaceParticipantForSharedItemID:(id)a3 zoneRowID:(id)a4 participantUserName:(id)a5 shareParticipantsOptions:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(BRCReadWriteServerDatabaseFacade *)self getOrCreateUserKeyForOwnerName:a5];
  if (v12)
  {
    v13 = [(BRCPQLConnection *)self->super._db execute:@"INSERT OR REPLACE INTO server_share_items_participants (user_key, item_id, zone_rowid, participant_flags) VALUES(%@, %@, %@, %lu)", v12, v10, v11, a6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)doesParticipantExistForItemID:(id)a3 zoneRowID:(id)a4 userName:(id)a5
{
  v5 = [(BRCPQLConnection *)self->super._db fetch:@"SELECT 1  FROM server_share_items_participants AS p   INNER JOIN users AS u  WHERE p.item_id = %@ AND p.zone_rowid = %@ AND u.user_name = %@ AND u.user_key = p.user_key", a3, a4, a5];
  v6 = [v5 next];

  return v6;
}

- (BOOL)updateParticipantsForSharedItemID:(id)a3 zoneRowID:(id)a4 paticipantFlagsCallblock:(id)a5
{
  v8 = a5;
  db = self->super._db;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __105__BRCReadWriteServerDatabaseFacade_updateParticipantsForSharedItemID_zoneRowID_paticipantFlagsCallblock___block_invoke;
  v18 = &unk_278506588;
  v19 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = MEMORY[0x22AA4A310](&v15);
  LOBYTE(db) = [(BRCPQLConnection *)db execute:@"UPDATE server_share_items_participants AS p SET participant_flags = call_block(%p, (SELECT u.user_name FROM users AS u WHERE u.user_key = p.user_key)) WHERE item_id = %@ AND zone_rowID = %@ ", v13, v12, v11, v15, v16, v17, v18];

  return db;
}

void __105__BRCReadWriteServerDatabaseFacade_updateParticipantsForSharedItemID_zoneRowID_paticipantFlagsCallblock___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_value_text(*a4)];
  v6 = (*(*(a1 + 32) + 16))();
  sqlite3_result_int64(a2, v6);
}

@end