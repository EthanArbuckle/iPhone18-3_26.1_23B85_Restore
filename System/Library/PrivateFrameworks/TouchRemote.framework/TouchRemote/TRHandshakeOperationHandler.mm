@interface TRHandshakeOperationHandler
- (TRHandshakeOperationHandler)initWithHandshakeHandler:(id)a3;
- (void)_handleHandshakeRequest:(id)a3 withResponseHandler:(id)a4;
- (void)registerMessageHandlersForSession:(id)a3;
@end

@implementation TRHandshakeOperationHandler

- (TRHandshakeOperationHandler)initWithHandshakeHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRHandshakeOperationHandler;
  v5 = [(TRHandshakeOperationHandler *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    handshakeHandler = v5->_handshakeHandler;
    v5->_handshakeHandler = v6;
  }

  return v5;
}

- (void)registerMessageHandlersForSession:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__TRHandshakeOperationHandler_registerMessageHandlersForSession___block_invoke;
  v4[3] = &unk_279DCEAD8;
  v4[4] = self;
  v3 = a3;
  [v3 setRequestHandler:v4 forRequestClass:objc_opt_class()];
}

- (void)_handleHandshakeRequest:(id)a3 withResponseHandler:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self->_handshakeHandler)
  {
    v14 = @"TRHandshakeOperationHandlerParamKeyProtocolVersion";
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "protocolVersion")}];
    v15[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

    handshakeHandler = self->_handshakeHandler;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__TRHandshakeOperationHandler__handleHandshakeRequest_withResponseHandler___block_invoke;
    v12[3] = &unk_279DCF3D8;
    v13 = v6;
    handshakeHandler[2](handshakeHandler, v8, v12);
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
    (*(v6 + 2))(v6, v10, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __75__TRHandshakeOperationHandler__handleHandshakeRequest_withResponseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(TRHandshakeResponse);
  [(TRHandshakeResponse *)v4 setProtocolVersion:a2];
  (*(*(a1 + 32) + 16))();
}

@end