@interface NSError(HKSPXPCConnectionProvider)
- (BOOL)hksp_shouldRetryMessage;
@end

@implementation NSError(HKSPXPCConnectionProvider)

- (BOOL)hksp_shouldRetryMessage
{
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CCA050]];

  return v3 && ([self code] & 0xFFFFFFFFFFFFFFFDLL) == 4097;
}

@end