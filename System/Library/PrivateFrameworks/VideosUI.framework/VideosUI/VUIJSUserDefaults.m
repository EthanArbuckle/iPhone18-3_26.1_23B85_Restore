@interface VUIJSUserDefaults
- (VUIAppUserDefaultsStoring)userDefaultsStorage;
- (VUIJSUserDefaults)initWithAppContext:(id)a3 userDefaultsStorage:(id)a4;
- (id)getData:(id)a3;
- (void)removeData:(id)a3;
- (void)setData:(id)a3 :(id)a4;
@end

@implementation VUIJSUserDefaults

- (VUIJSUserDefaults)initWithAppContext:(id)a3 userDefaultsStorage:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = VUIJSUserDefaults;
  v7 = [(VUIJSObject *)&v10 initWithAppContext:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_userDefaultsStorage, v6);
  }

  return v8;
}

- (id)getData:(id)a3
{
  v4 = a3;
  v5 = [(VUIJSObject *)self appContext];
  v6 = MEMORY[0x1E696EB58];
  v7 = [v5 jsContext];
  v8 = [v6 valueWithNullInContext:v7];

  v9 = [(VUIJSUserDefaults *)self userDefaultsStorage];
  v10 = [v9 dataForKey:v4];

  if (v10)
  {
    v11 = MEMORY[0x1E696EB58];
    v12 = [v5 jsContext];
    v13 = [v11 valueWithObject:v10 inContext:v12];

    v8 = v13;
  }

  return v8;
}

- (void)setData:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VUIJSUserDefaults *)self userDefaultsStorage];
  if ([v7 isNull])
  {
    [v8 removeDataForKey:v6];
  }

  else
  {
    if ([v7 isString])
    {
      v9 = [v7 toString];
    }

    else
    {
      v9 = 0;
    }

    if ([v7 isBoolean] && !v9)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "toBool")}];
    }

    if ([v7 isNumber] && !v9)
    {
      v9 = [v7 toNumber];
    }

    if ([v7 isArray] && !v9)
    {
      v9 = [v7 toArray];
    }

    if (v9)
    {
      [v8 setData:v9 forKey:v6];
    }

    else
    {
      v10 = VUIDefaultLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [VUIJSUserDefaults setData:v6];
      }
    }
  }
}

- (void)removeData:(id)a3
{
  v4 = a3;
  v5 = [(VUIJSUserDefaults *)self userDefaultsStorage];
  [v5 removeDataForKey:v4];
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