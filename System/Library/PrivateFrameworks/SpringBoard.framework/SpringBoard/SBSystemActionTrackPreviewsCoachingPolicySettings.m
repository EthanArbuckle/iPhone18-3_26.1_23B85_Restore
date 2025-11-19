@interface SBSystemActionTrackPreviewsCoachingPolicySettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBSystemActionTrackPreviewsCoachingPolicySettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBSystemActionTrackPreviewsCoachingPolicySettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBSystemActionTrackPreviewsCoachingPolicySettings *)self setPresentationThresholdForActionsWithStatefulPreviews:2];
  [(SBSystemActionTrackPreviewsCoachingPolicySettings *)self setPresentationThresholdForActionsWithStatelessPreviews:1];
}

+ (id)settingsControllerModule
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43210];
  v3 = [MEMORY[0x277D431B8] rowWithTitle:@"Actions With Stateful Previews" valueKeyPath:@"presentationThresholdForActionsWithStatefulPreviews"];
  v4 = [v3 possibleValues:&unk_28336E5C8 titles:&unk_28336E5E0];
  v14[0] = v4;
  v5 = [MEMORY[0x277D431B8] rowWithTitle:@"Actions With Stateless Previews" valueKeyPath:@"presentationThresholdForActionsWithStatelessPreviews"];
  v6 = [v5 possibleValues:&unk_28336E5C8 titles:&unk_28336E5E0];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v8 = [v2 sectionWithRows:v7 title:@"Number of Presses to Present Coaching"];

  v9 = MEMORY[0x277D43210];
  v13 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v11 = [v9 moduleWithTitle:@"Track Previews Policy" contents:v10];

  return v11;
}

@end