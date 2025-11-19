@interface _SFIdentity
- (_SFIdentity)initWithCoder:(id)a3;
- (_SFIdentity)initWithKeyPair:(id)a3 certificate:(id)a4;
- (_SFIdentity)initWithPublicKey:(id)a3 certificate:(id)a4;
@end

@implementation _SFIdentity

- (_SFIdentity)initWithPublicKey:(id)a3 certificate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _SFIdentity;
  v9 = [(_SFIdentity *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(SFIdentity_Ivars);
    identityInternal = v9->_identityInternal;
    v9->_identityInternal = v10;

    objc_storeStrong(v9->_identityInternal + 1, a3);
    objc_storeStrong(v9->_identityInternal + 3, a4);
  }

  return v9;
}

- (_SFIdentity)initWithKeyPair:(id)a3 certificate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _SFIdentity;
  v9 = [(_SFIdentity *)&v16 init];
  if (v9)
  {
    v10 = objc_alloc_init(SFIdentity_Ivars);
    identityInternal = v9->_identityInternal;
    v9->_identityInternal = v10;

    v12 = [v7 publicKey];
    v13 = v9->_identityInternal;
    v14 = v13[1];
    v13[1] = v12;

    objc_storeStrong(v9->_identityInternal + 3, a4);
    objc_storeStrong(v9->_identityInternal + 2, a3);
  }

  return v9;
}

- (_SFIdentity)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFIdentity;
  return [(_SFIdentity *)&v4 init];
}

@end