@interface AvailabilityProxyRequest
- (void)encodeWithCoder:(id)coder;
@end

@implementation AvailabilityProxyRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AvailabilityProxyRequest.encode(with:)(coderCopy);
}

@end