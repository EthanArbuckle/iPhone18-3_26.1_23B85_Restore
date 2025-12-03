@interface _UICache
- (_UICache)init;
- (id)cacheKeys;
- (id)objectForKey:(id)key;
- (id)retainedObjectForKey:(id)key;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setClearsCacheOnApplicationBackground:(BOOL)background;
- (void)setClearsCacheOnLowMemoryWarnings:(BOOL)warnings;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation _UICache

- (_UICache)init
{
  v8.receiver = self;
  v8.super_class = _UICache;
  v2 = [(_UICache *)&v8 init];
  if (v2)
  {
    v2->_cacheQueue = dispatch_queue_create("Internal _UICache queue", 0);
    v2->_cache = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v3 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, 0);
    v2->_memoryWarningsSource = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v4 = *&v2->_cacheQueue;
    v6[1] = 3221225472;
    v6[2] = __16___UICache_init__block_invoke;
    v6[3] = &unk_1E726E570;
    v7 = v4;
    dispatch_source_set_event_handler(v3, v6);
    [(_UICache *)v2 setClearsCacheOnLowMemoryWarnings:1];
    [(_UICache *)v2 setClearsCacheOnApplicationBackground:1];
  }

  return v2;
}

- (void)dealloc
{
  cacheQueue = self->_cacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19___UICache_dealloc__block_invoke;
  block[3] = &unk_1E72657B8;
  block[4] = self;
  dispatch_sync(cacheQueue, block);
  if (!self->_clearsCacheOnLowMemoryWarnings)
  {
    dispatch_resume(self->_memoryWarningsSource);
  }

  dispatch_source_cancel(self->_memoryWarningsSource);
  dispatch_release(self->_memoryWarningsSource);
  if (self->_clearsCacheOnApplicationBackground)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  dispatch_release(self->_cacheQueue);
  v4.receiver = self;
  v4.super_class = _UICache;
  [(_UICache *)&v4 dealloc];
}

- (void)setObject:(id)object forKey:(id)key
{
  cacheQueue = self->_cacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29___UICache_setObject_forKey___block_invoke;
  block[3] = &unk_1E726E598;
  block[4] = self;
  block[5] = object;
  block[6] = key;
  dispatch_sync(cacheQueue, block);
}

- (id)retainedObjectForKey:(id)key
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__18;
  v11 = __Block_byref_object_dispose__18;
  v12 = 0;
  cacheQueue = self->_cacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33___UICache_retainedObjectForKey___block_invoke;
  block[3] = &unk_1E726E5C0;
  block[5] = key;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(cacheQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)objectForKey:(id)key
{
  v3 = [(_UICache *)self retainedObjectForKey:key];

  return v3;
}

- (void)removeObjectForKey:(id)key
{
  cacheQueue = self->_cacheQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31___UICache_removeObjectForKey___block_invoke;
  v4[3] = &unk_1E726E570;
  v4[4] = self;
  v4[5] = key;
  dispatch_sync(cacheQueue, v4);
}

- (void)removeAllObjects
{
  cacheQueue = self->_cacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28___UICache_removeAllObjects__block_invoke;
  block[3] = &unk_1E72657B8;
  block[4] = self;
  dispatch_sync(cacheQueue, block);
}

- (void)setClearsCacheOnLowMemoryWarnings:(BOOL)warnings
{
  if (self->_clearsCacheOnLowMemoryWarnings != warnings)
  {
    memoryWarningsSource = self->_memoryWarningsSource;
    if (warnings)
    {
      dispatch_resume(memoryWarningsSource);
    }

    else
    {
      dispatch_suspend(memoryWarningsSource);
    }

    self->_clearsCacheOnLowMemoryWarnings = warnings;
  }
}

- (void)setClearsCacheOnApplicationBackground:(BOOL)background
{
  if (self->_clearsCacheOnApplicationBackground != background)
  {
    v13 = v3;
    v14 = v4;
    backgroundCopy = background;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = defaultCenter;
    if (backgroundCopy)
    {
      v10 = *&self->_cacheQueue;
      UIApplicationDidEnterBackgroundNotification_0 = getUIApplicationDidEnterBackgroundNotification_0();
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __50___UICache_setClearsCacheOnApplicationBackground___block_invoke;
      v11[3] = &unk_1E726E5E8;
      v12 = v10;
      self->_noteObserver = [v8 addObserverForName:UIApplicationDidEnterBackgroundNotification_0 object:0 queue:0 usingBlock:v11];
    }

    else
    {
      [defaultCenter removeObserver:self->_noteObserver];
      self->_noteObserver = 0;
    }

    self->_clearsCacheOnApplicationBackground = backgroundCopy;
  }
}

- (id)cacheKeys
{
  array = [MEMORY[0x1E695DF70] array];
  cacheQueue = self->_cacheQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __21___UICache_cacheKeys__block_invoke;
  v6[3] = &unk_1E726E570;
  v6[4] = array;
  v6[5] = self;
  dispatch_sync(cacheQueue, v6);
  return array;
}

@end