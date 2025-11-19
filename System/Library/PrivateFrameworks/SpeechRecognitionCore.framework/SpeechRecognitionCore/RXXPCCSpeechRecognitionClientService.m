@interface RXXPCCSpeechRecognitionClientService
- (RXXPCCSpeechRecognitionClientService)initWithRXXPC:(RXXPC *)a3 externalServiceClient:(id)a4;
- (void)forwardInvocation:(id)a3;
- (void)legacyClientEventWithMessage:(id)a3;
- (void)pong:(int64_t)a3;
- (void)recognizedEventWithLegacyMessage:(id)a3 result:(id)a4;
@end

@implementation RXXPCCSpeechRecognitionClientService

- (RXXPCCSpeechRecognitionClientService)initWithRXXPC:(RXXPC *)a3 externalServiceClient:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = RXXPCCSpeechRecognitionClientService;
  v7 = [(RXXPCCSpeechRecognitionClientService *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_xpc = a3;
    objc_storeWeak(&v7->_externalServiceClient, v6);
  }

  return v8;
}

- (void)pong:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_externalServiceClient);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = objc_loadWeakRetained(&self->_externalServiceClient);
    [v7 pong:a3];
  }
}

- (void)forwardInvocation:(id)a3
{
  v7 = a3;
  [v7 selector];
  WeakRetained = objc_loadWeakRetained(&self->_externalServiceClient);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_externalServiceClient);
    [v7 invokeWithTarget:v6];
  }
}

- (void)legacyClientEventWithMessage:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CFXPCCreateXPCObjectFromCFObject();
  v6 = v5;
  if (v5)
  {
    v7 = xpc_unwrap_uint64s_in_object(v5);
    RXXPC::ClientEvent(self->_xpc, v7);
  }

  else
  {
    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_26B583000, v8, OS_LOG_TYPE_ERROR, "failed to handle client event for %@\n", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)recognizedEventWithLegacyMessage:(id)a3 result:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = _CFXPCCreateXPCObjectFromCFObject();
  v8 = v7;
  if (v7)
  {
    v9 = xpc_unwrap_uint64s_in_object(v7);
    v10 = RXXPC::Queue(v9);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __80__RXXPCCSpeechRecognitionClientService_recognizedEventWithLegacyMessage_result___block_invoke;
    v13[3] = &unk_279CF6B38;
    v14 = v9;
    v15 = v6;
    v11 = v9;
    dispatch_async(v10, v13);
  }

  else
  {
    v11 = RXOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_26B583000, v11, OS_LOG_TYPE_ERROR, "failed to handle recognition event for %@\n", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __80__RXXPCCSpeechRecognitionClientService_recognizedEventWithLegacyMessage_result___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_get_value(*(a1 + 32), kRDKeyRecognizer);
  RXRecognizer::Recognized(v2, *(a1 + 40));
}

@end