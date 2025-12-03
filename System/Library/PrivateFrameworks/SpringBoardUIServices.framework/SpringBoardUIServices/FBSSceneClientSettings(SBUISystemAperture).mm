@interface FBSSceneClientSettings(SBUISystemAperture)
- (BOOL)SBUISA_specifiesPreferredPaddingForCompactLayout;
- (double)SBUISA_customLayoutPreferredOutsetsFromUnsafeArea;
- (double)SBUISA_preferredCustomAspectRatio;
- (double)SBUISA_preferredDetachedMinimalViewSize;
- (double)SBUISA_preferredLeadingViewSize;
- (double)SBUISA_preferredMinimalViewSize;
- (double)SBUISA_preferredPaddingForCompactLayout;
- (double)SBUISA_preferredTrailingViewSize;
- (id)SBUISA_associatedAppBundleIdentifier;
- (id)SBUISA_associatedScenePersistenceIdentifier;
- (id)SBUISA_backgroundActivitiesToSuppress;
- (id)SBUISA_detachedMinimalViewAccessibilityLabel;
- (id)SBUISA_elementIdentifier;
- (id)SBUISA_keyColor;
- (id)SBUISA_launchAction;
- (id)SBUISA_launchURL;
- (id)SBUISA_leadingViewAccessibilityLabel;
- (id)SBUISA_minimalViewAccessibilityLabel;
- (id)SBUISA_secureFlipBookPreferredComponentStates;
- (id)SBUISA_secureFlipBookPreferredConfiguration;
- (id)SBUISA_secureFlipBookRecordableConfigurations;
- (id)SBUISA_secureFlipBookSymmetricalConfigurations;
- (id)SBUISA_trailingViewAccessibilityLabel;
- (id)SBUI_systemApertureDescription;
- (id)SBUI_systemApertureDescriptionOfDiffFromSettings:()SBUISystemAperture;
- (uint64_t)SBUISA_appliedLayoutMode;
- (uint64_t)SBUISA_attachedMinimalViewRequiresZeroPadding;
- (uint64_t)SBUISA_contentRole;
- (uint64_t)SBUISA_contextId;
- (uint64_t)SBUISA_detachedMinimalViewRenderingId;
- (uint64_t)SBUISA_hasMenuPresentation;
- (uint64_t)SBUISA_isSecureFlipBookElement;
- (uint64_t)SBUISA_isSecureFlipBookElementRegisteredForCapture;
- (uint64_t)SBUISA_leadingViewRenderingId;
- (uint64_t)SBUISA_maximumLayoutMode;
- (uint64_t)SBUISA_minimalViewRenderingId;
- (uint64_t)SBUISA_minimumLayoutMode;
- (uint64_t)SBUISA_preferredCustomLayout;
- (uint64_t)SBUISA_preferredLayoutMode;
- (uint64_t)SBUISA_prefersFixedPortraitOrientation;
- (uint64_t)SBUISA_presentationBehaviors;
- (uint64_t)SBUISA_preventsAutomaticDismissal;
- (uint64_t)SBUISA_preventsInteractiveDismissal;
- (uint64_t)SBUISA_trailingViewRenderingId;
@end

@implementation FBSSceneClientSettings(SBUISystemAperture)

- (id)SBUISA_elementIdentifier
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_stringforSetting:3213046];

  return v2;
}

- (uint64_t)SBUISA_contentRole
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_contentRoleforSetting:3213021];

  return v2;
}

- (uint64_t)SBUISA_preferredLayoutMode
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_layoutModeforSetting:3213022];

  return v2;
}

- (uint64_t)SBUISA_minimumLayoutMode
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_layoutModeforSetting:3213023];

  return v2;
}

- (uint64_t)SBUISA_maximumLayoutMode
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_layoutModeforSetting:3213024];

  return v2;
}

- (uint64_t)SBUISA_appliedLayoutMode
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_layoutModeforSetting:3213025];

  return v2;
}

- (id)SBUISA_associatedScenePersistenceIdentifier
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_stringforSetting:3213026];

  return v2;
}

- (id)SBUISA_associatedAppBundleIdentifier
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_stringforSetting:3213040];

  return v2;
}

- (id)SBUISA_launchURL
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_URLforSetting:3213054];

  return v2;
}

- (id)SBUISA_launchAction
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_BSActionforSetting:3213055];

  return v2;
}

- (double)SBUISA_preferredLeadingViewSize
{
  otherSettings = [self otherSettings];
  [otherSettings SBUISA_CGSizeforSetting:3213027];
  v3 = v2;

  return v3;
}

- (double)SBUISA_preferredTrailingViewSize
{
  otherSettings = [self otherSettings];
  [otherSettings SBUISA_CGSizeforSetting:3213028];
  v3 = v2;

  return v3;
}

- (double)SBUISA_preferredMinimalViewSize
{
  otherSettings = [self otherSettings];
  [otherSettings SBUISA_CGSizeforSetting:3213029];
  v3 = v2;

  return v3;
}

- (double)SBUISA_preferredDetachedMinimalViewSize
{
  otherSettings = [self otherSettings];
  [otherSettings SBUISA_CGSizeforSetting:3213030];
  v3 = v2;

  return v3;
}

- (uint64_t)SBUISA_leadingViewRenderingId
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_renderingIdforSetting:3213032];

  return v2;
}

- (uint64_t)SBUISA_trailingViewRenderingId
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_renderingIdforSetting:3213033];

  return v2;
}

- (uint64_t)SBUISA_minimalViewRenderingId
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_renderingIdforSetting:3213034];

  return v2;
}

- (uint64_t)SBUISA_detachedMinimalViewRenderingId
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_renderingIdforSetting:3213035];

  return v2;
}

- (uint64_t)SBUISA_contextId
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_contextIdforSetting:3213031];

  return v2;
}

- (double)SBUISA_customLayoutPreferredOutsetsFromUnsafeArea
{
  otherSettings = [self otherSettings];
  [otherSettings SBUISA_directionalEdgeInsetsforSetting:3213036];
  v3 = v2;

  return v3;
}

- (id)SBUISA_backgroundActivitiesToSuppress
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_backgroundActivityIdentifiersForSetting:3213037];

  return v2;
}

- (double)SBUISA_preferredCustomAspectRatio
{
  otherSettings = [self otherSettings];
  [otherSettings SBUISA_CGSizeforSetting:3213038];
  v3 = v2;

  return v3;
}

- (uint64_t)SBUISA_preferredCustomLayout
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_customLayoutModeforSetting:3213039];

  return v2;
}

- (uint64_t)SBUISA_hasMenuPresentation
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:3213041];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)SBUISA_presentationBehaviors
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_presentationBehaviorsForSetting:3213042];

  return v2;
}

- (BOOL)SBUISA_specifiesPreferredPaddingForCompactLayout
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:3213043];

  if (v2)
  {
    [v2 directionalEdgeInsetsValue];
    v4 = v3 != *MEMORY[0x1E69DE788];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)SBUISA_attachedMinimalViewRequiresZeroPadding
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:3213044];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)SBUISA_prefersFixedPortraitOrientation
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:3213045];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (double)SBUISA_preferredPaddingForCompactLayout
{
  otherSettings = [self otherSettings];
  [otherSettings SBUISA_directionalEdgeInsetsforSetting:3213043];
  v3 = v2;

  return v3;
}

- (uint64_t)SBUISA_preventsInteractiveDismissal
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:3213051];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)SBUISA_preventsAutomaticDismissal
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:3213052];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)SBUISA_leadingViewAccessibilityLabel
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_stringforSetting:3213047];

  return v2;
}

- (id)SBUISA_trailingViewAccessibilityLabel
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_stringforSetting:3213048];

  return v2;
}

- (id)SBUISA_minimalViewAccessibilityLabel
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_stringforSetting:3213049];

  return v2;
}

- (id)SBUISA_detachedMinimalViewAccessibilityLabel
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_stringforSetting:3213050];

  return v2;
}

- (id)SBUISA_keyColor
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_UIColorForSetting:3213053];

  return v2;
}

- (uint64_t)SBUISA_isSecureFlipBookElement
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:3213056];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)SBUISA_isSecureFlipBookElementRegisteredForCapture
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:3213057];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)SBUISA_secureFlipBookRecordableConfigurations
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_secureFlipBookElementConfigurationsForSetting:3213058];

  return v2;
}

- (id)SBUISA_secureFlipBookSymmetricalConfigurations
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_secureFlipBookElementSymmetricalConfigurationsForSetting:3213059];

  return v2;
}

- (id)SBUISA_secureFlipBookPreferredConfiguration
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_stringforSetting:3213060];

  return v2;
}

- (id)SBUISA_secureFlipBookPreferredComponentStates
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_componentStatesForSetting:3213061];

  return v2;
}

- (id)SBUI_systemApertureDescription
{
  otherSettings = [self otherSettings];
  sBUI_systemApertureDescription = [otherSettings SBUI_systemApertureDescription];

  return sBUI_systemApertureDescription;
}

- (id)SBUI_systemApertureDescriptionOfDiffFromSettings:()SBUISystemAperture
{
  v4 = a3;
  otherSettings = [self otherSettings];
  otherSettings2 = [v4 otherSettings];

  v7 = [otherSettings SBUI_systemApertureDescriptionOfDiffFromSettings:otherSettings2];

  return v7;
}

@end