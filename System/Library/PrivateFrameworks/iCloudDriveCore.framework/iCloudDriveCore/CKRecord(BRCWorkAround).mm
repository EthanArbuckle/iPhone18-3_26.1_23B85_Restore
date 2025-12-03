@interface CKRecord(BRCWorkAround)
+ (id)brc_fakeRecordWithErrorMarkerFor20716676;
- (uint64_t)brc_isfakeRecordWithErrorMarkerFor20716676;
@end

@implementation CKRecord(BRCWorkAround)

+ (id)brc_fakeRecordWithErrorMarkerFor20716676
{
  v0 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"BRCFakeRecordWithErrorMarkerFor20716676"];

  return v0;
}

- (uint64_t)brc_isfakeRecordWithErrorMarkerFor20716676
{
  recordType = [self recordType];
  v2 = [recordType isEqualToString:@"BRCFakeRecordWithErrorMarkerFor20716676"];

  return v2;
}

@end