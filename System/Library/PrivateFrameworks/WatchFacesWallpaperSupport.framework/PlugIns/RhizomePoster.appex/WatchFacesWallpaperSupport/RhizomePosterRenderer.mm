@interface RhizomePosterRenderer
- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment;
- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)rendererDidInvalidate:(id)invalidate;
@end

@implementation RhizomePosterRenderer

- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100026A0C(rendererCopy, environment);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_100027938(rendererCopy, environment, transition);

  swift_unknownObjectRelease();
}

- (void)rendererDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_100029824();
}

@end