@interface PXMemoriesRelatedSettings
+ (BOOL)isAssetCountAcceptableForMemoryLensPlayback:(int64_t)playback;
+ (BOOL)isAssetCountAcceptableForMemoryPlayback:(int64_t)playback;
+ (id)schedulerOptionsFromTimelineSchedulerMode:(unint64_t)mode;
+ (id)settingsControllerModule;
+ (id)sharedInstance;
+ (void)_generateQuestionsWithOptions:(int64_t)options count:(unint64_t)count inModuleController:(id)controller;
+ (void)_presentAlertForMemoriesGenerationResult:(id)result error:(id)error inModuleController:(id)controller;
+ (void)_presentAlertWithTitle:(id)title andMessage:(id)message inModuleController:(id)controller;
- (void)performPostSaveActions;
- (void)setDefaultValues;
@end

@implementation PXMemoriesRelatedSettings

- (void)setDefaultValues
{
  v17.receiver = self;
  v17.super_class = PXMemoriesRelatedSettings;
  [(PTSettings *)&v17 setDefaultValues];
  HasInternalUI = PFOSVariantHasInternalUI();
  [(PXMemoriesRelatedSettings *)self setFakePeopleProximity:0];
  [(PXMemoriesRelatedSettings *)self setShowLocalMemories:0];
  [(PXMemoriesRelatedSettings *)self setUseOnlyMusicForTopicInTopPickSuggestions:0];
  [(PXMemoriesRelatedSettings *)self setIncludeChillMixInMusicForYou:0];
  [(PXMemoriesRelatedSettings *)self setIncludeGetUpMixInMusicForYou:0];
  [(PXMemoriesRelatedSettings *)self setRefreshPhotoKitTimeout:3.0];
  [(PXMemoriesRelatedSettings *)self setWidgetRefreshTimeInterval:900.0];
  if (HasInternalUI)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [standardUserDefaults persistentDomainForName:*MEMORY[0x1E696A400]];
    v6 = [v5 mutableCopy];

    v7 = [v6 valueForKey:@"PGMinimumNumberOfCuratedAssetsForMemories"];
    integerValue = [v7 integerValue];

    v9 = [v6 valueForKey:@"PGMinimumNumberOfCuratedAssetsForInterestingMoments"];
    integerValue2 = [v9 integerValue];

    [(PXMemoriesRelatedSettings *)self setMinimumNumberOfCuratedAssetsForMemories:integerValue];
    [(PXMemoriesRelatedSettings *)self setMinimumNumberOfCuratedAssetsForInterestingMoments:integerValue2];
    v11 = [v6 valueForKey:@"PXMemoriesLivingOnFeedbackUIEnabled"];
    v12 = v11;
    if (v11)
    {
      bOOLValue = [v11 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    [(PXMemoriesRelatedSettings *)self setEnableMemoriesLivingOnFeedback:bOOLValue];
    v14 = [v6 valueForKey:@"PXTimelineSchedulerMode"];
    v15 = v14;
    if (v14)
    {
      unsignedIntegerValue = [v14 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    [(PXMemoriesRelatedSettings *)self setTimelineSchedulerMode:unsignedIntegerValue];
  }

  [(PXMemoriesRelatedSettings *)self setTimelineContentMode:0];
  [(PXMemoriesRelatedSettings *)self setWidgetSize:0];
  [(PXMemoriesRelatedSettings *)self setMinimumNumberOfCuratedAssetsForMovieHeader:5];
  [(PXMemoriesRelatedSettings *)self setDeleteBehavior:0];
  [(PXMemoriesRelatedSettings *)self setRecoverBlacklistedMemories:0];
  [(PXMemoriesRelatedSettings *)self setShowMemoryTitleLayer:0];
  [(PXMemoriesRelatedSettings *)self setEnableIPadWideHeader:0];
  [(PXMemoriesRelatedSettings *)self setSubtitleFontSize:20];
}

- (void)performPostSaveActions
{
  v21.receiver = self;
  v21.super_class = PXMemoriesRelatedSettings;
  [(PXSettings *)&v21 performPostSaveActions];
  if (PFOSVariantHasInternalUI())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults synchronize];
    v4 = *MEMORY[0x1E696A400];
    v5 = [standardUserDefaults persistentDomainForName:*MEMORY[0x1E696A400]];
    dictionary = [v5 mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    minimumNumberOfCuratedAssetsForMemories = [(PXMemoriesRelatedSettings *)self minimumNumberOfCuratedAssetsForMemories];
    minimumNumberOfCuratedAssetsForInterestingMoments = [(PXMemoriesRelatedSettings *)self minimumNumberOfCuratedAssetsForInterestingMoments];
    v9 = [dictionary valueForKey:@"PGMinimumNumberOfCuratedAssetsForMemories"];
    integerValue = [v9 integerValue];

    v11 = minimumNumberOfCuratedAssetsForMemories == integerValue;
    v12 = minimumNumberOfCuratedAssetsForMemories != integerValue;
    if (!v11)
    {
      if (minimumNumberOfCuratedAssetsForMemories)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:minimumNumberOfCuratedAssetsForMemories];
        [dictionary setObject:v13 forKey:@"PGMinimumNumberOfCuratedAssetsForMemories"];
      }

      else
      {
        [dictionary removeObjectForKey:@"PGMinimumNumberOfCuratedAssetsForMemories"];
      }
    }

    v14 = [dictionary valueForKey:@"PGMinimumNumberOfCuratedAssetsForInterestingMoments"];
    integerValue2 = [v14 integerValue];

    if (minimumNumberOfCuratedAssetsForInterestingMoments != integerValue2)
    {
      if (minimumNumberOfCuratedAssetsForInterestingMoments)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithInteger:minimumNumberOfCuratedAssetsForInterestingMoments];
        [dictionary setObject:v16 forKey:@"PGMinimumNumberOfCuratedAssetsForInterestingMoments"];
      }

      else
      {
        [dictionary removeObjectForKey:@"PGMinimumNumberOfCuratedAssetsForInterestingMoments"];
      }

      v12 = 1;
    }

    timelineSchedulerMode = [(PXMemoriesRelatedSettings *)self timelineSchedulerMode];
    v18 = [dictionary valueForKey:@"PXTimelineSchedulerMode"];
    v19 = v18;
    if (timelineSchedulerMode)
    {
      if (timelineSchedulerMode != [v18 unsignedIntegerValue])
      {
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:timelineSchedulerMode];
        [dictionary setObject:v20 forKey:@"PXTimelineSchedulerMode"];

        goto LABEL_19;
      }
    }

    else if (v18)
    {
      [dictionary removeObjectForKey:@"PXTimelineSchedulerMode"];
      goto LABEL_19;
    }

    if (!v12)
    {
LABEL_20:

      return;
    }

LABEL_19:
    [standardUserDefaults setPersistentDomain:dictionary forName:v4];
    goto LABEL_20;
  }
}

+ (BOOL)isAssetCountAcceptableForMemoryLensPlayback:(int64_t)playback
{
  v4 = +[PXLemonadeSettings sharedInstance];
  if ([v4 minimumNumberOfAssetsForPlaybackAsMemory] <= playback)
  {
    v6 = +[PXLemonadeSettings sharedInstance];
    v5 = [v6 maximumNumberOfAssetsForPlaybackAsMemory] >= playback;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAssetCountAcceptableForMemoryPlayback:(int64_t)playback
{
  v4 = +[PXMemoriesRelatedSettings sharedInstance];
  v6 = [v4 minimumNumberOfCuratedAssetsForMovieHeader] <= playback && *MEMORY[0x1E6978FE8] >= playback;

  return v6;
}

+ (id)schedulerOptionsFromTimelineSchedulerMode:(unint64_t)mode
{
  v4 = objc_alloc_init(PXTimelineSchedulerOptions);
  v5 = v4;
  if (mode > 1)
  {
    switch(mode)
    {
      case 2uLL:
        [(PXTimelineSchedulerOptions *)v4 setTimelineEntryDuration:86400.0];
        [(PXTimelineSchedulerOptions *)v5 timelineEntryDuration];
        [(PXTimelineSchedulerOptions *)v5 setBestContentEntryDuration:?];
        v7 = &unk_1F1910048;
        break;
      case 3uLL:
        [(PXTimelineSchedulerOptions *)v4 setTimelineEntryDuration:21600.0];
        [(PXTimelineSchedulerOptions *)v5 timelineEntryDuration];
        [(PXTimelineSchedulerOptions *)v5 setBestContentEntryDuration:?];
        v7 = &unk_1F1910060;
        break;
      case 4uLL:
        v6 = 1800.0;
        goto LABEL_13;
      default:
        goto LABEL_14;
    }

LABEL_11:
    [(PXTimelineSchedulerOptions *)v5 setBestContentStartTimeHours:v7];
    goto LABEL_14;
  }

  if (mode)
  {
    if (mode != 1)
    {
      goto LABEL_14;
    }

    [(PXTimelineSchedulerOptions *)v4 setTimelineEntryDuration:10800.0];
    [(PXTimelineSchedulerOptions *)v5 timelineEntryDuration];
    [(PXTimelineSchedulerOptions *)v5 setBestContentEntryDuration:?];
    v7 = &unk_1F1910030;
    goto LABEL_11;
  }

  v6 = 3600.0;
LABEL_13:
  [(PXTimelineSchedulerOptions *)v4 setTimelineEntryDuration:v6];
  [(PXTimelineSchedulerOptions *)v5 setBestContentEntryDuration:7200.0];
LABEL_14:

  return v5;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_49895 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_49895, &__block_literal_global_49896);
  }

  v3 = sharedInstance_sharedInstance_49897;

  return v3;
}

void __43__PXMemoriesRelatedSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 memoriesRelated];
  v1 = sharedInstance_sharedInstance_49897;
  sharedInstance_sharedInstance_49897 = v0;
}

+ (void)_presentAlertWithTitle:(id)title andMessage:(id)message inModuleController:(id)controller
{
  v7 = MEMORY[0x1E69DC650];
  controllerCopy = controller;
  v10 = [v7 alertControllerWithTitle:title message:message preferredStyle:1];
  v9 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:1 handler:0];
  [v10 addAction:v9];

  [controllerCopy presentViewController:v10 animated:1 completion:0];
}

+ (void)_presentAlertForMemoriesGenerationResult:(id)result error:(id)error inModuleController:(id)controller
{
  errorCopy = error;
  controllerCopy = controller;
  resultCopy = result;
  [controllerCopy dismissViewControllerAnimated:0 completion:0];
  v10 = [resultCopy objectForKeyedSubscript:@"PHMemoryIdentifiersKey"];

  v11 = [v10 count];
  if (errorCopy)
  {
    v12 = [errorCopy description];
    v13 = @"Error while generating memories";
  }

  else
  {
    v14 = @"memories";
    if (v11 == 1)
    {
      v14 = @"memory";
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Generated %lu %@.", v11, v14];
    v12 = 0;
  }

  [self _presentAlertWithTitle:v13 andMessage:v12 inModuleController:controllerCopy];
}

+ (void)_generateQuestionsWithOptions:(int64_t)options count:(unint64_t)count inModuleController:(id)controller
{
  controllerCopy = controller;
  v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Generating New Questions..." message:0 preferredStyle:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PXMemoriesRelatedSettings_UI___generateQuestionsWithOptions_count_inModuleController___block_invoke;
  v11[3] = &unk_1E7749770;
  v12 = controllerCopy;
  optionsCopy = options;
  countCopy = count;
  selfCopy = self;
  v10 = controllerCopy;
  [v10 presentViewController:v9 animated:1 completion:v11];
}

void __88__PXMemoriesRelatedSettings_UI___generateQuestionsWithOptions_count_inModuleController___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69BEB30]];

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69BEB20]];

  v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v6 = [v5 photoAnalysisClient];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__PXMemoriesRelatedSettings_UI___generateQuestionsWithOptions_count_inModuleController___block_invoke_2;
  v10[3] = &unk_1E7734490;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  [v6 requestGenerateQuestionsWithOptions:v2 reply:v10];
}

void __88__PXMemoriesRelatedSettings_UI___generateQuestionsWithOptions_count_inModuleController___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(a1 + 32);
  v7 = v6;
  v8 = v5;
  px_dispatch_on_main_queue();
}

void __88__PXMemoriesRelatedSettings_UI___generateQuestionsWithOptions_count_inModuleController___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
  v2 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69BEB28]];
  v3 = [v2 BOOLValue];

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Successfully Generated %lu Questions.", *(a1 + 56)];
  v5 = v4;
  if (v3)
  {
    v6 = @"You may need to relaunch Photos to view.";
  }

  else
  {

    v7 = *(a1 + 48);
    if (v7)
    {
      v6 = [v7 localizedDescription];
    }

    else
    {
      v6 = @"You may need to rebuild your graph.";
    }

    v5 = @"Question Generation Failed";
  }

  v8 = v5;
  [*(a1 + 64) _presentAlertWithTitle:v5 andMessage:v6 inModuleController:*(a1 + 32)];
}

+ (id)settingsControllerModule
{
  v215 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C65E8];
  v199[0] = MEMORY[0x1E69E9820];
  v199[1] = 3221225472;
  v199[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke;
  v199[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v199[4] = self;
  v4 = [MEMORY[0x1E69C6658] actionWithHandler:v199];
  v177 = [v3 rowWithTitle:@"Graph Service Status" action:v4];

  v5 = MEMORY[0x1E69C65E8];
  v198[0] = MEMORY[0x1E69E9820];
  v198[1] = 3221225472;
  v198[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_2;
  v198[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v198[4] = self;
  v6 = [MEMORY[0x1E69C6658] actionWithHandler:v198];
  v176 = [v5 rowWithTitle:@"Invalidate Transient Caches" action:v6];

  v7 = MEMORY[0x1E69C65E8];
  v197[0] = MEMORY[0x1E69E9820];
  v197[1] = 3221225472;
  v197[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_3;
  v197[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v197[4] = self;
  v8 = [MEMORY[0x1E69C6658] actionWithHandler:v197];
  v175 = [v7 rowWithTitle:@"Invalidate Persistent Caches" action:v8];

  v9 = MEMORY[0x1E69C65E8];
  v10 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_64656];
  v174 = [v9 rowWithTitle:@"Trigger Graph Rebuild" action:v10];

  v11 = MEMORY[0x1E69C65E8];
  v196[0] = MEMORY[0x1E69E9820];
  v196[1] = 3221225472;
  v196[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_6;
  v196[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v196[4] = self;
  v12 = [MEMORY[0x1E69C6658] actionWithHandler:v196];
  v173 = [v11 rowWithTitle:@"Launch Highlights Enrichment" action:v12];

  v13 = MEMORY[0x1E69C65E8];
  v195[0] = MEMORY[0x1E69E9820];
  v195[1] = 3221225472;
  v195[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_9;
  v195[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v195[4] = self;
  v14 = [MEMORY[0x1E69C6658] actionWithHandler:v195];
  v172 = [v13 rowWithTitle:@"Launch Month / Year Enrichment" action:v14];

  v171 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Statistics" output:&__block_literal_global_243];
  v170 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Library Estimates" action:&__block_literal_global_249];
  v169 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Export Graph" action:&__block_literal_global_255_64663];
  array = [MEMORY[0x1E695DF70] array];
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v16 = [&unk_1F1910330 countByEnumeratingWithState:&v191 objects:v214 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v192;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v192 != v18)
        {
          objc_enumerationMutation(&unk_1F1910330);
        }

        v20 = *(*(&v191 + 1) + 8 * i);
        if ([v20 integerValue])
        {
          v21 = [v20 description];
          [array addObject:v21];
        }

        else
        {
          [array addObject:@"Default"];
        }
      }

      v17 = [&unk_1F1910330 countByEnumeratingWithState:&v191 objects:v214 count:16];
    }

    while (v17);
  }

  v22 = MEMORY[0x1E69C6610];
  v23 = +[PXContextualMemoriesSettingsTableViewController title];
  v24 = [v22 px_rowWithTitle:v23 action:&__block_literal_global_302];

  v25 = MEMORY[0x1E69C6638];
  v213[0] = v177;
  v213[1] = v176;
  v213[2] = v175;
  v213[3] = v174;
  v213[4] = v173;
  v213[5] = v172;
  v213[6] = v171;
  v213[7] = v170;
  v213[8] = v169;
  v26 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Local Memories" valueKeyPath:@"showLocalMemories"];
  v213[9] = v26;
  v147 = v24;
  v213[10] = v24;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v213 count:11];
  v168 = [v25 sectionWithRows:v27 title:@"General"];

  v167 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Existing Memories Inspector" action:&__block_literal_global_320];
  v166 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Exercise Memory Generation" action:&__block_literal_global_330];
  v165 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Memory Generation Logs - Last Day" action:&__block_literal_global_375];
  v164 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Memory Generation Logs - All" action:&__block_literal_global_385];
  v163 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Existing Suggestions Inspector" action:&__block_literal_global_391_64674];
  v162 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Suggesters Inspector" action:&__block_literal_global_401];
  v161 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Exercise Suggestion Generation" action:&__block_literal_global_411];
  v160 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Suggestion Generation Logs - Last Day" action:&__block_literal_global_430_64678];
  v159 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Suggestion Generation Logs - All" action:&__block_literal_global_439];
  v158 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Score Lab" action:&__block_literal_global_445];
  v28 = MEMORY[0x1E69C65E8];
  v190[0] = MEMORY[0x1E69E9820];
  v190[1] = 3221225472;
  v190[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_12_450;
  v190[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v190[4] = self;
  v29 = [MEMORY[0x1E69C6658] actionWithHandler:v190];
  v157 = [v28 rowWithTitle:@"Create Contextual Memory" action:v29];

  v30 = MEMORY[0x1E69C65E8];
  v189[0] = MEMORY[0x1E69E9820];
  v189[1] = 3221225472;
  v189[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_16;
  v189[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v189[4] = self;
  v31 = [MEMORY[0x1E69C6658] actionWithHandler:v189];
  v156 = [v30 rowWithTitle:@"Statistics" action:v31];

  v32 = MEMORY[0x1E69C65E8];
  v188[0] = MEMORY[0x1E69E9820];
  v188[1] = 3221225472;
  v188[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_19;
  v188[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v188[4] = self;
  v33 = [MEMORY[0x1E69C6658] actionWithHandler:v188];
  v34 = [v32 rowWithTitle:@"Generate Questions" action:v33];

  v35 = MEMORY[0x1E69C65E8];
  v187[0] = MEMORY[0x1E69E9820];
  v187[1] = 3221225472;
  v187[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_20;
  v187[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v187[4] = self;
  v36 = [MEMORY[0x1E69C6658] actionWithHandler:v187];
  v37 = [v35 rowWithTitle:@"Clear Unanswered Questions" action:v36];

  v38 = MEMORY[0x1E69C65E8];
  v186[0] = MEMORY[0x1E69E9820];
  v186[1] = 3221225472;
  v186[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_23;
  v186[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v186[4] = self;
  v39 = [MEMORY[0x1E69C6658] actionWithHandler:v186];
  v40 = [v38 rowWithTitle:@"🔮 Generate Music Quality Questions" action:v39];

  v41 = MEMORY[0x1E69C65E8];
  v185[0] = MEMORY[0x1E69E9820];
  v185[1] = 3221225472;
  v185[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_24;
  v185[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v185[4] = self;
  v42 = [MEMORY[0x1E69C6658] actionWithHandler:v185];
  v43 = [v41 rowWithTitle:@"🔮 Generate Social Group Questions" action:v42];

  v44 = MEMORY[0x1E69C6638];
  v212[0] = v156;
  v145 = v37;
  v146 = v34;
  v212[1] = v34;
  v212[2] = v37;
  v143 = v43;
  v144 = v40;
  v212[3] = v40;
  v212[4] = v43;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v212 count:5];
  v155 = [v44 sectionWithRows:v45 title:@"Photos Challenge"];

  v46 = MEMORY[0x1E69C65E8];
  v184[0] = MEMORY[0x1E69E9820];
  v184[1] = 3221225472;
  v184[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_25;
  v184[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v184[4] = self;
  v47 = [MEMORY[0x1E69C6658] actionWithHandler:v184];
  v48 = [v46 rowWithTitle:@"Music Curation Cache Status" action:v47];

  v49 = MEMORY[0x1E69C65E8];
  v183[0] = MEMORY[0x1E69E9820];
  v183[1] = 3221225472;
  v183[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_2_525;
  v183[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v183[4] = self;
  v50 = [MEMORY[0x1E69C6658] actionWithHandler:v183];
  v51 = [v49 rowWithTitle:@"Music Curation Clear Cache" action:v50];

  v52 = MEMORY[0x1E69C6638];
  v141 = v51;
  v142 = v48;
  v211[0] = v48;
  v211[1] = v51;
  v53 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use only human-curated for Top Picks" valueKeyPath:@"useOnlyMusicForTopicInTopPickSuggestions"];
  v211[2] = v53;
  v54 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Include Chill Mix in Music For You" valueKeyPath:@"includeChillMixInMusicForYou"];
  v211[3] = v54;
  v55 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Include Get Up Mix in Music For You" valueKeyPath:@"includeGetUpMixInMusicForYou"];
  v211[4] = v55;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v211 count:5];
  v139 = [v52 sectionWithRows:v56 title:@"Music Curation"];

  v57 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Meanings Inspector" action:&__block_literal_global_571];
  v58 = MEMORY[0x1E69C6638];
  v140 = v57;
  v210 = v57;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v210 count:1];
  v154 = [v58 sectionWithRows:v59 title:@"Meanings"];

  v60 = MEMORY[0x1E69C6638];
  v209[0] = v167;
  v209[1] = v166;
  v209[2] = v165;
  v209[3] = v164;
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v209 count:4];
  v153 = [v60 sectionWithRows:v61 title:@"Memory Debug"];

  v62 = MEMORY[0x1E69C6638];
  v208[0] = v163;
  v208[1] = v162;
  v208[2] = v161;
  v208[3] = v160;
  v208[4] = v159;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v208 count:5];
  v152 = [v62 sectionWithRows:v63 title:@"Suggestion Debug"];

  v64 = MEMORY[0x1E69C6638];
  v207 = v158;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v207 count:1];
  v151 = [v64 sectionWithRows:v65 title:@"Curation Lab"];

  v66 = MEMORY[0x1E69C6638];
  v206[0] = v157;
  v67 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Fake People Proximity" valueKeyPath:@"fakePeopleProximity"];
  v206[1] = v67;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v206 count:2];
  v148 = [v66 sectionWithRows:v68 title:@"Contextual"];

  v69 = MEMORY[0x1E69C65E8];
  v182[0] = MEMORY[0x1E69E9820];
  v182[1] = 3221225472;
  v182[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_6_597;
  v182[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v182[4] = self;
  v70 = [MEMORY[0x1E69C6658] actionWithHandler:v182];
  v150 = [v69 rowWithTitle:@"Remove All Memories" action:v70];

  v71 = MEMORY[0x1E69C65E8];
  v181[0] = MEMORY[0x1E69E9820];
  v181[1] = 3221225472;
  v181[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_9_611;
  v181[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v181[4] = self;
  v72 = [MEMORY[0x1E69C6658] actionWithHandler:v181];
  v149 = [v71 rowWithTitle:@"Create New Memories" action:v72];

  v73 = MEMORY[0x1E69C65E8];
  v74 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_623];
  v75 = [v73 rowWithTitle:@"Reset Rejected Memories" action:v74];

  v76 = MEMORY[0x1E69C65E8];
  v180[0] = MEMORY[0x1E69E9820];
  v180[1] = 3221225472;
  v180[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_636;
  v180[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v180[4] = self;
  v77 = [MEMORY[0x1E69C6658] actionWithHandler:v180];
  v78 = [v76 rowWithTitle:@"Create Memories Notification" action:v77];

  v79 = MEMORY[0x1E69C65E8];
  v179[0] = MEMORY[0x1E69E9820];
  v179[1] = 3221225472;
  v179[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_4_650;
  v179[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v179[4] = self;
  v80 = [MEMORY[0x1E69C6658] actionWithHandler:v179];
  v81 = [v79 rowWithTitle:@"Simulate Memories Notification" action:v80];

  v82 = MEMORY[0x1E69C65E8];
  v178[0] = MEMORY[0x1E69E9820];
  v178[1] = 3221225472;
  v178[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_6_664;
  v178[3] = &__block_descriptor_40_e40_B24__0__PTRow_8__PTUIModuleController_16l;
  v178[4] = self;
  v83 = [MEMORY[0x1E69C6658] actionWithHandler:v178];
  v84 = [v82 rowWithTitle:@"Reset Memories Notification State" action:v83];

  v85 = MEMORY[0x1E69C6638];
  v205[0] = v150;
  v205[1] = v149;
  v137 = v78;
  v138 = v75;
  v205[2] = v75;
  v205[3] = v78;
  v135 = v84;
  v136 = v81;
  v205[4] = v81;
  v205[5] = v84;
  v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v205 count:6];
  v134 = [v85 sectionWithRows:v86 title:@"Memories"];

  v129 = MEMORY[0x1E69C6638];
  v133 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Memories Living On Feedback" valueKeyPath:@"enableMemoriesLivingOnFeedback"];
  v204[0] = v133;
  v131 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Min # for Memories" valueKeyPath:@"minimumNumberOfCuratedAssetsForMemories"];
  v127 = [v131 possibleValues:&unk_1F1910330 titles:array];
  v204[1] = v127;
  v125 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Min # for Interesting Moments" valueKeyPath:@"minimumNumberOfCuratedAssetsForInterestingMoments"];
  v123 = [v125 possibleValues:&unk_1F1910330 titles:array];
  v204[2] = v123;
  v121 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Min # for Movie Header" valueKeyPath:@"minimumNumberOfCuratedAssetsForMovieHeader"];
  v87 = [v121 possibleValues:&unk_1F1910330 titles:array];
  v204[3] = v87;
  v88 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Delete Behavior" valueKeyPath:@"deleteBehavior"];
  v89 = [v88 possibleValues:&unk_1F1910348 titles:&unk_1F1910360];
  v204[4] = v89;
  v90 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Memory Title Layer" valueKeyPath:@"showMemoryTitleLayer"];
  v204[5] = v90;
  v91 = [MEMORY[0x1E69C66A8] rowWithTitle:@"iPad Wide Header" valueKeyPath:@"enableIPadWideHeader"];
  v204[6] = v91;
  v92 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Subtitle font size" valueKeyPath:@"subtitleFontSize"];
  v93 = [v92 minValue:10.0 maxValue:30.0];
  v94 = [v93 px_increment:1.0];
  v204[7] = v94;
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v204 count:8];
  v130 = [v129 sectionWithRows:v95 title:@"Memories UI"];

  v96 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Generate Timeline" output:&__block_literal_global_749];
  v97 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Timeline Inspector" action:&__block_literal_global_767];
  v98 = [PXTimelineSize sizeDescriptionForSizeClass:0];
  v203[0] = v98;
  v99 = [PXTimelineSize sizeDescriptionForSizeClass:1];
  v203[1] = v99;
  v100 = [PXTimelineSize sizeDescriptionForSizeClass:2];
  v203[2] = v100;
  v101 = [PXTimelineSize sizeDescriptionForSizeClass:3];
  v203[3] = v101;
  v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v203 count:4];

  v103 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Widget Size" valueKeyPath:@"widgetSize"];
  v128 = v102;
  v104 = [v103 possibleValues:&unk_1F1910378 titles:v102];

  v105 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Content Mode" valueKeyPath:@"timelineContentMode"];
  v106 = [v105 possibleValues:&unk_1F1910390 titles:&unk_1F19103A8];

  v107 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Scheduler Mode" valueKeyPath:@"timelineSchedulerMode"];
  v108 = [v107 possibleValues:&unk_1F19103C0 titles:&unk_1F19103D8];

  v109 = MEMORY[0x1E69C6638];
  v132 = v97;
  v202[0] = v96;
  v202[1] = v97;
  v124 = v106;
  v126 = v104;
  v202[2] = v104;
  v202[3] = v106;
  v202[4] = v108;
  v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:v202 count:5];
  v111 = [v109 sectionWithRows:v110 title:@"Timeline"];

  v112 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Continuous Service Status" continuousOutputProducer:&__block_literal_global_840];
  v113 = MEMORY[0x1E69C6638];
  v201 = v112;
  v114 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v201 count:1];
  v115 = [v113 sectionWithRows:v114 title:@"Debug"];

  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v117 = objc_alloc(MEMORY[0x1E695DF70]);
  v200[0] = v168;
  v200[1] = v155;
  v200[2] = v154;
  v200[3] = v153;
  v200[4] = v152;
  v200[5] = v151;
  v200[6] = v148;
  v200[7] = v134;
  v200[8] = v130;
  v200[9] = v111;
  v200[10] = v115;
  v200[11] = px_restoreDefaultsSection;
  v118 = [MEMORY[0x1E695DEC8] arrayWithObjects:v200 count:12];
  v119 = [v117 initWithArray:v118];

  if (v139)
  {
    [v119 insertObject:v139 atIndex:2];
  }

  v122 = [MEMORY[0x1E69C6638] moduleWithTitle:@"Memories & Storytelling" contents:v119];

  return v122;
}

BOOL __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v11 = 0;
  v6 = [v5 graphStatusDescription:&v11];
  v7 = v11;

  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v7 localizedDescription];
    [v8 _presentAlertWithTitle:@"Graph Service Status" andMessage:v9 inModuleController:v4];
  }

  else
  {
    [v8 _presentAlertWithTitle:@"Graph Service Status" andMessage:v6 inModuleController:v4];
  }

  return v7 != 0;
}

BOOL __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v10 = 0;
  [v5 invalidateTransientGraphCachesAndReturnError:&v10];
  v6 = v10;

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v6 localizedDescription];
    [v7 _presentAlertWithTitle:@"Error while invalidating transient caches" andMessage:v8 inModuleController:v4];
  }

  return v6 == 0;
}

BOOL __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v10 = 0;
  [v5 invalidatePersistentGraphCachesAndReturnError:&v10];
  v6 = v10;

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v6 localizedDescription];
    [v7 _presentAlertWithTitle:@"Error while invalidating persistent caches" andMessage:v8 inModuleController:v4];
  }

  return v6 == 0;
}

uint64_t __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(a1 + 32) _presentAlertWithTitle:@"Starting Enrichment" andMessage:@"This will take a while…" inModuleController:v4];
  v5 = dispatch_get_global_queue(25, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_7;
  v9[3] = &unk_1E77498A0;
  v6 = *(a1 + 32);
  v10 = v4;
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, v9);

  return 1;
}

uint64_t __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(a1 + 32) _presentAlertWithTitle:@"Starting Enrichment" andMessage:@"This will take a few seconds…" inModuleController:v4];
  v5 = +[PXContextualMemoriesSettingsController sharedController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_10;
  v9[3] = &unk_1E7734340;
  v6 = *(a1 + 32);
  v10 = v4;
  v11 = v6;
  v7 = v4;
  [v5 requestUpdatedContextualMemoriesSettingsWithOptions:0 completionHandler:v9];

  return 1;
}

uint64_t __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_12_450(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Generating Contextual Memory..." message:0 preferredStyle:1];
  [v4 presentViewController:v5 animated:1 completion:0];
  v6 = +[PXContextualMemoriesSettingsController sharedController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_13_455;
  v10[3] = &unk_1E7734340;
  v7 = *(a1 + 32);
  v11 = v4;
  v12 = v7;
  v8 = v4;
  [v6 requestUpdatedContextualMemoriesSettingsWithOptions:0 completionHandler:v10];

  return 1;
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_16(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  v5 = [MEMORY[0x1E6978A10] fetchAnsweredQuestionsWithOptions:v4 validQuestionsOnly:1];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v29 + 1) + 8 * i) type];
        v12 = @"Unknown";
        if (v11 <= 0x1E)
        {
          v12 = off_1E77344B0[v11];
        }

        v13 = v12;
        v14 = [v6 objectForKeyedSubscript:v13];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = &unk_1F190B1E8;
        }

        v17 = v16;

        v18 = MEMORY[0x1E696AD98];
        v19 = [v17 integerValue];

        v20 = [v18 numberWithInteger:v19 + 1];
        [v6 setObject:v20 forKeyedSubscript:v13];
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"\n"];
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Total Answered: %lu\n\n", objc_msgSend(obj, "count")];
  [v21 appendString:v22];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_17;
  v28[3] = &unk_1E7745258;
  v23 = v21;
  v28[4] = v23;
  [v6 enumerateKeysAndObjectsUsingBlock:v28];
  v24 = v26;
  v25 = v23;
  px_dispatch_on_main_queue();
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_20(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  [v4 librarySpecificFetchOptions];
  v5 = [MEMORY[0x1E6978A10] fetchUnansweredQuestionsWithOptions:objc_claimAutoreleasedReturnValue() validQuestionsOnly:0];
  v10 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_21;
  v11[3] = &unk_1E774C648;
  v11[4] = v5;
  v6 = v5;
  [v4 performChangesAndWait:v11 error:&v10];
  v7 = v10;
  v8 = v3;
  v9 = v7;
  px_dispatch_on_main_queue();
}

BOOL __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_group_create();
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__64909;
  v32 = __Block_byref_object_dispose__64910;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__64909;
  v26 = __Block_byref_object_dispose__64910;
  v27 = 0;
  dispatch_group_enter(v7);
  v8 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v9 = [v8 photoAnalysisClient];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_511;
  v18[3] = &unk_1E77343D0;
  v20 = &v28;
  v21 = &v22;
  v10 = v7;
  v19 = v10;
  [v9 requestMusicCacheStatusWithReply:v18];

  v11 = dispatch_time(0, 60000000000);
  dispatch_group_wait(v10, v11);
  v12 = v29[5];
  v13 = *(a1 + 32);
  if (v12)
  {
    [v13 _presentAlertWithTitle:@"Music Cache Status" andMessage:v29[5] inModuleController:v6];
  }

  else
  {
    v14 = [v23[5] localizedDescription];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"Unknown Error";
    }

    [v13 _presentAlertWithTitle:@"Error" andMessage:v16 inModuleController:v6];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12 != 0;
}

uint64_t __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_2_525(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:@"Are you sure? This action cannot be undone." preferredStyle:0];
  v6 = MEMORY[0x1E69DC648];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_3_533;
  v15 = &unk_1E77343F8;
  v7 = *(a1 + 32);
  v16 = v4;
  v17 = v7;
  v8 = v4;
  v9 = [v6 actionWithTitle:@"Remove All Songs from Music Cache" style:2 handler:&v12];
  [v5 addAction:{v9, v12, v13, v14, v15}];

  v10 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  [v5 addAction:v10];

  [v8 presentViewController:v5 animated:1 completion:0];
  return 1;
}

uint64_t __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_6_597(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:@"Are you sure? This action cannot be undone." preferredStyle:0];
  v6 = MEMORY[0x1E69DC648];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_7_601;
  v15 = &unk_1E77343F8;
  v7 = *(a1 + 32);
  v16 = v4;
  v17 = v7;
  v8 = v4;
  v9 = [v6 actionWithTitle:@"Delete All Memories" style:2 handler:&v12];
  [v5 addAction:{v9, v12, v13, v14, v15}];

  v10 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  [v5 addAction:v10];

  [v8 presentViewController:v5 animated:1 completion:0];
  return 1;
}

uint64_t __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_9_611(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Generating Memories..." message:0 preferredStyle:1];
  [v4 presentViewController:v5 animated:1 completion:0];
  v6 = +[PXContextualMemoriesSettingsController sharedController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_10_615;
  v10[3] = &unk_1E7734340;
  v7 = *(a1 + 32);
  v11 = v4;
  v12 = v7;
  v8 = v4;
  [v6 requestUpdatedContextualMemoriesSettingsWithOptions:0 completionHandler:v10];

  return 1;
}

uint64_t __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_636(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Generating Memories Notification..." message:0 preferredStyle:1];
  [v4 presentViewController:v5 animated:1 completion:0];
  v6 = objc_alloc_init(MEMORY[0x1E6978910]);
  [v6 setReason:2];
  [v6 setExtraParameters:&unk_1F190F080];
  v7 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  [v6 setPhotoLibrary:v7];

  v8 = MEMORY[0x1E69788F0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_2_645;
  v12[3] = &unk_1E77343A8;
  v9 = *(a1 + 32);
  v13 = v4;
  v14 = v9;
  v10 = v4;
  [v8 generateMemoriesWithOptions:v6 completion:v12];

  return 1;
}

uint64_t __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_4_650(uint64_t a1, uint64_t a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v14 = @"notificationState";
  v6 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v15[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_5_654;
  v11[3] = &unk_1E77343A8;
  v8 = *(a1 + 32);
  v12 = v4;
  v13 = v8;
  v9 = v4;
  [v5 simulateMemoriesNotificationWithOptions:v7 reply:v11];

  return 1;
}

uint64_t __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_6_664(uint64_t a1, uint64_t a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v14 = @"notificationState";
  v6 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v15[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_7_665;
  v11[3] = &unk_1E77343A8;
  v8 = *(a1 + 32);
  v12 = v4;
  v13 = v8;
  v9 = v4;
  [v5 simulateMemoriesNotificationWithOptions:v7 reply:v11];

  return 1;
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_837(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[PXPhotoAnalysisStatusController sharedStatusController];
  [v6 update];
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_2_842;
  block[3] = &unk_1E7744FE0;
  v13 = v5;
  v14 = v4;
  v12 = v6;
  v8 = v6;
  v9 = v4;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_2_842(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    v4 = MEMORY[0x1E69E96A0];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_3_843;
      v5[3] = &unk_1E774C2F0;
      v7 = *(a1 + 48);
      v6 = *(a1 + 32);
      dispatch_sync(v4, v5);
      [MEMORY[0x1E696AF00] sleepForTimeInterval:2.0];

      result = (*(*(a1 + 40) + 16))();
    }

    while ((result & 1) != 0);
  }

  return result;
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_3_843(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v3 stringWithFormat:@"=== %@ ===\n", v4];
  (*(v2 + 16))(v2, v5);

  v6 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v13 = 0;
  v7 = [v6 graphStatusDescription:&v13];
  v8 = v13;

  (*(*(a1 + 40) + 16))();
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = [v8 localizedDescription];
    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 40) + 16))();
  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) stateDescription];
  (*(v11 + 16))(v11, v12);

  (*(*(a1 + 40) + 16))();
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_3_765(uint64_t a1, void *a2)
{
  v2 = a2;
  v13 = +[PXMemoriesRelatedSettings sharedInstance];
  v3 = [v13 timelineContentMode];
  v4 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v5 = [v13 widgetSize];
  [PXTimelineSize widgetSizeForSizeClass:v5];
  if (v3)
  {
    v8 = -[PXTimelineContentModeTableViewController initWithContentMode:widgetSizeClass:]([PXTimelineContentModeTableViewController alloc], "initWithContentMode:widgetSizeClass:", v3, [v13 widgetSize]);
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v11 = [PXWidgetTimeline timelineFromLibrary:v4 forWidgetSize:v5 timelineSize:?];
    v12 = [[PXTimelineDataSource alloc] initWithPhotoLibrary:v4 forWidgetSize:v9, v10];
    v8 = -[PXSettingsTimelineInspectorViewController initWithWidgetSizeClass:timeline:dataSource:]([PXSettingsTimelineInspectorViewController alloc], "initWithWidgetSizeClass:timeline:dataSource:", [v13 widgetSize], v11, v12);
  }

  [v2 pushViewController:v8 animated:1];
}

__CFString *__57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_747()
{
  v0 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  v1 = [PXWidgetTimeline timelineFromLibrary:v0 forWidgetSize:0 timelineSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

  if ([v1 count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v2 appendFormat:@"%lu Timeline Entries Generated\n", objc_msgSend(v1, "count")];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_2_757;
    v5[3] = &unk_1E7734420;
    v3 = v2;
    v6 = v3;
    [v1 enumerateObjectsUsingBlock:v5];
  }

  else
  {
    v3 = @"No TimelineEntries Generated.";
  }

  return v3;
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_7_665(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 description];
    v5 = @"Resetting Notification State failed";
  }

  else
  {
    v4 = 0;
    v5 = @"Resetting Notification State done";
  }

  v6 = v4;
  [*(a1 + 40) _presentAlertWithTitle:v5 andMessage:v4 inModuleController:*(a1 + 32)];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_5_654(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 description];
    v5 = @"Simulation failed";
  }

  else
  {
    v4 = 0;
    v5 = @"Simulation done";
  }

  v6 = v4;
  [*(a1 + 40) _presentAlertWithTitle:v5 andMessage:v4 inModuleController:*(a1 + 32)];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_2_645(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  px_dispatch_on_main_queue();
}

uint64_t __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_13_621(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v12 = 0;
  v5 = PXMemoriesResetRejected(v4, 0, &v12);
  v6 = v12;
  if ((v5 & 1) == 0)
  {
    v7 = MEMORY[0x1E69DC650];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error %@", v6];
    v9 = [v7 alertControllerWithTitle:@"Resetting rejected Memories failed" message:v8 preferredStyle:1];

    v10 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:1 handler:0];
    [v9 addAction:v10];

    [v3 presentViewController:v9 animated:0 completion:0];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Resetting rejected Memories failed with error %@", buf, 0xCu);
    }
  }

  return 1;
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_10_615(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6978910];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setReason:1];
  v6 = [v4 date];
  [v5 setDate:v6];

  v7 = [v4 location];
  [v5 setLocation:v7];

  v8 = [v4 peopleNames];

  [v5 setPeopleNames:v8];
  v9 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  [v5 setPhotoLibrary:v9];

  v10 = MEMORY[0x1E69788F0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_11_616;
  v13[3] = &unk_1E77343A8;
  v12 = *(a1 + 32);
  v11 = v12;
  v14 = v12;
  [v10 generateMemoriesWithOptions:v5 completion:v13];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_11_616(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  px_dispatch_on_main_queue();
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_7_601(uint64_t a1)
{
  v2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v3 = [v2 librarySpecificFetchOptions];
  [v3 setIncludeRejectedMemories:1];
  [v3 setIncludePendingMemories:1];
  v4 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v3];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_8_603;
  v11[3] = &unk_1E774C648;
  v5 = v4;
  v12 = v5;
  v10 = 0;
  [v2 performChangesAndWait:v11 error:&v10];
  v6 = v10;
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 40);
    v9 = [v6 localizedDescription];
    [v8 _presentAlertWithTitle:@"Error while removing memories" andMessage:v9 inModuleController:*(a1 + 32)];
  }
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_5_569(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(PXSettingsMeaningsTableViewController);
  [v2 pushViewController:v3 animated:1];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_3_533(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_group_create();
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__64909;
  v24 = __Block_byref_object_dispose__64910;
  v25 = 0;
  dispatch_group_enter(v4);
  v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v6 = [v5 photoAnalysisClient];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_4_534;
  v17 = &unk_1E7734318;
  v19 = &v20;
  v7 = v4;
  v18 = v7;
  [v6 requestClearMusicCacheWithOptions:0 reply:&v14];

  v8 = dispatch_time(0, 60000000000);
  dispatch_group_wait(v7, v8);
  v9 = v21[5];
  if (v9)
  {
    v10 = *(a1 + 40);
    v11 = [v9 localizedDescription];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"Unknown Error";
    }

    [v10 _presentAlertWithTitle:@"Error" andMessage:v13 inModuleController:*(a1 + 32)];
  }

  [*(a1 + 40) _presentAlertWithTitle:@"Clear Music Cache" andMessage:@"Complete" inModuleController:{*(a1 + 32), v14, v15, v16, v17}];

  _Block_object_dispose(&v20, 8);
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_4_534(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_511(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_22(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 localizedDescription];
    v4 = @"Clearing Unanswered Questions Failed";
  }

  else
  {
    v3 = @"You may need to relaunch Photos to view.";
    v4 = @"Successfully Cleared Unanswered Questions";
  }

  v5 = v3;
  [*(a1 + 48) _presentAlertWithTitle:v4 andMessage:v3 inModuleController:*(a1 + 40)];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_17(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 appendString:a2];
  v7 = *(a1 + 32);
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v6 integerValue];

  v10 = [v8 stringWithFormat:@": %lu\n", v9];
  [v7 appendString:v10];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_13_455(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978910];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setReason:1];
  v6 = [v4 date];
  [v5 setDate:v6];

  v7 = [v4 location];
  [v5 setLocation:v7];

  v8 = [v4 peopleNames];

  [v5 setPeopleNames:v8];
  v9 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  [v5 setPhotoLibrary:v9];

  v18[0] = @"contextual";
  v17[0] = @"category";
  v17[1] = @"startDate";
  v10 = [MEMORY[0x1E695DF00] distantPast];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v5 setExtraParameters:v11];

  v12 = MEMORY[0x1E69788F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_14_464;
  v15[3] = &unk_1E77343A8;
  v14 = *(a1 + 32);
  v13 = v14;
  v16 = v14;
  [v12 generateMemoriesWithOptions:v5 completion:v15];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_14_464(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  px_dispatch_on_main_queue();
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_11_443(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = objc_alloc_init(PXScoreLabViewController);
  v3 = [(PXScoreLabViewController *)v4 navigationItem];
  [v3 setTitle:@"Score Lab"];

  [v2 pushViewController:v4 animated:1];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_10_437(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [[PXLogsViewController alloc] initWithSubsystem:@"com.apple.PhotosGraph" category:@"suggestions" startDate:0];
  v3 = [(PXLogsViewController *)v4 navigationItem];
  [v3 setTitle:@"Suggestion Generation Logs"];

  [v2 pushViewController:v4 animated:1];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_9_428(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = a2;
  v7 = [v2 dateWithTimeIntervalSinceNow:-86400.0];
  v4 = [[PXLogsViewController alloc] initWithSubsystem:@"com.apple.PhotosGraph" category:@"suggestions" startDate:v7];
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setDateStyle:0];
  [v5 setTimeStyle:1];
  [(PXLogsViewController *)v4 setDateFormatter:v5];
  v6 = [(PXLogsViewController *)v4 navigationItem];
  [v6 setTitle:@"Suggestion Generation Logs"];

  [v3 pushViewController:v4 animated:1];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_6_409(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = [[PXLogsViewController alloc] initLiveWithSubsystem:@"com.apple.PhotosGraph" category:@"suggestions"];
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateStyle:0];
  [v3 setTimeStyle:1];
  [v6 setDateFormatter:v3];
  v4 = [v6 navigationItem];
  [v4 setTitle:@"Suggestion Generation"];

  [v2 pushViewController:v6 animated:1];
  v5 = +[PXContextualMemoriesSettingsController sharedController];
  [v5 requestUpdatedContextualMemoriesSettingsWithOptions:0 completionHandler:&__block_literal_global_420];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_7_418(uint64_t a1, void *a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69789A8];
  v3 = a2;
  v4 = [v2 px_deprecated_appPhotoLibrary];
  v5 = *MEMORY[0x1E69BEB60];
  v9[0] = *MEMORY[0x1E69BEB68];
  v9[1] = v5;
  v10[0] = MEMORY[0x1E695E110];
  v10[1] = MEMORY[0x1E695E118];
  v9[2] = *MEMORY[0x1E69BEB70];
  v6 = [v3 date];

  v10[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v8 = [v4 photoAnalysisClient];
  [v8 generateSuggestionsWithOptions:v7 reply:&__block_literal_global_424];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_5_399(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = objc_alloc_init(PXSuggestersDebugViewController);
  v3 = [(PXSuggestersDebugViewController *)v4 navigationItem];
  [v3 setTitle:@"Suggesters"];

  [v2 pushViewController:v4 animated:1];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_4_389(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = objc_alloc_init(PXExistingSuggestionsDebugViewController);
  v3 = [(PXExistingSuggestionsDebugViewController *)v4 navigationItem];
  [v3 setTitle:@"Existing Suggestions"];

  [v2 pushViewController:v4 animated:1];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_3_383(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [[PXLogsViewController alloc] initWithSubsystem:@"com.apple.PhotosGraph" category:@"memory" startDate:0];
  v3 = [(PXLogsViewController *)v4 navigationItem];
  [v3 setTitle:@"Memory Generation Logs"];

  [v2 pushViewController:v4 animated:1];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_2_373(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PXLogsViewController alloc];
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-86400.0];
  v7 = [(PXLogsViewController *)v3 initWithSubsystem:@"com.apple.PhotosGraph" category:@"memory" startDate:v4];

  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setDateStyle:0];
  [v5 setTimeStyle:1];
  [(PXLogsViewController *)v7 setDateFormatter:v5];
  v6 = [(PXLogsViewController *)v7 navigationItem];
  [v6 setTitle:@"Memory Generation Logs"];

  [v2 pushViewController:v7 animated:1];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_3_328(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = [[PXLogsViewController alloc] initLiveWithSubsystem:@"com.apple.PhotosGraph" category:@"memory"];
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateStyle:0];
  [v3 setTimeStyle:1];
  [v6 setDateFormatter:v3];
  v4 = [v6 navigationItem];
  [v4 setTitle:@"Memory Generation"];

  [v2 pushViewController:v6 animated:1];
  v5 = +[PXContextualMemoriesSettingsController sharedController];
  [v5 requestUpdatedContextualMemoriesSettingsWithOptions:0 completionHandler:&__block_literal_global_344];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_4_342(uint64_t a1, void *a2)
{
  v12 = a2;
  v2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [v12 date];

  if (v4)
  {
    v5 = [v12 date];
    [v3 setObject:v5 forKeyedSubscript:@"PHMemoryOptionDateKey"];
  }

  v6 = [v12 location];

  if (v6)
  {
    v7 = [v12 location];
    [v3 setObject:v7 forKeyedSubscript:@"PHMemoryOptionLocationKey"];
  }

  v8 = [v12 peopleNames];

  if (v8)
  {
    v9 = [v12 peopleNames];
    [v3 setObject:v9 forKeyedSubscript:@"PHMemoryOptionPeopleNamesKey"];
  }

  [v3 setObject:&unk_1F190B3B0 forKeyedSubscript:@"PHMemoryOptionReasonKey"];
  v10 = MEMORY[0x1E695E110];
  [v3 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"PHMemoryOptionGenerateSuggestionsKey"];
  [v3 setObject:v10 forKeyedSubscript:@"PHMemoryOptionCommitChangesKey"];
  v11 = [v2 photoAnalysisClient];
  [v11 generateMemoriesWithOptions:v3 reply:&__block_literal_global_369];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_2_318(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = objc_alloc_init(PXExistingMemoriesDebugViewController);
  v3 = [(PXExistingMemoriesDebugViewController *)v4 navigationItem];
  [v3 setTitle:@"Existing Memories"];

  [v2 pushViewController:v4 animated:1];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_300(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(PXContextualMemoriesSettingsTableViewController);
  [v2 pushViewController:v3 animated:1];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(PXSettingsGraphExportViewController);
  [v2 pushViewController:v3 animated:1];
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(PXSettingsHighlightEstimatesExportViewController);
  [v2 pushViewController:v3 animated:1];
}

id __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_13()
{
  v0 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v6 = 0;
  v1 = [v0 graphStatisticsDescription:&v6];
  v2 = v6;

  if (v2)
  {
    v3 = [v2 localizedDescription];
  }

  else
  {
    v3 = v1;
  }

  v4 = v3;

  return v4;
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_11;
  block[3] = &unk_1E7749FF8;
  v9 = v3;
  v7 = *(a1 + 32);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_11(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) date];

  if (v3)
  {
    v4 = [*(a1 + 32) date];
    [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69BEA30]];
  }

  v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v9 = 0;
  [v5 requestHighlightCollectionEnrichmentWithOptions:v2 error:&v9];
  v6 = v9;

  v7 = *(a1 + 40);
  v8 = v6;
  px_dispatch_on_main_queue();
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_12(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (v3)
  {
    v5 = [v3 localizedDescription];
    [v2 _presentAlertWithTitle:@"Month / Year Enrichment Finished" andMessage:v5 inModuleController:a1[5]];
  }

  else
  {
    v4 = a1[5];

    [v2 _presentAlertWithTitle:@"Month / Year Enrichment Finished" andMessage:&stru_1F1741150 inModuleController:v4];
  }
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_7(uint64_t a1)
{
  v2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v6 = 0;
  [v2 requestHighlightEnrichmentWithOptions:MEMORY[0x1E695E0F0] error:&v6];
  v3 = v6;

  v4 = *(a1 + 32);
  v5 = v3;
  px_dispatch_on_main_queue();
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_8(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (v3)
  {
    v5 = [v3 localizedDescription];
    [v2 _presentAlertWithTitle:@"Enrichment Finished" andMessage:v5 inModuleController:a1[5]];
  }

  else
  {
    v4 = a1[5];

    [v2 _presentAlertWithTitle:@"Enrichment Finished" andMessage:&stru_1F1741150 inModuleController:v4];
  }
}

uint64_t __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v6 = objc_alloc(MEMORY[0x1E69BE620]);
  v7 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  v8 = [v7 photoAnalysisClient];
  v9 = [v6 initWithServiceProvider:v8];

  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_5;
  v15[3] = &unk_1E7734318;
  v17 = &v18;
  v11 = v10;
  v16 = v11;
  [v9 performGraphRebuildWithOptions:MEMORY[0x1E695E0F8] operationID:&stru_1F1741150 reply:v15];
  v12 = dispatch_time(0, -1);
  dispatch_group_wait(v11, v12);
  v13 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v13;
}

void __57__PXMemoriesRelatedSettings_UI__settingsControllerModule__block_invoke_5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

@end