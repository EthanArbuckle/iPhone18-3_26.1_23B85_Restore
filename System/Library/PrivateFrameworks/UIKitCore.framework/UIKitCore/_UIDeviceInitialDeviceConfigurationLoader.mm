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
        __bootstrappingDeviceContext = [MEMORY[0x1E69DEBE0] __bootstrappingDeviceContext];
        if (__bootstrappingDeviceContext)
        {
          objc_storeStrong(&self->_context, __bootstrappingDeviceContext);
        }
      }

      if (!self->_context)
      {
        applicationInitializationContext = [v7 applicationInitializationContext];
        deviceContext = [applicationInitializationContext deviceContext];
        context = self->_context;
        self->_context = deviceContext;
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
    applicationInitializationContext = [v4 applicationInitializationContext];
    if (!applicationInitializationContext)
    {
      v6 = *(__UILogGetCategoryCachedImpl("DeviceConfigurationFetch", &initialDeviceContext___s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Failed to load a device context.", v12, 2u);
      }
    }

    deviceContext = [applicationInitializationContext deviceContext];
    context = self->_context;
    self->_context = deviceContext;
  }

  v9 = self->_context;
  v10 = v9;

  return v9;
}

@end