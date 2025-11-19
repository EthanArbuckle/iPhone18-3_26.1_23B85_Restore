@interface URTAlertServiceDelegateProxy
- (URTAlertService)service;
- (URTAlertServiceDelegateProxy)initWithService:(id)a3;
- (void)dismissAlert:(id)a3;
- (void)presentAlert:(id)a3 preferringPresentationStyle:(id)a4;
@end

@implementation URTAlertServiceDelegateProxy

- (URTAlertServiceDelegateProxy)initWithService:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = URTAlertServiceDelegateProxy;
  v5 = [(URTAlertServiceDelegateProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, v4);
  }

  return v6;
}

- (void)presentAlert:(id)a3 preferringPresentationStyle:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(URTAlertServiceDelegateProxy *)self service];
  if (v7)
  {
    v8 = [v6 unsignedIntegerValue];
    v9 = [MEMORY[0x277CF3280] currentContext];
    [v7 _connectionQueue_presentAlert:v10 preferringPresentationStyle:v8 forConnection:v9];
  }
}

- (void)dismissAlert:(id)a3
{
  v6 = a3;
  v4 = [(URTAlertServiceDelegateProxy *)self service];
  if (v4)
  {
    v5 = [MEMORY[0x277CF3280] currentContext];
    [v4 _connectionQueue_dismissAlert:v6 forConnection:v5];
  }
}

- (URTAlertService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end