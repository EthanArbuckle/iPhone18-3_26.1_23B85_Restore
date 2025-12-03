@interface NSValue(TSMSGExternalSyncConfig)
- (uint64_t)TSMSGExternalSyncConfigValue;
@end

@implementation NSValue(TSMSGExternalSyncConfig)

- (uint64_t)TSMSGExternalSyncConfigValue
{
  *(x8_0 + 96) = 0;
  *(x8_0 + 64) = 0u;
  *(x8_0 + 80) = 0u;
  *(x8_0 + 32) = 0u;
  *(x8_0 + 48) = 0u;
  *x8_0 = 0u;
  *(x8_0 + 16) = 0u;
  return [self getValue:x8_0];
}

@end