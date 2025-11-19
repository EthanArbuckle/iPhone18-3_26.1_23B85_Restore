@interface SBPIPSizingSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBPIPSizingSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBPIPSizingSettings;
  [(PTSettings *)&v3 setDefaultValues];
  self->_landcapeAspectRatioClosedIntervalLowerBound = 0.0;
  self->_landcapeAspectRatioClosedIntervalUpperBound = 0.7;
  self->_squareAspectRatioClosedIntervalLowerBound = 0.71;
  self->_squareAspectRatioClosedIntervalUpperBound = 1.09;
  self->_portraitAspectRatioClosedIntervalLowerBound = 1.1;
  self->_portraitAspectRatioClosedIntervalUpperBound = 1.79769313e308;
}

+ (id)settingsControllerModule
{
  v32[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D431B0];
  v3 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v30 = [v2 rowWithTitle:@"Restore Defaults" action:v3];

  v4 = MEMORY[0x277D431E8];
  v5 = NSStringFromSelector(sel_landcapeAspectRatioClosedIntervalLowerBound);
  v29 = [v4 rowWithTitle:@"Landscape range lower bound" valueKeyPath:v5];

  v6 = MEMORY[0x277D431E8];
  v7 = NSStringFromSelector(sel_landcapeAspectRatioClosedIntervalUpperBound);
  v8 = [v6 rowWithTitle:@"Landscape range upper bound" valueKeyPath:v7];

  v9 = MEMORY[0x277D431E8];
  v10 = NSStringFromSelector(sel_portraitAspectRatioClosedIntervalLowerBound);
  v11 = [v9 rowWithTitle:@"Portrait range lower bound" valueKeyPath:v10];

  v12 = MEMORY[0x277D431E8];
  v13 = NSStringFromSelector(sel_portraitAspectRatioClosedIntervalUpperBound);
  v14 = [v12 rowWithTitle:@"Portrait range upper bound" valueKeyPath:v13];

  v15 = MEMORY[0x277D431E8];
  v16 = NSStringFromSelector(sel_squareAspectRatioClosedIntervalLowerBound);
  v17 = [v15 rowWithTitle:@"Square range lower bound" valueKeyPath:v16];

  v18 = MEMORY[0x277D431E8];
  v19 = NSStringFromSelector(sel_squareAspectRatioClosedIntervalUpperBound);
  v20 = [v18 rowWithTitle:@"Square range upper bound" valueKeyPath:v19];

  v21 = MEMORY[0x277D43210];
  v32[0] = v30;
  v32[1] = v29;
  v32[2] = v8;
  v32[3] = v11;
  v22 = v8;
  v32[4] = v14;
  v32[5] = v17;
  v32[6] = v20;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:7];
  v24 = [v21 sectionWithRows:v23 title:@"Aspect ratios ranges"];

  v25 = MEMORY[0x277D43210];
  v31 = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v27 = [v25 moduleWithTitle:@"PIP Aspect Ratios Ranges" contents:v26];

  return v27;
}

@end