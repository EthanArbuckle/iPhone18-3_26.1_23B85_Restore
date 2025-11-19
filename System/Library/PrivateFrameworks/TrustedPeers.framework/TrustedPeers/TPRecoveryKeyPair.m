@interface TPRecoveryKeyPair
- (TPRecoveryKeyPair)initWithSigningKeyData:(id)a3 encryptionKeyData:(id)a4;
- (TPRecoveryKeyPair)initWithStableInfo:(id)a3;
@end

@implementation TPRecoveryKeyPair

- (TPRecoveryKeyPair)initWithStableInfo:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TPRecoveryKeyPair;
  v5 = [(TPRecoveryKeyPair *)&v11 init];
  if (v5)
  {
    v6 = [v4 recoverySigningPublicKey];
    signingKeyData = v5->_signingKeyData;
    v5->_signingKeyData = v6;

    v8 = [v4 recoveryEncryptionPublicKey];
    encryptionKeyData = v5->_encryptionKeyData;
    v5->_encryptionKeyData = v8;
  }

  return v5;
}

- (TPRecoveryKeyPair)initWithSigningKeyData:(id)a3 encryptionKeyData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TPRecoveryKeyPair;
  v9 = [(TPRecoveryKeyPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_signingKeyData, a3);
    objc_storeStrong(&v10->_encryptionKeyData, a4);
  }

  return v10;
}

@end