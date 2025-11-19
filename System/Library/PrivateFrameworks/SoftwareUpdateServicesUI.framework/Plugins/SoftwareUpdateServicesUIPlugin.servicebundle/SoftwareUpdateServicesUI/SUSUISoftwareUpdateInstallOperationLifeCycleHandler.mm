@interface SUSUISoftwareUpdateInstallOperationLifeCycleHandler
- (SUSUISoftwareUpdateInstallOperationLifeCycleHandler)initWithTryTonightInstallOperation:(id)a3;
- (void)_clearTryTonightOperationCancelling:(BOOL)a3 forReason:(id)a4;
- (void)dealloc;
@end

@implementation SUSUISoftwareUpdateInstallOperationLifeCycleHandler

- (SUSUISoftwareUpdateInstallOperationLifeCycleHandler)initWithTryTonightInstallOperation:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = SUSUISoftwareUpdateInstallOperationLifeCycleHandler;
  v6 = [(SUSUISoftwareUpdateInstallOperationLifeCycleHandler *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_tryTonightOperation, location[0]);
    v9->_used = 0;
  }

  v5 = v9;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(SUSUISoftwareUpdateInstallOperationLifeCycleHandler *)self _clearTryTonightOperationCancelling:!self->_used forReason:@"dealloc initiated cancel"];
  v2.receiver = v4;
  v2.super_class = SUSUISoftwareUpdateInstallOperationLifeCycleHandler;
  [(SUSUISoftwareUpdateInstallOperationLifeCycleHandler *)&v2 dealloc];
}

- (void)_clearTryTonightOperationCancelling:(BOOL)a3 forReason:(id)a4
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (v6 && v8->_tryTonightOperation && !v8->_used)
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_23504(v9, v8->_tryTonightOperation, location);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Cancelling auto install operation (%p) for reason: %@", v9, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    [(SUAutoInstallOperation *)v8->_tryTonightOperation cancel];
    objc_storeStrong(&v8->_tryTonightOperation, 0);
  }

  objc_storeStrong(&location, 0);
}

@end