@interface _PKPassViewGestureCollectorGestureDelegate
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_PKPassViewGestureCollectorGestureDelegate)init;
- (void)_gestureRecognizerActed:(id)acted;
@end

@implementation _PKPassViewGestureCollectorGestureDelegate

- (_PKPassViewGestureCollectorGestureDelegate)init
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v4 = *(&self->super.isa + OBJC_IVAR____PKPassViewGestureCollectorGestureDelegate_shouldBegin);
  beginCopy = begin;
  selfCopy = self;
  v7 = v4(beginCopy);

  return v7 & 1;
}

- (void)_gestureRecognizerActed:(id)acted
{
  v4 = *(&self->super.isa + OBJC_IVAR____PKPassViewGestureCollectorGestureDelegate_action);
  actedCopy = acted;
  selfCopy = self;
  v4(actedCopy);
}

@end