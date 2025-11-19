@interface SFRSASigningOperation
- (SFDigestOperation)digestOperation;
- (SFRSASigningOperation)init;
- (SFRSASigningOperation)initWithCoder:(id)a3;
- (SFRSASigningOperation)initWithKeySpecifier:(id)a3;
- (SFRSASigningOperation)initWithKeySpecifier:(id)a3 digestOperation:(id)a4;
- (_SFRSAKeySpecifier)signingKeySpecifier;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDigestOperation:(id)a3;
- (void)setSigningKeySpecifier:(id)a3;
@end

@implementation SFRSASigningOperation

- (SFRSASigningOperation)init
{
  v3 = [[_SFRSAKeySpecifier alloc] initWithBitSize:2048];
  v4 = [(SFRSASigningOperation *)self initWithKeySpecifier:v3];

  return v4;
}

- (SFRSASigningOperation)initWithKeySpecifier:(id)a3
{
  v4 = a3;
  v5 = _defaultDigestOperation();
  v6 = [(SFRSASigningOperation *)self initWithKeySpecifier:v4 digestOperation:v5];

  return v6;
}

- (SFRSASigningOperation)initWithKeySpecifier:(id)a3 digestOperation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SFRSASigningOperation;
  v9 = [(SFRSASigningOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9->_rsaSigningOperationInternal + 1, a3);
    objc_storeStrong(v10->_rsaSigningOperationInternal + 2, a4);
  }

  return v10;
}

- (SFRSASigningOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFRSASigningOperation;
  return [(SFRSASigningOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  rsaSigningOperationInternal = self->_rsaSigningOperationInternal;
  v6 = rsaSigningOperationInternal[1];
  v7 = rsaSigningOperationInternal[2];

  return [v4 initWithKeySpecifier:v6 digestOperation:v7];
}

- (_SFRSAKeySpecifier)signingKeySpecifier
{
  v2 = [*(self->_rsaSigningOperationInternal + 1) copy];

  return v2;
}

- (void)setSigningKeySpecifier:(id)a3
{
  v4 = [a3 copy];
  rsaSigningOperationInternal = self->_rsaSigningOperationInternal;
  v6 = rsaSigningOperationInternal[1];
  rsaSigningOperationInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

- (SFDigestOperation)digestOperation
{
  v2 = [*(self->_rsaSigningOperationInternal + 2) copyWithZone:0];

  return v2;
}

- (void)setDigestOperation:(id)a3
{
  v4 = [a3 copyWithZone:0];
  rsaSigningOperationInternal = self->_rsaSigningOperationInternal;
  v6 = rsaSigningOperationInternal[2];
  rsaSigningOperationInternal[2] = v4;

  MEMORY[0x2821F96F8]();
}

@end