@interface WGWidgetRemoteViewController
@end

@implementation WGWidgetRemoteViewController

void __64___WGWidgetRemoteViewController__performUpdateWithReplyHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, 2, [WeakRetained implementsPerformUpdate]);
}

void __70___WGWidgetRemoteViewController__updateVisibleFrame_withReplyHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained widgetInfo];
  (*(v1 + 16))(v1, [v2 wantsVisibleFrame]);
}

void __62___WGWidgetRemoteViewController___requestPreferredViewHeight___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __62___WGWidgetRemoteViewController___requestPreferredViewHeight___block_invoke_2;
  v2[3] = &unk_279ED1128;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __66___WGWidgetRemoteViewController___setLargestAvailableDisplayMode___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66___WGWidgetRemoteViewController___setLargestAvailableDisplayMode___block_invoke_2;
  v4[3] = &unk_279ED1128;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

uint64_t __66___WGWidgetRemoteViewController___setLargestAvailableDisplayMode___block_invoke_2(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _setLargestAvailableDisplayMode:v4];
  }

  return result;
}

void __93___WGWidgetRemoteViewController___closeTransactionForAppearanceCallWithState_withIdentifier___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __93___WGWidgetRemoteViewController___closeTransactionForAppearanceCallWithState_withIdentifier___block_invoke_2;
  v2[3] = &unk_279ED0A40;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __93___WGWidgetRemoteViewController___closeTransactionForAppearanceCallWithState_withIdentifier___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _openAppearanceTransactions];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v3[2](v3);
  }

  else
  {
    v4 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 widgetIdentifier];
      v8 = *(a1 + 32);
      v9 = [v8 _containerIdentifier];
      v10 = *(a1 + 40);
      v12 = 138544130;
      v13 = v7;
      v14 = 2050;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_27425E000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> No open transaction with identifier '%{public}@'", &v12, 0x2Au);
    }
  }

  v11 = [*(a1 + 32) _openAppearanceTransactions];
  [v11 removeObjectForKey:*(a1 + 40)];
}

void __66___WGWidgetRemoteViewController_viewServiceDidTerminateWithError___block_invoke(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66___WGWidgetRemoteViewController_viewServiceDidTerminateWithError___block_invoke_2;
  block[3] = &unk_279ED2108;
  v3 = a1[4];
  objc_copyWeak(&v5, a1 + 6);
  v4 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v5);
}

void __66___WGWidgetRemoteViewController_viewServiceDidTerminateWithError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v2 widget:WeakRetained didTerminateWithError:*(a1 + 40)];
}

@end