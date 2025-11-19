@interface NSMutableURLRequest
- (void)setAdIdentifier:(id)a3;
- (void)setMaximumRequestCount:(id)a3;
- (void)setRequestType:(int64_t)a3;
@end

@implementation NSMutableURLRequest

- (void)setMaximumRequestCount:(id)a3
{
  if (a3)
  {
    [NSURLProtocol setProperty:a3 forKey:@"maximumRequestCount" inRequest:self];
  }

  else
  {
    [NSURLProtocol removePropertyForKey:@"maximumRequestCount" inRequest:self];
  }
}

- (void)setAdIdentifier:(id)a3
{
  if (a3)
  {
    [NSURLProtocol setProperty:a3 forKey:@"adIdentifier" inRequest:self];
  }

  else
  {
    [NSURLProtocol removePropertyForKey:@"adIdentifier" inRequest:self];
  }
}

- (void)setRequestType:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [NSURLProtocol setProperty:v4 forKey:@"requestType" inRequest:self];
}

@end