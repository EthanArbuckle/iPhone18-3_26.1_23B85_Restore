@interface SBInCallSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBInCallSettings

- (void)setDefaultValues
{
  [(SBFFluidBehaviorSettings *)self->_transientOverlayFadeInSettings setDefaultValues];
  [(SBFFluidBehaviorSettings *)self->_transientOverlayFadeInSettings setDampingRatio:1.0];
  [(SBFFluidBehaviorSettings *)self->_transientOverlayFadeInSettings setResponse:0.24];
  [(SBFFluidBehaviorSettings *)self->_transientOverlayFadeOutSettings setDefaultValues];
  [(SBFFluidBehaviorSettings *)self->_transientOverlayFadeOutSettings setDampingRatio:1.0];
  transientOverlayFadeOutSettings = self->_transientOverlayFadeOutSettings;

  [(SBFFluidBehaviorSettings *)transientOverlayFadeOutSettings setResponse:0.24];
}

+ (id)settingsControllerModule
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D431B0];
  v3 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v4 = [v2 rowWithTitle:@"Restore Defaults" action:v3];

  v5 = MEMORY[0x277D43210];
  v19[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v7 = [v5 sectionWithRows:v6];

  v8 = [MEMORY[0x277D431D8] rowWithTitle:@"Transient Overlay Fade In Settings" childSettingsKeyPath:@"transientOverlayFadeInSettings"];
  v9 = [MEMORY[0x277D431D8] rowWithTitle:@"Transient Overlay Fade Out Settings" childSettingsKeyPath:@"transientOverlayFadeOutSettings"];
  v10 = MEMORY[0x277D43210];
  v18[0] = v8;
  v18[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v12 = [v10 sectionWithRows:v11 title:@"Animations"];

  v13 = MEMORY[0x277D43210];
  v17[0] = v7;
  v17[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v15 = [v13 moduleWithTitle:@"InCall" contents:v14];

  return v15;
}

@end