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
  v1 = [a1 otherSettings];
  v2 = [v1 SBUISA_layoutModeforSetting:3213009];

  return v2;
}

- (double)SBUISA_containerViewFrame
{
  v1 = [a1 otherSettings];
  [v1 SBUISA_CGRectforSetting:3213010];
  v3 = v2;

  return v3;
}

- (double)SBUISA_obstructedAreaLayoutFrame
{
  v1 = [a1 otherSettings];
  [v1 SBUISA_CGRectforSetting:3213015];
  v3 = v2;

  return v3;
}

- (double)SBUISA_resolvedLeadingViewFrame
{
  v1 = [a1 otherSettings];
  [v1 SBUISA_CGRectforSetting:3213011];
  v3 = v2;

  return v3;
}

- (double)SBUISA_resolvedTrailingViewFrame
{
  v1 = [a1 otherSettings];
  [v1 SBUISA_CGRectforSetting:3213012];
  v3 = v2;

  return v3;
}

- (double)SBUISA_resolvedMinimalViewFrame
{
  v1 = [a1 otherSettings];
  [v1 SBUISA_CGRectforSetting:3213013];
  v3 = v2;

  return v3;
}

- (double)SBUISA_resolvedDetachedMinimalViewFrame
{
  v1 = [a1 otherSettings];
  [v1 SBUISA_CGRectforSetting:3213014];
  v3 = v2;

  return v3;
}

- (uint64_t)SBUISA_minimalViewLayoutAxis
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:3213016];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (uint64_t)SBUISA_isBeingRemoved
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:3213017];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)SBUISA_isSecureFlipBookInRecordingMode
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:3213018];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)SBUISA_secureFlipBookActiveConfiguration
{
  v1 = [a1 otherSettings];
  v2 = [v1 SBUISA_stringforSetting:3213019];

  return v2;
}

- (id)SBUISA_secureFlipBookActiveComponentStates
{
  v1 = [a1 otherSettings];
  v2 = [v1 SBUISA_componentStatesForSetting:3213020];

  return v2;
}

- (id)SBUI_systemApertureDescription
{
  v1 = [a1 otherSettings];
  v2 = [v1 SBUI_systemApertureDescription];

  return v2;
}

- (id)SBUI_systemApertureDescriptionOfDiffFromSettings:()SBUISystemAperture
{
  v4 = a3;
  v5 = [a1 otherSettings];
  v6 = [v4 otherSettings];

  v7 = [v5 SBUI_systemApertureDescriptionOfDiffFromSettings:v6];

  return v7;
}

@end