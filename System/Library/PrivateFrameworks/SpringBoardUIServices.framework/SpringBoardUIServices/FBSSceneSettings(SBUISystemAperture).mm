@interface FBSSceneSettings(SBUISystemAperture)
- (double)SBUISA_containerViewFrame;
- (double)SBUISA_obstructedAreaLayoutFrame;
- (double)SBUISA_resolvedDetachedMinimalViewFrame;
- (double)SBUISA_resolvedLeadingViewFrame;
- (double)SBUISA_resolvedMinimalViewFrame;
- (double)SBUISA_resolvedTrailingViewFrame;
- (id)SBUISA_secureFlipBookActiveComponentStates;
- (id)SBUISA_secureFlipBookActiveConfiguration;
- (id)SBUI_systemApertureDescription;
- (id)SBUI_systemApertureDescriptionOfDiffFromSettings:()SBUISystemAperture;
- (uint64_t)SBUISA_isBeingRemoved;
- (uint64_t)SBUISA_isSecureFlipBookInRecordingMode;
- (uint64_t)SBUISA_layoutMode;
- (uint64_t)SBUISA_minimalViewLayoutAxis;
@end

@implementation FBSSceneSettings(SBUISystemAperture)

- (uint64_t)SBUISA_layoutMode
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_layoutModeforSetting:3213009];

  return v2;
}

- (double)SBUISA_containerViewFrame
{
  otherSettings = [self otherSettings];
  [otherSettings SBUISA_CGRectforSetting:3213010];
  v3 = v2;

  return v3;
}

- (double)SBUISA_obstructedAreaLayoutFrame
{
  otherSettings = [self otherSettings];
  [otherSettings SBUISA_CGRectforSetting:3213015];
  v3 = v2;

  return v3;
}

- (double)SBUISA_resolvedLeadingViewFrame
{
  otherSettings = [self otherSettings];
  [otherSettings SBUISA_CGRectforSetting:3213011];
  v3 = v2;

  return v3;
}

- (double)SBUISA_resolvedTrailingViewFrame
{
  otherSettings = [self otherSettings];
  [otherSettings SBUISA_CGRectforSetting:3213012];
  v3 = v2;

  return v3;
}

- (double)SBUISA_resolvedMinimalViewFrame
{
  otherSettings = [self otherSettings];
  [otherSettings SBUISA_CGRectforSetting:3213013];
  v3 = v2;

  return v3;
}

- (double)SBUISA_resolvedDetachedMinimalViewFrame
{
  otherSettings = [self otherSettings];
  [otherSettings SBUISA_CGRectforSetting:3213014];
  v3 = v2;

  return v3;
}

- (uint64_t)SBUISA_minimalViewLayoutAxis
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:3213016];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (uint64_t)SBUISA_isBeingRemoved
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:3213017];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)SBUISA_isSecureFlipBookInRecordingMode
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:3213018];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)SBUISA_secureFlipBookActiveConfiguration
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_stringforSetting:3213019];

  return v2;
}

- (id)SBUISA_secureFlipBookActiveComponentStates
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings SBUISA_componentStatesForSetting:3213020];

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