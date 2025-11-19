@interface WFRunningProgressSuppressionStateMachine
- (WFRunningProgressSuppressionStateMachineDelegate)delegate;
- (void)decideRunningProgressIsAllowed:(BOOL)a3 withReason:(id)a4;
- (void)setDelegate:(id)a3;
- (void)startedRunningAction:(id)a3 inShortcut:(id)a4;
- (void)startedRunningShortcut:(id)a3 withDialogAttribution:(id)a4;
@end

@implementation WFRunningProgressSuppressionStateMachine

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1CA282EF4();
}

- (void)startedRunningShortcut:(id)a3 withDialogAttribution:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1CA28C8D4(v6, v7);
}

- (WFRunningProgressSuppressionStateMachineDelegate)delegate
{
  v2 = sub_1CA630314();

  return v2;
}

- (void)startedRunningAction:(id)a3 inShortcut:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1CA6304C0(v6, v7);
}

- (void)decideRunningProgressIsAllowed:(BOOL)a3 withReason:(id)a4
{
  sub_1CA94C3A8();
  v6 = self;
  sub_1CA28C7C4(a3);
}

@end