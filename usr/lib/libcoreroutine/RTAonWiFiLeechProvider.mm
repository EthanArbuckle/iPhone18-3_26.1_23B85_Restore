@interface RTAonWiFiLeechProvider
+ (_TtC14libcoreroutine22RTAonWiFiLeechProvider)shared;
- (_TtC14libcoreroutine22RTAonWiFiLeechProvider)init;
- (void)registerWithQueue:(id)a3 callback:(id)a4;
@end

@implementation RTAonWiFiLeechProvider

+ (_TtC14libcoreroutine22RTAonWiFiLeechProvider)shared
{
  if (qword_2814A7DC0 != -1)
  {
    swift_once();
  }

  v3 = static RTAonWiFiLeechProvider.shared;

  return v3;
}

- (void)registerWithQueue:(id)a3 callback:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  RTAonWiFiLeechProvider.register(queue:callback:)(v8, sub_2304BF418, v7);
}

- (_TtC14libcoreroutine22RTAonWiFiLeechProvider)init
{
  *(&self->super.isa + OBJC_IVAR____TtC14libcoreroutine22RTAonWiFiLeechProvider__aonSense) = 0;
  v3 = (&self->super.isa + OBJC_IVAR____TtC14libcoreroutine22RTAonWiFiLeechProvider__callback);
  v4 = type metadata accessor for RTAonWiFiLeechProvider();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(RTAonWiFiLeechProvider *)&v6 init];
}

@end