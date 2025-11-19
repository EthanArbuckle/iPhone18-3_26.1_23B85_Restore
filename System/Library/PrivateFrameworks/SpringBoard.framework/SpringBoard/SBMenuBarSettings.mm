@interface SBMenuBarSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBMenuBarSettings

- (void)setDefaultValues
{
  self->_fullscreenPeekDuration = 1.2;
  self->_alwaysVisibleOnExternalDisplay = 1;
  self->_menuRevealYThresholdForPointer = 1.0;
  self->_menuRevealExtraYThresholdForPointerWhenUnderExternalDisplay = 4.0;
  self->_menuDismissYThresholdForPointer = 48.0;
  self->_menuRevealDelay = 0.15;
  self->_menuTitleSpacing = 25.0;
  self->_backgroundBlurContentOverhang = 70.0;
  self->_entryAnimationDuration = 0.15;
  self->_entryAnimationMass = 2.0;
  self->_entryAnimationStiffness = 3509.0;
  self->_entryAnimationDamping = 171.0;
  self->_exitAnimationDuration = 0.15;
  self->_exitAnimationMass = 2.0;
  self->_exitAnimationStiffness = 3509.0;
  self->_exitAnimationDamping = 171.0;
}

+ (id)settingsControllerModule
{
  v46[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D43290] rowWithTitle:@"Menu Reveal Y Threshold" valueKeyPath:@"menuRevealYThresholdForPointer"];
  v41 = [v2 minValue:0.0 maxValue:100.0];

  v3 = [MEMORY[0x277D43290] rowWithTitle:@"Menu Reveal Extra Y Threshold When External Display Above" valueKeyPath:@"menuRevealExtraYThresholdForPointerWhenUnderExternalDisplay"];
  v40 = [v3 minValue:0.0 maxValue:10.0];

  v4 = [MEMORY[0x277D43290] rowWithTitle:@"Menu Dismiss Y Threshold" valueKeyPath:@"menuDismissYThresholdForPointer"];
  v39 = [v4 minValue:32.0 maxValue:100.0];

  v5 = [MEMORY[0x277D431E8] rowWithTitle:@"Menu Reveal Delay" valueKeyPath:@"menuRevealDelay"];
  v38 = [v5 between:0.0 and:1.0];

  v6 = MEMORY[0x277D43210];
  v46[0] = v41;
  v46[1] = v40;
  v46[2] = v39;
  v46[3] = v38;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
  v35 = [v6 sectionWithRows:v7 title:@"Pointer Interactions"];

  v8 = [MEMORY[0x277D43290] rowWithTitle:@"Menu Title Spacing" valueKeyPath:@"menuTitleSpacing"];
  v37 = [v8 minValue:20.0 maxValue:100.0];

  v36 = [MEMORY[0x277D431E8] rowWithTitle:@"Background Blur Content Overhang" valueKeyPath:@"backgroundBlurContentOverhang"];
  v9 = MEMORY[0x277D43210];
  v45[0] = v37;
  v45[1] = v36;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  v32 = [v9 sectionWithRows:v10 title:@"Layout Metrics"];

  v11 = [MEMORY[0x277D431E8] rowWithTitle:@"Fullscreen Peek Duration" valueKeyPath:@"fullscreenPeekDuration"];
  v34 = [v11 between:1.0 and:5.0];

  v33 = [MEMORY[0x277D432A8] rowWithTitle:@"Always Visible on External Display" valueKeyPath:@"alwaysVisibleOnExternalDisplay"];
  v12 = MEMORY[0x277D43210];
  v44[0] = v34;
  v44[1] = v33;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v31 = [v12 sectionWithRows:v13 title:@"General Appearance"];

  v14 = [MEMORY[0x277D431E8] rowWithTitle:@"Entry Animation Duration" valueKeyPath:@"entryAnimationDuration"];
  v30 = [v14 between:0.1 and:1.0];

  v29 = [MEMORY[0x277D431E8] rowWithTitle:@"Entry Animation Spring Mass" valueKeyPath:@"entryAnimationMass"];
  v28 = [MEMORY[0x277D431E8] rowWithTitle:@"Entry Animation Spring Stiffnes" valueKeyPath:@"entryAnimationStiffness"];
  v27 = [MEMORY[0x277D431E8] rowWithTitle:@"Entry Animation Spring Damping" valueKeyPath:@"entryAnimationDamping"];
  v15 = [MEMORY[0x277D431E8] rowWithTitle:@"Exit Animation Duration" valueKeyPath:@"exitAnimationDuration"];
  v26 = [v15 between:0.1 and:1.0];

  v16 = [MEMORY[0x277D431E8] rowWithTitle:@"Exit Animation Spring Mass" valueKeyPath:@"exitAnimationMass"];
  v17 = [MEMORY[0x277D431E8] rowWithTitle:@"Exit Animation Spring Stiffnes" valueKeyPath:@"exitAnimationStiffness"];
  v18 = [MEMORY[0x277D431E8] rowWithTitle:@"Exit Animation Spring Damping" valueKeyPath:@"exitAnimationDamping"];
  v19 = MEMORY[0x277D43210];
  v43[0] = v30;
  v43[1] = v29;
  v43[2] = v28;
  v43[3] = v27;
  v43[4] = v26;
  v43[5] = v16;
  v43[6] = v17;
  v43[7] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:8];
  v21 = [v19 sectionWithRows:v20 title:@"Entry/Exit Animation Spring Constants"];

  v22 = MEMORY[0x277D43210];
  v42[0] = v31;
  v42[1] = v35;
  v42[2] = v32;
  v42[3] = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  v24 = [v22 moduleWithTitle:@"Menu Bar" contents:v23];

  return v24;
}

@end