@interface URTAlertServiceDelegateProxy
- (URTAlertService)service;
- (URTAlertServiceDelegateProxy)initWithService:(id)service;
- (void)dismissAlert:(id)alert;
- (void)presentAlert:(id)alert preferringPresentationStyle:(id)style;
@end

@implementation URTAlertServiceDelegateProxy

- (URTAlertServiceDelegateProxy)initWithService:(id)service
{
  serviceCopy = service;
  v8.receiver = self;
  v8.super_class = URTAlertServiceDelegateProxy;
  v5 = [(URTAlertServiceDelegateProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, serviceCopy);
  }

  return v6;
}

- (void)presentAlert:(id)alert preferringPresentationStyle:(id)style
{
  alertCopy = alert;
  styleCopy = style;
  service = [(URTAlertServiceDelegateProxy *)self service];
  if (service)
  {
    unsignedIntegerValue = [styleCopy unsignedIntegerValue];
    currentContext = [MEMORY[0x277CF3280] currentContext];
    [service _connectionQueue_presentAlert:alertCopy preferringPresentationStyle:unsignedIntegerValue forConnection:currentContext];
  }
}

- (void)dismissAlert:(id)alert
{
  alertCopy = alert;
  service = [(URTAlertServiceDelegateProxy *)self service];
  if (service)
  {
    currentContext = [MEMORY[0x277CF3280] currentContext];
    [service _connectionQueue_dismissAlert:alertCopy forConnection:currentContext];
  }
}

- (URTAlertService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end