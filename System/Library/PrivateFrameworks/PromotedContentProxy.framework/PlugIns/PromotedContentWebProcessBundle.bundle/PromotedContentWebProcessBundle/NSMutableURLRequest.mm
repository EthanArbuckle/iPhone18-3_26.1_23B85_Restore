@interface NSMutableURLRequest
- (void)setAdIdentifier:(id)identifier;
- (void)setMaximumRequestCount:(id)count;
- (void)setRequestType:(int64_t)type;
@end

@implementation NSMutableURLRequest

- (void)setMaximumRequestCount:(id)count
{
  if (count)
  {
    [NSURLProtocol setProperty:count forKey:@"maximumRequestCount" inRequest:self];
  }

  else
  {
    [NSURLProtocol removePropertyForKey:@"maximumRequestCount" inRequest:self];
  }
}

- (void)setAdIdentifier:(id)identifier
{
  if (identifier)
  {
    [NSURLProtocol setProperty:identifier forKey:@"adIdentifier" inRequest:self];
  }

  else
  {
    [NSURLProtocol removePropertyForKey:@"adIdentifier" inRequest:self];
  }
}

- (void)setRequestType:(int64_t)type
{
  v4 = [NSNumber numberWithInteger:type];
  [NSURLProtocol setProperty:v4 forKey:@"requestType" inRequest:self];
}

@end