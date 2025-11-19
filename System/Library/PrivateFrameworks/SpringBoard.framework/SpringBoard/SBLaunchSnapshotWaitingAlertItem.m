@interface SBLaunchSnapshotWaitingAlertItem
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBLaunchSnapshotWaitingAlertItem

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v4 = [(SBAlertItem *)self alertController:a3];
  [v4 setTitle:@"Regenerating Default Launch Images..."];
  [v4 setMessage:@"Your call is important to us. Please wait on the line and a customer service representative will be with you as soon as possible."];
}

@end