@interface SBLiveActivitySettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBLiveActivitySettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBLiveActivitySettings;
  [(PTSettings *)&v3 setDefaultValues];
  self->_allowAlertsOnHostApp = 0;
  self->_hideActivitiesInLockScreen = 0;
  self->_hideActivitiesInAmbient = 0;
  self->_hideActivitiesInDynamicIsland = 0;
  self->_disableActivityAlertsAsBanners = 0;
  [(SBAmbientLiveActivitiesSettings *)self->_ambientSettings setDefaultValues];
}

+ (id)settingsControllerModule
{
  v23[6] = *MEMORY[0x277D85DE8];
  v20 = [MEMORY[0x277D432A8] rowWithTitle:@"Allow alerts on host application" valueKeyPath:@"allowAlertsOnHostApp"];
  v19 = [MEMORY[0x277D432A8] rowWithTitle:@"Hide in Lock Screen" valueKeyPath:@"hideActivitiesInLockScreen"];
  v18 = [MEMORY[0x277D432A8] rowWithTitle:@"Hide in Dynamic Island" valueKeyPath:@"hideActivitiesInDynamicIsland"];
  v2 = [MEMORY[0x277D432A8] rowWithTitle:@"Hide in Ambient" valueKeyPath:@"hideActivitiesInAmbient"];
  v3 = [MEMORY[0x277D432A8] rowWithTitle:@"Disable alerts as banners" valueKeyPath:@"disableActivityAlertsAsBanners"];
  v4 = [MEMORY[0x277D431D8] rowWithTitle:@"Domino Animation Settings" childSettingsKeyPath:@"ambientSettings"];
  v5 = MEMORY[0x277D43210];
  v23[0] = v20;
  v23[1] = v19;
  v23[2] = v18;
  v23[3] = v2;
  v23[4] = v3;
  v23[5] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:6];
  v7 = [v5 sectionWithRows:v6 title:@"Activity Presentation Settings"];

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
  v16 = [v14 moduleWithTitle:@"Live Activities" contents:v15];

  return v16;
}

@end