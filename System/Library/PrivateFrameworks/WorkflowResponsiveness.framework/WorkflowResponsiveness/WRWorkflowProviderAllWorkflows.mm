@interface WRWorkflowProviderAllWorkflows
- (WRWorkflowProviderAllWorkflows)initWithQueue:(id)queue callback:(id)callback;
- (void)handleSettingsChanged:(BOOL)changed;
@end

@implementation WRWorkflowProviderAllWorkflows

- (WRWorkflowProviderAllWorkflows)initWithQueue:(id)queue callback:(id)callback
{
  callbackCopy = callback;
  v11.receiver = self;
  v11.super_class = WRWorkflowProviderAllWorkflows;
  v7 = [(WRWorkflowProvider *)&v11 initWithQueue:queue];
  if (v7)
  {
    v8 = MEMORY[0x277C5A9A0](callbackCopy);
    callback = v7->_callback;
    v7->_callback = v8;
  }

  return v7;
}

- (void)handleSettingsChanged:(BOOL)changed
{
  v5 = +[WRWorkflow allWorkflows];
  if (changed || ([(WRWorkflowProviderAllWorkflows *)self handleSettingsChanged:v5]& 1) != 0)
  {
    [WRWorkflowProviderAllWorkflows handleSettingsChanged:];
  }
}

uint64_t __56__WRWorkflowProviderAllWorkflows_handleSettingsChanged___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 32, 1);
  }

  v4 = *(a1 + 40);
  v5 = Property[2];

  return v5();
}

- (uint64_t)handleSettingsChanged:(id)a1 .cold.1(id a1, char *a2)
{
  v3 = a1;
  if (a1)
  {
    a1 = OUTLINED_FUNCTION_8_0(a1, a2, 24);
  }

  v4 = [a1 count];
  v5 = [a2 count];
  if (v4 != v5)
  {
    return 1;
  }

  v7 = 0;
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_5:
  for (i = OUTLINED_FUNCTION_8_0(v5, v6, 24); ; i = 0)
  {
    v9 = [i count];
    if (v7 >= v9)
    {
      break;
    }

    if (v3)
    {
      v11 = OUTLINED_FUNCTION_8_0(v9, v10, 24);
    }

    else
    {
      v11 = 0;
    }

    v12 = [v11 objectAtIndexedSubscript:v7];
    v13 = [a2 objectAtIndexedSubscript:v7];
    v14 = v13;
    if (v12 && v13 && (![v12 isEqual:v13] || objc_msgSend(v12, "hasChangesRelativeTo:", v14)))
    {

      return 1;
    }

    ++v7;
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_14:
    ;
  }

  v15 = *__error();
  v16 = _wrlog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_9_0();
    _os_log_debug_impl(v19, v20, v21, v22, v23, 2u);
  }

  v17 = __error();
  result = 0;
  *v17 = v15;
  return result;
}

- (void)handleSettingsChanged:.cold.2()
{
  OUTLINED_FUNCTION_14();
  v4 = v2;
  if (v2)
  {
    objc_setProperty_atomic(v2, v3, v1, 24);
    Property = objc_getProperty(v4, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  *v0 = MEMORY[0x277D85DD0];
  v0[1] = 3221225472;
  v0[2] = __56__WRWorkflowProviderAllWorkflows_handleSettingsChanged___block_invoke;
  v0[3] = &unk_279EE37C8;
  v0[4] = v4;
  v0[5] = v1;
  dispatch_async(Property, v0);
}

@end