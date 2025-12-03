@interface _UIHybridStateStore
+ (_UIHybridStateStore)stateStoreForSceneSession:(uint64_t)session;
- (id)description;
- (id)objectForKey:(uint64_t)key;
- (void)setObject:(uint64_t)object forKey:;
@end

@implementation _UIHybridStateStore

+ (_UIHybridStateStore)stateStoreForSceneSession:(uint64_t)session
{
  objc_opt_self();
  v3 = _stores;
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:0 capacity:1];
    v4 = _stores;
    _stores = v3;
  }

  v5 = [v3 objectForKey:a2];
  if (!v5)
  {
    v5 = [_UIHybridStateStore alloc];
    if (v5)
    {
      if (!a2)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel_initWithSceneSession_ object:v5 file:@"_UIHybridStateStore.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"sceneSession != nil"}];
      }

      v9.receiver = v5;
      v9.super_class = _UIHybridStateStore;
      v6 = objc_msgSendSuper2(&v9, sel_init);
      v5 = v6;
      if (v6)
      {
        v6->_sceneSession = a2;
      }
    }

    [v3 setObject:v5 forKey:a2];
  }

  return v5;
}

- (id)objectForKey:(uint64_t)key
{
  if (key)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_objectForKey_ object:key file:@"_UIHybridStateStore.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
    }

    _internalUserInfo = [(UISceneSession *)*(key + 8) _internalUserInfo];
    v5 = [_internalUserInfo objectForKey:a2];

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v6 = [standardUserDefaults objectForKey:a2];

      if (v6)
      {
        v8 = v6;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setObject:(uint64_t)object forKey:
{
  if (self)
  {
    if (!object)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_setObject_forKey_ object:self file:@"_UIHybridStateStore.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
    }

    v6 = *(self + 8);
    v7 = MEMORY[0x1E695DF90];
    v8 = v6;
    v9 = [v7 alloc];
    _internalUserInfo = [(UISceneSession *)v8 _internalUserInfo];
    v13 = [v9 initWithDictionary:_internalUserInfo];

    [v13 setObject:a2 forKey:object];
    [(UISceneSession *)v8 _setInternalUserInfo:v13];

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setObject:a2 forKey:object];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self)
  {
    sceneSession = self->_sceneSession;
  }

  else
  {
    sceneSession = 0;
  }

  sceneSession = [v3 stringWithFormat:@"<%@: %p sceneSession = %@>", v5, self, sceneSession];;

  return sceneSession;
}

@end