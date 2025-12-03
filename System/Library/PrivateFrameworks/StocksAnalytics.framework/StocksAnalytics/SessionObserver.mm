@interface SessionObserver
- (_TtC15StocksAnalytics15SessionObserver)init;
- (void)bundleSubscriptionDidChange:(id)change previousBundleSubscription:(id)subscription;
- (void)bundleSubscriptionDidSubscribe:(void *)subscribe;
- (void)dealloc;
- (void)offerDidChange:(id)change;
- (void)pushOrientationData;
@end

@implementation SessionObserver

- (void)pushOrientationData
{
  selfCopy = self;
  sub_2201F8378();
}

- (void)bundleSubscriptionDidSubscribe:(void *)subscribe
{
  subscribeCopy = subscribe;
  selfCopy = self;
  _s15StocksAnalytics15SessionObserverC27bundleSubscriptionDidExpireyySo08FCBundleF0CF_0(subscribeCopy);
}

- (void)bundleSubscriptionDidChange:(id)change previousBundleSubscription:(id)subscription
{
  changeCopy = change;
  selfCopy = self;
  _s15StocksAnalytics15SessionObserverC27bundleSubscriptionDidExpireyySo08FCBundleF0CF_0(changeCopy);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  currentDevice = [v4 currentDevice];
  [currentDevice endGeneratingDeviceOrientationNotifications];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(SessionObserver *)&v7 dealloc];
}

- (_TtC15StocksAnalytics15SessionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)offerDidChange:(id)change
{
  v4 = sub_22036E448();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22036E428();
  selfCopy = self;
  sub_22032D1AC();

  (*(v5 + 8))(v8, v4);
}

@end