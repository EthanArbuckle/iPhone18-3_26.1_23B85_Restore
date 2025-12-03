@interface SMUPasswordController
- (SMUPasswordController)initWithTitle:(id)title passwordLength:(int64_t)length supportedOrientations:(unint64_t)orientations;
- (void)alertController:(id)controller enteredText:(id)text;
- (void)alertControllerCancelled:(id)cancelled;
@end

@implementation SMUPasswordController

- (SMUPasswordController)initWithTitle:(id)title passwordLength:(int64_t)length supportedOrientations:(unint64_t)orientations
{
  titleCopy = title;
  v13.receiver = self;
  v13.super_class = SMUPasswordController;
  v9 = [(SMUPasswordController *)&v13 init];
  if (v9)
  {
    v10 = [(TVRAlertController *)[SMUPasswordAlertController alloc] initWithTitle:titleCopy passcodeSize:length];
    alertController = v9->_alertController;
    v9->_alertController = v10;

    [(TVRAlertController *)v9->_alertController setDelegate:v9];
    [(SMUPasswordAlertController *)v9->_alertController setSupportedOrientations:orientations];
  }

  return v9;
}

- (void)alertController:(id)controller enteredText:(id)text
{
  passwordEnteredHandler = self->_passwordEnteredHandler;
  if (passwordEnteredHandler)
  {
    passwordEnteredHandler[2](passwordEnteredHandler, text);
  }
}

- (void)alertControllerCancelled:(id)cancelled
{
  passwordEntryCancelledHandler = self->_passwordEntryCancelledHandler;
  if (passwordEntryCancelledHandler)
  {
    passwordEntryCancelledHandler[2]();
  }
}

@end