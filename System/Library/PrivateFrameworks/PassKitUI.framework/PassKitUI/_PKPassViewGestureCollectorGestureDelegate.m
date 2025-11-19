@interface _PKPassViewGestureCollectorGestureDelegate
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_PKPassViewGestureCollectorGestureDelegate)init;
- (void)_gestureRecognizerActed:(id)a3;
@end

@implementation _PKPassViewGestureCollectorGestureDelegate

- (_PKPassViewGestureCollectorGestureDelegate)init
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____PKPassViewGestureCollectorGestureDelegate_shouldBegin);
  v5 = a3;
  v6 = self;
  v7 = v4(v5);

  return v7 & 1;
}

- (void)_gestureRecognizerActed:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____PKPassViewGestureCollectorGestureDelegate_action);
  v6 = a3;
  v5 = self;
  v4(v6);
}

@end