@interface UIBridgeService
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)notifyTypingStartedWith:(id)with;
- (void)preheat;
- (void)siriDismissed;
- (void)siriPrompted;
- (void)siriWillPrompt;
- (void)startAttending;
- (void)startAttendingWithReason:(unint64_t)reason deviceId:(id)id;
- (void)stopAttendingForReason:(unint64_t)reason;
- (void)stopAttendingWithReason:(unint64_t)reason;
@end

@implementation UIBridgeService

- (void)preheat
{
  selfCopy = self;
  sub_222DF0F24();
}

- (void)siriDismissed
{
  selfCopy = self;
  sub_222DFB2F8();
}

- (void)siriPrompted
{
  selfCopy = self;
  sub_222DFB490();
}

- (void)stopAttendingWithReason:(unint64_t)reason
{
  selfCopy = self;
  sub_222DFB8A8();
}

- (void)stopAttendingForReason:(unint64_t)reason
{
  selfCopy = self;
  sub_222DFB924();
}

- (void)siriWillPrompt
{
  selfCopy = self;
  sub_222DFBE5C();
}

- (void)startAttending
{
  selfCopy = self;
  sub_222DFBEA4();
}

- (void)startAttendingWithReason:(unint64_t)reason deviceId:(id)id
{
  if (id)
  {
    sub_222E098C0();
  }

  selfCopy = self;
  sub_222DFBEFC();
}

- (void)notifyTypingStartedWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_222DFC660();
}

- (void)connectionInterrupted
{
  selfCopy = self;
  sub_222E004E4();
}

- (void)connectionInvalidated
{
  selfCopy = self;
  sub_222E00538();
}

@end