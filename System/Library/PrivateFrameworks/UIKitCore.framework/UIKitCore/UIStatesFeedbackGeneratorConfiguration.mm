@interface UIStatesFeedbackGeneratorConfiguration
@end

@implementation UIStatesFeedbackGeneratorConfiguration

void __59___UIStatesFeedbackGeneratorConfiguration_feedbackKeyPaths__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AEC0];
  v5 = a2;
  v6 = NSStringFromSelector(sel_stateChangeConfigurations);
  v7 = NSStringFromSelector(sel_thresholdFeedback);
  v8 = [v4 stringWithFormat:@"%@.%@.%@", v6, v5, v7];
  [v3 addObject:v8];

  v9 = *(a1 + 32);
  v10 = MEMORY[0x1E696AEC0];
  v13 = NSStringFromSelector(sel_stateChangeConfigurations);
  v11 = NSStringFromSelector(sel_approachFeedback);
  v12 = [v10 stringWithFormat:@"%@.%@.%@", v13, v5, v11];

  [v9 addObject:v12];
}

void __73___UIStatesFeedbackGeneratorConfiguration_hidFeedbackPatternNameKeyPaths__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v7 = NSStringFromSelector(sel_stateChangeConfigurations);
  v5 = NSStringFromSelector(sel_hidThresholdFeedbackPatternName);
  v6 = [v3 stringWithFormat:@"%@.%@.%@", v7, v4, v5];

  [v2 addObject:v6];
}

void __81___UIStatesFeedbackGeneratorConfiguration__alternateFeedback_forDevice_senderID___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  v12 = v6;
  v8 = [v6 thresholdFeedback];
  LODWORD(v7) = [v7 isEqual:v8];

  if (v7)
  {
    v9 = [v12 hidThresholdFeedbackPatternName];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

@end