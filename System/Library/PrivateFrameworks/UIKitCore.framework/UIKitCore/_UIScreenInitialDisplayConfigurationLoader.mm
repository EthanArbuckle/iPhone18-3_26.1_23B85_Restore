@interface _UIScreenInitialDisplayConfigurationLoader
+ (_UIScreenInitialDisplayConfigurationLoader)sharedLoader;
- (UISDisplayContext)initialDisplayContext;
- (void)_startPreloadInitialDisplayContext;
@end

@implementation _UIScreenInitialDisplayConfigurationLoader

+ (_UIScreenInitialDisplayConfigurationLoader)sharedLoader
{
  if (qword_1ED49AAF0 != -1)
  {
    dispatch_once(&qword_1ED49AAF0, &__block_literal_global_319);
  }

  v3 = qword_1ED49AAF8;

  return v3;
}

- (void)_startPreloadInitialDisplayContext
{
  v4 = +[_UIApplicationConfigurationLoader sharedLoader];
  [v4 startPreloadInitializationContext];
  if (!self->_hasRequestedPreload)
  {
    self->_hasRequestedPreload = 1;
    [v4 isFrontBoard];
    context = self->_context;
    self->_context = 0;
  }
}

- (UISDisplayContext)initialDisplayContext
{
  if (!self->_hasRequestedPreload)
  {
    [(_UIScreenInitialDisplayConfigurationLoader *)self _startPreloadInitialDisplayContext];
  }

  v3 = +[_UIApplicationConfigurationLoader sharedLoader];
  [v3 isFrontBoard];
  if (!self->_context)
  {
    if (+[UIApplication _expectsCADisplays])
    {
      displays = [MEMORY[0x1E6979328] displays];
      v5 = [displays count];

      if (v5)
      {
        applicationInitializationContext = [v3 applicationInitializationContext];
        if (!applicationInitializationContext)
        {
          v7 = *(__UILogGetCategoryCachedImpl("DisplayConfigurationFetch", &initialDisplayContext___s_category) + 8);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
          {
            *v15 = 0;
            _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Failed to load a display context, even though we are not a headless app.", v15, 2u);
          }
        }

        mainDisplayContext = [applicationInitializationContext mainDisplayContext];
        context = self->_context;
        self->_context = mainDisplayContext;

        if (!self->_context)
        {
          defaultContext = [MEMORY[0x1E69DEBE8] defaultContext];
          v11 = self->_context;
          self->_context = defaultContext;
        }
      }
    }
  }

  v12 = self->_context;
  v13 = v12;

  return v12;
}

@end