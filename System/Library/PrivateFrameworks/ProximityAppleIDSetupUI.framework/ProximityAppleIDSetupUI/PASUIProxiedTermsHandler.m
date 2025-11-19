@interface PASUIProxiedTermsHandler
- (_TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler)init;
- (void)genericTermsRemoteUI:(id)a3 acceptedTermsInfo:(id)a4;
- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4;
@end

@implementation PASUIProxiedTermsHandler

- (_TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4
{
  v4 = a4;
  v5 = self;
  if (v4)
  {
    sub_26111F7D0();
  }

  else
  {
    sub_26111FFBC();
  }
}

- (void)genericTermsRemoteUI:(id)a3 acceptedTermsInfo:(id)a4
{
  if (a4)
  {
    v5 = sub_26115B614();
    v6 = self;
    sub_26111F63C(v5);
  }

  else
  {
    __break(1u);
  }
}

@end