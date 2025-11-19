@interface PUCurationSettings
+ (PUCurationSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PUCurationSettings

- (void)setDefaultValues
{
  v2.receiver = self;
  v2.super_class = PUCurationSettings;
  [(PTSettings *)&v2 setDefaultValues];
}

+ (id)settingsControllerModule
{
  v39[6] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v23 = MEMORY[0x1E69C6638];
  v32 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Utility Comparison" protoViewControllerFactoryClassName:@"PXProtoCurationUtilityComparisonViewControllerFactory"];
  v38 = v32;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v30 = [v2 sectionWithRows:v31];
  v39[0] = v30;
  v3 = MEMORY[0x1E69C6638];
  v29 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Tragic Failures in Highlights" protoViewControllerFactoryClassName:@"PXProtoCurationDebugViewControllerFactory" options:&unk_1F2B7F008];
  v37 = v29;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v27 = [v3 sectionWithRows:v28];
  v39[1] = v27;
  v4 = MEMORY[0x1E69C6638];
  v26 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Asset Score Check" protoViewControllerFactoryClassName:@"PXProtoCurationScoreCheckViewControllerFactory"];
  v36 = v26;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v22 = [v4 sectionWithRows:v25];
  v39[2] = v22;
  v5 = MEMORY[0x1E69C6638];
  v21 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Action Signals" protoViewControllerFactoryClassName:@"PXProtoCurationDebugViewControllerFactory" options:&unk_1F2B7F030];
  v35[0] = v21;
  v20 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Asset Score Signals" protoViewControllerFactoryClassName:@"PXProtoCurationDebugViewControllerFactory" options:&unk_1F2B7F058];
  v35[1] = v20;
  v19 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Classification Signals" protoViewControllerFactoryClassName:@"PXProtoCurationDebugViewControllerFactory" options:&unk_1F2B7F080];
  v35[2] = v19;
  v6 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Import Source Check" protoViewControllerFactoryClassName:@"PXProtoCurationDebugViewControllerFactory" options:&unk_1F2B7F0A8];
  v35[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
  v8 = [v5 sectionWithRows:v7];
  v39[3] = v8;
  v9 = MEMORY[0x1E69C6638];
  v10 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Trip Key Asset" protoViewControllerFactoryClassName:@"PXProtoCurationDebugViewControllerFactory" options:&unk_1F2B7F0D0];
  v34 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v12 = [v9 sectionWithRows:v11];
  v39[4] = v12;
  v13 = MEMORY[0x1E69C6638];
  v14 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Collection Relevancy" protoViewControllerFactoryClassName:@"PXProtoCollectionRelevancyDebugViewControllerFactory"];
  v33 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v16 = [v13 sectionWithRows:v15];
  v39[5] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:6];
  v24 = [v23 moduleWithTitle:@"Curation Settings" contents:v17];

  return v24;
}

+ (PUCurationSettings)sharedInstance
{
  if (sharedInstance_onceToken_85217 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_85217, &__block_literal_global_85218);
  }

  v3 = sharedInstance_sharedInstance_85219;

  return v3;
}

void __36__PUCurationSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 curation];
  v1 = sharedInstance_sharedInstance_85219;
  sharedInstance_sharedInstance_85219 = v0;
}

@end