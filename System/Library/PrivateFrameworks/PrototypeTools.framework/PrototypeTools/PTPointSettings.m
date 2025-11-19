@interface PTPointSettings
+ (id)settingsControllerModule;
- (CGPoint)pointValue;
- (id)drillDownSummary;
- (void)setPointValue:(CGPoint)a3;
@end

@implementation PTPointSettings

+ (id)settingsControllerModule
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = [(PTRow *)PTEditFloatRow rowWithTitle:@"X" valueKeyPath:@"x"];
  v3 = [v2 precision:3];
  v12[0] = v3;
  v4 = [(PTRow *)PTEditFloatRow rowWithTitle:@"Y" valueKeyPath:@"y"];
  v5 = [v4 precision:3];
  v12[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v7 = [PTModule sectionWithRows:v6];
  v11 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v9 = [PTModule moduleWithTitle:@"Point" contents:v8];

  return v9;
}

- (id)drillDownSummary
{
  v3 = MEMORY[0x277CCACA8];
  [(PTPointSettings *)self x];
  v5 = v4;
  [(PTPointSettings *)self y];
  return [v3 stringWithFormat:@"(%.3g, %.3g)", v5, v6];
}

- (void)setPointValue:(CGPoint)a3
{
  y = a3.y;
  [(PTPointSettings *)self setX:a3.x];

  [(PTPointSettings *)self setY:y];
}

- (CGPoint)pointValue
{
  [(PTPointSettings *)self x];
  v4 = v3;
  [(PTPointSettings *)self y];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

@end