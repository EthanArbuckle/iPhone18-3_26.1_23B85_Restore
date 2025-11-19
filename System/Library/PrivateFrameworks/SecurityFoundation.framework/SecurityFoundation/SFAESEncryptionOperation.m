@interface SFAESEncryptionOperation
- (SFAESEncryptionOperation)initWithCoder:(id)a3;
- (SFAESEncryptionOperation)initWithKeySpecifier:(id)a3 mode:(int64_t)a4;
@end

@implementation SFAESEncryptionOperation

- (SFAESEncryptionOperation)initWithKeySpecifier:(id)a3 mode:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = SFAESEncryptionOperation;
  return [(SFSymmetricEncryptionOperation *)&v5 initWithKeySpecifier:a3 mode:a4];
}

- (SFAESEncryptionOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFAESEncryptionOperation;
  return [(SFSymmetricEncryptionOperation *)&v4 initWithCoder:a3];
}

@end