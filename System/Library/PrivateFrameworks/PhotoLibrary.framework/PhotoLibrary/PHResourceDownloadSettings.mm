@interface PHResourceDownloadSettings
+ (id)settingsControllerModule;
+ (id)sharedSettings;
- (void)setDefaultValues;
@end

@implementation PHResourceDownloadSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PHResourceDownloadSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PHResourceDownloadSettings *)self setSimulateDownload:0];
  [(PHResourceDownloadSettings *)self setSimulateDownloadFailure:0];
}

+ (id)settingsControllerModule
{
  v20[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43218];
  v3 = [MEMORY[0x277D432A0] rowWithTitle:@"Simulate Download" valueKeyPath:@"simulateDownload"];
  v20[0] = v3;
  v4 = [MEMORY[0x277D432A0] rowWithTitle:@"Simulate Download Failure" valueKeyPath:@"simulateDownloadFailure"];
  v5 = [v4 conditionFormat:@"simulateDownload == YES"];
  v20[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v7 = [v2 sectionWithRows:v6];

  v8 = MEMORY[0x277D43218];
  v9 = MEMORY[0x277D431A8];
  v10 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v11 = [v9 rowWithTitle:@"Restore Defaults" action:v10];
  v19 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v13 = [v8 sectionWithRows:v12];

  v14 = MEMORY[0x277D43218];
  v18[0] = v7;
  v18[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v16 = [v14 moduleWithTitle:@"Resource Download Request" contents:v15];

  return v16;
}

+ (id)sharedSettings
{
  v2 = +[PHRootSettings sharedSettings];
  v3 = [v2 resourceDownloadSettings];

  return v3;
}

@end