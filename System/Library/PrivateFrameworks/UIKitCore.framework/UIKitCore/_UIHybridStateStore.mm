@interface _UIHybridStateStore
+ (_UIHybridStateStore)stateStoreForSceneSession:(uint64_t)a1;
- (id)description;
- (id)objectForKey:(uint64_t)a1;
- (void)setObject:(uint64_t)a3 forKey:;
@end

@implementation _UIHybridStateStore

+ (_UIHybridStateStore)stateStoreForSceneSession:(uint64_t)a1
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
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        [v8 handleFailureInMethod:sel_initWithSceneSession_ object:v5 file:@"_UIHybridStateStore.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"sceneSession != nil"}];
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

- (id)objectForKey:(uint64_t)a1
{
  if (a1)
  {
    if (!a2)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:sel_objectForKey_ object:a1 file:@"_UIHybridStateStore.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
    }

    v4 = [(UISceneSession *)*(a1 + 8) _internalUserInfo];
    v5 = [v4 objectForKey:a2];

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E695E000] standardUserDefaults];
      v6 = [v7 objectForKey:a2];

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

- (void)setObject:(uint64_t)a3 forKey:
{
  if (a1)
  {
    if (!a3)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:sel_setObject_forKey_ object:a1 file:@"_UIHybridStateStore.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
    }

    v6 = *(a1 + 8);
    v7 = MEMORY[0x1E695DF90];
    v8 = v6;
    v9 = [v7 alloc];
    v10 = [(UISceneSession *)v8 _internalUserInfo];
    v13 = [v9 initWithDictionary:v10];

    [v13 setObject:a2 forKey:a3];
    [(UISceneSession *)v8 _setInternalUserInfo:v13];

    v11 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v11 setObject:a2 forKey:a3];
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

  v8 = [v3 stringWithFormat:@"<%@: %p sceneSession = %@>", v5, self, sceneSession];;

  return v8;
}

@end