@interface VoiceMotivationEndEventAlert
- (NSString)description;
- (_TtC11WorkoutCore28VoiceMotivationEndEventAlert)init;
@end

@implementation VoiceMotivationEndEventAlert

- (NSString)description
{
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001CLL, 0x800000020B445AE0);

  return v2;
}

- (_TtC11WorkoutCore28VoiceMotivationEndEventAlert)init
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VoiceMotivationEndEventAlert();
  v12.receiver = self;
  v12.super_class = v8;
  v9 = [(VoiceMotivationEndEventAlert *)&v12 init];
  [(NLWorkoutAlert *)v9 setType:25];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);
  [(NLWorkoutAlert *)v9 setEventDate:isa];

  return v9;
}

@end