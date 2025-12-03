@interface WeatherDataProxyResponse
- (void)encodeWithCoder:(id)coder;
@end

@implementation WeatherDataProxyResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  WeatherDataProxyResponse.encode(with:)(coderCopy);
}

@end