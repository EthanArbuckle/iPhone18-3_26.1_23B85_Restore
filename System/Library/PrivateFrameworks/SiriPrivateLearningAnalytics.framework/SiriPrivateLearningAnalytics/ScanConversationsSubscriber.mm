@interface ScanConversationsSubscriber
- (_TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber)init;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
@end

@implementation ScanConversationsSubscriber

- (void)receiveSubscription:(id)subscription
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber_downstream);
  subscriptionCopy = subscription;
  selfCopy = self;
  sub_222AA6030(subscriptionCopy, &qword_27D01DD00, &qword_222B0BB78);
}

- (int64_t)receiveInput:(id)input
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_222B02BA8();
  swift_unknownObjectRelease();
  v5 = sub_222AA6708(v7);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (void)receiveCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  sub_222AA73C8(completionCopy);
}

- (void)cancel
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber_downstream);
  selfCopy = self;
  sub_222AA6340();
}

- (_TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end