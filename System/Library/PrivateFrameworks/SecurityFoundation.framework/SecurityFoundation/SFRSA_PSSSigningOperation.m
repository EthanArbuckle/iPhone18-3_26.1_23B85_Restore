@interface SFRSA_PSSSigningOperation
- (SFMaskGenerationFunction)maskGenerationFunction;
- (SFRSA_PSSSigningOperation)initWithCoder:(id)a3;
- (SFRSA_PSSSigningOperation)initWithKeySpecifier:(id)a3 digestOperation:(id)a4;
- (SFRSA_PSSSigningOperation)initWithKeySpecifier:(id)a3 digestOperation:(id)a4 maskGenerationFunction:(id)a5;
- (void)setMaskGenerationFunction:(id)a3;
@end

@implementation SFRSA_PSSSigningOperation

- (SFRSA_PSSSigningOperation)initWithKeySpecifier:(id)a3 digestOperation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _defaultMaskGenerationFunction();
  v9 = [(SFRSA_PSSSigningOperation *)self initWithKeySpecifier:v7 digestOperation:v6 maskGenerationFunction:v8];

  return v9;
}

- (SFRSA_PSSSigningOperation)initWithKeySpecifier:(id)a3 digestOperation:(id)a4 maskGenerationFunction:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SFRSA_PSSSigningOperation;
  v10 = [(SFRSASigningOperation *)&v13 initWithKeySpecifier:a3 digestOperation:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10->_pssSigningOperationInternal + 1, a5);
  }

  return v11;
}

- (SFRSA_PSSSigningOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFRSA_PSSSigningOperation;
  return [(SFRSASigningOperation *)&v4 initWithCoder:a3];
}

- (SFMaskGenerationFunction)maskGenerationFunction
{
  v2 = [*(self->_pssSigningOperationInternal + 1) copyWithZone:0];

  return v2;
}

- (void)setMaskGenerationFunction:(id)a3
{
  v4 = [a3 copyWithZone:0];
  pssSigningOperationInternal = self->_pssSigningOperationInternal;
  v6 = pssSigningOperationInternal[1];
  pssSigningOperationInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

@end