@interface TPAlert
- (void)dealloc;
- (void)invalidate;
- (void)show;
- (void)showOnViewController:(id)controller;
@end

@implementation TPAlert

- (void)dealloc
{
  userNotification = self->_userNotification;
  if (userNotification)
  {
    CFRelease(userNotification);
  }

  v4.receiver = self;
  v4.super_class = TPAlert;
  [(TPAlert *)&v4 dealloc];
}

- (void)invalidate
{
  userNotification = self->_userNotification;
  if (userNotification)
  {
    CFUserNotificationCancel(userNotification);
  }
}

- (void)show
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_1B4894000, a2, OS_LOG_TYPE_ERROR, "Unable to create CFUserNotification: %d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t __15__TPAlert_show__block_invoke()
{
  pendingAlerts = [MEMORY[0x1E695DF70] array];

  return MEMORY[0x1EEE66BB8]();
}

- (void)showOnViewController:(id)controller
{
  controllerCopy = controller;
  v5 = MEMORY[0x1E69DC650];
  title = [(TPAlert *)self title];
  message = [(TPAlert *)self message];
  v8 = [v5 alertControllerWithTitle:title message:message preferredStyle:1];

  defaultButtonTitle = [(TPAlert *)self defaultButtonTitle];

  if (defaultButtonTitle)
  {
    v10 = MEMORY[0x1E69DC648];
    defaultButtonTitle2 = [(TPAlert *)self defaultButtonTitle];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __32__TPAlert_showOnViewController___block_invoke;
    v23[3] = &unk_1E7C0C5A8;
    v23[4] = self;
    v12 = [v10 actionWithTitle:defaultButtonTitle2 style:1 handler:v23];
    [v8 addAction:v12];
  }

  alternateButtonTitle = [(TPAlert *)self alternateButtonTitle];

  if (alternateButtonTitle)
  {
    v14 = MEMORY[0x1E69DC648];
    alternateButtonTitle2 = [(TPAlert *)self alternateButtonTitle];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __32__TPAlert_showOnViewController___block_invoke_2;
    v22[3] = &unk_1E7C0C5A8;
    v22[4] = self;
    v16 = [v14 actionWithTitle:alternateButtonTitle2 style:0 handler:v22];
    [v8 addAction:v16];
  }

  otherButtonTitle = [(TPAlert *)self otherButtonTitle];

  if (otherButtonTitle)
  {
    v18 = MEMORY[0x1E69DC648];
    otherButtonTitle2 = [(TPAlert *)self otherButtonTitle];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __32__TPAlert_showOnViewController___block_invoke_3;
    v21[3] = &unk_1E7C0C5A8;
    v21[4] = self;
    v20 = [v18 actionWithTitle:otherButtonTitle2 style:0 handler:v21];
    [v8 addAction:v20];
  }

  [controllerCopy presentViewController:v8 animated:1 completion:0];
}

@end