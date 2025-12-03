@interface SFCMACOperation
- (SFCMACOperation)init;
- (SFCMACOperation)initWithCoder:(id)coder;
- (SFCMACOperation)initWithEncryptionOperation:(id)operation;
- (SFSymmetricEncryptionOperation)encryptionOperation;
- (void)setEncryptionOperation:(id)operation;
@end

@implementation SFCMACOperation

- (SFCMACOperation)init
{
  v3 = +[SFSymmetricEncryptionOperation _defaultEncryptionOperation];
  v4 = [(SFCMACOperation *)self initWithEncryptionOperation:v3];

  return v4;
}

- (SFCMACOperation)initWithEncryptionOperation:(id)operation
{
  operationCopy = operation;
  v9.receiver = self;
  v9.super_class = SFCMACOperation;
  v6 = [(SFMessageAuthenticationCodeOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6->_cmacOperationInternal + 1, operation);
  }

  return v7;
}

- (SFCMACOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFCMACOperation;
  return [(SFMessageAuthenticationCodeOperation *)&v4 initWithCoder:coder];
}

- (SFSymmetricEncryptionOperation)encryptionOperation
{
  v2 = [*(self->_cmacOperationInternal + 1) copy];

  return v2;
}

- (void)setEncryptionOperation:(id)operation
{
  v4 = [operation copy];
  cmacOperationInternal = self->_cmacOperationInternal;
  v6 = cmacOperationInternal[1];
  cmacOperationInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

@end