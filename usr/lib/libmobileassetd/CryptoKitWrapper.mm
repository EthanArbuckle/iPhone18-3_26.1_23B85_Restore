@interface CryptoKitWrapper
+ (id)decryptKnoxKeyWithEncData:(id)a3 encapsulatedKey:(id)a4 recipientPrivateKey:(__SecKey *)a5 error:(id *)a6;
- (_TtC21MobileAssetKeyManager16CryptoKitWrapper)init;
@end

@implementation CryptoKitWrapper

+ (id)decryptKnoxKeyWithEncData:(id)a3 encapsulatedKey:(id)a4 recipientPrivateKey:(__SecKey *)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_303598();
  v13 = v12;

  v14 = sub_303598();
  v16 = v15;

  v17 = sub_25674C(v11, v13, v14, v16, v10);
  v19 = v18;
  v20 = v17;

  sub_258780(v14, v16);
  sub_258780(v11, v13);
  v21.super.isa = sub_303578().super.isa;
  sub_258780(v20, v19);

  return v21.super.isa;
}

- (_TtC21MobileAssetKeyManager16CryptoKitWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CryptoKitWrapper();
  return [(CryptoKitWrapper *)&v3 init];
}

@end