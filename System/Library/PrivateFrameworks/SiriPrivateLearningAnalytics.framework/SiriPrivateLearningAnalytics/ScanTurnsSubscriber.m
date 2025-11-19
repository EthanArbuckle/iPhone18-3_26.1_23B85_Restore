@interface ScanTurnsSubscriber
- (_TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber)init;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
@end

@implementation ScanTurnsSubscriber

- (void)receiveSubscription:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_downstream);
  v6 = a3;
  v5 = self;
  sub_222AA601C(v6);
}

- (int64_t)receiveInput:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_222B02BA8();
  swift_unknownObjectRelease();
  v5 = sub_222A93600(v7);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (void)receiveCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_222A93EE4(v4);
}

- (void)cancel
{
  v2 = self;
  sub_222A940D8();
}

- (_TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end