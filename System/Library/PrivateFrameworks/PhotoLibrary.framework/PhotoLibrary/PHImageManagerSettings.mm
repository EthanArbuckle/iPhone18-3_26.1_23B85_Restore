@interface PHImageManagerSettings
+ (id)settingsControllerModule;
+ (id)sharedSettings;
- (void)setDefaultValues;
@end

@implementation PHImageManagerSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PHImageManagerSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PHImageManagerSettings *)self setAllowImageRequests:1];
  [(PHImageManagerSettings *)self setAllowCaching:1];
}

+ (id)settingsControllerModule
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43218];
  v3 = [MEMORY[0x277D432A0] rowWithTitle:@"Image Requests" valueKeyPath:@"allowImageRequests"];
  v19[0] = v3;
  v4 = [MEMORY[0x277D432A0] rowWithTitle:@"Caching" valueKeyPath:@"allowCaching"];
  v19[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v6 = [v2 sectionWithRows:v5];

  v7 = MEMORY[0x277D43218];
  v8 = MEMORY[0x277D431A8];
  v9 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v10 = [v8 rowWithTitle:@"Restore Defaults" action:v9];
  v18 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v12 = [v7 sectionWithRows:v11];

  v13 = MEMORY[0x277D43218];
  v17[0] = v6;
  v17[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v15 = [v13 moduleWithTitle:@"Image Manager" contents:v14];

  return v15;
}

+ (id)sharedSettings
{
  v2 = +[PHRootSettings sharedSettings];
  imageManagerSettings = [v2 imageManagerSettings];

  return imageManagerSettings;
}

@end