@interface _SFSharablePasswordEncryptionInformation
- (_SFSharablePasswordEncryptionInformation)initWithEncryptedPasswordData:(id)a3 encryptionKeyReference:(id)a4;
@end

@implementation _SFSharablePasswordEncryptionInformation

- (_SFSharablePasswordEncryptionInformation)initWithEncryptedPasswordData:(id)a3 encryptionKeyReference:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _SFSharablePasswordEncryptionInformation;
  v8 = [(_SFSharablePasswordEncryptionInformation *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    encryptedPasswordData = v8->_encryptedPasswordData;
    v8->_encryptedPasswordData = v9;

    v11 = [v7 copy];
    encryptionKeyReference = v8->_encryptionKeyReference;
    v8->_encryptionKeyReference = v11;

    v13 = v8;
  }

  return v8;
}

@end