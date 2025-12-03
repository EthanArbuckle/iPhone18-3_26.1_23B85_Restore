@interface SBTestAlertItem
+ (id)alertItemWithShowInLockScreen:(BOOL)screen forcesModal:(BOOL)modal superModal:(BOOL)superModal;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBTestAlertItem

+ (id)alertItemWithShowInLockScreen:(BOOL)screen forcesModal:(BOOL)modal superModal:(BOOL)superModal
{
  superModalCopy = superModal;
  modalCopy = modal;
  screenCopy = screen;
  v8 = objc_alloc_init(self);
  [v8 setShouldShowInLockScreen:screenCopy];
  [v8 setForcesModalAlertAppearance:modalCopy];
  [v8 setBehavesSuperModally:superModalCopy];

  return v8;
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v5 = [(SBAlertItem *)self alertController:configure];
  title = [(SBTestAlertItem *)self title];
  [v5 setTitle:title];

  if (self->_message)
  {
    [v5 setMessage:?];
  }

  else
  {
    if (self->_shouldShowInLockScreen)
    {
      v7 = @"appears";
    }

    else
    {
      v7 = @"does not appear";
    }

    if (self->_forcesModalAlertAppearance)
    {
      v8 = @"forces";
    }

    else
    {
      v8 = @"does not force";
    }

    if (self->_behavesSuperModally)
    {
      v9 = @"is";
    }

    else
    {
      v9 = @"is not";
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"This alert item %@ on the lockscreen, %@ modal appearance and %@ supermodal", v7, v8, v9];
    [v5 setMessage:v10];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__SBTestAlertItem_configure_requirePasscodeForActions___block_invoke;
  v12[3] = &unk_2783A8A40;
  v12[4] = self;
  v11 = [MEMORY[0x277D750F8] actionWithTitle:@"Dismiss" style:1 handler:v12];
  [v5 addAction:v11];
}

@end