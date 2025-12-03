@interface SFSymmetricEncryptionOperation
+ (id)_defaultEncryptionOperation;
- (SFSymmetricEncryptionOperation)init;
- (SFSymmetricEncryptionOperation)initWithCoder:(id)coder;
- (SFSymmetricEncryptionOperation)initWithKeySpecifier:(id)specifier;
- (SFSymmetricEncryptionOperation)initWithKeySpecifier:(id)specifier mode:(int64_t)mode;
- (_SFSymmetricKeySpecifier)encryptionKeySpecifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setEncryptionKeySpecifier:(id)specifier;
@end

@implementation SFSymmetricEncryptionOperation

+ (id)_defaultEncryptionOperation
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (SFSymmetricEncryptionOperation)init
{
  v3 = [[_SFAESKeySpecifier alloc] initWithBitSize:0];
  v4 = [(SFSymmetricEncryptionOperation *)self initWithKeySpecifier:v3];

  return v4;
}

- (SFSymmetricEncryptionOperation)initWithKeySpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = -[SFSymmetricEncryptionOperation initWithKeySpecifier:mode:](self, "initWithKeySpecifier:mode:", specifierCopy, [objc_opt_class() _defaultEncryptionMode]);

  return v5;
}

- (SFSymmetricEncryptionOperation)initWithKeySpecifier:(id)specifier mode:(int64_t)mode
{
  specifierCopy = specifier;
  if (!specifierCopy)
  {
    [SFSymmetricEncryptionOperation initWithKeySpecifier:mode:];
  }

  v11.receiver = self;
  v11.super_class = SFSymmetricEncryptionOperation;
  v8 = [(SFSymmetricEncryptionOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8->_symmetricEncryptionOperationInternal + 2, specifier);
    *(v9->_symmetricEncryptionOperationInternal + 1) = mode;
  }

  return v9;
}

- (SFSymmetricEncryptionOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFSymmetricEncryptionOperation;
  return [(SFSymmetricEncryptionOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  symmetricEncryptionOperationInternal = self->_symmetricEncryptionOperationInternal;
  v7 = symmetricEncryptionOperationInternal[1];
  v6 = symmetricEncryptionOperationInternal[2];

  return [v4 initWithKeySpecifier:v6 mode:v7];
}

- (_SFSymmetricKeySpecifier)encryptionKeySpecifier
{
  v2 = [*(self->_symmetricEncryptionOperationInternal + 2) copy];

  return v2;
}

- (void)setEncryptionKeySpecifier:(id)specifier
{
  v4 = [specifier copy];
  symmetricEncryptionOperationInternal = self->_symmetricEncryptionOperationInternal;
  v6 = symmetricEncryptionOperationInternal[2];
  symmetricEncryptionOperationInternal[2] = v4;

  MEMORY[0x2821F96F8]();
}

- (void)initWithKeySpecifier:mode:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"keySpecifier" object:? file:? lineNumber:? description:?];
}

@end