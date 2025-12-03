@interface MultiPlayerContainerView
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (void)layoutSubviews;
- (void)onHoverWithGesture:(id)gesture;
- (void)singlePressWithGesture:(id)gesture;
@end

@implementation MultiPlayerContainerView

- (void)onHoverWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E3FD9308(v6);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E3FDB354();
}

- (void)singlePressWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_1E3FDB9F0();
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_1E3FDBDCC(beginCopy);

  return self & 1;
}

@end