@interface PKVirtualCardEnrollmentResponse
- (PKVirtualCardEnrollmentResponse)initWithData:(id)data;
@end

@implementation PKVirtualCardEnrollmentResponse

- (PKVirtualCardEnrollmentResponse)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = PKVirtualCardEnrollmentResponse;
  return [(PKPaymentRewrapResponseBase *)&v4 initWithData:data];
}

@end