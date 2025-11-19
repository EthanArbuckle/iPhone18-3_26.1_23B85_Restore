@interface NSString(SRDeletionRecord)
- (uint64_t)sr_sensorForDeletionRecordsFromSensor;
@end

@implementation NSString(SRDeletionRecord)

- (uint64_t)sr_sensorForDeletionRecordsFromSensor
{
  if ([a1 hasSuffix:@".tombstones"])
  {
    return 0;
  }

  return [a1 stringByAppendingString:@".tombstones"];
}

@end