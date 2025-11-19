@interface LemonadeExpandableCuratedLibraryGestureController
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (void)handlePanWithGesture:(id)a3;
@end

@implementation LemonadeExpandableCuratedLibraryGestureController

- (void)handlePanWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A3F5E0B0(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  return [a4 px:v5 isPanGestureRecognizerOfScrollView:?];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1A3F5E2F8(v4);

  return self & 1;
}

@end