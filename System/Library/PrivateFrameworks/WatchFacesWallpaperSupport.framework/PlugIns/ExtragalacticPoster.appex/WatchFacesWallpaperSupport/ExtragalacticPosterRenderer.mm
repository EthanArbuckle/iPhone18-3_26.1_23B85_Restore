@interface ExtragalacticPosterRenderer
- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment;
- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)rendererDidInvalidate:(id)invalidate;
@end

@implementation ExtragalacticPosterRenderer

- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10000CF0C(rendererCopy, environment);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_10000D13C(rendererCopy, environment);
  v10 = *(*(&selfCopy->super.isa + OBJC_IVAR____TtC19ExtragalacticPoster27ExtragalacticPosterRenderer_controller) + OBJC_IVAR____TtC19ExtragalacticPoster29ExtragalacticPosterController_rotationAnimator);
  if ((sub_100013738() & 1) == 0)
  {
    sub_10000383C();
  }

  swift_unknownObjectRelease();
}

- (void)rendererDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_10000D88C();
}

@end