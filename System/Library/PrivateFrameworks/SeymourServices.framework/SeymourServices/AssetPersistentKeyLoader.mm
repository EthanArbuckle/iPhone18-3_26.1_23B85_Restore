@interface AssetPersistentKeyLoader
- (BOOL)contentKeySession:(id)a3 shouldRetryContentKeyRequest:(id)a4 reason:(id)a5;
- (_TtC15SeymourServices24AssetPersistentKeyLoader)init;
- (void)contentKeySession:(id)a3 contentKeyRequest:(id)a4 didFailWithError:(id)a5;
- (void)contentKeySession:(id)a3 didProvideContentKeyRequest:(id)a4;
- (void)contentKeySession:(id)a3 didProvidePersistableContentKeyRequest:(id)a4;
@end

@implementation AssetPersistentKeyLoader

- (_TtC15SeymourServices24AssetPersistentKeyLoader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contentKeySession:(id)a3 didProvideContentKeyRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_226FDAF24(v7);
}

- (void)contentKeySession:(id)a3 didProvidePersistableContentKeyRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_226FDB7C0(v7);
}

- (void)contentKeySession:(id)a3 contentKeyRequest:(id)a4 didFailWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_226FDBF40(v9, v11);
}

- (BOOL)contentKeySession:(id)a3 shouldRetryContentKeyRequest:(id)a4 reason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_226FDC494(v10);

  return v12 & 1;
}

@end