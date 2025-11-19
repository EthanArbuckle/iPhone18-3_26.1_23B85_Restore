@interface SBDeviceMotionEffectSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBDeviceMotionEffectSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBDeviceMotionEffectSettings;
  [(PTSettings *)&v3 setDefaultValues];
  *(&self->super.__isObservingChildren + 1) = 0;
  *(&self->super.__isObservingChildren + 2) = 1;
  *(&self->super.__isObservingChildren + 3) = 1;
  *(&self->super.__isObservingChildren + 4) = 1;
  *(&self->super.__isObservingChildren + 5) = 0;
  self->_optimizingBacklightChangeSource = 1;
}

+ (id)settingsControllerModule
{
  v23[6] = *MEMORY[0x277D85DE8];
  v20 = [MEMORY[0x277D432A8] rowWithTitle:@"Enable Backlight Change Source Optimization" valueKeyPath:@"optimizingBacklightChangeSource"];
  v19 = [MEMORY[0x277D432A8] rowWithTitle:@"Enable Low Power Optimization" valueKeyPath:@"optimizingLowPower"];
  v18 = [MEMORY[0x277D432A8] rowWithTitle:@"Enable Reduced Motion Optimization" valueKeyPath:@"optimizingReducedMotion"];
  v2 = [MEMORY[0x277D432A8] rowWithTitle:@"Enable Significant Motion Availability Optimization" valueKeyPath:@"optimizingSignificantMotion"];
  v3 = [MEMORY[0x277D432A8] rowWithTitle:@"Enable User Presence Optimization" valueKeyPath:@"optimizingUserPresence"];
  v4 = [MEMORY[0x277D432A8] rowWithTitle:@"Enable Wallpaper Obscured Optimization" valueKeyPath:@"optimizingWallpaperObscured"];
  v5 = MEMORY[0x277D43210];
  v23[0] = v20;
  v23[1] = v19;
  v23[2] = v18;
  v23[3] = v2;
  v23[4] = v3;
  v23[5] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:6];
  v7 = [v5 sectionWithRows:v6 title:@"Optimization Settings"];

  v8 = MEMORY[0x277D431B0];
  v9 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v10 = [v8 rowWithTitle:@"Restore Defaults" action:v9];

  v11 = MEMORY[0x277D43210];
  v22 = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v13 = [v11 sectionWithRows:v12];

  v14 = MEMORY[0x277D43210];
  v21[0] = v7;
  v21[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v16 = [v14 moduleWithTitle:@"Device Motion Effects" contents:v15];

  return v16;
}

@end