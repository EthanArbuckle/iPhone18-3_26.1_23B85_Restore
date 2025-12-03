@interface NLSeymourAvailabilityProvider
- (NLSeymourAvailabilityProvider)init;
- (NLSeymourAvailabilityProvider)initWithDependenciesWrapper:(id)wrapper;
- (id)observers;
- (int64_t)availability;
- (void)notifyObservers;
- (void)setAvailability:(int64_t)availability;
- (void)setObservers:(id)observers;
- (void)update;
@end

@implementation NLSeymourAvailabilityProvider

- (int64_t)availability
{
  v3 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAvailability:(int64_t)availability
{
  v5 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
  swift_beginAccess();
  *(&self->super.isa + v5) = availability;
}

- (id)observers
{
  v3 = OBJC_IVAR___NLSeymourAvailabilityProvider_observers;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setObservers:(id)observers
{
  v5 = OBJC_IVAR___NLSeymourAvailabilityProvider_observers;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = observers;
  observersCopy = observers;
}

- (NLSeymourAvailabilityProvider)initWithDependenciesWrapper:(id)wrapper
{
  v3 = objc_allocWithZone(type metadata accessor for SeymourAvailabilityProvider());

  v4 = SeymourAvailabilityProvider.init(dependencies:)();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (NLSeymourAvailabilityProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)update
{
  selfCopy = self;
  SeymourAvailabilityProvider.update()();
}

- (void)notifyObservers
{
  selfCopy = self;
  SeymourAvailabilityProvider.notifyObservers()();
}

@end