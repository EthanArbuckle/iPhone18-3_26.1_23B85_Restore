@interface CKRecordID(SYD)
- (id)syd_shortDescription;
@end

@implementation CKRecordID(SYD)

- (id)syd_shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 recordName];
  v4 = [a1 zoneID];
  v5 = [v4 zoneName];
  v6 = [v2 stringWithFormat:@"<CKRecordID recordName=%@ zone=%@>", v3, v5];

  return v6;
}

@end