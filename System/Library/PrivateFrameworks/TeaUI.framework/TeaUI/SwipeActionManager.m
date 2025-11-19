@interface SwipeActionManager
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (void)handlePanGestureWithRecognizer:(id)a3;
- (void)handleTapGestureWithRecognizer:(id)a3;
@end

@implementation SwipeActionManager

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1D80FB234(v4);

  return self & 1;
}

- (void)handlePanGestureWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D80FBB48(v4);
}

- (void)handleTapGestureWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D80FD238(v4);
}

@end