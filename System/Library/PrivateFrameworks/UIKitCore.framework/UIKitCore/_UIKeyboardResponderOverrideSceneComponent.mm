@interface _UIKeyboardResponderOverrideSceneComponent
- (UIScene)_scene;
- (UIView)commonView;
- (_UIKeyboardResponderOverrideSceneComponent)initWithScene:(id)scene;
- (void)_sceneWillInvalidate:(id)invalidate;
- (void)pushPreferredKeyboardResponderOverride:(id)override;
- (void)removePreferredKeyboardResponderOverride:(id)override;
@end

@implementation _UIKeyboardResponderOverrideSceneComponent

- (_UIKeyboardResponderOverrideSceneComponent)initWithScene:(id)scene
{
  sceneCopy = scene;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKeyboardResponderOverrideSceneComponent.m" lineNumber:47 description:{@"Only UIWindowScene is supported by %@.", v11}];
  }

  v12.receiver = self;
  v12.super_class = _UIKeyboardResponderOverrideSceneComponent;
  v6 = [(_UIKeyboardResponderOverrideSceneComponent *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_scene, sceneCopy);
  }

  return v7;
}

- (void)pushPreferredKeyboardResponderOverride:(id)override
{
  overrideCopy = override;
  preferredKeyboardResponderOverride = [(_UIKeyboardResponderOverrideSceneComponent *)self preferredKeyboardResponderOverride];

  if (!preferredKeyboardResponderOverride)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    keyboardResponderOverrides = self->_keyboardResponderOverrides;
    self->_keyboardResponderOverrides = v5;
  }

  [(NSMutableArray *)self->_keyboardResponderOverrides addObject:overrideCopy];
}

- (void)removePreferredKeyboardResponderOverride:(id)override
{
  overrideCopy = override;
  keyboardResponderOverrides = [(_UIKeyboardResponderOverrideSceneComponent *)self keyboardResponderOverrides];
  v5 = [keyboardResponderOverrides count];
  if (v5)
  {
    v6 = v5;
    keyboardResponderOverrides2 = [(_UIKeyboardResponderOverrideSceneComponent *)self keyboardResponderOverrides];

    if (keyboardResponderOverrides2)
    {
      if (v6 == 1 && (([keyboardResponderOverrides lastObject], v8 = objc_claimAutoreleasedReturnValue(), (v9 = v8) == 0) ? (v10 = 0) : (v10 = objc_loadWeakRetained((v8 + 8))), v11 = objc_msgSend(v10, "isEqual:", overrideCopy), v10, v9, v11))
      {
        [(NSMutableArray *)self->_keyboardResponderOverrides removeLastObject];
      }

      else
      {
        v12 = [keyboardResponderOverrides count] - 1;
        while (1)
        {
          v13 = v12;
          if ((v12 & 0x80000000) != 0)
          {
            break;
          }

          0x7FFFFFFF = [keyboardResponderOverrides objectAtIndex:v12 & 0x7FFFFFFF];
          v15 = 0x7FFFFFFF;
          if (0x7FFFFFFF)
          {
            WeakRetained = objc_loadWeakRetained((0x7FFFFFFF + 8));
          }

          else
          {
            WeakRetained = 0;
          }

          v17 = [WeakRetained isEqual:overrideCopy];

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

- (void)_sceneWillInvalidate:(id)invalidate
{
  if ([invalidate _hasInvalidated])
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