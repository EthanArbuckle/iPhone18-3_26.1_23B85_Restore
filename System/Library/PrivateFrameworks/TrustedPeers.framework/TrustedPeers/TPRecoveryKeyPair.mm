@interface TPRecoveryKeyPair
- (TPRecoveryKeyPair)initWithSigningKeyData:(id)data encryptionKeyData:(id)keyData;
- (TPRecoveryKeyPair)initWithStableInfo:(id)info;
@end

@implementation TPRecoveryKeyPair

- (TPRecoveryKeyPair)initWithStableInfo:(id)info
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = TPRecoveryKeyPair;
  v5 = [(TPRecoveryKeyPair *)&v11 init];
  if (v5)
  {
    recoverySigningPublicKey = [infoCopy recoverySigningPublicKey];
    signingKeyData = v5->_signingKeyData;
    v5->_signingKeyData = recoverySigningPublicKey;

    recoveryEncryptionPublicKey = [infoCopy recoveryEncryptionPublicKey];
    encryptionKeyData = v5->_encryptionKeyData;
    v5->_encryptionKeyData = recoveryEncryptionPublicKey;
  }

  return v5;
}

- (TPRecoveryKeyPair)initWithSigningKeyData:(id)data encryptionKeyData:(id)keyData
{
  dataCopy = data;
  keyDataCopy = keyData;
  v12.receiver = self;
  v12.super_class = TPRecoveryKeyPair;
  v9 = [(TPRecoveryKeyPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_signingKeyData, data);
    objc_storeStrong(&v10->_encryptionKeyData, keyData);
  }

  return v10;
}

@end