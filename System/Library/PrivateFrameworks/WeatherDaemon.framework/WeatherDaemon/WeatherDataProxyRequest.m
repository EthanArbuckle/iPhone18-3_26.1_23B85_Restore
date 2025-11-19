@interface WeatherDataProxyRequest
- (void)encodeWithCoder:(id)a3;
@end

@implementation WeatherDataProxyRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  WeatherDataProxyRequest.encode(with:)(v4);
}

@end