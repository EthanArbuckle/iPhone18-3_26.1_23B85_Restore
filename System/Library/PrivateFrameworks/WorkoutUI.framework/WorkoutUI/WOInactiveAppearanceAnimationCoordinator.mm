@interface WOInactiveAppearanceAnimationCoordinator
- (WOInactiveAppearanceAnimationCoordinator)init;
- (void)assertion:(id)assertion didCancelWithError:(id)error;
- (void)assertion:(id)assertion didFailToAcquireWithError:(id)error;
- (void)assertionWasAcquired:(id)acquired;
- (void)dealloc;
- (void)startAnimation:(id)animation;
@end

@implementation WOInactiveAppearanceAnimationCoordinator

- (void)startAnimation:(id)animation
{
  v4 = _Block_copy(animation);
  _Block_copy(v4);
  selfCopy = self;
  specialized InactiveAppearanceAnimationCoordinator.startAnimation(_:)(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)dealloc
{
  selfCopy = self;
  InactiveAppearanceAnimationCoordinator.invalidateAssertion()();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for InactiveAppearanceAnimationCoordinator();
  [(WOInactiveAppearanceAnimationCoordinator *)&v3 dealloc];
}

- (WOInactiveAppearanceAnimationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)assertionWasAcquired:(id)acquired
{
  acquiredCopy = acquired;
  selfCopy = self;
  InactiveAppearanceAnimationCoordinator.assertionWasAcquired(_:)(acquiredCopy);
}

- (void)assertion:(id)assertion didFailToAcquireWithError:(id)error
{
  assertionCopy = assertion;
  errorCopy = error;
  selfCopy = self;
  InactiveAppearanceAnimationCoordinator.assertion(_:didFailToAcquireWithError:)(assertionCopy);
}

- (void)assertion:(id)assertion didCancelWithError:(id)error
{
  assertionCopy = assertion;
  selfCopy = self;
  errorCopy = error;
  InactiveAppearanceAnimationCoordinator.assertion(_:didCancelWithError:)(assertionCopy, error);
}

@end