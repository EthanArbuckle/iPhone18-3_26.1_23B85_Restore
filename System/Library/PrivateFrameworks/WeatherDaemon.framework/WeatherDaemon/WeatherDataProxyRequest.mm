@interface WeatherDataProxyRequest
- (void)encodeWithCoder:(id)coder;
@end

@implementation WeatherDataProxyRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  WeatherDataProxyRequest.encode(with:)(coderCopy);
}

@end