@interface SFSymmetricEncryptionOperation
+ (id)_defaultEncryptionOperation;
- (SFSymmetricEncryptionOperation)init;
- (SFSymmetricEncryptionOperation)initWithCoder:(id)a3;
- (SFSymmetricEncryptionOperation)initWithKeySpecifier:(id)a3;
- (SFSymmetricEncryptionOperation)initWithKeySpecifier:(id)a3 mode:(int64_t)a4;
- (_SFSymmetricKeySpecifier)encryptionKeySpecifier;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setEncryptionKeySpecifier:(id)a3;
@end

@implementation SFSymmetricEncryptionOperation

+ (id)_defaultEncryptionOperation
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (SFSymmetricEncryptionOperation)init
{
  v3 = [[_SFAESKeySpecifier alloc] initWithBitSize:0];
  v4 = [(SFSymmetricEncryptionOperation *)self initWithKeySpecifier:v3];

  return v4;
}

- (SFSymmetricEncryptionOperation)initWithKeySpecifier:(id)a3
{
  v4 = a3;
  v5 = -[SFSymmetricEncryptionOperation initWithKeySpecifier:mode:](self, "initWithKeySpecifier:mode:", v4, [objc_opt_class() _defaultEncryptionMode]);

  return v5;
}

- (SFSymmetricEncryptionOperation)initWithKeySpecifier:(id)a3 mode:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    [SFSymmetricEncryptionOperation initWithKeySpecifier:mode:];
  }

  v11.receiver = self;
  v11.super_class = SFSymmetricEncryptionOperation;
  v8 = [(SFSymmetricEncryptionOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8->_symmetricEncryptionOperationInternal + 2, a3);
    *(v9->_symmetricEncryptionOperationInternal + 1) = a4;
  }

  return v9;
}

- (SFSymmetricEncryptionOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFSymmetricEncryptionOperation;
  return [(SFSymmetricEncryptionOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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

- (void)setEncryptionKeySpecifier:(id)a3
{
  v4 = [a3 copy];
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