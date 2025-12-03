@interface WBSSiteMetadataManager
- (unint64_t)_numberOfConcurrentRequests;
@end

@implementation WBSSiteMetadataManager

- (unint64_t)_numberOfConcurrentRequests
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  if ([processInfo processorCount] == 1)
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