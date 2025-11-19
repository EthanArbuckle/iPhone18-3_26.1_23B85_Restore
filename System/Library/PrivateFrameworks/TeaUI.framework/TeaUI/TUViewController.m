@interface TUViewController
- (id)contentScrollView;
@end

@implementation TUViewController

- (id)contentScrollView
{
  v4.receiver = self;
  v4.super_class = TUViewController;
  v2 = [(TUViewController *)&v4 contentScrollView];

  return v2;
}

@end