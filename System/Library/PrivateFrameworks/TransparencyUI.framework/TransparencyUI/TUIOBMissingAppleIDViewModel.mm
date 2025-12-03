@interface TUIOBMissingAppleIDViewModel
- (TUIOBMissingAppleIDViewModel)initWithFlow:(unint64_t)flow;
@end

@implementation TUIOBMissingAppleIDViewModel

- (TUIOBMissingAppleIDViewModel)initWithFlow:(unint64_t)flow
{
  v4.receiver = self;
  v4.super_class = TUIOBMissingAppleIDViewModel;
  result = [(TUIMissingAppleIDModel *)&v4 initWithFlow:flow];
  if (result)
  {
    result->_contentViewLayout = 2;
  }

  return result;
}

@end