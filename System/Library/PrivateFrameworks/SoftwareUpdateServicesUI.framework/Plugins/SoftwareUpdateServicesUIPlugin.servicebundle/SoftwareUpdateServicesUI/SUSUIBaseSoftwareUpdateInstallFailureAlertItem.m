@interface SUSUIBaseSoftwareUpdateInstallFailureAlertItem
- (void)dismissAlert;
@end

@implementation SUSUIBaseSoftwareUpdateInstallFailureAlertItem

- (void)dismissAlert
{
  v5 = self;
  v4 = a2;
  if ((BYTE1(self->super._controller) & 1) == 0)
  {
    v2 = [(SUSUIBaseSoftwareUpdateAlertItem *)v5 softwareUpdateController];
    [(SUSUISoftwareUpdateController *)v2 repopInstallAlertWithDefaultDurationFromNowForReason:@"Unable to install alert - no action taken"];
  }

  v3.receiver = v5;
  v3.super_class = SUSUIBaseSoftwareUpdateInstallFailureAlertItem;
  [(SUSUIBaseSoftwareUpdateAlertItem *)&v3 dismissAlert];
}

@end