@interface _WGWidgetRemoteViewController
- (WGWidgetHostingViewController)managingHost;
- (_WGWidgetRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)disconnect;
- (void)__closeTransactionForAppearanceCallWithState:(int)state withIdentifier:(id)identifier;
- (void)__requestPreferredViewHeight:(double)height;
- (void)__setLargestAvailableDisplayMode:(int64_t)mode;
- (void)_openTransactionForAppearanceCallWithState:(int)state withIdentifier:(id)identifier;
- (void)_performUpdateWithReplyHandler:(id)handler;
- (void)_requestEncodedLayerTreeAtURL:(id)l withReplyHandler:(id)handler;
- (void)_setActiveDisplayMode:(int64_t)mode;
- (void)_setMaximumSize:(CGSize)size forDisplayMode:(int64_t)mode;
- (void)_updateLayoutMargins:(UIEdgeInsets)margins;
- (void)_updateVisibilityState:(int64_t)state;
- (void)_updateVisibleFrame:(CGRect)frame withReplyHandler:(id)handler;
- (void)dealloc;
- (void)setManagingHost:(id)host;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation _WGWidgetRemoteViewController

- (_WGWidgetRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = _WGWidgetRemoteViewController;
  v4 = [(_WGWidgetRemoteViewController *)&v9 initWithNibName:name bundle:bundle];
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
  disconnect = [(_UIRemoteViewController *)&v4 disconnect];

  return disconnect;
}

- (void)setManagingHost:(id)host
{
  objc_storeWeak(&self->_managingHost, host);
  managingHostQueue = self->_managingHostQueue;
  if (host)
  {

    ResumeQueueIfNecessary(managingHostQueue);
  }

  else
  {

    SuspendQueueIfNecessary(managingHostQueue);
  }
}

- (void)_setActiveDisplayMode:(int64_t)mode
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy __setActiveDisplayMode:mode];
}

- (void)_setMaximumSize:(CGSize)size forDisplayMode:(int64_t)mode
{
  height = size.height;
  width = size.width;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy __setMaximumSize:mode forDisplayMode:{width, height}];
}

- (void)_openTransactionForAppearanceCallWithState:(int)state withIdentifier:(id)identifier
{
  v4 = *&state;
  identifierCopy = identifier;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy __openTransactionForAppearanceCallWithState:v4 withIdentifier:identifierCopy];
}

- (void)_requestEncodedLayerTreeAtURL:(id)l withReplyHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80___WGWidgetRemoteViewController__requestEncodedLayerTreeAtURL_withReplyHandler___block_invoke;
  v11[3] = &unk_279ED20B8;
  v12 = handlerCopy;
  v7 = handlerCopy;
  lCopy = l;
  v9 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v11];
  if (_WGSupportsASTC())
  {
    v10 = @"com.apple.atx";
  }

  else
  {
    v10 = 0;
  }

  [v9 __requestEncodedLayerTreeToURL:lCopy withCodingImageFormat:v10 withReplyHandler:v7];
}

- (void)_performUpdateWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  objc_copyWeak(&to, &self->_managingHost);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64___WGWidgetRemoteViewController__performUpdateWithReplyHandler___block_invoke;
  v7[3] = &unk_279ED20E0;
  v5 = handlerCopy;
  v8 = v5;
  objc_copyWeak(&v9, &to);
  v6 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v7];
  [v6 __performUpdateWithReplyHandler:v5];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&to);
}

- (void)_updateVisibilityState:(int64_t)state
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy __updateVisibilityState:state];
}

- (void)_updateVisibleFrame:(CGRect)frame withReplyHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  handlerCopy = handler;
  objc_copyWeak(&to, &self->_managingHost);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70___WGWidgetRemoteViewController__updateVisibleFrame_withReplyHandler___block_invoke;
  v12[3] = &unk_279ED20E0;
  v10 = handlerCopy;
  v13 = v10;
  objc_copyWeak(&v14, &to);
  v11 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v12];
  [v11 __updateVisibleFrame:v10 withReplyHandler:{x, y, width, height}];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&to);
}

- (void)_updateLayoutMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  v10.top = top;
  v10.left = left;
  v10.bottom = bottom;
  v10.right = right;
  v7 = NSStringFromUIEdgeInsets(v10);
  [serviceViewControllerProxy __updateLayoutMargins:v7];
}

- (void)__requestPreferredViewHeight:(double)height
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_managingHost);
  v6 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    widgetIdentifier = [WeakRetained widgetIdentifier];
    _containerIdentifier = [WeakRetained _containerIdentifier];
    *buf = 138544130;
    v16 = widgetIdentifier;
    v17 = 2050;
    v18 = WeakRetained;
    v19 = 2114;
    v20 = _containerIdentifier;
    v21 = 2048;
    heightCopy = height;
    _os_log_impl(&dword_27425E000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Client asked to set a preferred height: %.2f", buf, 0x2Au);
  }

  managingHostQueue = self->_managingHostQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62___WGWidgetRemoteViewController___requestPreferredViewHeight___block_invoke;
  v12[3] = &unk_279ED1128;
  v13 = WeakRetained;
  heightCopy2 = height;
  v11 = WeakRetained;
  dispatch_async(managingHostQueue, v12);
}

- (void)__setLargestAvailableDisplayMode:(int64_t)mode
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_managingHost);
  v6 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    widgetIdentifier = [WeakRetained widgetIdentifier];
    _containerIdentifier = [WeakRetained _containerIdentifier];
    v10 = NCStringFromWidgetDisplayMode();
    *buf = 138544130;
    v17 = widgetIdentifier;
    v18 = 2050;
    v19 = WeakRetained;
    v20 = 2114;
    v21 = _containerIdentifier;
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
  modeCopy = mode;
  v12 = WeakRetained;
  dispatch_async(managingHostQueue, v13);
}

- (void)__closeTransactionForAppearanceCallWithState:(int)state withIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_managingHost);
  v8 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    widgetIdentifier = [WeakRetained widgetIdentifier];
    _containerIdentifier = [WeakRetained _containerIdentifier];
    v12 = WGStringForAppearState(state);
    *buf = 138544386;
    v20 = widgetIdentifier;
    v21 = 2050;
    v22 = WeakRetained;
    v23 = 2114;
    v24 = _containerIdentifier;
    v25 = 2114;
    v26 = v12;
    v27 = 2114;
    v28 = identifierCopy;
    _os_log_impl(&dword_27425E000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Asked to close appearance transaction with state '%{public}@' and identifier '%{public}@'", buf, 0x34u);
  }

  managingHostQueue = self->_managingHostQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __93___WGWidgetRemoteViewController___closeTransactionForAppearanceCallWithState_withIdentifier___block_invoke;
  v16[3] = &unk_279ED0A40;
  v17 = WeakRetained;
  v18 = identifierCopy;
  v14 = identifierCopy;
  v15 = WeakRetained;
  dispatch_async(managingHostQueue, v16);
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
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
  v11 = errorCopy;
  v8 = errorCopy;
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