@interface _SBKeyboardFocusSceneControllerFactory
- (id)_dependenciesForKeyboardFocusScene:(id)scene deliveryManager:(id)manager sceneProvider:(id)provider;
- (id)newKeyboardFocusSceneControllerForScene:(id)scene deliveryManager:(id)manager sceneProvider:(id)provider;
@end

@implementation _SBKeyboardFocusSceneControllerFactory

- (id)_dependenciesForKeyboardFocusScene:(id)scene deliveryManager:(id)manager sceneProvider:(id)provider
{
  sceneCopy = scene;
  managerCopy = manager;
  providerCopy = provider;
  if ([sceneCopy isEmbeddedScene])
  {
    goto LABEL_2;
  }

  if ([sceneCopy isContinuityScene])
  {
    v10 = off_2783A2FE0;
    goto LABEL_5;
  }

  if ([sceneCopy isExternalDisplayScene])
  {
LABEL_2:
    v10 = off_2783A2FE8;
LABEL_5:
    v11 = [objc_alloc(*v10) initWithScene:sceneCopy deliveryManager:managerCopy sceneProvider:providerCopy];
    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (id)newKeyboardFocusSceneControllerForScene:(id)scene deliveryManager:(id)manager sceneProvider:(id)provider
{
  providerCopy = provider;
  managerCopy = manager;
  sceneCopy = scene;
  v11 = [SBKeyboardFocusSceneController alloc];
  v12 = [(_SBKeyboardFocusSceneControllerFactory *)self _dependenciesForKeyboardFocusScene:sceneCopy deliveryManager:managerCopy sceneProvider:providerCopy];

  v13 = [(SBKeyboardFocusSceneController *)v11 initWithWindowScene:sceneCopy dependencies:v12];
  return v13;
}

@end