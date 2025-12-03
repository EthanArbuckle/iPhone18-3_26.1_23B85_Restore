@interface PASUIProxiedTermsHandler
- (_TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler)init;
- (void)genericTermsRemoteUI:(id)i acceptedTermsInfo:(id)info;
- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success;
@end

@implementation PASUIProxiedTermsHandler

- (_TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success
{
  successCopy = success;
  selfCopy = self;
  if (successCopy)
  {
    sub_26111F7D0();
  }

  else
  {
    sub_26111FFBC();
  }
}

- (void)genericTermsRemoteUI:(id)i acceptedTermsInfo:(id)info
{
  if (info)
  {
    v5 = sub_26115B614();
    selfCopy = self;
    sub_26111F63C(v5);
  }

  else
  {
    __break(1u);
  }
}

@end