@interface NSURLRequest
- (BOOL)hasRecursiveRequestFlag;
- (BOOL)recursiveRequestFlag;
- (int64_t)requestType;
@end

@implementation NSURLRequest

- (BOOL)recursiveRequestFlag
{
  v2 = [NSURLProtocol propertyForKey:@"com.apple.ap.pc.proxy-is-recursive" inRequest:self];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasRecursiveRequestFlag
{
  v2 = [NSURLProtocol propertyForKey:@"com.apple.ap.pc.proxy-is-recursive" inRequest:self];
  v3 = v2 != 0;

  return v3;
}

- (int64_t)requestType
{
  v2 = [NSURLProtocol propertyForKey:@"requestType" inRequest:self];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

@end