@interface NSDictionary(SUPPT)
- (NSString)setupSelector;
- (NSString)testSelector;
- (uint64_t)iterations;
- (uint64_t)offset;
@end

@implementation NSDictionary(SUPPT)

- (uint64_t)iterations
{
  v1 = [a1 objectForKey:@"iterations"];

  return [v1 intValue];
}

- (uint64_t)offset
{
  v1 = [a1 objectForKey:@"offset"];

  return [v1 floatValue];
}

- (NSString)setupSelector
{
  result = [a1 objectForKey:@"setupSelector"];
  if (result)
  {

    return NSSelectorFromString(result);
  }

  return result;
}

- (NSString)testSelector
{
  result = [a1 objectForKey:@"testSelector"];
  if (result)
  {

    return NSSelectorFromString(result);
  }

  return result;
}

@end