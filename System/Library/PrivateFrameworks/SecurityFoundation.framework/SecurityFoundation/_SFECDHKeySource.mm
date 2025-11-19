@interface _SFECDHKeySource
- (_SFECDHKeySource)initWithLocalKeyPair:(id)a3 remotePublickKey:(id)a4;
@end

@implementation _SFECDHKeySource

- (_SFECDHKeySource)initWithLocalKeyPair:(id)a3 remotePublickKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _SFECDHKeySource;
  v9 = [(_SFECDHKeySource *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(SFECDHKeySource_Ivars);
    ecdhKeySourceInternal = v9->_ecdhKeySourceInternal;
    v9->_ecdhKeySourceInternal = v10;

    objc_storeStrong(v9->_ecdhKeySourceInternal + 1, a3);
    objc_storeStrong(v9->_ecdhKeySourceInternal + 2, a4);
  }

  return v9;
}

@end