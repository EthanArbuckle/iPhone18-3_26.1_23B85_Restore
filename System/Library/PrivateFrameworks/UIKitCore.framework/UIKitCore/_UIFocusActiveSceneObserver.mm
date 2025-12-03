@interface _UIFocusActiveSceneObserver
- (_UIFocusActiveSceneObserver)initWithScene:(id)scene;
- (id)_initWithScene:(id)scene;
@end

@implementation _UIFocusActiveSceneObserver

- (_UIFocusActiveSceneObserver)initWithScene:(id)scene
{
  sceneCopy = scene;
  if (!sceneCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusActiveSceneObserver.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"scene"}];
  }

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v6 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v9 = _UIInternalPreference_FocusModernSceneObserver;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_FocusModernSceneObserver)
    {
      while (v6 >= v9)
      {
        _UIInternalPreferenceSync(v6, &_UIInternalPreference_FocusModernSceneObserver, @"FocusModernSceneObserver", _UIInternalPreferenceUpdateBool);
        v9 = _UIInternalPreference_FocusModernSceneObserver;
        if (v6 == _UIInternalPreference_FocusModernSceneObserver)
        {
          goto LABEL_6;
        }
      }

      if (!byte_1ED48AA54)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_6:
  if ((_UISceneSystemShellManagesKeyboardFocusForScene(sceneCopy) & 1) == 0)
  {
LABEL_13:
    v7 = off_1E70EB758;
    goto LABEL_14;
  }

  v7 = off_1E70EB760;
LABEL_14:
  v10 = [objc_alloc(*v7) _initWithScene:sceneCopy];

  return v10;
}

- (id)_initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = _UIFocusActiveSceneObserver;
  v5 = [(_UIFocusStateObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
  }

  return v6;
}

@end