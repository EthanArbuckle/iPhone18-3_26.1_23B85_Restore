@interface CKRecordID(SYD)
- (id)syd_shortDescription;
@end

@implementation CKRecordID(SYD)

- (id)syd_shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  recordName = [self recordName];
  zoneID = [self zoneID];
  zoneName = [zoneID zoneName];
  v6 = [v2 stringWithFormat:@"<CKRecordID recordName=%@ zone=%@>", recordName, zoneName];

  return v6;
}

@end