@interface AvailabilityProxyRequest
- (void)encodeWithCoder:(id)a3;
@end

@implementation AvailabilityProxyRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AvailabilityProxyRequest.encode(with:)(v4);
}

@end