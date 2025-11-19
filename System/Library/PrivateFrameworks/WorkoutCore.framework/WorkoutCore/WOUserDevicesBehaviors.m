@interface WOUserDevicesBehaviors
+ (WOUserDevicesBehaviors)shared;
+ (void)setShared:(id)a3;
- (BOOL)supportsHeartRateZones;
- (void)dealloc;
- (void)didUpdateKeyValueDomain:(id)a3;
- (void)workoutHealthDataAllowedWhenLockedWithCompletion:(id)a3;
@end

@implementation WOUserDevicesBehaviors

- (BOOL)supportsHeartRateZones
{
  v0 = FIGetActivePairedDevice();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

+ (WOUserDevicesBehaviors)shared
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static UserDevicesBehaviors.shared;
}

+ (void)setShared:(id)a3
{
  v3 = one-time initialization token for shared;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static UserDevicesBehaviors.shared;
  static UserDevicesBehaviors.shared = v4;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOUserDevicesBehaviors_domain);
  v3 = self;
  [v2 stopObservation_];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for UserDevicesBehaviors();
  [(WOUserDevicesBehaviors *)&v4 dealloc];
}

- (void)workoutHealthDataAllowedWhenLockedWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)(_s10ObjectiveC8ObjCBoolVIeyBy_SbIegy_TRTA_0, v5);
}

- (void)didUpdateKeyValueDomain:(id)a3
{
  v3 = self;
  UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()();
}

@end