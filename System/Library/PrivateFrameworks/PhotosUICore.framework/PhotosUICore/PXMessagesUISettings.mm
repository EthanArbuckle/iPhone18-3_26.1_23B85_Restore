@interface PXMessagesUISettings
+ (id)_assetCollectionItemProvider;
+ (id)settingsControllerModule;
+ (id)sharedInstance;
+ (id)transientProperties;
+ (void)_showStackBalloonViewWithNavigationController:(id)controller;
- (NSArray)horizontalOffsets;
- (void)setDefaultValues;
@end

@implementation PXMessagesUISettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXMessagesUISettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXMessagesUISettings *)self setDataSourceType:0];
  [(PXMessagesUISettings *)self setStackedItemsCount:*MEMORY[0x1E69C0A58]];
  [(PXMessagesUISettings *)self setNormalizedStackSizeTransform:*MEMORY[0x1E69C0A50]];
  [(PXMessagesUISettings *)self setNormalizedStackVerticalOffset:*MEMORY[0x1E69C0A68]];
  [(PXMessagesUISettings *)self setVerticalContentInsets:*MEMORY[0x1E69C0A60]];
  [(PXMessagesUISettings *)self setEnableDebugTapbacksStack:0];
  [(PXMessagesUISettings *)self setRotationAngle:*MEMORY[0x1E69C0A48]];
  [(PXMessagesUISettings *)self setApplyRotationToFirstAndLast:0];
  [(PXMessagesUISettings *)self setStackShadowYOffset:7.0];
  [(PXMessagesUISettings *)self setStackShadowBlurRadius:27.0];
  [(PXMessagesUISettings *)self setStackShadowAlpha:0.15];
  [(PXMessagesUISettings *)self setRenderWithCA:1];
  [(PXMessagesUISettings *)self setHorizontalOffsetString:@"20, 14.5, 10, 9"];
  objc_storeStrong(&self->_cachedHorizontalOffsets, *MEMORY[0x1E69C0A40]);
  [(PXMessagesUISettings *)self setNormalizedPageWidth:0.8];
  [(PXMessagesUISettings *)self setPagingBehavior:3];
  [(PXMessagesUISettings *)self setPagingVelocityThreshold:0.6];
  [(PXMessagesUISettings *)self setBestCropRectEnabled:0];
  [(PXMessagesUISettings *)self setAspectTilesEnabled:0];
  [(PXMessagesUISettings *)self setGridShadowXOffset:0.0];
  [(PXMessagesUISettings *)self setGridShadowYOffset:7.0];
  [(PXMessagesUISettings *)self setGridShadowBlurRadius:27.0];
  [(PXMessagesUISettings *)self setGridShadowAlpha:0.15];
  [(PXMessagesUISettings *)self setEnableDebugTapbacksGrid:0];
  [(PXMessagesUISettings *)self setMinItemSize:220.0];
  [(PXMessagesUISettings *)self setComfortableFitPercentage:0.85];
  [(PXMessagesUISettings *)self setMinColumns:1];
  [(PXMessagesUISettings *)self setMaxColumns:5];
  [(PXMessagesUISettings *)self setTransitionItemsCount:5];
  [(PXMessagesUISettings *)self setTransitionDuration:0.6];
  [(PXMessagesUISettings *)self setTransitionSpringDamping:0.8];
  [(PXMessagesUISettings *)self setTransitionSpringVelocity:0.0];
}

- (NSArray)horizontalOffsets
{
  v24 = *MEMORY[0x1E69E9840];
  cachedHorizontalOffsets = self->_cachedHorizontalOffsets;
  if (!cachedHorizontalOffsets)
  {
    horizontalOffsetString = [(PXMessagesUISettings *)self horizontalOffsetString];
    v4 = [horizontalOffsetString componentsSeparatedByString:{@", "}];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * v11) stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
          [v12 doubleValue];
          v14 = v13;

          v15 = [MEMORY[0x1E696AD98] numberWithDouble:v14 / 300.0];
          [(NSArray *)v6 addObject:v15];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v16 = self->_cachedHorizontalOffsets;
    self->_cachedHorizontalOffsets = v6;

    cachedHorizontalOffsets = self->_cachedHorizontalOffsets;
  }

  return cachedHorizontalOffsets;
}

+ (id)transientProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PXMessagesUISettings_transientProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (transientProperties_onceToken != -1)
  {
    dispatch_once(&transientProperties_onceToken, block);
  }

  v2 = transientProperties_transientProperties;

  return v2;
}

void __43__PXMessagesUISettings_transientProperties__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___PXMessagesUISettings;
  v1 = objc_msgSendSuper2(&v5, sel_transientProperties);
  v2 = NSStringFromSelector(sel_horizontalOffsets);
  v3 = [v1 setByAddingObject:v2];
  v4 = transientProperties_transientProperties;
  transientProperties_transientProperties = v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_1286);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __38__PXMessagesUISettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 messagesUISettings];
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

+ (void)_showStackBalloonViewWithNavigationController:(id)controller
{
  v30 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  sharedInstance = [self sharedInstance];
  dataSourceType = [sharedInstance dataSourceType];
  if (dataSourceType == 1)
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    pathManager = [px_deprecated_appPhotoLibrary pathManager];
    v27 = 0;
    v19 = [pathManager temporaryFileBackedDebugDirectoryCreateIfNeeded:0 error:&v27];
    v20 = v27;

    if (v19)
    {
      v21 = [MEMORY[0x1E695DFF8] fileURLWithPath:v19];
      v14 = [off_1E7721578 fileBackedDataSourceManagerWithDirectory:v21];

      v16 = objc_alloc_init(off_1E7721580);
      v22 = [[off_1E77218C8 alloc] initWithDataSourceManager:v14];
      v23 = [[PXFileBackedAssetActionManager alloc] initWithSelectionManager:v22];
    }

    else
    {
      v22 = PLUIGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v20;
        _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_ERROR, "Unable to get file backed directory for app library with error: %@", buf, 0xCu);
      }

      v23 = 0;
      v16 = 0;
      v14 = 0;
    }

    if (!v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (dataSourceType)
    {
      v14 = 0;
      v16 = 0;
      v23 = 0;
LABEL_17:
      v24 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"No PHAssetCollection found" message:@"Please navigate to a view of a valid asset collection in the Photos app UI" preferredStyle:1];
      v25 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
      [(PXMessagesStackBalloonViewController *)v24 addAction:v25];

      [controllerCopy presentViewController:v24 animated:1 completion:0];
      goto LABEL_18;
    }

    _assetCollectionItemProvider = [self _assetCollectionItemProvider];
    v8 = _assetCollectionItemProvider;
    if (_assetCollectionItemProvider)
    {
      v9 = [_assetCollectionItemProvider itemForIdentifier:@"PXDiagnosticsItemIdentifierAssetCollection"];
      v10 = MEMORY[0x1E6978630];
      photoLibrary = [v9 photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
      v13 = [v10 fetchAssetsInAssetCollection:v9 options:librarySpecificFetchOptions];

      LOBYTE(v26) = 0;
      v14 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerForAssetCollection:v9 existingAssetsFetchResult:v13 existingKeyAssetsFetchResult:0 fetchPropertySets:0 basePredicate:0 options:0 ignoreSharedLibraryFilters:v26];
      photoLibrary2 = [v9 photoLibrary];
      v16 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:photoLibrary2];
    }

    else
    {
      v16 = 0;
      v14 = 0;
    }

    v23 = 0;
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  if (!v16)
  {
    goto LABEL_17;
  }

  v24 = [[PXMessagesStackBalloonViewController alloc] initWithDataSourceManager:v14 mediaProvider:v16];
  [(PXMessagesStackBalloonViewController *)v24 setAssetActionManager:v23];
  [controllerCopy pushViewController:v24 animated:1];
LABEL_18:
}

+ (id)_assetCollectionItemProvider
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[PXDiagnosticsController sharedController];
  currentItemProviders = [v2 currentItemProviders];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = currentItemProviders;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 hasItemForIdentifier:{@"PXDiagnosticsItemIdentifierAssetCollection", v12}])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (id)settingsControllerModule
{
  v166[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6670];
  v3 = MEMORY[0x1E69C65F8];
  v4 = NSStringFromSelector(sel_dataSourceType);
  v5 = [v3 rowWithTitle:@"Data Source Type" valueKeyPath:v4];
  v6 = [v5 possibleValues:&unk_1F190F910 titles:&unk_1F190F928];
  v166[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v166 count:1];
  v98 = [v2 sectionWithRows:v7 title:@"Data Source"];

  v96 = MEMORY[0x1E69C6670];
  v8 = MEMORY[0x1E69C66A0];
  v151 = NSStringFromSelector(sel_stackedItemsCount);
  v147 = [v8 rowWithTitle:@"Stacked Items Count" valueKeyPath:v151];
  v143 = [v147 minValue:1.0 maxValue:5.0];
  v140 = [v143 px_increment:1.0];
  v165[0] = v140;
  v9 = MEMORY[0x1E69C66A0];
  v137 = NSStringFromSelector(sel_normalizedStackSizeTransform);
  v134 = [v9 rowWithTitle:@"Size Transform" valueKeyPath:v137];
  v131 = [v134 minValue:0.1 maxValue:1.0];
  v127 = [v131 px_increment:0.05];
  v165[1] = v127;
  v10 = MEMORY[0x1E69C66A0];
  v125 = NSStringFromSelector(sel_normalizedStackVerticalOffset);
  v123 = [v10 rowWithTitle:@"Vertical Offset" valueKeyPath:v125];
  v121 = [v123 minValue:0.0 maxValue:1.0];
  v118 = [v121 px_increment:0.05];
  v165[2] = v118;
  v11 = MEMORY[0x1E69C66A0];
  v117 = NSStringFromSelector(sel_verticalContentInsets);
  v116 = [v11 rowWithTitle:@"Content Insets" valueKeyPath:v117];
  v115 = [v116 minValue:0.0 maxValue:100.0];
  v114 = [v115 px_increment:1.0];
  v165[3] = v114;
  v12 = MEMORY[0x1E69C66A0];
  v113 = NSStringFromSelector(sel_rotationAngle);
  v112 = [v12 rowWithTitle:@"Rotation Angle" valueKeyPath:v113];
  v111 = [v112 minValue:0.0 maxValue:45.0];
  v110 = [v111 px_increment:1.0];
  v165[4] = v110;
  v13 = MEMORY[0x1E69C66A8];
  v109 = NSStringFromSelector(sel_applyRotationToFirstAndLast);
  v108 = [v13 rowWithTitle:@"Rotate First/Last" valueKeyPath:v109];
  v165[5] = v108;
  v14 = MEMORY[0x1E69C66A8];
  v107 = NSStringFromSelector(sel_enableDebugTapbacksStack);
  v106 = [v14 rowWithTitle:@"Debug Tapbacks" valueKeyPath:v107];
  v165[6] = v106;
  v15 = MEMORY[0x1E69C6628];
  v105 = NSStringFromSelector(sel_horizontalOffsetString);
  v104 = [v15 rowWithTitle:@"Horizontal Offset" valueKeyPath:v105];
  v165[7] = v104;
  v16 = MEMORY[0x1E69C66A0];
  v103 = NSStringFromSelector(sel_stackShadowYOffset);
  v102 = [v16 rowWithTitle:@"Shadow Y" valueKeyPath:v103];
  v101 = [v102 minValue:0.0 maxValue:20.0];
  v100 = [v101 px_increment:1.0];
  v165[8] = v100;
  v17 = MEMORY[0x1E69C66A0];
  v99 = NSStringFromSelector(sel_stackShadowBlurRadius);
  v18 = [v17 rowWithTitle:@"Shadow Radius" valueKeyPath:v99];
  v19 = [v18 minValue:0.0 maxValue:50.0];
  v20 = [v19 px_increment:1.0];
  v165[9] = v20;
  v21 = MEMORY[0x1E69C66A0];
  v22 = NSStringFromSelector(sel_stackShadowAlpha);
  v23 = [v21 rowWithTitle:@"Shadow Alpha" valueKeyPath:v22];
  v24 = [v23 minValue:0.0 maxValue:1.0];
  v25 = [v24 px_increment:0.05];
  v165[10] = v25;
  v26 = MEMORY[0x1E69C66A8];
  v27 = NSStringFromSelector(sel_renderWithCA);
  v28 = [v26 rowWithTitle:@"Use CoreAnimation" valueKeyPath:v27];
  v165[11] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:12];
  v97 = [v96 sectionWithRows:v29 title:@"Static Params"];

  v144 = MEMORY[0x1E69C6670];
  v30 = MEMORY[0x1E69C66A0];
  v152 = NSStringFromSelector(sel_normalizedPageWidth);
  v148 = [v30 rowWithTitle:@"Page Width" valueKeyPath:v152];
  v31 = [v148 minValue:0.1 maxValue:2.0];
  v32 = [v31 px_increment:0.1];
  v164[0] = v32;
  v33 = MEMORY[0x1E69C65F8];
  v34 = NSStringFromSelector(sel_pagingBehavior);
  v35 = [v33 rowWithTitle:@"Page Settling" valueKeyPath:v34];
  v36 = [v35 possibleValues:&unk_1F190F940 titles:&unk_1F190F958];
  v164[1] = v36;
  v37 = MEMORY[0x1E69C66A0];
  v38 = NSStringFromSelector(sel_pagingVelocityThreshold);
  v39 = [v37 rowWithTitle:@"Paging Velocity" valueKeyPath:v38];
  v40 = [v39 minValue:0.1 maxValue:1.0];
  v41 = [v40 px_increment:0.05];
  v164[2] = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v164 count:3];
  v124 = [v144 sectionWithRows:v42 title:@"Dynamic Params"];

  v43 = MEMORY[0x1E69C6670];
  v44 = MEMORY[0x1E69C66A8];
  v45 = NSStringFromSelector(sel_aspectTilesEnabled);
  v46 = [v44 rowWithTitle:@"Aspect tiles" valueKeyPath:v45];
  v163[0] = v46;
  v47 = MEMORY[0x1E69C66A8];
  v48 = NSStringFromSelector(sel_bestCropRectEnabled);
  v49 = [v47 rowWithTitle:@"Smart Crop" valueKeyPath:v48];
  v163[1] = v49;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:2];
  v122 = [v43 sectionWithRows:v50 title:@"Content Display"];

  v119 = MEMORY[0x1E69C6670];
  v51 = MEMORY[0x1E69C66A0];
  v153 = NSStringFromSelector(sel_gridShadowXOffset);
  v149 = [v51 rowWithTitle:@"Shadow X" valueKeyPath:v153];
  v145 = [v149 minValue:-20.0 maxValue:20.0];
  v141 = [v145 px_increment:1.0];
  v162[0] = v141;
  v52 = MEMORY[0x1E69C66A0];
  v138 = NSStringFromSelector(sel_gridShadowYOffset);
  v135 = [v52 rowWithTitle:@"Shadow Y" valueKeyPath:v138];
  v132 = [v135 minValue:-20.0 maxValue:20.0];
  v128 = [v132 px_increment:1.0];
  v162[1] = v128;
  v53 = MEMORY[0x1E69C66A0];
  v126 = NSStringFromSelector(sel_gridShadowBlurRadius);
  v54 = [v53 rowWithTitle:@"Shadow Radius" valueKeyPath:v126];
  v55 = [v54 minValue:0.0 maxValue:50.0];
  v56 = [v55 px_increment:1.0];
  v162[2] = v56;
  v57 = MEMORY[0x1E69C66A0];
  v58 = NSStringFromSelector(sel_gridShadowAlpha);
  v59 = [v57 rowWithTitle:@"Shadow Alpha" valueKeyPath:v58];
  v60 = [v59 minValue:0.0 maxValue:1.0];
  v61 = [v60 px_increment:0.05];
  v162[3] = v61;
  v62 = MEMORY[0x1E69C66A8];
  v63 = NSStringFromSelector(sel_enableDebugTapbacksGrid);
  v64 = [v62 rowWithTitle:@"Debug Tapbacks" valueKeyPath:v63];
  v162[4] = v64;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:5];
  v120 = [v119 sectionWithRows:v65 title:@"Grid"];

  v129 = MEMORY[0x1E69C6638];
  v66 = MEMORY[0x1E69C66A0];
  v154 = NSStringFromSelector(sel_transitionItemsCount);
  v150 = [v66 rowWithTitle:@"Items Count" valueKeyPath:v154];
  v146 = [v150 minValue:0.0 maxValue:4.0];
  v142 = [v146 px_increment:1.0];
  v161[0] = v142;
  v67 = MEMORY[0x1E69C66A0];
  v139 = NSStringFromSelector(sel_transitionDuration);
  v136 = [v67 rowWithTitle:@"Duration" valueKeyPath:v139];
  v133 = [v136 minValue:0.3 maxValue:4.0];
  v68 = [v133 px_increment:0.1];
  v161[1] = v68;
  v69 = MEMORY[0x1E69C66A0];
  v70 = NSStringFromSelector(sel_transitionSpringDamping);
  v71 = [v69 rowWithTitle:@"Spring Damping" valueKeyPath:v70];
  v72 = [v71 minValue:0.0 maxValue:1.0];
  v73 = [v72 px_increment:0.1];
  v161[2] = v73;
  v74 = MEMORY[0x1E69C66A0];
  v75 = NSStringFromSelector(sel_transitionSpringVelocity);
  v76 = [v74 rowWithTitle:@"Spring Velocity" valueKeyPath:v75];
  v77 = [v76 minValue:0.0 maxValue:1.0];
  v78 = [v77 px_increment:0.1];
  v161[3] = v78;
  v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:4];
  v130 = [v129 sectionWithRows:v79 title:@"Transition"];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PXMessagesUISettings_UI__settingsControllerModule__block_invoke;
  aBlock[3] = &unk_1E772E568;
  objc_copyWeak(&v156, &location);
  v80 = _Block_copy(aBlock);
  v81 = MEMORY[0x1E69C6638];
  v82 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Show Stack" action:v80];
  v160 = v82;
  v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v160 count:1];
  v84 = [v81 sectionWithRows:v83];

  v85 = MEMORY[0x1E69C6638];
  v86 = MEMORY[0x1E69C65E8];
  v87 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v88 = [v86 rowWithTitle:@"Restore Defaults" action:v87];
  v159 = v88;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v159 count:1];
  v90 = [v85 sectionWithRows:v89];

  v91 = MEMORY[0x1E69C6638];
  v158[0] = v84;
  v158[1] = v98;
  v158[2] = v97;
  v158[3] = v124;
  v158[4] = v122;
  v158[5] = v120;
  v158[6] = v130;
  v158[7] = v90;
  v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:8];
  v93 = [v91 moduleWithTitle:@"MessagesUI" contents:v92];

  objc_destroyWeak(&v156);
  objc_destroyWeak(&location);

  return v93;
}

void __52__PXMessagesUISettings_UI__settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showStackBalloonViewWithNavigationController:v3];
}

@end