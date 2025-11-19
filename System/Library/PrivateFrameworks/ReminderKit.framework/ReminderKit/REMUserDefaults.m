@interface REMUserDefaults
+ (REMDaemonUserDefaults)daemonUserDefaults;
- (REMUserDefaults)initWithSuiteName:(id)a3 containerURL:(id)a4;
- (id)_addObserverForKey:(id)a3 block:(id)a4;
- (id)_startObservingValuesForKey:(id)a3 block:(id)a4;
- (id)_startStreamingValuesForKey:(id)a3 block:(id)a4;
- (void)_removeObserver:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation REMUserDefaults

+ (REMDaemonUserDefaults)daemonUserDefaults
{
  if (daemonUserDefaults_onceToken != -1)
  {
    +[REMUserDefaults daemonUserDefaults];
  }

  v3 = daemonUserDefaults_defaults;

  return v3;
}

uint64_t __37__REMUserDefaults_daemonUserDefaults__block_invoke()
{
  daemonUserDefaults_defaults = [[REMDaemonUserDefaults alloc] initWithSuiteName:@"com.apple.remindd" containerURL:0];

  return MEMORY[0x1EEE66BB8]();
}

- (REMUserDefaults)initWithSuiteName:(id)a3 containerURL:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = REMUserDefaults;
  v8 = [(REMUserDefaults *)&v30 init];
  if (v8)
  {
    v9 = [v6 copy];
    suiteName = v8->_suiteName;
    v8->_suiteName = v9;

    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x1E695E000]) _initWithSuiteName:v8->_suiteName container:v7];
      userDefaults = v8->_userDefaults;
      v8->_userDefaults = v11;

      v13 = +[REMLog utility];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = v8->_suiteName;
        *buf = 138412546;
        v32 = v14;
        v33 = 2112;
        v34 = v7;
        v15 = "REMUserDefaults created {suiteName: %@, container: %@}";
        v16 = v13;
        v17 = 22;
LABEL_10:
        _os_log_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_INFO, v15, buf, v17);
      }
    }

    else
    {
      v18 = [MEMORY[0x1E696AAE8] mainBundle];
      v19 = [v18 bundleIdentifier];
      v20 = [v19 isEqualToString:v8->_suiteName];

      if (v20)
      {
        v21 = [MEMORY[0x1E695E000] standardUserDefaults];
        v22 = v8->_userDefaults;
        v8->_userDefaults = v21;

        v13 = +[REMLog utility];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v15 = "REMUserDefaults created {standardUserDefaults: true}";
          v16 = v13;
          v17 = 2;
          goto LABEL_10;
        }
      }

      else
      {
        v23 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v8->_suiteName];
        v24 = v8->_userDefaults;
        v8->_userDefaults = v23;

        v13 = +[REMLog utility];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v25 = v8->_suiteName;
          *buf = 138412290;
          v32 = v25;
          v15 = "REMUserDefaults created {suiteName: %@}";
          v16 = v13;
          v17 = 12;
          goto LABEL_10;
        }
      }
    }

    v26 = objc_opt_new();
    observers = v8->_observers;
    v8->_observers = v26;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)_startObservingValuesForKey:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = [(REMUserDefaults *)self _addObserverForKey:v6 block:a4];
  v8 = [(REMUserDefaults *)self userDefaults];
  [v8 addObserver:self forKeyPath:v6 options:0 context:0];

  return v7;
}

- (id)_startStreamingValuesForKey:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = [(REMUserDefaults *)self _addObserverForKey:v6 block:a4];
  v8 = [(REMUserDefaults *)self userDefaults];
  [v8 addObserver:self forKeyPath:v6 options:4 context:0];

  return v7;
}

- (id)_addObserverForKey:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(REMUserDefaults *)self observers];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:8];
    v10 = [(REMUserDefaults *)self observers];
    [v10 setObject:v9 forKeyedSubscript:v6];
  }

  v11 = [[REMUserDefaultsObserver alloc] initWithUserDefaults:self key:v6 block:v7];

  [v9 addObject:v11];

  return v11;
}

- (void)_removeObserver:(id)a3
{
  v9 = a3;
  v4 = [v9 userDefaultsKey];
  v5 = [(REMUserDefaults *)self observers];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    [v6 removeObject:v9];
    if (![v6 count])
    {
      v7 = [(REMUserDefaults *)self observers];
      [v7 removeObjectForKey:v4];

      v8 = [(REMUserDefaults *)self userDefaults];
      [v8 removeObserver:self forKeyPath:v4];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[REMLog utility];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [REMUserDefaults observeValueForKeyPath:v8 ofObject:v10 change:? context:?];
  }

  v11 = [(REMUserDefaults *)self userDefaults];

  if (v11 == v9)
  {
    v12 = [(REMUserDefaults *)self observers];
    v13 = [v12 objectForKeyedSubscript:v8];

    if ([v13 count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
        do
        {
          v18 = 0;
          do
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v21 + 1) + 8 * v18) block];
            v19[2]();

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v16);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(uint64_t)a1 ofObject:(NSObject *)a2 change:context:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_DEBUG, "REMUserDefaults KVO change observed {userDefaultsKey: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end