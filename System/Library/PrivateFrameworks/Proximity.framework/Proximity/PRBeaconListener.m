@interface PRBeaconListener
- (PRBeaconListener)initWithDelegate:(id)a3 queue:(id)a4;
- (PRBeaconListenerDelegate)delegate;
- (void)_updateState:(unint64_t)a3;
- (void)clearBeaconAllowlistWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)deamonConnectionInterrupted;
- (void)didFailWithError:(id)a3;
- (void)didReceiveNewSolutions:(id)a3;
- (void)pushBeaconAllowlist:(id)a3 completionHandler:(id)a4;
- (void)rangingRequestDidUpdateStatus:(unint64_t)a3;
- (void)rangingServiceDidUpdateState:(unint64_t)a3 cause:(int64_t)a4;
@end

@implementation PRBeaconListener

- (PRBeaconListener)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = PRBeaconListener;
  v8 = [(PRRangingDevice *)&v24 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = 0;
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_queue, a4);
    objc_initWeak(&location, v9);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __43__PRBeaconListener_initWithDelegate_queue___block_invoke;
    v21[3] = &unk_2788F3C40;
    objc_copyWeak(&v22, &location);
    v10 = MEMORY[0x23191F360](v21);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __43__PRBeaconListener_initWithDelegate_queue___block_invoke_2;
    v19[3] = &unk_2788F3C40;
    objc_copyWeak(&v20, &location);
    v11 = MEMORY[0x23191F360](v19);
    v12 = [[PRRangingClientExportedObject alloc] initWithRangingClient:v9];
    v13 = PRMakeRangingClientXPCInterface();
    v14 = PRMakeBeaconRangingServerXPCInterface();
    DaemonBackedService::connect(&v9->_service._connection, @"com.apple.nearbyd.xpc.beacon", 4096, v12, v13, v14, v9->_queue, v10, v11, 1);

    v15 = [(NSXPCConnection *)v9->_service._connection remoteObjectProxyWithErrorHandler:&__block_literal_global_3];
    v18.receiver = v9;
    v18.super_class = PRBeaconListener;
    v16 = [(PRRangingDevice *)&v18 clientInfo];
    [v15 connectWithClientInfo:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __43__PRBeaconListener_initWithDelegate_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained deamonConnectionInvalidated];
}

void __43__PRBeaconListener_initWithDelegate_queue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained deamonConnectionInterrupted];
}

- (void)pushBeaconAllowlist:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSXPCConnection *)self->_service._connection remoteObjectProxyWithErrorHandler:&__block_literal_global_3];
  [v7 pushBeaconAllowlist:v8 reply:v6];
}

- (void)clearBeaconAllowlistWithCompletionHandler:(id)a3
{
  v5 = a3;
  v4 = [(NSXPCConnection *)self->_service._connection remoteObjectProxyWithErrorHandler:&__block_literal_global_3];
  [v4 clearBeaconAllowlist:v5];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_service._connection invalidate];
  v3.receiver = self;
  v3.super_class = PRBeaconListener;
  [(PRBeaconListener *)&v3 dealloc];
}

- (void)deamonConnectionInterrupted
{
  v3 = [(NSXPCConnection *)self->_service._connection remoteObjectProxyWithErrorHandler:&__block_literal_global_3];
  v5.receiver = self;
  v5.super_class = PRBeaconListener;
  v4 = [(PRRangingDevice *)&v5 clientInfo];
  [v3 connectWithClientInfo:v4];
}

- (void)didFailWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__PRBeaconListener_didFailWithError___block_invoke;
  v7[3] = &unk_2788F3CB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatchAsyncOnQueue(queue, v7);
}

void __37__PRBeaconListener_didFailWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained beaconListener:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)rangingServiceDidUpdateState:(unint64_t)a3 cause:(int64_t)a4
{
  if (a3 <= 4)
  {
    [(PRBeaconListener *)self _updateState:qword_230EED738[a3], a4];
  }
}

- (void)didReceiveNewSolutions:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained beaconListener:self didOutputRangeResults:v5];
  }
}

- (void)rangingRequestDidUpdateStatus:(unint64_t)a3
{
  if (a3 <= 3)
  {
    [(PRBeaconListener *)self _updateState:qword_230EED760[a3]];
  }
}

- (void)_updateState:(unint64_t)a3
{
  self->_state = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained beaconListener:self didChangeState:a3];
  }
}

- (PRBeaconListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end