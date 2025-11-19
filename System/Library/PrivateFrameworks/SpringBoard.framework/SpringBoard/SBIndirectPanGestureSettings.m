@interface SBIndirectPanGestureSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBIndirectPanGestureSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBIndirectPanGestureSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBIndirectPanGestureSettings *)self setTrackpadHysteresis:15.0];
  [(SBIndirectPanGestureSettings *)self setMouseHysteresis:10.0];
  [(SBIndirectPanGestureSettings *)self setMouseActivationDistance:25.0];
  [(SBIndirectPanGestureSettings *)self setOrthogonalTranslationAdjustmentFactor:0.5];
  [(SBIndirectPanGestureSettings *)self setDockProgressThresholdForPresentingDock:0.25];
  [(SBIndirectPanGestureSettings *)self setShouldRequirePointerEventMovement:0];
}

+ (id)settingsControllerModule
{
  v27[6] = *MEMORY[0x277D85DE8];
  v24 = [MEMORY[0x277D431E8] rowWithTitle:@"Trackpad Hysteresis" valueKeyPath:@"trackpadHysteresis"];
  v23 = [v24 between:0.0 and:35.0];
  v27[0] = v23;
  v2 = [MEMORY[0x277D431E8] rowWithTitle:@"Mouse Hysteresis" valueKeyPath:@"mouseHysteresis"];
  v3 = [v2 between:0.0 and:10.0];
  v27[1] = v3;
  v4 = [MEMORY[0x277D431E8] rowWithTitle:@"Mouse Activation Distance" valueKeyPath:@"mouseActivationDistance"];
  v5 = [v4 between:0.0 and:100.0];
  v27[2] = v5;
  v6 = [MEMORY[0x277D431E8] rowWithTitle:@"Orthogonal Translation Adjustment Factor" valueKeyPath:@"orthogonalTranslationAdjustmentFactor"];
  v7 = [v6 between:0.0 and:2.0];
  v27[3] = v7;
  v8 = [MEMORY[0x277D431E8] rowWithTitle:@"Dock Progress Threshold for Presenting Dock" valueKeyPath:@"dockProgressThresholdForPresentingDock"];
  v9 = [v8 between:0.0 and:1.0];
  v27[4] = v9;
  v10 = [MEMORY[0x277D432A8] rowWithTitle:@"Should Require Pointer Event Movement" valueKeyPath:@"shouldRequirePointerEventMovement"];
  v27[5] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:6];

  v12 = [MEMORY[0x277D43210] sectionWithRows:v11 title:@"Floating Dock Presentation Gesture Settings"];
  v13 = MEMORY[0x277D431B0];
  v14 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v15 = [v13 rowWithTitle:@"Restore Defaults" action:v14];

  v16 = MEMORY[0x277D43210];
  v26 = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v18 = [v16 sectionWithRows:v17];

  v19 = MEMORY[0x277D43210];
  v25[0] = v12;
  v25[1] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v21 = [v19 moduleWithTitle:@"Indirect Pan Gesture Settings" contents:v20];

  return v21;
}

@end