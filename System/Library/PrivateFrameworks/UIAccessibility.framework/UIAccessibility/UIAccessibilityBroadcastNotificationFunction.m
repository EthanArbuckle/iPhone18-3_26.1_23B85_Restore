@interface UIAccessibilityBroadcastNotificationFunction
@end

@implementation UIAccessibilityBroadcastNotificationFunction

void ___UIAccessibilityBroadcastNotificationFunction_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [_QueuedNotificationsLock lock];
  v2 = _QueuedNotifications;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
  [v2 removeObject:v3];

  [_QueuedNotificationsLock unlock];
  v4 = *(a1 + 48);
  if (v4 != 4002)
  {
LABEL_4:
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    _UIAXBroadcastMainThread(v4, v5, v6);
    return;
  }

  if (_AXSAutomationEnabled())
  {
    v4 = *(a1 + 48);
    goto LABEL_4;
  }

  v7 = AXRuntimeLogNotifications();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    v11[0] = 67109378;
    v11[1] = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_1A9B83000, v7, OS_LOG_TYPE_INFO, "Did not post because UIA is not enabled: %d data: %{public}@", v11, 0x12u);
  }

  v10 = _UIAXAssociatedElementContextForNextNotification;
  _UIAXAssociatedElementContextForNextNotification = 0;
}

@end