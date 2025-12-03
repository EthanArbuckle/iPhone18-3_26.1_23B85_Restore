@interface SBApplicationHarmonyService
+ (id)sharedInstance;
- (SBApplicationHarmonyService)init;
- (void)applicationServer:(id)server client:(id)client fetchWhitePointAdaptivityStyleForDisplayId:(unsigned int)id withCompletion:(id)completion;
@end

@implementation SBApplicationHarmonyService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_43 != -1)
  {
    +[SBApplicationHarmonyService sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_22;

  return v3;
}

void __45__SBApplicationHarmonyService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBApplicationHarmonyService);
  v1 = sharedInstance___sharedInstance_22;
  sharedInstance___sharedInstance_22 = v0;
}

- (SBApplicationHarmonyService)init
{
  v5.receiver = self;
  v5.super_class = SBApplicationHarmonyService;
  v2 = [(SBApplicationHarmonyService *)&v5 init];
  if (v2)
  {
    v3 = +[SBApplicationServer sharedInstance];
    [v3 setHarmonyDelegate:v2];
  }

  return v2;
}

- (void)applicationServer:(id)server client:(id)client fetchWhitePointAdaptivityStyleForDisplayId:(unsigned int)id withCompletion:(id)completion
{
  serverCopy = server;
  clientCopy = client;
  completionCopy = completion;
  if (completionCopy)
  {
    mEMORY[0x277D0AAF8] = [MEMORY[0x277D0AAF8] sharedUIAppClientAuthenticator];
    v12 = [mEMORY[0x277D0AAF8] authenticateClient:clientCopy];

    if (v12)
    {
      v13 = completionCopy;
      BSDispatchMain();
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, -1);
    }
  }
}

uint64_t __114__SBApplicationHarmonyService_applicationServer_client_fetchWhitePointAdaptivityStyleForDisplayId_withCompletion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [MEMORY[0x277CD9E40] displays];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 displayId] == *(a1 + 40))
        {
          v9 = [MEMORY[0x277CD9E40] mainDisplay];
          v5 = v9 == v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);

    if (v5)
    {
      v10 = +[SBHarmonyController sharedInstance];
      [v10 whitePointAdaptivityStyle];
    }
  }

  else
  {
  }

  return (*(*(a1 + 32) + 16))();
}

@end