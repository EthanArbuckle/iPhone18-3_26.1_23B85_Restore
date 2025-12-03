@interface RMConfigurationSubscriberEventStream
+ (id)_configuredConfigurationTypesWithScope:(int64_t)scope;
+ (id)_eventDescriptorByNameForEventStreamNamed:(id)named;
+ (id)newConfigurationSubscriberEventStreamWithScope:(int64_t)scope applicators:(id)applicators publisherClass:(Class)class;
+ (void)_setupEventHandlerWithScope:(int64_t)scope;
- (NSArray)configurationTypes;
- (RMConfigurationSubscriberEventStream)initWithScope:(int64_t)scope;
- (void)_fetchConfigurations:(id)configurations;
- (void)_handleEvent:(id)event;
- (void)_setupEventHandler;
- (void)dealloc;
- (void)start;
@end

@implementation RMConfigurationSubscriberEventStream

+ (id)newConfigurationSubscriberEventStreamWithScope:(int64_t)scope applicators:(id)applicators publisherClass:(Class)class
{
  applicatorsCopy = applicators;
  v8 = [[RMConfigurationSubscriberEventStream alloc] initWithScope:scope];
  if (applicatorsCopy)
  {
    v9 = [RMConfigurationSubscriberDelegate sharedDelegateWithApplicators:applicatorsCopy];
    [(RMConfigurationSubscriberClient *)v8 setSubscriberDelegate:v9];
  }

  if (class)
  {
    v10 = [RMStatusPublisherDelegate sharedDelegateWithPublisherClass:class];
    [(RMConfigurationSubscriberClient *)v8 setPublisherDelegate:v10];
  }

  return v8;
}

- (RMConfigurationSubscriberEventStream)initWithScope:(int64_t)scope
{
  v5.receiver = self;
  v5.super_class = RMConfigurationSubscriberEventStream;
  result = [(RMConfigurationSubscriberEventStream *)&v5 init];
  if (result)
  {
    result->_scope = scope;
  }

  return result;
}

+ (id)_configuredConfigurationTypesWithScope:(int64_t)scope
{
  if (scope == 1)
  {
    v3 = @"com.apple.remotemanagement.configs.daemon";
  }

  else
  {
    v3 = @"com.apple.remotemanagement.configs.agent";
  }

  v4 = [self _eventDescriptorByNameForEventStreamNamed:v3];
  if (MEMORY[0x266720A60]() == MEMORY[0x277D86468])
  {
    v6 = objc_opt_new();
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __79__RMConfigurationSubscriberEventStream__configuredConfigurationTypesWithScope___block_invoke;
    applier[3] = &unk_279B05AA8;
    v11 = v6;
    v7 = v6;
    xpc_dictionary_apply(v4, applier);
    allObjects = [v7 allObjects];
    v5 = [allObjects sortedArrayUsingSelector:sel_compare_];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

uint64_t __79__RMConfigurationSubscriberEventStream__configuredConfigurationTypesWithScope___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x266720A60]() == MEMORY[0x277D86468])
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    v6 = [RMConfigurationSubscriberDescription descriptionWithEventsDictionary:v5];
    v7 = [v6 types];
    if ([v7 count])
    {
      [*(a1 + 32) addObjectsFromArray:v7];
    }
  }

  return 1;
}

- (NSArray)configurationTypes
{
  configurationTypes = self->_configurationTypes;
  if (!configurationTypes)
  {
    v4 = [objc_opt_class() _configuredConfigurationTypesWithScope:{-[RMConfigurationSubscriberEventStream scope](self, "scope")}];
    v5 = self->_configurationTypes;
    self->_configurationTypes = v4;

    configurationTypes = self->_configurationTypes;
  }

  v6 = configurationTypes;

  return v6;
}

+ (id)_eventDescriptorByNameForEventStreamNamed:(id)named
{
  [named UTF8String];
  v3 = xpc_copy_event();

  return v3;
}

- (void)dealloc
{
  if (self->_eventStreamObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_eventStreamObserver];

    eventStreamObserver = self->_eventStreamObserver;
    self->_eventStreamObserver = 0;
  }

  v5.receiver = self;
  v5.super_class = RMConfigurationSubscriberEventStream;
  [(RMConfigurationSubscriberEventStream *)&v5 dealloc];
}

- (void)start
{
  v8 = *MEMORY[0x277D85DE8];
  configurationTypes = [self configurationTypes];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setupEventHandler
{
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  scope = [(RMConfigurationSubscriberEventStream *)self scope];
  v5 = @"com.apple.remotemanagement.configs.agent";
  if (scope == 1)
  {
    v5 = @"com.apple.remotemanagement.configs.daemon";
  }

  v6 = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __58__RMConfigurationSubscriberEventStream__setupEventHandler__block_invoke;
  v11 = &unk_279B05AD0;
  objc_copyWeak(&v12, &location);
  v7 = [defaultCenter addObserverForName:v6 object:0 queue:0 usingBlock:&v8];
  [(RMConfigurationSubscriberEventStream *)self setEventStreamObserver:v7, v8, v9, v10, v11];

  [objc_opt_class() _setupEventHandlerWithScope:{-[RMConfigurationSubscriberEventStream scope](self, "scope")}];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __58__RMConfigurationSubscriberEventStream__setupEventHandler__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v5 = [v3 objectForKeyedSubscript:@"Event"];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEvent:v5];
}

- (void)_handleEvent:(id)event
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  configurationSubscriberEventStream = [MEMORY[0x277D45F58] configurationSubscriberEventStream];
  if (os_log_type_enabled(configurationSubscriberEventStream, OS_LOG_TYPE_INFO))
  {
    v19 = 138543362;
    v20 = v4;
    _os_log_impl(&dword_261E36000, configurationSubscriberEventStream, OS_LOG_TYPE_INFO, "Received event stream message: %{public}@", &v19, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    configurationSubscriberEventStream5 = [v4 objectForKeyedSubscript:@"ConfigurationTypes"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      configurationSubscriberEventStream2 = [MEMORY[0x277D45F58] configurationSubscriberEventStream];
      if (os_log_type_enabled(configurationSubscriberEventStream2, OS_LOG_TYPE_ERROR))
      {
        [RMConfigurationSubscriberEventStream _handleEvent:];
      }

      goto LABEL_21;
    }

    configurationSubscriberEventStream2 = [MEMORY[0x277CBEB58] setWithArray:configurationSubscriberEventStream5];
    v8 = MEMORY[0x277CBEB58];
    configurationTypes = [(RMConfigurationSubscriberEventStream *)self configurationTypes];
    v10 = [v8 setWithArray:configurationTypes];

    [configurationSubscriberEventStream2 minusSet:v10];
    v11 = [MEMORY[0x277CBEB98] setWithArray:configurationSubscriberEventStream5];
    [v10 intersectSet:v11];

    if ([configurationSubscriberEventStream2 count])
    {
      v12 = [v10 count];
      configurationSubscriberEventStream3 = [MEMORY[0x277D45F58] configurationSubscriberEventStream];
      v14 = os_log_type_enabled(configurationSubscriberEventStream3, OS_LOG_TYPE_ERROR);
      if (!v12)
      {
        if (v14)
        {
          [RMConfigurationSubscriberEventStream _handleEvent:];
        }

        goto LABEL_20;
      }

      if (v14)
      {
        [RMConfigurationSubscriberEventStream _handleEvent:];
      }
    }

    allObjects = [v10 allObjects];
    v16 = [allObjects sortedArrayUsingSelector:sel_compare_];

    configurationSubscriberEventStream4 = [MEMORY[0x277D45F58] configurationSubscriberEventStream];
    if (os_log_type_enabled(configurationSubscriberEventStream4, OS_LOG_TYPE_DEBUG))
    {
      [RMConfigurationSubscriberEventStream _handleEvent:];
    }

    [(RMConfigurationSubscriberEventStream *)self _fetchConfigurations:v16];
    configurationSubscriberEventStream5 = v16;
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  configurationSubscriberEventStream5 = [MEMORY[0x277D45F58] configurationSubscriberEventStream];
  if (os_log_type_enabled(configurationSubscriberEventStream5, OS_LOG_TYPE_ERROR))
  {
    [RMConfigurationSubscriberEventStream _handleEvent:];
  }

LABEL_22:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_fetchConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  configurationSubscriberEventStream = [MEMORY[0x277D45F58] configurationSubscriberEventStream];
  if (os_log_type_enabled(configurationSubscriberEventStream, OS_LOG_TYPE_DEBUG))
  {
    [RMConfigurationSubscriberEventStream _fetchConfigurations:?];
  }

  v6 = [MEMORY[0x277CBEB98] setWithArray:configurationsCopy];
  scope = [(RMConfigurationSubscriberEventStream *)self scope];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__RMConfigurationSubscriberEventStream__fetchConfigurations___block_invoke;
  v9[3] = &unk_279B05AF8;
  v9[4] = self;
  v10 = configurationsCopy;
  v8 = configurationsCopy;
  [(RMConfigurationSubscriberClient *)self fetchConfigurationsWithTypes:v6 scope:scope completionHandler:v9];
}

void __61__RMConfigurationSubscriberEventStream__fetchConfigurations___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D45F58] configurationSubscriberEventStream];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61__RMConfigurationSubscriberEventStream__fetchConfigurations___block_invoke_cold_1(a1);
  }
}

+ (void)_setupEventHandlerWithScope:(int64_t)scope
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RMConfigurationSubscriberEventStream__setupEventHandlerWithScope___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = scope;
  if (_setupEventHandlerWithScope__onceToken != -1)
  {
    dispatch_once(&_setupEventHandlerWithScope__onceToken, block);
  }
}

void __68__RMConfigurationSubscriberEventStream__setupEventHandlerWithScope___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v2 = @"com.apple.remotemanagement.configs.daemon";
  }

  else
  {
    v2 = @"com.apple.remotemanagement.configs.agent";
  }

  v3 = [(__CFString *)v2 UTF8String];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __68__RMConfigurationSubscriberEventStream__setupEventHandlerWithScope___block_invoke_2;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = *(a1 + 32);
  xpc_set_event_stream_handler(v3, 0, handler);
}

void __68__RMConfigurationSubscriberEventStream__setupEventHandlerWithScope___block_invoke_2(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB98];
  v4 = a2;
  v5 = [v3 defaultCenter];
  if (*(a1 + 32) == 1)
  {
    v6 = @"com.apple.remotemanagement.configs.daemon";
  }

  else
  {
    v6 = @"com.apple.remotemanagement.configs.agent";
  }

  v11 = @"Event";
  v12[0] = v4;
  v7 = MEMORY[0x277CBEAC0];
  v8 = v6;
  v9 = [v7 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [v5 postNotificationName:v8 object:0 userInfo:v9];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleEvent:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Ignoring event stream message, payload is unexpected type: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleEvent:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Ignoring event stream message, configuration types is unexpected type: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleEvent:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Ignoring unsupported types: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleEvent:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Ignoring event stream message, notified about unsupported types: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleEvent:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(&dword_261E36000, v0, OS_LOG_TYPE_DEBUG, "Fetch of configurations with types: %{public}@...", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_fetchConfigurations:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] rms_stringWithScope:{objc_msgSend(a1, "scope")}];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __61__RMConfigurationSubscriberEventStream__fetchConfigurations___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] rms_stringWithScope:{objc_msgSend(*(a1 + 32), "scope")}];
  v3 = *(a1 + 40);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end