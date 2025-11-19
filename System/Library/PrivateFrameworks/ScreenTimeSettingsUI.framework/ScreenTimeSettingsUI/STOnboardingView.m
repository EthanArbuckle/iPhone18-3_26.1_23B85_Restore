@interface STOnboardingView
- (STOnboardingView)initWithTopInset:(double)a3;
- (UIEdgeInsets)safeAreaInsets;
@end

@implementation STOnboardingView

- (STOnboardingView)initWithTopInset:(double)a3
{
  v6.receiver = self;
  v6.super_class = STOnboardingView;
  v4 = [(STOnboardingView *)&v6 init];
  [(STOnboardingView *)v4 setTopInset:a3];
  return v4;
}

- (UIEdgeInsets)safeAreaInsets
{
  v13.receiver = self;
  v13.super_class = STOnboardingView;
  [(STOnboardingView *)&v13 safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(STOnboardingView *)self topInset];
  v10 = v4;
  v11 = v6;
  v12 = v8;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

@end