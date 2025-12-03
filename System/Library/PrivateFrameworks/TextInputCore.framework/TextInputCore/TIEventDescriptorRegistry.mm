@interface TIEventDescriptorRegistry
+ (TIEventDescriptorRegistry)registryWithConfig:(id)config;
+ (TIEventDescriptorRegistry)registryWithDescriptors:(id)descriptors andSpecs:(id)specs;
+ (id)registry;
- (NSDictionary)eventDescriptors;
- (NSDictionary)eventSpecs;
- (TIEventDescriptorRegistry)initWithConfig:(id)config;
- (TIEventDescriptorRegistry)initWithDescriptors:(id)descriptors andSpecs:(id)specs;
- (id)allEventDescriptors;
- (id)contextFromError:(id)error;
- (id)eventDescriptorWithName:(id)name;
- (id)eventSpecWithName:(id)name;
- (id)valueFromError:(id)error forKey:(id)key;
- (void)_loadEventDescriptors;
- (void)loadEventDescriptorsIfNecessary;
@end

@implementation TIEventDescriptorRegistry

- (id)valueFromError:(id)error forKey:(id)key
{
  keyCopy = key;
  userInfo = [error userInfo];
  v7 = [userInfo objectForKey:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'", v7];
    v8 = LABEL_5:;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%i", objc_msgSend(v7, "intValue")];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)contextFromError:(id)error
{
  errorCopy = error;
  v5 = [(TIEventDescriptorRegistry *)self valueFromError:errorCopy forKey:@"event"];
  v6 = [(TIEventDescriptorRegistry *)self valueFromError:errorCopy forKey:@"field"];

  if (v5)
  {
    if (v6)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Event %@ Field %@ ", v5, v6];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Event %@ ", v5, v9];
    }
    v7 = ;
  }

  else
  {
    v7 = &stru_283FDFAF8;
  }

  return v7;
}

- (void)_loadEventDescriptors
{
  v26 = *MEMORY[0x277D85DE8];
  config = [(TIEventDescriptorRegistry *)self config];

  if (!config)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 URLForResource:@"EventDescriptors" withExtension:@"plist"];
    v6 = IXADefaultLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Loading event descriptor configuration.", "-[TIEventDescriptorRegistry _loadEventDescriptors]"];
      *buf = 138412290;
      v25 = v7;
      _os_log_impl(&dword_22CA55000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5];
    [(TIEventDescriptorRegistry *)self setConfig:v8];

    config2 = [(TIEventDescriptorRegistry *)self config];

    if (!config2)
    {
      v10 = IXADefaultLogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Unable to load the event descriptor configuration from %@.plist.", "-[TIEventDescriptorRegistry _loadEventDescriptors]", @"EventDescriptors"];
        *buf = 138412290;
        v25 = v22;
        _os_log_error_impl(&dword_22CA55000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  config3 = [(TIEventDescriptorRegistry *)self config];

  if (config3)
  {
    v12 = IXADefaultLogFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Loading event descriptors.", "-[TIEventDescriptorRegistry _loadEventDescriptors]"];
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&dword_22CA55000, v12, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v14 = objc_opt_new();
    v15 = objc_opt_new();
    eventDescriptors = self->_eventDescriptors;
    eventSpecs = self->_eventSpecs;
    config4 = [(TIEventDescriptorRegistry *)self config];
    [v14 parseEventDescriptors:eventDescriptors andEventSpecs:eventSpecs fromConfig:config4 errors:v15];

    if ([v15 count])
    {
      v19 = IXADefaultLogFacility();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s The following errors occurred while parsing the event descriptor configuration.", "-[TIEventDescriptorRegistry _loadEventDescriptors]"];
        *buf = 138412290;
        v25 = v21;
        _os_log_error_impl(&dword_22CA55000, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __50__TIEventDescriptorRegistry__loadEventDescriptors__block_invoke;
      v23[3] = &unk_2787319C8;
      v23[4] = self;
      [v15 enumerateObjectsUsingBlock:v23];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __50__TIEventDescriptorRegistry__loadEventDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = IXADefaultLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [*(a1 + 32) contextFromError:v3];
    v8 = [v3 userInfo];
    v9 = [v8 objectForKey:@"message"];
    v10 = [v6 stringWithFormat:@"%s   %@%@", "-[TIEventDescriptorRegistry _loadEventDescriptors]_block_invoke", v7, v9];
    *buf = 138412290;
    v12 = v10;
    _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadEventDescriptorsIfNecessary
{
  [(NSLock *)self->_lock lock];
  if (!self->_loaded)
  {
    [(TIEventDescriptorRegistry *)self _loadEventDescriptors];
    self->_loaded = 1;
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (NSDictionary)eventSpecs
{
  [(TIEventDescriptorRegistry *)self loadEventDescriptorsIfNecessary];
  eventSpecs = self->_eventSpecs;

  return eventSpecs;
}

- (NSDictionary)eventDescriptors
{
  [(TIEventDescriptorRegistry *)self loadEventDescriptorsIfNecessary];
  eventDescriptors = self->_eventDescriptors;

  return eventDescriptors;
}

- (id)eventSpecWithName:(id)name
{
  nameCopy = name;
  eventSpecs = [(TIEventDescriptorRegistry *)self eventSpecs];
  v6 = [eventSpecs objectForKey:nameCopy];

  return v6;
}

- (id)eventDescriptorWithName:(id)name
{
  nameCopy = name;
  eventDescriptors = [(TIEventDescriptorRegistry *)self eventDescriptors];
  v6 = [eventDescriptors objectForKey:nameCopy];

  return v6;
}

- (id)allEventDescriptors
{
  eventDescriptors = [(TIEventDescriptorRegistry *)self eventDescriptors];
  allValues = [eventDescriptors allValues];

  return allValues;
}

- (TIEventDescriptorRegistry)initWithDescriptors:(id)descriptors andSpecs:(id)specs
{
  descriptorsCopy = descriptors;
  specsCopy = specs;
  v8 = [(TIEventDescriptorRegistry *)self initWithConfig:MEMORY[0x277CBEC10]];
  v9 = v8;
  if (v8)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__TIEventDescriptorRegistry_initWithDescriptors_andSpecs___block_invoke;
    v14[3] = &unk_2787319A0;
    v10 = v8;
    v15 = v10;
    v16 = specsCopy;
    [descriptorsCopy enumerateObjectsUsingBlock:v14];
    v10->_loaded = 1;
    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v10->_lock;
    v10->_lock = v11;
  }

  return v9;
}

void __58__TIEventDescriptorRegistry_initWithDescriptors_andSpecs___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = a2;
  v7 = [v6 eventName];
  [v5 setObject:v6 forKey:v7];

  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 16);
  v11 = [v8 objectAtIndexedSubscript:a3];
  v10 = [v6 eventName];

  [v9 setObject:v11 forKey:v10];
}

- (TIEventDescriptorRegistry)initWithConfig:(id)config
{
  configCopy = config;
  v15.receiver = self;
  v15.super_class = TIEventDescriptorRegistry;
  v6 = [(TIEventDescriptorRegistry *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
    v8 = objc_opt_new();
    eventDescriptors = v7->_eventDescriptors;
    v7->_eventDescriptors = v8;

    v10 = objc_opt_new();
    eventSpecs = v7->_eventSpecs;
    v7->_eventSpecs = v10;

    v7->_loaded = 0;
    v12 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v7->_lock;
    v7->_lock = v12;
  }

  return v7;
}

+ (TIEventDescriptorRegistry)registryWithDescriptors:(id)descriptors andSpecs:(id)specs
{
  specsCopy = specs;
  descriptorsCopy = descriptors;
  v7 = [[TIEventDescriptorRegistry alloc] initWithDescriptors:descriptorsCopy andSpecs:specsCopy];

  return v7;
}

+ (TIEventDescriptorRegistry)registryWithConfig:(id)config
{
  configCopy = config;
  v4 = [[TIEventDescriptorRegistry alloc] initWithConfig:configCopy];

  return v4;
}

+ (id)registry
{
  v2 = [[TIEventDescriptorRegistry alloc] initWithConfig:0];

  return v2;
}

@end