@interface UIWindowSceneActivationRequestOptions
- (BOOL)_effectivelyWantsBackground;
- (BOOL)_effectivelyWantsFullscreen;
- (BOOL)_effectivelyWantsPreservedLayout;
- (BOOL)_effectivelyWantsProminence;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (void)_setQuickLookSceneConfiguration:(id)a3;
- (void)setPlacement:(UIWindowScenePlacement *)placement;
@end

@implementation UIWindowSceneActivationRequestOptions

- (void)setPlacement:(UIWindowScenePlacement *)placement
{
  v4 = placement;
  if (v4 && ![objc_opt_class() _placementType])
  {
    v5 = *(__UILogGetCategoryCachedImpl("WindowScene", &setPlacement____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF UIKIT: Custom scene placements are not supported. Please use one of the system provided ones.", v8, 2u);
    }

    v4 = 0;
  }

  v6 = [(UIWindowScenePlacement *)v4 copy];
  v7 = self->_placement;
  self->_placement = v6;
}

- (void)_setQuickLookSceneConfiguration:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [(UISceneConfiguration *)v5 role];
    v8 = [v7 isEqualToString:@"UISceneSessionRoleQuickLook"];

    if ((v8 & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [(UISceneConfiguration *)v6 role];
      [v10 handleFailureInMethod:a2 object:self file:@"UIWindowSceneActivationRequestOptions.m" lineNumber:42 description:{@"BUG IN CLIENT OF UIKIT: Attempting to set an internal scene configuration with an incorrect role. Expected %@, Received: %@", @"UISceneSessionRoleQuickLook", v11}];
    }
  }

  quickLookSceneConfiguration = self->_quickLookSceneConfiguration;
  self->_quickLookSceneConfiguration = v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = UIWindowSceneActivationRequestOptions;
  v4 = [(UISceneActivationRequestOptions *)&v12 copyWithZone:a3];
  [v4 setPreferredPresentationStyle:{-[UIWindowSceneActivationRequestOptions preferredPresentationStyle](self, "preferredPresentationStyle")}];
  [v4 _setPreferredSizeCategory:{-[UIWindowSceneActivationRequestOptions _preferredSizeCategory](self, "_preferredSizeCategory")}];
  [v4 _setPreserveLayout:{-[UIWindowSceneActivationRequestOptions _preserveLayout](self, "_preserveLayout")}];
  v5 = [(UIWindowSceneActivationRequestOptions *)self _quickLookSceneConfiguration];
  v6 = [v5 copy];
  [v4 _setQuickLookSceneConfiguration:v6];

  v7 = [(UIWindowSceneActivationRequestOptions *)self placement];
  v8 = [v7 copy];
  [v4 setPlacement:v8];

  v9 = [(UIWindowSceneActivationRequestOptions *)self _interactionIdentifier];
  v10 = [v9 copy];
  [v4 _setInteractionIdentifier:v10];

  return v4;
}

- (BOOL)_effectivelyWantsProminence
{
  v3 = [(UIWindowSceneActivationRequestOptions *)self placement];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _requestCenterSlot];
  }

  else
  {
    v5 = [(UIWindowSceneActivationRequestOptions *)self preferredPresentationStyle]== UIWindowScenePresentationStyleProminent;
  }

  return v5;
}

- (BOOL)_effectivelyWantsFullscreen
{
  v3 = [(UIWindowSceneActivationRequestOptions *)self placement];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _requestFullscreen];
  }

  else
  {
    v5 = [(UIWindowSceneActivationRequestOptions *)self _preferredSizeCategory]== 1;
  }

  return v5;
}

- (BOOL)_effectivelyWantsPreservedLayout
{
  v3 = [(UIWindowSceneActivationRequestOptions *)self placement];
  v4 = v3;
  if (!v3)
  {
    v3 = self;
  }

  v5 = [v3 _preserveLayout];

  return v5;
}

- (BOOL)_effectivelyWantsBackground
{
  v2 = [(UIWindowSceneActivationRequestOptions *)self placement];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 _requestBackground];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v12.receiver = self;
  v12.super_class = UIWindowSceneActivationRequestOptions;
  v4 = a3;
  v5 = [(UISceneActivationRequestOptions *)&v12 descriptionBuilderWithMultilinePrefix:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__UIWindowSceneActivationRequestOptions_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:&stru_1EFB14550 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

uint64_t __79__UIWindowSceneActivationRequestOptions_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) placement];
  v4 = [v2 appendObject:v3 withName:@"UIWindowScene-Specific" skipIfNil:1];

  result = [*(a1 + 40) preferredPresentationStyle];
  if (result)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) preferredPresentationStyle];
    v8 = @"UIWindowScenePresentationStyleAutomatic";
    if (v7 == 1)
    {
      v8 = @"UIWindowScenePresentationStyleStandard";
    }

    if (v7 == 2)
    {
      v9 = @"UIWindowScenePresentationStyleProminent";
    }

    else
    {
      v9 = v8;
    }

    return [v6 appendString:v9 withName:@"preferredPresentationStyle"];
  }

  return result;
}

@end