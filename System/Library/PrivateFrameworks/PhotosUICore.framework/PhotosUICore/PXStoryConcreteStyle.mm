@interface PXStoryConcreteStyle
+ (id)bestClipCompositionFromClipCompositions:(id)a3 forKeyAsset:(id)a4 contentInfo:(id *)a5 playbackStyle:(int64_t)a6 spec:(id)a7 croppingContext:(id)a8 options:(unint64_t)a9 loggingOptions:(unint64_t)a10;
- ($1A23BB056C565A410801C90FE7234890)styleOptions;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)outroDuration;
- (PXStoryConcreteStyle)initWithCustomColorGradeKind:(int64_t)a3 originalColorGradeCategory:(id)a4 songResource:(id)a5 cueSource:(id)a6 autoEditDecisionList:(id)a7 styleOptions:(id)a8 isCustomized:(BOOL)a9 storyConfiguration:(id)a10;
- (PXStoryConfiguration)storyConfiguration;
- (id)createRandomNumberGenerators;
- (id)description;
- (id)timelineStyleWithSpec:(id)a3 resourcesDataSource:(id)a4 randomNumberGenerators:(id)a5 errorReporter:(id)a6;
@end

@implementation PXStoryConcreteStyle

- (PXStoryConfiguration)storyConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_storyConfiguration);

  return WeakRetained;
}

- ($1A23BB056C565A410801C90FE7234890)styleOptions
{
  v2 = *&self->_styleOptions.preferStillKeySegment;
  croppingOptions = self->_styleOptions.croppingOptions;
  result.var1 = v2;
  result.var0 = croppingOptions;
  return result;
}

- (id)timelineStyleWithSpec:(id)a3 resourcesDataSource:(id)a4 randomNumberGenerators:(id)a5 errorReporter:(id)a6
{
  v9 = a3;
  v10 = a4;
  a6;
  a5;
  +[PXStorySettings sharedInstance];
  objc_claimAutoreleasedReturnValue();
  [v9 viewportSize];
  PXSizeGetAspectRatio();
}

- (id)createRandomNumberGenerators
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69C0838]) initWithSeed:0];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)outroDuration
{
  v4 = [(PXStoryConcreteStyle *)self autoEditDecisionList];
  if (v4)
  {
    v6 = v4;
    [v4 outroDuration];
    v4 = v6;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(PXStoryConcreteStyle *)self originalColorGradeCategory];
  [(PXStoryConcreteStyle *)self customColorGradeKind];
  v6 = PFStoryColorGradeKindToString();
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"-";
  }

  v9 = [(PXStoryConcreteStyle *)self songResource];
  v10 = [v9 px_storyResourceIdentifier];
  v11 = [v3 initWithFormat:@"<%@ %p; originalColorGradeCategory: %@; customColorGradeKind %@; songID: %@>", v4, self, v5, v8, v10];

  return v11;
}

- (PXStoryConcreteStyle)initWithCustomColorGradeKind:(int64_t)a3 originalColorGradeCategory:(id)a4 songResource:(id)a5 cueSource:(id)a6 autoEditDecisionList:(id)a7 styleOptions:(id)a8 isCustomized:(BOOL)a9 storyConfiguration:(id)a10
{
  v96[1] = *MEMORY[0x1E69E9840];
  v16 = a4;
  v72 = a5;
  v71 = a6;
  v70 = a7;
  v17 = a10;
  v91.receiver = self;
  v91.super_class = PXStoryConcreteStyle;
  v18 = [(PXStoryConcreteStyle *)&v91 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_33;
  }

  v69 = v16;
  v18->_customColorGradeKind = a3;
  objc_storeStrong(&v18->_originalColorGradeCategory, a4);
  objc_storeStrong(&v19->_songResource, a5);
  objc_storeStrong(&v19->_cueSource, a6);
  v19->_styleOptions = a8;
  v19->_isCustomized = a9;
  objc_storeWeak(&v19->_storyConfiguration, v17);
  v20 = +[PXStoryAutoEditConfigurationFactory autoEditConfiguration];
  autoEditConfiguration = v19->_autoEditConfiguration;
  v19->_autoEditConfiguration = v20;

  objc_storeStrong(&v19->_autoEditDecisionList, a7);
  if (!v19->_autoEditDecisionList)
  {
    v22 = [v72 px_storyResourceSongAsset];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 pace];
    }

    else
    {
      v24 = 2;
    }

    memset(&v90, 0, sizeof(v90));
    [(PFStoryAutoEditConfiguration *)v19->_autoEditConfiguration outroDurationForSongPace:v24];
    CMTimeMakeWithSeconds(&v90, v25, 600);
    if (v17)
    {
      v26 = [v17 disableNUp] ^ 1;
    }

    else
    {
      v26 = 1;
    }

    v27 = [PXStoryConcreteAutoEditDecisionList alloc];
    v28 = *(MEMORY[0x1E69C0DB8] + 48);
    v89[2] = *(MEMORY[0x1E69C0DB8] + 32);
    v89[3] = v28;
    v89[4] = *(MEMORY[0x1E69C0DB8] + 64);
    v29 = *(MEMORY[0x1E69C0DB8] + 16);
    v89[0] = *MEMORY[0x1E69C0DB8];
    v89[1] = v29;
    v88 = v90;
    v30 = [(PXStoryConcreteAutoEditDecisionList *)v27 initWithColorGradeCategory:v16 song:v23 clipCatalog:0 constrainedOverallDurationInfo:v89 outroDuration:&v88 allowsNUp:v26];
    autoEditDecisionList = v19->_autoEditDecisionList;
    v19->_autoEditDecisionList = v30;
  }

  v32 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v33 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  if ([v17 isLetterboxingAllowed])
  {
    v34 = +[PXStoryClipCompositionFactory defaultOneUpCompositions];
  }

  else
  {
    v35 = +[PXStoryClipCompositionFactory oneUpComposition];
    v96[0] = v35;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:1];
  }

  v36 = +[PXStorySettings sharedInstance];
  if ([v17 otherAssetsAspectRatioOverride])
  {
    v37 = OneUpCompositionForAspectRatio([v17 otherAssetsAspectRatioOverride]);
    v95 = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];

    v34 = v38;
  }

  if ([v17 keyAssetAspectRatioOverride])
  {
    v39 = OneUpCompositionForAspectRatio([v17 keyAssetAspectRatioOverride]);
    v94 = v39;
    v40 = MEMORY[0x1E695DEC8];
    v41 = &v94;
  }

  else
  {
    if ([v36 allowNonFillingCompositionsForKeyAsset] && objc_msgSend(v17, "isLetterboxingAllowed"))
    {
      if ([v36 limitKeyAssetAspectRatioToFeedCard])
      {
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __169__PXStoryConcreteStyle_initWithCustomColorGradeKind_originalColorGradeCategory_songResource_cueSource_autoEditDecisionList_styleOptions_isCustomized_storyConfiguration___block_invoke_2;
        v85[3] = &unk_1E7747A98;
        v42 = v36;
        v86 = v42;
        v87 = 0x3F50624DD2F1A9FCLL;
        v43 = __169__PXStoryConcreteStyle_initWithCustomColorGradeKind_originalColorGradeCategory_songResource_cueSource_autoEditDecisionList_styleOptions_isCustomized_storyConfiguration___block_invoke(v85);
        allowedKeyAssetClipCompositionsInPortrait = v19->_allowedKeyAssetClipCompositionsInPortrait;
        v19->_allowedKeyAssetClipCompositionsInPortrait = v43;

        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __169__PXStoryConcreteStyle_initWithCustomColorGradeKind_originalColorGradeCategory_songResource_cueSource_autoEditDecisionList_styleOptions_isCustomized_storyConfiguration___block_invoke_3;
        v82[3] = &unk_1E7747A98;
        v83 = v42;
        v84 = 0x3F50624DD2F1A9FCLL;
        v45 = __169__PXStoryConcreteStyle_initWithCustomColorGradeKind_originalColorGradeCategory_songResource_cueSource_autoEditDecisionList_styleOptions_isCustomized_storyConfiguration___block_invoke(v82);
        allowedKeyAssetClipCompositionsInLandscape = v19->_allowedKeyAssetClipCompositionsInLandscape;
        v19->_allowedKeyAssetClipCompositionsInLandscape = v45;

        v39 = v86;
      }

      else
      {
        objc_storeStrong(&v19->_allowedKeyAssetClipCompositionsInLandscape, v34);
        v65 = v34;
        v39 = v19->_allowedKeyAssetClipCompositionsInPortrait;
        v19->_allowedKeyAssetClipCompositionsInPortrait = v65;
      }

      goto LABEL_23;
    }

    v39 = +[PXStoryClipCompositionFactory oneUpComposition];
    v93 = v39;
    v40 = MEMORY[0x1E695DEC8];
    v41 = &v93;
  }

  v47 = [v40 arrayWithObjects:v41 count:1];
  v48 = v19->_allowedKeyAssetClipCompositionsInLandscape;
  v19->_allowedKeyAssetClipCompositionsInLandscape = v47;

  objc_storeStrong(&v19->_allowedKeyAssetClipCompositionsInPortrait, v47);
LABEL_23:

  [v32 addObjectsFromArray:v34];
  [v33 addObjectsFromArray:v34];
  if ([(PXStoryAutoEditDecisionList *)v19->_autoEditDecisionList allowsNUp])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __169__PXStoryConcreteStyle_initWithCustomColorGradeKind_originalColorGradeCategory_songResource_cueSource_autoEditDecisionList_styleOptions_isCustomized_storyConfiguration___block_invoke_4;
    aBlock[3] = &unk_1E7747AC0;
    v81 = a2;
    v78 = v19;
    v79 = v33;
    v68 = v32;
    v80 = v32;
    v49 = _Block_copy(aBlock);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v50 = +[PXStoryClipCompositionFactory defaultTwoUpCompositions];
    v51 = [v50 countByEnumeratingWithState:&v73 objects:v92 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v74;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v74 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v49[2](v49, *(*(&v73 + 1) + 8 * i));
        }

        v52 = [v50 countByEnumeratingWithState:&v73 objects:v92 count:16];
      }

      while (v52);
    }

    v55 = +[PXStoryClipCompositionFactory threeUpVerticalThirdsComposition];
    (v49)[2](v49, v55);

    v56 = +[PXStoryClipCompositionFactory threeUpHorizontalThirdsComposition];
    (v49)[2](v49, v56);

    v32 = v68;
  }

  v57 = [v32 array];
  allowedClipCompositionsInPortrait = v19->_allowedClipCompositionsInPortrait;
  v19->_allowedClipCompositionsInPortrait = v57;

  v59 = [v33 array];
  allowedClipCompositionsInLandscape = v19->_allowedClipCompositionsInLandscape;
  v19->_allowedClipCompositionsInLandscape = v59;

  v61 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v19->_allowedClipCompositionsInPortrait];
  [v61 addObjectsFromArray:v19->_allowedClipCompositionsInLandscape];
  v62 = [v61 array];
  allowedClipCompositionsInSquareView = v19->_allowedClipCompositionsInSquareView;
  v19->_allowedClipCompositionsInSquareView = v62;

  v16 = v69;
LABEL_33:

  return v19;
}

id __169__PXStoryConcreteStyle_initWithCustomColorGradeKind_originalColorGradeCategory_songResource_cueSource_autoEditDecisionList_styleOptions_isCustomized_storyConfiguration___block_invoke(void *a1)
{
  v1 = MEMORY[0x1E695DF70];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = +[PXStoryClipCompositionFactory oneUpComposition];
  [v3 addObject:v4];

  v5 = [PXStoryClipCompositionFactory oneUpCompositionsWithAspectRatioPassingTest:v2];

  [v3 addObjectsFromArray:v5];
  v6 = [v3 copy];

  return v6;
}

void __169__PXStoryConcreteStyle_initWithCustomColorGradeKind_originalColorGradeCategory_songResource_cueSource_autoEditDecisionList_styleOptions_isCustomized_storyConfiguration___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 mainDividerAxis];
  if (v3 == 1)
  {
    v6 = 40;
    goto LABEL_7;
  }

  if (v3 == 2)
  {
    v6 = 48;
LABEL_7:
    [*(a1 + v6) addObject:v7];
    v4 = v7;
    goto LABEL_8;
  }

  v4 = v7;
  if (!v3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXStoryConcreteStyle.m" lineNumber:282 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_8:
}

+ (id)bestClipCompositionFromClipCompositions:(id)a3 forKeyAsset:(id)a4 contentInfo:(id *)a5 playbackStyle:(int64_t)a6 spec:(id)a7 croppingContext:(id)a8 options:(unint64_t)a9 loggingOptions:(unint64_t)a10
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  a8;
  if (![v13 count])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PXStoryConcreteStyle.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"allowedClipCompositions.count > 0"}];
  }

  [v15 viewportSize];
  [v15 nUpDividerWidth];
  [v14 aspectRatio];
  [v15 safeAreaInsets];
  [v15 viewportSize];
  PXSizeGetArea();
}

@end