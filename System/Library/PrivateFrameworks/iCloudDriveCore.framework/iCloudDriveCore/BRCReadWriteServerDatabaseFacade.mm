@interface BRCReadWriteServerDatabaseFacade
- (BOOL)doesParticipantExistForItemID:(id)d zoneRowID:(id)iD userName:(id)name;
- (BOOL)insertOrReplaceParticipantForSharedItemID:(id)d zoneRowID:(id)iD participantUserName:(id)name shareParticipantsOptions:(unint64_t)options;
- (BOOL)saveServerZone:(id)zone;
- (BOOL)updateParticipantsForSharedItemID:(id)d zoneRowID:(id)iD paticipantFlagsCallblock:(id)callblock;
- (BOOL)updateServerItemWithSideCarInfo:(id)info sideCarInfo:(id)carInfo zoneRowID:(id)d;
- (BRCReadWriteServerDatabaseFacade)initWithDB:(id)b workloop:(id)workloop;
- (id)createDeviceKeyForName:(id)name;
- (id)getOrCreateUserKeyForOwnerName:(id)name;
- (void)insertSideCarLookAheadInfo:(id)info shareRecordName:(id)name sideCarInfo:(id)carInfo;
- (void)setUserIdentityForUserName:(id)name userIdentity:(id)identity;
@end

@implementation BRCReadWriteServerDatabaseFacade

- (BRCReadWriteServerDatabaseFacade)initWithDB:(id)b workloop:(id)workloop
{
  v5.receiver = self;
  v5.super_class = BRCReadWriteServerDatabaseFacade;
  return [(BRCDatabaseFacade *)&v5 _initWithDB:b workloop:workloop];
}

- (BOOL)saveServerZone:(id)zone
{
  zoneCopy = zone;
  dbRowID = [zoneCopy dbRowID];

  if (!dbRowID)
  {
    [BRCReadWriteServerDatabaseFacade saveServerZone:];
  }

  db = self->super._db;
  plist = [zoneCopy plist];
  dbRowID2 = [zoneCopy dbRowID];
  v9 = [(BRCPQLConnection *)db execute:@"UPDATE server_zones SET zone_plist = %@ WHERE rowid = %@", plist, dbRowID2];

  if (v9)
  {
    [zoneCopy setNeedsSave:0];
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

- (id)getOrCreateUserKeyForOwnerName:(id)name
{
  v29 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (nameCopy)
  {
    v5 = [(BRCDatabaseFacade *)self userKeyForOwnerName:nameCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      v6 = v7;
LABEL_11:
      v17 = v7;
      goto LABEL_16;
    }

    if ([(BRCPQLConnection *)self->super._db execute:@"INSERT INTO users (user_name) VALUES (%@)", nameCopy])
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
      lastError = [(BRCPQLConnection *)self->super._db lastError];
      *buf = 138412802;
      v24 = nameCopy;
      v25 = 2112;
      v26 = lastError;
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

- (id)createDeviceKeyForName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v5 = [(BRCDatabaseFacade *)self deviceKeyForName:nameCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v6 = v7;
  }

  else
  {
    if (![(BRCPQLConnection *)self->super._db execute:@"INSERT INTO devices (name) VALUES (%@)", nameCopy])
    {
      v6 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(BRCReadWriteServerDatabaseFacade *)nameCopy createDeviceKeyForName:v6, v12];
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

- (void)setUserIdentityForUserName:(id)name userIdentity:(id)identity
{
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identityCopy = identity;
  v8 = [(BRCReadWriteServerDatabaseFacade *)self getOrCreateUserKeyForOwnerName:nameCopy];
  nameCopy = [(BRCPQLConnection *)self->super._db execute:@"UPDATE users SET user_plist = %@ WHERE user_name = %@", identityCopy, nameCopy];

  if (!nameCopy)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      lastError = [(BRCPQLConnection *)self->super._db lastError];
      *buf = 138412802;
      v23 = nameCopy;
      v24 = 2112;
      v25 = lastError;
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

- (void)insertSideCarLookAheadInfo:(id)info shareRecordName:(id)name sideCarInfo:(id)carInfo
{
  carInfoCopy = carInfo;
  nameCopy = name;
  infoCopy = info;
  if ([carInfoCopy favoriteRank])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(carInfoCopy, "favoriteRank")}];
  }

  else
  {
    v10 = 0;
  }

  if ([carInfoCopy lastUsedTime])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(carInfoCopy, "lastUsedTime")}];
  }

  else
  {
    v11 = 0;
  }

  finderTags = [carInfoCopy finderTags];
  db = self->super._db;
  ckInfo = [carInfoCopy ckInfo];
  [(BRCPQLConnection *)db execute:@"INSERT OR REPLACE INTO side_car_lookahead (record_name, root_alias_record_name, item_favoriterank, item_lastusedtime, item_side_car_ckinfo, item_finder_tags) VALUES (%@, %@, %@, %@, %@, %@)", infoCopy, nameCopy, v10, v11, ckInfo, finderTags];
}

- (BOOL)updateServerItemWithSideCarInfo:(id)info sideCarInfo:(id)carInfo zoneRowID:(id)d
{
  carInfoCopy = carInfo;
  dCopy = d;
  infoCopy = info;
  if ([carInfoCopy favoriteRank])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(carInfoCopy, "favoriteRank")}];
  }

  else
  {
    v11 = 0;
  }

  if ([carInfoCopy lastUsedTime])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(carInfoCopy, "lastUsedTime")}];
  }

  else
  {
    v12 = 0;
  }

  finderTags = [carInfoCopy finderTags];
  db = self->super._db;
  ckInfo = [carInfoCopy ckInfo];
  [(BRCPQLConnection *)db execute:@"UPDATE server_items SET item_favoriterank = %@, item_lastusedtime = %@, item_finder_tags = %@, item_side_car_ckinfo = %@, item_rank = NULL WHERE zone_rowid = %@ AND item_id = %@", v11, v12, finderTags, ckInfo, dCopy, infoCopy];

  v16 = [(BRCPQLConnection *)self->super._db changes]!= 0;
  return v16;
}

- (BOOL)insertOrReplaceParticipantForSharedItemID:(id)d zoneRowID:(id)iD participantUserName:(id)name shareParticipantsOptions:(unint64_t)options
{
  dCopy = d;
  iDCopy = iD;
  v12 = [(BRCReadWriteServerDatabaseFacade *)self getOrCreateUserKeyForOwnerName:name];
  if (v12)
  {
    options = [(BRCPQLConnection *)self->super._db execute:@"INSERT OR REPLACE INTO server_share_items_participants (user_key, item_id, zone_rowid, participant_flags) VALUES(%@, %@, %@, %lu)", v12, dCopy, iDCopy, options];
  }

  else
  {
    options = 0;
  }

  return options;
}

- (BOOL)doesParticipantExistForItemID:(id)d zoneRowID:(id)iD userName:(id)name
{
  name = [(BRCPQLConnection *)self->super._db fetch:@"SELECT 1  FROM server_share_items_participants AS p   INNER JOIN users AS u  WHERE p.item_id = %@ AND p.zone_rowid = %@ AND u.user_name = %@ AND u.user_key = p.user_key", d, iD, name];
  next = [name next];

  return next;
}

- (BOOL)updateParticipantsForSharedItemID:(id)d zoneRowID:(id)iD paticipantFlagsCallblock:(id)callblock
{
  callblockCopy = callblock;
  db = self->super._db;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __105__BRCReadWriteServerDatabaseFacade_updateParticipantsForSharedItemID_zoneRowID_paticipantFlagsCallblock___block_invoke;
  v18 = &unk_278506588;
  v19 = callblockCopy;
  v10 = callblockCopy;
  iDCopy = iD;
  dCopy = d;
  v13 = MEMORY[0x22AA4A310](&v15);
  LOBYTE(db) = [(BRCPQLConnection *)db execute:@"UPDATE server_share_items_participants AS p SET participant_flags = call_block(%p, (SELECT u.user_name FROM users AS u WHERE u.user_key = p.user_key)) WHERE item_id = %@ AND zone_rowID = %@ ", v13, dCopy, iDCopy, v15, v16, v17, v18];

  return db;
}

void __105__BRCReadWriteServerDatabaseFacade_updateParticipantsForSharedItemID_zoneRowID_paticipantFlagsCallblock___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_value_text(*a4)];
  v6 = (*(*(a1 + 32) + 16))();
  sqlite3_result_int64(a2, v6);
}

@end