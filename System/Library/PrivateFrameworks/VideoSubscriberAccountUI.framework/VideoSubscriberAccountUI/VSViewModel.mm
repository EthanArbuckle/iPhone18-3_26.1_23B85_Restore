@interface VSViewModel
- (VSViewModel)init;
- (void)configureWithRequest:(id)a3;
@end

@implementation VSViewModel

- (VSViewModel)init
{
  v5.receiver = self;
  v5.super_class = VSViewModel;
  v2 = [(VSViewModel *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75C80] currentTraitCollection];
    v2->_userInterfaceStyle = [v3 userInterfaceStyle];
  }

  return v2;
}

- (void)configureWithRequest:(id)a3
{
  v4 = [a3 accountProviderAuthenticationToken];
  [(VSViewModel *)self setAuthenticationShare:v4 != 0];
}

@end