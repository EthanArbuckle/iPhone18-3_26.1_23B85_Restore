@interface _REEngineDefaults
+ (id)globalDefaults;
- (BOOL)_BOOLValueForKey:(id)key set:(BOOL *)set;
- (_REEngineDefaults)initWithDomain:(id)domain;
- (id)_idValueForKey:(id)key set:(BOOL *)set;
- (int64_t)_NSIntegerValueForKey:(id)key set:(BOOL *)set;
- (void)_registerCallback:(id)callback forKey:(id)key;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _REEngineDefaults

+ (id)globalDefaults
{
  if (globalDefaults_onceToken != -1)
  {
    +[_REEngineDefaults globalDefaults];
  }

  v3 = globalDefaults_GlobalDefaults;

  return v3;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_registeredPaths;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(NSUserDefaults *)self->_defaults removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v6++) context:REPreferenceContext];
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8.receiver = self;
  v8.super_class = _REEngineDefaults;
  [(_REEngineDefaults *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_BOOLValueForKey:(id)key set:(BOOL *)set
{
  v5 = [(NSUserDefaults *)self->_defaults objectForKey:key];
  v6 = v5;
  if (set)
  {
    *set = v5 != 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (int64_t)_NSIntegerValueForKey:(id)key set:(BOOL *)set
{
  v5 = [(NSUserDefaults *)self->_defaults objectForKey:key];
  v6 = v5;
  if (set)
  {
    *set = v5 != 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)_idValueForKey:(id)key set:(BOOL *)set
{
  result = [(NSUserDefaults *)self->_defaults objectForKey:key];
  if (set)
  {
    *set = result != 0;
  }

  return result;
}

- (void)_registerCallback:(id)callback forKey:(id)key
{
  callbackCopy = callback;
  keyCopy = key;
  registrationQueue = self->_registrationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46___REEngineDefaults__registerCallback_forKey___block_invoke;
  block[3] = &unk_2785F99C8;
  block[4] = self;
  v12 = keyCopy;
  v13 = callbackCopy;
  v9 = callbackCopy;
  v10 = keyCopy;
  dispatch_async(registrationQueue, block);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v11 = pathCopy;
  if (REPreferenceContext == context)
  {
    registrationQueue = self->_registrationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68___REEngineDefaults_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_2785F9AE0;
    block[4] = self;
    v15 = pathCopy;
    dispatch_async(registrationQueue, block);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _REEngineDefaults;
    [(_REEngineDefaults *)&v13 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
  }
}

- (_REEngineDefaults)initWithDomain:(id)domain
{
  domainCopy = domain;
  v19.receiver = self;
  v19.super_class = _REEngineDefaults;
  v5 = [(_REEngineDefaults *)&v19 init];
  if (v5)
  {
    v6 = [domainCopy copy];
    domain = v5->_domain;
    v5->_domain = v6;

    v8 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:domainCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEBD0]);
    }

    defaults = v5->_defaults;
    v5->_defaults = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    registeredPaths = v5->_registeredPaths;
    v5->_registeredPaths = v12;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    registeredBlocks = v5->_registeredBlocks;
    v5->_registeredBlocks = dictionary;

    v16 = RECreateSharedQueue(@"Domain");
    registrationQueue = v5->_registrationQueue;
    v5->_registrationQueue = v16;
  }

  return v5;
}

@end