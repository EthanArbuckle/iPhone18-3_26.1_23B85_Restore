@interface VSViewModel
- (VSViewModel)init;
- (void)configureWithRequest:(id)request;
@end

@implementation VSViewModel

- (VSViewModel)init
{
  v5.receiver = self;
  v5.super_class = VSViewModel;
  v2 = [(VSViewModel *)&v5 init];
  if (v2)
  {
    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    v2->_userInterfaceStyle = [currentTraitCollection userInterfaceStyle];
  }

  return v2;
}

- (void)configureWithRequest:(id)request
{
  accountProviderAuthenticationToken = [request accountProviderAuthenticationToken];
  [(VSViewModel *)self setAuthenticationShare:accountProviderAuthenticationToken != 0];
}

@end