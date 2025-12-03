@interface WOUserDevicesBehaviors
+ (WOUserDevicesBehaviors)shared;
+ (void)setShared:(id)shared;
- (BOOL)supportsHeartRateZones;
- (void)dealloc;
- (void)didUpdateKeyValueDomain:(id)domain;
- (void)workoutHealthDataAllowedWhenLockedWithCompletion:(id)completion;
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

+ (void)setShared:(id)shared
{
  v3 = one-time initialization token for shared;
  sharedCopy = shared;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static UserDevicesBehaviors.shared;
  static UserDevicesBehaviors.shared = sharedCopy;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOUserDevicesBehaviors_domain);
  selfCopy = self;
  [v2 stopObservation_];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for UserDevicesBehaviors();
  [(WOUserDevicesBehaviors *)&v4 dealloc];
}

- (void)workoutHealthDataAllowedWhenLockedWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)(_s10ObjectiveC8ObjCBoolVIeyBy_SbIegy_TRTA_0, v5);
}

- (void)didUpdateKeyValueDomain:(id)domain
{
  selfCopy = self;
  UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()();
}

@end