@interface PXPeopleDetailSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PXPeopleDetailSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXPeopleDetailSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXPeopleDetailSettings *)self setShowAnnotateButton:0];
  [(PXPeopleDetailSettings *)self setUnverifiedPeopleAnnotationMinimumFaceCount:5];
}

+ (id)settingsControllerModule
{
  v27[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Person Details" action:&__block_literal_global_6];
  v27[0] = v3;
  v4 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Face Crop Details" action:&__block_literal_global_12_69685];
  v27[1] = v4;
  v5 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"People Donation" action:&__block_literal_global_18_69687];
  v27[2] = v5;
  v6 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Pet Details" action:&__block_literal_global_24];
  v27[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  v8 = [v2 sectionWithRows:v7];

  v9 = MEMORY[0x1E69C6638];
  v10 = MEMORY[0x1E69C66A8];
  v11 = NSStringFromSelector(sel_showAnnotateButton);
  v12 = [v10 rowWithTitle:@"People Annotation" valueKeyPath:v11];
  v26[0] = v12;
  v13 = MEMORY[0x1E69C66A0];
  v14 = NSStringFromSelector(sel_unverifiedPeopleAnnotationMinimumFaceCount);
  v15 = [v13 rowWithTitle:@"Unverified Person Minimum Face Count" valueKeyPath:v14];
  v16 = [v15 minValue:1.0 maxValue:50.0];
  v17 = [v16 px_increment:1.0];
  v18 = [v17 conditionFormat:@"showAnnotateButton == YES"];
  v26[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v20 = [v9 sectionWithRows:v19 title:@"People Annotation Settings"];

  v21 = MEMORY[0x1E69C6638];
  v25[0] = v8;
  v25[1] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v23 = [v21 moduleWithTitle:@"Faces Debug UI" contents:v22];

  return v23;
}

void __50__PXPeopleDetailSettings_settingsControllerModule__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PXPeopleDetailSettingsViewController alloc] initWithPersonDetectionType:2];
  [v2 pushViewController:v3 animated:1];
}

void __50__PXPeopleDetailSettings_settingsControllerModule__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(PXPeopleDonationSettingsViewController);
  [v2 pushViewController:v3 animated:1];
}

void __50__PXPeopleDetailSettings_settingsControllerModule__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(PXPeopleDetailSettingsFaceCropController);
  [v2 pushViewController:v3 animated:1];
}

void __50__PXPeopleDetailSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(PXPeopleDetailSettingsViewController);
  [v2 pushViewController:v3 animated:1];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_69722 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_69722, &__block_literal_global_69723);
  }

  v3 = sharedInstance_sharedInstance_69724;

  return v3;
}

void __40__PXPeopleDetailSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 peopleDetail];
  v1 = sharedInstance_sharedInstance_69724;
  sharedInstance_sharedInstance_69724 = v0;
}

@end