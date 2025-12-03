@interface _SBSUICFUserNotificationContentHostViewController
- (SBUserNotificationAlert)userNotification;
- (void)configureWithCompletion:(id)completion;
- (void)invalidateWithCompletion:(id)completion;
@end

@implementation _SBSUICFUserNotificationContentHostViewController

- (void)configureWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_userNotification);
  v6 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = WeakRetained;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "<%p> Configuring user notification content extension view controller.", buf, 0xCu);
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __77___SBSUICFUserNotificationContentHostViewController_configureWithCompletion___block_invoke;
  v15 = &unk_2783A98A0;
  v16 = WeakRetained;
  v17 = completionCopy;
  v7 = completionCopy;
  v8 = WeakRetained;
  v9 = MEMORY[0x223D6F7F0](&v12);
  v10 = [(_UIRemoteViewController *)self serviceViewControllerProxy:v12];
  v11 = v10;
  if (v10)
  {
    [v10 configureWithCompletion:v9];
  }

  else
  {
    v9[2](v9);
  }
}

- (void)invalidateWithCompletion:(id)completion
{
  v10 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_userNotification);
  v6 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = WeakRetained;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "<%p> Invalidating user notification content extension view controller.", &v8, 0xCu);
  }

  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy invalidateWithCompletion:completionCopy];
}

- (SBUserNotificationAlert)userNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_userNotification);

  return WeakRetained;
}

@end