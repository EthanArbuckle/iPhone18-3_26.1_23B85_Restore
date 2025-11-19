@interface _SBActiveRemoteTransientOverlayViewProviderRegistry
+ (id)sharedInstance;
- (_SBActiveRemoteTransientOverlayViewProviderRegistry)init;
- (void)registerViewProvider:(id)a3;
- (void)unregisterViewProvider:(id)a3;
@end

@implementation _SBActiveRemoteTransientOverlayViewProviderRegistry

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_53 != -1)
  {
    +[_SBActiveRemoteTransientOverlayViewProviderRegistry sharedInstance];
  }

  v3 = sharedInstance___registry;

  return v3;
}

- (_SBActiveRemoteTransientOverlayViewProviderRegistry)init
{
  v6.receiver = self;
  v6.super_class = _SBActiveRemoteTransientOverlayViewProviderRegistry;
  v2 = [(_SBActiveRemoteTransientOverlayViewProviderRegistry *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    viewProviderAdapterForSceneIdentifier = v2->_viewProviderAdapterForSceneIdentifier;
    v2->_viewProviderAdapterForSceneIdentifier = v3;
  }

  return v2;
}

- (void)registerViewProvider:(id)a3
{
  v7 = a3;
  v4 = [v7 sceneHandle];
  v5 = [v4 sceneIdentifier];

  v6 = [(NSMapTable *)self->_viewProviderAdapterForSceneIdentifier objectForKey:v5];
  if (!v6)
  {
    v6 = objc_alloc_init(_SBActiveRemoteTransientOverlayViewProviderAdapter);
    [(NSMapTable *)self->_viewProviderAdapterForSceneIdentifier setObject:v6 forKey:v5];
    [SBApp registerRemoteAlertSceneViewProvider:v6];
  }

  if ([v7 handlesSceneBackedRemoteTransientOverlaysOnly])
  {
    [(_SBActiveRemoteTransientOverlayViewProviderAdapter *)v6 setSceneBackedProvider:v7];
  }

  else
  {
    [(_SBActiveRemoteTransientOverlayViewProviderAdapter *)v6 setViewServiceProvider:v7];
  }
}

- (void)unregisterViewProvider:(id)a3
{
  v10 = a3;
  v4 = [v10 sceneHandle];
  v5 = [v4 sceneIdentifier];

  v6 = [(NSMapTable *)self->_viewProviderAdapterForSceneIdentifier objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 sceneBackedProvider];
    v9 = [v7 viewServiceProvider];
    if (v8 == v10)
    {
      [v7 setSceneBackedProvider:0];
    }

    else if (v9 == v10)
    {
      [v7 setViewServiceProvider:0];
    }

    if (!(v8 | v9))
    {
      [SBApp unregisterRemoteAlertSceneViewProvider:v7];
      [(NSMapTable *)self->_viewProviderAdapterForSceneIdentifier removeObjectForKey:v5];
    }
  }
}

@end