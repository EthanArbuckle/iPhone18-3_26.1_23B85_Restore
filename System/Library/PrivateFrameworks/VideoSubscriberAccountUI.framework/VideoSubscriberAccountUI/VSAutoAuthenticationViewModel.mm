@interface VSAutoAuthenticationViewModel
- (VSAutoAuthenticationViewModel)init;
- (VSAutoAuthenticationViewModelDelegate)delegate;
- (void)configureWithRequest:(id)a3;
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
    v4 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v5 = [v4 localizedStringForKey:@"CONTINUE" value:0 table:0];
    [(VSCuratedViewModel *)v3 setBeginValidationButtonTitle:v5];
  }

  return v3;
}

- (void)didSelectManualSignInButton
{
  v3 = [(VSAutoAuthenticationViewModel *)self delegate];
  [v3 autoAuthenticationViewModelDidManualSignInButton:self];
}

- (void)configureWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(VSViewModel *)self identityProvider];
  v6 = [v5 displayName];
  v7 = [v6 forceUnwrapObject];
  [(VSViewModel *)self setTitle:v7];

  v8.receiver = self;
  v8.super_class = VSAutoAuthenticationViewModel;
  [(VSCuratedViewModel *)&v8 configureWithRequest:v4];
}

- (VSAutoAuthenticationViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end