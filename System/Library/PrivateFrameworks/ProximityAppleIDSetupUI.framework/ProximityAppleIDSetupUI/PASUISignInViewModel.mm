@interface PASUISignInViewModel
- (NSAttributedString)attributedMessage;
- (NSAttributedString)attributedTitle;
- (UIImage)headerImage;
- (_TtC23ProximityAppleIDSetupUI20PASUISignInViewModel)init;
- (id)authenticationContext;
- (void)signInViewController:(id)a3 didCompleteWithAuthenticationResults:(id)a4;
- (void)willAuthenticateWithContext:(id)a3;
@end

@implementation PASUISignInViewModel

- (NSAttributedString)attributedTitle
{
  v2 = self;
  v3 = sub_2611412D8();

  return v3;
}

- (NSAttributedString)attributedMessage
{
  v2 = self;
  v3 = sub_261141630();

  return v3;
}

- (UIImage)headerImage
{
  v2 = sub_261143140();

  return v2;
}

- (_TtC23ProximityAppleIDSetupUI20PASUISignInViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)signInViewController:(id)a3 didCompleteWithAuthenticationResults:(id)a4
{
  v6 = sub_26115B614();
  v7 = a3;
  v8 = self;
  sub_2611433A0(v6);
}

- (void)willAuthenticateWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  _s23ProximityAppleIDSetupUI20PASUISignInViewModelC27willAuthenticateWithContextyySo023AKAppleIDAuthenticationL0CF_0(v4);
}

- (id)authenticationContext
{
  v2 = self;
  v3 = PASUISignInViewModel.authenticationContext()();

  return v3;
}

@end