@interface AchievementEnvironment
- (NSString)modalityIdentifier;
- (_TtC15SeymourServices22AchievementEnvironment)init;
- (id)numberOfGuidedWorkoutsOver5MinutesForModality:(id)modality;
- (id)numberOfWorkoutsOver5MinutesForModality:(id)modality;
@end

@implementation AchievementEnvironment

- (NSString)modalityIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_modalityIdentifier);
  v3 = *(self + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_modalityIdentifier + 8);

  v4 = sub_22766BFD0();

  return v4;
}

- (id)numberOfWorkoutsOver5MinutesForModality:(id)modality
{
  modalityCopy = modality;
  selfCopy = self;
  v6 = sub_22704FF94(modalityCopy);

  return v6;
}

- (id)numberOfGuidedWorkoutsOver5MinutesForModality:(id)modality
{
  modalityCopy = modality;
  selfCopy = self;
  v6 = sub_227050000(modalityCopy);

  return v6;
}

- (_TtC15SeymourServices22AchievementEnvironment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end