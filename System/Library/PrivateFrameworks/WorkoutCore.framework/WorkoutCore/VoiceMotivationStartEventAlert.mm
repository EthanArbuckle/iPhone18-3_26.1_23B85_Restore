@interface VoiceMotivationStartEventAlert
- (NSString)description;
- (_TtC11WorkoutCore30VoiceMotivationStartEventAlert)init;
@end

@implementation VoiceMotivationStartEventAlert

- (NSString)description
{
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001ELL, 0x800000020B44A6B0);

  return v2;
}

- (_TtC11WorkoutCore30VoiceMotivationStartEventAlert)init
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for VoiceMotivationStartEventAlert();
  v12.receiver = self;
  v12.super_class = started;
  v9 = [(VoiceMotivationStartEventAlert *)&v12 init];
  [(NLWorkoutAlert *)v9 setType:3];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);
  [(NLWorkoutAlert *)v9 setEventDate:isa];

  return v9;
}

@end