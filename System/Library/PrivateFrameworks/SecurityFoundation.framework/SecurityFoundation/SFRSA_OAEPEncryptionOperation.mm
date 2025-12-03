@interface SFRSA_OAEPEncryptionOperation
- (SFMaskGenerationFunction)maskGenerationFunction;
- (SFRSA_OAEPEncryptionOperation)initWithCoder:(id)coder;
- (SFRSA_OAEPEncryptionOperation)initWithKeySpecifier:(id)specifier;
- (SFRSA_OAEPEncryptionOperation)initWithKeySpecifier:(id)specifier maskGenerationFunction:(id)function;
- (void)setMaskGenerationFunction:(id)function;
@end

@implementation SFRSA_OAEPEncryptionOperation

- (SFRSA_OAEPEncryptionOperation)initWithKeySpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = _defaultMaskGenerationFunction();
  v6 = [(SFRSA_OAEPEncryptionOperation *)self initWithKeySpecifier:specifierCopy maskGenerationFunction:v5];

  return v6;
}

- (SFRSA_OAEPEncryptionOperation)initWithKeySpecifier:(id)specifier maskGenerationFunction:(id)function
{
  specifierCopy = specifier;
  functionCopy = function;
  v8 = functionCopy;
  if (specifierCopy)
  {
    if (functionCopy)
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
  v9 = [(SFRSAEncryptionOperation *)&v12 initWithKeySpecifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9->_oaepEncryptionOperationInternal + 1, function);
  }

  return v10;
}

- (SFRSA_OAEPEncryptionOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFRSA_OAEPEncryptionOperation;
  return [(SFRSAEncryptionOperation *)&v4 initWithCoder:coder];
}

- (SFMaskGenerationFunction)maskGenerationFunction
{
  v2 = [*(self->_oaepEncryptionOperationInternal + 1) copyWithZone:0];

  return v2;
}

- (void)setMaskGenerationFunction:(id)function
{
  v4 = [function copyWithZone:0];
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