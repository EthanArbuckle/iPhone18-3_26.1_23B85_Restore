@interface UIBridgeService
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)notifyTypingStartedWith:(id)a3;
- (void)preheat;
- (void)siriDismissed;
- (void)siriPrompted;
- (void)siriWillPrompt;
- (void)startAttending;
- (void)startAttendingWithReason:(unint64_t)a3 deviceId:(id)a4;
- (void)stopAttendingForReason:(unint64_t)a3;
- (void)stopAttendingWithReason:(unint64_t)a3;
@end

@implementation UIBridgeService

- (void)preheat
{
  v2 = self;
  sub_222DF0F24();
}

- (void)siriDismissed
{
  v2 = self;
  sub_222DFB2F8();
}

- (void)siriPrompted
{
  v2 = self;
  sub_222DFB490();
}

- (void)stopAttendingWithReason:(unint64_t)a3
{
  v3 = self;
  sub_222DFB8A8();
}

- (void)stopAttendingForReason:(unint64_t)a3
{
  v3 = self;
  sub_222DFB924();
}

- (void)siriWillPrompt
{
  v2 = self;
  sub_222DFBE5C();
}

- (void)startAttending
{
  v2 = self;
  sub_222DFBEA4();
}

- (void)startAttendingWithReason:(unint64_t)a3 deviceId:(id)a4
{
  if (a4)
  {
    sub_222E098C0();
  }

  v5 = self;
  sub_222DFBEFC();
}

- (void)notifyTypingStartedWith:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_222DFC660();
}

- (void)connectionInterrupted
{
  v2 = self;
  sub_222E004E4();
}

- (void)connectionInvalidated
{
  v2 = self;
  sub_222E00538();
}

@end