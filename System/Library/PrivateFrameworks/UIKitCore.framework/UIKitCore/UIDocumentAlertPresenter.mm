@interface UIDocumentAlertPresenter
+ (id)_presentAlertWithError:(id)error completionHandler:(id)handler;
- (UIDocumentAlertPresenter)initWithError:(id)error completionHandler:(id)handler;
- (void)_forceFinishNow;
- (void)alertView:(id)view clickedButtonAtIndex:(int64_t)index;
- (void)alertViewCancel:(id)cancel;
- (void)dealloc;
@end

@implementation UIDocumentAlertPresenter

- (UIDocumentAlertPresenter)initWithError:(id)error completionHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = UIDocumentAlertPresenter;
  v9 = [(UIDocumentAlertPresenter *)&v13 init];
  if (v9)
  {
    v10 = [handlerCopy copy];
    completionHandler = v9->_completionHandler;
    v9->_completionHandler = v10;

    objc_storeStrong(&v9->_error, error);
  }

  return v9;
}

- (void)dealloc
{
  [(UIAlertView *)self->_alert setDelegate:0];
  v3.receiver = self;
  v3.super_class = UIDocumentAlertPresenter;
  [(UIDocumentAlertPresenter *)&v3 dealloc];
}

+ (id)_presentAlertWithError:(id)error completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  handlerCopy = handler;
  v7 = [[UIDocumentAlertPresenter alloc] initWithError:errorCopy completionHandler:handlerCopy];
  v8 = [UIAlertView alloc];
  localizedDescription = [errorCopy localizedDescription];
  localizedRecoverySuggestion = [errorCopy localizedRecoverySuggestion];
  v11 = [(UIAlertView *)v8 initWithTitle:localizedDescription message:localizedRecoverySuggestion delegate:v7 cancelButtonTitle:0 otherButtonTitles:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  localizedRecoveryOptions = [errorCopy localizedRecoveryOptions];
  v13 = [localizedRecoveryOptions countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(localizedRecoveryOptions);
        }

        [(UIAlertView *)v11 addButtonWithTitle:*(*(&v18 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [localizedRecoveryOptions countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  [(UIAlertView *)v11 show];
  return v7;
}

- (void)_forceFinishNow
{
  alert = self->_alert;
  cancelButtonIndex = [(UIAlertView *)alert cancelButtonIndex];

  [(UIAlertView *)alert dismissWithClickedButtonIndex:cancelButtonIndex animated:0];
}

- (void)alertView:(id)view clickedButtonAtIndex:(int64_t)index
{
  if ([view cancelButtonIndex] != index)
  {
    recoveryAttempter = [(NSError *)self->_error recoveryAttempter];
    [recoveryAttempter attemptRecoveryFromError:self->_error optionIndex:index];
  }

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v8 = *(completionHandler + 2);

    v8();
  }
}

- (void)alertViewCancel:(id)cancel
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0);
  }
}

@end