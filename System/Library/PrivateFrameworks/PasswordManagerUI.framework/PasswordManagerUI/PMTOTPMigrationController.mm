@interface PMTOTPMigrationController
- (PMTOTPMigrationController)initWithMigrationURL:(id)l;
- (PMTOTPMigrationControllerDelegate)delegate;
- (void)totpMigrationController:(id)controller presentDetailsForSavedAccount:(id)account;
- (void)totpMigrationController:(id)controller presentPickerForGenerator:(id)generator;
- (void)totpMigrationControllerFinishedImport:(id)import;
@end

@implementation PMTOTPMigrationController

- (PMTOTPMigrationController)initWithMigrationURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = PMTOTPMigrationController;
  v5 = [(PMTOTPMigrationController *)&v10 init];
  if (v5 && (v6 = [[_TtC17PasswordManagerUI26_PMTOTPMigrationController alloc] initWithMigrationURL:lCopy delegate:v5], controller = v5->_controller, v5->_controller = v6, controller, v5->_controller))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)totpMigrationControllerFinishedImport:(id)import
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained totpMigrationControllerFinishedImport:self];
  }
}

- (void)totpMigrationController:(id)controller presentDetailsForSavedAccount:(id)account
{
  accountCopy = account;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained totpMigrationController:self presentDetailsForSavedAccount:accountCopy];
  }
}

- (void)totpMigrationController:(id)controller presentPickerForGenerator:(id)generator
{
  generatorCopy = generator;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained totpMigrationController:self presentPickerForGenerator:generatorCopy];
  }
}

- (PMTOTPMigrationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end