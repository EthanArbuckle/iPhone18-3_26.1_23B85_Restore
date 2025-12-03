@interface CKRecordID(WBSCKRecordIDExtras)
- (uint64_t)safari_isInPrivateDatabase;
@end

@implementation CKRecordID(WBSCKRecordIDExtras)

- (uint64_t)safari_isInPrivateDatabase
{
  zoneID = [self zoneID];
  ownerName = [zoneID ownerName];
  v3 = [ownerName isEqualToString:*MEMORY[0x1E695B728]];

  return v3;
}

@end