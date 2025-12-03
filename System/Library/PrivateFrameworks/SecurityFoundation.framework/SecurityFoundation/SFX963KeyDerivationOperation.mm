@interface SFX963KeyDerivationOperation
- (SFDigestOperation)digestOperation;
- (SFKeyDerivingOperation)sharedSecretOperation;
- (SFX963KeyDerivationOperation)init;
- (SFX963KeyDerivationOperation)initWithCoder:(id)coder;
- (SFX963KeyDerivationOperation)initWithSharedSecretOperation:(id)operation;
- (SFX963KeyDerivationOperation)initWithSharedSecretOperation:(id)operation digestOperation:(id)digestOperation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDigestOperation:(id)operation;
- (void)setSharedSecretOperation:(id)operation;
@end

@implementation SFX963KeyDerivationOperation

- (SFX963KeyDerivationOperation)init
{
  v3 = +[_SFECDHOperation _defaultOperation];
  v4 = [(SFX963KeyDerivationOperation *)self initWithSharedSecretOperation:v3];

  return v4;
}

- (SFX963KeyDerivationOperation)initWithSharedSecretOperation:(id)operation
{
  operationCopy = operation;
  v5 = _defaultDigestOperation();
  v6 = [(SFX963KeyDerivationOperation *)self initWithSharedSecretOperation:operationCopy digestOperation:v5];

  return v6;
}

- (SFX963KeyDerivationOperation)initWithSharedSecretOperation:(id)operation digestOperation:(id)digestOperation
{
  operationCopy = operation;
  digestOperationCopy = digestOperation;
  v12.receiver = self;
  v12.super_class = SFX963KeyDerivationOperation;
  v9 = [(SFX963KeyDerivationOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9->_x963KeyDerivationOperationInternal + 1, operation);
    objc_storeStrong(v10->_x963KeyDerivationOperationInternal + 2, digestOperation);
  }

  return v10;
}

- (SFX963KeyDerivationOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFX963KeyDerivationOperation;
  return [(SFX963KeyDerivationOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  x963KeyDerivationOperationInternal = selfCopy->_x963KeyDerivationOperationInternal;
  v5 = x963KeyDerivationOperationInternal[1];
  v6 = x963KeyDerivationOperationInternal[2];

  return [(SFX963KeyDerivationOperation *)selfCopy initWithSharedSecretOperation:v5 digestOperation:v6];
}

- (SFKeyDerivingOperation)sharedSecretOperation
{
  v2 = [*(self->_x963KeyDerivationOperationInternal + 1) copyWithZone:0];

  return v2;
}

- (void)setSharedSecretOperation:(id)operation
{
  v4 = [operation copyWithZone:0];
  x963KeyDerivationOperationInternal = self->_x963KeyDerivationOperationInternal;
  v6 = x963KeyDerivationOperationInternal[1];
  x963KeyDerivationOperationInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

- (SFDigestOperation)digestOperation
{
  v2 = [*(self->_x963KeyDerivationOperationInternal + 2) copyWithZone:0];

  return v2;
}

- (void)setDigestOperation:(id)operation
{
  v4 = [operation copyWithZone:0];
  x963KeyDerivationOperationInternal = self->_x963KeyDerivationOperationInternal;
  v6 = x963KeyDerivationOperationInternal[2];
  x963KeyDerivationOperationInternal[2] = v4;

  MEMORY[0x2821F96F8]();
}

@end