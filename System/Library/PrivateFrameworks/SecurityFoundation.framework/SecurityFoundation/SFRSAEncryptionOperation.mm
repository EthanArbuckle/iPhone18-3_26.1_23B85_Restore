@interface SFRSAEncryptionOperation
+ (id)_defaultEncryptionOperation;
- (SFRSAEncryptionOperation)init;
- (SFRSAEncryptionOperation)initWithCoder:(id)coder;
- (SFRSAEncryptionOperation)initWithKeySpecifier:(id)specifier;
- (_SFRSAKeySpecifier)encryptionKeySpecifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setEncryptionKeySpecifier:(id)specifier;
@end

@implementation SFRSAEncryptionOperation

+ (id)_defaultEncryptionOperation
{
  v2 = [SFRSA_PKCS1EncryptionOperation alloc];
  v3 = [[_SFRSAKeySpecifier alloc] initWithBitSize:4096];
  v4 = [(SFRSAEncryptionOperation *)v2 initWithKeySpecifier:v3];

  return v4;
}

- (SFRSAEncryptionOperation)init
{
  v3 = [[_SFRSAKeySpecifier alloc] initWithBitSize:4096];
  v4 = [(SFRSAEncryptionOperation *)self initWithKeySpecifier:v3];

  return v4;
}

- (SFRSAEncryptionOperation)initWithKeySpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (!specifierCopy)
  {
    [SFRSAEncryptionOperation initWithKeySpecifier:];
  }

  v9.receiver = self;
  v9.super_class = SFRSAEncryptionOperation;
  v6 = [(SFRSAEncryptionOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6->_rsaEncryptionOperationInternal + 1, specifier);
  }

  return v7;
}

- (SFRSAEncryptionOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFRSAEncryptionOperation;
  return [(SFRSAEncryptionOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = *(self->_rsaEncryptionOperationInternal + 1);

  return [v4 initWithKeySpecifier:v5];
}

- (_SFRSAKeySpecifier)encryptionKeySpecifier
{
  v2 = [*(self->_rsaEncryptionOperationInternal + 1) copy];

  return v2;
}

- (void)setEncryptionKeySpecifier:(id)specifier
{
  v4 = [specifier copy];
  rsaEncryptionOperationInternal = self->_rsaEncryptionOperationInternal;
  v6 = rsaEncryptionOperationInternal[1];
  rsaEncryptionOperationInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

- (void)initWithKeySpecifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"keySpecifier" object:? file:? lineNumber:? description:?];
}

@end