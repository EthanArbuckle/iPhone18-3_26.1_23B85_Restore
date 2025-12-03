@interface SUIBUIBridgeClient
- (SUIBUIBridgeClient)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (void)notifyTypingStartedWith:(id)with;
- (void)preheat;
- (void)siriDismissed;
- (void)siriPrompted;
- (void)siriWillPrompt;
- (void)startAttending;
- (void)startAttendingWithReason:(unint64_t)reason deviceId:(id)id;
- (void)stopAttendingForReason:(unint64_t)reason;
@end

@implementation SUIBUIBridgeClient

- (SUIBUIBridgeClient)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  swift_unknownObjectRetain();
  queueCopy = queue;
  return SUIBUIBridgeClient.init(delegate:delegateQueue:)(delegate, queue);
}

- (void)preheat
{
  selfCopy = self;
  SUIBUIBridgeClient.preheat()();
}

- (void)siriDismissed
{
  selfCopy = self;
  SUIBUIBridgeClient.siriDismissed()();
}

- (void)siriPrompted
{
  selfCopy = self;
  SUIBUIBridgeClient.siriPrompted()();
}

- (void)stopAttendingForReason:(unint64_t)reason
{
  selfCopy = self;
  SUIBUIBridgeClient.stopAttending(for:)(reason);
}

- (void)notifyTypingStartedWith:(id)with
{
  withCopy = with;
  v5._typingSessionId = self;
  typingSessionId = v5._typingSessionId;
  v5.super.isa = withCopy;
  SUIBUIBridgeClient.notifyTypingStarted(with:)(v5);
}

- (void)siriWillPrompt
{
  selfCopy = self;
  SUIBUIBridgeClient.siriWillPrompt()();
}

- (void)startAttending
{
  selfCopy = self;
  SUIBUIBridgeClient.startAttending()();
}

- (void)startAttendingWithReason:(unint64_t)reason deviceId:(id)id
{
  if (id)
  {
    v6 = sub_222E098C0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  SUIBUIBridgeClient.startAttending(with:deviceId:)(reason, v6, v8);
}

@end