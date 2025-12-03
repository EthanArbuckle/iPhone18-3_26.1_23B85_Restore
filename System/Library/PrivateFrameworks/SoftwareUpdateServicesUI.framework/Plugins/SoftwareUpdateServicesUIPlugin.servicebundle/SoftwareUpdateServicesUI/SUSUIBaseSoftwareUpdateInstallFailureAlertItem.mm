@interface SUSUIBaseSoftwareUpdateInstallFailureAlertItem
- (void)dismissAlert;
@end

@implementation SUSUIBaseSoftwareUpdateInstallFailureAlertItem

- (void)dismissAlert
{
  selfCopy = self;
  v4 = a2;
  if ((BYTE1(self->super._controller) & 1) == 0)
  {
    softwareUpdateController = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy softwareUpdateController];
    [(SUSUISoftwareUpdateController *)softwareUpdateController repopInstallAlertWithDefaultDurationFromNowForReason:@"Unable to install alert - no action taken"];
  }

  v3.receiver = selfCopy;
  v3.super_class = SUSUIBaseSoftwareUpdateInstallFailureAlertItem;
  [(SUSUIBaseSoftwareUpdateAlertItem *)&v3 dismissAlert];
}

@end