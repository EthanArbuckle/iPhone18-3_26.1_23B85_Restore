@interface SBUISystemApertureElementConfiguration
- (BOOL)SBUISA_attachedMinimalViewRequiresZeroPadding;
- (BOOL)_elementRequiresConstraintBasedLayout;
- (BOOL)_elementSupportsDynamicResizing;
- (BOOL)attachedMinimalViewRequiresZeroPadding;
- (BOOL)hasMenuPresentation;
- (BOOL)isRegisteredForCapture;
- (BOOL)isSecureFlipBookElement;
- (BOOL)prefersFixedPortraitOrientation;
- (BOOL)preventsAutomaticDismissal;
- (BOOL)preventsInteractiveDismissal;
- (BSAction)launchAction;
- (BSMutableSettings)_storage;
- (BSSettings)otherSceneClientSettingsRepresentation;
- (CGSize)maximumAccessoryViewSizeForLayoutMode:(int64_t)mode;
- (CGSize)preferredContentSizeClampedToMaximumExpandedSize;
- (CGSize)preferredCustomAspectRatio;
- (NSDirectionalEdgeInsets)preferredOutsetsFromUnsafeArea;
- (NSSet)backgroundActivitiesToSuppress;
- (NSString)associatedAppBundleIdentifier;
- (NSString)associatedScenePersistenceIdentifier;
- (NSString)elementIdentifier;
- (NSURL)launchURL;
- (NSValue)preferredPaddingForCompactLayout;
- (SBUISystemApertureElement)elementViewController;
- (UIColor)keyColor;
- (UIViewController)containerViewController;
- (id)preferredComponentStates;
- (id)preferredConfiguration;
- (id)recordableConfigurations;
- (id)symmetricalConfigurations;
- (int64_t)appliedLayoutMode;
- (int64_t)contentRole;
- (int64_t)maximumLayoutMode;
- (int64_t)minimumLayoutMode;
- (int64_t)preferredCustomLayout;
- (int64_t)preferredLayoutMode;
- (unint64_t)presentationBehaviors;
- (void)_updateStorageForViewProperties;
- (void)_updateStorageForViewPropertiesIfNeeded;
- (void)setAppliedLayoutMode:(int64_t)mode;
- (void)setAssociatedAppBundleIdentifier:(id)identifier;
- (void)setAssociatedScenePersistenceIdentifier:(id)identifier;
- (void)setAttachedMinimalViewRequiresZeroPadding:(BOOL)padding;
- (void)setBackgroundActivitiesToSuppress:(id)suppress;
- (void)setContentRole:(int64_t)role;
- (void)setElementIdentifier:(id)identifier;
- (void)setHasMenuPresentation:(BOOL)presentation;
- (void)setIsRegisteredForCapture:(BOOL)capture;
- (void)setIsSecureFlipBookElement:(BOOL)element;
- (void)setKeyColor:(id)color;
- (void)setLaunchAction:(id)action;
- (void)setLaunchURL:(id)l;
- (void)setMaximumLayoutMode:(int64_t)mode;
- (void)setMinimumLayoutMode:(int64_t)mode;
- (void)setPreferredComponentStates:(id)states;
- (void)setPreferredConfiguration:(id)configuration;
- (void)setPreferredCustomAspectRatio:(CGSize)ratio;
- (void)setPreferredCustomLayout:(int64_t)layout;
- (void)setPreferredHeightForBottomSafeArea:(double)area;
- (void)setPreferredLayoutMode:(int64_t)mode;
- (void)setPreferredOutsetsfromUnsafeArea:(NSDirectionalEdgeInsets)area;
- (void)setPreferredPaddingForCompactLayout:(id)layout;
- (void)setPrefersFixedPortraitOrientation:(BOOL)orientation;
- (void)setPresentationBehaviors:(unint64_t)behaviors;
- (void)setPreventsAutomaticDismissal:(BOOL)dismissal;
- (void)setPreventsInteractiveDismissal:(BOOL)dismissal;
- (void)setRecordableConfigurations:(id)configurations;
- (void)setShouldDeferViewSizingPreferenceUpdates:(BOOL)updates;
- (void)setSymmetricalConfigurations:(id)configurations;
- (void)validateConfiguration;
@end

@implementation SBUISystemApertureElementConfiguration

- (UIViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (SBUISystemApertureElement)elementViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_elementViewController);

  return WeakRetained;
}

- (NSString)elementIdentifier
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_stringforSetting:3213046];

  return v3;
}

- (BSMutableSettings)_storage
{
  storage = self->__storage;
  if (!storage)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698E700]);
    v5 = self->__storage;
    self->__storage = v4;

    storage = self->__storage;
  }

  return storage;
}

- (int64_t)contentRole
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_contentRoleforSetting:3213021];

  return v3;
}

- (int64_t)preferredLayoutMode
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_layoutModeforSetting:3213022];

  return v3;
}

- (int64_t)maximumLayoutMode
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_layoutModeforSetting:3213024];

  return v3;
}

- (int64_t)minimumLayoutMode
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_layoutModeforSetting:3213023];

  return v3;
}

- (BOOL)preventsInteractiveDismissal
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage objectForSetting:3213051];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)preventsAutomaticDismissal
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage objectForSetting:3213052];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSString)associatedScenePersistenceIdentifier
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_stringforSetting:3213026];

  return v3;
}

- (unint64_t)presentationBehaviors
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_presentationBehaviorsForSetting:3213042];

  return v3;
}

- (NSString)associatedAppBundleIdentifier
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_stringforSetting:3213040];

  return v3;
}

- (NSURL)launchURL
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_URLforSetting:3213054];

  return v3;
}

- (BSAction)launchAction
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_BSActionforSetting:3213055];

  return v3;
}

- (NSSet)backgroundActivitiesToSuppress
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_backgroundActivityIdentifiersForSetting:3213037];

  return v3;
}

- (UIColor)keyColor
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_UIColorForSetting:3213053];

  return v3;
}

- (BOOL)hasMenuPresentation
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage objectForSetting:3213041];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (int64_t)appliedLayoutMode
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_layoutModeforSetting:3213025];

  return v3;
}

- (BOOL)attachedMinimalViewRequiresZeroPadding
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage BOOLForSetting:3213044];

  return v3;
}

- (BOOL)prefersFixedPortraitOrientation
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage BOOLForSetting:3213045];

  return v3;
}

- (void)_updateStorageForViewPropertiesIfNeeded
{
  if (![(SBUISystemApertureElementConfiguration *)self shouldDeferViewSizingPreferenceUpdates])
  {

    [(SBUISystemApertureElementConfiguration *)self _updateStorageForViewProperties];
  }
}

- (void)_updateStorageForViewProperties
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBUISystemApertureElementConfiguration.m" lineNumber:552 description:@"Elements that don't support dynamic layout must implement -[SBUISystemApertureElement preferredHeightForBottomSafeArea]"];
}

void __73__SBUISystemApertureElementConfiguration__updateStorageForViewProperties__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a2;
  v10 = (a1 + 32);
  v11 = [*(a1 + 32) _elementSupportsDynamicResizing];
  v12 = [*(a1 + 32) _strongElementViewController];
  v13 = [v12 activeLayoutMode];

  [*(a1 + 40) SBUISA_CGSizeforSetting:a5];
  v16 = *MEMORY[0x1E695F060];
  v15 = *(MEMORY[0x1E695F060] + 8);
  v18 = v15 == v17 && *MEMORY[0x1E695F060] == v14;
  v51 = v18;
  v19 = v13 == a3 || v18;
  if (!v11)
  {
    v19 = v53 != 0;
  }

  if (v53)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = [v53 layer];
  RenderId = CALayerGetRenderId();

  if (RenderId != [*(a1 + 40) SBUISA_renderingIdforSetting:a4])
  {
    [*(a1 + 40) SBUISA_setRenderingid:RenderId forSetting:a4];
    [*(a1 + 32) _invalidateOtherSceneClientSettingsRepresentation];
  }

  if (v20)
  {
    [*(a1 + 40) SBUISA_CGSizeforSetting:a5];
    v24 = v23;
    v26 = v25;
    [*(a1 + 32) maximumAccessoryViewSizeForLayoutMode:a3];
    v28 = v27;
    v30 = v29;
    if ([*(a1 + 32) _elementSupportsDynamicResizing])
    {
      if (![v53 translatesAutoresizingMaskIntoConstraints])
      {
        v43 = [*v10 _strongElementViewController];
        v44 = [v43 activeLayoutMode];

        if (v44 == a3)
        {
          [v53 frame];
          v24 = v45;
          v26 = v46;
        }

        else if (v51)
        {
          [v53 intrinsicContentSize];
          v49 = v16 == v47;
          v50 = v15 == v48;
          if (v49 && v50)
          {
            v26 = 1.0;
          }

          else
          {
            v26 = v48;
          }

          if (v49 && v50)
          {
            v24 = 1.0;
          }

          else
          {
            v24 = v47;
          }
        }

        goto LABEL_21;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        [v53 sizeThatFits:{v28, v30}];
LABEL_20:
        v24 = v31;
        v26 = v32;
LABEL_21:
        if ((a5 - 3213027) <= 1)
        {
          if ([*v10 _elementSupportsDynamicResizing])
          {
            v33 = 0.0;
          }

          else
          {
            v33 = 8.0;
          }

          [v53 SBUISA_maximumAccessoryViewWidth];
          v35 = v34 - v33;
          if (v35 >= v24)
          {
            v35 = v24;
          }

          v24 = fmax(v35, 0.0);
        }

        [*(a1 + 40) SBUISA_CGSizeforSetting:a5];
        if (v24 != v37 || v26 != v36)
        {
          [*(a1 + 40) SBUISA_setCGSize:a5 forSetting:{v24, v26}];
          [*(a1 + 32) _invalidateOtherSceneClientSettingsRepresentation];
        }

        goto LABEL_31;
      }
    }

    else if ([*v10 minimumLayoutMode] != 4 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      __73__SBUISystemApertureElementConfiguration__updateStorageForViewProperties__block_invoke_cold_1(a1, (a1 + 32));
    }

    [v53 sizeThatFits:a3 forLayoutMode:{v28, v30}];
    goto LABEL_20;
  }

LABEL_31:
  v38 = [v53 accessibilityLabel];
  v39 = [*(a1 + 40) SBUISA_stringforSetting:a6];
  v40 = BSEqualStrings();

  if ((v40 & 1) == 0)
  {
    v41 = *(a1 + 40);
    v42 = [v53 accessibilityLabel];
    [v41 SBUISA_setString:v42 forSetting:a6];

    [*(a1 + 32) _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (BOOL)_elementSupportsDynamicResizing
{
  _strongElementViewController = [(SBUISystemApertureElementConfiguration *)self _strongElementViewController];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (NSDirectionalEdgeInsets)preferredOutsetsFromUnsafeArea
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  [_storage SBUISA_directionalEdgeInsetsforSetting:3213036];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.trailing = v14;
  result.bottom = v13;
  result.leading = v12;
  result.top = v11;
  return result;
}

- (NSValue)preferredPaddingForCompactLayout
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage objectForSetting:3213043];

  return v3;
}

- (void)validateConfiguration
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__3;
  v33 = __Block_byref_object_dispose__3;
  v34 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __63__SBUISystemApertureElementConfiguration_validateConfiguration__block_invoke;
  v28[3] = &unk_1E789F758;
  v28[4] = &v29;
  v4 = MEMORY[0x1AC58E960](v28);
  leadingView = [(SBUISystemApertureElementConfiguration *)self leadingView];

  trailingView = [(SBUISystemApertureElementConfiguration *)self trailingView];

  minimalView = [(SBUISystemApertureElementConfiguration *)self minimalView];

  if (trailingView)
  {
    v8 = leadingView != 0;
  }

  else
  {
    v8 = 0;
  }

  if (minimalView)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (leadingView || trailingView || minimalView)
  {
    if (v9)
    {
      leadingView2 = [(SBUISystemApertureElementConfiguration *)self leadingView];
      trailingView2 = [(SBUISystemApertureElementConfiguration *)self trailingView];

      if (leadingView2 != trailingView2)
      {
        goto LABEL_25;
      }

      v12 = @"Leading and trailing views must not be identical.";
      goto LABEL_24;
    }

    if (leadingView && !trailingView)
    {
      v12 = @"If you specify a leading view you must provide a trailing view.";
LABEL_24:
      (v4)[2](v4, v12);
      goto LABEL_25;
    }

    if (trailingView)
    {
      v13 = leadingView != 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v12 = @"If you specify a trailing view you must provide a leading view.";
      goto LABEL_24;
    }

    if (!minimalView && [(SBUISystemApertureElementConfiguration *)self minimumLayoutMode]== 2)
    {
      v12 = @"If you support minimal layout you must provide a minimal view.";
      goto LABEL_24;
    }
  }

LABEL_25:
  if (![(SBUISystemApertureElementConfiguration *)self contentRole])
  {
    (v4)[2](v4, @"invalid content role");
  }

  preferredLayoutMode = [(SBUISystemApertureElementConfiguration *)self preferredLayoutMode];
  if (preferredLayoutMode < [(SBUISystemApertureElementConfiguration *)self minimumLayoutMode]&& [(SBUISystemApertureElementConfiguration *)self preferredLayoutMode]!= -1)
  {
    (v4)[2](v4, @"preferred layout mode must be greater than or equal to the minimum layout mode");
  }

  maximumLayoutMode = [(SBUISystemApertureElementConfiguration *)self maximumLayoutMode];
  if (maximumLayoutMode < [(SBUISystemApertureElementConfiguration *)self minimumLayoutMode])
  {
    (v4)[2](v4, @"maximum layout mode must be greater than or equal to the minimum layout mode");
  }

  preferredLayoutMode2 = [(SBUISystemApertureElementConfiguration *)self preferredLayoutMode];
  if (preferredLayoutMode2 > [(SBUISystemApertureElementConfiguration *)self maximumLayoutMode])
  {
    (v4)[2](v4, @"preferred layout mode must be less than or equal to the maximum layout mode");
  }

  if ([(SBUISystemApertureElementConfiguration *)self minimumLayoutMode]== 2 && !v9)
  {
    (v4)[2](v4, @"if your minimum layout mode is .minimal, you must specify all accessory views");
  }

  if ([(SBUISystemApertureElementConfiguration *)self minimumLayoutMode]== 3)
  {
    leadingView3 = [(SBUISystemApertureElementConfiguration *)self leadingView];
    if (!leadingView3 || ([(SBUISystemApertureElementConfiguration *)self trailingView], v18 = objc_claimAutoreleasedReturnValue(), v18, leadingView3, !v18))
    {
      (v4)[2](v4, @"if your minimum layout mode is .compact, you must specify leading and trailing views");
    }
  }

  if ([(SBUISystemApertureElementConfiguration *)self _elementSupportsDynamicResizing])
  {
    minimalView2 = [(SBUISystemApertureElementConfiguration *)self minimalView];
    leadingView4 = [(SBUISystemApertureElementConfiguration *)self leadingView];
    if ([minimalView2 isEqual:leadingView4])
    {
    }

    else
    {
      minimalView3 = [(SBUISystemApertureElementConfiguration *)self minimalView];
      trailingView3 = [(SBUISystemApertureElementConfiguration *)self trailingView];
      v23 = [minimalView3 isEqual:trailingView3];

      if (!v23)
      {
        goto LABEL_45;
      }
    }

    (v4)[2](v4, @"If you support dynamic resizing, you  must also provide a unique minimal view");
  }

LABEL_45:
  if ([v30[5] count])
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = [v30[5] componentsJoinedByString:@" | "];
    v26 = [v24 stringWithFormat:@"Invalid config: %@ %@", self, v25];

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBUISystemApertureElementConfiguration.m" lineNumber:640 description:v26];
  }

  _Block_object_dispose(&v29, 8);
}

- (BSSettings)otherSceneClientSettingsRepresentation
{
  [(SBUISystemApertureElementConfiguration *)self _updateStorageForViewPropertiesIfNeeded];
  otherSceneClientSettingsRepresentation = self->_otherSceneClientSettingsRepresentation;
  if (!otherSceneClientSettingsRepresentation)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    v5 = [_storage copy];
    v6 = self->_otherSceneClientSettingsRepresentation;
    self->_otherSceneClientSettingsRepresentation = v5;

    otherSceneClientSettingsRepresentation = self->_otherSceneClientSettingsRepresentation;
  }

  return otherSceneClientSettingsRepresentation;
}

- (BOOL)SBUISA_attachedMinimalViewRequiresZeroPadding
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage objectForSetting:3213044];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (CGSize)preferredCustomAspectRatio
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  [_storage SBUISA_CGSizeforSetting:3213038];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (int64_t)preferredCustomLayout
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_customLayoutModeforSetting:3213039];

  return v3;
}

- (void)setElementIdentifier:(id)identifier
{
  identifierCopy = identifier;
  elementIdentifier = [(SBUISystemApertureElementConfiguration *)self elementIdentifier];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setString:identifierCopy forSetting:3213046];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (BOOL)isSecureFlipBookElement
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage BOOLForSetting:3213056];

  return v3;
}

- (BOOL)isRegisteredForCapture
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage BOOLForSetting:3213057];

  return v3;
}

- (id)recordableConfigurations
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_secureFlipBookElementConfigurationsForSetting:3213058];

  return v3;
}

- (id)symmetricalConfigurations
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_secureFlipBookElementSymmetricalConfigurationsForSetting:3213059];

  return v3;
}

- (id)preferredConfiguration
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_stringforSetting:3213060];

  return v3;
}

- (id)preferredComponentStates
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v3 = [_storage SBUISA_componentStatesForSetting:3213061];

  return v3;
}

- (void)setContentRole:(int64_t)role
{
  if ([(SBUISystemApertureElementConfiguration *)self contentRole]!= role)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setContentRole:role forSetting:3213021];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setPreferredLayoutMode:(int64_t)mode
{
  if ([(SBUISystemApertureElementConfiguration *)self preferredLayoutMode]!= mode)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setLayoutMode:mode forSetting:3213022];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setMinimumLayoutMode:(int64_t)mode
{
  if ([(SBUISystemApertureElementConfiguration *)self minimumLayoutMode]!= mode)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setLayoutMode:mode forSetting:3213023];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setMaximumLayoutMode:(int64_t)mode
{
  if ([(SBUISystemApertureElementConfiguration *)self maximumLayoutMode]!= mode)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setLayoutMode:mode forSetting:3213024];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setAppliedLayoutMode:(int64_t)mode
{
  if ([(SBUISystemApertureElementConfiguration *)self appliedLayoutMode]!= mode)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setLayoutMode:mode forSetting:3213025];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setPreferredHeightForBottomSafeArea:(double)area
{
  [(SBUISystemApertureElementConfiguration *)self preferredHeightForBottomSafeArea];
  if (v5 != area)
  {

    [(SBUISystemApertureElementConfiguration *)self setPreferredOutsetsfromUnsafeArea:0.0, -1000.0, -area, -1000.0];
  }
}

- (void)setPreferredOutsetsfromUnsafeArea:(NSDirectionalEdgeInsets)area
{
  trailing = area.trailing;
  bottom = area.bottom;
  leading = area.leading;
  top = area.top;
  [(SBUISystemApertureElementConfiguration *)self preferredOutsetsFromUnsafeArea];
  if (leading != v11 || top != v8 || trailing != v10 || bottom != v9)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setDirectionalEdgeInsets:3213036 forSetting:{top, leading, bottom, trailing}];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setPreferredPaddingForCompactLayout:(id)layout
{
  layoutCopy = layout;
  preferredPaddingForCompactLayout = [(SBUISystemApertureElementConfiguration *)self preferredPaddingForCompactLayout];
  [layoutCopy directionalEdgeInsetsValue];
  [preferredPaddingForCompactLayout directionalEdgeInsetsValue];
  if (!BSFloatApproximatelyEqualToFloat() || (v5 = BSFloatApproximatelyEqualToFloat(), (layoutCopy == 0) == (preferredPaddingForCompactLayout != 0)) || (v5 & 1) == 0)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage setObject:layoutCopy forSetting:3213043];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setAttachedMinimalViewRequiresZeroPadding:(BOOL)padding
{
  paddingCopy = padding;
  if ([(SBUISystemApertureElementConfiguration *)self attachedMinimalViewRequiresZeroPadding]!= padding)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:paddingCopy];
    [_storage setObject:v6 forSetting:3213044];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setPrefersFixedPortraitOrientation:(BOOL)orientation
{
  orientationCopy = orientation;
  if ([(SBUISystemApertureElementConfiguration *)self prefersFixedPortraitOrientation]!= orientation)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:orientationCopy];
    [_storage setObject:v6 forSetting:3213045];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setAssociatedScenePersistenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  associatedScenePersistenceIdentifier = [(SBUISystemApertureElementConfiguration *)self associatedScenePersistenceIdentifier];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setString:identifierCopy forSetting:3213026];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setAssociatedAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  associatedAppBundleIdentifier = [(SBUISystemApertureElementConfiguration *)self associatedAppBundleIdentifier];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setString:identifierCopy forSetting:3213040];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setLaunchURL:(id)l
{
  lCopy = l;
  launchURL = [(SBUISystemApertureElementConfiguration *)self launchURL];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setURL:lCopy forSetting:3213054];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setLaunchAction:(id)action
{
  actionCopy = action;
  launchAction = [(SBUISystemApertureElementConfiguration *)self launchAction];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setBSAction:actionCopy forSetting:3213055];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setBackgroundActivitiesToSuppress:(id)suppress
{
  suppressCopy = suppress;
  backgroundActivitiesToSuppress = [(SBUISystemApertureElementConfiguration *)self backgroundActivitiesToSuppress];
  v5 = BSEqualSets();

  if ((v5 & 1) == 0)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setBackgroundActivityIdentifiers:suppressCopy forSetting:3213037];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setPreferredCustomAspectRatio:(CGSize)ratio
{
  height = ratio.height;
  width = ratio.width;
  [(SBUISystemApertureElementConfiguration *)self preferredCustomAspectRatio];
  if (width != v7 || height != v6)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setCGSize:3213038 forSetting:{width, height}];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setPreferredCustomLayout:(int64_t)layout
{
  if ([(SBUISystemApertureElementConfiguration *)self preferredCustomLayout]!= layout)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setCustomLayout:layout forSetting:3213039];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setHasMenuPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  if ([(SBUISystemApertureElementConfiguration *)self hasMenuPresentation]!= presentation)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:presentationCopy];
    [_storage setObject:v6 forSetting:3213041];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setPresentationBehaviors:(unint64_t)behaviors
{
  _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
  v6 = [_storage SBUISA_presentationBehaviorsForSetting:3213042];

  if (v6 != behaviors)
  {
    _storage2 = [(SBUISystemApertureElementConfiguration *)self _storage];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:behaviors];
    [_storage2 setObject:v8 forSetting:3213042];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setPreventsInteractiveDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  if ([(SBUISystemApertureElementConfiguration *)self preventsInteractiveDismissal]!= dismissal)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:dismissalCopy];
    [_storage setObject:v6 forSetting:3213051];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setPreventsAutomaticDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  if ([(SBUISystemApertureElementConfiguration *)self preventsAutomaticDismissal]!= dismissal)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:dismissalCopy];
    [_storage setObject:v6 forSetting:3213052];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setKeyColor:(id)color
{
  colorCopy = color;
  keyColor = [(SBUISystemApertureElementConfiguration *)self keyColor];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setUIColor:colorCopy forSetting:3213053];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setIsSecureFlipBookElement:(BOOL)element
{
  elementCopy = element;
  if ([(SBUISystemApertureElementConfiguration *)self isSecureFlipBookElement]!= element)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:elementCopy];
    [_storage setObject:v6 forSetting:3213056];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setIsRegisteredForCapture:(BOOL)capture
{
  captureCopy = capture;
  if ([(SBUISystemApertureElementConfiguration *)self isRegisteredForCapture]!= capture)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:captureCopy];
    [_storage setObject:v6 forSetting:3213057];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setRecordableConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  recordableConfigurations = [(SBUISystemApertureElementConfiguration *)self recordableConfigurations];
  v5 = BSEqualArrays();

  if ((v5 & 1) == 0)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setSecureFlipBookElementConfigurations:configurationsCopy forSetting:3213058];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setSymmetricalConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  symmetricalConfigurations = [(SBUISystemApertureElementConfiguration *)self symmetricalConfigurations];
  v5 = BSEqualDictionaries();

  if ((v5 & 1) == 0)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setSecureFlipBookElementSymmetricalConfigurations:configurationsCopy forSetting:3213059];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setPreferredConfiguration:(id)configuration
{
  configurationCopy = configuration;
  preferredConfiguration = [(SBUISystemApertureElementConfiguration *)self preferredConfiguration];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setString:configurationCopy forSetting:3213060];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (void)setPreferredComponentStates:(id)states
{
  statesCopy = states;
  preferredComponentStates = [(SBUISystemApertureElementConfiguration *)self preferredComponentStates];
  v5 = BSEqualDictionaries();

  if ((v5 & 1) == 0)
  {
    _storage = [(SBUISystemApertureElementConfiguration *)self _storage];
    [_storage SBUISA_setComponentStates:statesCopy forSetting:3213061];

    [(SBUISystemApertureElementConfiguration *)self _invalidateOtherSceneClientSettingsRepresentation];
  }
}

- (BOOL)_elementRequiresConstraintBasedLayout
{
  _strongElementViewController = [(SBUISystemApertureElementConfiguration *)self _strongElementViewController];
  if ([_strongElementViewController isViewLoaded])
  {
    _strongElementViewController2 = [(SBUISystemApertureElementConfiguration *)self _strongElementViewController];
    viewIfLoaded = [_strongElementViewController2 viewIfLoaded];
    v6 = [viewIfLoaded translatesAutoresizingMaskIntoConstraints] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)setShouldDeferViewSizingPreferenceUpdates:(BOOL)updates
{
  if (self->_shouldDeferViewSizingPreferenceUpdates != updates)
  {
    self->_shouldDeferViewSizingPreferenceUpdates = updates;
  }
}

- (CGSize)maximumAccessoryViewSizeForLayoutMode:(int64_t)mode
{
  containerViewController = [(SBUISystemApertureElementConfiguration *)self containerViewController];
  view = [containerViewController view];

  if (mode == 2)
  {
    [view bounds];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v10 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
    [v10 maximumLeadingTrailingViewSize];
    v7 = v11;
    v9 = v12;
  }

  v13 = v7;
  v14 = v9;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)preferredContentSizeClampedToMaximumExpandedSize
{
  elementViewController = [(SBUISystemApertureElementConfiguration *)self elementViewController];
  v3 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
  [v3 maximumExpandedSize];
  v5 = v4;
  v7 = v6;

  [elementViewController preferredContentSize];
  if (v8 <= v5)
  {
    v5 = v8;
  }

  if (v9 <= v7)
  {
    v7 = v9;
  }

  v10 = v5;
  v11 = v7;
  result.height = v11;
  result.width = v10;
  return result;
}

void __63__SBUISystemApertureElementConfiguration_validateConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 length])
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    if (!v3)
    {
      v4 = [MEMORY[0x1E695DF70] array];
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v3 addObject:v7];
  }
}

void __73__SBUISystemApertureElementConfiguration__updateStorageForViewProperties__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"SBUISystemApertureElementConfiguration.m" lineNumber:461 description:@"Elements that don't support dynamic layout must supply accessory views that implement -[SBUISystemApertureAccessoryView sizeThatFits:forLayoutMode:]"];
}

@end