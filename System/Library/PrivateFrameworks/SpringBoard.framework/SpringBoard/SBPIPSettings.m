@interface SBPIPSettings
+ (id)settingsControllerModule;
@end

@implementation SBPIPSettings

+ (id)settingsControllerModule
{
  v49[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D431B0];
  v3 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v41 = [v2 rowWithTitle:@"Restore Defaults" action:v3];

  v4 = MEMORY[0x277D43210];
  v49[0] = v41;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  v6 = [v4 sectionWithRows:v5 title:@"Restore Default Values"];

  v7 = [MEMORY[0x277D431D8] rowWithTitle:@"User Interaction" childSettingsKeyPath:@"interactionSettings"];
  v8 = MEMORY[0x277D43210];
  v48 = v7;
  v9 = v7;
  v40 = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
  v11 = [v8 sectionWithRows:v10 title:@"User interaction"];

  v39 = [MEMORY[0x277D431D8] rowWithTitle:@"AutoPIP and Fluid Restore" childSettingsKeyPath:@"fluidTransitionsSettings"];
  v12 = MEMORY[0x277D43210];
  v47[0] = v9;
  v47[1] = v39;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
  v14 = [v12 sectionWithRows:v13 title:@"Morph animations"];

  v38 = [MEMORY[0x277D431D8] rowWithTitle:@"Stash Visuals" childSettingsKeyPath:@"stashVisualSettings"];
  v15 = MEMORY[0x277D43210];
  v46 = v38;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v36 = [v15 sectionWithRows:v16 title:@"Stash settings"];

  v17 = MEMORY[0x277D431D8];
  v18 = NSStringFromSelector(sel_fadeInOutSettings);
  v37 = [v17 rowWithTitle:@"Fade in/out" childSettingsKeyPath:v18];

  v19 = MEMORY[0x277D43210];
  v45 = v37;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  v21 = [v19 sectionWithRows:v20 title:@"Fade in/out animations"];

  v35 = [MEMORY[0x277D431D8] rowWithTitle:@"Drop Shadow" childSettingsKeyPath:@"shadowSettings"];
  v22 = MEMORY[0x277D43210];
  v44 = v35;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  v24 = [v22 sectionWithRows:v23 title:@"Drop Shadow Settings"];

  v25 = MEMORY[0x277D431D8];
  v26 = NSStringFromSelector(sel_sizingSettings);
  v27 = [v25 rowWithTitle:@"Sizing settings" childSettingsKeyPath:v26];

  v28 = MEMORY[0x277D43210];
  v43 = v27;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  v30 = [v28 sectionWithRows:v29 title:@"Sizing"];

  v31 = MEMORY[0x277D43210];
  v42[0] = v6;
  v42[1] = v11;
  v42[2] = v14;
  v42[3] = v36;
  v42[4] = v21;
  v42[5] = v24;
  v42[6] = v30;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:7];
  v33 = [v31 moduleWithTitle:@"PIP Settings" contents:v32];

  return v33;
}

@end