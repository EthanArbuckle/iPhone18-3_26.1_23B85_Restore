@interface PXCPLStatusSettings
+ (PXCPLStatusSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXCPLStatusSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXCPLStatusSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXCPLStatusSettings *)self setCloudQuotaOfferLevel:0];
  [(PXCPLStatusSettings *)self setCloudQuotaOfferIncludeAssetCounts:0];
  [(PXCPLStatusSettings *)self setResumeOverrideHours:&unk_1F190C088];
}

+ (id)settingsControllerModule
{
  v67[2] = *MEMORY[0x1E69E9840];
  v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C65F8];
  v4 = NSStringFromSelector(sel_cloudQuotaOfferLevel);
  v5 = [v3 rowWithTitle:@"Offer Level" valueKeyPath:v4];
  v6 = [v5 possibleValues:&unk_1F19109A8 titles:&unk_1F19109C0];
  v67[0] = v6;
  v7 = MEMORY[0x1E69C66A8];
  v8 = NSStringFromSelector(sel_cloudQuotaOfferIncludeAssetCounts);
  v9 = [v7 rowWithTitle:@"Offer Include Asset Counts" valueKeyPath:v8];
  v67[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
  v11 = [v2 sectionWithRows:v10 title:@"Cloud Quota"];
  [v63 addObject:v11];

  v12 = MEMORY[0x1E69C6638];
  v13 = MEMORY[0x1E69C65E8];
  v62 = _SetMockRowAction(@"{enabled=1 syncing=1; upload=25; progress=50}");;
  v61 = [v13 rowWithTitle:@"Active Upload" action:v62];
  v66[0] = v61;
  v14 = MEMORY[0x1E69C65E8];
  v60 = _SetMockRowAction(@"{enabled=1 upload=25; progress=50; battery-budget=1}");;
  v59 = [v14 rowWithTitle:@"Paused Upload (Battery)" action:v60];
  v66[1] = v59;
  v15 = MEMORY[0x1E69C65E8];
  v58 = _SetMockRowAction(@"{enabled=1 upload=25; progress=50; cellular-budget=1}");;
  v57 = [v15 rowWithTitle:@"Paused Upload (Cellular)" action:v58];
  v66[2] = v57;
  v16 = MEMORY[0x1E69C65E8];
  v56 = _SetMockRowAction(@"{enabled=1 upload=25; progress=50; low-data-mode=1}");;
  v55 = [v16 rowWithTitle:@"Paused Upload (Low Data)" action:v56];
  v66[3] = v55;
  v17 = MEMORY[0x1E69C65F8];
  v54 = NSStringFromSelector(sel_resumeOverrideHours);
  v53 = [v17 rowWithTitle:@"Resume Override Time" valueKeyPath:v54];
  v52 = [v53 possibleValues:&unk_1F19109D8 titles:&unk_1F19109F0];
  v66[4] = v52;
  v18 = MEMORY[0x1E69C65E8];
  v19 = _SetMockRowAction(@"{enabled=1 upload=25; progress=50; cloud-quota=1}");;
  v20 = [v18 rowWithTitle:@"iCloud Quota Full" action:v19];
  v66[5] = v20;
  v21 = MEMORY[0x1E69C65E8];
  v22 = _SetMockRowAction(@"{enabled=1 upload=25; progress=50; cloud-quota=1; offer=1}");;
  v23 = [v21 rowWithTitle:@"iCloud Quota Full + Offer" action:v22];
  v66[6] = v23;
  v24 = MEMORY[0x1E69C65E8];
  v25 = _SetMockRowAction(@"{enabled=0}");
  v26 = [v24 rowWithTitle:@"iCPL Disabled" action:v25];
  v66[7] = v26;
  v27 = MEMORY[0x1E69C66A8];
  v28 = NSStringFromSelector(sel_shouldHideMockStatusWarning);
  v29 = [v27 rowWithTitle:@"Hide Warning Message" valueKeyPath:v28];
  v66[8] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:9];
  v31 = [v12 sectionWithRows:v30 title:@"Mocks"];
  [v63 addObject:v31];

  v32 = MEMORY[0x1E69C6638];
  v33 = MEMORY[0x1E69C65E8];
  v34 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_131];
  v35 = [v33 rowWithTitle:@"Set WelcomeViewLastPresentationDate to Now" action:v34];
  v65[0] = v35;
  v36 = MEMORY[0x1E69C65E8];
  v37 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_137];
  v38 = [v36 rowWithTitle:@"Clear WelcomeViewLastPresentationDate" action:v37];
  v65[1] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
  v40 = [v32 sectionWithRows:v39 title:@"Cloud Quota Upsell"];
  [v63 addObject:v40];

  v41 = MEMORY[0x1E69C6638];
  v42 = MEMORY[0x1E69C65E8];
  v43 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_145];
  v44 = [v42 rowWithTitle:@"Clear Mocks" action:v43];
  v64[0] = v44;
  v45 = MEMORY[0x1E69C65E8];
  v46 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v47 = [v45 rowWithTitle:@"Restore Default Settings" action:v46];
  v64[1] = v47;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
  v49 = [v41 sectionWithRows:v48];
  [v63 addObject:v49];

  v50 = [MEMORY[0x1E69C6638] moduleWithTitle:@"CPL Status" contents:v63];

  return v50;
}

uint64_t __47__PXCPLStatusSettings_settingsControllerModule__block_invoke_3()
{
  v0 = PXSharedUserDefaults();
  [v0 removeObjectForKey:@"CPLStatusProviderMock"];

  return 1;
}

uint64_t __47__PXCPLStatusSettings_settingsControllerModule__block_invoke()
{
  v0 = [MEMORY[0x1E695DF00] now];
  PXPreferencesSetWelcomeViewLastPresentationDate(v0);

  return 1;
}

+ (PXCPLStatusSettings)sharedInstance
{
  if (sharedInstance_onceToken_109059 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_109059, &__block_literal_global_109060);
  }

  v3 = sharedInstance_sharedInstance_109061;

  return v3;
}

void __37__PXCPLStatusSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 cplStatusSettings];
  v1 = sharedInstance_sharedInstance_109061;
  sharedInstance_sharedInstance_109061 = v0;
}

@end