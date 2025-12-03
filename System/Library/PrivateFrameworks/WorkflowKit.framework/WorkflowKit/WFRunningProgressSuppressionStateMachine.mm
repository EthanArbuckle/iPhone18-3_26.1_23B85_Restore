@interface WFRunningProgressSuppressionStateMachine
- (WFRunningProgressSuppressionStateMachineDelegate)delegate;
- (void)decideRunningProgressIsAllowed:(BOOL)allowed withReason:(id)reason;
- (void)setDelegate:(id)delegate;
- (void)startedRunningAction:(id)action inShortcut:(id)shortcut;
- (void)startedRunningShortcut:(id)shortcut withDialogAttribution:(id)attribution;
@end

@implementation WFRunningProgressSuppressionStateMachine

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CA282EF4();
}

- (void)startedRunningShortcut:(id)shortcut withDialogAttribution:(id)attribution
{
  shortcutCopy = shortcut;
  attributionCopy = attribution;
  selfCopy = self;
  sub_1CA28C8D4(shortcutCopy, attributionCopy);
}

- (WFRunningProgressSuppressionStateMachineDelegate)delegate
{
  v2 = sub_1CA630314();

  return v2;
}

- (void)startedRunningAction:(id)action inShortcut:(id)shortcut
{
  actionCopy = action;
  shortcutCopy = shortcut;
  selfCopy = self;
  sub_1CA6304C0(actionCopy, shortcutCopy);
}

- (void)decideRunningProgressIsAllowed:(BOOL)allowed withReason:(id)reason
{
  sub_1CA94C3A8();
  selfCopy = self;
  sub_1CA28C7C4(allowed);
}

@end