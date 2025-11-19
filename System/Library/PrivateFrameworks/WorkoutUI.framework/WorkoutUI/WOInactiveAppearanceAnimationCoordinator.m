@interface WOInactiveAppearanceAnimationCoordinator
- (WOInactiveAppearanceAnimationCoordinator)init;
- (void)assertion:(id)a3 didCancelWithError:(id)a4;
- (void)assertion:(id)a3 didFailToAcquireWithError:(id)a4;
- (void)assertionWasAcquired:(id)a3;
- (void)dealloc;
- (void)startAnimation:(id)a3;
@end

@implementation WOInactiveAppearanceAnimationCoordinator

- (void)startAnimation:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  specialized InactiveAppearanceAnimationCoordinator.startAnimation(_:)(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)dealloc
{
  v2 = self;
  InactiveAppearanceAnimationCoordinator.invalidateAssertion()();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for InactiveAppearanceAnimationCoordinator();
  [(WOInactiveAppearanceAnimationCoordinator *)&v3 dealloc];
}

- (WOInactiveAppearanceAnimationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)assertionWasAcquired:(id)a3
{
  v4 = a3;
  v5 = self;
  InactiveAppearanceAnimationCoordinator.assertionWasAcquired(_:)(v4);
}

- (void)assertion:(id)a3 didFailToAcquireWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  InactiveAppearanceAnimationCoordinator.assertion(_:didFailToAcquireWithError:)(v6);
}

- (void)assertion:(id)a3 didCancelWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  InactiveAppearanceAnimationCoordinator.assertion(_:didCancelWithError:)(v6, a4);
}

@end