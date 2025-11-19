@interface RBSProcessMonitor
+ (id)_monitorWithService:(id)a3;
+ (id)_monitorWithService:(id)a3 configuration:(id)a4;
+ (id)monitor;
+ (id)monitorWithConfiguration:(id)a3;
+ (id)monitorWithPredicate:(id)a3 updateHandler:(id)a4;
- (NSSet)states;
- (RBSProcessMonitor)init;
- (RBSProcessMonitorConfiguration)configuration;
- (id)_initWithService:(id *)a1;
- (id)stateForIdentity:(id)a3;
- (unint64_t)events;
- (unsigned)serviceClass;
- (void)_handleExitEvent:(id)a3;
- (void)_handlePreventLaunchUpdate:(id)a3;
- (void)_handleProcessStateChange:(id)a3;
- (void)_reconnect;
- (void)dealloc;
- (void)invalidate;
- (void)setEvents:(unint64_t)a3;
- (void)setPredicates:(id)a3;
- (void)setPreventLaunchUpdateHandle:(id)a3;
- (void)setStateDescriptor:(id)a3;
- (void)setUpdateHandler:(id)a3;
- (void)updateConfiguration:(id)a3;
@end

@implementation RBSProcessMonitor

- (RBSProcessMonitor)init
{
  v3 = +[RBSConnection sharedInstance];
  v4 = [(RBSProcessMonitor *)&self->super.isa _initWithService:v3];

  return v4;
}

- (void)dealloc
{
  if (self->_valid)
  {
    [RBSProcessMonitor dealloc];
  }

  v2.receiver = self;
  v2.super_class = RBSProcessMonitor;
  [(RBSProcessMonitor *)&v2 dealloc];
}

- (void)invalidate
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_18E8AD000, v0, OS_LOG_TYPE_DEBUG, "Invalidated monitor %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (unsigned)serviceClass
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_valid)
  {
    v3 = [(RBSProcessMonitorConfiguration *)self->_configuration serviceClass];
  }

  else
  {
    v3 = 17;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (RBSProcessMonitorConfiguration)configuration
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_valid)
  {
    v3 = [(RBSProcessMonitorConfiguration *)self->_configuration copy];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

+ (id)monitor
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)_monitorWithService:(id)a3
{
  v4 = a3;
  v5 = [(RBSProcessMonitor *)[a1 alloc] _initWithService:v4];

  return v5;
}

+ (id)monitorWithPredicate:(id)a3 updateHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[RBSProcessMonitor monitorWithPredicate:updateHandler:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  +[RBSProcessMonitor monitorWithPredicate:updateHandler:];
LABEL_3:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__RBSProcessMonitor_monitorWithPredicate_updateHandler___block_invoke;
  v13[3] = &unk_1E7275E48;
  v14 = v6;
  v15 = v8;
  v9 = v8;
  v10 = v6;
  v11 = [a1 monitorWithConfiguration:v13];

  return v11;
}

void __56__RBSProcessMonitor_monitorWithPredicate_updateHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  [v4 setPredicates:{v5, v8, v9}];

  [v4 setUpdateHandler:*(a1 + 40)];
  v6 = +[RBSProcessStateDescriptor descriptor];
  [v4 setStateDescriptor:v6];

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)monitorWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = +[RBSConnection sharedInstance];
  v6 = [a1 _monitorWithService:v5 configuration:v4];

  return v6;
}

- (id)stateForIdentity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_stateByIdentity objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (NSSet)states
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x1E695DFA8];
  v4 = [(NSMutableDictionary *)self->_stateByIdentity allValues];
  v5 = [v3 setWithArray:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)updateConfiguration:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [RBSProcessMonitor updateConfiguration:];
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_valid)
  {
    self->_configuring = 1;
    v4[2](v4, self);
    self->_configuring = 0;
    v5 = [(RBSProcessMonitorConfiguration *)self->_configuration copy];
    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      service = self->_service;
      v33 = 0;
      v7 = [(RBSServiceLocalProtocol *)service subscribeProcessStateMonitor:self configuration:v5 error:&v33];
      v8 = v33;
      v9 = v8;
      if (v7)
      {
        v28 = v8;
        os_unfair_lock_lock(&self->_lock);
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v10 = [(NSMutableDictionary *)self->_stateByIdentity allValues];
        v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v30;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v29 + 1) + 8 * i);
              v16 = [(RBSProcessMonitorConfiguration *)self->_configuration stateDescriptor];
              [v16 filterState:v15];

              if (([v15 isEmptyState] & 1) == 0)
              {
                v17 = [v15 process];
                v18 = [v5 matchesProcess:v17];

                if (v18)
                {
                  continue;
                }
              }

              stateByIdentity = self->_stateByIdentity;
              v20 = [v15 process];
              v21 = [v20 identity];
              [(NSMutableDictionary *)stateByIdentity setObject:0 forKeyedSubscript:v21];
            }

            v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
          }

          while (v12);
        }

        os_unfair_lock_unlock(&self->_lock);
        v22 = rbs_monitor_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [RBSProcessMonitor updateConfiguration:];
        }

        v9 = v28;
      }

      else
      {
        v24 = [v8 rbs_isPermanentFailure];
        v25 = rbs_monitor_log();
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
        if (v24)
        {
          if (v26)
          {
            [RBSProcessMonitor updateConfiguration:];
          }

          [(RBSProcessMonitor *)self invalidate];
        }

        else
        {
          if (v26)
          {
            [RBSProcessMonitor updateConfiguration:];
          }
        }
      }
    }
  }

  else
  {
    v23 = objc_alloc_init(RBSProcessMonitorConfiguration);
    v4[2](v4, v23);

    os_unfair_lock_unlock(&self->_lock);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (unint64_t)events
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_valid)
  {
    v3 = [(RBSProcessMonitorConfiguration *)self->_configuration events];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setPredicates:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_configuring)
  {
    [RBSProcessMonitor setPredicates:];
  }

  [(RBSProcessMonitorConfiguration *)self->_configuration setPredicates:v4];
}

- (void)setStateDescriptor:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_configuring)
  {
    [RBSProcessMonitor setStateDescriptor:];
  }

  [(RBSProcessMonitorConfiguration *)self->_configuration setStateDescriptor:v4];
}

- (void)setEvents:(unint64_t)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_configuring)
  {
    [RBSProcessMonitor setEvents:];
  }

  configuration = self->_configuration;

  [(RBSProcessMonitorConfiguration *)configuration setEvents:a3];
}

- (void)setUpdateHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_configuring)
  {
    [RBSProcessMonitor setUpdateHandler:];
  }

  [(RBSProcessMonitorConfiguration *)self->_configuration setUpdateHandler:v4];
}

- (void)setPreventLaunchUpdateHandle:(id)a3
{
  newValue = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_configuring)
  {
    [RBSProcessMonitor setPreventLaunchUpdateHandle:];
  }

  [(RBSProcessMonitorConfiguration *)self->_configuration setPreventLaunchUpdateHandler:?];
}

- (void)_handleProcessStateChange:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(RBSProcessMonitorConfiguration *)self->_configuration stateDescriptor];

  if (!v5 || !self->_valid)
  {
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_28;
  }

  v6 = [v4 process];
  v7 = self->_configuration;
  v8 = [v6 identity];
  if ([(RBSProcessMonitorConfiguration *)v7 matchesProcess:v6])
  {
    v9 = [v4 copy];
    v10 = [(RBSProcessMonitorConfiguration *)v7 stateDescriptor];
    [v10 filterState:v9];

    v11 = [(NSMutableDictionary *)self->_stateByIdentity objectForKey:v8];
    v12 = v11;
    if (v11)
    {
      if ([v11 isEqual:v9])
      {
LABEL_13:
        v16 = rbs_monitor_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v4 process];
          v22 = 138543362;
          v23 = v17;
          _os_log_impl(&dword_18E8AD000, v16, OS_LOG_TYPE_INFO, "Update skipped for %{public}@", &v22, 0xCu);
        }

        v13 = 0;
        v14 = 0;
        goto LABEL_16;
      }
    }

    else if ([v4 isRunning] & 1) == 0 && (objc_msgSend(v4, "taskState") || (objc_msgSend(v4, "isEmptyState")))
    {
      goto LABEL_13;
    }

    v13 = [(RBSProcessMonitorConfiguration *)v7 updateHandler];
    v15 = [v9 copy];
    v14 = [RBSProcessStateUpdate updateWithState:v15 previousState:v12 exitEvent:0];

LABEL_16:
    if ([v4 isRunning] & 1) == 0 && (objc_msgSend(v4, "taskState") || (objc_msgSend(v4, "isEmptyState")))
    {
      [(NSMutableDictionary *)self->_stateByIdentity removeObjectForKey:v8];
    }

    else
    {
      [(NSMutableDictionary *)self->_stateByIdentity setObject:v9 forKey:v8];
    }

    goto LABEL_22;
  }

  [(NSMutableDictionary *)self->_stateByIdentity removeObjectForKey:v8];
  v13 = 0;
  v14 = 0;
LABEL_22:
  os_unfair_lock_unlock(&self->_lock);
  if (v14 && v13)
  {
    (v13)[2](v13, self, v6, v14);
    v18 = rbs_monitor_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v4 process];
      v20 = [v4 taskState];
      v22 = 138543618;
      v23 = v19;
      v24 = 1024;
      v25 = v20;
      _os_log_impl(&dword_18E8AD000, v18, OS_LOG_TYPE_INFO, "Update delivered for %{public}@ with taskState %d", &v22, 0x12u);
    }
  }

LABEL_28:
  v21 = *MEMORY[0x1E69E9840];
}

- (void)_handleExitEvent:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_valid)
  {
    v5 = [v4 process];
    v6 = self->_configuration;
    if (([(RBSProcessMonitorConfiguration *)v6 events]& 1) != 0 && [(RBSProcessMonitorConfiguration *)v6 matchesProcess:v5])
    {
      v7 = [(RBSProcessMonitorConfiguration *)v6 updateHandler];
      v8 = [RBSProcessStateUpdate updateWithState:0 previousState:0 exitEvent:v4];
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
    if (v8 && v7)
    {
      (v7)[2](v7, self, v5, v8);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v8 = rbs_monitor_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [RBSProcessMonitor _handleExitEvent:];
    }
  }
}

- (void)_handlePreventLaunchUpdate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_valid)
  {
    v5 = self->_configuration;
    if (([(RBSProcessMonitorConfiguration *)v5 events]& 2) != 0)
    {
      v6 = [(RBSProcessMonitorConfiguration *)v5 preventLaunchUpdateHandler];
      os_unfair_lock_unlock(&self->_lock);
      if (v6)
      {
        (v6)[2](v6, self, v4);
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = rbs_monitor_log();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      [RBSProcessMonitor _handlePreventLaunchUpdate:];
    }
  }
}

- (id)_initWithService:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = RBSProcessMonitor;
    v5 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v5;
    if (v5)
    {
      *(v5 + 24) = 1;
      objc_storeStrong(v5 + 2, a2);
      *(a1 + 2) = 0;
      v6 = objc_alloc_init(RBSProcessMonitorConfiguration);
      v7 = a1[4];
      a1[4] = v6;

      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = a1[5];
      a1[5] = v8;

      v10 = [RBSWorkloop createCalloutQueue:?];
      v11 = a1[6];
      a1[6] = v10;
    }
  }

  return a1;
}

+ (id)_monitorWithService:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RBSProcessMonitor *)[a1 alloc] _initWithService:v7];

  [v8 updateConfiguration:v6];

  return v8;
}

- (void)_reconnect
{
  if (a1)
  {
    return [a1 updateConfiguration:&__block_literal_global];
  }

  return a1;
}

+ (void)monitorWithPredicate:updateHandler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"predicate" object:? file:? lineNumber:? description:?];
}

+ (void)monitorWithPredicate:updateHandler:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"handler" object:? file:? lineNumber:? description:?];
}

- (void)updateConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"block != nil" object:? file:? lineNumber:? description:?];
}

- (void)updateConfiguration:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0(&dword_18E8AD000, v0, v1, "Transient error subscribing to process monitor %{public}@ <%{public}@>");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)updateConfiguration:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0(&dword_18E8AD000, v0, v1, "Permanent error subscribing to process monitor %{public}@ <%{public}@>");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)updateConfiguration:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_18E8AD000, v0, OS_LOG_TYPE_DEBUG, "Successfully synced configuration for monitor %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)setPredicates:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setStateDescriptor:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setServiceClass:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setEvents:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setUpdateHandler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setPreventLaunchUpdateHandle:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_handleExitEvent:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_18E8AD000, v0, OS_LOG_TYPE_ERROR, "_handleExitEvent called for invalid monitor %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_handlePreventLaunchUpdate:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_18E8AD000, v0, OS_LOG_TYPE_ERROR, "_handlePreventLaunchUpdate called for invalid monitor %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end