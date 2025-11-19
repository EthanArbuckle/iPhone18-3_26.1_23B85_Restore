@interface AirQualityScaleProxyRequest
- (void)encodeWithCoder:(id)a3;
@end

@implementation AirQualityScaleProxyRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AirQualityScaleProxyRequest.encode(with:)(v4);
}

@end