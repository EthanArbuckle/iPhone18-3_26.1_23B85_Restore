@interface SBLaunchSnapshotWaitingAlertItem
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBLaunchSnapshotWaitingAlertItem

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v4 = [(SBAlertItem *)self alertController:configure];
  [v4 setTitle:@"Regenerating Default Launch Images..."];
  [v4 setMessage:@"Your call is important to us. Please wait on the line and a customer service representative will be with you as soon as possible."];
}

@end