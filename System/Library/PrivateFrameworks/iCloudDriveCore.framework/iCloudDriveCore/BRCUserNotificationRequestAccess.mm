@interface BRCUserNotificationRequestAccess
- (BRCUserNotificationRequestAccess)initWithCKShare:(id)share userRecordName:(id)name accountID:(id)d;
- (BRCUserNotificationRequestAccess)initWithRecordName:(id)name zoneName:(id)zoneName ownerName:(id)ownerName userRecordName:(id)recordName accountID:(id)d;
@end

@implementation BRCUserNotificationRequestAccess

- (BRCUserNotificationRequestAccess)initWithRecordName:(id)name zoneName:(id)zoneName ownerName:(id)ownerName userRecordName:(id)recordName accountID:(id)d
{
  nameCopy = name;
  zoneNameCopy = zoneName;
  ownerNameCopy = ownerName;
  recordNameCopy = recordName;
  dCopy = d;
  v17 = dCopy;
  if (nameCopy && zoneNameCopy && ownerNameCopy && recordNameCopy && dCopy)
  {
    v25.receiver = self;
    v25.super_class = BRCUserNotificationRequestAccess;
    v18 = [(BRCUserNotificationRequestAccess *)&v25 init];
    p_isa = &v18->super.isa;
    if (v18)
    {
      objc_storeStrong(&v18->_recordName, name);
      objc_storeStrong(p_isa + 2, zoneName);
      objc_storeStrong(p_isa + 3, ownerName);
      objc_storeStrong(p_isa + 4, recordName);
      objc_storeStrong(p_isa + 5, d);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [BRCUserNotificationRequestAccess initWithRecordName:zoneName:ownerName:userRecordName:accountID:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BRCUserNotificationRequestAccess)initWithCKShare:(id)share userRecordName:(id)name accountID:(id)d
{
  dCopy = d;
  nameCopy = name;
  shareCopy = share;
  recordID = [shareCopy recordID];
  recordName = [recordID recordName];
  recordID2 = [shareCopy recordID];
  zoneID = [recordID2 zoneID];
  zoneName = [zoneID zoneName];
  recordID3 = [shareCopy recordID];

  zoneID2 = [recordID3 zoneID];
  ownerName = [zoneID2 ownerName];
  v17 = [(BRCUserNotificationRequestAccess *)self initWithRecordName:recordName zoneName:zoneName ownerName:ownerName userRecordName:nameCopy accountID:dCopy];

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