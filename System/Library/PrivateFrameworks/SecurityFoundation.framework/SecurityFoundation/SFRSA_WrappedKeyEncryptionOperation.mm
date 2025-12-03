@interface SFRSA_WrappedKeyEncryptionOperation
- (SFRSAEncryptionOperation)keyWrappingOperation;
- (SFRSA_WrappedKeyEncryptionOperation)init;
- (SFRSA_WrappedKeyEncryptionOperation)initWithCoder:(id)coder;
- (SFRSA_WrappedKeyEncryptionOperation)initWithKeyWrappingOperation:(id)operation;
- (SFRSA_WrappedKeyEncryptionOperation)initWithKeyWrappingOperation:(id)operation sessionEncryptionOperation:(id)encryptionOperation;
- (SFSymmetricEncryptionOperation)sessionEncryptionOperation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setKeyWrappingOperation:(id)operation;
- (void)setSessionEncryptionOperation:(id)operation;
@end

@implementation SFRSA_WrappedKeyEncryptionOperation

- (SFRSA_WrappedKeyEncryptionOperation)init
{
  v3 = +[SFRSAEncryptionOperation _defaultEncryptionOperation];
  v4 = [(SFRSA_WrappedKeyEncryptionOperation *)self initWithKeyWrappingOperation:v3];

  return v4;
}

- (SFRSA_WrappedKeyEncryptionOperation)initWithKeyWrappingOperation:(id)operation
{
  operationCopy = operation;
  v5 = +[SFSymmetricEncryptionOperation _defaultEncryptionOperation];
  v6 = [(SFRSA_WrappedKeyEncryptionOperation *)self initWithKeyWrappingOperation:operationCopy sessionEncryptionOperation:v5];

  return v6;
}

- (SFRSA_WrappedKeyEncryptionOperation)initWithKeyWrappingOperation:(id)operation sessionEncryptionOperation:(id)encryptionOperation
{
  operationCopy = operation;
  encryptionOperationCopy = encryptionOperation;
  v12.receiver = self;
  v12.super_class = SFRSA_WrappedKeyEncryptionOperation;
  v9 = [(SFRSA_WrappedKeyEncryptionOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9->_wrappedKeyEncryptionOperationInternal + 1, operation);
    objc_storeStrong(v10->_wrappedKeyEncryptionOperationInternal + 2, encryptionOperation);
  }

  return v10;
}

- (SFRSA_WrappedKeyEncryptionOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFRSA_WrappedKeyEncryptionOperation;
  return [(SFRSA_WrappedKeyEncryptionOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  wrappedKeyEncryptionOperationInternal = self->_wrappedKeyEncryptionOperationInternal;
  v6 = wrappedKeyEncryptionOperationInternal[1];
  v7 = wrappedKeyEncryptionOperationInternal[2];

  return [v4 initWithKeyWrappingOperation:v6 sessionEncryptionOperation:v7];
}

- (SFRSAEncryptionOperation)keyWrappingOperation
{
  v2 = [*(self->_wrappedKeyEncryptionOperationInternal + 1) copy];

  return v2;
}

- (void)setKeyWrappingOperation:(id)operation
{
  v4 = [operation copy];
  wrappedKeyEncryptionOperationInternal = self->_wrappedKeyEncryptionOperationInternal;
  v6 = wrappedKeyEncryptionOperationInternal[1];
  wrappedKeyEncryptionOperationInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

- (SFSymmetricEncryptionOperation)sessionEncryptionOperation
{
  v2 = [*(self->_wrappedKeyEncryptionOperationInternal + 2) copy];

  return v2;
}

- (void)setSessionEncryptionOperation:(id)operation
{
  v4 = [operation copy];
  wrappedKeyEncryptionOperationInternal = self->_wrappedKeyEncryptionOperationInternal;
  v6 = wrappedKeyEncryptionOperationInternal[2];
  wrappedKeyEncryptionOperationInternal[2] = v4;

  MEMORY[0x2821F96F8]();
}

@end