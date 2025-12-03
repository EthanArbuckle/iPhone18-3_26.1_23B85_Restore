@interface NSURL(SSURLAdditions)
- (uint64_t)isStoreServicesURL;
@end

@implementation NSURL(SSURLAdditions)

- (uint64_t)isStoreServicesURL
{
  result = [self scheme];
  if (result)
  {
    return [objc_msgSend(self "scheme")] == 0;
  }

  return result;
}

@end