@interface AirQualityScaleProxyResponse
- (void)encodeWithCoder:(id)coder;
@end

@implementation AirQualityScaleProxyResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AirQualityScaleProxyResponse.encode(with:)(coderCopy);
}

@end