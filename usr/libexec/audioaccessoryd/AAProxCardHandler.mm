@interface AAProxCardHandler
- (AAProxCardHandler)initWithInfo:(id)info;
- (void)_dismissAnySharingProxCard;
- (void)_dismissProxCardWithError:(id)error;
- (void)dismiss;
- (void)launchWithCompletion:(id)completion;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation AAProxCardHandler

- (AAProxCardHandler)initWithInfo:(id)info
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = AAProxCardHandler;
  v6 = [(AAProxCardHandler *)&v14 init];
  if (v6)
  {
    v7 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.HeadphoneProxService" viewControllerClassName:@"HeadphoneProxService.HeadphoneFlowViewController"];
    proxCardDefinition = v6->_proxCardDefinition;
    v6->_proxCardDefinition = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.AAProxCardHandler", v9);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v10;

    objc_storeStrong(&v6->_userInfo, info);
    v12 = v6;
  }

  return v6;
}

- (void)launchWithCompletion:(id)completion
{
  completionCopy = completion;
  proxCardHandle = [(AAProxCardHandler *)self proxCardHandle];

  if (proxCardHandle)
  {
    [(AAProxCardHandler *)self _dismissProxCardWithError:0];
  }

  if ([(AAProxCardHandler *)self dismissExistingProxCards])
  {
    [(AAProxCardHandler *)self _dismissAnySharingProxCard];
  }

  v6 = objc_alloc_init(SFClient);
  sharingClient = self->_sharingClient;
  self->_sharingClient = v6;

  v8 = self->_sharingClient;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E9C00;
  v10[3] = &unk_1002BB968;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(SFClient *)v8 startProxCardTransactionWithOptions:16 completion:v10];
}

- (void)dismiss
{
  dispatchQueue = [(AAProxCardHandler *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9F9C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_dismissProxCardWithError:(id)error
{
  errorCopy = error;
  proxCardHandle = [(AAProxCardHandler *)self proxCardHandle];

  if (proxCardHandle)
  {
    proxCardHandle2 = [(AAProxCardHandler *)self proxCardHandle];
    [proxCardHandle2 unregisterObserver:self];

    proxCardHandle3 = [(AAProxCardHandler *)self proxCardHandle];
    [proxCardHandle3 invalidate];

    [(AAProxCardHandler *)self setProxCardHandle:0];
  }

  sharingClient = [(AAProxCardHandler *)self sharingClient];

  if (sharingClient)
  {
    sharingClient2 = [(AAProxCardHandler *)self sharingClient];
    [sharingClient2 invalidate];

    [(AAProxCardHandler *)self setSharingClient:0];
  }

  onDismissalHandler = [(AAProxCardHandler *)self onDismissalHandler];

  v11 = errorCopy;
  if (onDismissalHandler)
  {
    onDismissalHandler2 = [(AAProxCardHandler *)self onDismissalHandler];
    (onDismissalHandler2)[2](onDismissalHandler2, errorCopy);

    v11 = errorCopy;
  }

  _objc_release_x1(v10, v11);
}

- (void)_dismissAnySharingProxCard
{
  proxCardDefinition = [(AAProxCardHandler *)self proxCardDefinition];
  v3 = [SBSRemoteAlertHandle lookupHandlesForDefinition:proxCardDefinition];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (dword_1002F78F0 <= 30 && (dword_1002F78F0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001FF180();
        }

        [v9 invalidate];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v10 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = v10;
    }

    while (v10);
  }
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  v4 = activateCopy;
  if (dword_1002F78F0 <= 30)
  {
    v5 = activateCopy;
    if (dword_1002F78F0 != -1 || (activateCopy = _LogCategory_Initialize(), v4 = v5, activateCopy))
    {
      activateCopy = sub_1001FF1C0();
      v4 = v5;
    }
  }

  _objc_release_x1(activateCopy, v4);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  if (dword_1002F78F0 <= 30 && (dword_1002F78F0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FF1DC();
  }

  dispatchQueue = [(AAProxCardHandler *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EA36C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  if (dword_1002F78F0 <= 30 && (dword_1002F78F0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FF1F8(errorCopy);
  }
}

@end