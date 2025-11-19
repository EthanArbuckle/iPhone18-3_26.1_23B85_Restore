@interface SBAmbientLiveActivitiesSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBAmbientLiveActivitiesSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBAmbientLiveActivitiesSettings;
  [(PTSettings *)&v3 setDefaultValues];
  self->_fullScreenDragCornerRadiusDampingRatio = 0.845;
  self->_fullScreenDragCornerRadiusResponse = 0.531;
  self->_fullScreenDragScaleDampingRatio = 0.845;
  self->_fullScreenDragScaleResponse = 0.531;
  self->_fullScreenDragPositionDampingRatio = 0.845;
  self->_fullScreenDragPositionResponse = 0.531;
  self->_fullScreenTransitionToCompactDampingRatio = 0.75;
  self->_fullScreenTransitionToCompactResponse = 0.52;
  self->_fullScreenDismissGestureEnabled = 0;
}

+ (id)settingsControllerModule
{
  v35[2] = *MEMORY[0x277D85DE8];
  v28 = [MEMORY[0x277D43290] rowWithTitle:@"Damping Ratio" valueKeyPath:@"fullScreenDragCornerRadiusDampingRatio"];
  v27 = [MEMORY[0x277D43290] rowWithTitle:@"Response" valueKeyPath:@"fullScreenDragCornerRadiusResponse"];
  v26 = [MEMORY[0x277D43290] rowWithTitle:@"Damping Ratio" valueKeyPath:@"fullScreenDragScaleDampingRatio"];
  v25 = [MEMORY[0x277D43290] rowWithTitle:@"Response" valueKeyPath:@"fullScreenDragScaleResponse"];
  v24 = [MEMORY[0x277D43290] rowWithTitle:@"Damping Ratio" valueKeyPath:@"fullScreenDragPositionDampingRatio"];
  v29 = [MEMORY[0x277D43290] rowWithTitle:@"Response" valueKeyPath:@"fullScreenDragPositionResponse"];
  v22 = [MEMORY[0x277D43290] rowWithTitle:@"Damping Ratio" valueKeyPath:@"fullScreenTransitionToCompactDampingRatio"];
  v21 = [MEMORY[0x277D43290] rowWithTitle:@"Response" valueKeyPath:@"fullScreenTransitionToCompactResponse"];
  v23 = [MEMORY[0x277D432A8] rowWithTitle:@"Full screen dismiss gesture" valueKeyPath:@"fullScreenDismissGestureEnabled"];
  v2 = MEMORY[0x277D43210];
  v35[0] = v28;
  v35[1] = v27;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v4 = [v2 sectionWithRows:v3 title:@"Full screen drag corner radius"];

  v5 = MEMORY[0x277D43210];
  v34[0] = v26;
  v34[1] = v25;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v20 = [v5 sectionWithRows:v6 title:@"Full screen drag scale"];

  v7 = MEMORY[0x277D43210];
  v33[0] = v24;
  v33[1] = v29;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v9 = [v7 sectionWithRows:v8 title:@"Full screen drag position"];

  v10 = MEMORY[0x277D43210];
  v32[0] = v22;
  v32[1] = v21;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v12 = [v10 sectionWithRows:v11 title:@"Transition to compact"];

  v13 = MEMORY[0x277D43210];
  v31 = v23;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v15 = [v13 sectionWithRows:v14 title:0];

  v16 = MEMORY[0x277D43210];
  v30[0] = v4;
  v30[1] = v20;
  v30[2] = v9;
  v30[3] = v12;
  v30[4] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:5];
  v18 = [v16 moduleWithTitle:@"Domino Settings" contents:v17];

  return v18;
}

@end