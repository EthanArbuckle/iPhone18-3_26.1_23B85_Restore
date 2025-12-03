@interface TUIOBMismatchedAppleIDViewModel
- (TUIOBMismatchedAppleIDViewModel)initWithFlow:(unint64_t)flow;
@end

@implementation TUIOBMismatchedAppleIDViewModel

- (TUIOBMismatchedAppleIDViewModel)initWithFlow:(unint64_t)flow
{
  v4.receiver = self;
  v4.super_class = TUIOBMismatchedAppleIDViewModel;
  result = [(TUIMismatchedAppleIDModel *)&v4 initWithFlow:flow];
  if (result)
  {
    result->_contentViewLayout = 2;
  }

  return result;
}

@end