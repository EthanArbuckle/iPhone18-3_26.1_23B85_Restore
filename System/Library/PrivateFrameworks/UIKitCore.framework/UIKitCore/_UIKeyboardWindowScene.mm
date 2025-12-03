@interface _UIKeyboardWindowScene
- (_UIKeyboardWindowScene)initWithScreen:(id)screen session:(id)session lookupKey:(id)key;
- (id)_fixupInheritedSettings:(id)settings;
- (id)_homeAffordanceSceneNotifier;
- (void)_setSettingsScene:(id)scene;
@end

@implementation _UIKeyboardWindowScene

- (id)_homeAffordanceSceneNotifier
{
  if (!_UIDeviceSupportsGlobalEdgeSwipeTouches())
  {
    goto LABEL_6;
  }

  v3 = _UIApplicationSupportsHomeAffordanceObservation();
  _existingHomeAffordanceSceneNotifier = 0;
  if (self && v3)
  {
    if (![(UIScene *)self _hostsWindows]|| [(UIScene *)self _hasInvalidated])
    {
LABEL_6:
      _existingHomeAffordanceSceneNotifier = 0;
      goto LABEL_7;
    }

    _existingHomeAffordanceSceneNotifier = [(UIScene *)self _existingHomeAffordanceSceneNotifier];
    if (!_existingHomeAffordanceSceneNotifier)
    {
      _existingHomeAffordanceSceneNotifier = [[_UIHomeAffordanceSceneNotifierProxy alloc] initWithScene:self];
      [(UIWindowScene *)self _registerSceneComponent:_existingHomeAffordanceSceneNotifier forKey:@"_UIHomeAffordanceSceneNotifierComponentKey"];
    }
  }

LABEL_7:

  return _existingHomeAffordanceSceneNotifier;
}

- (_UIKeyboardWindowScene)initWithScreen:(id)screen session:(id)session lookupKey:(id)key
{
  v9.receiver = self;
  v9.super_class = _UIKeyboardWindowScene;
  v5 = [(_UIScreenBasedWindowScene *)&v9 initWithScreen:screen session:session lookupKey:key];
  if (v5)
  {
    v6 = [(_UIFocusSystemSceneComponent *)[_UIFocusSystemKeyboardSceneComponent alloc] initWithScene:v5];
    [(UIWindowScene *)v5 _registerSceneComponent:v6 forKey:_UIFocusSystemSceneComponentKey];
    v7 = [[_UIHomeAffordanceSceneNotifierProxy alloc] initWithScene:v5];
    [(UIWindowScene *)v5 _registerSceneComponent:v7 forKey:@"_UIHomeAffordanceSceneNotifierComponentKey"];
  }

  return v5;
}

- (void)_setSettingsScene:(id)scene
{
  sceneCopy = scene;
  if ([(UIScene *)self _hasSettingsScene])
  {
    _settingsScene = [(UIScene *)self _settingsScene];
  }

  else
  {
    _settingsScene = 0;
  }

  v13.receiver = self;
  v13.super_class = _UIKeyboardWindowScene;
  [(UIScene *)&v13 _setSettingsScene:sceneCopy];
  if ([(UIScene *)self _hasSettingsScene])
  {
    _settingsScene2 = [(UIScene *)self _settingsScene];
  }

  else
  {
    _settingsScene2 = 0;
  }

  if (_UIDeviceSupportsGlobalEdgeSwipeTouches() && _UIApplicationSupportsHomeAffordanceObservation())
  {
    _homeAffordanceSceneNotifier = _settingsScene;
    v9 = _settingsScene2;
    currentHandler = v9;
    if (_homeAffordanceSceneNotifier != v9)
    {
      if (_homeAffordanceSceneNotifier && v9)
      {
        v11 = [_homeAffordanceSceneNotifier isEqual:v9];

        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      _homeAffordanceSceneNotifier = [(_UIKeyboardWindowScene *)self _homeAffordanceSceneNotifier];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _homeAffordanceSceneNotifier = _homeAffordanceSceneNotifier;
        if (!_homeAffordanceSceneNotifier)
        {
LABEL_19:

          goto LABEL_20;
        }

        _homeAffordanceSceneNotifier2 = [currentHandler _homeAffordanceSceneNotifier];
        [(_UIHomeAffordanceSceneNotifierProxy *)_homeAffordanceSceneNotifier setTargetHomeAffordanceNotifier:_homeAffordanceSceneNotifier2];

        currentHandler = _homeAffordanceSceneNotifier;
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScreenBasedWindowScene.m" lineNumber:573 description:{@"Invalid home affordance notifier class for scene: %@; notifier: %@", self, _homeAffordanceSceneNotifier}];
      }
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (id)_fixupInheritedSettings:(id)settings
{
  screen = [(_UIScreenBasedWindowScene *)self screen];
  [screen _referenceBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [settings frame];
  v18.origin.x = v6;
  v18.origin.y = v8;
  v18.size.width = v10;
  v18.size.height = v12;
  if (CGRectEqualToRect(v17, v18))
  {
    settingsCopy = settings;
  }

  else
  {
    v14 = [settings mutableCopy];
    [v14 setFrame:{v6, v8, v10, v12}];
    settingsCopy = [v14 copy];
  }

  return settingsCopy;
}

@end