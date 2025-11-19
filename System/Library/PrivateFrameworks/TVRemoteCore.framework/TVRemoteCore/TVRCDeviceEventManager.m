@interface TVRCDeviceEventManager
- (TVRCDeviceEventManager)initWithDevice:(id)a3 responseHandler:(id)a4;
- (void)sendEvent:(id)a3 options:(id)a4;
@end

@implementation TVRCDeviceEventManager

- (TVRCDeviceEventManager)initWithDevice:(id)a3 responseHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = TVRCDeviceEventManager;
  v9 = [(TVRCDeviceEventManager *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    eventResponseHandler = v9->_eventResponseHandler;
    v9->_eventResponseHandler = v10;

    objc_storeStrong(&v9->_device, a3);
  }

  return v9;
}

- (void)sendEvent:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(TVRCDevice *)self->_device connectionState]== 2)
  {
    objc_initWeak(&location, self);
    v8 = +[TVRCXPCClient sharedInstance];
    v9 = [(TVRCDevice *)self->_device identifier];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__TVRCDeviceEventManager_sendEvent_options___block_invoke;
    v12[3] = &unk_279D82BA0;
    objc_copyWeak(&v15, &location);
    v13 = v6;
    v14 = v7;
    [v8 sendEvent:v13 toDeviceWithIdentifier:v9 options:v14 response:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    eventResponseHandler = self->_eventResponseHandler;
    if (eventResponseHandler)
    {
      v11 = TVRCMakeError(100, 0);
      (*(eventResponseHandler + 2))(eventResponseHandler, v6, 0, 0, v11);
    }
  }
}

void __44__TVRCDeviceEventManager_sendEvent_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained eventResponseHandler];

  if (v8)
  {
    v9 = [WeakRetained eventResponseHandler];
    (v9)[2](v9, *(a1 + 32), v10, *(a1 + 40), v6);
  }
}

@end