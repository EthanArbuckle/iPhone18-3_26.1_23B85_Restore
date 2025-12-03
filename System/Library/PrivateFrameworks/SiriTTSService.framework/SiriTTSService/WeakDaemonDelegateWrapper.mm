@interface WeakDaemonDelegateWrapper
- (void)didGenerateWordTimingsWithRequestId:(unint64_t)id wordTimingInfo:(id)info;
- (void)didStartSpeakingWithRequestId:(unint64_t)id;
- (void)pingWithReply:(id)reply;
@end

@implementation WeakDaemonDelegateWrapper

- (void)didStartSpeakingWithRequestId:(unint64_t)id
{

  sub_1B1A946D4(id);
}

- (void)didGenerateWordTimingsWithRequestId:(unint64_t)id wordTimingInfo:(id)info
{
  type metadata accessor for WordTimingInfo();
  sub_1B1C2CE78();

  sub_1B1AD874C(id);
}

- (void)pingWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_1B1AD9A74(sub_1B1A9D79C, v4);
}

@end