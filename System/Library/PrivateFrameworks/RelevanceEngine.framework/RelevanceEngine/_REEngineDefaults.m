@interface _REEngineDefaults
+ (id)globalDefaults;
- (BOOL)_BOOLValueForKey:(id)a3 set:(BOOL *)a4;
- (_REEngineDefaults)initWithDomain:(id)a3;
- (id)_idValueForKey:(id)a3 set:(BOOL *)a4;
- (int64_t)_NSIntegerValueForKey:(id)a3 set:(BOOL *)a4;
- (void)_registerCallback:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
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

- (BOOL)_BOOLValueForKey:(id)a3 set:(BOOL *)a4
{
  v5 = [(NSUserDefaults *)self->_defaults objectForKey:a3];
  v6 = v5;
  if (a4)
  {
    *a4 = v5 != 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_NSIntegerValueForKey:(id)a3 set:(BOOL *)a4
{
  v5 = [(NSUserDefaults *)self->_defaults objectForKey:a3];
  v6 = v5;
  if (a4)
  {
    *a4 = v5 != 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_idValueForKey:(id)a3 set:(BOOL *)a4
{
  result = [(NSUserDefaults *)self->_defaults objectForKey:a3];
  if (a4)
  {
    *a4 = result != 0;
  }

  return result;
}

- (void)_registerCallback:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  registrationQueue = self->_registrationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46___REEngineDefaults__registerCallback_forKey___block_invoke;
  block[3] = &unk_2785F99C8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(registrationQueue, block);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = v10;
  if (REPreferenceContext == a6)
  {
    registrationQueue = self->_registrationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68___REEngineDefaults_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_2785F9AE0;
    block[4] = self;
    v15 = v10;
    dispatch_async(registrationQueue, block);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _REEngineDefaults;
    [(_REEngineDefaults *)&v13 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
  }
}

- (_REEngineDefaults)initWithDomain:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _REEngineDefaults;
  v5 = [(_REEngineDefaults *)&v19 init];
  if (v5)
  {
    v6 = [v4 copy];
    domain = v5->_domain;
    v5->_domain = v6;

    v8 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v4];
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

    v14 = [MEMORY[0x277CBEB38] dictionary];
    registeredBlocks = v5->_registeredBlocks;
    v5->_registeredBlocks = v14;

    v16 = RECreateSharedQueue(@"Domain");
    registrationQueue = v5->_registrationQueue;
    v5->_registrationQueue = v16;
  }

  return v5;
}

@end