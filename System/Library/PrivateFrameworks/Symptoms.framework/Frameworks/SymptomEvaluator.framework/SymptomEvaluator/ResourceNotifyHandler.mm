@interface ResourceNotifyHandler
+ (BOOL)processOnBatteryOnly;
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (ResourceNotifyHandler)init;
- (int)read:(id)read returnedValues:(id)values;
- (void)setupResourceNotifyReceiver;
@end

@implementation ResourceNotifyHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ResourceNotifyHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_31 != -1)
  {
    dispatch_once(&sharedInstance_pred_31, block);
  }

  v2 = sharedInstance_sharedInstance_31;

  return v2;
}

void __52__ResourceNotifyHandler_setupResourceNotifyReceiver__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = dispatch_mig_server();
  if (v2)
  {
    v3 = v2;
    v4 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v7 = 136315138;
      v8 = mach_error_string(v3);
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "dispatch_mig_server(): %s", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __39__ResourceNotifyHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_31;
  sharedInstance_sharedInstance_31 = v1;

  [sharedInstance_sharedInstance_31 setupResourceNotifyReceiver];
  v3 = sharedInstance_sharedInstance_31;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

- (ResourceNotifyHandler)init
{
  v7.receiver = self;
  v7.super_class = ResourceNotifyHandler;
  v2 = [(ResourceNotifyHandler *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.symptoms.mach.resource_notify", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)setupResourceNotifyReceiver
{
  v23 = *MEMORY[0x277D85DE8];
  sp = 0;
  v3 = bootstrap_check_in(*MEMORY[0x277D85F18], "com.apple.resource_notify.host", &sp);
  v4 = debuggabilityLogHandle;
  if (v3)
  {
    v5 = v3;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = mach_error_string(v5);
      *buf = 136315650;
      v18 = "com.apple.resource_notify.host";
      v19 = 2080;
      v20 = v7;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Unable to bootstrap mach port for %s: %s (%d)", buf, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v18) = sp;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "ResourceNotify bootstrapped with mach kernel port %d", buf, 8u);
    }

    v8 = dispatch_source_create(MEMORY[0x277D85D08], sp, 0, self->_queue);
    if (v8)
    {
      v9 = v8;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __52__ResourceNotifyHandler_setupResourceNotifyReceiver__block_invoke;
      v14[3] = &unk_27898A0C8;
      v10 = v8;
      v15 = v10;
      dispatch_source_set_event_handler(v10, v14);
      self->_port = sp;
      objc_storeStrong(&self->_source, v9);
      v11 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Finished configuring kernel interface for RSRC_NOTIFY notifications.", buf, 2u);
      }

      dispatch_activate(v10);
    }

    else
    {
      v12 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v18) = sp;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Unable to create dispatch_source for mach port %d.", buf, 8u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (BOOL)processOnBatteryOnly
{
  if (processOnBatteryOnly_p_pred != -1)
  {
    +[ResourceNotifyHandler processOnBatteryOnly];
  }

  return processOnBatteryOnly_resourceNotifyBatteryOnly;
}

void *__45__ResourceNotifyHandler_processOnBatteryOnly__block_invoke()
{
  processOnBatteryOnly_resourceNotifyBatteryOnly = 1;
  result = get_shared_prefs_store();
  if (result)
  {

    return prefs_add_client(result, "resource_notify_on_power", &__block_literal_global_62);
  }

  return result;
}

void __45__ResourceNotifyHandler_processOnBatteryOnly__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && MEMORY[0x238389170](v3) == MEMORY[0x277D86448])
  {
    value = xpc_BOOL_get_value(v4);
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = @"OFF";
      if (value)
      {
        v8 = @"ON";
      }

      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Set RESOURCE_NOTIFY on power to %@", &v10, 0xCu);
    }

    v5 = !value;
  }

  else
  {
    v5 = 1;
  }

  processOnBatteryOnly_resourceNotifyBatteryOnly = v5;

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[ResourceNotifyHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [valuesCopy setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

@end