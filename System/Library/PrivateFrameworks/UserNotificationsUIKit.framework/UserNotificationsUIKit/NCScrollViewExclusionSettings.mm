@interface NCScrollViewExclusionSettings
+ (id)moduleWithSectionTitle:(id)title;
- (void)setDefaultValues;
@end

@implementation NCScrollViewExclusionSettings

+ (id)moduleWithSectionTitle:(id)title
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  titleCopy = title;
  array = [v3 array];
  v6 = [MEMORY[0x277D431F0] rowWithTitle:@"Rubberbanding coefficient" valueKeyPath:@"rubberbandingCoefficient"];
  v7 = [v6 between:0.0 and:1.0];
  v8 = [v7 precision:3];
  [array addObject:v8];

  v9 = [MEMORY[0x277D432A0] rowWithTitle:@"Rubberbanding Enabled" valueKeyPath:@"rubberbandingEnabled"];
  [array addObject:v9];

  v10 = [MEMORY[0x277D431F0] rowWithTitle:@"Hysteresis" valueKeyPath:@"hysteresis"];
  v11 = [v10 between:0.0 and:1.0];
  v12 = [v11 precision:3];
  [array addObject:v12];

  v13 = [MEMORY[0x277D431F0] rowWithTitle:@"Damping" valueKeyPath:@"damping"];
  v14 = [v13 between:0.0 and:1.0];
  v15 = [v14 precision:3];
  [array addObject:v15];

  v16 = [MEMORY[0x277D431F0] rowWithTitle:@"Response" valueKeyPath:@"response"];
  v17 = [v16 between:0.0 and:1.0];
  v18 = [v17 precision:3];
  [array addObject:v18];

  v19 = MEMORY[0x277D43218];
  v20 = [MEMORY[0x277D43218] sectionWithRows:array title:titleCopy];

  v24[0] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v22 = [v19 moduleWithTitle:0 contents:v21];

  return v22;
}

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = NCScrollViewExclusionSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(NCScrollViewExclusionSettings *)self setRubberbandingCoefficient:0.55];
  [(NCScrollViewExclusionSettings *)self setRubberbandingEnabled:0];
  [(NCScrollViewExclusionSettings *)self setDamping:0.7333];
  [(NCScrollViewExclusionSettings *)self setResponse:0.62832];
  [(NCScrollViewExclusionSettings *)self setHysteresis:0.6];
}

@end