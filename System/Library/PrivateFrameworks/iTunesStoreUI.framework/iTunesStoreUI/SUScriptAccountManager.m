@interface SUScriptAccountManager
+ (id)beginAccountManagerSessionForObject:(id)a3;
+ (void)endAccountManagerSessionForObject:(id)a3;
- (NSArray)accounts;
- (SUScriptAccountManager)init;
- (id)accountForDSID:(id)a3;
- (void)_dispatchEvent:(id)a3 forName:(id)a4;
- (void)_ntsReloadAccounts;
- (void)dealloc;
@end

@implementation SUScriptAccountManager

- (SUScriptAccountManager)init
{
  v5.receiver = self;
  v5.super_class = SUScriptAccountManager;
  v2 = [(SUScriptAccountManager *)&v5 init];
  if (v2)
  {
    v2->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [MEMORY[0x1E69D4890] defaultStore];
    [v3 addObserver:v2 selector:sel__accountsChangedNotification_ name:*MEMORY[0x1E69D4A48] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69D4A48] object:0];

  self->_accounts = 0;
  self->_lock = 0;
  v4.receiver = self;
  v4.super_class = SUScriptAccountManager;
  [(SUScriptAccountManager *)&v4 dealloc];
}

+ (id)beginAccountManagerSessionForObject:(id)a3
{
  _os_nospin_lock_lock();
  v5 = __SessionObjects;
  if (!__SessionObjects)
  {
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    __SessionObjects = v5;
  }

  [v5 addObject:a3];
  v6 = __SharedInstance_1;
  if (!__SharedInstance_1)
  {
    v6 = objc_alloc_init(a1);
    __SharedInstance_1 = v6;
  }

  v7 = v6;
  _os_nospin_lock_unlock();
  return v7;
}

+ (void)endAccountManagerSessionForObject:(id)a3
{
  _os_nospin_lock_lock();
  if (__SessionObjects)
  {
    [__SessionObjects removeObject:a3];
    if (![__SessionObjects count])
    {

      __SharedInstance_1 = 0;
    }
  }

  _os_nospin_lock_unlock();
}

- (id)accountForDSID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [(SUScriptAccountManager *)self accounts];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "dsID")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (NSArray)accounts
{
  [(NSLock *)self->_lock lock];
  [(SUScriptAccountManager *)self _ntsReloadAccounts];
  v3 = [(NSMutableArray *)self->_accounts copy];
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (void)_dispatchEvent:(id)a3 forName:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  _os_nospin_lock_lock();
  if (__SessionObjects)
  {
    v7 = [__SessionObjects allObjects];
    _os_nospin_lock_unlock();
    if (v7)
    {
      v17[0] = a3;
      v17[1] = a4;
      v8 = self;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v7);
            }

            SUScriptObjectDispatchEventForName(*(*(&v13 + 1) + 8 * i), v17);
          }

          v10 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
        }

        while (v10);
      }
    }
  }

  else
  {

    _os_nospin_lock_unlock();
  }
}

- (void)_ntsReloadAccounts
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  accounts = self->_accounts;
  v6 = [(NSMutableArray *)accounts countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(accounts);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 dsID];
        if (v11)
        {
          [v4 setObject:v10 forKey:v11];
        }
      }

      v7 = [(NSMutableArray *)accounts countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v12 = [objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * j);
        v18 = [v17 uniqueIdentifier];
        if (!v18 || (v19 = [v4 objectForKey:v18]) == 0)
        {
          v19 = objc_alloc_init(SUScriptAccount);
        }

        [(SUScriptAccount *)v19 setAccount:v17];
        [(NSMutableArray *)v3 addObject:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  self->_accounts = v3;
}

@end