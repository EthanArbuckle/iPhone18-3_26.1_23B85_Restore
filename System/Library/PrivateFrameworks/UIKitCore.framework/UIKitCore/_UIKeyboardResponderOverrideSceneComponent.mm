@interface _UIKeyboardResponderOverrideSceneComponent
- (UIScene)_scene;
- (UIView)commonView;
- (_UIKeyboardResponderOverrideSceneComponent)initWithScene:(id)a3;
- (void)_sceneWillInvalidate:(id)a3;
- (void)pushPreferredKeyboardResponderOverride:(id)a3;
- (void)removePreferredKeyboardResponderOverride:(id)a3;
@end

@implementation _UIKeyboardResponderOverrideSceneComponent

- (_UIKeyboardResponderOverrideSceneComponent)initWithScene:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:self file:@"_UIKeyboardResponderOverrideSceneComponent.m" lineNumber:47 description:{@"Only UIWindowScene is supported by %@.", v11}];
  }

  v12.receiver = self;
  v12.super_class = _UIKeyboardResponderOverrideSceneComponent;
  v6 = [(_UIKeyboardResponderOverrideSceneComponent *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_scene, v5);
  }

  return v7;
}

- (void)pushPreferredKeyboardResponderOverride:(id)a3
{
  v7 = a3;
  v4 = [(_UIKeyboardResponderOverrideSceneComponent *)self preferredKeyboardResponderOverride];

  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    keyboardResponderOverrides = self->_keyboardResponderOverrides;
    self->_keyboardResponderOverrides = v5;
  }

  [(NSMutableArray *)self->_keyboardResponderOverrides addObject:v7];
}

- (void)removePreferredKeyboardResponderOverride:(id)a3
{
  v18 = a3;
  v4 = [(_UIKeyboardResponderOverrideSceneComponent *)self keyboardResponderOverrides];
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = [(_UIKeyboardResponderOverrideSceneComponent *)self keyboardResponderOverrides];

    if (v7)
    {
      if (v6 == 1 && (([v4 lastObject], v8 = objc_claimAutoreleasedReturnValue(), (v9 = v8) == 0) ? (v10 = 0) : (v10 = objc_loadWeakRetained((v8 + 8))), v11 = objc_msgSend(v10, "isEqual:", v18), v10, v9, v11))
      {
        [(NSMutableArray *)self->_keyboardResponderOverrides removeLastObject];
      }

      else
      {
        v12 = [v4 count] - 1;
        while (1)
        {
          v13 = v12;
          if ((v12 & 0x80000000) != 0)
          {
            break;
          }

          v14 = [v4 objectAtIndex:v12 & 0x7FFFFFFF];
          v15 = v14;
          if (v14)
          {
            WeakRetained = objc_loadWeakRetained((v14 + 8));
          }

          else
          {
            WeakRetained = 0;
          }

          v17 = [WeakRetained isEqual:v18];

          v12 = v13 - 1;
          if (v17)
          {
            [(NSMutableArray *)self->_keyboardResponderOverrides removeObjectAtIndex:v13 & 0x7FFFFFFF];
            break;
          }
        }
      }
    }
  }
}

- (void)_sceneWillInvalidate:(id)a3
{
  if ([a3 _hasInvalidated])
  {
    keyboardResponderOverrides = self->_keyboardResponderOverrides;
    self->_keyboardResponderOverrides = 0;
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (UIView)commonView
{
  WeakRetained = objc_loadWeakRetained(&self->_commonView);

  return WeakRetained;
}

@end