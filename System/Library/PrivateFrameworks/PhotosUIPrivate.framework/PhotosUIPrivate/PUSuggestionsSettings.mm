@interface PUSuggestionsSettings
+ (PUSuggestionsSettings)sharedInstance;
+ (id)_debugRowsForCurrentAsset;
+ (id)settingsControllerModule;
+ (id)sortDescriptorForMode:(int64_t)mode;
- (BOOL)debugTintLayers;
- (BOOL)disableSegmentation;
- (BOOL)disableSegmentationCache;
- (BOOL)enableCustomStyles;
- (BOOL)enableGreenScreenStyles;
- (double)manualGatingLenience;
- (int64_t)infillMode;
- (void)createChildren;
- (void)performPostSaveActions;
- (void)setDebugTintLayers:(BOOL)layers;
- (void)setDefaultValues;
- (void)setDisableSegmentation:(BOOL)segmentation;
- (void)setDisableSegmentationCache:(BOOL)cache;
- (void)setEnableCustomStyles:(BOOL)styles;
- (void)setEnableGreenScreenStyles:(BOOL)styles;
- (void)setInfillMode:(int64_t)mode;
- (void)setManualGatingLenience:(double)lenience;
@end

@implementation PUSuggestionsSettings

- (void)createChildren
{
  self->_shortcutsPlaygroundSettings = [(PTSettings *)[PUWallpaperShortcutsPlaygroundSettings alloc] initWithDefaultValues];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PUSuggestionsSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PUSuggestionsSettings *)self setViewMode:0];
  [(PUSuggestionsSettings *)self setSourceMode:0];
  [(PUSuggestionsSettings *)self setIncludeDebugLayers:MEMORY[0x1B8C6C170]([(PUSuggestionsSettings *)self setParallaxAmount:30.0])];
  [(PUSuggestionsSettings *)self setDebugRoundTripLayerStack:0];
  [(PUSuggestionsSettings *)self setDebugBackfillCompositing:0];
  [(PUSuggestionsSettings *)self setDebugDisableFrameUpdates:0];
  [(PUSuggestionsSettings *)self setEnableFRCInAssetDetails:0];
  [(PUSuggestionsSettings *)self setPrimarySort:4];
  [(PUSuggestionsSettings *)self setSecondarySort:0];
  [(PUSuggestionsSettings *)self setLivePhotoTabFetchLimit:*MEMORY[0x1E69C1718]];
}

+ (id)_debugRowsForCurrentAsset
{
  v64 = *MEMORY[0x1E69E9840];
  pu_currentViewControllerStack = [MEMORY[0x1E69DD258] pu_currentViewControllerStack];
  firstObject = [pu_currentViewControllerStack firstObject];
  if (firstObject)
  {
    array = [MEMORY[0x1E695DF70] array];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = [pu_currentViewControllerStack reverseObjectEnumerator];
    v37 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (!v37)
    {
      goto LABEL_24;
    }

    v36 = *v58;
    while (1)
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v58 != v36)
        {
          objc_enumerationMutation(obj);
        }

        objc_initWeak(&location, *(*(&v57 + 1) + 8 * i));
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __54__PUSuggestionsSettings_UI___debugRowsForCurrentAsset__block_invoke;
        aBlock[3] = &unk_1E7B7E418;
        objc_copyWeak(&v55, &location);
        v38 = _Block_copy(aBlock);
        array2 = [MEMORY[0x1E695DF70] array];
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v3 = v38[2]();
        v4 = [v3 countByEnumeratingWithState:&v50 objects:v62 count:16];
        if (v4)
        {
          v5 = *v51;
          do
          {
            v6 = 0;
            do
            {
              if (*v51 != v5)
              {
                objc_enumerationMutation(v3);
              }

              v7 = *(*(&v50 + 1) + 8 * v6);
              if (v7)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  goto LABEL_14;
                }

                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                v11 = objc_opt_class();
                v10 = NSStringFromClass(v11);
                px_descriptionForAssertionMessage = [v7 px_descriptionForAssertionMessage];
                [currentHandler handleFailureInMethod:a2 object:self file:@"PUSuggestionsSettings+UI.m" lineNumber:274 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v10, px_descriptionForAssertionMessage}];
              }

              else
              {
                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                v9 = objc_opt_class();
                v10 = NSStringFromClass(v9);
                [currentHandler handleFailureInMethod:a2 object:self file:@"PUSuggestionsSettings+UI.m" lineNumber:274 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v10}];
              }

LABEL_14:
              [array2 addObject:v7];

              ++v6;
            }

            while (v4 != v6);
            v13 = [v3 countByEnumeratingWithState:&v50 objects:v62 count:16];
            v4 = v13;
          }

          while (v13);
        }

        if ([array2 count])
        {
          v14 = MEMORY[0x1E69C65E8];
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __54__PUSuggestionsSettings_UI___debugRowsForCurrentAsset__block_invoke_2;
          v48[3] = &unk_1E7B7E3F0;
          v15 = array2;
          v49 = v15;
          v16 = [v14 pu_rowWithTitle:@"Show in Parallax Debug Viewer" action:v48];
          v61[0] = v16;
          v17 = MEMORY[0x1E69C65E8];
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __54__PUSuggestionsSettings_UI___debugRowsForCurrentAsset__block_invoke_3;
          v46[3] = &unk_1E7B7E3F0;
          v18 = v15;
          v47 = v18;
          v19 = [v17 pu_rowWithTitle:@"Show in Wallpaper Poster Editor" action:v46];
          v61[1] = v19;
          v20 = MEMORY[0x1E69C65E8];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __54__PUSuggestionsSettings_UI___debugRowsForCurrentAsset__block_invoke_4;
          v44[3] = &unk_1E7B7E3F0;
          v21 = v18;
          v45 = v21;
          v22 = [v20 pu_rowWithTitle:@"Show as Lock Screen Wallpaper" action:v44];
          v61[2] = v22;
          v23 = MEMORY[0x1E69C65E8];
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __54__PUSuggestionsSettings_UI___debugRowsForCurrentAsset__block_invoke_5;
          v42[3] = &unk_1E7B7E3F0;
          v24 = v21;
          v43 = v24;
          v25 = [v23 pu_rowWithTitle:@"Test Lock Screen Migration" action:v42];
          v61[3] = v25;
          v26 = MEMORY[0x1E69C65E8];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __54__PUSuggestionsSettings_UI___debugRowsForCurrentAsset__block_invoke_6;
          v40[3] = &unk_1E7B7E3F0;
          v41 = v24;
          v27 = [v26 pu_rowWithTitle:@"Test Home Screen Migration" action:v40];
          v61[4] = v27;
          v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:5];

          [array addObjectsFromArray:v28];
        }

        objc_destroyWeak(&v55);
        objc_destroyWeak(&location);
      }

      v37 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
      if (!v37)
      {
LABEL_24:

        goto LABEL_26;
      }
    }
  }

  array = MEMORY[0x1E695E0F0];
LABEL_26:

  return array;
}

id __54__PUSuggestionsSettings_UI___debugRowsForCurrentAsset__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  v2 = [v1 pu_debugCurrentlySelectedAssets];

  if (!v2)
  {
    v3 = objc_loadWeakRetained(&to);
    v4 = [v3 pu_debugCurrentAsset];

    if (v4)
    {
      v7[0] = v4;
      v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    }

    else
    {
      v2 = 0;
    }
  }

  objc_destroyWeak(&to);

  return v2;
}

void __54__PUSuggestionsSettings_UI___debugRowsForCurrentAsset__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_alloc_init(PUParallaxLayerStackDebugViewController);
  v4 = [*(a1 + 32) firstObject];
  [(PUParallaxLayerStackDebugViewController *)v6 loadPHAsset:v4];

  v5 = [v3 navigationController];

  [v5 pushViewController:v6 animated:1];
}

void __54__PUSuggestionsSettings_UI___debugRowsForCurrentAsset__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PUWallpaperPosterEditDebugViewController alloc];
  v5 = *(a1 + 32);
  v6 = [v5 firstObject];
  v7 = [v6 photoLibrary];
  v8 = [(PUWallpaperPosterEditDebugViewController *)v4 initWithAssets:v5 posterType:1 photoLibrary:v7];

  [(PUWallpaperPosterEditDebugViewController *)v8 setModalPresentationStyle:5];
  [v3 presentViewController:v8 animated:1 completion:0];
}

void __54__PUSuggestionsSettings_UI___debugRowsForCurrentAsset__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PUWallpaperPlaygroundViewController alloc] initWithAssets:*(a1 + 32)];
  [(PUWallpaperPlaygroundViewController *)v4 presentPlaygroundWithPresentingViewController:v3];
}

void __54__PUSuggestionsSettings_UI___debugRowsForCurrentAsset__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PUWallpaperPosterEditDebugViewController alloc];
  v5 = [*(a1 + 32) firstObject];
  v6 = [v5 photoLibrary];
  v7 = [(PUWallpaperPosterEditDebugViewController *)v4 initWithMigratorOfLegacyConfigurationType:1 photoLibrary:v6];

  [(PUWallpaperPosterEditDebugViewController *)v7 setModalPresentationStyle:5];
  [v3 presentViewController:v7 animated:1 completion:0];
}

void __54__PUSuggestionsSettings_UI___debugRowsForCurrentAsset__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PUWallpaperPosterEditDebugViewController alloc];
  v5 = [*(a1 + 32) firstObject];
  v6 = [v5 photoLibrary];
  v7 = [(PUWallpaperPosterEditDebugViewController *)v4 initWithMigratorOfLegacyConfigurationType:2 photoLibrary:v6];

  [(PUWallpaperPosterEditDebugViewController *)v7 setModalPresentationStyle:5];
  [v3 presentViewController:v7 animated:1 completion:0];
}

+ (id)settingsControllerModule
{
  v178[5] = *MEMORY[0x1E69E9840];
  px_systemPhotoLibrary = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  v4 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Top People Suggestion Generation" protoViewControllerFactoryClassName:@"PXProtoSuggestionsDebugViewControllerFactory" options:&unk_1F2B7F210];
  v5 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Wallpaper Nightly Suggestions" protoViewControllerFactoryClassName:@"PXProtoSuggestionsDebugViewControllerFactory" options:&unk_1F2B7F238];
  v6 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Portrait Wallpaper Candidates" protoViewControllerFactoryClassName:@"PXProtoSuggestionsDebugViewControllerFactory" options:&unk_1F2B7F260];
  v7 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Cold Start Photos" protoViewControllerFactoryClassName:@"PXProtoSuggestionsDebugViewControllerFactory" options:&unk_1F2B7F288];
  v8 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Cold Start Photos (Device Owner)" protoViewControllerFactoryClassName:@"PXProtoSuggestionsDebugViewControllerFactory" options:&unk_1F2B7F2B0];
  v9 = MEMORY[0x1E69C6638];
  v138 = v5;
  v139 = v4;
  v178[0] = v4;
  v178[1] = v5;
  v136 = v7;
  v137 = v6;
  v178[2] = v6;
  v178[3] = v7;
  v135 = v8;
  v178[4] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v178 count:5];
  v134 = [v9 sectionWithRows:v10 title:@"Wallpaper Generation"];

  v11 = MEMORY[0x1E69C6638];
  v12 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Wallpaper Category Inspector" protoViewControllerFactoryClassName:@"PXProtoSuggestionsDebugViewControllerFactory" options:&unk_1F2B7F2D8];
  v177[0] = v12;
  v13 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Smart Album People Inspector" protoViewControllerFactoryClassName:@"PXProtoSuggestionsDebugViewControllerFactory" options:&unk_1F2B7F300];
  v177[1] = v13;
  v14 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Gallery Featured Photo" protoViewControllerFactoryClassName:@"PXProtoSuggestionsDebugViewControllerFactory" options:&unk_1F2B7F328];
  v177[2] = v14;
  v15 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Gallery Smart Album" protoViewControllerFactoryClassName:@"PXProtoSuggestionsDebugViewControllerFactory" options:&unk_1F2B7F350];
  v177[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v177 count:4];
  v133 = [v11 sectionWithRows:v16 title:@"Wallpaper Inspector"];

  v143 = MEMORY[0x1E69C6638];
  v17 = MEMORY[0x1E69C65E8];
  v167[0] = MEMORY[0x1E69E9820];
  v167[1] = 3221225472;
  v167[2] = __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke;
  v167[3] = &unk_1E7B7E3C8;
  v147 = px_systemPhotoLibrary;
  v168 = v147;
  selfCopy = self;
  v145 = [v17 pu_rowWithTitle:@"Picker Playground" action:v167];
  v176[0] = v145;
  v18 = MEMORY[0x1E69C65F8];
  v140 = NSStringFromSelector(sel_primarySort);
  v19 = [v18 rowWithTitle:@"Primary Sort" valueKeyPath:v140];
  v20 = [v19 possibleValues:&unk_1F2B7D6B8 titles:&unk_1F2B7D6D0];
  v176[1] = v20;
  v21 = MEMORY[0x1E69C65F8];
  v22 = NSStringFromSelector(sel_secondarySort);
  v23 = [v21 rowWithTitle:@"Secondary Sort" valueKeyPath:v22];
  v24 = [v23 possibleValues:&unk_1F2B7D6B8 titles:&unk_1F2B7D6D0];
  v176[2] = v24;
  v25 = MEMORY[0x1E69C66A0];
  v26 = NSStringFromSelector(sel_livePhotoTabFetchLimit);
  v27 = [v25 rowWithTitle:@"Fetch Limit" valueKeyPath:v26];
  v28 = [v27 minValue:50.0 maxValue:200.0];
  v29 = [v28 pu_increment:1.0];
  v176[3] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v176 count:4];
  v132 = [v143 sectionWithRows:v30 title:@"Picker Live Photo Tab Playground"];

  v31 = MEMORY[0x1E69C6638];
  v32 = MEMORY[0x1E69C65E8];
  v165[0] = MEMORY[0x1E69E9820];
  v165[1] = 3221225472;
  v165[2] = __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_2;
  v165[3] = &unk_1E7B7E3F0;
  v33 = v147;
  v166 = v33;
  v34 = [v32 pu_rowWithTitle:@"Combined" action:v165];
  v175[0] = v34;
  v35 = MEMORY[0x1E69C65E8];
  v163[0] = MEMORY[0x1E69E9820];
  v163[1] = 3221225472;
  v163[2] = __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_3;
  v163[3] = &unk_1E7B7E3F0;
  v36 = v33;
  v164 = v36;
  v37 = [v35 pu_rowWithTitle:@"Highlight Pass FRC" action:v163];
  v175[1] = v37;
  v38 = MEMORY[0x1E69C65E8];
  v161[0] = MEMORY[0x1E69E9820];
  v161[1] = 3221225472;
  v161[2] = __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_4;
  v161[3] = &unk_1E7B7E3F0;
  v39 = v36;
  v162 = v39;
  v40 = [v38 pu_rowWithTitle:@"Highlight Candidates" action:v161];
  v175[2] = v40;
  v41 = MEMORY[0x1E69C65E8];
  v159[0] = MEMORY[0x1E69E9820];
  v159[1] = 3221225472;
  v159[2] = __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_5;
  v159[3] = &unk_1E7B7E3F0;
  v42 = v39;
  v160 = v42;
  v43 = [v41 pu_rowWithTitle:@"Live Photo Suggestions Only" action:v159];
  v175[3] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:4];
  v148 = [v31 sectionWithRows:v44 title:@"Picker Live Photo Tab Curation"];

  v45 = MEMORY[0x1E69C6638];
  v46 = MEMORY[0x1E69C66A8];
  v47 = NSStringFromSelector(sel_enableFRCInAssetDetails);
  v48 = [v46 rowWithTitle:@"Enable FRC in Asset Details" valueKeyPath:v47];
  v174[0] = v48;
  v49 = MEMORY[0x1E69C65E8];
  v157[0] = MEMORY[0x1E69E9820];
  v157[1] = 3221225472;
  v157[2] = __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_6;
  v157[3] = &unk_1E7B7E3F0;
  v50 = v42;
  v158 = v50;
  v51 = [v49 pu_rowWithTitle:@"Settling Effect Score" action:v157];
  v174[1] = v51;
  v52 = MEMORY[0x1E69C65E8];
  v155[0] = MEMORY[0x1E69E9820];
  v155[1] = 3221225472;
  v155[2] = __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_7;
  v155[3] = &unk_1E7B7E3F0;
  v53 = v50;
  v156 = v53;
  v54 = [v52 pu_rowWithTitle:@"Autoplay Suggestion Score" action:v155];
  v174[2] = v54;
  v55 = MEMORY[0x1E69C65E8];
  v153[0] = MEMORY[0x1E69E9820];
  v153[1] = 3221225472;
  v153[2] = __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_8;
  v153[3] = &unk_1E7B7E3F0;
  v56 = v53;
  v154 = v56;
  v57 = [v55 pu_rowWithTitle:@"Settling Effect Suggestions" action:v153];
  v174[3] = v57;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:4];
  v146 = [v45 sectionWithRows:v58 title:@"Settling Effect"];

  v59 = MEMORY[0x1E69C6638];
  v60 = MEMORY[0x1E69C65E8];
  v151[0] = MEMORY[0x1E69E9820];
  v151[1] = 3221225472;
  v151[2] = __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_9;
  v151[3] = &unk_1E7B7E3F0;
  v61 = v56;
  v152 = v61;
  v62 = [v60 pu_rowWithTitle:@"Me Suggestions" action:v151];
  v173[0] = v62;
  v63 = MEMORY[0x1E69C65E8];
  v149[0] = MEMORY[0x1E69E9820];
  v149[1] = 3221225472;
  v149[2] = __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_10;
  v149[3] = &unk_1E7B7E3F0;
  v130 = v61;
  v150 = v130;
  v64 = [v63 pu_rowWithTitle:@"People Suggestions" action:v149];
  v173[1] = v64;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:2];
  v144 = [v59 sectionWithRows:v65 title:@"Camera Styleable"];

  v141 = MEMORY[0x1E69C6638];
  v66 = MEMORY[0x1E69C65F8];
  v129 = NSStringFromSelector(sel_viewMode);
  v128 = [v66 rowWithTitle:@"View Mode" valueKeyPath:v129];
  v127 = [v128 possibleValues:&unk_1F2B7D6E8 titles:&unk_1F2B7D700];
  v172[0] = v127;
  v67 = MEMORY[0x1E69C65F8];
  v126 = NSStringFromSelector(sel_sourceMode);
  v125 = [v67 rowWithTitle:@"Source Mode" valueKeyPath:v126];
  v124 = [v125 possibleValues:&unk_1F2B7D718 titles:&unk_1F2B7D730];
  v172[1] = v124;
  v68 = MEMORY[0x1E69C65F8];
  v123 = NSStringFromSelector(sel_infillMode);
  v122 = [v68 rowWithTitle:@"Infill Mode" valueKeyPath:v123];
  v121 = [v122 possibleValues:&unk_1F2B7D748 titles:&unk_1F2B7D760];
  v172[2] = v121;
  v69 = MEMORY[0x1E69C66A8];
  v120 = NSStringFromSelector(sel_disableSegmentation);
  v119 = [v69 rowWithTitle:@"Disable Segmentation" valueKeyPath:v120];
  v172[3] = v119;
  v70 = MEMORY[0x1E69C66A8];
  v118 = NSStringFromSelector(sel_disableSegmentationCache);
  v117 = [v70 rowWithTitle:@"Disable Segmentation Cache" valueKeyPath:v118];
  v172[4] = v117;
  v71 = MEMORY[0x1E69C66A0];
  v116 = NSStringFromSelector(sel_parallaxAmount);
  v115 = [v71 rowWithTitle:@"Parallax Amount" valueKeyPath:v116];
  v114 = [v115 minValue:0.0 maxValue:100.0];
  v172[5] = v114;
  v72 = MEMORY[0x1E69C66A0];
  v113 = NSStringFromSelector(sel_manualGatingLenience);
  v112 = [v72 rowWithTitle:@"Manual Gating Lenience" valueKeyPath:v113];
  v111 = [v112 minValue:0.0 maxValue:1.0];
  v172[6] = v111;
  v73 = MEMORY[0x1E69C66A8];
  v110 = NSStringFromSelector(sel_includeDebugLayers);
  v109 = [v73 rowWithTitle:@"Include Debug Layers" valueKeyPath:v110];
  v172[7] = v109;
  v74 = MEMORY[0x1E69C66A8];
  v108 = NSStringFromSelector(sel_debugRoundTripLayerStack);
  v107 = [v74 rowWithTitle:@"Debug Round Trip Layers" valueKeyPath:v108];
  v172[8] = v107;
  v75 = MEMORY[0x1E69C66A8];
  v106 = NSStringFromSelector(sel_debugTintLayers);
  v105 = [v75 rowWithTitle:@"Debug Tint Layers" valueKeyPath:v106];
  v172[9] = v105;
  v76 = MEMORY[0x1E69C66A8];
  v77 = NSStringFromSelector(sel_debugBackfillCompositing);
  v78 = [v76 rowWithTitle:@"Debug Backfill Compositing" valueKeyPath:v77];
  v172[10] = v78;
  v79 = MEMORY[0x1E69C66A8];
  v80 = NSStringFromSelector(sel_debugDisableFrameUpdates);
  v81 = [v79 rowWithTitle:@"Debug Disable Frame Updates" valueKeyPath:v80];
  v172[11] = v81;
  v82 = MEMORY[0x1E69C66A8];
  v83 = NSStringFromSelector(sel_enableCustomStyles);
  v84 = [v82 rowWithTitle:@"Enable Custom Styles" valueKeyPath:v83];
  v172[12] = v84;
  v85 = MEMORY[0x1E69C66A8];
  v86 = NSStringFromSelector(sel_enableGreenScreenStyles);
  v87 = [v85 rowWithTitle:@"Enable Green-Screen Styles" valueKeyPath:v86];
  v172[13] = v87;
  v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:14];
  v142 = [v141 sectionWithRows:v88 title:@"Posters UI"];

  v89 = MEMORY[0x1E69C6638];
  v90 = MEMORY[0x1E69C6610];
  v91 = NSStringFromSelector(sel_shortcutsPlaygroundSettings);
  v92 = [v90 rowWithTitle:@"Shortcuts Playground" childSettingsKeyPath:v91];
  v171 = v92;
  v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v171 count:1];
  v94 = [v89 sectionWithRows:v93 title:@"Shortcuts"];

  _debugRowsForCurrentAsset = [self _debugRowsForCurrentAsset];
  if ([_debugRowsForCurrentAsset count])
  {
    v96 = [MEMORY[0x1E69C6638] sectionWithRows:_debugRowsForCurrentAsset title:@"Current Asset or Selection"];
  }

  else
  {
    v96 = 0;
  }

  v97 = MEMORY[0x1E695DF70];
  v170[0] = v134;
  v170[1] = v133;
  v170[2] = v148;
  v170[3] = v132;
  v170[4] = v146;
  v170[5] = v144;
  v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v170 count:{6, v105}];
  v99 = [v97 arrayWithArray:v98];

  if (v142)
  {
    [v99 addObject:?];
  }

  if (v96)
  {
    [v99 addObject:v96];
  }

  [v99 addObject:v94];
  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  [v99 addObject:px_restoreDefaultsSection];

  v101 = MEMORY[0x1E69C6638];
  v102 = [v99 copy];
  v103 = [v101 moduleWithTitle:@"Suggestions" contents:v102];

  return v103;
}

void __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[PUSuggestionsSettings sharedInstance];
  v5 = [*(a1 + 32) librarySpecificFetchOptions];
  [v5 setFetchLimit:{objc_msgSend(v4, "livePhotoTabFetchLimit")}];
  v6 = [*(a1 + 40) sortDescriptorForMode:{objc_msgSend(v4, "primarySort")}];
  v16[0] = v6;
  v7 = [*(a1 + 40) sortDescriptorForMode:{objc_msgSend(v4, "secondarySort", v6)}];
  v16[1] = v7;
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v16[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  [v5 setInternalSortDescriptors:v9];

  v10 = [MEMORY[0x1E69C15B0] fetchLivePhotoTabAssetsWithOptions:v5];
  v11 = MEMORY[0x1E6978630];
  v12 = [v10 fetchedObjectIDs];
  v13 = [v11 fetchAssetsWithObjectIDs:v12 options:v5];

  v14 = [getPUTesterSettlingEffectReviewUtilitiesClass() livePhotoTabPlaygroundViewControllerWithFetchResult:v13];
  v15 = [v3 navigationController];

  [v15 pushViewController:v14 animated:1];
}

void __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [getPUTesterSettlingEffectReviewUtilitiesClass() livePhotoTabReviewViewControllerWithPhotoLibrary:*(a1 + 32)];
  v4 = [v3 navigationController];

  [v4 pushViewController:v5 animated:1];
}

void __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [getPUTesterSettlingEffectReviewUtilitiesClass() livePhotoTabHighlightSettlingEffectAssetsReviewViewControllerWithPhotoLibrary:*(a1 + 32)];
  v4 = [v3 navigationController];

  [v4 pushViewController:v5 animated:1];
}

void __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [getPUTesterSettlingEffectReviewUtilitiesClass() livePhotoTabHighlightCandidateAssetsReviewViewControllerWithPhotoLibrary:*(a1 + 32)];
  v4 = [v3 navigationController];

  [v4 pushViewController:v5 animated:1];
}

void __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [getPUTesterSettlingEffectReviewUtilitiesClass() livePhotoTabSuggestionReviewViewControllerWithPhotoLibrary:*(a1 + 32)];
  v4 = [v3 navigationController];

  [v4 pushViewController:v5 animated:1];
}

void __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [getPUTesterSettlingEffectReviewUtilitiesClass() settlingEffectScoreReviewViewControllerWithPhotoLibrary:*(a1 + 32)];
  v4 = [v3 navigationController];

  [v4 pushViewController:v5 animated:1];
}

void __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [getPUTesterSettlingEffectReviewUtilitiesClass() autoplayScoreReviewViewControllerWithPhotoLibrary:*(a1 + 32)];
  v4 = [v3 navigationController];

  [v4 pushViewController:v5 animated:1];
}

void __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [getPUTesterSettlingEffectReviewUtilitiesClass() settlingEffectSuggestionReviewViewControllerWithPhotoLibrary:*(a1 + 32)];
  v4 = [v3 navigationController];

  [v4 pushViewController:v5 animated:1];
}

void __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [getPUTesterCurationViewControllerFactoryClass_83906() meCameraStyleableSuggestionsViewControllerWithPhotoLibrary:*(a1 + 32)];
  v4 = [v3 navigationController];

  [v4 pushViewController:v5 animated:1];
}

void __53__PUSuggestionsSettings_UI__settingsControllerModule__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [getPUTesterCurationViewControllerFactoryClass_83906() peopleCameraStyleableSuggestionsViewControllerWithPhotoLibrary:*(a1 + 32)];
  v4 = [v3 navigationController];

  [v4 pushViewController:v5 animated:1];
}

- (void)setEnableGreenScreenStyles:(BOOL)styles
{
  stylesCopy = styles;
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  [globalSettings setParallaxStyleEnableGreenScreen:stylesCopy];
}

- (BOOL)enableGreenScreenStyles
{
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  parallaxStyleEnableGreenScreen = [globalSettings parallaxStyleEnableGreenScreen];

  return parallaxStyleEnableGreenScreen;
}

- (void)setEnableCustomStyles:(BOOL)styles
{
  stylesCopy = styles;
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  [globalSettings setUseStyleRecipeConfigDirectory:stylesCopy];
}

- (BOOL)enableCustomStyles
{
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  useStyleRecipeConfigDirectory = [globalSettings useStyleRecipeConfigDirectory];

  return useStyleRecipeConfigDirectory;
}

- (void)setDisableSegmentationCache:(BOOL)cache
{
  cacheCopy = cache;
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  [globalSettings setSegmentationDisableCaching:cacheCopy];
}

- (BOOL)disableSegmentationCache
{
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  segmentationDisableCaching = [globalSettings segmentationDisableCaching];

  return segmentationDisableCaching;
}

- (void)setManualGatingLenience:(double)lenience
{
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  [globalSettings setSegmentationManualGatingLenience:lenience];
}

- (double)manualGatingLenience
{
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  [globalSettings segmentationManualGatingLenience];
  v4 = v3;

  return v4;
}

- (void)setDisableSegmentation:(BOOL)segmentation
{
  segmentationCopy = segmentation;
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  [globalSettings setDisableSegmentation:segmentationCopy];
}

- (BOOL)disableSegmentation
{
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  disableSegmentation = [globalSettings disableSegmentation];

  return disableSegmentation;
}

- (void)setDebugTintLayers:(BOOL)layers
{
  layersCopy = layers;
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  [globalSettings setSegmentationDebugTintLayers:layersCopy];
}

- (BOOL)debugTintLayers
{
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  segmentationDebugTintLayers = [globalSettings segmentationDebugTintLayers];

  return segmentationDebugTintLayers;
}

- (void)setInfillMode:(int64_t)mode
{
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  [globalSettings setSegmentationInfillAlgorithm:mode];
}

- (int64_t)infillMode
{
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  segmentationInfillAlgorithm = [globalSettings segmentationInfillAlgorithm];

  return segmentationInfillAlgorithm;
}

- (void)performPostSaveActions
{
  v7.receiver = self;
  v7.super_class = PUSuggestionsSettings;
  [(PXSettings *)&v7 performPostSaveActions];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = *MEMORY[0x1E696A400];
  v5 = [standardUserDefaults persistentDomainForName:*MEMORY[0x1E696A400]];
  v6 = [v5 mutableCopy];

  if ([(PUSuggestionsSettings *)self enableFRCInAssetDetails])
  {
    [v6 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C1720]];
  }

  else
  {
    [v6 removeObjectForKey:*MEMORY[0x1E69C1720]];
  }

  [standardUserDefaults setPersistentDomain:v6 forName:v4];
}

+ (id)sortDescriptorForMode:(int64_t)mode
{
  if (mode <= 4)
  {
    self = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:off_1E7B7F370[mode] ascending:{0, v3}];
  }

  return self;
}

+ (PUSuggestionsSettings)sharedInstance
{
  if (sharedInstance_onceToken_89492 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_89492, &__block_literal_global_89493);
  }

  v3 = sharedInstance_sharedInstance_89494;

  return v3;
}

void __39__PUSuggestionsSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 suggestions];
  v1 = sharedInstance_sharedInstance_89494;
  sharedInstance_sharedInstance_89494 = v0;
}

@end