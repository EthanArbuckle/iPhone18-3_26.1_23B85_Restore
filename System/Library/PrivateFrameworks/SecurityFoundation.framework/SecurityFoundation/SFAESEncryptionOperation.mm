@interface SFAESEncryptionOperation
- (SFAESEncryptionOperation)initWithCoder:(id)coder;
- (SFAESEncryptionOperation)initWithKeySpecifier:(id)specifier mode:(int64_t)mode;
@end

@implementation SFAESEncryptionOperation

- (SFAESEncryptionOperation)initWithKeySpecifier:(id)specifier mode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = SFAESEncryptionOperation;
  return [(SFSymmetricEncryptionOperation *)&v5 initWithKeySpecifier:specifier mode:mode];
}

- (SFAESEncryptionOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFAESEncryptionOperation;
  return [(SFSymmetricEncryptionOperation *)&v4 initWithCoder:coder];
}

@end