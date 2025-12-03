@interface UIWindowSceneActivationRequestOptions
- (BOOL)_effectivelyWantsBackground;
- (BOOL)_effectivelyWantsFullscreen;
- (BOOL)_effectivelyWantsPreservedLayout;
- (BOOL)_effectivelyWantsProminence;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (void)_setQuickLookSceneConfiguration:(id)configuration;
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

- (void)_setQuickLookSceneConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = configurationCopy;
  if (configurationCopy)
  {
    role = [(UISceneConfiguration *)configurationCopy role];
    v8 = [role isEqualToString:@"UISceneSessionRoleQuickLook"];

    if ((v8 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      role2 = [(UISceneConfiguration *)v6 role];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindowSceneActivationRequestOptions.m" lineNumber:42 description:{@"BUG IN CLIENT OF UIKIT: Attempting to set an internal scene configuration with an incorrect role. Expected %@, Received: %@", @"UISceneSessionRoleQuickLook", role2}];
    }
  }

  quickLookSceneConfiguration = self->_quickLookSceneConfiguration;
  self->_quickLookSceneConfiguration = v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = UIWindowSceneActivationRequestOptions;
  v4 = [(UISceneActivationRequestOptions *)&v12 copyWithZone:zone];
  [v4 setPreferredPresentationStyle:{-[UIWindowSceneActivationRequestOptions preferredPresentationStyle](self, "preferredPresentationStyle")}];
  [v4 _setPreferredSizeCategory:{-[UIWindowSceneActivationRequestOptions _preferredSizeCategory](self, "_preferredSizeCategory")}];
  [v4 _setPreserveLayout:{-[UIWindowSceneActivationRequestOptions _preserveLayout](self, "_preserveLayout")}];
  _quickLookSceneConfiguration = [(UIWindowSceneActivationRequestOptions *)self _quickLookSceneConfiguration];
  v6 = [_quickLookSceneConfiguration copy];
  [v4 _setQuickLookSceneConfiguration:v6];

  placement = [(UIWindowSceneActivationRequestOptions *)self placement];
  v8 = [placement copy];
  [v4 setPlacement:v8];

  _interactionIdentifier = [(UIWindowSceneActivationRequestOptions *)self _interactionIdentifier];
  v10 = [_interactionIdentifier copy];
  [v4 _setInteractionIdentifier:v10];

  return v4;
}

- (BOOL)_effectivelyWantsProminence
{
  placement = [(UIWindowSceneActivationRequestOptions *)self placement];
  v4 = placement;
  if (placement)
  {
    _requestCenterSlot = [placement _requestCenterSlot];
  }

  else
  {
    _requestCenterSlot = [(UIWindowSceneActivationRequestOptions *)self preferredPresentationStyle]== UIWindowScenePresentationStyleProminent;
  }

  return _requestCenterSlot;
}

- (BOOL)_effectivelyWantsFullscreen
{
  placement = [(UIWindowSceneActivationRequestOptions *)self placement];
  v4 = placement;
  if (placement)
  {
    _requestFullscreen = [placement _requestFullscreen];
  }

  else
  {
    _requestFullscreen = [(UIWindowSceneActivationRequestOptions *)self _preferredSizeCategory]== 1;
  }

  return _requestFullscreen;
}

- (BOOL)_effectivelyWantsPreservedLayout
{
  selfCopy = [(UIWindowSceneActivationRequestOptions *)self placement];
  v4 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  _preserveLayout = [selfCopy _preserveLayout];

  return _preserveLayout;
}

- (BOOL)_effectivelyWantsBackground
{
  placement = [(UIWindowSceneActivationRequestOptions *)self placement];
  v3 = placement;
  if (placement)
  {
    _requestBackground = [placement _requestBackground];
  }

  else
  {
    _requestBackground = 0;
  }

  return _requestBackground;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = UIWindowSceneActivationRequestOptions;
  prefixCopy = prefix;
  v5 = [(UISceneActivationRequestOptions *)&v12 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__UIWindowSceneActivationRequestOptions_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:&stru_1EFB14550 multilinePrefix:prefixCopy block:v9];

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