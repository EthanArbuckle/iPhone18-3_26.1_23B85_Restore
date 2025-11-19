@interface NSURL(SSURLAdditions)
- (uint64_t)isStoreServicesURL;
@end

@implementation NSURL(SSURLAdditions)

- (uint64_t)isStoreServicesURL
{
  result = [a1 scheme];
  if (result)
  {
    return [objc_msgSend(a1 "scheme")] == 0;
  }

  return result;
}

@end