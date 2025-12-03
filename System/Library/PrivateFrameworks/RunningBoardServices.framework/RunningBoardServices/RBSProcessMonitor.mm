@interface RBSProcessMonitor
+ (id)_monitorWithService:(id)service;
+ (id)_monitorWithService:(id)service configuration:(id)configuration;
+ (id)monitor;
+ (id)monitorWithConfiguration:(id)configuration;
+ (id)monitorWithPredicate:(id)predicate updateHandler:(id)handler;
- (NSSet)states;
- (RBSProcessMonitor)init;
- (RBSProcessMonitorConfiguration)configuration;
- (id)_initWithService:(id *)service;
- (id)stateForIdentity:(id)identity;
- (unint64_t)events;
- (unsigned)serviceClass;
- (void)_handleExitEvent:(id)event;
- (void)_handlePreventLaunchUpdate:(id)update;
- (void)_handleProcessStateChange:(id)change;
- (void)_reconnect;
- (void)dealloc;
- (void)invalidate;
- (void)setEvents:(unint64_t)events;
- (void)setPredicates:(id)predicates;
- (void)setPreventLaunchUpdateHandle:(id)handle;
- (void)setStateDescriptor:(id)descriptor;
- (void)setUpdateHandler:(id)handler;
- (void)updateConfiguration:(id)configuration;
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
    serviceClass = [(RBSProcessMonitorConfiguration *)self->_configuration serviceClass];
  }

  else
  {
    serviceClass = 17;
  }

  os_unfair_lock_unlock(&self->_lock);
  return serviceClass;
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
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)_monitorWithService:(id)service
{
  serviceCopy = service;
  v5 = [(RBSProcessMonitor *)[self alloc] _initWithService:serviceCopy];

  return v5;
}

+ (id)monitorWithPredicate:(id)predicate updateHandler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (predicateCopy)
  {
    if (handlerCopy)
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
  v14 = predicateCopy;
  v15 = v8;
  v9 = v8;
  v10 = predicateCopy;
  v11 = [self monitorWithConfiguration:v13];

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

+ (id)monitorWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = +[RBSConnection sharedInstance];
  v6 = [self _monitorWithService:v5 configuration:configurationCopy];

  return v6;
}

- (id)stateForIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_stateByIdentity objectForKeyedSubscript:identityCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (NSSet)states
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x1E695DFA8];
  allValues = [(NSMutableDictionary *)self->_stateByIdentity allValues];
  v5 = [v3 setWithArray:allValues];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)updateConfiguration:(id)configuration
{
  v35 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    [RBSProcessMonitor updateConfiguration:];
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_valid)
  {
    self->_configuring = 1;
    configurationCopy[2](configurationCopy, self);
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
        allValues = [(NSMutableDictionary *)self->_stateByIdentity allValues];
        v11 = [allValues countByEnumeratingWithState:&v29 objects:v34 count:16];
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
                objc_enumerationMutation(allValues);
              }

              v15 = *(*(&v29 + 1) + 8 * i);
              stateDescriptor = [(RBSProcessMonitorConfiguration *)self->_configuration stateDescriptor];
              [stateDescriptor filterState:v15];

              if (([v15 isEmptyState] & 1) == 0)
              {
                process = [v15 process];
                v18 = [v5 matchesProcess:process];

                if (v18)
                {
                  continue;
                }
              }

              stateByIdentity = self->_stateByIdentity;
              process2 = [v15 process];
              identity = [process2 identity];
              [(NSMutableDictionary *)stateByIdentity setObject:0 forKeyedSubscript:identity];
            }

            v12 = [allValues countByEnumeratingWithState:&v29 objects:v34 count:16];
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
        rbs_isPermanentFailure = [v8 rbs_isPermanentFailure];
        v25 = rbs_monitor_log();
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
        if (rbs_isPermanentFailure)
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
    configurationCopy[2](configurationCopy, v23);

    os_unfair_lock_unlock(&self->_lock);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (unint64_t)events
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_valid)
  {
    events = [(RBSProcessMonitorConfiguration *)self->_configuration events];
  }

  else
  {
    events = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return events;
}

- (void)setPredicates:(id)predicates
{
  predicatesCopy = predicates;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_configuring)
  {
    [RBSProcessMonitor setPredicates:];
  }

  [(RBSProcessMonitorConfiguration *)self->_configuration setPredicates:predicatesCopy];
}

- (void)setStateDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_configuring)
  {
    [RBSProcessMonitor setStateDescriptor:];
  }

  [(RBSProcessMonitorConfiguration *)self->_configuration setStateDescriptor:descriptorCopy];
}

- (void)setEvents:(unint64_t)events
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_configuring)
  {
    [RBSProcessMonitor setEvents:];
  }

  configuration = self->_configuration;

  [(RBSProcessMonitorConfiguration *)configuration setEvents:events];
}

- (void)setUpdateHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_configuring)
  {
    [RBSProcessMonitor setUpdateHandler:];
  }

  [(RBSProcessMonitorConfiguration *)self->_configuration setUpdateHandler:handlerCopy];
}

- (void)setPreventLaunchUpdateHandle:(id)handle
{
  newValue = handle;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_configuring)
  {
    [RBSProcessMonitor setPreventLaunchUpdateHandle:];
  }

  [(RBSProcessMonitorConfiguration *)self->_configuration setPreventLaunchUpdateHandler:?];
}

- (void)_handleProcessStateChange:(id)change
{
  v26 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  os_unfair_lock_lock(&self->_lock);
  stateDescriptor = [(RBSProcessMonitorConfiguration *)self->_configuration stateDescriptor];

  if (!stateDescriptor || !self->_valid)
  {
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_28;
  }

  process = [changeCopy process];
  v7 = self->_configuration;
  identity = [process identity];
  if ([(RBSProcessMonitorConfiguration *)v7 matchesProcess:process])
  {
    v9 = [changeCopy copy];
    stateDescriptor2 = [(RBSProcessMonitorConfiguration *)v7 stateDescriptor];
    [stateDescriptor2 filterState:v9];

    v11 = [(NSMutableDictionary *)self->_stateByIdentity objectForKey:identity];
    v12 = v11;
    if (v11)
    {
      if ([v11 isEqual:v9])
      {
LABEL_13:
        v16 = rbs_monitor_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          process2 = [changeCopy process];
          v22 = 138543362;
          v23 = process2;
          _os_log_impl(&dword_18E8AD000, v16, OS_LOG_TYPE_INFO, "Update skipped for %{public}@", &v22, 0xCu);
        }

        updateHandler = 0;
        v14 = 0;
        goto LABEL_16;
      }
    }

    else if ([changeCopy isRunning] & 1) == 0 && (objc_msgSend(changeCopy, "taskState") || (objc_msgSend(changeCopy, "isEmptyState")))
    {
      goto LABEL_13;
    }

    updateHandler = [(RBSProcessMonitorConfiguration *)v7 updateHandler];
    v15 = [v9 copy];
    v14 = [RBSProcessStateUpdate updateWithState:v15 previousState:v12 exitEvent:0];

LABEL_16:
    if ([changeCopy isRunning] & 1) == 0 && (objc_msgSend(changeCopy, "taskState") || (objc_msgSend(changeCopy, "isEmptyState")))
    {
      [(NSMutableDictionary *)self->_stateByIdentity removeObjectForKey:identity];
    }

    else
    {
      [(NSMutableDictionary *)self->_stateByIdentity setObject:v9 forKey:identity];
    }

    goto LABEL_22;
  }

  [(NSMutableDictionary *)self->_stateByIdentity removeObjectForKey:identity];
  updateHandler = 0;
  v14 = 0;
LABEL_22:
  os_unfair_lock_unlock(&self->_lock);
  if (v14 && updateHandler)
  {
    (updateHandler)[2](updateHandler, self, process, v14);
    v18 = rbs_monitor_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      process3 = [changeCopy process];
      taskState = [changeCopy taskState];
      v22 = 138543618;
      v23 = process3;
      v24 = 1024;
      v25 = taskState;
      _os_log_impl(&dword_18E8AD000, v18, OS_LOG_TYPE_INFO, "Update delivered for %{public}@ with taskState %d", &v22, 0x12u);
    }
  }

LABEL_28:
  v21 = *MEMORY[0x1E69E9840];
}

- (void)_handleExitEvent:(id)event
{
  eventCopy = event;
  os_unfair_lock_lock(&self->_lock);
  if (self->_valid)
  {
    process = [eventCopy process];
    v6 = self->_configuration;
    if (([(RBSProcessMonitorConfiguration *)v6 events]& 1) != 0 && [(RBSProcessMonitorConfiguration *)v6 matchesProcess:process])
    {
      updateHandler = [(RBSProcessMonitorConfiguration *)v6 updateHandler];
      v8 = [RBSProcessStateUpdate updateWithState:0 previousState:0 exitEvent:eventCopy];
    }

    else
    {
      updateHandler = 0;
      v8 = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
    if (v8 && updateHandler)
    {
      (updateHandler)[2](updateHandler, self, process, v8);
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

- (void)_handlePreventLaunchUpdate:(id)update
{
  updateCopy = update;
  os_unfair_lock_lock(&self->_lock);
  if (self->_valid)
  {
    v5 = self->_configuration;
    if (([(RBSProcessMonitorConfiguration *)v5 events]& 2) != 0)
    {
      preventLaunchUpdateHandler = [(RBSProcessMonitorConfiguration *)v5 preventLaunchUpdateHandler];
      os_unfair_lock_unlock(&self->_lock);
      if (preventLaunchUpdateHandler)
      {
        (preventLaunchUpdateHandler)[2](preventLaunchUpdateHandler, self, updateCopy);
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

- (id)_initWithService:(id *)service
{
  v4 = a2;
  if (service)
  {
    v13.receiver = service;
    v13.super_class = RBSProcessMonitor;
    v5 = objc_msgSendSuper2(&v13, sel_init);
    service = v5;
    if (v5)
    {
      *(v5 + 24) = 1;
      objc_storeStrong(v5 + 2, a2);
      *(service + 2) = 0;
      v6 = objc_alloc_init(RBSProcessMonitorConfiguration);
      v7 = service[4];
      service[4] = v6;

      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = service[5];
      service[5] = v8;

      v10 = [RBSWorkloop createCalloutQueue:?];
      v11 = service[6];
      service[6] = v10;
    }
  }

  return service;
}

+ (id)_monitorWithService:(id)service configuration:(id)configuration
{
  configurationCopy = configuration;
  serviceCopy = service;
  v8 = [(RBSProcessMonitor *)[self alloc] _initWithService:serviceCopy];

  [v8 updateConfiguration:configurationCopy];

  return v8;
}

- (void)_reconnect
{
  if (self)
  {
    return [self updateConfiguration:&__block_literal_global];
  }

  return self;
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