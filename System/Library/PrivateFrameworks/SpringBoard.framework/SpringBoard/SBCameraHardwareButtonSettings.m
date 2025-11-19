@interface SBCameraHardwareButtonSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBCameraHardwareButtonSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = SBCameraHardwareButtonSettings;
  [(PTSettings *)&v5 setDefaultValues];
  v3 = +[SBDefaults localDefaults];
  v4 = [v3 cameraHardwareButtonDefaults];

  [v4 shutterButtonLongPressTimeout];
  [(SBCameraHardwareButtonSettings *)self setShutterButtonLongPressTimeout:?];
  [v4 shutterButtonLongPressCancellationTimeout];
  [(SBCameraHardwareButtonSettings *)self setShutterButtonLongPressCancellationTimeout:?];
  -[SBCameraHardwareButtonSettings setShutterButtonShouldUsePocketDetection:](self, "setShutterButtonShouldUsePocketDetection:", [v4 shutterButtonShouldUsePocketDetection]);
}

+ (id)settingsControllerModule
{
  v15[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D431E8] rowWithTitle:@"Long press timeout" valueKeyPath:@"shutterButtonLongPressTimeout"];
  v3 = [MEMORY[0x277D431E8] rowWithTitle:@"Long press cancellation timeout" valueKeyPath:@"shutterButtonLongPressCancellationTimeout"];
  v4 = [MEMORY[0x277D432A8] rowWithTitle:@"Use pocket detection" valueKeyPath:@"shutterButtonShouldUsePocketDetection"];
  v5 = [v2 between:0.0 and:10.0];

  v6 = [v3 between:0.0 and:10.0];

  v7 = MEMORY[0x277D43210];
  v15[0] = v5;
  v15[1] = v6;
  v15[2] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v9 = [v7 sectionWithRows:v8];

  v10 = MEMORY[0x277D43210];
  v14 = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v12 = [v10 moduleWithTitle:@"Camera Shutter Button" contents:v11];

  return v12;
}

@end