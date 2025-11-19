@interface STSInAppPaymentRequest
- (STSInAppPaymentRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSInAppPaymentRequest

- (STSInAppPaymentRequest)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = STSInAppPaymentRequest;
  return [(STSPaymentRequestBase *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = STSInAppPaymentRequest;
  [(STSPaymentRequestBase *)&v3 encodeWithCoder:a3];
}

@end