@interface WOCoreWorkoutConfiguration
+ (id)deserializeFrom:(id)a3;
+ (id)deserializeFromPersistence:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FIUIWorkoutActivityType)activityType;
- (NSString)analyticsKey;
- (NSString)analyticsSubActivities;
- (WOCoreWorkoutConfiguration)init;
- (id)serialize;
- (int64_t)hash;
- (void)setActivityType:(id)a3;
@end

@implementation WOCoreWorkoutConfiguration

- (FIUIWorkoutActivityType)activityType
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setActivityType:(id)a3
{
  v5 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (int64_t)hash
{
  v2 = self;
  v3 = WorkoutConfiguration.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = WorkoutConfiguration.isEqual(_:)(v8);

  _s10Foundation4DateVSgWOhTm_0(v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

- (WOCoreWorkoutConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)deserializeFromPersistence:(id)a3
{
  v3 = one-time initialization token for shared;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(v4, 0, static WorkoutConfigurationValidator.shared, v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1Tm_1(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)serialize
{
  v2 = self;
  v3 = WorkoutConfiguration.serialize()();

  return v3;
}

+ (id)deserializeFrom:(id)a3
{
  if (a3)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = specialized static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(v3, 0, static WorkoutConfigurationValidator.shared);

  return v4;
}

- (NSString)analyticsKey
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  if (v4 <= 1)
  {
    if (*(&self->super.isa + v3))
    {
      v5 = 0xE800000000000000;
      v6 = 0x6C61767265746E69;
    }

    else
    {
      v5 = 0xE400000000000000;
      v6 = 1818324839;
    }
  }

  else if (v4 == 2)
  {
    v5 = 0xE400000000000000;
    v6 = 1701011826;
  }

  else if (v4 == 3)
  {
    v5 = 0xE500000000000000;
    v6 = 0x7265636170;
  }

  else
  {
    v5 = 0xEA00000000007472;
    v6 = 0x6F707369746C756DLL;
  }

  v7 = MEMORY[0x20F2E6C00](v6, v5);

  return v7;
}

- (NSString)analyticsSubActivities
{
  v2 = MEMORY[0x20F2E6C00](1701736302, 0xE400000000000000);

  return v2;
}

@end