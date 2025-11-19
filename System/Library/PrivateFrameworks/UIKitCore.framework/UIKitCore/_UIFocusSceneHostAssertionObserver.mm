@interface _UIFocusSceneHostAssertionObserver
- (BOOL)isActive;
- (_UIFocusSceneHostAssertionObserver)initWithScene:(id)a3;
@end

@implementation _UIFocusSceneHostAssertionObserver

- (_UIFocusSceneHostAssertionObserver)initWithScene:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UIFocusSceneHostAssertionObserver;
  v5 = [(_UIFocusStateObserver *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52___UIFocusSceneHostAssertionObserver_initWithScene___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    v10 = v4;
    [(_UIFocusStateObserver *)v9 performUpdatesAndNotifyObservers:v8];
  }

  return v6;
}

- (BOOL)isActive
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystemManager);
  v3 = [WeakRetained isHostAssertingActiveFocusSystem];

  return v3;
}

@end