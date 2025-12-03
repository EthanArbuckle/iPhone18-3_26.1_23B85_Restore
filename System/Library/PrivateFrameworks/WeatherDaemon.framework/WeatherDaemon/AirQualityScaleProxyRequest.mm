@interface AirQualityScaleProxyRequest
- (void)encodeWithCoder:(id)coder;
@end

@implementation AirQualityScaleProxyRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AirQualityScaleProxyRequest.encode(with:)(coderCopy);
}

@end