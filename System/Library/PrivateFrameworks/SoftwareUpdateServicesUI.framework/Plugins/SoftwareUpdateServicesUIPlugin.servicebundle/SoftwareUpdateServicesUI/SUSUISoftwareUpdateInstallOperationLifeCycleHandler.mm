@interface SUSUISoftwareUpdateInstallOperationLifeCycleHandler
- (SUSUISoftwareUpdateInstallOperationLifeCycleHandler)initWithTryTonightInstallOperation:(id)operation;
- (void)_clearTryTonightOperationCancelling:(BOOL)cancelling forReason:(id)reason;
- (void)dealloc;
@end

@implementation SUSUISoftwareUpdateInstallOperationLifeCycleHandler

- (SUSUISoftwareUpdateInstallOperationLifeCycleHandler)initWithTryTonightInstallOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = SUSUISoftwareUpdateInstallOperationLifeCycleHandler;
  v6 = [(SUSUISoftwareUpdateInstallOperationLifeCycleHandler *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_tryTonightOperation, location[0]);
    selfCopy->_used = 0;
  }

  v5 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(SUSUISoftwareUpdateInstallOperationLifeCycleHandler *)self _clearTryTonightOperationCancelling:!self->_used forReason:@"dealloc initiated cancel"];
  v2.receiver = selfCopy;
  v2.super_class = SUSUISoftwareUpdateInstallOperationLifeCycleHandler;
  [(SUSUISoftwareUpdateInstallOperationLifeCycleHandler *)&v2 dealloc];
}

- (void)_clearTryTonightOperationCancelling:(BOOL)cancelling forReason:(id)reason
{
  selfCopy = self;
  v7 = a2;
  cancellingCopy = cancelling;
  location = 0;
  objc_storeStrong(&location, reason);
  if (cancellingCopy && selfCopy->_tryTonightOperation && !selfCopy->_used)
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_23504(v9, selfCopy->_tryTonightOperation, location);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Cancelling auto install operation (%p) for reason: %@", v9, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    [(SUAutoInstallOperation *)selfCopy->_tryTonightOperation cancel];
    objc_storeStrong(&selfCopy->_tryTonightOperation, 0);
  }

  objc_storeStrong(&location, 0);
}

@end