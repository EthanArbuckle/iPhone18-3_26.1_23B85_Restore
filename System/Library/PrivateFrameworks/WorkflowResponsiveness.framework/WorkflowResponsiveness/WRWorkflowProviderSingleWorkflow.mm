@interface WRWorkflowProviderSingleWorkflow
- (WRWorkflowProviderSingleWorkflow)initWithWorkflowName:(id)name queue:(id)queue callback:(id)callback;
- (void)handleSettingsChanged:(BOOL)changed;
@end

@implementation WRWorkflowProviderSingleWorkflow

- (WRWorkflowProviderSingleWorkflow)initWithWorkflowName:(id)name queue:(id)queue callback:(id)callback
{
  nameCopy = name;
  callbackCopy = callback;
  v16.receiver = self;
  v16.super_class = WRWorkflowProviderSingleWorkflow;
  v10 = [(WRWorkflowProvider *)&v16 initWithQueue:queue];
  if (v10)
  {
    v11 = [nameCopy copy];
    workflowName = v10->_workflowName;
    v10->_workflowName = v11;

    v13 = MEMORY[0x277C5A9A0](callbackCopy);
    callback = v10->_callback;
    v10->_callback = v13;
  }

  return v10;
}

- (void)handleSettingsChanged:(BOOL)changed
{
  v32 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v5 = OUTLINED_FUNCTION_5_0(self, a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = [WRWorkflow workflowWithName:v5];
  v8 = v6;
  if (!v6)
  {
    if (self)
    {
      OUTLINED_FUNCTION_5_0(0, v7);
    }

    v9 = *__error();
    v10 = _wrlog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (self)
      {
        v13 = OUTLINED_FUNCTION_5_0(v11, v12);
      }

      else
      {
        v13 = 0;
      }

      *buf = 138543362;
      v31 = v13;
      _os_log_impl(&dword_2746E5000, v10, OS_LOG_TYPE_INFO, "%{public}@: No workflow with name", buf, 0xCu);
    }

    v6 = __error();
    *v6 = v9;
  }

  if (changed)
  {
LABEL_26:
    if (!self)
    {
      Property = 0;
      goto LABEL_28;
    }

LABEL_27:
    objc_setProperty_atomic(self, v7, v8, 32);
    Property = objc_getProperty(self, v25, 16, 1);
LABEL_28:
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __58__WRWorkflowProviderSingleWorkflow_handleSettingsChanged___block_invoke;
    v28[3] = &unk_279EE37C8;
    v28[4] = self;
    v29 = v8;
    dispatch_async(Property, v28);

    goto LABEL_29;
  }

  if (self)
  {
    v14 = OUTLINED_FUNCTION_8_0(v6, v7, 32);
  }

  else
  {
    v14 = 0;
  }

  if (!(v8 | v14))
  {
    goto LABEL_29;
  }

  if (!self)
  {
    v17 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v15 = OUTLINED_FUNCTION_8_0(v14, v7, 32);
  v17 = v15;
  if (!v8 || !v15)
  {
    goto LABEL_25;
  }

  v18 = [OUTLINED_FUNCTION_8_0(v15 v16];

  if (v18)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_5_0(v19, v7);
  v20 = *__error();
  v21 = _wrlog();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
  if (v22)
  {
    v24 = OUTLINED_FUNCTION_5_0(v22, v23);
    *buf = 138543362;
    v31 = v24;
    _os_log_debug_impl(&dword_2746E5000, v21, OS_LOG_TYPE_DEBUG, "%{public}@: No changes after tasking notification", buf, 0xCu);
  }

  *__error() = v20;
LABEL_29:

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __58__WRWorkflowProviderSingleWorkflow_handleSettingsChanged___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 40, 1);
  }

  v4 = *(a1 + 40);
  v5 = Property[2];

  return v5();
}

@end