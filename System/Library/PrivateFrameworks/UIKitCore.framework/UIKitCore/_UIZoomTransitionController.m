@interface _UIZoomTransitionController
- (BOOL)_shouldAnimateBottomBarVisibility;
- (BOOL)dismissInteraction:(id)a3 shouldBeginWithAxis:(unint64_t)a4 location:(CGPoint)a5 velocity:(CGPoint)a6 proposal:(BOOL)a7;
- (BOOL)shouldPreemptWithContext:(id)a3;
- (BOOL)wantsInteractiveStart;
- (UIView)_navigationBarTransitionOverlay;
- (UIViewController)owningViewController;
- (double)hysteresisForInteraction:(id)a3;
- (double)transitionDuration:(id)a3;
- (id)_navigationToolbarTransitionControllerForContext:(id)a3;
- (id)interruptibleAnimatorForTransition:(id)a3;
- (id)preemptWithContext:(id)a3;
- (int64_t)_navigationBarTransitionVariant;
- (void)completeKeyboard:(id)a3;
- (void)didMoveToParent:(id)a3;
- (void)dismissInteraction:(id)a3 didBeginAtLocation:(CGPoint)a4 withVelocity:(CGPoint)a5;
- (void)dismissInteraction:(id)a3 didCancelWithVelocity:(CGPoint)a4 originalPosition:(CGPoint)a5;
- (void)dismissInteraction:(id)a3 didDismissWithVelocity:(CGPoint)a4;
- (void)dismissInteraction:(id)a3 didIssueUpdate:(id)a4;
- (void)prepareToAnimateKeyboard:(id)a3;
- (void)setClientTransition:(id)a3;
- (void)setDismissInteraction:(id)a3;
- (void)setSourceViewHidingAssertion:(id)a3;
- (void)startInteractiveTransition:(id)a3;
- (void)willBeginAfterPreemptionWithContext:(id)a3 data:(id)a4;
@end

@implementation _UIZoomTransitionController

- (void)setClientTransition:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIZoomTransitionController_clientTransition);
  *(self + OBJC_IVAR____UIZoomTransitionController_clientTransition) = a3;
  v3 = a3;
}

- (UIViewController)owningViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDismissInteraction:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_188E3E23C(v5);
}

- (void)setSourceViewHidingAssertion:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIZoomTransitionController_sourceViewHidingAssertion);
  *(self + OBJC_IVAR____UIZoomTransitionController_sourceViewHidingAssertion) = a3;
  v3 = a3;
}

- (void)didMoveToParent:(id)a3
{
  if (!a3)
  {
    [(_UIZoomTransitionController *)self setSourceViewHidingAssertion:?];
  }
}

- (void)startInteractiveTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_188E36EBC(a3);
  swift_unknownObjectRelease();
}

- (BOOL)wantsInteractiveStart
{
  v2 = self;
  v3 = [(_UIZoomTransitionController *)v2 dismissInteraction];
  v4 = [(_UIDismissInteraction *)v3 isActive];

  return v4;
}

- (double)transitionDuration:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_188E3E500();
  v6 = v5;
  swift_unknownObjectRelease();

  return v6;
}

- (id)interruptibleAnimatorForTransition:(id)a3
{
  result = *(self + OBJC_IVAR____UIZoomTransitionController_shimPropertyAnimator);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (int64_t)_navigationBarTransitionVariant
{
  v2 = self;
  v3 = sub_188E3C0C8();

  return v3;
}

- (UIView)_navigationBarTransitionOverlay
{
  v2 = self;
  if (_UISolariumEnabled())
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + OBJC_IVAR____UIZoomTransitionController_transitionOverlayView);
  }

  return v3;
}

- (BOOL)_shouldAnimateBottomBarVisibility
{
  v2 = self;
  v3 = sub_188E3C1EC();

  return v3 & 1;
}

- (id)_navigationToolbarTransitionControllerForContext:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_188E3C268(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (BOOL)shouldPreemptWithContext:(id)a3
{
  objc_opt_self();
  v4 = self;
  if ((+[UIView _fluidZoomTransitionsEnabled]() & 1) != 0 || +[UIView _uip_fluidPresentationTransitionsEnabled])
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v4 + OBJC_IVAR____UIZoomTransitionController_isPreempting);
  }

  return v5;
}

- (id)preemptWithContext:(id)a3
{
  if (*(self + OBJC_IVAR____UIZoomTransitionController_isPreempting) == 1)
  {
    swift_unknownObjectRetain();
    v5 = self;
  }

  else
  {
    swift_unknownObjectRetain();
    v6 = self;
    sub_188F32950(1);
  }

  sub_188E3B6D8(a3);
  swift_unknownObjectRelease();

  return 0;
}

- (void)willBeginAfterPreemptionWithContext:(id)a3 data:(id)a4
{
  swift_unknownObjectRetain();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(&v4);
}

- (void)prepareToAnimateKeyboard:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_188E3C4C8(a3);
  swift_unknownObjectRelease();
}

- (void)completeKeyboard:(id)a3
{
  if (a3)
  {
    swift_unknownObjectRetain_n();
    v5 = self;
    v6 = [a3 fromKeyboard];
    [v6 removeFromSuperview];

    v7 = [a3 toKeyboard];
    [v7 removeFromSuperview];

    swift_unknownObjectRelease_n();
  }
}

- (double)hysteresisForInteraction:(id)a3
{
  if (*(self + OBJC_IVAR____UIZoomTransitionController_activeTransitionContext))
  {
    return 0.0;
  }

  v5 = objc_opt_self();

  [v5 _defaultHysteresis];
  return result;
}

- (BOOL)dismissInteraction:(id)a3 shouldBeginWithAxis:(unint64_t)a4 location:(CGPoint)a5 velocity:(CGPoint)a6 proposal:(BOOL)a7
{
  y = a6.y;
  x = a6.x;
  v10 = a5.y;
  v11 = a5.x;
  v14 = a3;
  v15 = self;
  v16 = sub_188E3C77C(v14, a4, a7, v11, v10, x, y);

  return v16 & 1;
}

- (void)dismissInteraction:(id)a3 didBeginAtLocation:(CGPoint)a4 withVelocity:(CGPoint)a5
{
  v6 = a3;
  v7 = self;
  sub_188E3E628();
}

- (void)dismissInteraction:(id)a3 didIssueUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_188E3ED54(v7);
}

- (void)dismissInteraction:(id)a3 didDismissWithVelocity:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  sub_188E3F0DC();
}

- (void)dismissInteraction:(id)a3 didCancelWithVelocity:(CGPoint)a4 originalPosition:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a3;
  v9 = self;
  sub_188E3F730(x, y);
}

@end