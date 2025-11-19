@interface SFHMACPseudoRandomFunction
- (SFDigestOperation)digestOperation;
- (SFHMACPseudoRandomFunction)init;
- (SFHMACPseudoRandomFunction)initWithCoder:(id)a3;
- (SFHMACPseudoRandomFunction)initWithDigestOperation:(id)a3;
- (void)setDigestOperation:(id)a3;
@end

@implementation SFHMACPseudoRandomFunction

- (SFHMACPseudoRandomFunction)init
{
  v3 = objc_alloc_init(_SFSHA256DigestOperation);
  v4 = [(SFHMACPseudoRandomFunction *)self initWithDigestOperation:v3];

  return v4;
}

- (SFHMACPseudoRandomFunction)initWithDigestOperation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SFHMACPseudoRandomFunction;
  v6 = [(SFHMACPseudoRandomFunction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6->_hmacPseudoRandomFunctionInternal + 1, a3);
  }

  return v7;
}

- (SFHMACPseudoRandomFunction)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFHMACPseudoRandomFunction;
  return [(SFHMACPseudoRandomFunction *)&v4 init];
}

- (SFDigestOperation)digestOperation
{
  v2 = [*(self->_hmacPseudoRandomFunctionInternal + 1) copyWithZone:0];

  return v2;
}

- (void)setDigestOperation:(id)a3
{
  v4 = [a3 copyWithZone:0];
  hmacPseudoRandomFunctionInternal = self->_hmacPseudoRandomFunctionInternal;
  v6 = hmacPseudoRandomFunctionInternal[1];
  hmacPseudoRandomFunctionInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

@end