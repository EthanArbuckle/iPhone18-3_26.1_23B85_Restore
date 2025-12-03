@interface ScanTurnsSubscriber
- (_TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber)init;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
@end

@implementation ScanTurnsSubscriber

- (void)receiveSubscription:(id)subscription
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_downstream);
  subscriptionCopy = subscription;
  selfCopy = self;
  sub_222AA601C(subscriptionCopy);
}

- (int64_t)receiveInput:(id)input
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_222B02BA8();
  swift_unknownObjectRelease();
  v5 = sub_222A93600(v7);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (void)receiveCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  sub_222A93EE4(completionCopy);
}

- (void)cancel
{
  selfCopy = self;
  sub_222A940D8();
}

- (_TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end