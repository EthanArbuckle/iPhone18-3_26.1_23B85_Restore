@interface WFRemoteExtensionProxy
- (WFRemoteExtensionProxy)initWithConnection:(id)connection andDevice:(id)device;
- (void)confirmIntentWithCompletionHandler:(id)handler;
- (void)handleIntentRemotelyWithRemoteOperation:(id)operation completion:(id)completion;
- (void)handleIntentWithCompletionHandler:(id)handler;
- (void)resolveIntentSlotKeyPaths:(id)paths completionHandler:(id)handler;
@end

@implementation WFRemoteExtensionProxy

- (void)resolveIntentSlotKeyPaths:(id)paths completionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(WFRemoteExtensionProxy *)self connection];
  intent = [connection intent];
  (*(handler + 2))(handlerCopy, 1, intent, 0);
}

- (void)handleIntentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  kdebug_trace();
  v5 = objc_alloc_init(MEMORY[0x1E69C7848]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__WFRemoteExtensionProxy_handleIntentWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E837BCD0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(WFRemoteExtensionProxy *)self handleIntentRemotelyWithRemoteOperation:v5 completion:v7];
}

uint64_t __60__WFRemoteExtensionProxy_handleIntentWithCompletionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  return kdebug_trace();
}

- (void)confirmIntentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  kdebug_trace();
  v5 = objc_alloc_init(MEMORY[0x1E69C7840]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__WFRemoteExtensionProxy_confirmIntentWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E837BCD0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(WFRemoteExtensionProxy *)self handleIntentRemotelyWithRemoteOperation:v5 completion:v7];
}

uint64_t __61__WFRemoteExtensionProxy_confirmIntentWithCompletionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  return kdebug_trace();
}

- (void)handleIntentRemotelyWithRemoteOperation:(id)operation completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  completionCopy = completion;
  connection = [(WFRemoteExtensionProxy *)self connection];
  intent = [connection intent];

  if ([intent _executionContext] == 2)
  {
    [intent _setExecutionContext:9];
  }

  v10 = getWFIntentExecutionLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 136315394;
    v21 = "[WFRemoteExtensionProxy handleIntentRemotelyWithRemoteOperation:completion:]";
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s WFRemoteExtensionProxy is handling remote intent operation (%{public}@)", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__WFRemoteExtensionProxy_handleIntentRemotelyWithRemoteOperation_completion___block_invoke_2;
  v16[3] = &unk_1E837BCA8;
  v17 = operationCopy;
  selfCopy = self;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = operationCopy;
  [intent _injectProxiesForImages:&__block_literal_global_54465 completion:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __77__WFRemoteExtensionProxy_handleIntentRemotelyWithRemoteOperation_completion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] wf_setIntent:v3];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__54469;
  v14[4] = __Block_byref_object_dispose__54470;
  v15 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v4 = getAFClientLiteClass_softClass;
  v20 = getAFClientLiteClass_softClass;
  if (!getAFClientLiteClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getAFClientLiteClass_block_invoke;
    v16[3] = &unk_1E837FAC0;
    v16[4] = &v17;
    __getAFClientLiteClass_block_invoke(v16);
    v4 = v18[3];
  }

  v5 = v4;
  _Block_object_dispose(&v17, 8);
  v6 = objc_opt_new();
  v7 = a1[4];
  v8 = [a1[5] remoteDevice];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__WFRemoteExtensionProxy_handleIntentRemotelyWithRemoteOperation_completion___block_invoke_171;
  v13[3] = &unk_1E837BC58;
  v13[4] = v14;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__WFRemoteExtensionProxy_handleIntentRemotelyWithRemoteOperation_completion___block_invoke_2_173;
  v9[3] = &unk_1E837BC80;
  v12 = v14;
  v10 = a1[4];
  v11 = a1[6];
  [WFACEUtilities wf_handleCommand:v7 onRemoteDevice:v8 usingClient:v6 commandHandler:v13 completion:v9];

  _Block_object_dispose(v14, 8);
}

void __77__WFRemoteExtensionProxy_handleIntentRemotelyWithRemoteOperation_completion___block_invoke_2_173(void *a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *MEMORY[0x1E69AA8C0];
  v7 = [*(*(a1[6] + 8) + 40) ins_aceIntentResponse];
  v8 = getWFIntentExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v14 = 136315906;
    v15 = "[WFRemoteExtensionProxy handleIntentRemotelyWithRemoteOperation:completion:]_block_invoke_2";
    v16 = 2114;
    v17 = v11;
    v18 = 1024;
    v19 = a2;
    v20 = 2114;
    v21 = v5;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s WFRemoteExtensionProxy finished handling remote intent operation (%{public}@), success %d error %{public}@", &v14, 0x26u);
  }

  if (v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E69AA880]) initWithErrorCode:1316 underlyingError:v5];
  }

  (*(a1[5] + 16))();

  v13 = *MEMORY[0x1E69E9840];
}

- (WFRemoteExtensionProxy)initWithConnection:(id)connection andDevice:(id)device
{
  connectionCopy = connection;
  deviceCopy = device;
  if (!connectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExtensionProxy.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
  }

  v17.receiver = self;
  v17.super_class = WFRemoteExtensionProxy;
  v10 = [(WFRemoteExtensionProxy *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_connection, connection);
    v12 = [deviceCopy copy];
    remoteDevice = v11->_remoteDevice;
    v11->_remoteDevice = v12;

    v14 = v11;
  }

  return v11;
}

@end