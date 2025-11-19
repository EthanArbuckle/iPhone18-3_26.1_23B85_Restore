@interface SESKeyPair
- (SESKeyPair)initWithPublicKey:(id)a3 secretKey:(id)a4;
@end

@implementation SESKeyPair

- (SESKeyPair)initWithPublicKey:(id)a3 secretKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SESKeyPair;
  v9 = [(SESKeyPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_publicKey, a3);
    objc_storeStrong(&v10->_secretKey, a4);
  }

  return v10;
}

@end