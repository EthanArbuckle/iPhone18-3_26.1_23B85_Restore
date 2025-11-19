@interface MultiPlayerView
- (_TtC8VideosUI15MultiPlayerView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)onPanGesture:(id)a3;
- (void)viewPinchedWithGesture:(id)a3;
@end

@implementation MultiPlayerView

- (_TtC8VideosUI15MultiPlayerView)initWithCoder:(id)a3
{
  v3 = a3;
  sub_1E3BDD0A4();
  return 0;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1E3BDD5E4();
}

- (void)viewPinchedWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E3BE0C90(v6);
}

- (void)onPanGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_1_26();
  sub_1E3BE13A4();
}

@end