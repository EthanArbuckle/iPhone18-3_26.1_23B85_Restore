@interface CKRecordID(WBSCKRecordIDExtras)
- (uint64_t)safari_isInPrivateDatabase;
@end

@implementation CKRecordID(WBSCKRecordIDExtras)

- (uint64_t)safari_isInPrivateDatabase
{
  v1 = [a1 zoneID];
  v2 = [v1 ownerName];
  v3 = [v2 isEqualToString:*MEMORY[0x1E695B728]];

  return v3;
}

@end