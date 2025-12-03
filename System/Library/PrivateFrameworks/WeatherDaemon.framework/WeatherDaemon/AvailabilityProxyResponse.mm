@interface AvailabilityProxyResponse
- (void)encodeWithCoder:(id)coder;
@end

@implementation AvailabilityProxyResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AvailabilityProxyResponse.encode(with:)(coderCopy);
}

@end