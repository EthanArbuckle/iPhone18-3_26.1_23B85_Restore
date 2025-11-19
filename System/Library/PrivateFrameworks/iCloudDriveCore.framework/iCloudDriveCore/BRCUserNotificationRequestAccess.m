@interface BRCUserNotificationRequestAccess
- (BRCUserNotificationRequestAccess)initWithCKShare:(id)a3 userRecordName:(id)a4 accountID:(id)a5;
- (BRCUserNotificationRequestAccess)initWithRecordName:(id)a3 zoneName:(id)a4 ownerName:(id)a5 userRecordName:(id)a6 accountID:(id)a7;
@end

@implementation BRCUserNotificationRequestAccess

- (BRCUserNotificationRequestAccess)initWithRecordName:(id)a3 zoneName:(id)a4 ownerName:(id)a5 userRecordName:(id)a6 accountID:(id)a7
{
  v13 = a3;
  v24 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (v13 && v24 && v14 && v15 && v16)
  {
    v25.receiver = self;
    v25.super_class = BRCUserNotificationRequestAccess;
    v18 = [(BRCUserNotificationRequestAccess *)&v25 init];
    p_isa = &v18->super.isa;
    if (v18)
    {
      objc_storeStrong(&v18->_recordName, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
      objc_storeStrong(p_isa + 4, a6);
      objc_storeStrong(p_isa + 5, a7);
    }

    self = p_isa;
    v20 = self;
  }

  else
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [BRCUserNotificationRequestAccess initWithRecordName:zoneName:ownerName:userRecordName:accountID:];
    }

    v20 = 0;
  }

  return v20;
}

- (BRCUserNotificationRequestAccess)initWithCKShare:(id)a3 userRecordName:(id)a4 accountID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v20 = [v9 recordID];
  v10 = [v20 recordName];
  v11 = [v9 recordID];
  v12 = [v11 zoneID];
  v13 = [v12 zoneName];
  v14 = [v9 recordID];

  v15 = [v14 zoneID];
  v16 = [v15 ownerName];
  v17 = [(BRCUserNotificationRequestAccess *)self initWithRecordName:v10 zoneName:v13 ownerName:v16 userRecordName:v8 accountID:v7];

  return v17;
}

- (void)initWithRecordName:zoneName:ownerName:userRecordName:accountID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Cannot initialize share request ID without critical params%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end