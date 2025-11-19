@interface SFCodingOptions
- (NSString)encryptionPassphrase;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setEncryptionPassphrase:(id)a3;
@end

@implementation SFCodingOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setEncoding:*(self->_codingOptionsInternal + 1)];
  [v4 setEncryptionPassphrase:*(self->_codingOptionsInternal + 2)];
  return v4;
}

- (NSString)encryptionPassphrase
{
  v2 = [*(self->_codingOptionsInternal + 2) copy];

  return v2;
}

- (void)setEncryptionPassphrase:(id)a3
{
  v4 = [a3 copy];
  codingOptionsInternal = self->_codingOptionsInternal;
  v6 = codingOptionsInternal[2];
  codingOptionsInternal[2] = v4;

  MEMORY[0x2821F96F8]();
}

@end