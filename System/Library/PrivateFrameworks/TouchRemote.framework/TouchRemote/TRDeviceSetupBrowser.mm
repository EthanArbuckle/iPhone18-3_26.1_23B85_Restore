@interface TRDeviceSetupBrowser
- (TRDeviceSetupBrowser)init;
- (TRDeviceSetupBrowserDelegate)delegate;
- (void)browser:(id)a3 didStartTransferWithSendDataHandler:(id)a4;
- (void)browserDidChangeState:(id)a3;
- (void)browserDidDisconnect:(id)a3;
@end

@implementation TRDeviceSetupBrowser

- (TRDeviceSetupBrowser)init
{
  v6.receiver = self;
  v6.super_class = TRDeviceSetupBrowser;
  v2 = [(TRDeviceSetupBrowser *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TRTransferBrowser);
    transferBrowser = v2->_transferBrowser;
    v2->_transferBrowser = v3;

    [(TRTransferBrowser *)v2->_transferBrowser setDelegate:v2];
  }

  return v2;
}

- (void)browserDidChangeState:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 deviceSetupBrowserDidChangeState:self];
  }
}

- (void)browser:(id)a3 didStartTransferWithSendDataHandler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_peripheral)
  {
    if (_TRLogEnabled == 1)
    {
      v8 = TRLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        peripheral = self->_peripheral;
        v16 = 138412290;
        v17 = peripheral;
        _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupBrowser] Already have peripheral: %@", &v16, 0xCu);
      }
    }

    v7[2](v7, 0);
  }

  else
  {
    v10 = objc_alloc_init(TRDeviceSetupPeripheral);
    v11 = self->_peripheral;
    self->_peripheral = v10;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_delegate);
      [v14 deviceSetupBrowser:self didFindPeripheral:self->_peripheral];
    }

    [(TRDeviceSetupPeripheral *)self->_peripheral _didTapWithSendDataHandler:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)browserDidDisconnect:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      peripheral = self->_peripheral;
      v13 = 138412290;
      v14 = peripheral;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupBrowser] Peripheral disconnected: %@", &v13, 0xCu);
    }
  }

  v7 = self->_peripheral;
  [(TRDeviceSetupPeripheral *)self->_peripheral _didDisconnect];
  v8 = self->_peripheral;
  self->_peripheral = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 deviceSetupBrowser:self didRemovePeripheral:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (TRDeviceSetupBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end