@interface VUIJSUserDefaults
- (VUIAppUserDefaultsStoring)userDefaultsStorage;
- (VUIJSUserDefaults)initWithAppContext:(id)context userDefaultsStorage:(id)storage;
- (id)getData:(id)data;
- (void)removeData:(id)data;
- (void)setData:(id)data :(id)a4;
@end

@implementation VUIJSUserDefaults

- (VUIJSUserDefaults)initWithAppContext:(id)context userDefaultsStorage:(id)storage
{
  storageCopy = storage;
  v10.receiver = self;
  v10.super_class = VUIJSUserDefaults;
  v7 = [(VUIJSObject *)&v10 initWithAppContext:context];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_userDefaultsStorage, storageCopy);
  }

  return v8;
}

- (id)getData:(id)data
{
  dataCopy = data;
  appContext = [(VUIJSObject *)self appContext];
  v6 = MEMORY[0x1E696EB58];
  jsContext = [appContext jsContext];
  v8 = [v6 valueWithNullInContext:jsContext];

  userDefaultsStorage = [(VUIJSUserDefaults *)self userDefaultsStorage];
  v10 = [userDefaultsStorage dataForKey:dataCopy];

  if (v10)
  {
    v11 = MEMORY[0x1E696EB58];
    jsContext2 = [appContext jsContext];
    v13 = [v11 valueWithObject:v10 inContext:jsContext2];

    v8 = v13;
  }

  return v8;
}

- (void)setData:(id)data :(id)a4
{
  dataCopy = data;
  v7 = a4;
  userDefaultsStorage = [(VUIJSUserDefaults *)self userDefaultsStorage];
  if ([v7 isNull])
  {
    [userDefaultsStorage removeDataForKey:dataCopy];
  }

  else
  {
    if ([v7 isString])
    {
      toString = [v7 toString];
    }

    else
    {
      toString = 0;
    }

    if ([v7 isBoolean] && !toString)
    {
      toString = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "toBool")}];
    }

    if ([v7 isNumber] && !toString)
    {
      toString = [v7 toNumber];
    }

    if ([v7 isArray] && !toString)
    {
      toString = [v7 toArray];
    }

    if (toString)
    {
      [userDefaultsStorage setData:toString forKey:dataCopy];
    }

    else
    {
      v10 = VUIDefaultLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [VUIJSUserDefaults setData:dataCopy];
      }
    }
  }
}

- (void)removeData:(id)data
{
  dataCopy = data;
  userDefaultsStorage = [(VUIJSUserDefaults *)self userDefaultsStorage];
  [userDefaultsStorage removeDataForKey:dataCopy];
}

- (VUIAppUserDefaultsStoring)userDefaultsStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_userDefaultsStorage);

  return WeakRetained;
}

- (void)setData:(uint64_t)a1 :(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIJSUserDefaults - Failed to set unrecognized value for key '%@'", &v2, 0xCu);
}

@end