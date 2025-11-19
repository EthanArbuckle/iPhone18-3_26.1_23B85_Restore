@interface AchievementProgressEnvironment
- (NSString)modalityIdentifier;
- (_TtC13SeymourClient30AchievementProgressEnvironment)init;
- (id)numberOfGuidedWorkoutsOver5MinutesForModality:(id)a3;
- (id)numberOfWorkoutsOver5MinutesForModality:(id)a3;
@end

@implementation AchievementProgressEnvironment

- (id)numberOfWorkoutsOver5MinutesForModality:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1B4DE40C0(v4);

  return v6;
}

- (id)numberOfGuidedWorkoutsOver5MinutesForModality:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1B4DE4178(v4);

  return v6;
}

- (NSString)modalityIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_modalityIdentifier);
  v3 = *(self + OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_modalityIdentifier + 8);

  v4 = sub_1B4F67F64();

  return v4;
}

- (_TtC13SeymourClient30AchievementProgressEnvironment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end