@interface StreamingKeyProvisioner
- (BOOL)contentKeySession:(id)a3 shouldRetryContentKeyRequest:(id)a4 reason:(id)a5;
- (_TtC12SeymourMedia23StreamingKeyProvisioner)init;
- (void)contentKeySession:(id)a3 contentKeyRequest:(id)a4 didFailWithError:(id)a5;
- (void)contentKeySession:(id)a3 contentKeyRequestDidSucceed:(id)a4;
- (void)contentKeySession:(id)a3 didProvideContentKeyRequest:(id)a4;
- (void)contentKeySession:(id)a3 didProvidePersistableContentKeyRequest:(id)a4;
- (void)contentKeySession:(id)a3 didProvideRenewingContentKeyRequest:(id)a4;
@end

@implementation StreamingKeyProvisioner

- (_TtC12SeymourMedia23StreamingKeyProvisioner)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contentKeySession:(id)a3 didProvidePersistableContentKeyRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20C53C270(v7);
}

- (void)contentKeySession:(id)a3 didProvideContentKeyRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20C53CE44(v7);
}

- (void)contentKeySession:(id)a3 didProvideRenewingContentKeyRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20C53DA94(v7);
}

- (void)contentKeySession:(id)a3 contentKeyRequest:(id)a4 didFailWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_20C53DF28(v9, v11);
}

- (void)contentKeySession:(id)a3 contentKeyRequestDidSucceed:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20C53E47C(v7);
}

- (BOOL)contentKeySession:(id)a3 shouldRetryContentKeyRequest:(id)a4 reason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  LOBYTE(self) = sub_20C53E648(v9, v10);

  return self & 1;
}

@end