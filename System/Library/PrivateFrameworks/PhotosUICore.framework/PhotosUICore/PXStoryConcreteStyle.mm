@interface PXStoryConcreteStyle
+ (id)bestClipCompositionFromClipCompositions:(id)compositions forKeyAsset:(id)asset contentInfo:(id *)info playbackStyle:(int64_t)style spec:(id)spec croppingContext:(id)context options:(unint64_t)options loggingOptions:(unint64_t)self0;
- ($1A23BB056C565A410801C90FE7234890)styleOptions;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)outroDuration;
- (PXStoryConcreteStyle)initWithCustomColorGradeKind:(int64_t)kind originalColorGradeCategory:(id)category songResource:(id)resource cueSource:(id)source autoEditDecisionList:(id)list styleOptions:(id)options isCustomized:(BOOL)customized storyConfiguration:(id)self0;
- (PXStoryConfiguration)storyConfiguration;
- (id)createRandomNumberGenerators;
- (id)description;
- (id)timelineStyleWithSpec:(id)spec resourcesDataSource:(id)source randomNumberGenerators:(id)generators errorReporter:(id)reporter;
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

- (id)timelineStyleWithSpec:(id)spec resourcesDataSource:(id)source randomNumberGenerators:(id)generators errorReporter:(id)reporter
{
  specCopy = spec;
  sourceCopy = source;
  reporter;
  generators;
  +[PXStorySettings sharedInstance];
  objc_claimAutoreleasedReturnValue();
  [specCopy viewportSize];
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
  autoEditDecisionList = [(PXStoryConcreteStyle *)self autoEditDecisionList];
  if (autoEditDecisionList)
  {
    v6 = autoEditDecisionList;
    [autoEditDecisionList outroDuration];
    autoEditDecisionList = v6;
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
  originalColorGradeCategory = [(PXStoryConcreteStyle *)self originalColorGradeCategory];
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

  songResource = [(PXStoryConcreteStyle *)self songResource];
  px_storyResourceIdentifier = [songResource px_storyResourceIdentifier];
  v11 = [v3 initWithFormat:@"<%@ %p; originalColorGradeCategory: %@; customColorGradeKind %@; songID: %@>", v4, self, originalColorGradeCategory, v8, px_storyResourceIdentifier];

  return v11;
}

- (PXStoryConcreteStyle)initWithCustomColorGradeKind:(int64_t)kind originalColorGradeCategory:(id)category songResource:(id)resource cueSource:(id)source autoEditDecisionList:(id)list styleOptions:(id)options isCustomized:(BOOL)customized storyConfiguration:(id)self0
{
  v96[1] = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  resourceCopy = resource;
  sourceCopy = source;
  listCopy = list;
  configurationCopy = configuration;
  v91.receiver = self;
  v91.super_class = PXStoryConcreteStyle;
  v18 = [(PXStoryConcreteStyle *)&v91 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_33;
  }

  v69 = categoryCopy;
  v18->_customColorGradeKind = kind;
  objc_storeStrong(&v18->_originalColorGradeCategory, category);
  objc_storeStrong(&v19->_songResource, resource);
  objc_storeStrong(&v19->_cueSource, source);
  v19->_styleOptions = options;
  v19->_isCustomized = customized;
  objc_storeWeak(&v19->_storyConfiguration, configurationCopy);
  v20 = +[PXStoryAutoEditConfigurationFactory autoEditConfiguration];
  autoEditConfiguration = v19->_autoEditConfiguration;
  v19->_autoEditConfiguration = v20;

  objc_storeStrong(&v19->_autoEditDecisionList, list);
  if (!v19->_autoEditDecisionList)
  {
    px_storyResourceSongAsset = [resourceCopy px_storyResourceSongAsset];
    v23 = px_storyResourceSongAsset;
    if (px_storyResourceSongAsset)
    {
      pace = [px_storyResourceSongAsset pace];
    }

    else
    {
      pace = 2;
    }

    memset(&v90, 0, sizeof(v90));
    [(PFStoryAutoEditConfiguration *)v19->_autoEditConfiguration outroDurationForSongPace:pace];
    CMTimeMakeWithSeconds(&v90, v25, 600);
    if (configurationCopy)
    {
      v26 = [configurationCopy disableNUp] ^ 1;
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
    v30 = [(PXStoryConcreteAutoEditDecisionList *)v27 initWithColorGradeCategory:categoryCopy song:v23 clipCatalog:0 constrainedOverallDurationInfo:v89 outroDuration:&v88 allowsNUp:v26];
    autoEditDecisionList = v19->_autoEditDecisionList;
    v19->_autoEditDecisionList = v30;
  }

  v32 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v33 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  if ([configurationCopy isLetterboxingAllowed])
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
  if ([configurationCopy otherAssetsAspectRatioOverride])
  {
    v37 = OneUpCompositionForAspectRatio([configurationCopy otherAssetsAspectRatioOverride]);
    v95 = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];

    v34 = v38;
  }

  if ([configurationCopy keyAssetAspectRatioOverride])
  {
    v39 = OneUpCompositionForAspectRatio([configurationCopy keyAssetAspectRatioOverride]);
    v94 = v39;
    v40 = MEMORY[0x1E695DEC8];
    v41 = &v94;
  }

  else
  {
    if ([v36 allowNonFillingCompositionsForKeyAsset] && objc_msgSend(configurationCopy, "isLetterboxingAllowed"))
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

  array = [v32 array];
  allowedClipCompositionsInPortrait = v19->_allowedClipCompositionsInPortrait;
  v19->_allowedClipCompositionsInPortrait = array;

  array2 = [v33 array];
  allowedClipCompositionsInLandscape = v19->_allowedClipCompositionsInLandscape;
  v19->_allowedClipCompositionsInLandscape = array2;

  v61 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v19->_allowedClipCompositionsInPortrait];
  [v61 addObjectsFromArray:v19->_allowedClipCompositionsInLandscape];
  array3 = [v61 array];
  allowedClipCompositionsInSquareView = v19->_allowedClipCompositionsInSquareView;
  v19->_allowedClipCompositionsInSquareView = array3;

  categoryCopy = v69;
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

+ (id)bestClipCompositionFromClipCompositions:(id)compositions forKeyAsset:(id)asset contentInfo:(id *)info playbackStyle:(int64_t)style spec:(id)spec croppingContext:(id)context options:(unint64_t)options loggingOptions:(unint64_t)self0
{
  compositionsCopy = compositions;
  assetCopy = asset;
  specCopy = spec;
  context;
  if (![compositionsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteStyle.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"allowedClipCompositions.count > 0"}];
  }

  [specCopy viewportSize];
  [specCopy nUpDividerWidth];
  [assetCopy aspectRatio];
  [specCopy safeAreaInsets];
  [specCopy viewportSize];
  PXSizeGetArea();
}

@end