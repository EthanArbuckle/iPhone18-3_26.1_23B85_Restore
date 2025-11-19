@interface SBCenterWindowSizingSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBCenterWindowSizingSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBCenterWindowSizingSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBCenterWindowSizingSettings *)self setUseCustomSizingForNewWindows:1];
  [(SBCenterWindowSizingSettings *)self setFullWidthScaleFactor:1.0];
  [(SBCenterWindowSizingSettings *)self setFullHeightScaleFactor:1.0];
  [(SBCenterWindowSizingSettings *)self setTopInset:0.0];
  [(SBCenterWindowSizingSettings *)self setBottomInset:0.0];
  [(SBCenterWindowSizingSettings *)self setLeftInset:0.0];
  [(SBCenterWindowSizingSettings *)self setRightInset:0.0];
}

+ (id)settingsControllerModule
{
  v55[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D432A8] rowWithTitle:@"Custom Window Sizing Override" valueKeyPath:@"useCustomSizingForNewWindows"];
  v55[0] = v2;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];

  v49 = [MEMORY[0x277D43210] sectionWithRows:v50 title:@"Open Window Sizing Settings [* scaleFactor - inset]"];
  v3 = MEMORY[0x277D431E8];
  v4 = NSStringFromSelector(sel_fullWidthScaleFactor);
  v5 = [v3 rowWithTitle:@"Full Screen Width Scale Factor" valueKeyPath:v4];
  v6 = [v5 between:0.0 and:1.0];
  v7 = [v6 precision:2];
  v54[0] = v7;
  v8 = MEMORY[0x277D431E8];
  v9 = NSStringFromSelector(sel_fullHeightScaleFactor);
  v10 = [v8 rowWithTitle:@"Full Screen Height Scale Factor" valueKeyPath:v9];
  v11 = [v10 between:0.0 and:1.0];
  v12 = [v11 precision:2];
  v54[1] = v12;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];

  v47 = [MEMORY[0x277D43210] sectionWithRows:v48 title:@"Scale Factor"];
  v13 = MEMORY[0x277D431E8];
  v46 = NSStringFromSelector(sel_topInset);
  v45 = [v13 rowWithTitle:@"Top Inset" valueKeyPath:v46];
  v44 = [v45 between:-5000.0 and:5000.0];
  v43 = [v44 precision:2];
  v53[0] = v43;
  v14 = MEMORY[0x277D431E8];
  v42 = NSStringFromSelector(sel_bottomInset);
  v41 = [v14 rowWithTitle:@"Bottom Inset" valueKeyPath:v42];
  v40 = [v41 between:-5000.0 and:5000.0];
  v15 = [v40 precision:2];
  v53[1] = v15;
  v16 = MEMORY[0x277D431E8];
  v17 = NSStringFromSelector(sel_leftInset);
  v18 = [v16 rowWithTitle:@"Left Inset" valueKeyPath:v17];
  v19 = [v18 between:-5000.0 and:5000.0];
  v20 = [v19 precision:2];
  v53[2] = v20;
  v21 = MEMORY[0x277D431E8];
  v22 = NSStringFromSelector(sel_rightInset);
  v23 = [v21 rowWithTitle:@"Right Inset" valueKeyPath:v22];
  v24 = [v23 between:-5000.0 and:5000.0];
  v25 = [v24 precision:2];
  v53[3] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];

  v27 = v26;
  v28 = [MEMORY[0x277D43210] sectionWithRows:v26 title:@"Inset"];
  v29 = MEMORY[0x277D431B0];
  v30 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v31 = [v29 rowWithTitle:@"Restore Defaults" action:v30];

  v32 = MEMORY[0x277D43210];
  v52 = v31;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  v34 = [v32 sectionWithRows:v33];

  v35 = MEMORY[0x277CBEB18];
  v51[0] = v49;
  v51[1] = v47;
  v51[2] = v28;
  v51[3] = v34;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
  v37 = [v35 arrayWithArray:v36];

  v38 = [MEMORY[0x277D43210] moduleWithTitle:@"Open New Window Sizing Override" contents:v37];

  return v38;
}

@end