@interface _UIKeyboardWindowScene
- (_UIKeyboardWindowScene)initWithScreen:(id)a3 session:(id)a4 lookupKey:(id)a5;
- (id)_fixupInheritedSettings:(id)a3;
- (id)_homeAffordanceSceneNotifier;
- (void)_setSettingsScene:(id)a3;
@end

@implementation _UIKeyboardWindowScene

- (id)_homeAffordanceSceneNotifier
{
  if (!_UIDeviceSupportsGlobalEdgeSwipeTouches())
  {
    goto LABEL_6;
  }

  v3 = _UIApplicationSupportsHomeAffordanceObservation();
  v4 = 0;
  if (self && v3)
  {
    if (![(UIScene *)self _hostsWindows]|| [(UIScene *)self _hasInvalidated])
    {
LABEL_6:
      v4 = 0;
      goto LABEL_7;
    }

    v4 = [(UIScene *)self _existingHomeAffordanceSceneNotifier];
    if (!v4)
    {
      v4 = [[_UIHomeAffordanceSceneNotifierProxy alloc] initWithScene:self];
      [(UIWindowScene *)self _registerSceneComponent:v4 forKey:@"_UIHomeAffordanceSceneNotifierComponentKey"];
    }
  }

LABEL_7:

  return v4;
}

- (_UIKeyboardWindowScene)initWithScreen:(id)a3 session:(id)a4 lookupKey:(id)a5
{
  v9.receiver = self;
  v9.super_class = _UIKeyboardWindowScene;
  v5 = [(_UIScreenBasedWindowScene *)&v9 initWithScreen:a3 session:a4 lookupKey:a5];
  if (v5)
  {
    v6 = [(_UIFocusSystemSceneComponent *)[_UIFocusSystemKeyboardSceneComponent alloc] initWithScene:v5];
    [(UIWindowScene *)v5 _registerSceneComponent:v6 forKey:_UIFocusSystemSceneComponentKey];
    v7 = [[_UIHomeAffordanceSceneNotifierProxy alloc] initWithScene:v5];
    [(UIWindowScene *)v5 _registerSceneComponent:v7 forKey:@"_UIHomeAffordanceSceneNotifierComponentKey"];
  }

  return v5;
}

- (void)_setSettingsScene:(id)a3
{
  v5 = a3;
  if ([(UIScene *)self _hasSettingsScene])
  {
    v6 = [(UIScene *)self _settingsScene];
  }

  else
  {
    v6 = 0;
  }

  v13.receiver = self;
  v13.super_class = _UIKeyboardWindowScene;
  [(UIScene *)&v13 _setSettingsScene:v5];
  if ([(UIScene *)self _hasSettingsScene])
  {
    v7 = [(UIScene *)self _settingsScene];
  }

  else
  {
    v7 = 0;
  }

  if (_UIDeviceSupportsGlobalEdgeSwipeTouches() && _UIApplicationSupportsHomeAffordanceObservation())
  {
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 != v9)
    {
      if (v8 && v9)
      {
        v11 = [v8 isEqual:v9];

        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v8 = [(_UIKeyboardWindowScene *)self _homeAffordanceSceneNotifier];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v8;
        if (!v8)
        {
LABEL_19:

          goto LABEL_20;
        }

        v12 = [v10 _homeAffordanceSceneNotifier];
        [(_UIHomeAffordanceSceneNotifierProxy *)v8 setTargetHomeAffordanceNotifier:v12];

        v10 = v8;
      }

      else
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        [v10 handleFailureInMethod:a2 object:self file:@"_UIScreenBasedWindowScene.m" lineNumber:573 description:{@"Invalid home affordance notifier class for scene: %@; notifier: %@", self, v8}];
      }
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (id)_fixupInheritedSettings:(id)a3
{
  v4 = [(_UIScreenBasedWindowScene *)self screen];
  [v4 _referenceBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [a3 frame];
  v18.origin.x = v6;
  v18.origin.y = v8;
  v18.size.width = v10;
  v18.size.height = v12;
  if (CGRectEqualToRect(v17, v18))
  {
    v13 = a3;
  }

  else
  {
    v14 = [a3 mutableCopy];
    [v14 setFrame:{v6, v8, v10, v12}];
    v13 = [v14 copy];
  }

  return v13;
}

@end