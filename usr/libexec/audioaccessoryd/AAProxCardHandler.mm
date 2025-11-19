@interface AAProxCardHandler
- (AAProxCardHandler)initWithInfo:(id)a3;
- (void)_dismissAnySharingProxCard;
- (void)_dismissProxCardWithError:(id)a3;
- (void)dismiss;
- (void)launchWithCompletion:(id)a3;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation AAProxCardHandler

- (AAProxCardHandler)initWithInfo:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_userInfo, a3);
    v12 = v6;
  }

  return v6;
}

- (void)launchWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AAProxCardHandler *)self proxCardHandle];

  if (v5)
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
  v11 = v4;
  v9 = v4;
  [(SFClient *)v8 startProxCardTransactionWithOptions:16 completion:v10];
}

- (void)dismiss
{
  v3 = [(AAProxCardHandler *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9F9C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_dismissProxCardWithError:(id)a3
{
  v13 = a3;
  v4 = [(AAProxCardHandler *)self proxCardHandle];

  if (v4)
  {
    v5 = [(AAProxCardHandler *)self proxCardHandle];
    [v5 unregisterObserver:self];

    v6 = [(AAProxCardHandler *)self proxCardHandle];
    [v6 invalidate];

    [(AAProxCardHandler *)self setProxCardHandle:0];
  }

  v7 = [(AAProxCardHandler *)self sharingClient];

  if (v7)
  {
    v8 = [(AAProxCardHandler *)self sharingClient];
    [v8 invalidate];

    [(AAProxCardHandler *)self setSharingClient:0];
  }

  v9 = [(AAProxCardHandler *)self onDismissalHandler];

  v11 = v13;
  if (v9)
  {
    v12 = [(AAProxCardHandler *)self onDismissalHandler];
    (v12)[2](v12, v13);

    v11 = v13;
  }

  _objc_release_x1(v10, v11);
}

- (void)_dismissAnySharingProxCard
{
  v2 = [(AAProxCardHandler *)self proxCardDefinition];
  v3 = [SBSRemoteAlertHandle lookupHandlesForDefinition:v2];

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

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (dword_1002F78F0 <= 30)
  {
    v5 = v3;
    if (dword_1002F78F0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v5, v3))
    {
      v3 = sub_1001FF1C0();
      v4 = v5;
    }
  }

  _objc_release_x1(v3, v4);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  if (dword_1002F78F0 <= 30 && (dword_1002F78F0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FF1DC();
  }

  v5 = [(AAProxCardHandler *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EA36C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (dword_1002F78F0 <= 30 && (dword_1002F78F0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FF1F8(v5);
  }
}

@end