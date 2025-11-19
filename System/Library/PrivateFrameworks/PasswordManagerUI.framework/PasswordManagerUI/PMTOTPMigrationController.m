@interface PMTOTPMigrationController
- (PMTOTPMigrationController)initWithMigrationURL:(id)a3;
- (PMTOTPMigrationControllerDelegate)delegate;
- (void)totpMigrationController:(id)a3 presentDetailsForSavedAccount:(id)a4;
- (void)totpMigrationController:(id)a3 presentPickerForGenerator:(id)a4;
- (void)totpMigrationControllerFinishedImport:(id)a3;
@end

@implementation PMTOTPMigrationController

- (PMTOTPMigrationController)initWithMigrationURL:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PMTOTPMigrationController;
  v5 = [(PMTOTPMigrationController *)&v10 init];
  if (v5 && (v6 = [[_TtC17PasswordManagerUI26_PMTOTPMigrationController alloc] initWithMigrationURL:v4 delegate:v5], controller = v5->_controller, v5->_controller = v6, controller, v5->_controller))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)totpMigrationControllerFinishedImport:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained totpMigrationControllerFinishedImport:self];
  }
}

- (void)totpMigrationController:(id)a3 presentDetailsForSavedAccount:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained totpMigrationController:self presentDetailsForSavedAccount:v6];
  }
}

- (void)totpMigrationController:(id)a3 presentPickerForGenerator:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained totpMigrationController:self presentPickerForGenerator:v6];
  }
}

- (PMTOTPMigrationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end