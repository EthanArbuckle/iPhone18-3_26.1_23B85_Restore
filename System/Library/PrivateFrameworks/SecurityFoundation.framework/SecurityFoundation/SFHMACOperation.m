@interface SFHMACOperation
- (SFDigestOperation)digestOperation;
- (SFHMACOperation)init;
- (SFHMACOperation)initWithCoder:(id)a3;
- (SFHMACOperation)initWithDigestOperation:(id)a3;
- (void)setDigestOperation:(id)a3;
@end

@implementation SFHMACOperation

- (SFHMACOperation)init
{
  v3 = _defaultDigestOperation();
  v4 = [(SFHMACOperation *)self initWithDigestOperation:v3];

  return v4;
}

- (SFHMACOperation)initWithDigestOperation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SFHMACOperation;
  v6 = [(SFMessageAuthenticationCodeOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6->_hmacOperationInternal + 1, a3);
  }

  return v7;
}

- (SFHMACOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFHMACOperation;
  return [(SFMessageAuthenticationCodeOperation *)&v4 initWithCoder:a3];
}

- (SFDigestOperation)digestOperation
{
  v2 = [*(self->_hmacOperationInternal + 1) copyWithZone:0];

  return v2;
}

- (void)setDigestOperation:(id)a3
{
  v4 = [a3 copyWithZone:0];
  hmacOperationInternal = self->_hmacOperationInternal;
  v6 = hmacOperationInternal[1];
  hmacOperationInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

@end