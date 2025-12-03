@interface AssetPersistentKeyLoader
- (BOOL)contentKeySession:(id)session shouldRetryContentKeyRequest:(id)request reason:(id)reason;
- (_TtC15SeymourServices24AssetPersistentKeyLoader)init;
- (void)contentKeySession:(id)session contentKeyRequest:(id)request didFailWithError:(id)error;
- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request;
- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request;
@end

@implementation AssetPersistentKeyLoader

- (_TtC15SeymourServices24AssetPersistentKeyLoader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request
{
  sessionCopy = session;
  requestCopy = request;
  selfCopy = self;
  sub_226FDAF24(requestCopy);
}

- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request
{
  sessionCopy = session;
  requestCopy = request;
  selfCopy = self;
  sub_226FDB7C0(requestCopy);
}

- (void)contentKeySession:(id)session contentKeyRequest:(id)request didFailWithError:(id)error
{
  sessionCopy = session;
  requestCopy = request;
  errorCopy = error;
  selfCopy = self;
  sub_226FDBF40(requestCopy, errorCopy);
}

- (BOOL)contentKeySession:(id)session shouldRetryContentKeyRequest:(id)request reason:(id)reason
{
  sessionCopy = session;
  requestCopy = request;
  reasonCopy = reason;
  selfCopy = self;
  v12 = sub_226FDC494(reasonCopy);

  return v12 & 1;
}

@end