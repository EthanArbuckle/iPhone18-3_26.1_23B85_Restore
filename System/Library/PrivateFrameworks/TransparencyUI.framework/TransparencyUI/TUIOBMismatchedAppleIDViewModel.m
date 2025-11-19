@interface TUIOBMismatchedAppleIDViewModel
- (TUIOBMismatchedAppleIDViewModel)initWithFlow:(unint64_t)a3;
@end

@implementation TUIOBMismatchedAppleIDViewModel

- (TUIOBMismatchedAppleIDViewModel)initWithFlow:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = TUIOBMismatchedAppleIDViewModel;
  result = [(TUIMismatchedAppleIDModel *)&v4 initWithFlow:a3];
  if (result)
  {
    result->_contentViewLayout = 2;
  }

  return result;
}

@end