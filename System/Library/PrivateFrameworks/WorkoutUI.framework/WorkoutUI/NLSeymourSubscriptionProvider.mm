@interface NLSeymourSubscriptionProvider
- (NLSeymourSubscriptionProvider)init;
- (NLSeymourSubscriptionProvider)initWithDependenciesWrapper:(id)wrapper;
- (id)observers;
- (int64_t)subscriptionStatus;
- (void)notifyObservers;
- (void)setObservers:(id)observers;
- (void)setSubscriptionStatus:(int64_t)status;
- (void)update;
@end

@implementation NLSeymourSubscriptionProvider

- (int64_t)subscriptionStatus
{
  v3 = OBJC_IVAR___NLSeymourSubscriptionProvider_subscriptionStatus;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSubscriptionStatus:(int64_t)status
{
  v5 = OBJC_IVAR___NLSeymourSubscriptionProvider_subscriptionStatus;
  swift_beginAccess();
  *(&self->super.isa + v5) = status;
}

- (id)observers
{
  v3 = OBJC_IVAR___NLSeymourSubscriptionProvider_observers;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setObservers:(id)observers
{
  v5 = OBJC_IVAR___NLSeymourSubscriptionProvider_observers;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = observers;
  observersCopy = observers;
}

- (NLSeymourSubscriptionProvider)initWithDependenciesWrapper:(id)wrapper
{
  v3 = objc_allocWithZone(type metadata accessor for SeymourSubscriptionProvider());

  v4 = SeymourSubscriptionProvider.init(dependencies:)();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)update
{
  selfCopy = self;
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
  selfCopy = self;
  SeymourSubscriptionProvider.notifyObservers()();
}

@end