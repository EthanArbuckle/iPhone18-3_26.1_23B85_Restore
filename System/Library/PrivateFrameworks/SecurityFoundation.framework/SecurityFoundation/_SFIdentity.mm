@interface _SFIdentity
- (_SFIdentity)initWithCoder:(id)coder;
- (_SFIdentity)initWithKeyPair:(id)pair certificate:(id)certificate;
- (_SFIdentity)initWithPublicKey:(id)key certificate:(id)certificate;
@end

@implementation _SFIdentity

- (_SFIdentity)initWithPublicKey:(id)key certificate:(id)certificate
{
  keyCopy = key;
  certificateCopy = certificate;
  v13.receiver = self;
  v13.super_class = _SFIdentity;
  v9 = [(_SFIdentity *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(SFIdentity_Ivars);
    identityInternal = v9->_identityInternal;
    v9->_identityInternal = v10;

    objc_storeStrong(v9->_identityInternal + 1, key);
    objc_storeStrong(v9->_identityInternal + 3, certificate);
  }

  return v9;
}

- (_SFIdentity)initWithKeyPair:(id)pair certificate:(id)certificate
{
  pairCopy = pair;
  certificateCopy = certificate;
  v16.receiver = self;
  v16.super_class = _SFIdentity;
  v9 = [(_SFIdentity *)&v16 init];
  if (v9)
  {
    v10 = objc_alloc_init(SFIdentity_Ivars);
    identityInternal = v9->_identityInternal;
    v9->_identityInternal = v10;

    publicKey = [pairCopy publicKey];
    v13 = v9->_identityInternal;
    v14 = v13[1];
    v13[1] = publicKey;

    objc_storeStrong(v9->_identityInternal + 3, certificate);
    objc_storeStrong(v9->_identityInternal + 2, pair);
  }

  return v9;
}

- (_SFIdentity)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _SFIdentity;
  return [(_SFIdentity *)&v4 init];
}

@end