@interface WeakDaemonDelegateWrapper
- (void)didGenerateWordTimingsWithRequestId:(unint64_t)a3 wordTimingInfo:(id)a4;
- (void)didStartSpeakingWithRequestId:(unint64_t)a3;
- (void)pingWithReply:(id)a3;
@end

@implementation WeakDaemonDelegateWrapper

- (void)didStartSpeakingWithRequestId:(unint64_t)a3
{

  sub_1B1A946D4(a3);
}

- (void)didGenerateWordTimingsWithRequestId:(unint64_t)a3 wordTimingInfo:(id)a4
{
  type metadata accessor for WordTimingInfo();
  sub_1B1C2CE78();

  sub_1B1AD874C(a3);
}

- (void)pingWithReply:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_1B1AD9A74(sub_1B1A9D79C, v4);
}

@end