@interface SXFullscreenCaptionDarkModePolicyException
- (int64_t)shouldApplyAutoDarkModeForComponentClassification:(id)classification;
- (int64_t)shouldApplyDarkModeToTextStyleBackgroundColorsForComponent:(id)component DOM:(id)m;
- (int64_t)shouldApplyDarkModeToTextStyleForegroundColorsForComponent:(id)component DOM:(id)m;
@end

@implementation SXFullscreenCaptionDarkModePolicyException

- (int64_t)shouldApplyDarkModeToTextStyleBackgroundColorsForComponent:(id)component DOM:(id)m
{
  classification = [component classification];
  v6 = [(SXFullscreenCaptionDarkModePolicyException *)self shouldApplyAutoDarkModeForComponentClassification:classification];

  return v6;
}

- (int64_t)shouldApplyDarkModeToTextStyleForegroundColorsForComponent:(id)component DOM:(id)m
{
  classification = [component classification];
  v6 = [(SXFullscreenCaptionDarkModePolicyException *)self shouldApplyAutoDarkModeForComponentClassification:classification];

  return v6;
}

- (int64_t)shouldApplyAutoDarkModeForComponentClassification:(id)classification
{
  classificationCopy = classification;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    v4 = (objc_opt_isKindOfClass() & 1) - 1;
  }

  return v4;
}

@end