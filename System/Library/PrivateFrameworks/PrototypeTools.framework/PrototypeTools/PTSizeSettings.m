@interface PTSizeSettings
+ (id)settingsControllerModule;
- (CGSize)sizeValue;
- (id)drillDownSummary;
- (void)setSizeValue:(CGSize)a3;
@end

@implementation PTSizeSettings

+ (id)settingsControllerModule
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = [(PTRow *)PTEditFloatRow rowWithTitle:@"Width" valueKeyPath:@"width"];
  v3 = [v2 precision:1];
  v12[0] = v3;
  v4 = [(PTRow *)PTEditFloatRow rowWithTitle:@"Height" valueKeyPath:@"height"];
  v5 = [v4 precision:1];
  v12[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v7 = [PTModule sectionWithRows:v6];
  v11 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v9 = [PTModule moduleWithTitle:@"Size" contents:v8];

  return v9;
}

- (id)drillDownSummary
{
  v3 = MEMORY[0x277CCACA8];
  [(PTSizeSettings *)self width];
  v5 = v4;
  [(PTSizeSettings *)self height];
  return [v3 stringWithFormat:@"(%.1g, %.1g)", v5, v6];
}

- (void)setSizeValue:(CGSize)a3
{
  height = a3.height;
  [(PTSizeSettings *)self setWidth:a3.width];

  [(PTSizeSettings *)self setHeight:height];
}

- (CGSize)sizeValue
{
  [(PTSizeSettings *)self width];
  v4 = v3;
  [(PTSizeSettings *)self height];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

@end