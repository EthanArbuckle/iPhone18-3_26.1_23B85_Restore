@interface PKVirtualCardEnrollmentResponse
- (PKVirtualCardEnrollmentResponse)initWithData:(id)a3;
@end

@implementation PKVirtualCardEnrollmentResponse

- (PKVirtualCardEnrollmentResponse)initWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKVirtualCardEnrollmentResponse;
  return [(PKPaymentRewrapResponseBase *)&v4 initWithData:a3];
}

@end