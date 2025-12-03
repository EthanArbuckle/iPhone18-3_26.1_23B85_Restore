@interface SFMaskGenerationFunction1
- (SFDigestOperation)digestOperation;
- (SFMaskGenerationFunction1)init;
- (SFMaskGenerationFunction1)initWithCoder:(id)coder;
- (SFMaskGenerationFunction1)initWithDigestOperation:(id)operation;
- (void)setDigestOperation:(id)operation;
@end

@implementation SFMaskGenerationFunction1

- (SFMaskGenerationFunction1)init
{
  v3 = objc_alloc_init(_SFSHA256DigestOperation);
  v4 = [(SFMaskGenerationFunction1 *)self initWithDigestOperation:v3];

  return v4;
}

- (SFMaskGenerationFunction1)initWithDigestOperation:(id)operation
{
  operationCopy = operation;
  v9.receiver = self;
  v9.super_class = SFMaskGenerationFunction1;
  v6 = [(SFMaskGenerationFunction1 *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6->_mgf1OperationInternal + 1, operation);
  }

  return v7;
}

- (SFMaskGenerationFunction1)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFMaskGenerationFunction1;
  return [(SFMaskGenerationFunction1 *)&v4 init];
}

- (SFDigestOperation)digestOperation
{
  v2 = [*(self->_mgf1OperationInternal + 1) copyWithZone:0];

  return v2;
}

- (void)setDigestOperation:(id)operation
{
  v4 = [operation copyWithZone:0];
  mgf1OperationInternal = self->_mgf1OperationInternal;
  v6 = mgf1OperationInternal[1];
  mgf1OperationInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

@end