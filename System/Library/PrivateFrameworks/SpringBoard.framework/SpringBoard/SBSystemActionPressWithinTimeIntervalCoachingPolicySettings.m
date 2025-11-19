@interface SBSystemActionPressWithinTimeIntervalCoachingPolicySettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBSystemActionPressWithinTimeIntervalCoachingPolicySettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBSystemActionPressWithinTimeIntervalCoachingPolicySettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBSystemActionPressWithinTimeIntervalCoachingPolicySettings *)self setPresentationThresholdForActionsWithStatefulPreviews:2];
  [(SBSystemActionPressWithinTimeIntervalCoachingPolicySettings *)self setPresentationThresholdForActionsWithStatelessPreviews:1];
  [(SBSystemActionPressWithinTimeIntervalCoachingPolicySettings *)self setTimeInterval:5.0];
}

+ (id)settingsControllerModule
{
  v20[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43210];
  v3 = [MEMORY[0x277D431B8] rowWithTitle:@"Actions With Stateful Previews" valueKeyPath:@"presentationThresholdForActionsWithStatefulPreviews"];
  v4 = [v3 possibleValues:&unk_28336DAB8 titles:&unk_28336DAD0];
  v20[0] = v4;
  v5 = [MEMORY[0x277D431B8] rowWithTitle:@"Actions With Stateless Previews" valueKeyPath:@"presentationThresholdForActionsWithStatelessPreviews"];
  v6 = [v5 possibleValues:&unk_28336DAB8 titles:&unk_28336DAD0];
  v20[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v8 = [v2 sectionWithRows:v7 title:@"Number of Presses to Present Coaching"];

  v9 = MEMORY[0x277D43210];
  v10 = [MEMORY[0x277D43290] rowWithTitle:@"Time Interval" valueKeyPath:@"timeInterval"];
  v11 = [v10 minValue:1.0 maxValue:10.0];
  v19 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v13 = [v9 sectionWithRows:v12 title:@"Timing"];

  v14 = MEMORY[0x277D43210];
  v18[0] = v8;
  v18[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v16 = [v14 moduleWithTitle:@"Track Previews Policy" contents:v15];

  return v16;
}

@end