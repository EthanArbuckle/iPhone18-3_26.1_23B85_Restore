@interface SFRSA_OAEPEncryptionOperation
- (SFMaskGenerationFunction)maskGenerationFunction;
- (SFRSA_OAEPEncryptionOperation)initWithCoder:(id)a3;
- (SFRSA_OAEPEncryptionOperation)initWithKeySpecifier:(id)a3;
- (SFRSA_OAEPEncryptionOperation)initWithKeySpecifier:(id)a3 maskGenerationFunction:(id)a4;
- (void)setMaskGenerationFunction:(id)a3;
@end

@implementation SFRSA_OAEPEncryptionOperation

- (SFRSA_OAEPEncryptionOperation)initWithKeySpecifier:(id)a3
{
  v4 = a3;
  v5 = _defaultMaskGenerationFunction();
  v6 = [(SFRSA_OAEPEncryptionOperation *)self initWithKeySpecifier:v4 maskGenerationFunction:v5];

  return v6;
}

- (SFRSA_OAEPEncryptionOperation)initWithKeySpecifier:(id)a3 maskGenerationFunction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SFRSA_OAEPEncryptionOperation initWithKeySpecifier:maskGenerationFunction:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [SFRSA_OAEPEncryptionOperation initWithKeySpecifier:maskGenerationFunction:];
LABEL_3:
  v12.receiver = self;
  v12.super_class = SFRSA_OAEPEncryptionOperation;
  v9 = [(SFRSAEncryptionOperation *)&v12 initWithKeySpecifier:v6];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9->_oaepEncryptionOperationInternal + 1, a4);
  }

  return v10;
}

- (SFRSA_OAEPEncryptionOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFRSA_OAEPEncryptionOperation;
  return [(SFRSAEncryptionOperation *)&v4 initWithCoder:a3];
}

- (SFMaskGenerationFunction)maskGenerationFunction
{
  v2 = [*(self->_oaepEncryptionOperationInternal + 1) copyWithZone:0];

  return v2;
}

- (void)setMaskGenerationFunction:(id)a3
{
  v4 = [a3 copyWithZone:0];
  oaepEncryptionOperationInternal = self->_oaepEncryptionOperationInternal;
  v6 = oaepEncryptionOperationInternal[1];
  oaepEncryptionOperationInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

- (void)initWithKeySpecifier:maskGenerationFunction:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"keySpecifier" object:? file:? lineNumber:? description:?];
}

- (void)initWithKeySpecifier:maskGenerationFunction:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"maskGenerationFunction" object:? file:? lineNumber:? description:?];
}

@end