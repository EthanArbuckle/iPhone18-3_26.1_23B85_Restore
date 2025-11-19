@interface WBSSiteMetadataManager
- (unint64_t)_numberOfConcurrentRequests;
@end

@implementation WBSSiteMetadataManager

- (unint64_t)_numberOfConcurrentRequests
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  if ([v2 processorCount] == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

@end