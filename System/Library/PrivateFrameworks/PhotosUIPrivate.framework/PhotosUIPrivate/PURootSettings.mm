@interface PURootSettings
+ (id)_debugRowsForViewControllerStack:(id)stack;
+ (id)_saveScreenshot:(id)screenshot;
+ (id)photosUITesterRootViewController;
+ (id)settingsControllerModule;
+ (id)sharedInstance;
+ (void)_deleteAllDiagnosticFiles;
+ (void)_presentTapToRadar;
+ (void)_setDebugRows:(id)rows;
+ (void)configureToastForReminderToQuitAfterLaunch:(id)launch target:(id)target;
+ (void)dismissSettingsController;
+ (void)dismissSettingsController:(id)controller;
+ (void)presentSettingsController;
+ (void)setupStatusBarInternalSettingsGestureOnInternalDevices;
- (BOOL)irisUIEnabled;
- (id)archiveValueForKey:(id)key;
- (id)reparentedRootSettings;
- (void)_setObservationEnabled:(BOOL)enabled;
- (void)applyArchiveValue:(id)value forKey:(id)key;
- (void)createChildren;
- (void)favoritesSettings:(id)settings loadAccessorySettingsWithCompletionHandler:(id)handler;
- (void)favoritesSettingsDidChangeFavorites:(id)favorites;
- (void)restoreDefaultValues;
- (void)setDefaultValues;
@end

@implementation PURootSettings

+ (id)sharedInstance
{
  os_unfair_lock_lock(MEMORY[0x1E69C4148]);
  if (!sharedInstance_sharedInstance_76010)
  {
    createSharedInstance = [self createSharedInstance];
    v4 = sharedInstance_sharedInstance_76010;
    sharedInstance_sharedInstance_76010 = createSharedInstance;
  }

  os_unfair_lock_unlock(MEMORY[0x1E69C4148]);
  v5 = sharedInstance_sharedInstance_76010;

  return v5;
}

- (void)createChildren
{
  initWithDefaultValues = [(PTSettings *)[PUPhotoEditProtoSettings alloc] initWithDefaultValues];
  photoEditingSettings = self->_photoEditingSettings;
  self->_photoEditingSettings = initWithDefaultValues;

  initWithDefaultValues2 = [(PTSettings *)[PUAudioClassificationSettings alloc] initWithDefaultValues];
  audioClassificationSettings = self->_audioClassificationSettings;
  self->_audioClassificationSettings = initWithDefaultValues2;

  initWithDefaultValues3 = [(PTSettings *)[PUAirPlaySettings alloc] initWithDefaultValues];
  airPlaySettings = self->_airPlaySettings;
  self->_airPlaySettings = initWithDefaultValues3;

  initWithDefaultValues4 = [(PTSettings *)[PUWelcomeSettings alloc] initWithDefaultValues];
  welcomeSettings = self->_welcomeSettings;
  self->_welcomeSettings = initWithDefaultValues4;

  initWithDefaultValues5 = [(PTSettings *)[PUSceneSettings alloc] initWithDefaultValues];
  sceneSettings = self->_sceneSettings;
  self->_sceneSettings = initWithDefaultValues5;

  initWithDefaultValues6 = [(PTSettings *)[PUPerformanceDiagnosticsSettings alloc] initWithDefaultValues];
  performanceDiagnosticsSettings = self->_performanceDiagnosticsSettings;
  self->_performanceDiagnosticsSettings = initWithDefaultValues6;

  initWithDefaultValues7 = [(PTSettings *)[PUMedusaSettings alloc] initWithDefaultValues];
  medusaSettings = self->_medusaSettings;
  self->_medusaSettings = initWithDefaultValues7;

  initWithDefaultValues8 = [(PTSettings *)[PUSlideshowSettings alloc] initWithDefaultValues];
  slideshowSettings = self->_slideshowSettings;
  self->_slideshowSettings = initWithDefaultValues8;

  initWithDefaultValues9 = [(PTSettings *)[PUCurationSettings alloc] initWithDefaultValues];
  curation = self->_curation;
  self->_curation = initWithDefaultValues9;

  initWithDefaultValues10 = [(PTSettings *)[PUCompositeVideoSettings alloc] initWithDefaultValues];
  compositeVideoSettings = self->_compositeVideoSettings;
  self->_compositeVideoSettings = initWithDefaultValues10;

  initWithDefaultValues11 = [(PTSettings *)[PUAmbientPhotoFrameSettings alloc] initWithDefaultValues];
  ambientPhotoFrameSettings = self->_ambientPhotoFrameSettings;
  self->_ambientPhotoFrameSettings = initWithDefaultValues11;

  initWithDefaultValues12 = [objc_alloc(MEMORY[0x1E69C3620]) initWithDefaultValues];
  importSettings = self->_importSettings;
  self->_importSettings = initWithDefaultValues12;

  initWithDefaultValues13 = [(PTSettings *)[PUTabbedLibrarySettings alloc] initWithDefaultValues];
  tabbedLibrarySettings = self->_tabbedLibrarySettings;
  self->_tabbedLibrarySettings = initWithDefaultValues13;

  initWithDefaultValues14 = [(PTSettings *)[PUSuggestionsSettings alloc] initWithDefaultValues];
  suggestions = self->_suggestions;
  self->_suggestions = initWithDefaultValues14;

  initWithDefaultValues15 = [(PTSettings *)[PUIrisSettings alloc] initWithDefaultValues];
  irisSettings = self->_irisSettings;
  self->_irisSettings = initWithDefaultValues15;

  initWithDefaultValues16 = [(PTSettings *)[PUOneUpSettings alloc] initWithDefaultValues];
  oneUpSettings = self->_oneUpSettings;
  self->_oneUpSettings = initWithDefaultValues16;

  initWithDefaultValues17 = [(PTSettings *)[PUPhotosGridSettings alloc] initWithDefaultValues];
  photosGridSettings = self->_photosGridSettings;
  self->_photosGridSettings = initWithDefaultValues17;

  initWithDefaultValues18 = [objc_alloc(MEMORY[0x1E69C3A18]) initWithDefaultValues];
  sharingSettings = self->_sharingSettings;
  self->_sharingSettings = initWithDefaultValues18;

  initWithDefaultValues19 = [objc_alloc(MEMORY[0x1E69C35B0]) initWithDefaultValues];
  generativeStorySettings = self->_generativeStorySettings;
  self->_generativeStorySettings = initWithDefaultValues19;

  initWithDefaultValues20 = [(PTSettings *)[PUTilingViewSettings alloc] initWithDefaultValues];
  tilingViewSettings = self->_tilingViewSettings;
  self->_tilingViewSettings = initWithDefaultValues20;

  self->_workaroundSettings = [(PTSettings *)[PUWorkaroundSettings alloc] initWithDefaultValues];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PURootSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PURootSettings *)self setAllowIrisUI:1];
  [(PURootSettings *)self setAllowGuidedAccessRestrictions:1];
  [(PURootSettings *)self setInterfaceThemeClass:objc_opt_class()];
}

- (void)favoritesSettings:(id)settings loadAccessorySettingsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = PUTesterRootSettingsLoadIfNecessary(1);
  v5 = PXSoftLinkedProtoRootSettingsLoadIfNecessary();
  handlerCopy[2]();
}

- (void)favoritesSettingsDidChangeFavorites:(id)favorites
{
  v4 = [(PURootSettings *)self valueForKey:@"_internal_libraryStateBriefDescription"];
  v5 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = [v5 numberWithDouble:?];
  v7 = [v6 description];
  [(PURootSettings *)self setValue:v7 forKey:@"_internal_libraryStateBriefDescription"];

  [(PURootSettings *)self setValue:v4 forKey:@"_internal_libraryStateBriefDescription"];
  v11 = [(PURootSettings *)self valueForKey:@"_memory_creationStateTitle"];

  v8 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v9 = [v8 numberWithDouble:?];
  v10 = [v9 description];
  [(PURootSettings *)self setValue:v10 forKey:@"_memory_creationStateTitle"];

  [(PURootSettings *)self setValue:v11 forKey:@"_memory_creationStateTitle"];
}

- (BOOL)irisUIEnabled
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  launchedToTest = [mEMORY[0x1E69DC668] launchedToTest];

  return ([(PURootSettings *)self allowIrisUI]| launchedToTest) & 1;
}

- (void)_setObservationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PURootSettings;
  [(PTSettings *)&v14 _setObservationEnabled:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  reparentedRootSettings = [(PURootSettings *)self reparentedRootSettings];
  v6 = [reparentedRootSettings countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(reparentedRootSettings);
        }

        [*(*(&v10 + 1) + 8 * v9++) _setObservationEnabled:enabledCopy];
      }

      while (v7 != v9);
      v7 = [reparentedRootSettings countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)reparentedRootSettings
{
  v5[1] = *MEMORY[0x1E69E9840];
  _photosUICoreSettings = [objc_opt_class() _photosUICoreSettings];
  v5[0] = _photosUICoreSettings;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)archiveValueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"interfaceThemeClass"])
  {
    v5 = NSStringFromClass([(PURootSettings *)self interfaceThemeClass]);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PURootSettings;
    v5 = [(PXSettings *)&v8 archiveValueForKey:keyCopy];
  }

  v6 = v5;

  return v6;
}

- (void)applyArchiveValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  if ([keyCopy isEqualToString:@"interfaceThemeClass"])
  {
    v8 = NSClassFromString(valueCopy);

    [(PURootSettings *)self setInterfaceThemeClass:v8];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PURootSettings;
    [(PXSettings *)&v9 applyArchiveValue:valueCopy forKey:keyCopy];
  }
}

- (void)restoreDefaultValues
{
  v3.receiver = self;
  v3.super_class = PURootSettings;
  [(PXSettings *)&v3 restoreDefaultValues];
  _photoKitSettings = [objc_opt_class() _photoKitSettings];
  [_photoKitSettings restoreDefaultValues];
}

+ (void)configureToastForReminderToQuitAfterLaunch:(id)launch target:(id)target
{
  launchCopy = launch;
  targetCopy = target;
  v7 = objc_alloc(MEMORY[0x1E69C3BC8]);
  v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v8 setMessage:@"Photos usually needs to be quit and relaunched for changes to take effect."];
  objc_initWeak(&location, targetCopy);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PURootSettings_configureToastForReminderToQuitAfterLaunch_target___block_invoke;
  v11[3] = &unk_1E7B80638;
  objc_copyWeak(&v12, &location);
  [v8 addActionWithTitle:@"Quit" action:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__PURootSettings_configureToastForReminderToQuitAfterLaunch_target___block_invoke_2;
  v9[3] = &unk_1E7B80638;
  objc_copyWeak(&v10, &location);
  [v8 addActionWithTitle:@"Hide" action:v9];
  [launchCopy setContentView:v8];
  [launchCopy setAutoDismissalDelay:5.0];
  [launchCopy setCanSwipeToDismiss:1];
  [launchCopy setBottomMargin:30.0];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __68__PURootSettings_configureToastForReminderToQuitAfterLaunch_target___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained callOnViewDidDisappearBlock];

  exit(0);
}

void __68__PURootSettings_configureToastForReminderToQuitAfterLaunch_target___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideToast];
}

+ (void)_deleteAllDiagnosticFiles
{
  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Delete All Diagnostic Files" message:@"Are you sure? This action cannot be undone." preferredStyle:1];
  v2 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  [v6 addAction:v2];

  v3 = [MEMORY[0x1E69DC648] actionWithTitle:@"Delete" style:2 handler:&__block_literal_global_655];
  [v6 addAction:v3];

  pu_currentViewControllerStack = [MEMORY[0x1E69DD258] pu_currentViewControllerStack];
  firstObject = [pu_currentViewControllerStack firstObject];
  [firstObject presentViewController:v6 animated:1 completion:0];
}

void __43__PURootSettings__deleteAllDiagnosticFiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E69DCE40]);
  [v3 setText:@"Deleting…"];
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 px_firstKeyWindow];
  [v3 showInView:v5];

  v6 = [MEMORY[0x1E69BE670] systemPhotoLibrary];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__75537;
  v19[4] = __Block_byref_object_dispose__75538;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__PURootSettings__deleteAllDiagnosticFiles__block_invoke_2;
  v13[3] = &unk_1E7B7DB48;
  v15 = v17;
  v7 = v6;
  v14 = v7;
  v16 = v19;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__PURootSettings__deleteAllDiagnosticFiles__block_invoke_3;
  v9[3] = &unk_1E7B7DB48;
  v11 = v17;
  v8 = v3;
  v10 = v8;
  v12 = v19;
  [v7 performBlock:v13 completionHandler:v9];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

void __43__PURootSettings__deleteAllDiagnosticFiles__block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 deleteAllDiagnosticFiles:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

void __43__PURootSettings__deleteAllDiagnosticFiles__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PURootSettings__deleteAllDiagnosticFiles__block_invoke_4;
  block[3] = &unk_1E7B7DB48;
  v3 = *(a1 + 32);
  v2 = v3;
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __43__PURootSettings__deleteAllDiagnosticFiles__block_invoke_4(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(*(*(v3 + 8) + 8) + 24) == 1)
  {
    [v2 setText:@"Deleted"];
    [*(a1 + 32) done];
  }

  else
  {
    [v2 setText:@"Error"];
    NSLog(&cfstr_Error_1.isa, *(*(*(a1 + 48) + 8) + 40));
  }

  v4 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PURootSettings__deleteAllDiagnosticFiles__block_invoke_5;
  block[3] = &unk_1E7B80DD0;
  v6 = *(a1 + 32);
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

+ (id)photosUITesterRootViewController
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getPUTesterRootSettingsViewControllerClass_softClass;
  v10 = getPUTesterRootSettingsViewControllerClass_softClass;
  if (!getPUTesterRootSettingsViewControllerClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getPUTesterRootSettingsViewControllerClass_block_invoke;
    v6[3] = &unk_1E7B800F0;
    v6[4] = &v7;
    __getPUTesterRootSettingsViewControllerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = objc_alloc_init(v3);

  return v4;
}

+ (void)_setDebugRows:(id)rows
{
  v3 = [rows copy];
  v4 = sDebugRows;
  sDebugRows = v3;

  MEMORY[0x1EEE66BB8](v3, v4);
}

+ (id)_debugRowsForViewControllerStack:(id)stack
{
  v128 = *MEMORY[0x1E69E9840];
  stackCopy = stack;
  array = [MEMORY[0x1E695DF70] array];
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = [stackCopy reverseObjectEnumerator];
  v66 = [obj countByEnumeratingWithState:&v120 objects:v127 count:16];
  if (v66)
  {
    v65 = *v121;
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v121 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v120 + 1) + 8 * i);
        objc_initWeak(&location, v4);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke;
        aBlock[3] = &unk_1E7B7DA30;
        objc_copyWeak(&v118, &location);
        v76 = _Block_copy(aBlock);
        v5 = v76[2]();
        if (v5)
        {
          [self _setCurrentAsset:v5];
          v67 = v4;
          v68 = i;
          v6 = MEMORY[0x1E69C65E8];
          v115[0] = MEMORY[0x1E69E9820];
          v115[1] = 3221225472;
          v115[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_2;
          v115[3] = &unk_1E7B7DA58;
          v7 = v76;
          v116 = v7;
          v75 = [v6 pu_rowWithTitle:@"Print Current Asset" output:v115];
          v126[0] = v75;
          v8 = MEMORY[0x1E69C65E8];
          v113[0] = MEMORY[0x1E69E9820];
          v113[1] = 3221225472;
          v113[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_3;
          v113[3] = &unk_1E7B7DA58;
          v9 = v7;
          v114 = v9;
          v74 = [v8 pu_rowWithTitle:@"Print Asset Resources" output:v113];
          v126[1] = v74;
          v10 = MEMORY[0x1E69C65E8];
          v111[0] = MEMORY[0x1E69E9820];
          v111[1] = 3221225472;
          v111[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_4;
          v111[3] = &unk_1E7B7DA58;
          v11 = v9;
          v112 = v11;
          v73 = [v10 pu_rowWithTitle:@"Print Asset Metadata" output:v111];
          v126[2] = v73;
          v12 = MEMORY[0x1E69C65E8];
          v109[0] = MEMORY[0x1E69E9820];
          v109[1] = 3221225472;
          v109[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_5;
          v109[3] = &unk_1E7B7DA80;
          v13 = v11;
          v110 = v13;
          v72 = [v12 pu_rowWithTitle:@"Show in Parallax Debug Viewer" action:v109];
          v126[3] = v72;
          v14 = MEMORY[0x1E69C65E8];
          v107[0] = MEMORY[0x1E69E9820];
          v107[1] = 3221225472;
          v107[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_6;
          v107[3] = &unk_1E7B7DA80;
          v15 = v13;
          v108 = v15;
          v71 = [v14 pu_rowWithTitle:@"Edit as Featured Poster" action:v107];
          v126[4] = v71;
          v16 = MEMORY[0x1E69C65E8];
          v105[0] = MEMORY[0x1E69E9820];
          v105[1] = 3221225472;
          v105[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_7;
          v105[3] = &unk_1E7B7DA80;
          v17 = v15;
          v106 = v17;
          v70 = [v16 pu_rowWithTitle:@"Create Photos Poster" action:v105];
          v126[5] = v70;
          v18 = MEMORY[0x1E69C65E8];
          v103[0] = MEMORY[0x1E69E9820];
          v103[1] = 3221225472;
          v103[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_8;
          v103[3] = &unk_1E7B7DA80;
          v19 = v17;
          v104 = v19;
          v20 = [v18 pu_rowWithTitle:@"Create Shuffle Poster" action:v103];
          v126[6] = v20;
          v21 = MEMORY[0x1E69C65E8];
          v101[0] = MEMORY[0x1E69E9820];
          v101[1] = 3221225472;
          v101[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_9;
          v101[3] = &unk_1E7B7DA80;
          v22 = v19;
          v102 = v22;
          v23 = [v21 pu_rowWithTitle:@"Create People Poster" action:v101];
          v126[7] = v23;
          v24 = MEMORY[0x1E69C65E8];
          v99[0] = MEMORY[0x1E69E9820];
          v99[1] = 3221225472;
          v99[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_10;
          v99[3] = &unk_1E7B7E3F0;
          v100 = v5;
          v25 = [v24 pu_rowWithTitle:@"Show as Wallpaper Lockscreen" action:v99];
          v126[8] = v25;
          v26 = MEMORY[0x1E69C65E8];
          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_11;
          v97[3] = &unk_1E7B7DA58;
          v27 = v22;
          v98 = v27;
          v28 = [v26 pu_rowWithTitle:@"Print Adjustment Data" output:v97];
          v126[9] = v28;
          v29 = MEMORY[0x1E69C65E8];
          v95[0] = MEMORY[0x1E69E9820];
          v95[1] = 3221225472;
          v95[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_12;
          v95[3] = &unk_1E7B807C0;
          v30 = v27;
          v96 = v30;
          v31 = [v29 pu_rowWithTitle:@"Print Story Highlights" asynchronousOutputProducer:v95];
          v126[10] = v31;
          v32 = MEMORY[0x1E69C65E8];
          v93[0] = MEMORY[0x1E69E9820];
          v93[1] = 3221225472;
          v93[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_562;
          v93[3] = &unk_1E7B7DAD0;
          v33 = v30;
          v94 = v33;
          v34 = [v32 pu_rowWithTitle:@"Image Manager Tester" settingsProvider:v93 isTransient:1];
          v126[11] = v34;
          v35 = MEMORY[0x1E69C65E8];
          v91[0] = MEMORY[0x1E69E9820];
          v91[1] = 3221225472;
          v91[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_2_566;
          v91[3] = &unk_1E7B7DA80;
          v36 = v33;
          v92 = v36;
          v37 = [v35 pu_rowWithTitle:@"Reset Suggestion State" action:v91];
          v126[12] = v37;
          v38 = MEMORY[0x1E69C65E8];
          v89[0] = MEMORY[0x1E69E9820];
          v89[1] = 3221225472;
          v89[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_578;
          v89[3] = &unk_1E7B7DA80;
          v90 = v36;
          v39 = [v38 pu_rowWithTitle:@"Prune CPL Resource" action:v89];
          v126[13] = v39;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:14];

          [array addObjectsFromArray:v40];
          v4 = v67;
          i = v68;
        }

        pu_debugCurrentViewModel = [v4 pu_debugCurrentViewModel];

        if (pu_debugCurrentViewModel)
        {
          v87[0] = MEMORY[0x1E69E9820];
          v87[1] = 3221225472;
          v87[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_2_579;
          v87[3] = &unk_1E7B7DAF8;
          objc_copyWeak(&v88, &location);
          v42 = _Block_copy(v87);
          v43 = MEMORY[0x1E69C65E8];
          v85[0] = MEMORY[0x1E69E9820];
          v85[1] = 3221225472;
          v85[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_3_584;
          v85[3] = &unk_1E7B7DA58;
          v44 = v42;
          v86 = v44;
          v45 = [v43 pu_rowWithTitle:@"Print View Model" output:v85];
          v125[0] = v45;
          v46 = MEMORY[0x1E69C65E8];
          v47 = MEMORY[0x1E69C6658];
          v83[0] = MEMORY[0x1E69E9820];
          v83[1] = 3221225472;
          v83[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_4_589;
          v83[3] = &unk_1E7B80810;
          v48 = v44;
          v84 = v48;
          v49 = [v47 actionWithHandler:v83];
          v50 = [v46 rowWithTitle:@"Log View Model (Continuously)" action:v49];
          v125[1] = v50;
          v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:2];

          [array addObjectsFromArray:v51];
          objc_destroyWeak(&v88);
        }

        if (objc_opt_respondsToSelector())
        {
          pu_debugRows = [v4 pu_debugRows];
          [array addObjectsFromArray:pu_debugRows];
        }

        objc_destroyWeak(&v118);
        objc_destroyWeak(&location);
      }

      v66 = [obj countByEnumeratingWithState:&v120 objects:v127 count:16];
    }

    while (v66);
  }

  weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  reverseObjectEnumerator = [stackCopy reverseObjectEnumerator];
  v55 = [reverseObjectEnumerator countByEnumeratingWithState:&v79 objects:v124 count:16];
  if (v55)
  {
    v56 = *v80;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v80 != v56)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        [weakObjectsHashTable addObject:*(*(&v79 + 1) + 8 * j)];
      }

      v55 = [reverseObjectEnumerator countByEnumeratingWithState:&v79 objects:v124 count:16];
    }

    while (v55);
  }

  v58 = MEMORY[0x1E69C65E8];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_3_603;
  v77[3] = &unk_1E7B7E038;
  v78 = weakObjectsHashTable;
  v59 = weakObjectsHashTable;
  v60 = [v58 pu_rowWithTitle:@"View Controller Stack" output:v77];
  [array addObject:v60];

  return array;
}

void *__51__PURootSettings__debugRowsForViewControllerStack___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained pu_debugCurrentAsset];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_2(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 photoLibrary];
  v3 = [v2 photoLibrary];

  v4 = [v1 detailedDebugDescriptionInLibrary:v3];

  return v4;
}

id __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_3(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 resourcesDebugDescription];

  return v2;
}

id __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_4(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 metadataDebugDescription];

  return v2;
}

void __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_alloc_init(PUParallaxLayerStackDebugViewController);
  v4 = (*(*(a1 + 32) + 16))();
  [(PUParallaxLayerStackDebugViewController *)v6 loadPHAsset:v4];

  v5 = [v3 navigationController];

  [v5 pushViewController:v6 animated:1];
}

void __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PUWallpaperPosterEditDebugViewController alloc];
  v5 = (*(*(a1 + 32) + 16))();
  v6 = [(PUWallpaperPosterEditDebugViewController *)v4 initWithAsset:v5 posterType:1];

  [(PUWallpaperPosterEditDebugViewController *)v6 setModalPresentationStyle:5];
  [v3 presentViewController:v6 animated:1 completion:0];
}

void __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PUWallpaperPosterEditDebugViewController alloc];
  v5 = (*(*(a1 + 32) + 16))();
  v6 = [v5 photoLibrary];
  v7 = [(PUWallpaperPosterEditDebugViewController *)v4 initWithPosterType:101 photoLibrary:v6];

  [(PUWallpaperPosterEditDebugViewController *)v7 setModalPresentationStyle:5];
  [v3 presentViewController:v7 animated:1 completion:0];
}

void __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PUWallpaperPosterEditDebugViewController alloc];
  v5 = (*(*(a1 + 32) + 16))();
  v6 = [v5 photoLibrary];
  v7 = [(PUWallpaperPosterEditDebugViewController *)v4 initWithPosterType:102 photoLibrary:v6];

  [(PUWallpaperPosterEditDebugViewController *)v7 setModalPresentationStyle:5];
  [v3 presentViewController:v7 animated:1 completion:0];
}

void __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PUWallpaperPosterEditDebugViewController alloc];
  v5 = (*(*(a1 + 32) + 16))();
  v6 = [v5 photoLibrary];
  v7 = [(PUWallpaperPosterEditDebugViewController *)v4 initWithPosterType:103 photoLibrary:v6];

  [(PUWallpaperPosterEditDebugViewController *)v7 setModalPresentationStyle:5];
  [v3 presentViewController:v7 animated:1 completion:0];
}

void __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_10(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [PUWallpaperPlaygroundViewController alloc];
  v5 = v4;
  if (*(a1 + 32))
  {
    v8[0] = *(a1 + 32);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v7 = [(PUWallpaperPlaygroundViewController *)v5 initWithAssets:v6];
  }

  else
  {
    v7 = [(PUWallpaperPlaygroundViewController *)v4 initWithAssets:MEMORY[0x1E695E0F0]];
  }

  [(PUWallpaperPlaygroundViewController *)v7 presentPlaygroundWithPresentingViewController:v3];
}

__CFString *__51__PURootSettings__debugRowsForViewControllerStack___block_invoke_11(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 adjustmentsDebugMetadata];
  if (v2)
  {
    v13 = v1;
    v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [(__CFString *)v3 appendString:@"{"];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [v2 allKeys];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v2 objectForKeyedSubscript:v9];
          v11 = [v10 debugDescription];
          [(__CFString *)v3 appendFormat:@"%@ = %@, \n", v9, v11];
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    [(__CFString *)v3 appendString:@"}"];
    v1 = v13;
  }

  else if ([v1 hasAdjustments])
  {
    v3 = @"<Unsupported Adjustments. Check console log for more info.>";
  }

  else
  {
    v3 = @"Asset is not adjusted";
  }

  return v3;
}

void __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_12(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69C3B70]);
    v10[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_13;
    v8[3] = &unk_1E7B7DAA8;
    v9 = v3;
    v7 = [v5 requestAnalysisForAssets:v6 options:3 contexts:MEMORY[0x1E695E0F0] resultHandler:v8];
  }

  else
  {
    (*(v3 + 2))(v3, @"No asset found.");
  }
}

id __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_562(uint64_t a1)
{
  v2 = PUTesterRootSettingsLoadIfNecessary(1);
  v3 = [v2 imageManagerSettings];
  v4 = (*(*(a1 + 32) + 16))();
  v5 = [v4 localIdentifier];

  [v3 setSelectedAssetLocalIdentifier:v5];

  return v3;
}

void __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_2_566(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = (*(*(a1 + 32) + 16))();
  if (v1)
  {
    v2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_3_567;
    v8[3] = &unk_1E7B80DD0;
    v9 = v1;
    v7 = 0;
    v3 = [v2 performChangesAndWait:v8 error:&v7];
    v4 = v7;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Reset Suggestion State success: %@", buf, 0xCu);
    }
  }
}

void __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_578(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = (*(*(a1 + 32) + 16))();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 photoLibrary];
    v4 = [v3 assetsdClient];

    v5 = [v4 debugClient];
    v6 = [v2 uuid];
    v8[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v5 pruneAssets:v7 resourceTypes:0];
  }
}

id __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_2_579(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained pu_debugCurrentViewModel];

  return v2;
}

id __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_3_584(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 debugDetailedDescription];

  return v2;
}

uint64_t __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_4_589(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 32) + 16))();
  objc_initWeak(&location, v7);
  objc_copyWeak(&v9, &location);
  PXIterateAsynchronously();
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return 1;
}

id __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_3_603(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 32) objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) navigationItem];
        v9 = [v8 title];

        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        if ([v9 length])
        {
          [v2 appendFormat:@"%@ (%@)", v9, v11];
        }

        else
        {
          [v2 appendString:v11];
        }

        [v2 appendString:@"\n"];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [v2 appendString:{@"\nFor more details, use:\npo [UIViewController _allDescriptions]"}];
  NSLog(&stru_1F2AC6178.isa, v2);

  return v2;
}

void __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_5_590(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained debugDetailedDescription];

  if (v5)
  {
    v6 = PLOneUpGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v7 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_591;
    block[3] = &unk_1E7B80DD0;
    v9 = v3;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [v3 stop];
  }
}

void __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_3_567(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978648] changeRequestForAsset:*(a1 + 32)];
  for (i = 0; i != 4; ++i)
  {
    [v2 setVariationSuggestionStates:0 forVariationType:i];
  }
}

void __51__PURootSettings__debugRowsForViewControllerStack___block_invoke_13(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [a2 firstObject];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v3])
  {
    v12 = 0;
    v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:&v12];
    v5 = v12;
    if (v4)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
      v7 = *(*(a1 + 32) + 16);
    }

    else
    {
      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v3;
        _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "Unable to generate json data from supposedly valid object: %@", buf, 0xCu);
      }

      v11 = *(a1 + 32);
      v6 = [v3 description];
      v7 = *(v11 + 16);
    }

    v7();
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v3 description];
    (*(v8 + 16))(v8, v9);
  }
}

+ (void)dismissSettingsController:(id)controller
{
  v3 = settingsWindow;
  rootViewController = [settingsWindow rootViewController];
  [rootViewController setToast:0];
  view = [rootViewController view];
  [view frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = MEMORY[0x1E69DD250];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __44__PURootSettings_dismissSettingsController___block_invoke;
  v26[3] = &unk_1E7B7FF20;
  v27 = view;
  v28 = v7;
  v29 = v9;
  v30 = v11;
  v31 = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __44__PURootSettings_dismissSettingsController___block_invoke_2;
  v18[3] = &unk_1E7B7DA08;
  v19 = v3;
  v20 = v27;
  v22 = v7;
  v23 = v9;
  v24 = v11;
  v25 = v13;
  v21 = rootViewController;
  v15 = rootViewController;
  v16 = v27;
  v17 = v3;
  [v14 _animateUsingDefaultTimingWithOptions:4 animations:v26 completion:v18];
}

uint64_t __44__PURootSettings_dismissSettingsController___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = -CGRectGetHeight(*(a1 + 40));
  v6 = CGRectOffset(*(a1 + 40), 0.0, v3);

  return [v2 setFrame:{v6.origin.x, v6.origin.y, v6.size.width, v6.size.height}];
}

uint64_t __44__PURootSettings_dismissSettingsController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) resignKeyWindow];
  [*(a1 + 32) setHidden:1];
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 windows];
  v4 = [v3 firstObject];
  [v4 makeKeyWindow];

  [*(a1 + 40) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v5 = *(a1 + 48);

  return [v5 callOnViewDidDisappearBlock];
}

+ (void)dismissSettingsController
{
  if (settingsWindow && ([settingsWindow isHidden] & 1) == 0)
  {

    [self dismissSettingsController:0];
  }
}

+ (void)presentSettingsController
{
  v74 = *MEMORY[0x1E69E9840];
  v72 = 0;
  SBSGetScreenLockStatus();
  if (!settingsWindow || [settingsWindow isHidden])
  {
    pu_currentViewControllerStack = [MEMORY[0x1E69DD258] pu_currentViewControllerStack];
    firstObject = [pu_currentViewControllerStack firstObject];
    if (!firstObject)
    {
LABEL_20:

      return;
    }

    v44 = [self _debugRowsForViewControllerStack:pu_currentViewControllerStack];
    [PURootSettings _setDebugRows:v44];
    sharedInstance = [self sharedInstance];
    [sharedInstance _setObservationEnabled:1];
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__75537;
    v70 = __Block_byref_object_dispose__75538;
    v71 = 0;
    v6 = [pu_currentViewControllerStack hash];
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v7 = pu_currentViewControllerStack;
    v8 = [v7 countByEnumeratingWithState:&v62 objects:v73 count:16];
    if (v8)
    {
      v9 = *v63;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v63 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v6 ^= [*(*(&v62 + 1) + 8 * i) hash];
        }

        v8 = [v7 countByEnumeratingWithState:&v62 objects:v73 count:16];
      }

      while (v8);
    }

    if (v6 == presentSettingsController_lastHash)
    {
      objc_storeStrong(v67 + 5, presentSettingsController_lastSettingsViewController);
      viewControllers = [v67[5] viewControllers];
      v12 = [viewControllers copy];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __43__PURootSettings_presentSettingsController__block_invoke_467;
      v59[3] = &unk_1E7B7D998;
      v61 = &v66;
      v13 = viewControllers;
      v60 = v13;
      [v12 enumerateObjectsUsingBlock:v59];
    }

    v14 = v67[5];
    if (!v14)
    {
      v15 = [[_PUSettingsController alloc] initWithRootSettings:sharedInstance];
      v16 = v67[5];
      v67[5] = v15;

      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __43__PURootSettings_presentSettingsController__block_invoke_2;
      v58[3] = &__block_descriptor_40_e22___UIBarButtonItem_8__0l;
      v58[4] = self;
      [v67[5] setDismissButtonFactory:v58];
      dismissButtonFactory = [v67[5] dismissButtonFactory];
      v18 = dismissButtonFactory[2]();
      [v67[5] setDismissButton:v18];

      objc_initWeak(&location, v67[5]);
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __43__PURootSettings_presentSettingsController__block_invoke_3;
      v55[3] = &unk_1E7B7D9E0;
      objc_copyWeak(&v56, &location);
      [v67[5] setEllipsisBarButtonItemFactory:v55];
      objc_destroyWeak(&v56);
      objc_destroyWeak(&location);
      v14 = v67[5];
    }

    presentSettingsController_lastHash = v6;
    objc_storeStrong(&presentSettingsController_lastSettingsViewController, v14);
    v19 = v67[5];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __43__PURootSettings_presentSettingsController__block_invoke_4;
    v52[3] = &unk_1E7B7FF70;
    v20 = sharedInstance;
    v53 = v20;
    selfCopy = self;
    [v19 setOnViewDidDisappearBlock:v52];
    v21 = settingsWindow;
    if (settingsWindow)
    {
LABEL_19:
      [v21 setHidden:0];
      [settingsWindow setRootViewController:v67[5]];
      [settingsWindow makeKeyAndVisible];
      rootViewController = [settingsWindow rootViewController];
      view = [rootViewController view];

      [view frame];
      x = v75.origin.x;
      y = v75.origin.y;
      width = v75.size.width;
      height = v75.size.height;
      v36 = -CGRectGetHeight(v75);
      v76.origin.x = x;
      v76.origin.y = y;
      v76.size.width = width;
      v76.size.height = height;
      v77 = CGRectOffset(v76, 0.0, v36);
      [view setFrame:{v77.origin.x, v77.origin.y, v77.size.width, v77.size.height}];
      v37 = MEMORY[0x1E69DD250];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __43__PURootSettings_presentSettingsController__block_invoke_5;
      v46[3] = &unk_1E7B7FF20;
      v38 = view;
      v47 = v38;
      v48 = x;
      v49 = y;
      v50 = width;
      v51 = height;
      [v37 _animateUsingDefaultTimingWithOptions:2 animations:v46 completion:0];

      _Block_object_dispose(&v66, 8);
      goto LABEL_20;
    }

    v22 = objc_alloc(MEMORY[0x1E69DD2E8]);
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    connectedScenes = [mEMORY[0x1E69DC668] connectedScenes];
    anyObject = [connectedScenes anyObject];

    if (anyObject)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_18:
        v26 = [v22 initWithWindowScene:anyObject];
        v27 = settingsWindow;
        settingsWindow = v26;

        v28 = objc_alloc_init(MEMORY[0x1E69C3450]);
        v29 = settingsDiagnosticsController;
        settingsDiagnosticsController = v28;

        [settingsDiagnosticsController setupOnInternalDevicesWithWindow:settingsWindow];
        v21 = settingsWindow;
        goto LABEL_19;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v41 = objc_opt_class();
      v40 = NSStringFromClass(v41);
      px_descriptionForAssertionMessage = [anyObject px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PURootSettings.m" lineNumber:460 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"UIApplication.sharedApplication.connectedScenes.anyObject", v40, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PURootSettings.m" lineNumber:460 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"UIApplication.sharedApplication.connectedScenes.anyObject", v40}];
    }

    goto LABEL_18;
  }
}

uint64_t __43__PURootSettings_presentSettingsController__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) presentSettingsController];
  }

  return result;
}

void __43__PURootSettings_presentSettingsController__block_invoke_467(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 pu_debugIsTransient])
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    if (a3)
    {
      v9 = [*(a1 + 32) objectAtIndex:a3 - 1];
      v10 = [v8 popToViewController:v9 animated:0];
      v8 = v9;
    }

    else
    {
      *(v7 + 40) = 0;
    }

    *a4 = 1;
  }
}

id __43__PURootSettings_presentSettingsController__block_invoke_2(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:*(a1 + 32) action:sel_dismissSettingsController_];

  return v1;
}

id __43__PURootSettings_presentSettingsController__block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DC708]);
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis.circle.fill"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v2 initWithImage:v3 style:0 target:WeakRetained action:sel_handleEllipsisBarButtonItem_];

  return v5;
}

void __43__PURootSettings_presentSettingsController__block_invoke_4(uint64_t a1)
{
  [PURootSettings _setDebugRows:0];
  [*(a1 + 32) save];
  v2 = testerRootSettings;
  [v2 save];

  v3 = PXSoftLinkedProtoRootSettingsLoadIfNecessary();
  [v3 save];

  v4 = [objc_opt_class() _photoKitSettings];
  [v4 save];
}

+ (void)_presentTapToRadar
{
  v50 = *MEMORY[0x1E69E9840];
  defaultDescription = [MEMORY[0x1E69C3578] defaultDescription];
  pu_currentViewControllerStack = [MEMORY[0x1E69DD258] pu_currentViewControllerStack];
  lastObject = [pu_currentViewControllerStack lastObject];
  view = [lastObject view];
  window = [view window];

  [window frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [window frame];
  v51.width = v13;
  v51.height = v14;
  UIGraphicsBeginImageContextWithOptions(v51, 0, 0.0);
  [window drawViewHierarchyInRect:{v6, v8, v10, v12}];
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v37 = v15;
  v36 = [objc_opt_class() _saveScreenshot:v15];
  v16 = [MEMORY[0x1E695DFF8] URLWithString:?];
  pu_debugCurrentAsset = [MEMORY[0x1E69DC668] pu_debugCurrentAsset];
  if (pu_debugCurrentAsset)
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = pu_debugCurrentAsset;
    }

    else
    {
      v19 = 0;
    }

    [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x1E6991E18]];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [v18 setObject:v21 forKeyedSubscript:*MEMORY[0x1E6991E20]];

    [MEMORY[0x1E6991F28] sendEvent:*MEMORY[0x1E6991CA8] withPayload:v18];
  }

  v22 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v23 = pu_currentViewControllerStack;
  v24 = [v23 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v44;
    do
    {
      v27 = 0;
      do
      {
        if (*v44 != v26)
        {
          objc_enumerationMutation(v23);
        }

        debugURLsForDiagnostics = [*(*(&v43 + 1) + 8 * v27) debugURLsForDiagnostics];
        [v22 addObjectsFromArray:debugURLsForDiagnostics];

        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v25);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v30 = MEMORY[0x1E69C3578];
  v48 = v16;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v47 = *MEMORY[0x1E69C4038];
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __36__PURootSettings__presentTapToRadar__block_invoke;
  v40[3] = &unk_1E7B80088;
  v41 = defaultManager;
  v42 = v16;
  v33 = v16;
  v34 = defaultManager;
  LOWORD(v35) = 1;
  [v30 fileRadarWithTitle:@"Photos - [TTR] <Insert Bug Title>" description:defaultDescription classification:@"Other Bug" componentID:@"630529" componentName:@"Photos (New Bugs) | iOS" componentVersion:@"all" keyword:0 screenshotURLs:v31 attachmentURLs:v22 includeSysDiagnose:v35 includeInternalRelease:v32 additionalExtensionIdentifiers:v40 completionHandler:?];
}

+ (id)_saveScreenshot:(id)screenshot
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = UIImageJPEGRepresentation(screenshot, 1.0);
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"tapToRadar.jpg"];

  v9 = 0;
  [v3 writeToFile:v5 options:1 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Unable to write screenshot to temp url: %@", buf, 0xCu);
    }
  }

  return v5;
}

+ (void)setupStatusBarInternalSettingsGestureOnInternalDevices
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (PFOSVariantHasInternalUI())
  {
    if (MEMORY[0x1B8C6C170]())
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v8 = @"PUEnableDoubleTapSettings";
      v9[0] = MEMORY[0x1E695E118];
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      [standardUserDefaults registerDefaults:v4];

      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      v6 = [standardUserDefaults2 BOOLForKey:@"PUEnableDoubleTapSettings"];

      if (v6)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __72__PURootSettings_setupStatusBarInternalSettingsGestureOnInternalDevices__block_invoke;
        v7[3] = &__block_descriptor_40_e5_v8__0l;
        v7[4] = self;
        if (setupStatusBarInternalSettingsGestureOnInternalDevices_onceToken != -1)
        {
          dispatch_once(&setupStatusBarInternalSettingsGestureOnInternalDevices_onceToken, v7);
        }
      }
    }
  }
}

void __72__PURootSettings_setupStatusBarInternalSettingsGestureOnInternalDevices__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 windows];
  v4 = [v3 firstObject];
  v5 = [v4 windowScene];
  v6 = [v5 statusBarManager];

  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, *(a1 + 32));
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__PURootSettings_setupStatusBarInternalSettingsGestureOnInternalDevices__block_invoke_2;
    v15[3] = &unk_1E7B80638;
    objc_copyWeak(&v16, &location);
    [v6 setDebugMenuHandler:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:*(a1 + 32) action:sel_presentSettingsController];
    [v7 setNumberOfTapsRequired:2];
    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    v9 = [v8 statusBarWindow];
    [v9 addGestureRecognizer:v7];
  }

  objc_initWeak(&location, *(a1 + 32));
  out_token = 0;
  v10 = MEMORY[0x1E69E96A0];
  v11 = MEMORY[0x1E69E96A0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PURootSettings_setupStatusBarInternalSettingsGestureOnInternalDevices__block_invoke_3;
  v12[3] = &unk_1E7B7D950;
  objc_copyWeak(&v13, &location);
  notify_register_dispatch("ShowPhotosInternalSettings", &out_token, v10, v12);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __72__PURootSettings_setupStatusBarInternalSettingsGestureOnInternalDevices__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentSettingsController];
}

void __72__PURootSettings_setupStatusBarInternalSettingsGestureOnInternalDevices__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentSettingsController];
}

+ (id)settingsControllerModule
{
  v139[30] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69C3868]);
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v5 = NSStringFromSelector(sel__internal_libraryStateBriefDescription);
  v6 = NSStringFromSelector(sel__internal_libraryStateImage);
  v132 = [v3 initWithPhotoLibrary:px_deprecated_appPhotoLibrary titleKeyPath:v5 imageKeyPath:v6];

  array = [MEMORY[0x1E695DF70] array];
  [array addObject:v132];
  v8 = objc_alloc(MEMORY[0x1E69C35A8]);
  px_deprecated_appPhotoLibrary2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v10 = NSStringFromSelector(sel__memory_creationStateTitle);
  v11 = NSStringFromSelector(sel__memory_creationStateImage);
  v131 = [v8 initWithPhotoLibrary:px_deprecated_appPhotoLibrary2 titleKeyPath:v10 imageKeyPath:v11];

  v130 = array;
  [array addObject:v131];
  v129 = [MEMORY[0x1E69C6638] sectionWithRows:array title:@"Processing Progress"];
  v12 = MEMORY[0x1E69C3558];
  v13 = NSStringFromSelector(sel_favoritesSettings);
  v14 = +[PURootSettings sharedInstance];
  v128 = [v12 favoritesSubmoduleWithFavoritesSettingsKeyPath:v13 delegate:v14];

  array2 = [MEMORY[0x1E695DF70] array];
  v15 = MEMORY[0x1E69C6610];
  mEMORY[0x1E69C3970] = [MEMORY[0x1E69C3970] sharedInstance];
  lemonadeSettings = [mEMORY[0x1E69C3970] lemonadeSettings];
  v125 = [v15 pu_rowWithTitle:@"🍋 Lemonade" settings:lemonadeSettings];
  v139[0] = v125;
  v16 = MEMORY[0x1E69C6610];
  v124 = NSStringFromSelector(sel_tabbedLibrarySettings);
  v123 = [v16 rowWithTitle:@"Tabs & Sidebar" childSettingsKeyPath:v124];
  v139[1] = v123;
  v17 = MEMORY[0x1E69C6610];
  _photosUICoreSettings = [self _photosUICoreSettings];
  v121 = [v17 pu_rowWithTitle:@"PhotosUICore" settings:_photosUICoreSettings];
  v139[2] = v121;
  v120 = [MEMORY[0x1E69C6610] pu_rowWithTitle:@"Tutorials" settingsProvider:&__block_literal_global_75853];
  v139[3] = v120;
  v18 = MEMORY[0x1E69C6610];
  _photosUICoreSettings2 = [self _photosUICoreSettings];
  diagnostics = [_photosUICoreSettings2 diagnostics];
  v117 = [v18 pu_rowWithTitle:@"Diagnostics" settings:diagnostics];
  v139[4] = v117;
  v19 = MEMORY[0x1E69C6610];
  _photoKitSettings = [self _photoKitSettings];
  v115 = [v19 pu_rowWithTitle:@"PhotoKit" settings:_photoKitSettings];
  v139[5] = v115;
  v20 = MEMORY[0x1E69C6610];
  v114 = NSStringFromSelector(sel_curation);
  v113 = [v20 rowWithTitle:@"Curation" childSettingsKeyPath:v114];
  v139[6] = v113;
  v21 = MEMORY[0x1E69C6610];
  v112 = NSStringFromSelector(sel_welcomeSettings);
  v111 = [v21 rowWithTitle:@"Welcome" childSettingsKeyPath:v112];
  v139[7] = v111;
  v22 = MEMORY[0x1E69C6610];
  v110 = NSStringFromSelector(sel_photosGridSettings);
  v109 = [v22 rowWithTitle:@"Photos Grid" childSettingsKeyPath:v110];
  v139[8] = v109;
  v23 = MEMORY[0x1E69C6610];
  v108 = NSStringFromSelector(sel_photoEditingSettings);
  v107 = [v23 rowWithTitle:@"Photo Editing" childSettingsKeyPath:v108];
  v139[9] = v107;
  v24 = MEMORY[0x1E69C6610];
  v106 = NSStringFromSelector(sel_medusaSettings);
  v105 = [v24 rowWithTitle:@"Medusa" childSettingsKeyPath:v106];
  v139[10] = v105;
  v25 = MEMORY[0x1E69C6610];
  v104 = NSStringFromSelector(sel_oneUpSettings);
  v103 = [v25 rowWithTitle:@"One Up" childSettingsKeyPath:v104];
  v139[11] = v103;
  v26 = MEMORY[0x1E69C6610];
  v102 = NSStringFromSelector(sel_workaroundSettings);
  v101 = [v26 rowWithTitle:@"Workarounds" childSettingsKeyPath:v102];
  v139[12] = v101;
  v27 = MEMORY[0x1E69C66A8];
  v100 = NSStringFromSelector(sel_allowIrisUI);
  v99 = [v27 rowWithTitle:@"Iris UI and Playback" valueKeyPath:v100];
  v139[13] = v99;
  v28 = MEMORY[0x1E69C6610];
  v98 = NSStringFromSelector(sel_irisSettings);
  v97 = [v28 rowWithTitle:@"Iris" childSettingsKeyPath:v98];
  v139[14] = v97;
  v29 = MEMORY[0x1E69C6610];
  v96 = NSStringFromSelector(sel_tilingViewSettings);
  v94 = [v29 rowWithTitle:@"Tiling View" childSettingsKeyPath:v96];
  v139[15] = v94;
  v30 = MEMORY[0x1E69C6610];
  v93 = NSStringFromSelector(sel_slideshowSettings);
  v92 = [v30 rowWithTitle:@"Slideshow" childSettingsKeyPath:v93];
  v139[16] = v92;
  v31 = MEMORY[0x1E69C6610];
  v91 = NSStringFromSelector(sel_sceneSettings);
  v90 = [v31 rowWithTitle:@"Scenes" childSettingsKeyPath:v91];
  v139[17] = v90;
  v32 = MEMORY[0x1E69C6610];
  v89 = NSStringFromSelector(sel_audioClassificationSettings);
  v88 = [v32 rowWithTitle:@"Audio Classification" childSettingsKeyPath:v89];
  v139[18] = v88;
  v33 = MEMORY[0x1E69C6610];
  v87 = NSStringFromSelector(sel_suggestions);
  v86 = [v33 rowWithTitle:@"Suggestions" childSettingsKeyPath:v87];
  v139[19] = v86;
  v34 = MEMORY[0x1E69C6610];
  _photosUICoreSettings3 = [self _photosUICoreSettings];
  sharingSettings = [_photosUICoreSettings3 sharingSettings];
  v83 = [v34 pu_rowWithTitle:@"Sharing" settings:sharingSettings];
  v139[20] = v83;
  v35 = MEMORY[0x1E69C65F8];
  v82 = NSStringFromSelector(sel_interfaceThemeClass);
  v81 = [v35 rowWithTitle:@"Interface Theme" valueKeyPath:v82];
  v138[0] = objc_opt_class();
  v138[1] = objc_opt_class();
  v138[2] = objc_opt_class();
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:3];
  v79 = [v81 possibleValues:v80 titles:&unk_1F2B7D610];
  v139[21] = v79;
  v36 = MEMORY[0x1E69C6610];
  v78 = NSStringFromSelector(sel_airPlaySettings);
  v77 = [v36 rowWithTitle:@"AirPlay" childSettingsKeyPath:v78];
  v139[22] = v77;
  v37 = MEMORY[0x1E69C6610];
  v76 = NSStringFromSelector(sel_performanceDiagnosticsSettings);
  v75 = [v37 rowWithTitle:@"Performance Diagnostics" childSettingsKeyPath:v76];
  v139[23] = v75;
  v38 = MEMORY[0x1E69C6610];
  selfCopy = self;
  _photosUICoreSettings4 = [self _photosUICoreSettings];
  importSettings = [_photosUICoreSettings4 importSettings];
  v72 = [v38 pu_rowWithTitle:@"Import" settings:importSettings];
  v139[24] = v72;
  v39 = MEMORY[0x1E69C6610];
  v71 = NSStringFromSelector(sel_compositeVideoSettings);
  v70 = [v39 rowWithTitle:@"Composite Video" childSettingsKeyPath:v71];
  v139[25] = v70;
  v40 = MEMORY[0x1E69C6610];
  v41 = NSStringFromSelector(sel_ambientPhotoFrameSettings);
  v42 = [v40 rowWithTitle:@"Ambient Photo Frame" childSettingsKeyPath:v41];
  v139[26] = v42;
  v43 = MEMORY[0x1E69C66A8];
  v44 = NSStringFromSelector(sel_allowGuidedAccessRestrictions);
  v45 = [v43 rowWithTitle:@"Guided Access Restrictions" valueKeyPath:v44];
  v139[27] = v45;
  v46 = MEMORY[0x1E69C6610];
  _photosUICoreSettings5 = [self _photosUICoreSettings];
  generativeStorySettings = [_photosUICoreSettings5 generativeStorySettings];
  v49 = [v46 pu_rowWithTitle:@"Memory Creation" settings:generativeStorySettings];
  v139[28] = v49;
  v50 = MEMORY[0x1E69C65E8];
  v51 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v52 = [v50 rowWithTitle:@"Restore All Defaults" action:v51];
  v139[29] = v52;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:30];
  [array2 addObjectsFromArray:v53];

  v54 = [MEMORY[0x1E69C6638] sectionWithRows:array2];
  array3 = [MEMORY[0x1E695DF70] array];
  v56 = [MEMORY[0x1E69C6610] pu_rowWithTitle:@"PhotosUI Tester" settingsProvider:&__block_literal_global_385];
  v137[0] = v56;
  v57 = [MEMORY[0x1E69C6610] pu_rowWithTitle:@"PhotosUICore Proto" settingsProvider:&__block_literal_global_390];
  v137[1] = v57;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:2];
  [array3 addObjectsFromArray:v58];

  [array3 addObjectsFromArray:sDebugRows];
  v59 = [MEMORY[0x1E69C65E8] pu_rowWithTitle:@"Print UI State" asynchronousOutputProducer:&__block_literal_global_396];
  v136[0] = v59;
  v60 = [MEMORY[0x1E69C65E8] pu_rowWithTitle:@"Print iCloud Photo Library Status" asynchronousOutputProducer:&__block_literal_global_403_75910];
  v136[1] = v60;
  v61 = [MEMORY[0x1E69C65E8] pu_rowWithTitle:@"Print Photo Analysis Status" asynchronousOutputProducer:&__block_literal_global_408];
  v136[2] = v61;
  v62 = [MEMORY[0x1E69C65E8] pu_rowWithTitle:@"Print Statistics" asynchronousOutputProducer:&__block_literal_global_413];
  v136[3] = v62;
  v134[0] = MEMORY[0x1E69E9820];
  v134[1] = 3221225472;
  v134[2] = __42__PURootSettings_settingsControllerModule__block_invoke_12;
  v134[3] = &__block_descriptor_40_e30_v16__0__PTUIModuleController_8l;
  v134[4] = selfCopy;
  v63 = [MEMORY[0x1E69C65E8] pu_rowWithTitle:@"Delete All Diagnostic Files" action:v134];
  v136[4] = v63;
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:5];
  [array3 addObjectsFromArray:v64];

  v65 = [MEMORY[0x1E69C6638] sectionWithRows:array3 title:@"Debug"];
  v66 = MEMORY[0x1E69C6638];
  v135[0] = v128;
  v135[1] = v129;
  v135[2] = v54;
  v135[3] = v65;
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:4];
  v68 = [v66 moduleWithTitle:@"Photos" contents:v67];

  return v68;
}

void __42__PURootSettings_settingsControllerModule__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PUPhotosDiagnosticsAgent localDiagnosticsAgent];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PURootSettings_settingsControllerModule__block_invoke_11;
  v5[3] = &unk_1E7B7D908;
  v6 = v2;
  v4 = v2;
  [v3 captureDescriptionOfStatisticsWithResultHandler:v5];
}

void __42__PURootSettings_settingsControllerModule__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PUPhotosDiagnosticsAgent localDiagnosticsAgent];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PURootSettings_settingsControllerModule__block_invoke_9;
  v5[3] = &unk_1E7B7D908;
  v6 = v2;
  v4 = v2;
  [v3 captureDescriptionOfPhotoAnalysisWithResultHandler:v5];
}

void __42__PURootSettings_settingsControllerModule__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PUPhotosDiagnosticsAgent localDiagnosticsAgent];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PURootSettings_settingsControllerModule__block_invoke_7;
  v5[3] = &unk_1E7B7D908;
  v6 = v2;
  v4 = v2;
  [v3 captureDescriptionOfCloudPhotoLibraryWithResultHandler:v5];
}

void __42__PURootSettings_settingsControllerModule__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PUPhotosDiagnosticsAgent localDiagnosticsAgent];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PURootSettings_settingsControllerModule__block_invoke_5;
  v5[3] = &unk_1E7B7D908;
  v6 = v2;
  v4 = v2;
  [v3 captureDescriptionOfUIState:0 resultHandler:v5];
}

@end