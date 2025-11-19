@interface CKRecordZoneID(WBSCKRecordZoneIDExtras)
+ (id)safari_bookmarksRecordZoneID;
+ (id)safari_tabGroupSecondaryRecordZoneIDWithRootRecordName:()WBSCKRecordZoneIDExtras;
+ (id)safari_tabGroupsRecordZoneID;
- (id)safari_tabGroupRootRecordName;
- (uint64_t)safari_isInPrivateDatabase;
- (uint64_t)safari_isTabGroupSecondaryRecordZoneID;
@end

@implementation CKRecordZoneID(WBSCKRecordZoneIDExtras)

+ (id)safari_bookmarksRecordZoneID
{
  if (safari_bookmarksRecordZoneID_onceToken != -1)
  {
    +[CKRecordZoneID(WBSCKRecordZoneIDExtras) safari_bookmarksRecordZoneID];
  }

  v1 = safari_bookmarksRecordZoneID_zoneID;

  return v1;
}

+ (id)safari_tabGroupsRecordZoneID
{
  if (safari_tabGroupsRecordZoneID_onceToken != -1)
  {
    +[CKRecordZoneID(WBSCKRecordZoneIDExtras) safari_tabGroupsRecordZoneID];
  }

  v1 = safari_tabGroupsRecordZoneID_zoneID;

  return v1;
}

+ (id)safari_tabGroupSecondaryRecordZoneIDWithRootRecordName:()WBSCKRecordZoneIDExtras
{
  v4 = MEMORY[0x1E695BA98];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [a1 safari_tabGroupSecondaryRecordZoneNameWithRootRecordName:v5];

  v8 = [v6 initWithZoneName:v7 ownerName:*MEMORY[0x1E695B730]];

  return v8;
}

- (uint64_t)safari_isTabGroupSecondaryRecordZoneID
{
  v1 = [a1 zoneName];
  v2 = [v1 hasPrefix:@"TabGroup_"];

  return v2;
}

- (id)safari_tabGroupRootRecordName
{
  v1 = [a1 zoneName];
  v2 = [v1 safari_substringFromPrefix:@"TabGroup_"];

  return v2;
}

- (uint64_t)safari_isInPrivateDatabase
{
  v1 = [a1 ownerName];
  v2 = [v1 isEqualToString:*MEMORY[0x1E695B730]];

  return v2;
}

@end