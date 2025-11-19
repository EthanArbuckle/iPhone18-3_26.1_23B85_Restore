@interface NSURLRequest
- (BOOL)hasRecursiveRequestFlag;
- (BOOL)recursiveRequestFlag;
- (int64_t)requestType;
@end

@implementation NSURLRequest

- (BOOL)recursiveRequestFlag
{
  v2 = [NSURLProtocol propertyForKey:@"com.apple.ap.pc.proxy-is-recursive" inRequest:self];
  v3 = [v2 BOOLValue];

  return v3;
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
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end