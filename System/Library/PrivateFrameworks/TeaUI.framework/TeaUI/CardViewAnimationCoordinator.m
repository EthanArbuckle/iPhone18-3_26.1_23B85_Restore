@interface CardViewAnimationCoordinator
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (void)handleWithRecognizer:(id)a3;
@end

@implementation CardViewAnimationCoordinator

- (void)handleWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D8090380(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CardViewAnimationCoordinator.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(v8, v7);

  return 1;
}

@end