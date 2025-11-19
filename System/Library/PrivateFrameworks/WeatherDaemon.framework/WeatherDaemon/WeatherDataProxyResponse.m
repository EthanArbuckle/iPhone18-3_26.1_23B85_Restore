@interface WeatherDataProxyResponse
- (void)encodeWithCoder:(id)a3;
@end

@implementation WeatherDataProxyResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  WeatherDataProxyResponse.encode(with:)(v4);
}

@end