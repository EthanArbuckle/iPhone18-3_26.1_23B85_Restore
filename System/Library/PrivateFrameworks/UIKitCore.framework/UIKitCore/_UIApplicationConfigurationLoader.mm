@interface _UIApplicationConfigurationLoader
+ (_UIApplicationConfigurationLoader)sharedLoader;
- (BOOL)isFrontBoard;
- (BOOL)usesLocalInitializationContext;
- (UISApplicationInitializationContext)applicationInitializationContext;
- (id)_appInitializationContextFactoryClass;
- (id)_init;
- (id)_loadInitializationContext;
- (void)dealloc;
- (void)startPreloadInitializationContext;
@end

@implementation _UIApplicationConfigurationLoader

- (id)_loadInitializationContext
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63___UIApplicationConfigurationLoader__loadInitializationContext__block_invoke;
  v4[3] = &unk_1E70F32F0;
  v4[4] = self;
  v4[5] = a2;
  if (_loadInitializationContext_load_once != -1)
  {
    dispatch_once(&_loadInitializationContext_load_once, v4);
  }

  return self->_applicationInitializationContext;
}

- (UISApplicationInitializationContext)applicationInitializationContext
{
  _loadInitializationContext = [(_UIApplicationConfigurationLoader *)self _loadInitializationContext];
  if (!_loadInitializationContext)
  {
    if (qword_1ED49EC70 != -1)
    {
      dispatch_once(&qword_1ED49EC70, &__block_literal_global_46_0);
    }

    if ((_MergedGlobals_1153 & 1) == 0)
    {
      v3 = *(__UILogGetCategoryCachedImpl("ApplicationEnviromentLoading", &qword_1ED49EC68) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Failed to initialize application enviroment context", v5, 2u);
      }
    }
  }

  return _loadInitializationContext;
}

+ (_UIApplicationConfigurationLoader)sharedLoader
{
  if (qword_1ED49EC50 != -1)
  {
    dispatch_once(&qword_1ED49EC50, &__block_literal_global_322);
  }

  v3 = qword_1ED49EC48;

  return v3;
}

- (void)startPreloadInitializationContext
{
  if ([(_UIApplicationConfigurationLoader *)self usesLocalInitializationContext])
  {
    _loadInitializationContext = [(_UIApplicationConfigurationLoader *)self _loadInitializationContext];
  }

  else if (!self->_hasRequestedPreload)
  {
    v4 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70___UIApplicationConfigurationLoader_startPreloadInitializationContext__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_async(v4, block);

    self->_hasRequestedPreload = 1;
  }
}

- (BOOL)usesLocalInitializationContext
{
  if (qword_1ED49EC70 != -1)
  {
    dispatch_once(&qword_1ED49EC70, &__block_literal_global_46_0);
  }

  if (_MergedGlobals_1153)
  {
    return 1;
  }

  _appInitializationContextFactoryClass = [(_UIApplicationConfigurationLoader *)self _appInitializationContextFactoryClass];
  v3 = _appInitializationContextFactoryClass != 0;

  return v3;
}

- (id)_appInitializationContextFactoryClass
{
  if (qword_1ED49EC60 != -1)
  {
    dispatch_once(&qword_1ED49EC60, &__block_literal_global_9_3);
  }

  v3 = qword_1ED49EC58;

  return v3;
}

- (BOOL)isFrontBoard
{
  if (qword_1ED49EC70 != -1)
  {
    dispatch_once(&qword_1ED49EC70, &__block_literal_global_46_0);
  }

  return _MergedGlobals_1153;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _UIApplicationConfigurationLoader;
  return [(_UIApplicationConfigurationLoader *)&v3 init];
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIApplicationConfigurationLoader.m" lineNumber:75 description:@"This is a singleton that should never be deallocated"];

  v5.receiver = self;
  v5.super_class = _UIApplicationConfigurationLoader;
  [(_UIApplicationConfigurationLoader *)&v5 dealloc];
}

@end