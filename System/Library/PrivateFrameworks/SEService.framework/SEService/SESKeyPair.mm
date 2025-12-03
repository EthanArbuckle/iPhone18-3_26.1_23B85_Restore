@interface SESKeyPair
- (SESKeyPair)initWithPublicKey:(id)key secretKey:(id)secretKey;
@end

@implementation SESKeyPair

- (SESKeyPair)initWithPublicKey:(id)key secretKey:(id)secretKey
{
  keyCopy = key;
  secretKeyCopy = secretKey;
  v12.receiver = self;
  v12.super_class = SESKeyPair;
  v9 = [(SESKeyPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_publicKey, key);
    objc_storeStrong(&v10->_secretKey, secretKey);
  }

  return v10;
}

@end