@interface SFRSASigningOperation
- (SFDigestOperation)digestOperation;
- (SFRSASigningOperation)init;
- (SFRSASigningOperation)initWithCoder:(id)coder;
- (SFRSASigningOperation)initWithKeySpecifier:(id)specifier;
- (SFRSASigningOperation)initWithKeySpecifier:(id)specifier digestOperation:(id)operation;
- (_SFRSAKeySpecifier)signingKeySpecifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDigestOperation:(id)operation;
- (void)setSigningKeySpecifier:(id)specifier;
@end

@implementation SFRSASigningOperation

- (SFRSASigningOperation)init
{
  v3 = [[_SFRSAKeySpecifier alloc] initWithBitSize:2048];
  v4 = [(SFRSASigningOperation *)self initWithKeySpecifier:v3];

  return v4;
}

- (SFRSASigningOperation)initWithKeySpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = _defaultDigestOperation();
  v6 = [(SFRSASigningOperation *)self initWithKeySpecifier:specifierCopy digestOperation:v5];

  return v6;
}

- (SFRSASigningOperation)initWithKeySpecifier:(id)specifier digestOperation:(id)operation
{
  specifierCopy = specifier;
  operationCopy = operation;
  v12.receiver = self;
  v12.super_class = SFRSASigningOperation;
  v9 = [(SFRSASigningOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9->_rsaSigningOperationInternal + 1, specifier);
    objc_storeStrong(v10->_rsaSigningOperationInternal + 2, operation);
  }

  return v10;
}

- (SFRSASigningOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFRSASigningOperation;
  return [(SFRSASigningOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)setSigningKeySpecifier:(id)specifier
{
  v4 = [specifier copy];
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

- (void)setDigestOperation:(id)operation
{
  v4 = [operation copyWithZone:0];
  rsaSigningOperationInternal = self->_rsaSigningOperationInternal;
  v6 = rsaSigningOperationInternal[2];
  rsaSigningOperationInternal[2] = v4;

  MEMORY[0x2821F96F8]();
}

@end