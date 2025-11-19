@interface SMUPasswordController
- (SMUPasswordController)initWithTitle:(id)a3 passwordLength:(int64_t)a4 supportedOrientations:(unint64_t)a5;
- (void)alertController:(id)a3 enteredText:(id)a4;
- (void)alertControllerCancelled:(id)a3;
@end

@implementation SMUPasswordController

- (SMUPasswordController)initWithTitle:(id)a3 passwordLength:(int64_t)a4 supportedOrientations:(unint64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = SMUPasswordController;
  v9 = [(SMUPasswordController *)&v13 init];
  if (v9)
  {
    v10 = [(TVRAlertController *)[SMUPasswordAlertController alloc] initWithTitle:v8 passcodeSize:a4];
    alertController = v9->_alertController;
    v9->_alertController = v10;

    [(TVRAlertController *)v9->_alertController setDelegate:v9];
    [(SMUPasswordAlertController *)v9->_alertController setSupportedOrientations:a5];
  }

  return v9;
}

- (void)alertController:(id)a3 enteredText:(id)a4
{
  passwordEnteredHandler = self->_passwordEnteredHandler;
  if (passwordEnteredHandler)
  {
    passwordEnteredHandler[2](passwordEnteredHandler, a4);
  }
}

- (void)alertControllerCancelled:(id)a3
{
  passwordEntryCancelledHandler = self->_passwordEntryCancelledHandler;
  if (passwordEntryCancelledHandler)
  {
    passwordEntryCancelledHandler[2]();
  }
}

@end