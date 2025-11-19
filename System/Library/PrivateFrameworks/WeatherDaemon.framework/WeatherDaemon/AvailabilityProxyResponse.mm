@interface AvailabilityProxyResponse
- (void)encodeWithCoder:(id)a3;
@end

@implementation AvailabilityProxyResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AvailabilityProxyResponse.encode(with:)(v4);
}

@end