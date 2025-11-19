@interface SBSUICFUserNotificationContentRemoteContainerViewController
@end

@implementation SBSUICFUserNotificationContentRemoteContainerViewController

uint64_t __88___SBSUICFUserNotificationContentRemoteContainerViewController_configureWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1A9A79000, v2, OS_LOG_TYPE_DEFAULT, "<%p> Sending back configuration response.", &v5, 0xCu);
  }

  [*(a1 + 32) _updatePreferredContentSizeAndLayoutChildViewController];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __89___SBSUICFUserNotificationContentRemoteContainerViewController_invalidateWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end