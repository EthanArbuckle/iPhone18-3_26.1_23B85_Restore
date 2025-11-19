@interface ScanConversationsSubscriber
- (_TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber)init;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
@end

@implementation ScanConversationsSubscriber

- (void)receiveSubscription:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber_downstream);
  v6 = a3;
  v5 = self;
  sub_222AA6030(v6, &qword_27D01DD00, &qword_222B0BB78);
}

- (int64_t)receiveInput:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_222B02BA8();
  swift_unknownObjectRelease();
  v5 = sub_222AA6708(v7);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (void)receiveCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_222AA73C8(v4);
}

- (void)cancel
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber_downstream);
  v3 = self;
  sub_222AA6340();
}

- (_TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end