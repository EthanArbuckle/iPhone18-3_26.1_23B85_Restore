@interface _UIZoomTransitionController
- (BOOL)_shouldAnimateBottomBarVisibility;
- (BOOL)dismissInteraction:(id)interaction shouldBeginWithAxis:(unint64_t)axis location:(CGPoint)location velocity:(CGPoint)velocity proposal:(BOOL)proposal;
- (BOOL)shouldPreemptWithContext:(id)context;
- (BOOL)wantsInteractiveStart;
- (UIView)_navigationBarTransitionOverlay;
- (UIViewController)owningViewController;
- (double)hysteresisForInteraction:(id)interaction;
- (double)transitionDuration:(id)duration;
- (id)_navigationToolbarTransitionControllerForContext:(id)context;
- (id)interruptibleAnimatorForTransition:(id)transition;
- (id)preemptWithContext:(id)context;
- (int64_t)_navigationBarTransitionVariant;
- (void)completeKeyboard:(id)keyboard;
- (void)didMoveToParent:(id)parent;
- (void)dismissInteraction:(id)interaction didBeginAtLocation:(CGPoint)location withVelocity:(CGPoint)velocity;
- (void)dismissInteraction:(id)interaction didCancelWithVelocity:(CGPoint)velocity originalPosition:(CGPoint)position;
- (void)dismissInteraction:(id)interaction didDismissWithVelocity:(CGPoint)velocity;
- (void)dismissInteraction:(id)interaction didIssueUpdate:(id)update;
- (void)prepareToAnimateKeyboard:(id)keyboard;
- (void)setClientTransition:(id)transition;
- (void)setDismissInteraction:(id)interaction;
- (void)setSourceViewHidingAssertion:(id)assertion;
- (void)startInteractiveTransition:(id)transition;
- (void)willBeginAfterPreemptionWithContext:(id)context data:(id)data;
@end

@implementation _UIZoomTransitionController

- (void)setClientTransition:(id)transition
{
  v4 = *(self + OBJC_IVAR____UIZoomTransitionController_clientTransition);
  *(self + OBJC_IVAR____UIZoomTransitionController_clientTransition) = transition;
  transitionCopy = transition;
}

- (UIViewController)owningViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDismissInteraction:(id)interaction
{
  interactionCopy = interaction;
  selfCopy = self;
  sub_188E3E23C(interactionCopy);
}

- (void)setSourceViewHidingAssertion:(id)assertion
{
  v4 = *(self + OBJC_IVAR____UIZoomTransitionController_sourceViewHidingAssertion);
  *(self + OBJC_IVAR____UIZoomTransitionController_sourceViewHidingAssertion) = assertion;
  assertionCopy = assertion;
}

- (void)didMoveToParent:(id)parent
{
  if (!parent)
  {
    [(_UIZoomTransitionController *)self setSourceViewHidingAssertion:?];
  }
}

- (void)startInteractiveTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_188E36EBC(transition);
  swift_unknownObjectRelease();
}

- (BOOL)wantsInteractiveStart
{
  selfCopy = self;
  dismissInteraction = [(_UIZoomTransitionController *)selfCopy dismissInteraction];
  isActive = [(_UIDismissInteraction *)dismissInteraction isActive];

  return isActive;
}

- (double)transitionDuration:(id)duration
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_188E3E500();
  v6 = v5;
  swift_unknownObjectRelease();

  return v6;
}

- (id)interruptibleAnimatorForTransition:(id)transition
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
  selfCopy = self;
  v3 = sub_188E3C0C8();

  return v3;
}

- (UIView)_navigationBarTransitionOverlay
{
  selfCopy = self;
  if (_UISolariumEnabled())
  {
    v3 = 0;
  }

  else
  {
    v3 = *(selfCopy + OBJC_IVAR____UIZoomTransitionController_transitionOverlayView);
  }

  return v3;
}

- (BOOL)_shouldAnimateBottomBarVisibility
{
  selfCopy = self;
  v3 = sub_188E3C1EC();

  return v3 & 1;
}

- (id)_navigationToolbarTransitionControllerForContext:(id)context
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_188E3C268(context);
  swift_unknownObjectRelease();

  return v6;
}

- (BOOL)shouldPreemptWithContext:(id)context
{
  objc_opt_self();
  selfCopy = self;
  if ((+[UIView _fluidZoomTransitionsEnabled]() & 1) != 0 || +[UIView _uip_fluidPresentationTransitionsEnabled])
  {
    v5 = 1;
  }

  else
  {
    v5 = *(selfCopy + OBJC_IVAR____UIZoomTransitionController_isPreempting);
  }

  return v5;
}

- (id)preemptWithContext:(id)context
{
  if (*(self + OBJC_IVAR____UIZoomTransitionController_isPreempting) == 1)
  {
    swift_unknownObjectRetain();
    selfCopy = self;
  }

  else
  {
    swift_unknownObjectRetain();
    selfCopy2 = self;
    sub_188F32950(1);
  }

  sub_188E3B6D8(context);
  swift_unknownObjectRelease();

  return 0;
}

- (void)willBeginAfterPreemptionWithContext:(id)context data:(id)data
{
  swift_unknownObjectRetain();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(&v4);
}

- (void)prepareToAnimateKeyboard:(id)keyboard
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_188E3C4C8(keyboard);
  swift_unknownObjectRelease();
}

- (void)completeKeyboard:(id)keyboard
{
  if (keyboard)
  {
    swift_unknownObjectRetain_n();
    selfCopy = self;
    fromKeyboard = [keyboard fromKeyboard];
    [fromKeyboard removeFromSuperview];

    toKeyboard = [keyboard toKeyboard];
    [toKeyboard removeFromSuperview];

    swift_unknownObjectRelease_n();
  }
}

- (double)hysteresisForInteraction:(id)interaction
{
  if (*(self + OBJC_IVAR____UIZoomTransitionController_activeTransitionContext))
  {
    return 0.0;
  }

  v5 = objc_opt_self();

  [v5 _defaultHysteresis];
  return result;
}

- (BOOL)dismissInteraction:(id)interaction shouldBeginWithAxis:(unint64_t)axis location:(CGPoint)location velocity:(CGPoint)velocity proposal:(BOOL)proposal
{
  y = velocity.y;
  x = velocity.x;
  v10 = location.y;
  v11 = location.x;
  interactionCopy = interaction;
  selfCopy = self;
  v16 = sub_188E3C77C(interactionCopy, axis, proposal, v11, v10, x, y);

  return v16 & 1;
}

- (void)dismissInteraction:(id)interaction didBeginAtLocation:(CGPoint)location withVelocity:(CGPoint)velocity
{
  interactionCopy = interaction;
  selfCopy = self;
  sub_188E3E628();
}

- (void)dismissInteraction:(id)interaction didIssueUpdate:(id)update
{
  interactionCopy = interaction;
  updateCopy = update;
  selfCopy = self;
  sub_188E3ED54(updateCopy);
}

- (void)dismissInteraction:(id)interaction didDismissWithVelocity:(CGPoint)velocity
{
  interactionCopy = interaction;
  selfCopy = self;
  sub_188E3F0DC();
}

- (void)dismissInteraction:(id)interaction didCancelWithVelocity:(CGPoint)velocity originalPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  interactionCopy = interaction;
  selfCopy = self;
  sub_188E3F730(x, y);
}

@end