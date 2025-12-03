@interface _SFECDHKeySource
- (_SFECDHKeySource)initWithLocalKeyPair:(id)pair remotePublickKey:(id)key;
@end

@implementation _SFECDHKeySource

- (_SFECDHKeySource)initWithLocalKeyPair:(id)pair remotePublickKey:(id)key
{
  pairCopy = pair;
  keyCopy = key;
  v13.receiver = self;
  v13.super_class = _SFECDHKeySource;
  v9 = [(_SFECDHKeySource *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(SFECDHKeySource_Ivars);
    ecdhKeySourceInternal = v9->_ecdhKeySourceInternal;
    v9->_ecdhKeySourceInternal = v10;

    objc_storeStrong(v9->_ecdhKeySourceInternal + 1, pair);
    objc_storeStrong(v9->_ecdhKeySourceInternal + 2, key);
  }

  return v9;
}

@end