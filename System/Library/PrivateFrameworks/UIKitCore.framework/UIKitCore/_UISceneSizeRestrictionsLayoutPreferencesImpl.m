@interface _UISceneSizeRestrictionsLayoutPreferencesImpl
+ (id)implementationForScene:(id)a3;
- (CGSize)maximumSize;
- (CGSize)minimumSize;
- (_UISceneSizeRestrictionsLayoutPreferencesImpl)initWithLayoutPreferencesController:(id)a3;
- (void)_setNeedsUpdateOfLayoutPreferences;
- (void)layoutPreferencesControllerDidUpdate:(id)a3 transitionContext:(id)a4;
@end

@implementation _UISceneSizeRestrictionsLayoutPreferencesImpl

- (void)_setNeedsUpdateOfLayoutPreferences
{
  if (a1)
  {
    v1 = *(a1 + 32);
    v4 = *(a1 + 16);
    v5 = v1;
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __83___UISceneSizeRestrictionsLayoutPreferencesImpl__setNeedsUpdateOfLayoutPreferences__block_invoke;
    v3[3] = &__block_descriptor_64_e74_v24__0____UISceneLayoutPreferenceBuilding__8__FBSSceneTransitionContext_16l;
    [WeakRetained updateLayoutPreferences:v3];
  }
}

+ (id)implementationForScene:(id)a3
{
  v4 = [a3 _FBSScene];
  v5 = [v4 _ui_layoutPreferencesController];

  if (v5)
  {
    v6 = [[a1 alloc] initWithLayoutPreferencesController:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_UISceneSizeRestrictionsLayoutPreferencesImpl)initWithLayoutPreferencesController:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UISceneSizeRestrictionsLayoutPreferencesImpl;
  v5 = [(_UISceneSizeRestrictionsLayoutPreferencesImpl *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_prefsController, v4);
    [v4 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v6->_effectiveMinimumSize.width = v7;
    v6->_effectiveMinimumSize.height = v8;
    [v4 systemLayoutSizeFittingSize:{1.79769313e308, 1.79769313e308}];
    v6->_effectiveMaximumSize.width = v9;
    v6->_effectiveMaximumSize.height = v10;
    v6->_allowsFullScreen = 1;
    effectiveMaximumSize = v6->_effectiveMaximumSize;
    v6->_preferredMinimumSize = v6->_effectiveMinimumSize;
    v6->_preferredMaximumSize = effectiveMaximumSize;
    [v4 registerObserver:v6];
  }

  return v6;
}

- (void)layoutPreferencesControllerDidUpdate:(id)a3 transitionContext:(id)a4
{
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  v7 = a3;
  [v7 systemLayoutSizeFittingSize:{v5, v6}];
  v9 = v8;
  v11 = v10;
  [v7 systemLayoutSizeFittingSize:{1.79769313e308, 1.79769313e308}];
  v13 = v12;
  v15 = v14;

  self->_preferredMinimumSize.width = v9;
  self->_preferredMinimumSize.height = v11;
  self->_preferredMaximumSize.width = v13;
  self->_preferredMaximumSize.height = v15;
  v16 = vabdd_f64(self->_effectiveMinimumSize.width, v9);
  if (vabdd_f64(self->_effectiveMinimumSize.height, v11) >= 0.00000011920929 || v16 >= 0.00000011920929)
  {
    [(_UISceneSizeRestrictionsLayoutPreferencesImpl *)self willChangeValueForKey:@"minimumSize", v16];
    self->_effectiveMinimumSize.width = v9;
    self->_effectiveMinimumSize.height = v11;
    [(_UISceneSizeRestrictionsLayoutPreferencesImpl *)self didChangeValueForKey:@"minimumSize"];
  }

  v18 = vabdd_f64(self->_effectiveMaximumSize.width, v13);
  if (vabdd_f64(self->_effectiveMaximumSize.height, v15) >= 0.00000011920929 || v18 >= 0.00000011920929)
  {
    [(_UISceneSizeRestrictionsLayoutPreferencesImpl *)self willChangeValueForKey:@"maximumSize", v18];
    self->_effectiveMaximumSize.width = v13;
    self->_effectiveMaximumSize.height = v15;

    [(_UISceneSizeRestrictionsLayoutPreferencesImpl *)self didChangeValueForKey:@"maximumSize"];
  }
}

- (CGSize)minimumSize
{
  width = self->_effectiveMinimumSize.width;
  height = self->_effectiveMinimumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maximumSize
{
  width = self->_effectiveMaximumSize.width;
  height = self->_effectiveMaximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end