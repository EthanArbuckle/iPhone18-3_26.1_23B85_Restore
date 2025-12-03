@interface PopTransitionDelegate
- (_TtC9SeymourUI21PopTransitionDelegate)init;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
@end

@implementation PopTransitionDelegate

- (id)animationControllerForDismissedController:(id)controller
{
  v3 = type metadata accessor for PopTransitionAnimator();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC9SeymourUI21PopTransitionAnimator_scale] = 0x3FEC28F5C28F5C29;
  v4[OBJC_IVAR____TtC9SeymourUI21PopTransitionAnimator_isPresenting] = 0;
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = [(PopTransitionDelegate *)&v7 init];

  return v5;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v5 = type metadata accessor for PopTransitionAnimator();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC9SeymourUI21PopTransitionAnimator_scale] = 0x3FEC28F5C28F5C29;
  v6[OBJC_IVAR____TtC9SeymourUI21PopTransitionAnimator_isPresenting] = 1;
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = [(PopTransitionDelegate *)&v9 init];

  return v7;
}

- (_TtC9SeymourUI21PopTransitionDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PopTransitionDelegate();
  return [(PopTransitionDelegate *)&v3 init];
}

@end