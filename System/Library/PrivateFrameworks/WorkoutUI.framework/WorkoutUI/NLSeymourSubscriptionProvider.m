@interface NLSeymourSubscriptionProvider
- (NLSeymourSubscriptionProvider)init;
- (NLSeymourSubscriptionProvider)initWithDependenciesWrapper:(id)a3;
- (id)observers;
- (int64_t)subscriptionStatus;
- (void)notifyObservers;
- (void)setObservers:(id)a3;
- (void)setSubscriptionStatus:(int64_t)a3;
- (void)update;
@end

@implementation NLSeymourSubscriptionProvider

- (int64_t)subscriptionStatus
{
  v3 = OBJC_IVAR___NLSeymourSubscriptionProvider_subscriptionStatus;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSubscriptionStatus:(int64_t)a3
{
  v5 = OBJC_IVAR___NLSeymourSubscriptionProvider_subscriptionStatus;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (id)observers
{
  v3 = OBJC_IVAR___NLSeymourSubscriptionProvider_observers;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setObservers:(id)a3
{
  v5 = OBJC_IVAR___NLSeymourSubscriptionProvider_observers;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (NLSeymourSubscriptionProvider)initWithDependenciesWrapper:(id)a3
{
  v3 = objc_allocWithZone(type metadata accessor for SeymourSubscriptionProvider());

  v4 = SeymourSubscriptionProvider.init(dependencies:)();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)update
{
  v2 = self;
  SeymourSubscriptionProvider.update()();
}

- (NLSeymourSubscriptionProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)notifyObservers
{
  v2 = self;
  SeymourSubscriptionProvider.notifyObservers()();
}

@end