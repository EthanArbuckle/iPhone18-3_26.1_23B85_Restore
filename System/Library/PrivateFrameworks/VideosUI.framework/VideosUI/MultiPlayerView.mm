@interface MultiPlayerView
- (_TtC8VideosUI15MultiPlayerView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)onPanGesture:(id)gesture;
- (void)viewPinchedWithGesture:(id)gesture;
@end

@implementation MultiPlayerView

- (_TtC8VideosUI15MultiPlayerView)initWithCoder:(id)coder
{
  coderCopy = coder;
  sub_1E3BDD0A4();
  return 0;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E3BDD5E4();
}

- (void)viewPinchedWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E3BE0C90(v6);
}

- (void)onPanGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  OUTLINED_FUNCTION_1_26();
  sub_1E3BE13A4();
}

@end