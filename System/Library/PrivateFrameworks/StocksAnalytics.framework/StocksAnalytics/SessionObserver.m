@interface SessionObserver
- (_TtC15StocksAnalytics15SessionObserver)init;
- (void)bundleSubscriptionDidChange:(id)a3 previousBundleSubscription:(id)a4;
- (void)bundleSubscriptionDidSubscribe:(void *)a3;
- (void)dealloc;
- (void)offerDidChange:(id)a3;
- (void)pushOrientationData;
@end

@implementation SessionObserver

- (void)pushOrientationData
{
  v2 = self;
  sub_2201F8378();
}

- (void)bundleSubscriptionDidSubscribe:(void *)a3
{
  v4 = a3;
  v5 = a1;
  _s15StocksAnalytics15SessionObserverC27bundleSubscriptionDidExpireyySo08FCBundleF0CF_0(v4);
}

- (void)bundleSubscriptionDidChange:(id)a3 previousBundleSubscription:(id)a4
{
  v5 = a3;
  v6 = self;
  _s15StocksAnalytics15SessionObserverC27bundleSubscriptionDidExpireyySo08FCBundleF0CF_0(v5);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 currentDevice];
  [v6 endGeneratingDeviceOrientationNotifications];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(SessionObserver *)&v7 dealloc];
}

- (_TtC15StocksAnalytics15SessionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)offerDidChange:(id)a3
{
  v4 = sub_22036E448();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22036E428();
  v9 = self;
  sub_22032D1AC();

  (*(v5 + 8))(v8, v4);
}

@end