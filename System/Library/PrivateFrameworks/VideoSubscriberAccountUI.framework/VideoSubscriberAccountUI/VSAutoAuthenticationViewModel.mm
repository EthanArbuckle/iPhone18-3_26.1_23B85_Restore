@interface VSAutoAuthenticationViewModel
- (VSAutoAuthenticationViewModel)init;
- (VSAutoAuthenticationViewModelDelegate)delegate;
- (void)configureWithRequest:(id)request;
- (void)didSelectManualSignInButton;
@end

@implementation VSAutoAuthenticationViewModel

- (VSAutoAuthenticationViewModel)init
{
  v7.receiver = self;
  v7.super_class = VSAutoAuthenticationViewModel;
  v2 = [(VSCuratedViewModel *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(VSCuratedViewModel *)v2 setBeginValidationButtonEnabled:1];
    vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v5 = [vs_frameworkBundle localizedStringForKey:@"CONTINUE" value:0 table:0];
    [(VSCuratedViewModel *)v3 setBeginValidationButtonTitle:v5];
  }

  return v3;
}

- (void)didSelectManualSignInButton
{
  delegate = [(VSAutoAuthenticationViewModel *)self delegate];
  [delegate autoAuthenticationViewModelDidManualSignInButton:self];
}

- (void)configureWithRequest:(id)request
{
  requestCopy = request;
  identityProvider = [(VSViewModel *)self identityProvider];
  displayName = [identityProvider displayName];
  forceUnwrapObject = [displayName forceUnwrapObject];
  [(VSViewModel *)self setTitle:forceUnwrapObject];

  v8.receiver = self;
  v8.super_class = VSAutoAuthenticationViewModel;
  [(VSCuratedViewModel *)&v8 configureWithRequest:requestCopy];
}

- (VSAutoAuthenticationViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end