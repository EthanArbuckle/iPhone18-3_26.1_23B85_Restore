@interface SUIBUIBridgeClient
- (SUIBUIBridgeClient)initWithDelegate:(id)a3 delegateQueue:(id)a4;
- (void)notifyTypingStartedWith:(id)a3;
- (void)preheat;
- (void)siriDismissed;
- (void)siriPrompted;
- (void)siriWillPrompt;
- (void)startAttending;
- (void)startAttendingWithReason:(unint64_t)a3 deviceId:(id)a4;
- (void)stopAttendingForReason:(unint64_t)a3;
@end

@implementation SUIBUIBridgeClient

- (SUIBUIBridgeClient)initWithDelegate:(id)a3 delegateQueue:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  return SUIBUIBridgeClient.init(delegate:delegateQueue:)(a3, a4);
}

- (void)preheat
{
  v2 = self;
  SUIBUIBridgeClient.preheat()();
}

- (void)siriDismissed
{
  v2 = self;
  SUIBUIBridgeClient.siriDismissed()();
}

- (void)siriPrompted
{
  v2 = self;
  SUIBUIBridgeClient.siriPrompted()();
}

- (void)stopAttendingForReason:(unint64_t)a3
{
  v4 = self;
  SUIBUIBridgeClient.stopAttending(for:)(a3);
}

- (void)notifyTypingStartedWith:(id)a3
{
  v4 = a3;
  v5._typingSessionId = self;
  typingSessionId = v5._typingSessionId;
  v5.super.isa = v4;
  SUIBUIBridgeClient.notifyTypingStarted(with:)(v5);
}

- (void)siriWillPrompt
{
  v2 = self;
  SUIBUIBridgeClient.siriWillPrompt()();
}

- (void)startAttending
{
  v2 = self;
  SUIBUIBridgeClient.startAttending()();
}

- (void)startAttendingWithReason:(unint64_t)a3 deviceId:(id)a4
{
  if (a4)
  {
    v6 = sub_222E098C0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  SUIBUIBridgeClient.startAttending(with:deviceId:)(a3, v6, v8);
}

@end