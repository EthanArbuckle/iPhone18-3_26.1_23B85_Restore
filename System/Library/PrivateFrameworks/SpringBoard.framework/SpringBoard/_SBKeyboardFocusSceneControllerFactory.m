@interface _SBKeyboardFocusSceneControllerFactory
- (id)_dependenciesForKeyboardFocusScene:(id)a3 deliveryManager:(id)a4 sceneProvider:(id)a5;
- (id)newKeyboardFocusSceneControllerForScene:(id)a3 deliveryManager:(id)a4 sceneProvider:(id)a5;
@end

@implementation _SBKeyboardFocusSceneControllerFactory

- (id)_dependenciesForKeyboardFocusScene:(id)a3 deliveryManager:(id)a4 sceneProvider:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 isEmbeddedScene])
  {
    goto LABEL_2;
  }

  if ([v7 isContinuityScene])
  {
    v10 = off_2783A2FE0;
    goto LABEL_5;
  }

  if ([v7 isExternalDisplayScene])
  {
LABEL_2:
    v10 = off_2783A2FE8;
LABEL_5:
    v11 = [objc_alloc(*v10) initWithScene:v7 deliveryManager:v8 sceneProvider:v9];
    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (id)newKeyboardFocusSceneControllerForScene:(id)a3 deliveryManager:(id)a4 sceneProvider:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [SBKeyboardFocusSceneController alloc];
  v12 = [(_SBKeyboardFocusSceneControllerFactory *)self _dependenciesForKeyboardFocusScene:v10 deliveryManager:v9 sceneProvider:v8];

  v13 = [(SBKeyboardFocusSceneController *)v11 initWithWindowScene:v10 dependencies:v12];
  return v13;
}

@end