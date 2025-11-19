@interface UIApplicationConfigurationLoader
@end

@implementation UIApplicationConfigurationLoader

void __49___UIApplicationConfigurationLoader_sharedLoader__block_invoke()
{
  v0 = [[_UIApplicationConfigurationLoader alloc] _init];
  v1 = qword_1ED49EC48;
  qword_1ED49EC48 = v0;

  v2 = *(qword_1ED49EC48 + 8);
  *(qword_1ED49EC48 + 8) = 0;
}

uint64_t __63___UIApplicationConfigurationLoader__loadInitializationContext__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __63___UIApplicationConfigurationLoader__loadInitializationContext__block_invoke_2;
  v2[3] = &unk_1E70F32F0;
  v3 = *(a1 + 32);
  return __UIAPPLICATION_IS_LOADING_INITIALIZATION_INFO_FROM_THE_SYSTEM__(v2);
}

void __74___UIApplicationConfigurationLoader__appInitializationContextFactoryClass__block_invoke()
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v3 infoDictionary];
  v1 = [v0 objectForKey:@"UIApplicationInitializationContextFactoryClass"];
  v2 = qword_1ED49EC58;
  qword_1ED49EC58 = v1;
}

void __63___UIApplicationConfigurationLoader__loadInitializationContext__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) usesLocalInitializationContext])
  {
    v2 = [*(a1 + 32) _appInitializationContextFactoryClass];
    v3 = v2;
    if (v2)
    {
      v4 = NSClassFromString(v2);
      if (v4 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v5 = [MEMORY[0x1E696AAA8] currentHandler];
        [v5 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_UIApplicationConfigurationLoader.m" lineNumber:108 description:{@"If specified to be non-null, the factory class must conform to _UIApplicationInitializationContextFactory."}];
      }
    }

    else
    {
      v4 = 0;
    }

    v7 = [(objc_class *)v4 _newApplicationInitializationContext];
    if (!v7)
    {
      v7 = [MEMORY[0x1E69DEBA8] defaultContext];
    }

    v6 = v7;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DEBB8]);
    v6 = [(NSString *)v3 applicationInitializationContextWithParameters:0];
    [(NSString *)v3 invalidate];
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = v6;
}

@end