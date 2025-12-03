@interface WorkoutAlertTimeSplit
- (_TtC11WorkoutCore21WorkoutAlertTimeSplit)init;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager;
- (id)spokenDescriptionWithFormattingManager:(id)manager;
- (id)spokenUserDataWithFormattingManager:(id)manager;
@end

@implementation WorkoutAlertTimeSplit

- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  specialized WorkoutAlertTimeSplit.localizedProgressDescription(with:formattingManager:)(managerCopy);

  type metadata accessor for NLWorkoutAlertUnitAnnotatedString();
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)spokenDescriptionWithFormattingManager:(id)manager
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11WorkoutCore21WorkoutAlertTimeSplit_elapsedTime);
  managerCopy = manager;
  selfCopy = self;
  v7 = [managerCopy stringWithDuration:6 durationFormat:v4];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v9, v11);
  v14 = v13;

  v15 = MEMORY[0x20F2E6C00](v12, v14);

  return v15;
}

- (id)spokenUserDataWithFormattingManager:(id)manager
{
  v4 = type metadata accessor for TimeSplitModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(&self->super.super.isa + OBJC_IVAR____TtC11WorkoutCore21WorkoutAlertTimeSplit_elapsedTime);
  selfCopy = self;
  TimeSplitModel.init(duration:)();
  specialized VoiceFeedbackAlerting.toDictionary()();

  (*(v5 + 8))(v8, v4);
  v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (_TtC11WorkoutCore21WorkoutAlertTimeSplit)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end