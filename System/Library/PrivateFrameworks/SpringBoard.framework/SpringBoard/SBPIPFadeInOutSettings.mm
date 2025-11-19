@interface SBPIPFadeInOutSettings
+ (BOOL)ignoresKey:(id)a3;
+ (id)settingsControllerModule;
- ($1AB5FA073B851C12C2339EC22442E995)fadeInInitialValues;
- ($1AB5FA073B851C12C2339EC22442E995)fadeOutFinalValues;
- (void)setDefaultValues;
@end

@implementation SBPIPFadeInOutSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBPIPFadeInOutSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBFAnimationSettings *)self->_fadeInOutAnimationSettings setAnimationType:1];
  [(SBFAnimationSettings *)self->_fadeInOutAnimationSettings setCurve:196608];
  [(SBFAnimationSettings *)self->_fadeInOutAnimationSettings setDuration:0.8];
  [(SBFAnimationSettings *)self->_fadeInOutAnimationSettings setMass:2.0];
  [(SBFAnimationSettings *)self->_fadeInOutAnimationSettings setStiffness:300.0];
  [(SBFAnimationSettings *)self->_fadeInOutAnimationSettings setDamping:50.0];
  self->_fadeInInitialScale = 0.8;
  self->_fadeInInitialBlurRadius = 60.0;
  self->_fadeOutFinalScale = 0.8;
  self->_fadeOutFinalBlurRadius = 60.0;
}

- ($1AB5FA073B851C12C2339EC22442E995)fadeInInitialValues
{
  fadeInInitialScale = self->_fadeInInitialScale;
  fadeInInitialOpacity = self->_fadeInInitialOpacity;
  fadeInInitialBlurRadius = self->_fadeInInitialBlurRadius;
  result.var2 = fadeInInitialBlurRadius;
  result.var1 = fadeInInitialOpacity;
  result.var0 = fadeInInitialScale;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)fadeOutFinalValues
{
  fadeOutFinalScale = self->_fadeOutFinalScale;
  fadeOutFinalOpacity = self->_fadeOutFinalOpacity;
  fadeOutFinalBlurRadius = self->_fadeOutFinalBlurRadius;
  result.var2 = fadeOutFinalBlurRadius;
  result.var1 = fadeOutFinalOpacity;
  result.var0 = fadeOutFinalScale;
  return result;
}

+ (BOOL)ignoresKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"fadeInInitialValues"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"fadeOutFinalValues"];
  }

  return v4;
}

+ (id)settingsControllerModule
{
  v30[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43210];
  v3 = [MEMORY[0x277D65DD8] _moduleWithSectionTitle:@"Fade-In/Out animation" delay:0 frameRate:0];
  v4 = NSStringFromSelector(sel_fadeInOutAnimationSettings);
  v27 = [v2 submoduleWithModule:v3 childSettingsKeyPath:v4];

  v5 = [MEMORY[0x277D43290] rowWithTitle:@"Scale" valueKeyPath:@"fadeInInitialScale"];
  v26 = [v5 minValue:0.0 maxValue:1.0];

  v6 = [MEMORY[0x277D43290] rowWithTitle:@"Opacity" valueKeyPath:@"fadeInInitialOpacity"];
  v25 = [v6 minValue:0.0 maxValue:1.0];

  v7 = [MEMORY[0x277D43290] rowWithTitle:@"Blur Radius" valueKeyPath:@"fadeInInitialBlurRadius"];
  v8 = [v7 minValue:0.0 maxValue:90.0];

  v9 = MEMORY[0x277D43210];
  v30[0] = v25;
  v30[1] = v26;
  v30[2] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v11 = [v9 sectionWithRows:v10 title:@"Fade-In Initial Values"];

  v12 = [MEMORY[0x277D43290] rowWithTitle:@"Scale" valueKeyPath:@"fadeOutFinalScale"];
  v13 = [v12 minValue:0.0 maxValue:1.0];

  v14 = [MEMORY[0x277D43290] rowWithTitle:@"Opacity" valueKeyPath:@"fadeOutFinalOpacity"];
  v15 = [v14 minValue:0.0 maxValue:1.0];

  v16 = [MEMORY[0x277D43290] rowWithTitle:@"Blur Radius" valueKeyPath:@"fadeOutFinalBlurRadius"];
  v17 = [v16 minValue:0.0 maxValue:90.0];

  v18 = MEMORY[0x277D43210];
  v29[0] = v15;
  v29[1] = v13;
  v29[2] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v20 = [v18 sectionWithRows:v19 title:@"Fade-Out Final Values"];

  v21 = MEMORY[0x277D43210];
  v28[0] = v11;
  v28[1] = v20;
  v28[2] = v27;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v23 = [v21 moduleWithTitle:@"Fade-In/Out Settings" contents:v22];

  return v23;
}

@end