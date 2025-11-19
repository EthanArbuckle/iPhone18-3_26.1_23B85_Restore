@interface _WGWidgetRemoteViewController
- (WGWidgetHostingViewController)managingHost;
- (_WGWidgetRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)disconnect;
- (void)__closeTransactionForAppearanceCallWithState:(int)a3 withIdentifier:(id)a4;
- (void)__requestPreferredViewHeight:(double)a3;
- (void)__setLargestAvailableDisplayMode:(int64_t)a3;
- (void)_openTransactionForAppearanceCallWithState:(int)a3 withIdentifier:(id)a4;
- (void)_performUpdateWithReplyHandler:(id)a3;
- (void)_requestEncodedLayerTreeAtURL:(id)a3 withReplyHandler:(id)a4;
- (void)_setActiveDisplayMode:(int64_t)a3;
- (void)_setMaximumSize:(CGSize)a3 forDisplayMode:(int64_t)a4;
- (void)_updateLayoutMargins:(UIEdgeInsets)a3;
- (void)_updateVisibilityState:(int64_t)a3;
- (void)_updateVisibleFrame:(CGRect)a3 withReplyHandler:(id)a4;
- (void)dealloc;
- (void)setManagingHost:(id)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation _WGWidgetRemoteViewController

- (_WGWidgetRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = _WGWidgetRemoteViewController;
  v4 = [(_WGWidgetRemoteViewController *)&v9 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = QueueName(@"com.apple.widgets.managinghostqueue", 0);
    v6 = NewSerialQueue(v5);
    managingHostQueue = v4->_managingHostQueue;
    v4->_managingHostQueue = v6;

    SuspendQueueIfNecessary(v4->_managingHostQueue);
  }

  return v4;
}

- (void)dealloc
{
  InvalidateQueue(self->_managingHostQueue);
  v3.receiver = self;
  v3.super_class = _WGWidgetRemoteViewController;
  [(_WGWidgetRemoteViewController *)&v3 dealloc];
}

- (id)disconnect
{
  self->_valid = 0;
  v4.receiver = self;
  v4.super_class = _WGWidgetRemoteViewController;
  v2 = [(_UIRemoteViewController *)&v4 disconnect];

  return v2;
}

- (void)setManagingHost:(id)a3
{
  objc_storeWeak(&self->_managingHost, a3);
  managingHostQueue = self->_managingHostQueue;
  if (a3)
  {

    ResumeQueueIfNecessary(managingHostQueue);
  }

  else
  {

    SuspendQueueIfNecessary(managingHostQueue);
  }
}

- (void)_setActiveDisplayMode:(int64_t)a3
{
  v4 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v4 __setActiveDisplayMode:a3];
}

- (void)_setMaximumSize:(CGSize)a3 forDisplayMode:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v7 __setMaximumSize:a4 forDisplayMode:{width, height}];
}

- (void)_openTransactionForAppearanceCallWithState:(int)a3 withIdentifier:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v7 __openTransactionForAppearanceCallWithState:v4 withIdentifier:v6];
}

- (void)_requestEncodedLayerTreeAtURL:(id)a3 withReplyHandler:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80___WGWidgetRemoteViewController__requestEncodedLayerTreeAtURL_withReplyHandler___block_invoke;
  v11[3] = &unk_279ED20B8;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v11];
  if (_WGSupportsASTC())
  {
    v10 = @"com.apple.atx";
  }

  else
  {
    v10 = 0;
  }

  [v9 __requestEncodedLayerTreeToURL:v8 withCodingImageFormat:v10 withReplyHandler:v7];
}

- (void)_performUpdateWithReplyHandler:(id)a3
{
  v4 = a3;
  objc_copyWeak(&to, &self->_managingHost);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64___WGWidgetRemoteViewController__performUpdateWithReplyHandler___block_invoke;
  v7[3] = &unk_279ED20E0;
  v5 = v4;
  v8 = v5;
  objc_copyWeak(&v9, &to);
  v6 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v7];
  [v6 __performUpdateWithReplyHandler:v5];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&to);
}

- (void)_updateVisibilityState:(int64_t)a3
{
  v4 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v4 __updateVisibilityState:a3];
}

- (void)_updateVisibleFrame:(CGRect)a3 withReplyHandler:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  objc_copyWeak(&to, &self->_managingHost);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70___WGWidgetRemoteViewController__updateVisibleFrame_withReplyHandler___block_invoke;
  v12[3] = &unk_279ED20E0;
  v10 = v9;
  v13 = v10;
  objc_copyWeak(&v14, &to);
  v11 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v12];
  [v11 __updateVisibleFrame:v10 withReplyHandler:{x, y, width, height}];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&to);
}

- (void)_updateLayoutMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  v10.top = top;
  v10.left = left;
  v10.bottom = bottom;
  v10.right = right;
  v7 = NSStringFromUIEdgeInsets(v10);
  [v8 __updateLayoutMargins:v7];
}

- (void)__requestPreferredViewHeight:(double)a3
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_managingHost);
  v6 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [WeakRetained widgetIdentifier];
    v9 = [WeakRetained _containerIdentifier];
    *buf = 138544130;
    v16 = v8;
    v17 = 2050;
    v18 = WeakRetained;
    v19 = 2114;
    v20 = v9;
    v21 = 2048;
    v22 = a3;
    _os_log_impl(&dword_27425E000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Client asked to set a preferred height: %.2f", buf, 0x2Au);
  }

  managingHostQueue = self->_managingHostQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62___WGWidgetRemoteViewController___requestPreferredViewHeight___block_invoke;
  v12[3] = &unk_279ED1128;
  v13 = WeakRetained;
  v14 = a3;
  v11 = WeakRetained;
  dispatch_async(managingHostQueue, v12);
}

- (void)__setLargestAvailableDisplayMode:(int64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_managingHost);
  v6 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [WeakRetained widgetIdentifier];
    v9 = [WeakRetained _containerIdentifier];
    v10 = NCStringFromWidgetDisplayMode();
    *buf = 138544130;
    v17 = v8;
    v18 = 2050;
    v19 = WeakRetained;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_27425E000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Asked to set largest available display mode to '%{public}@'", buf, 0x2Au);
  }

  managingHostQueue = self->_managingHostQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66___WGWidgetRemoteViewController___setLargestAvailableDisplayMode___block_invoke;
  v13[3] = &unk_279ED1128;
  v14 = WeakRetained;
  v15 = a3;
  v12 = WeakRetained;
  dispatch_async(managingHostQueue, v13);
}

- (void)__closeTransactionForAppearanceCallWithState:(int)a3 withIdentifier:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_managingHost);
  v8 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [WeakRetained widgetIdentifier];
    v11 = [WeakRetained _containerIdentifier];
    v12 = WGStringForAppearState(a3);
    *buf = 138544386;
    v20 = v10;
    v21 = 2050;
    v22 = WeakRetained;
    v23 = 2114;
    v24 = v11;
    v25 = 2114;
    v26 = v12;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_27425E000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Asked to close appearance transaction with state '%{public}@' and identifier '%{public}@'", buf, 0x34u);
  }

  managingHostQueue = self->_managingHostQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __93___WGWidgetRemoteViewController___closeTransactionForAppearanceCallWithState_withIdentifier___block_invoke;
  v16[3] = &unk_279ED0A40;
  v17 = WeakRetained;
  v18 = v6;
  v14 = v6;
  v15 = WeakRetained;
  dispatch_async(managingHostQueue, v16);
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_managingHost);
  objc_initWeak(&location, self);
  managingHostQueue = self->_managingHostQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66___WGWidgetRemoteViewController_viewServiceDidTerminateWithError___block_invoke;
  v9[3] = &unk_279ED2108;
  v10 = WeakRetained;
  v7 = WeakRetained;
  objc_copyWeak(&v12, &location);
  v11 = v4;
  v8 = v4;
  dispatch_async(managingHostQueue, v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (WGWidgetHostingViewController)managingHost
{
  WeakRetained = objc_loadWeakRetained(&self->_managingHost);

  return WeakRetained;
}

@end