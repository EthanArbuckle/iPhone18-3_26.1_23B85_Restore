@interface TUViewController
- (id)contentScrollView;
@end

@implementation TUViewController

- (id)contentScrollView
{
  v4.receiver = self;
  v4.super_class = TUViewController;
  contentScrollView = [(TUViewController *)&v4 contentScrollView];

  return contentScrollView;
}

@end