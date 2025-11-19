@interface OpaqueDataService
+ (id)serializedHPKEWithData:(id)a3 publicKey:(id)a4 scheme:(id)a5 error:(id *)a6;
- (_TtC24AppletTranslationLibrary17OpaqueDataService)init;
@end

@implementation OpaqueDataService

+ (id)serializedHPKEWithData:(id)a3 publicKey:(id)a4 scheme:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_22EFB61DC();
  v13 = v12;

  v14 = sub_22EFB61DC();
  v16 = v15;

  if (v10)
  {
    sub_22EFB648C();
  }

  v17 = sub_22EFAC288(v11, v13, v14, v16);
  v19 = v18;

  sub_22EF708C8(v14, v16);
  sub_22EF708C8(v11, v13);
  v20 = sub_22EFB61BC();
  sub_22EF708C8(v17, v19);

  return v20;
}

- (_TtC24AppletTranslationLibrary17OpaqueDataService)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for OpaqueDataService();
  return [(OpaqueDataService *)&v3 init];
}

@end