@interface WorkoutAlertTrackStatusChange
- (NSString)description;
- (_TtC11WorkoutCore29WorkoutAlertTrackStatusChange)init;
- (id)spokenDescriptionWithFormattingManager:(id)manager;
- (id)spokenUserDataWithFormattingManager:(id)manager;
@end

@implementation WorkoutAlertTrackStatusChange

- (NSString)description
{
  v2 = MEMORY[0x20F2E6C00](0xD000000000000022, 0x800000020B463A60);

  return v2;
}

- (id)spokenDescriptionWithFormattingManager:(id)manager
{
  v3 = specialized WorkoutAlertTrackStatusChange.localizedAlertTitle.getter();
  v4 = MEMORY[0x20F2E6C00](v3);

  return v4;
}

- (id)spokenUserDataWithFormattingManager:(id)manager
{
  v3 = type metadata accessor for BasicVoiceFeedbackAlerts();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static BasicVoiceFeedbackAlerts.trackStatusChanged.getter();
  specialized VoiceFeedbackAlerting.toDictionary()();
  (*(v4 + 8))(v7, v3);
  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (_TtC11WorkoutCore29WorkoutAlertTrackStatusChange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end