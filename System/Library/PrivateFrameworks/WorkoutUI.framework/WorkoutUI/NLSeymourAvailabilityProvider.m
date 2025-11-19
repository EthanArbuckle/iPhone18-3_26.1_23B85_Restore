@interface NLSeymourAvailabilityProvider
- (NLSeymourAvailabilityProvider)init;
- (NLSeymourAvailabilityProvider)initWithDependenciesWrapper:(id)a3;
- (id)observers;
- (int64_t)availability;
- (void)notifyObservers;
- (void)setAvailability:(int64_t)a3;
- (void)setObservers:(id)a3;
- (void)update;
@end

@implementation NLSeymourAvailabilityProvider

- (int64_t)availability
{
  v3 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAvailability:(int64_t)a3
{
  v5 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (id)observers
{
  v3 = OBJC_IVAR___NLSeymourAvailabilityProvider_observers;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setObservers:(id)a3
{
  v5 = OBJC_IVAR___NLSeymourAvailabilityProvider_observers;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (NLSeymourAvailabilityProvider)initWithDependenciesWrapper:(id)a3
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
  v2 = self;
  SeymourAvailabilityProvider.update()();
}

- (void)notifyObservers
{
  v2 = self;
  SeymourAvailabilityProvider.notifyObservers()();
}

@end