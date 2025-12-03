@interface _SFSharablePasswordEncryptionInformation
- (_SFSharablePasswordEncryptionInformation)initWithEncryptedPasswordData:(id)data encryptionKeyReference:(id)reference;
@end

@implementation _SFSharablePasswordEncryptionInformation

- (_SFSharablePasswordEncryptionInformation)initWithEncryptedPasswordData:(id)data encryptionKeyReference:(id)reference
{
  dataCopy = data;
  referenceCopy = reference;
  v15.receiver = self;
  v15.super_class = _SFSharablePasswordEncryptionInformation;
  v8 = [(_SFSharablePasswordEncryptionInformation *)&v15 init];
  if (v8)
  {
    v9 = [dataCopy copy];
    encryptedPasswordData = v8->_encryptedPasswordData;
    v8->_encryptedPasswordData = v9;

    v11 = [referenceCopy copy];
    encryptionKeyReference = v8->_encryptionKeyReference;
    v8->_encryptionKeyReference = v11;

    v13 = v8;
  }

  return v8;
}

@end