@interface UIDocumentAlertPresenter
+ (id)_presentAlertWithError:(id)a3 completionHandler:(id)a4;
- (UIDocumentAlertPresenter)initWithError:(id)a3 completionHandler:(id)a4;
- (void)_forceFinishNow;
- (void)alertView:(id)a3 clickedButtonAtIndex:(int64_t)a4;
- (void)alertViewCancel:(id)a3;
- (void)dealloc;
@end

@implementation UIDocumentAlertPresenter

- (UIDocumentAlertPresenter)initWithError:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = UIDocumentAlertPresenter;
  v9 = [(UIDocumentAlertPresenter *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    completionHandler = v9->_completionHandler;
    v9->_completionHandler = v10;

    objc_storeStrong(&v9->_error, a3);
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

+ (id)_presentAlertWithError:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [[UIDocumentAlertPresenter alloc] initWithError:v5 completionHandler:v6];
  v8 = [UIAlertView alloc];
  v9 = [v5 localizedDescription];
  v10 = [v5 localizedRecoverySuggestion];
  v11 = [(UIAlertView *)v8 initWithTitle:v9 message:v10 delegate:v7 cancelButtonTitle:0 otherButtonTitles:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [v5 localizedRecoveryOptions];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v12);
        }

        [(UIAlertView *)v11 addButtonWithTitle:*(*(&v18 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  [(UIAlertView *)v11 show];
  return v7;
}

- (void)_forceFinishNow
{
  alert = self->_alert;
  v3 = [(UIAlertView *)alert cancelButtonIndex];

  [(UIAlertView *)alert dismissWithClickedButtonIndex:v3 animated:0];
}

- (void)alertView:(id)a3 clickedButtonAtIndex:(int64_t)a4
{
  if ([a3 cancelButtonIndex] != a4)
  {
    v6 = [(NSError *)self->_error recoveryAttempter];
    [v6 attemptRecoveryFromError:self->_error optionIndex:a4];
  }

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v8 = *(completionHandler + 2);

    v8();
  }
}

- (void)alertViewCancel:(id)a3
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0);
  }
}

@end