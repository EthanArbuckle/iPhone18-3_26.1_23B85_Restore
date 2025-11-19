@interface TVSlideTransitionAnimationCoordinator
- (_TtC9SeymourUI37TVSlideTransitionAnimationCoordinator)init;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
@end

@implementation TVSlideTransitionAnimationCoordinator

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v6 = [objc_allocWithZone(type metadata accessor for TVSlideTransitionAnimator()) init];

  return v6;
}

- (_TtC9SeymourUI37TVSlideTransitionAnimationCoordinator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TVSlideTransitionAnimationCoordinator();
  return [(TVSlideTransitionAnimationCoordinator *)&v3 init];
}

@end