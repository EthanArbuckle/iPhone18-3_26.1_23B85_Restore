@interface SUAuthSSO
+ (id)sharedInstance;
- (id)_getSsoToken;
- (void)_ensureSsoLib;
- (void)invokeSSOAuth;
@end

@implementation SUAuthSSO

+ (id)sharedInstance
{
  v2 = sharedInstance_instance;
  if (!sharedInstance_instance)
  {
    v3 = objc_alloc_init(SUAuthSSO);
    v4 = sharedInstance_instance;
    sharedInstance_instance = v3;

    v2 = sharedInstance_instance;
  }

  return v2;
}

- (void)invokeSSOAuth
{
  _getSsoToken = [(SUAuthSSO *)self _getSsoToken];
  if (_getSsoToken && ([_getSsoToken objectForKey:@"ssodata"], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    SULogInfo(@"%s: Successfully acquired ssoData", v2, v3, v4, v5, v6, v7, v8, "[SUAuthSSO invokeSSOAuth]");
  }

  else
  {
    SULogInfo(@"%s: Unable to get a new sso token.", v2, v3, v4, v5, v6, v7, v8, "[SUAuthSSO invokeSSOAuth]");
  }
}

- (id)_getSsoToken
{
  [(SUAuthSSO *)self _ensureSsoLib];
  copyPersonalizationSSOToken = self->copyPersonalizationSSOToken;
  if (copyPersonalizationSSOToken)
  {
    v23 = 0;
    v11 = copyPersonalizationSSOToken(0, &v23);
    v12 = v23;
    v20 = v12;
    if (v11)
    {
      v21 = v12 == 0;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      SULogInfo(@"%s: failed to get sso token with error %@", v13, v14, v15, v16, v17, v18, v19, "[SUAuthSSO _getSsoToken]");
    }
  }

  else
  {
    SULogInfo(@"%s: failed to get sso token, couldn't find function copyPersonalizationSSOToken", v3, v4, v5, v6, v7, v8, v9, "[SUAuthSSO _getSsoToken]");
    v11 = 0;
  }

  return v11;
}

- (void)_ensureSsoLib
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SUAuthSSO__ensureSsoLib__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  if (_ensureSsoLib_onceToken != -1)
  {
    dispatch_once(&_ensureSsoLib_onceToken, block);
  }
}

void __26__SUAuthSSO__ensureSsoLib__block_invoke(uint64_t a1)
{
  v2 = dlopen("/usr/lib/libSoftwareUpdateSSO.dylib", 1);
  if (v2)
  {
    v10 = v2;
    *(*(a1 + 32) + 8) = dlsym(v2, "copyPersonalizationSSOToken");
    if (!*(*(a1 + 32) + 8))
    {
      SULogInfo(@"%s: unable to load functions from framework", v11, v12, v13, v14, v15, v16, v17, "[SUAuthSSO _ensureSsoLib]_block_invoke");

      dlclose(v10);
    }
  }

  else
  {
    SULogInfo(@"%s: unable to initialize susso, unable to load framework", v3, v4, v5, v6, v7, v8, v9, "[SUAuthSSO _ensureSsoLib]_block_invoke");
  }
}

@end