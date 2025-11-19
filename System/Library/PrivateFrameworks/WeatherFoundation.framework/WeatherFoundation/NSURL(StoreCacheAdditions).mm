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
  if (wf__inMemoryAddress == a1)
  {
    return 1;
  }

  v1 = [a1 scheme];
  v2 = [v1 isEqualToString:@"memory"];

  return v2;
}

@end