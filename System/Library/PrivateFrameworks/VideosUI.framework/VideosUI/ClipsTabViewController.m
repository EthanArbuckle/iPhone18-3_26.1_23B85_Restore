@interface ClipsTabViewController
- (CGSize)preferredContentSize;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLoad;
@end

@implementation ClipsTabViewController

- (CGSize)preferredContentSize
{
  v2 = 266.0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  v3 = self;
  sub_1E3840FD4();
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1E3841184(a3);
}

- (void)vui_viewDidLoad
{
  v2 = self;
  sub_1E384140C();
}

@end