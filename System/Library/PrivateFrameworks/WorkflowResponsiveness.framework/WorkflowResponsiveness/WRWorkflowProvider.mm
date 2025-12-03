@interface WRWorkflowProvider
+ (id)providerForAllWorkflowsWithQueue:(id)queue callback:(id)callback;
+ (id)providerForWorkflowWithName:(id)name queue:(id)queue callback:(id)callback;
- (WRWorkflowProvider)initWithQueue:(id)queue;
- (void)dealloc;
- (void)handleSettingsChanged:(BOOL)changed;
- (void)registerNotification;
@end

@implementation WRWorkflowProvider

- (void)handleSettingsChanged:(BOOL)changed
{
  v3 = *__error();
  v4 = _wrlog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [WRWorkflowProvider handleSettingsChanged:];
  }

  *__error() = v3;
}

- (void)registerNotification
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__WRWorkflowProvider_registerNotification__block_invoke(uint64_t a1)
{
  v2 = *__error();
  v3 = _wrlog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __42__WRWorkflowProvider_registerNotification__block_invoke_cold_1();
  }

  *__error() = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSettingsChanged:0];
}

void __42__WRWorkflowProvider_registerNotification__block_invoke_214(uint64_t a1)
{
  v2 = *__error();
  v3 = _wrlog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __42__WRWorkflowProvider_registerNotification__block_invoke_214_cold_1();
  }

  *__error() = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSettingsChanged:0];
}

- (WRWorkflowProvider)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = WRWorkflowProvider;
  v6 = [(WRWorkflowProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_taskingNotifyToken = -1;
    objc_storeStrong(&v6->_callbackQueue, queue);
  }

  return v7;
}

- (void)dealloc
{
  if (!self)
  {
    notify_cancel(0);
    wrSettingsChangedNotifyToken = 0;
LABEL_5:
    notify_cancel(wrSettingsChangedNotifyToken);
    goto LABEL_6;
  }

  taskingNotifyToken = self->_taskingNotifyToken;
  if (taskingNotifyToken != -1)
  {
    notify_cancel(taskingNotifyToken);
  }

  wrSettingsChangedNotifyToken = self->_wrSettingsChangedNotifyToken;
  if (wrSettingsChangedNotifyToken != -1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v5.receiver = self;
  v5.super_class = WRWorkflowProvider;
  [(WRWorkflowProvider *)&v5 dealloc];
}

+ (id)providerForAllWorkflowsWithQueue:(id)queue callback:(id)callback
{
  callbackCopy = callback;
  queueCopy = queue;
  v7 = [[WRWorkflowProviderAllWorkflows alloc] initWithQueue:queueCopy callback:callbackCopy];

  [(WRWorkflowProvider *)v7 registerNotification];

  return v7;
}

+ (id)providerForWorkflowWithName:(id)name queue:(id)queue callback:(id)callback
{
  callbackCopy = callback;
  queueCopy = queue;
  nameCopy = name;
  v10 = [[WRWorkflowProviderSingleWorkflow alloc] initWithWorkflowName:nameCopy queue:queueCopy callback:callbackCopy];

  [(WRWorkflowProvider *)v10 registerNotification];

  return v10;
}

- (void)handleSettingsChanged:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__WRWorkflowProvider_registerNotification__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_12_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__WRWorkflowProvider_registerNotification__block_invoke_214_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_12_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end