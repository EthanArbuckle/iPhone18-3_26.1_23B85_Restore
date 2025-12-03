@interface TVSlideTransitionAnimationCoordinator
- (_TtC9SeymourUI37TVSlideTransitionAnimationCoordinator)init;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
@end

@implementation TVSlideTransitionAnimationCoordinator

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
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