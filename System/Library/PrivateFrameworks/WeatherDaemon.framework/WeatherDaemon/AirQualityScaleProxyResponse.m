@interface AirQualityScaleProxyResponse
- (void)encodeWithCoder:(id)a3;
@end

@implementation AirQualityScaleProxyResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AirQualityScaleProxyResponse.encode(with:)(v4);
}

@end