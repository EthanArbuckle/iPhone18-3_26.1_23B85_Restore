@interface ClipsTabViewController
- (CGSize)preferredContentSize;
- (void)setPreferredContentSize:(CGSize)size;
- (void)vui_viewDidDisappear:(BOOL)disappear;
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

- (void)setPreferredContentSize:(CGSize)size
{
  selfCopy = self;
  sub_1E3840FD4();
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1E3841184(disappear);
}

- (void)vui_viewDidLoad
{
  selfCopy = self;
  sub_1E384140C();
}

@end