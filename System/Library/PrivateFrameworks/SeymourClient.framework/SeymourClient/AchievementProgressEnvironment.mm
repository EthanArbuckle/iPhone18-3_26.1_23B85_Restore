@interface AchievementProgressEnvironment
- (NSString)modalityIdentifier;
- (_TtC13SeymourClient30AchievementProgressEnvironment)init;
- (id)numberOfGuidedWorkoutsOver5MinutesForModality:(id)modality;
- (id)numberOfWorkoutsOver5MinutesForModality:(id)modality;
@end

@implementation AchievementProgressEnvironment

- (id)numberOfWorkoutsOver5MinutesForModality:(id)modality
{
  modalityCopy = modality;
  selfCopy = self;
  v6 = sub_1B4DE40C0(modalityCopy);

  return v6;
}

- (id)numberOfGuidedWorkoutsOver5MinutesForModality:(id)modality
{
  modalityCopy = modality;
  selfCopy = self;
  v6 = sub_1B4DE4178(modalityCopy);

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