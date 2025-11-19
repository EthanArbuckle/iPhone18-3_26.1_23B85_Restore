@interface Migration
+ (void)preflight;
- (_TtC15ScreenTimeAgent9Migration)init;
@end

@implementation Migration

+ (void)preflight
{
  if (qword_1001DF148 != -1)
  {
    swift_once();
  }
}

- (_TtC15ScreenTimeAgent9Migration)init
{
  Logger.init(subsystem:category:)();
  v4.receiver = self;
  v4.super_class = type metadata accessor for Migration();
  return [(Migration *)&v4 init];
}

@end