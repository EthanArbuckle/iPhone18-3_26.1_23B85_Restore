@interface UIFocusGuide
- (NSString)description;
- (UIFocusGuide)init;
- (UIFocusGuide)initWithCoder:(id)a3;
- (UIView)preferredFocusedView;
- (id)_encodablePreferredFocusEnvironments;
- (void)_setAutomaticallyDisableWhenIntersectingFocus:(BOOL)a3;
- (void)_setOwningView:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setPreferredFocusedView:(UIView *)preferredFocusedView;
@end

@implementation UIFocusGuide

- (UIFocusGuide)init
{
  v5.receiver = self;
  v5.super_class = UIFocusGuide;
  v2 = [(UILayoutGuide *)&v5 init];
  v3 = v2;
  if (v2)
  {
    _UIFocusGuideCommonInit(v2);
  }

  return v3;
}

- (UIFocusGuide)initWithCoder:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = UIFocusGuide;
  v5 = [(UILayoutGuide *)&v24 init];
  v6 = v5;
  if (v5)
  {
    _UIFocusGuideCommonInit(v5);
    if ([v4 containsValueForKey:@"_UIFocusGuideEnabledKey"])
    {
      -[_UIFocusGuideImpl setEnabled:](v6->_impl, "setEnabled:", [v4 decodeBoolForKey:@"_UIFocusGuideEnabledKey"]);
    }

    if ([v4 containsValueForKey:@"_UIFocusGuideAutomaticallyPreferOwningViewKey"])
    {
      -[_UIFocusGuideImpl _setAutomaticallyPreferOwningItem:](v6->_impl, "_setAutomaticallyPreferOwningItem:", [v4 decodeBoolForKey:@"_UIFocusGuideAutomaticallyPreferOwningViewKey"]);
    }

    v7 = [v4 decodeObjectForKey:@"_UIFocusGuidePreferredFocusedViewKey"];
    v8 = v7;
    if (v7)
    {
      v26[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      [(_UIFocusGuideImpl *)v6->_impl setPreferredFocusEnvironments:v9];
    }

    else
    {
      v10 = [v4 decodeObjectForKey:@"_UIFocusGuidePreferredFocusEnvironmentsKey"];
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = v10;
      v12 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v9);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            v17 = _UIFocusEnvironmentSafeCast(v16);

            if (v17)
            {
              [v11 addObject:{v16, v20}];
            }
          }

          v13 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v13);
      }

      v18 = [v11 copy];
      [(_UIFocusGuideImpl *)v6->_impl setPreferredFocusEnvironments:v18];
    }

    if ([v4 containsValueForKey:@"_UIFocusGuideDidSetPreferredFocusedViewKey"])
    {
      -[_UIFocusGuideImpl _setDidSetPreferredFocusedEnvironments:](v6->_impl, "_setDidSetPreferredFocusedEnvironments:", [v4 decodeBoolForKey:@"_UIFocusGuideDidSetPreferredFocusedViewKey"]);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeBool:-[_UIFocusGuideImpl isEnabled](self->_impl forKey:{"isEnabled"), @"_UIFocusGuideEnabledKey"}];
  [v5 encodeBool:-[_UIFocusGuideImpl _didSetPreferredFocusedEnvironments](self->_impl forKey:{"_didSetPreferredFocusedEnvironments"), @"_UIFocusGuideDidSetPreferredFocusedViewKey"}];
  [v5 encodeBool:-[_UIFocusGuideImpl _automaticallyPreferOwningItem](self->_impl forKey:{"_automaticallyPreferOwningItem"), @"_UIFocusGuideAutomaticallyPreferOwningViewKey"}];
  v4 = [(UIFocusGuide *)self _encodablePreferredFocusEnvironments];
  if ([v4 count])
  {
    [v5 encodeConditionalObject:v4 forKey:@"_UIFocusGuidePreferredFocusEnvironmentsKey"];
  }
}

- (id)_encodablePreferredFocusEnvironments
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(_UIFocusGuideImpl *)self->_impl preferredFocusEnvironments];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 conformsToProtocol:&unk_1EFE41D48])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_setAutomaticallyDisableWhenIntersectingFocus:(BOOL)a3
{
  if (os_variant_has_internal_diagnostics())
  {
    _UIIsPrivateMainBundle();
    if (dyld_program_sdk_at_least())
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"UIFocusGuide.m" lineNumber:116 description:{@"Hey GameCenter and AppStore, please stop calling this method, it doesn't do anything and we would like to remove it. You have a radar about this (139002488 & 139002492)."}];
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *v9 = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Hey GameCenter and AppStore, please stop calling this method, it doesn't do anything and we would like to remove it. You have a radar about this (139002488 & 139002492). This will become an assert in a future version.", v9, 2u);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &_setAutomaticallyDisableWhenIntersectingFocus____s_category) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Hey GameCenter and AppStore, please stop calling this method, it doesn't do anything and we would like to remove it. You have a radar about this (139002488 & 139002492). This will become an assert in a future version.", buf, 2u);
      }
    }
  }
}

- (UIView)preferredFocusedView
{
  v2 = [(UIFocusGuide *)self preferredFocusEnvironments];
  v3 = [v2 firstObject];

  if (v3 && _IsKindOfUIView(v3))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPreferredFocusedView:(UIView *)preferredFocusedView
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = preferredFocusedView;
  v5 = v4;
  if (v4)
  {
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(UIFocusGuide *)self setPreferredFocusEnvironments:v6];
  }

  else
  {
    [(UIFocusGuide *)self setPreferredFocusEnvironments:0];
  }
}

- (void)_setOwningView:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIFocusGuide;
  v4 = a3;
  [(UILayoutGuide *)&v6 _setOwningView:v4];
  v5 = [(UIFocusGuide *)self _impl:v6.receiver];
  [v5 setOwningItem:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = UIFocusGuide;
  v4 = [(UILayoutGuide *)&v9 description];
  v5 = [(UIFocusGuide *)self isEnabled];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"%@, isEnabled: %@", v4, v6];

  return v7;
}

@end