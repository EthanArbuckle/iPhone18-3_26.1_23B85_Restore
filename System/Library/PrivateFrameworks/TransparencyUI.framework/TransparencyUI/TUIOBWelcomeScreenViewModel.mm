@interface TUIOBWelcomeScreenViewModel
- (TUIOBWelcomeScreenViewModel)init;
@end

@implementation TUIOBWelcomeScreenViewModel

- (TUIOBWelcomeScreenViewModel)init
{
  v3.receiver = self;
  v3.super_class = TUIOBWelcomeScreenViewModel;
  result = [(TUIWelcomeSplashScreenModel *)&v3 init];
  if (result)
  {
    result->_contentViewLayout = 2;
  }

  return result;
}

@end