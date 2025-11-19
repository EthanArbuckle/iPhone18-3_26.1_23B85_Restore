@interface SBDropShadowSettings
+ (id)moduleWithSectionTitle:(id)a3;
- (void)setDefaultValues;
@end

@implementation SBDropShadowSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBDropShadowSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBDropShadowSettings *)self setOpacity:0.5];
  [(SBDropShadowSettings *)self setRadius:75.0];
  [(SBDropShadowSettings *)self setOffsetX:0.0];
  [(SBDropShadowSettings *)self setOffsetY:15.0];
  [(SBDropShadowSettings *)self setContinuousCornerRadius:20.0];
}

+ (id)moduleWithSectionTitle:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D43290];
  v4 = a3;
  v5 = [v3 rowWithTitle:@"Opacity" valueKeyPath:@"opacity"];
  v6 = [MEMORY[0x277D43290] rowWithTitle:@"Shadow Radius" valueKeyPath:@"radius"];
  v7 = [v6 minValue:0.0 maxValue:100.0];

  v8 = [MEMORY[0x277D43290] rowWithTitle:@"X Offset" valueKeyPath:@"offsetX"];
  v9 = [v8 minValue:-30.0 maxValue:30.0];

  v10 = [MEMORY[0x277D43290] rowWithTitle:@"Y Offset" valueKeyPath:@"offsetY"];
  v11 = [v10 minValue:-30.0 maxValue:30.0];

  v12 = [MEMORY[0x277D43290] rowWithTitle:@"Continuous Corner Radius" valueKeyPath:@"continuousCornerRadius"];
  v13 = [v12 minValue:0.0 maxValue:50.0];

  v14 = MEMORY[0x277D43210];
  v20[0] = v5;
  v20[1] = v7;
  v20[2] = v9;
  v20[3] = v11;
  v20[4] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];
  v16 = [v14 sectionWithRows:v15 title:v4];

  v21[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v18 = [v14 moduleWithTitle:@"Drop Shadow Settings" contents:v17];

  return v18;
}

@end