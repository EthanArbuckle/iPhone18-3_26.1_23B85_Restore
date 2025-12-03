@interface SBFSAlwaysOnLiveRenderingAssertionUIScene
- (SBFSAlwaysOnLiveRenderingAssertionUIScene)initWithScene:(id)scene;
- (id)assertionAttributes;
@end

@implementation SBFSAlwaysOnLiveRenderingAssertionUIScene

- (SBFSAlwaysOnLiveRenderingAssertionUIScene)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = SBFSAlwaysOnLiveRenderingAssertionUIScene;
  _init = [(SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider *)&v8 _init];
  v6 = _init;
  if (_init)
  {
    objc_storeWeak(_init + 1, sceneCopy);
  }

  return v6;
}

- (id)assertionAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E698E548] requestLiveUpdatingForScene:WeakRetained];
    v7[0] = v3;
    v4 = [MEMORY[0x1E698E550] requestUnrestrictedFramerateForScene:WeakRetained];
    v7[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

@end