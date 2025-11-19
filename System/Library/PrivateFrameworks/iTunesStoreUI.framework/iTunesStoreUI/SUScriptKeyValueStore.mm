@interface SUScriptKeyValueStore
+ (id)_checkOutStoreWithDomain:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)_popStoreWithDomain:(id)a3;
+ (void)initialize;
- (SUScriptKeyValueStore)initWithDomain:(id)a3;
- (id)valueForKey:(id)a3;
- (void)dealloc;
- (void)getValueForKey:(id)a3 usingFunction:(id)a4;
- (void)removeValueForKey:(id)a3;
- (void)setValueForKey:(id)a3 value:(id)a4;
@end

@implementation SUScriptKeyValueStore

- (SUScriptKeyValueStore)initWithDomain:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUScriptKeyValueStore;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_domain = [a3 copy];
    v4->_keyValueStore = [objc_opt_class() _checkOutStoreWithDomain:a3];
  }

  return v4;
}

- (void)dealloc
{
  [objc_opt_class() _popStoreWithDomain:self->_domain];

  v3.receiver = self;
  v3.super_class = SUScriptKeyValueStore;
  [(SUScriptObject *)&v3 dealloc];
}

- (void)getValueForKey:(id)a3 usingFunction:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = [[SUScriptFunction alloc] initWithScriptObject:a4];
    [(SUScriptFunction *)v7 setThisObject:self];
    keyValueStore = self->_keyValueStore;
    domain = self->_domain;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__SUScriptKeyValueStore_getValueForKey_usingFunction___block_invoke;
    v11[3] = &unk_1E81671B0;
    v11[4] = self;
    v11[5] = v7;
    [(SSKeyValueStore *)keyValueStore getValueForDomain:domain key:a3 usingBlock:v11];
  }

  else
  {
    v10 = MEMORY[0x1E69E2F88];

    [v10 throwException:@"Invalid argument"];
  }
}

void __54__SUScriptKeyValueStore_getValueForKey_usingFunction___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    a2 = [MEMORY[0x1E69E2FB0] undefined];
  }

  v4 = *(a1 + 32);
  [*(a1 + 40) callWithArguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", a2, 0)}];
  [*(a1 + 40) setThisObject:0];
  v5 = *(a1 + 40);
}

- (void)removeValueForKey:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyValueStore = self->_keyValueStore;
    domain = self->_domain;

    [(SSKeyValueStore *)keyValueStore setValue:0 forDomain:domain key:a3 completionBlock:0];
  }

  else
  {
    v7 = MEMORY[0x1E69E2F88];

    [v7 throwException:@"Invalid argument"];
  }
}

- (void)setValueForKey:(id)a3 value:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (!a4 || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    keyValueStore = self->_keyValueStore;
    domain = self->_domain;

    [(SSKeyValueStore *)keyValueStore setValue:a4 forDomain:domain key:a3 completionBlock:0];
  }

  else
  {
    v9 = MEMORY[0x1E69E2F88];

    [v9 throwException:@"Invalid argument"];
  }
}

- (id)valueForKey:(id)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__51;
  v15 = __Block_byref_object_dispose__51;
  v16 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = dispatch_semaphore_create(0);
    keyValueStore = self->_keyValueStore;
    domain = self->_domain;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__SUScriptKeyValueStore_valueForKey___block_invoke;
    v10[3] = &unk_1E8167160;
    v10[4] = v5;
    v10[5] = &v11;
    [(SSKeyValueStore *)keyValueStore getValueForDomain:domain key:a3 usingBlock:v10];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v5);
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

intptr_t __37__SUScriptKeyValueStore_valueForKey___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    a2 = [MEMORY[0x1E69E2FB0] undefined];
  }

  *(*(*(a1 + 40) + 8) + 40) = a2;
  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

+ (id)_checkOutStoreWithDomain:(id)a3
{
  _os_nospin_lock_lock();
  v4 = sAccountStoreCounts;
  if (!sAccountStoreCounts)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB50]);
    sAccountStoreCounts = v4;
  }

  [v4 addObject:a3];
  v5 = sActiveStores;
  if (!sActiveStores)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sActiveStores = v5;
  }

  v6 = [v5 objectForKey:a3];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69D4930]);
    [sActiveStores setObject:v6 forKey:a3];
  }

  _os_nospin_lock_unlock();

  return v6;
}

+ (void)_popStoreWithDomain:(id)a3
{
  _os_nospin_lock_lock();
  v4 = [sAccountStoreCounts countForObject:a3];
  [sAccountStoreCounts removeObject:a3];
  if (v4 == 1)
  {
    [sActiveStores removeObjectForKey:a3];
  }

  _os_nospin_lock_unlock();
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_55, 5);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptKeyValueStore;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_55 = sel_getValueForKey_usingFunction_;
    *algn_1EBF3B888 = @"getValue";
    qword_1EBF3B890 = sel_removeAllValues;
    unk_1EBF3B898 = @"removeAllValues";
    qword_1EBF3B8A0 = sel_removeValueForKey_;
    unk_1EBF3B8A8 = @"removeValue";
    qword_1EBF3B8B0 = sel_setValueForKey_value_;
    unk_1EBF3B8B8 = @"setValue";
    qword_1EBF3B8C0 = sel_valueForKey_;
    unk_1EBF3B8C8 = @"valueForKey";
  }
}

@end