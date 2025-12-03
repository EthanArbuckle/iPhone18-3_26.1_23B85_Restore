@interface SFRSA_PSSSigningOperation
- (SFMaskGenerationFunction)maskGenerationFunction;
- (SFRSA_PSSSigningOperation)initWithCoder:(id)coder;
- (SFRSA_PSSSigningOperation)initWithKeySpecifier:(id)specifier digestOperation:(id)operation;
- (SFRSA_PSSSigningOperation)initWithKeySpecifier:(id)specifier digestOperation:(id)operation maskGenerationFunction:(id)function;
- (void)setMaskGenerationFunction:(id)function;
@end

@implementation SFRSA_PSSSigningOperation

- (SFRSA_PSSSigningOperation)initWithKeySpecifier:(id)specifier digestOperation:(id)operation
{
  operationCopy = operation;
  specifierCopy = specifier;
  v8 = _defaultMaskGenerationFunction();
  v9 = [(SFRSA_PSSSigningOperation *)self initWithKeySpecifier:specifierCopy digestOperation:operationCopy maskGenerationFunction:v8];

  return v9;
}

- (SFRSA_PSSSigningOperation)initWithKeySpecifier:(id)specifier digestOperation:(id)operation maskGenerationFunction:(id)function
{
  functionCopy = function;
  v13.receiver = self;
  v13.super_class = SFRSA_PSSSigningOperation;
  v10 = [(SFRSASigningOperation *)&v13 initWithKeySpecifier:specifier digestOperation:operation];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10->_pssSigningOperationInternal + 1, function);
  }

  return v11;
}

- (SFRSA_PSSSigningOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFRSA_PSSSigningOperation;
  return [(SFRSASigningOperation *)&v4 initWithCoder:coder];
}

- (SFMaskGenerationFunction)maskGenerationFunction
{
  v2 = [*(self->_pssSigningOperationInternal + 1) copyWithZone:0];

  return v2;
}

- (void)setMaskGenerationFunction:(id)function
{
  v4 = [function copyWithZone:0];
  pssSigningOperationInternal = self->_pssSigningOperationInternal;
  v6 = pssSigningOperationInternal[1];
  pssSigningOperationInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

@end