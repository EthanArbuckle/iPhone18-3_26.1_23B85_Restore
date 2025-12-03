@interface PASUISignInViewModel
- (NSAttributedString)attributedMessage;
- (NSAttributedString)attributedTitle;
- (UIImage)headerImage;
- (_TtC23ProximityAppleIDSetupUI20PASUISignInViewModel)init;
- (id)authenticationContext;
- (void)signInViewController:(id)controller didCompleteWithAuthenticationResults:(id)results;
- (void)willAuthenticateWithContext:(id)context;
@end

@implementation PASUISignInViewModel

- (NSAttributedString)attributedTitle
{
  selfCopy = self;
  v3 = sub_2611412D8();

  return v3;
}

- (NSAttributedString)attributedMessage
{
  selfCopy = self;
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

- (void)signInViewController:(id)controller didCompleteWithAuthenticationResults:(id)results
{
  v6 = sub_26115B614();
  controllerCopy = controller;
  selfCopy = self;
  sub_2611433A0(v6);
}

- (void)willAuthenticateWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  _s23ProximityAppleIDSetupUI20PASUISignInViewModelC27willAuthenticateWithContextyySo023AKAppleIDAuthenticationL0CF_0(contextCopy);
}

- (id)authenticationContext
{
  selfCopy = self;
  v3 = PASUISignInViewModel.authenticationContext()();

  return v3;
}

@end