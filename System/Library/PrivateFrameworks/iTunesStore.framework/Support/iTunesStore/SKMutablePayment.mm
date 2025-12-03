@interface SKMutablePayment
- (void)setApplicationUsername:(NSString *)applicationUsername;
- (void)setPartnerIdentifier:(id)identifier;
- (void)setPartnerTransactionIdentifier:(id)identifier;
- (void)setPaymentDiscount:(SKPaymentDiscount *)paymentDiscount;
- (void)setProductIdentifier:(NSString *)productIdentifier;
- (void)setRequestData:(NSData *)requestData;
- (void)setRequestParameters:(id)parameters;
@end

@implementation SKMutablePayment

- (void)setApplicationUsername:(NSString *)applicationUsername
{
  internal = self->super._internal;
  if (internal[1] != applicationUsername)
  {
    v7 = internal;
    v5 = [(NSString *)applicationUsername copy];
    v6 = internal[1];
    internal[1] = v5;
  }
}

- (void)setProductIdentifier:(NSString *)productIdentifier
{
  internal = self->super._internal;
  if (internal[4] != productIdentifier)
  {
    v7 = internal;
    v5 = [(NSString *)productIdentifier copy];
    v6 = internal[4];
    internal[4] = v5;
  }
}

- (void)setRequestData:(NSData *)requestData
{
  v9 = requestData;
  if ([(NSData *)v9 length]> 0x2000)
  {
    [NSException raise:NSInvalidArgumentException format:@"The request data must be less than %d bytes", 0x2000];
  }

  internal = self->super._internal;
  v5 = v9;
  if (internal[6] != v9)
  {
    v6 = internal;
    v7 = [(NSData *)v9 copy];
    v8 = internal[6];
    internal[6] = v7;

    v5 = v9;
  }
}

- (void)setPaymentDiscount:(SKPaymentDiscount *)paymentDiscount
{
  objc_storeStrong(self->super._internal + 9, paymentDiscount);
  v4 = paymentDiscount;
}

- (void)setPartnerIdentifier:(id)identifier
{
  internal = self->super._internal;
  if (internal[2] != identifier)
  {
    v7 = internal;
    v5 = [identifier copy];
    v6 = internal[2];
    internal[2] = v5;
  }
}

- (void)setPartnerTransactionIdentifier:(id)identifier
{
  internal = self->super._internal;
  if (internal[3] != identifier)
  {
    v7 = internal;
    v5 = [identifier copy];
    v6 = internal[3];
    internal[3] = v5;
  }
}

- (void)setRequestParameters:(id)parameters
{
  internal = self->super._internal;
  if (internal[7] != parameters)
  {
    v7 = internal;
    v5 = [parameters copy];
    v6 = internal[7];
    internal[7] = v5;
  }
}

@end