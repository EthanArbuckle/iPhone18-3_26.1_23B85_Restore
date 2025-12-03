@interface REMUserDefaults
+ (REMDaemonUserDefaults)daemonUserDefaults;
- (REMUserDefaults)initWithSuiteName:(id)name containerURL:(id)l;
- (id)_addObserverForKey:(id)key block:(id)block;
- (id)_startObservingValuesForKey:(id)key block:(id)block;
- (id)_startStreamingValuesForKey:(id)key block:(id)block;
- (void)_removeObserver:(id)observer;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
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

- (REMUserDefaults)initWithSuiteName:(id)name containerURL:(id)l
{
  v35 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  lCopy = l;
  v30.receiver = self;
  v30.super_class = REMUserDefaults;
  v8 = [(REMUserDefaults *)&v30 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    suiteName = v8->_suiteName;
    v8->_suiteName = v9;

    if (lCopy)
    {
      v11 = [objc_alloc(MEMORY[0x1E695E000]) _initWithSuiteName:v8->_suiteName container:lCopy];
      userDefaults = v8->_userDefaults;
      v8->_userDefaults = v11;

      v13 = +[REMLog utility];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = v8->_suiteName;
        *buf = 138412546;
        v32 = v14;
        v33 = 2112;
        v34 = lCopy;
        v15 = "REMUserDefaults created {suiteName: %@, container: %@}";
        v16 = v13;
        v17 = 22;
LABEL_10:
        _os_log_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_INFO, v15, buf, v17);
      }
    }

    else
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v20 = [bundleIdentifier isEqualToString:v8->_suiteName];

      if (v20)
      {
        standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
        v22 = v8->_userDefaults;
        v8->_userDefaults = standardUserDefaults;

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

- (id)_startObservingValuesForKey:(id)key block:(id)block
{
  keyCopy = key;
  v7 = [(REMUserDefaults *)self _addObserverForKey:keyCopy block:block];
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults addObserver:self forKeyPath:keyCopy options:0 context:0];

  return v7;
}

- (id)_startStreamingValuesForKey:(id)key block:(id)block
{
  keyCopy = key;
  v7 = [(REMUserDefaults *)self _addObserverForKey:keyCopy block:block];
  userDefaults = [(REMUserDefaults *)self userDefaults];
  [userDefaults addObserver:self forKeyPath:keyCopy options:4 context:0];

  return v7;
}

- (id)_addObserverForKey:(id)key block:(id)block
{
  keyCopy = key;
  blockCopy = block;
  observers = [(REMUserDefaults *)self observers];
  v9 = [observers objectForKeyedSubscript:keyCopy];

  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:8];
    observers2 = [(REMUserDefaults *)self observers];
    [observers2 setObject:v9 forKeyedSubscript:keyCopy];
  }

  v11 = [[REMUserDefaultsObserver alloc] initWithUserDefaults:self key:keyCopy block:blockCopy];

  [v9 addObject:v11];

  return v11;
}

- (void)_removeObserver:(id)observer
{
  observerCopy = observer;
  userDefaultsKey = [observerCopy userDefaultsKey];
  observers = [(REMUserDefaults *)self observers];
  v6 = [observers objectForKeyedSubscript:userDefaultsKey];

  if (v6)
  {
    [v6 removeObject:observerCopy];
    if (![v6 count])
    {
      observers2 = [(REMUserDefaults *)self observers];
      [observers2 removeObjectForKey:userDefaultsKey];

      userDefaults = [(REMUserDefaults *)self userDefaults];
      [userDefaults removeObserver:self forKeyPath:userDefaultsKey];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v26 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  v10 = +[REMLog utility];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [REMUserDefaults observeValueForKeyPath:pathCopy ofObject:v10 change:? context:?];
  }

  userDefaults = [(REMUserDefaults *)self userDefaults];

  if (userDefaults == objectCopy)
  {
    observers = [(REMUserDefaults *)self observers];
    v13 = [observers objectForKeyedSubscript:pathCopy];

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

            block = [*(*(&v21 + 1) + 8 * v18) block];
            block[2]();

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