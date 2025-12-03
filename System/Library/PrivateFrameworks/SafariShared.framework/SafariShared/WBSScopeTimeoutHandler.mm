@interface WBSScopeTimeoutHandler
- (WBSScopeTimeoutHandler)initWithTimeout:(double)timeout autoBugCaptureDomain:(id)domain detectedProcess:(id)process context:(id)context;
- (WBSScopeTimeoutHandler)initWithTimeout:(double)timeout handler:(id)handler;
- (void)dealloc;
@end

@implementation WBSScopeTimeoutHandler

- (WBSScopeTimeoutHandler)initWithTimeout:(double)timeout handler:(id)handler
{
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = WBSScopeTimeoutHandler;
  v7 = [(WBSScopeTimeoutHandler *)&v14 init];
  if (v7)
  {
    v8 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, handlerCopy);
    handler = v7->_handler;
    v7->_handler = v8;

    v10 = dispatch_time(0, (timeout * 1000000000.0));
    v11 = dispatch_get_global_queue(9, 0);
    dispatch_after(v10, v11, v7->_handler);

    v12 = v7;
  }

  return v7;
}

- (WBSScopeTimeoutHandler)initWithTimeout:(double)timeout autoBugCaptureDomain:(id)domain detectedProcess:(id)process context:(id)context
{
  domainCopy = domain;
  processCopy = process;
  contextCopy = context;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__WBSScopeTimeoutHandler_initWithTimeout_autoBugCaptureDomain_detectedProcess_context___block_invoke;
  v18[3] = &unk_1E7FB7258;
  v19 = domainCopy;
  v20 = processCopy;
  v21 = contextCopy;
  v13 = contextCopy;
  v14 = processCopy;
  v15 = domainCopy;
  v16 = [(WBSScopeTimeoutHandler *)self initWithTimeout:v18 handler:timeout];

  return v16;
}

void __87__WBSScopeTimeoutHandler_initWithTimeout_autoBugCaptureDomain_detectedProcess_context___block_invoke(void *a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAutoBugCapture();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __87__WBSScopeTimeoutHandler_initWithTimeout_autoBugCaptureDomain_detectedProcess_context___block_invoke_cold_1(a1, v2);
  }

  v3 = +[WBSAutomaticBugCaptureManager sharedManager];
  [v3 capturePerformanceTimeoutWithDomain:a1[4] detectedProcess:a1[5] context:a1[6]];
}

- (void)dealloc
{
  dispatch_block_cancel(self->_handler);
  v3.receiver = self;
  v3.super_class = WBSScopeTimeoutHandler;
  [(WBSScopeTimeoutHandler *)&v3 dealloc];
}

void __87__WBSScopeTimeoutHandler_initWithTimeout_autoBugCaptureDomain_detectedProcess_context___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = 138543874;
  v6 = v2;
  v7 = 2114;
  v8 = v3;
  v9 = 2114;
  v10 = v4;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Timeout in domain %{public}@, process %{public}@, context %{public}@", &v5, 0x20u);
}

@end