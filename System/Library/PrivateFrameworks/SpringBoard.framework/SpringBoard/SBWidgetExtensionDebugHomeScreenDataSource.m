@interface SBWidgetExtensionDebugHomeScreenDataSource
@end

@implementation SBWidgetExtensionDebugHomeScreenDataSource

void __84___SBWidgetExtensionDebugHomeScreenDataSource_launchWidget_widgetFamily_completion___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84___SBWidgetExtensionDebugHomeScreenDataSource_launchWidget_widgetFamily_completion___block_invoke_2;
  v7[3] = &unk_2783C4BC8;
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v2;
  v7[4] = v3;
  v5 = v4;
  v6 = *(a1 + 56);
  v8 = v5;
  v10 = v6;
  SBWorkspaceForceToSpringBoard(v7);
}

uint64_t __84___SBWidgetExtensionDebugHomeScreenDataSource_launchWidget_widgetFamily_completion___block_invoke_2(void *a1, int a2)
{
  if (a2)
  {
    SBWorkspaceSuspendActiveDisplay();
    (*(a1[6] + 16))();
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[7];

    return [v3 _reallyLaunchWidgetOnHomeScreen:v4 widgetFamily:v5];
  }

  else
  {
    v7 = *(a1[6] + 16);

    return v7();
  }
}

void __84___SBWidgetExtensionDebugHomeScreenDataSource_launchWidget_widgetFamily_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 16);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v2 removeObject:WeakRetained];
}

void __92___SBWidgetExtensionDebugHomeScreenDataSource__reallyLaunchWidgetOnHomeScreen_widgetFamily___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SBLogWidgets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __92___SBWidgetExtensionDebugHomeScreenDataSource__reallyLaunchWidgetOnHomeScreen_widgetFamily___block_invoke_cold_1(v3, a1, v4);
    }
  }
}

void __92___SBWidgetExtensionDebugHomeScreenDataSource__reallyLaunchWidgetOnHomeScreen_widgetFamily___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 debugDescription];
  v6 = *(a2 + 32);
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "Tools reload error %{public}@ for container %{public}@", &v7, 0x16u);
}

@end