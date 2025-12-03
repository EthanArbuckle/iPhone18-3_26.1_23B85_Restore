@interface NSURL(StoreCacheAdditions)
+ (id)wf_inMemoryAddress;
- (uint64_t)wf_isInMemoryAddress;
@end

@implementation NSURL(StoreCacheAdditions)

+ (id)wf_inMemoryAddress
{
  if (wf_inMemoryAddress_onceToken != -1)
  {
    +[NSURL(StoreCacheAdditions) wf_inMemoryAddress];
  }

  v1 = wf__inMemoryAddress;

  return v1;
}

- (uint64_t)wf_isInMemoryAddress
{
  if (wf__inMemoryAddress == self)
  {
    return 1;
  }

  scheme = [self scheme];
  v2 = [scheme isEqualToString:@"memory"];

  return v2;
}

@end