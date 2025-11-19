@interface _UIDeviceInitialDeviceConfigurationLoader
+ (_UIDeviceInitialDeviceConfigurationLoader)sharedLoader;
- (UISDeviceContext)initialDeviceContext;
- (void)_startPreloadInitialDeviceContext;
@end

@implementation _UIDeviceInitialDeviceConfigurationLoader

+ (_UIDeviceInitialDeviceConfigurationLoader)sharedLoader
{
  if (_MergedGlobals_1155 != -1)
  {
    dispatch_once(&_MergedGlobals_1155, &__block_literal_global_324);
  }

  v3 = qword_1ED49EC90;

  return v3;
}

- (void)_startPreloadInitialDeviceContext
{
  v7 = +[_UIApplicationConfigurationLoader sharedLoader];
  [v7 startPreloadInitializationContext];
  if (!self->_hasRequestedPreload)
  {
    self->_hasRequestedPreload = 1;
    if ([v7 usesLocalInitializationContext])
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [MEMORY[0x1E69DEBE0] __bootstrappingDeviceContext];
        if (v3)
        {
          objc_storeStrong(&self->_context, v3);
        }
      }

      if (!self->_context)
      {
        v4 = [v7 applicationInitializationContext];
        v5 = [v4 deviceContext];
        context = self->_context;
        self->_context = v5;
      }
    }
  }
}

- (UISDeviceContext)initialDeviceContext
{
  if (!self->_hasRequestedPreload)
  {
    [(_UIDeviceInitialDeviceConfigurationLoader *)self _startPreloadInitialDeviceContext];
  }

  v3 = +[_UIApplicationConfigurationLoader sharedLoader];
  v4 = v3;
  if (!self->_context && ([v3 isFrontBoard] & 1) == 0)
  {
    v5 = [v4 applicationInitializationContext];
    if (!v5)
    {
      v6 = *(__UILogGetCategoryCachedImpl("DeviceConfigurationFetch", &initialDeviceContext___s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Failed to load a device context.", v12, 2u);
      }
    }

    v7 = [v5 deviceContext];
    context = self->_context;
    self->_context = v7;
  }

  v9 = self->_context;
  v10 = v9;

  return v9;
}

@end