@interface _SBActiveRemoteTransientOverlayViewProviderRegistry
+ (id)sharedInstance;
- (_SBActiveRemoteTransientOverlayViewProviderRegistry)init;
- (void)registerViewProvider:(id)provider;
- (void)unregisterViewProvider:(id)provider;
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
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    viewProviderAdapterForSceneIdentifier = v2->_viewProviderAdapterForSceneIdentifier;
    v2->_viewProviderAdapterForSceneIdentifier = strongToStrongObjectsMapTable;
  }

  return v2;
}

- (void)registerViewProvider:(id)provider
{
  providerCopy = provider;
  sceneHandle = [providerCopy sceneHandle];
  sceneIdentifier = [sceneHandle sceneIdentifier];

  v6 = [(NSMapTable *)self->_viewProviderAdapterForSceneIdentifier objectForKey:sceneIdentifier];
  if (!v6)
  {
    v6 = objc_alloc_init(_SBActiveRemoteTransientOverlayViewProviderAdapter);
    [(NSMapTable *)self->_viewProviderAdapterForSceneIdentifier setObject:v6 forKey:sceneIdentifier];
    [SBApp registerRemoteAlertSceneViewProvider:v6];
  }

  if ([providerCopy handlesSceneBackedRemoteTransientOverlaysOnly])
  {
    [(_SBActiveRemoteTransientOverlayViewProviderAdapter *)v6 setSceneBackedProvider:providerCopy];
  }

  else
  {
    [(_SBActiveRemoteTransientOverlayViewProviderAdapter *)v6 setViewServiceProvider:providerCopy];
  }
}

- (void)unregisterViewProvider:(id)provider
{
  providerCopy = provider;
  sceneHandle = [providerCopy sceneHandle];
  sceneIdentifier = [sceneHandle sceneIdentifier];

  v6 = [(NSMapTable *)self->_viewProviderAdapterForSceneIdentifier objectForKey:sceneIdentifier];
  v7 = v6;
  if (v6)
  {
    sceneBackedProvider = [v6 sceneBackedProvider];
    viewServiceProvider = [v7 viewServiceProvider];
    if (sceneBackedProvider == providerCopy)
    {
      [v7 setSceneBackedProvider:0];
    }

    else if (viewServiceProvider == providerCopy)
    {
      [v7 setViewServiceProvider:0];
    }

    if (!(sceneBackedProvider | viewServiceProvider))
    {
      [SBApp unregisterRemoteAlertSceneViewProvider:v7];
      [(NSMapTable *)self->_viewProviderAdapterForSceneIdentifier removeObjectForKey:sceneIdentifier];
    }
  }
}

@end