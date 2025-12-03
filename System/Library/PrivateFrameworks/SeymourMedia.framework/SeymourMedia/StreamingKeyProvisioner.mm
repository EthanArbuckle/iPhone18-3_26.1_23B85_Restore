@interface StreamingKeyProvisioner
- (BOOL)contentKeySession:(id)session shouldRetryContentKeyRequest:(id)request reason:(id)reason;
- (_TtC12SeymourMedia23StreamingKeyProvisioner)init;
- (void)contentKeySession:(id)session contentKeyRequest:(id)request didFailWithError:(id)error;
- (void)contentKeySession:(id)session contentKeyRequestDidSucceed:(id)succeed;
- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request;
- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request;
- (void)contentKeySession:(id)session didProvideRenewingContentKeyRequest:(id)request;
@end

@implementation StreamingKeyProvisioner

- (_TtC12SeymourMedia23StreamingKeyProvisioner)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request
{
  sessionCopy = session;
  requestCopy = request;
  selfCopy = self;
  sub_20C53C270(requestCopy);
}

- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request
{
  sessionCopy = session;
  requestCopy = request;
  selfCopy = self;
  sub_20C53CE44(requestCopy);
}

- (void)contentKeySession:(id)session didProvideRenewingContentKeyRequest:(id)request
{
  sessionCopy = session;
  requestCopy = request;
  selfCopy = self;
  sub_20C53DA94(requestCopy);
}

- (void)contentKeySession:(id)session contentKeyRequest:(id)request didFailWithError:(id)error
{
  sessionCopy = session;
  requestCopy = request;
  errorCopy = error;
  selfCopy = self;
  sub_20C53DF28(requestCopy, errorCopy);
}

- (void)contentKeySession:(id)session contentKeyRequestDidSucceed:(id)succeed
{
  sessionCopy = session;
  succeedCopy = succeed;
  selfCopy = self;
  sub_20C53E47C(succeedCopy);
}

- (BOOL)contentKeySession:(id)session shouldRetryContentKeyRequest:(id)request reason:(id)reason
{
  sessionCopy = session;
  requestCopy = request;
  reasonCopy = reason;
  selfCopy = self;
  LOBYTE(self) = sub_20C53E648(requestCopy, reasonCopy);

  return self & 1;
}

@end