@interface SFTripleDESEncryptionOperation
- (SFTripleDESEncryptionOperation)initWithCoder:(id)coder;
- (SFTripleDESEncryptionOperation)initWithKeySpecifier:(id)specifier mode:(int64_t)mode;
@end

@implementation SFTripleDESEncryptionOperation

- (SFTripleDESEncryptionOperation)initWithKeySpecifier:(id)specifier mode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = SFTripleDESEncryptionOperation;
  return [(SFSymmetricEncryptionOperation *)&v5 initWithKeySpecifier:specifier mode:mode];
}

- (SFTripleDESEncryptionOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFTripleDESEncryptionOperation;
  return [(SFSymmetricEncryptionOperation *)&v4 initWithCoder:coder];
}

@end