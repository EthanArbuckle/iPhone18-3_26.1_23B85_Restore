@interface MultiPlayerContainerView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (void)layoutSubviews;
- (void)onHoverWithGesture:(id)a3;
- (void)singlePressWithGesture:(id)a3;
@end

@implementation MultiPlayerContainerView

- (void)onHoverWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E3FD9308(v6);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1E3FDB354();
}

- (void)singlePressWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3FDB9F0();
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1E3FDBDCC(v4);

  return self & 1;
}

@end