@interface PXStoryStyleChromeLayout
+ (void)startCachingResourcesForStyleInfo:(id)info viewLayoutSpec:(id)spec displayScale:(double)scale;
+ (void)stopCachingResourcesForStyleInfo:(id)info viewLayoutSpec:(id)spec displayScale:(double)scale;
- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (NSAttributedString)colorGradeNameAttributedString;
- (NSAttributedString)subtitleAttributedString;
- (NSAttributedString)titleAccessoryAttributedString;
- (NSAttributedString)titleAttributedString;
- (PXStoryStyleChromeLayout)init;
- (PXStoryStyleChromeLayout)initWithViewModel:(id)model;
- (id)_actionPerformer;
- (id)_styleSongAsset;
- (id)attributedStringForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)axSpriteIndexes;
- (id)axVisibleSpriteIndexes;
- (id)musicFeedbackContextMenuDelegate;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (unint64_t)axFocusabilityForSpriteAtIndex:(unsigned int)index;
- (void)_handleFilterButton:(id)button;
- (void)_handleMusicButton:(id)button;
- (void)_invalidateContent;
- (void)_invalidateStrings;
- (void)_updateContent;
- (void)alphaDidChange;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)setColorGradingRepository:(id)repository;
- (void)setMediaVersion:(unsigned __int16)version;
- (void)setStyleInfo:(id)info;
- (void)setViewLayoutSpec:(id)spec;
- (void)update;
- (void)willUpdate;
@end

@implementation PXStoryStyleChromeLayout

- (id)musicFeedbackContextMenuDelegate
{
  musicFeedbackContextMenuDelegate = self->_musicFeedbackContextMenuDelegate;
  if (!musicFeedbackContextMenuDelegate)
  {
    objc_initWeak(&location, self);
    viewModel = [(PXStoryStyleChromeLayout *)self viewModel];
    actionPerformer = [viewModel actionPerformer];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__PXStoryStyleChromeLayout_musicFeedbackContextMenuDelegate__block_invoke;
    v9[3] = &unk_1E7745CF0;
    objc_copyWeak(&v10, &location);
    v6 = [actionPerformer musicFeedbackContextMenuDelegateWithAudioAssetProvidingBlock:v9];
    v7 = self->_musicFeedbackContextMenuDelegate;
    self->_musicFeedbackContextMenuDelegate = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    musicFeedbackContextMenuDelegate = self->_musicFeedbackContextMenuDelegate;
  }

  return musicFeedbackContextMenuDelegate;
}

id __60__PXStoryStyleChromeLayout_musicFeedbackContextMenuDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _styleSongAsset];

  return v2;
}

- (void)_handleFilterButton:(id)button
{
  _actionPerformer = [(PXStoryStyleChromeLayout *)self _actionPerformer];
  [_actionPerformer presentColorGradeEditor];
}

- (void)_handleMusicButton:(id)button
{
  _actionPerformer = [(PXStoryStyleChromeLayout *)self _actionPerformer];
  [_actionPerformer presentMusicEditor];
}

- (id)_styleSongAsset
{
  styleInfo = [(PXStoryStyleChromeLayout *)self styleInfo];
  songResource = [styleInfo songResource];
  px_storyResourceSongAsset = [songResource px_storyResourceSongAsset];

  return px_storyResourceSongAsset;
}

- (NSAttributedString)subtitleAttributedString
{
  subtitleAttributedString = self->_subtitleAttributedString;
  if (!subtitleAttributedString)
  {
    viewLayoutSpec = [(PXStoryStyleChromeLayout *)self viewLayoutSpec];
    styleInfo = [(PXStoryStyleChromeLayout *)self styleInfo];
    songResource = [styleInfo songResource];
    px_storyResourceSongAsset = [songResource px_storyResourceSongAsset];
    subtitle = [px_storyResourceSongAsset subtitle];
    v9 = subtitle;
    v10 = &stru_1F1741150;
    if (subtitle)
    {
      v10 = subtitle;
    }

    v11 = v10;

    v12 = objc_alloc(MEMORY[0x1E696AAB0]);
    styleSwitcherDetailsLabelAttributesB = [viewLayoutSpec styleSwitcherDetailsLabelAttributesB];
    v14 = [v12 initWithString:v11 attributes:styleSwitcherDetailsLabelAttributesB];

    v15 = self->_subtitleAttributedString;
    self->_subtitleAttributedString = v14;

    subtitleAttributedString = self->_subtitleAttributedString;
  }

  return subtitleAttributedString;
}

- (NSAttributedString)titleAccessoryAttributedString
{
  styleInfo = [(PXStoryStyleChromeLayout *)self styleInfo];
  songResource = [styleInfo songResource];
  px_storyResourceSongAsset = [songResource px_storyResourceSongAsset];

  if (!self->_titleAccessoryAttributedString && ([px_storyResourceSongAsset flags] & 1) != 0)
  {
    viewLayoutSpec = [(PXStoryStyleChromeLayout *)self viewLayoutSpec];
    v7 = PXLocalizedStringFromTable(@"InteractiveMemoryExplicitLyricsIcon", @"PhotosUICore");
    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    styleSwitcherDetailsLabelAttributesAAccessory = [viewLayoutSpec styleSwitcherDetailsLabelAttributesAAccessory];
    v10 = [v8 initWithString:v7 attributes:styleSwitcherDetailsLabelAttributesAAccessory];
    titleAccessoryAttributedString = self->_titleAccessoryAttributedString;
    self->_titleAccessoryAttributedString = v10;
  }

  v12 = self->_titleAccessoryAttributedString;
  v13 = v12;

  return v12;
}

- (NSAttributedString)titleAttributedString
{
  titleAttributedString = self->_titleAttributedString;
  if (!titleAttributedString)
  {
    viewLayoutSpec = [(PXStoryStyleChromeLayout *)self viewLayoutSpec];
    styleInfo = [(PXStoryStyleChromeLayout *)self styleInfo];
    songResource = [styleInfo songResource];
    px_storyResourceSongAsset = [songResource px_storyResourceSongAsset];
    title = [px_storyResourceSongAsset title];
    v9 = title;
    v10 = &stru_1F1741150;
    if (title)
    {
      v10 = title;
    }

    v11 = v10;

    v12 = objc_alloc(MEMORY[0x1E696AAB0]);
    styleSwitcherDetailsLabelAttributesA = [viewLayoutSpec styleSwitcherDetailsLabelAttributesA];
    v14 = [v12 initWithString:v11 attributes:styleSwitcherDetailsLabelAttributesA];

    v15 = self->_titleAttributedString;
    self->_titleAttributedString = v14;

    titleAttributedString = self->_titleAttributedString;
  }

  return titleAttributedString;
}

- (NSAttributedString)colorGradeNameAttributedString
{
  colorGradeNameAttributedString = self->_colorGradeNameAttributedString;
  if (!colorGradeNameAttributedString)
  {
    viewLayoutSpec = [(PXStoryStyleChromeLayout *)self viewLayoutSpec];
    colorGradingRepository = [(PXStoryStyleChromeLayout *)self colorGradingRepository];
    styleInfo = [(PXStoryStyleChromeLayout *)self styleInfo];
    v7 = [colorGradingRepository localizedTitleForColorGradeKind:{objc_msgSend(styleInfo, "customColorGradeKind")}];

    styleSwitcherDetailsLabelAttributesC = [viewLayoutSpec styleSwitcherDetailsLabelAttributesC];
    if (v7)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DB7F0]) initWithData:0 ofType:0];
      styleSwitcherColorGradeNameGlyphImage = [viewLayoutSpec styleSwitcherColorGradeNameGlyphImage];
      [(NSAttributedString *)v9 setImage:styleSwitcherColorGradeNameGlyphImage];

      v11 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v9];
      v12 = objc_alloc_init(MEMORY[0x1E696AD40]);
      [v12 appendAttributedString:v11];
      v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:styleSwitcherDetailsLabelAttributesC];
      [v12 appendAttributedString:v13];

      v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:styleSwitcherDetailsLabelAttributesC];
      [v12 appendAttributedString:v14];

      v15 = [v12 copy];
      v16 = self->_colorGradeNameAttributedString;
      self->_colorGradeNameAttributedString = v15;
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F1741150 attributes:styleSwitcherDetailsLabelAttributesC];
      v9 = self->_colorGradeNameAttributedString;
      self->_colorGradeNameAttributedString = v17;
    }

    colorGradeNameAttributedString = self->_colorGradeNameAttributedString;
  }

  return colorGradeNameAttributedString;
}

- (void)_invalidateStrings
{
  colorGradeNameAttributedString = self->_colorGradeNameAttributedString;
  self->_colorGradeNameAttributedString = 0;

  titleAttributedString = self->_titleAttributedString;
  self->_titleAttributedString = 0;

  subtitleAttributedString = self->_subtitleAttributedString;
  self->_subtitleAttributedString = 0;
}

- (id)_actionPerformer
{
  viewModel = [(PXStoryStyleChromeLayout *)self viewModel];
  actionPerformer = [viewModel actionPerformer];

  return actionPerformer;
}

- (unint64_t)axFocusabilityForSpriteAtIndex:(unsigned int)index
{
  viewModel = [(PXStoryStyleChromeLayout *)self viewModel];
  v4 = [viewModel viewMode] == 4;

  return 2 * v4;
}

- (id)axVisibleSpriteIndexes
{
  viewModel = [(PXStoryStyleChromeLayout *)self viewModel];
  viewMode = [viewModel viewMode];

  if (viewMode == 4)
  {
    axSpriteIndexes = [(PXStoryStyleChromeLayout *)self axSpriteIndexes];
  }

  else
  {
    axSpriteIndexes = objc_alloc_init(MEMORY[0x1E696AC90]);
  }

  return axSpriteIndexes;
}

- (id)axSpriteIndexes
{
  axSpriteIndexes = self->_axSpriteIndexes;
  if (!axSpriteIndexes)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, self->_spriteCount}];
    v5 = self->_axSpriteIndexes;
    self->_axSpriteIndexes = v4;

    axSpriteIndexes = self->_axSpriteIndexes;
  }

  return axSpriteIndexes;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_songArtworkSpriteIndex == index)
  {
    v8 = objc_alloc_init(PXStoryChromeButtonConfiguration);
    [(PXStoryChromeButtonConfiguration *)v8 setBackgroundStyle:2];
    [(PXStoryChromeButtonConfiguration *)v8 setTarget:self];
    viewLayoutSpec = [(PXStoryStyleChromeLayout *)self viewLayoutSpec];
    chromeButtonSpec = [viewLayoutSpec chromeButtonSpec];

    [(PXStoryChromeButtonConfiguration *)v8 setSpec:chromeButtonSpec];
    _styleSongAsset = [(PXStoryStyleChromeLayout *)self _styleSongAsset];
    artworkDisplayAsset = [_styleSongAsset artworkDisplayAsset];
    [(PXStoryChromeButtonConfiguration *)v8 setDisplayAsset:artworkDisplayAsset];

    musicFeedbackContextMenuDelegate = [(PXStoryStyleChromeLayout *)self musicFeedbackContextMenuDelegate];
    [(PXStoryChromeButtonConfiguration *)v8 setCustomContextMenuInteractionDelegate:musicFeedbackContextMenuDelegate];
  }

  else if (self->_musicButtonSpriteIndex == index)
  {
    v8 = objc_alloc_init(PXStoryChromeButtonConfiguration);
    [(PXStoryChromeButtonConfiguration *)v8 setBackgroundStyle:[(PXStoryStyleChromeLayout *)self _backgroundCircleStyle]];
    [(PXStoryChromeButtonConfiguration *)v8 setTarget:self];
    [(PXStoryChromeButtonConfiguration *)v8 setAction:sel__handleMusicButton_];
    viewLayoutSpec2 = [(PXStoryStyleChromeLayout *)self viewLayoutSpec];
    chromeButtonSpec2 = [viewLayoutSpec2 chromeButtonSpec];
    [(PXStoryChromeButtonConfiguration *)v8 setSpec:chromeButtonSpec2];

    [(PXStoryChromeButtonConfiguration *)v8 setApplyTintColorAsHierarchicalColor:MEMORY[0x1A590D320]([(PXStoryChromeButtonConfiguration *)v8 setSystemImageName:@"music.badge.plus"]) ^ 1];
  }

  else if (self->_filterButtonSpriteIndex == index)
  {
    v8 = objc_alloc_init(PXStoryChromeButtonConfiguration);
    [(PXStoryChromeButtonConfiguration *)v8 setBackgroundStyle:[(PXStoryStyleChromeLayout *)self _backgroundCircleStyle]];
    [(PXStoryChromeButtonConfiguration *)v8 setTarget:self];
    [(PXStoryChromeButtonConfiguration *)v8 setAction:sel__handleFilterButton_];
    viewLayoutSpec3 = [(PXStoryStyleChromeLayout *)self viewLayoutSpec];
    chromeButtonSpec3 = [viewLayoutSpec3 chromeButtonSpec];
    [(PXStoryChromeButtonConfiguration *)v8 setSpec:chromeButtonSpec3];

    [(PXStoryChromeButtonConfiguration *)v8 setApplyTintColorAsHierarchicalColor:MEMORY[0x1A590D320]() ^ 1];
    [(PXStoryChromeButtonConfiguration *)v8 setSystemImageName:@"camera.filters"];
  }

  else
  {
    if (self->_customLabelSpriteIndex != index)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleChromeLayout.m" lineNumber:453 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v8 = objc_alloc_init(PXStoryChromeButtonConfiguration);
    [(PXStoryChromeButtonConfiguration *)v8 setBackgroundStyle:2];
    viewLayoutSpec4 = [(PXStoryStyleChromeLayout *)self viewLayoutSpec];
    chromeButtonSpec4 = [viewLayoutSpec4 chromeButtonSpec];
    [(PXStoryChromeButtonConfiguration *)v8 setSpec:chromeButtonSpec4];

    v20 = PXLocalizedStringFromTable(@"InteractiveMemoryCustomStyleLabel", @"PhotosUICore");
    [(PXStoryChromeButtonConfiguration *)v8 setLabel:v20];
  }

  return v8;
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_songArtworkSpriteIndex != index && self->_musicButtonSpriteIndex != index && self->_filterButtonSpriteIndex != index && self->_customLabelSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleChromeLayout.m" lineNumber:413 description:{@"Invalid parameter not satisfying: %@", @"index == _songArtworkSpriteIndex || index == _musicButtonSpriteIndex || index == _filterButtonSpriteIndex || index == _customLabelSpriteIndex"}];
  }

  v8 = self->_musicButtonSpriteIndex == index || self->_filterButtonSpriteIndex == index;
  v9 = [_TtC12PhotosUICore26PXStoryChromeButtonFactory buttonClassWithGlassEffect:v8];

  return v9;
}

- (id)attributedStringForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_songTitleSpriteIndex == index)
  {
    titleAttributedString = [(PXStoryStyleChromeLayout *)self titleAttributedString];
  }

  else if (self->_songSubtitleSpriteIndex == index)
  {
    titleAttributedString = [(PXStoryStyleChromeLayout *)self subtitleAttributedString];
  }

  else if (self->_colorGradeNameSpriteIndex == index)
  {
    titleAttributedString = [(PXStoryStyleChromeLayout *)self colorGradeNameAttributedString];
  }

  else
  {
    if (self->_songTitleAccessorySpriteIndex != index)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleChromeLayout.m" lineNumber:403 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    titleAttributedString = [(PXStoryStyleChromeLayout *)self titleAccessoryAttributedString];
  }

  v9 = titleAttributedString;

  return v9;
}

- (void)_updateContent
{
  [(PXStoryStyleChromeLayout *)self referenceSize];
  v5 = v4;
  v7 = v6;
  viewLayoutSpec = [(PXStoryStyleChromeLayout *)self viewLayoutSpec];
  [viewLayoutSpec chromeButtonSize];
  v10 = v9;
  v12 = v11;
  [(PXStoryStyleChromeLayout *)self referenceDepth];
  v14 = -v13;
  mediaVersion = [(PXStoryStyleChromeLayout *)self mediaVersion];
  [(PXStoryStyleChromeLayout *)self alpha];
  v17 = v16;
  [(PXStoryStyleChromeLayout *)self displayScale];
  v19 = v18;
  [viewLayoutSpec styleSwitcherDistanceBetweenAlbumArtAndLabels];
  v21 = v20;
  styleSwitcherCanShowEditButtons = [viewLayoutSpec styleSwitcherCanShowEditButtons];
  spriteCount = self->_spriteCount;
  v26 = MEMORY[0x1E69E9820];
  v24 = spriteCount << 32;
  v27 = 3221225472;
  v28 = __42__PXStoryStyleChromeLayout__updateContent__block_invoke;
  v29 = &unk_1E7745CC8;
  v32 = *MEMORY[0x1E695EFF8];
  v33 = v5;
  v34 = v7;
  v35 = a2;
  v30 = viewLayoutSpec;
  selfCopy = self;
  v36 = v10;
  v37 = v12;
  v46 = styleSwitcherCanShowEditButtons;
  v38 = v21;
  v39 = v14;
  v45 = mediaVersion;
  v40 = v17;
  v41 = v19;
  v42 = v32;
  v43 = v5;
  v44 = v7;
  v25 = viewLayoutSpec;
  [(PXStoryStyleChromeLayout *)self modifySpritesInRange:v24 state:&v26];
  [(PXStoryStyleChromeLayout *)self setContentSize:v5, v7, v26, v27, v28, v29];
}

void __42__PXStoryStyleChromeLayout__updateContent__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [*(a1 + 32) styleSwitcherDetailsLabelAttributesA];
  v10 = *MEMORY[0x1E69DB648];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  [v11 lineHeight];

  v12 = [*(a1 + 32) styleSwitcherDetailsLabelAttributesB];
  v13 = [v12 objectForKeyedSubscript:v10];
  [v13 lineHeight];

  v14 = [*(a1 + 32) styleSwitcherDetailsLabelAttributesC];
  v15 = [v14 objectForKeyedSubscript:v10];
  [v15 lineHeight];

  v17 = *(a1 + 48);
  v16 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = [*(a1 + 32) styleSwitcherChromeArrangement];
  if (v20 <= 1)
  {
    if (v20 == 1)
    {
      PXRectWithSizeAlignedToRectEdges();
    }

    if (!v20)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:*(a1 + 80) object:*(a1 + 40) file:@"PXStoryStyleChromeLayout.m" lineNumber:231 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  else
  {
    if (v20 == 2)
    {
      v119.origin.x = v17;
      v119.origin.y = v16;
      v119.size.width = v18;
      v119.size.height = v19;
      CGRectGetWidth(v119);
      PXRectWithSizeAlignedToRectEdges();
    }

    if (v20 == 3)
    {
      PXRectWithSizeAlignedToRectEdges();
    }
  }

  v22 = [*(a1 + 40) titleAccessoryAttributedString];
  [v22 size];
  v24 = v23;

  [*(a1 + 32) styleSwitcherDetailsTitleAccessoryPadding];
  if (v24 <= 0.0)
  {
    v100 = *(MEMORY[0x1E695F058] + 8);
    v101 = *MEMORY[0x1E695F058];
    v102 = *(MEMORY[0x1E695F058] + 16);
    Height = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v26 = v25;
    v120.origin.x = v17;
    v120.origin.y = v16;
    v120.size.width = v18;
    v120.size.height = v19;
    v27 = CGRectGetMaxX(v120) - v24;
    v121.origin.x = 0.0;
    v121.origin.y = 0.0;
    v121.size.width = 0.0;
    v121.size.height = 0.0;
    v28 = v26 + CGRectGetMaxX(v121);
    if (v27 >= v28)
    {
      v27 = v28;
    }

    v122.origin.x = 0.0;
    v122.origin.y = 0.0;
    v122.size.width = 0.0;
    v122.size.height = 0.0;
    MinY = CGRectGetMinY(v122);
    v123.origin.x = 0.0;
    v123.origin.y = 0.0;
    v123.size.width = 0.0;
    v123.size.height = 0.0;
    Height = CGRectGetHeight(v123);
    v124.origin.x = 0.0;
    v124.origin.y = 0.0;
    v124.size.width = 0.0;
    v124.size.height = 0.0;
    v101 = v27;
    v102 = v24;
    v100 = MinY;
    if (CGRectGetMaxX(v124) - v27 - v26 > 0.0)
    {
      PXInsetRectWithValueForEdges();
    }
  }

  v30 = a3 + 32 * *(*(a1 + 40) + 872);
  v31 = *(a1 + 112);
  v125.origin.x = 0.0;
  v125.origin.y = 0.0;
  v125.size.width = 0.0;
  v125.size.height = 0.0;
  MidX = CGRectGetMidX(v125);
  v126.origin.x = 0.0;
  v126.origin.y = 0.0;
  v126.size.width = 0.0;
  v126.size.height = 0.0;
  MidY = CGRectGetMidY(v126);
  v127.origin.x = 0.0;
  v127.origin.y = 0.0;
  v127.size.width = 0.0;
  v127.size.height = 0.0;
  Width = CGRectGetWidth(v127);
  v128.origin.x = 0.0;
  v128.origin.y = 0.0;
  v128.size.width = 0.0;
  v128.size.height = 0.0;
  v34 = CGRectGetHeight(v128);
  v35.f64[0] = Width;
  v35.f64[1] = v34;
  *v30 = MidX;
  *(v30 + 8) = MidY;
  *(v30 + 16) = v31;
  *(v30 + 24) = vcvt_f32_f64(v35);
  v36 = (a4 + 160 * *(*(a1 + 40) + 872));
  v117 = *(off_1E7722048 + 1);
  v118 = *off_1E7722048;
  *v36 = *off_1E7722048;
  v36[1] = v117;
  v115 = *(off_1E7722048 + 4);
  v116 = *(off_1E7722048 + 5);
  v36[4] = v115;
  v36[5] = v116;
  v112 = *(off_1E7722048 + 2);
  v114 = *(off_1E7722048 + 3);
  v36[2] = v112;
  v36[3] = v114;
  rect = *(off_1E7722048 + 8);
  v111 = *(off_1E7722048 + 9);
  v36[8] = rect;
  v36[9] = v111;
  v108 = *(off_1E7722048 + 6);
  v109 = *(off_1E7722048 + 7);
  v36[6] = v108;
  v36[7] = v109;
  v35.f64[0] = *(a1 + 112);
  *&v34 = *(a1 + 120);
  *(a4 + 160 * *(*(a1 + 40) + 872)) = LODWORD(v34);
  *(a5 + 40 * *(*(a1 + 40) + 872) + 1) = 10;
  *(a5 + 40 * *(*(a1 + 40) + 872) + 32) = *(a1 + 168);
  *(a5 + 40 * *(*(a1 + 40) + 872)) = 1;
  v37 = a3 + 32 * *(*(a1 + 40) + 896);
  v38 = v35.f64[0];
  v39 = 0;
  v35.f64[0] = 0.0;
  v40 = 0;
  v41 = 0;
  v42 = CGRectGetMidX(*(&v35 - 8));
  v129.origin.x = 0.0;
  v129.origin.y = 0.0;
  v129.size.width = 0.0;
  v129.size.height = 0.0;
  v43 = CGRectGetMidY(v129);
  v130.origin.x = 0.0;
  v130.origin.y = 0.0;
  v130.size.width = 0.0;
  v130.size.height = 0.0;
  v98 = CGRectGetWidth(v130);
  v131.origin.x = 0.0;
  v131.origin.y = 0.0;
  v131.size.width = 0.0;
  v131.size.height = 0.0;
  v44 = CGRectGetHeight(v131);
  v45.f64[0] = v98;
  v45.f64[1] = v44;
  *v37 = v42;
  *(v37 + 8) = v43;
  *(v37 + 16) = v38;
  *(v37 + 24) = vcvt_f32_f64(v45);
  v46 = (a4 + 160 * *(*(a1 + 40) + 896));
  *v46 = v118;
  v46[1] = v117;
  v46[4] = v115;
  v46[5] = v116;
  v46[2] = v112;
  v46[3] = v114;
  v46[8] = rect;
  v46[9] = v111;
  v46[6] = v108;
  v46[7] = v109;
  v47 = 0.0;
  v48 = 0.0;
  if (*(a1 + 170) == 1)
  {
    v48 = *(a1 + 120);
  }

  *(a4 + 160 * *(*(a1 + 40) + 896)) = v48;
  *(a5 + 40 * *(*(a1 + 40) + 896) + 1) = 10;
  *(a5 + 40 * *(*(a1 + 40) + 896) + 32) = *(a1 + 168);
  *(a5 + 40 * *(*(a1 + 40) + 896)) = 1;
  v49 = a3 + 32 * *(*(a1 + 40) + 892);
  v50 = *(a1 + 112);
  v132.origin.x = 0.0;
  v132.origin.y = 0.0;
  v132.size.width = 0.0;
  v132.size.height = 0.0;
  v51 = CGRectGetMidX(v132);
  v133.origin.x = 0.0;
  v133.origin.y = 0.0;
  v133.size.width = 0.0;
  v133.size.height = 0.0;
  v52 = CGRectGetMidY(v133);
  v134.origin.x = 0.0;
  v134.origin.y = 0.0;
  v134.size.width = 0.0;
  v134.size.height = 0.0;
  v103 = CGRectGetWidth(v134);
  v135.origin.x = 0.0;
  v135.origin.y = 0.0;
  v135.size.width = 0.0;
  v135.size.height = 0.0;
  v53 = CGRectGetHeight(v135);
  v54.f64[0] = v103;
  v54.f64[1] = v53;
  *v49 = v51;
  *(v49 + 8) = v52;
  *(v49 + 16) = v50;
  *(v49 + 24) = vcvt_f32_f64(v54);
  v55 = (a4 + 160 * *(*(a1 + 40) + 892));
  *v55 = v118;
  v55[1] = v117;
  v55[4] = v115;
  v55[5] = v116;
  v55[2] = v112;
  v55[3] = v114;
  v55[8] = rect;
  v55[9] = v111;
  v55[6] = v108;
  v55[7] = v109;
  if (*(a1 + 170) == 1)
  {
    v47 = *(a1 + 120);
  }

  *(a4 + 160 * *(*(a1 + 40) + 892)) = v47;
  *(a5 + 40 * *(*(a1 + 40) + 892) + 1) = 10;
  *(a5 + 40 * *(*(a1 + 40) + 892) + 32) = *(a1 + 168);
  *(a5 + 40 * *(*(a1 + 40) + 892)) = 1;
  v56 = a3 + 32 * *(*(a1 + 40) + 876);
  v57 = *(a1 + 112);
  v136.origin.x = 0.0;
  v136.origin.y = 0.0;
  v136.size.width = 0.0;
  v136.size.height = 0.0;
  v58 = CGRectGetMidX(v136);
  v137.origin.x = 0.0;
  v137.origin.y = 0.0;
  v137.size.width = 0.0;
  v137.size.height = 0.0;
  v59 = CGRectGetMidY(v137);
  v138.origin.x = 0.0;
  v138.origin.y = 0.0;
  v138.size.width = 0.0;
  v138.size.height = 0.0;
  v104 = CGRectGetWidth(v138);
  v139.origin.x = 0.0;
  v139.origin.y = 0.0;
  v139.size.width = 0.0;
  v139.size.height = 0.0;
  v60 = CGRectGetHeight(v139);
  v61.f64[0] = v104;
  v61.f64[1] = v60;
  *v56 = v58;
  *(v56 + 8) = v59;
  *(v56 + 16) = v57;
  *(v56 + 24) = vcvt_f32_f64(v61);
  v62 = (a4 + 160 * *(*(a1 + 40) + 876));
  v62[6] = v108;
  v62[7] = v109;
  v62[8] = rect;
  v62[9] = v111;
  v62[2] = v112;
  v62[3] = v114;
  v62[4] = v115;
  v62[5] = v116;
  *v62 = v118;
  v62[1] = v117;
  v61.f64[0] = *(a1 + 128);
  *&v60 = *(a1 + 120);
  *(a4 + 160 * *(*(a1 + 40) + 876)) = LODWORD(v60);
  *(a5 + 40 * *(*(a1 + 40) + 876) + 1) = 3;
  *(a5 + 40 * *(*(a1 + 40) + 876) + 32) = *(a1 + 168);
  *&v60 = v61.f64[0];
  v63 = *(*(a1 + 40) + 876);
  *(a5 + 40 * v63 + 8) = vmul_n_f32(*(a3 + 32 * v63 + 24), *&v60);
  v64 = a3 + 32 * *(*(a1 + 40) + 880);
  v65 = *(a1 + 112);
  v66 = v101;
  v61.f64[0] = v100;
  v67 = v102;
  v68 = Height;
  v69 = CGRectGetMidX(*(&v61 - 8));
  v140.origin.x = v101;
  v140.origin.y = v100;
  v140.size.width = v102;
  v140.size.height = Height;
  v70 = CGRectGetMidY(v140);
  v141.origin.x = v101;
  v141.origin.y = v100;
  v141.size.width = v102;
  v141.size.height = Height;
  v105 = CGRectGetWidth(v141);
  v142.origin.x = v101;
  v142.origin.y = v100;
  v142.size.width = v102;
  v142.size.height = Height;
  v71 = CGRectGetHeight(v142);
  v72.f64[0] = v105;
  v72.f64[1] = v71;
  *v64 = v69;
  *(v64 + 8) = v70;
  *(v64 + 16) = v65;
  *(v64 + 24) = vcvt_f32_f64(v72);
  v73 = (a4 + 160 * *(*(a1 + 40) + 880));
  v73[6] = v108;
  v73[7] = v109;
  v73[8] = rect;
  v73[9] = v111;
  v73[2] = v112;
  v73[3] = v114;
  v73[4] = v115;
  v73[5] = v116;
  *v73 = v118;
  v73[1] = v117;
  v72.f64[0] = *(a1 + 128);
  *&v71 = *(a1 + 120);
  *(a4 + 160 * *(*(a1 + 40) + 880)) = LODWORD(v71);
  *(a5 + 40 * *(*(a1 + 40) + 880) + 1) = 3;
  *(a5 + 40 * *(*(a1 + 40) + 880) + 32) = *(a1 + 168);
  *&v71 = v72.f64[0];
  v74 = *(*(a1 + 40) + 880);
  *(a5 + 40 * v74 + 8) = vmul_n_f32(*(a3 + 32 * v74 + 24), *&v71);
  v75 = a3 + 32 * *(*(a1 + 40) + 884);
  *&v70 = *(a1 + 112);
  v76 = 0;
  v72.f64[0] = 0.0;
  v77 = 0;
  v78 = 0;
  v79 = CGRectGetMidX(*(&v72 - 8));
  v143.origin.x = 0.0;
  v143.origin.y = 0.0;
  v143.size.width = 0.0;
  v143.size.height = 0.0;
  v80 = CGRectGetMidY(v143);
  v144.origin.x = 0.0;
  v144.origin.y = 0.0;
  v144.size.width = 0.0;
  v144.size.height = 0.0;
  v106 = CGRectGetWidth(v144);
  v145.origin.x = 0.0;
  v145.origin.y = 0.0;
  v145.size.width = 0.0;
  v145.size.height = 0.0;
  v81 = CGRectGetHeight(v145);
  v82.f64[0] = v106;
  v82.f64[1] = v81;
  *v75 = v79;
  *(v75 + 8) = v80;
  *(v75 + 16) = *&v70;
  *(v75 + 24) = vcvt_f32_f64(v82);
  v83 = (a4 + 160 * *(*(a1 + 40) + 884));
  v83[6] = v108;
  v83[7] = v109;
  v83[8] = rect;
  v83[9] = v111;
  v83[2] = v112;
  v83[3] = v114;
  v83[4] = v115;
  v83[5] = v116;
  *v83 = v118;
  v83[1] = v117;
  v82.f64[0] = *(a1 + 128);
  *&v81 = *(a1 + 120);
  *(a4 + 160 * *(*(a1 + 40) + 884)) = LODWORD(v81);
  *(a5 + 40 * *(*(a1 + 40) + 884) + 1) = 3;
  *(a5 + 40 * *(*(a1 + 40) + 884) + 32) = *(a1 + 168);
  *&v81 = v82.f64[0];
  v84 = *(*(a1 + 40) + 884);
  *(a5 + 40 * v84 + 8) = vmul_n_f32(*(a3 + 32 * v84 + 24), *&v81);
  v85 = a3 + 32 * *(*(a1 + 40) + 888);
  *&v70 = *(a1 + 112);
  v86 = 0;
  v82.f64[0] = 0.0;
  v87 = 0;
  v88 = 0;
  v89 = CGRectGetMidX(*(&v82 - 8));
  v146.origin.x = 0.0;
  v146.origin.y = 0.0;
  v146.size.width = 0.0;
  v146.size.height = 0.0;
  v90 = CGRectGetMidY(v146);
  v147.origin.x = 0.0;
  v147.origin.y = 0.0;
  v147.size.width = 0.0;
  v147.size.height = 0.0;
  v107 = CGRectGetWidth(v147);
  v148.origin.x = 0.0;
  v148.origin.y = 0.0;
  v148.size.width = 0.0;
  v148.size.height = 0.0;
  v91 = CGRectGetHeight(v148);
  v92.f64[0] = v107;
  v92.f64[1] = v91;
  *v85 = v89;
  *(v85 + 8) = v90;
  *(v85 + 16) = *&v70;
  *(v85 + 24) = vcvt_f32_f64(v92);
  v93 = (a4 + 160 * *(*(a1 + 40) + 888));
  v93[6] = v108;
  v93[7] = v109;
  v93[8] = rect;
  v93[9] = v111;
  v93[2] = v112;
  v93[3] = v114;
  v93[4] = v115;
  v93[5] = v116;
  *v93 = v118;
  v93[1] = v117;
  v92.f64[0] = *(a1 + 128);
  *&v91 = *(a1 + 120);
  *(a4 + 160 * *(*(a1 + 40) + 888)) = LODWORD(v91);
  *(a5 + 40 * *(*(a1 + 40) + 888) + 1) = 3;
  *(a5 + 40 * *(*(a1 + 40) + 888) + 32) = *(a1 + 168);
  *&v91 = v92.f64[0];
  v94 = *(*(a1 + 40) + 888);
  *(a5 + 40 * v94 + 8) = vmul_n_f32(*(a3 + 32 * v94 + 24), *&v91);
  [*(a1 + 40) viewUserDataForSpriteAtIndex:*(*(a1 + 40) + 900) inLayout:*(a1 + 40)];
  objc_claimAutoreleasedReturnValue();
  [PXStoryChromeButton sizeWithConfiguration:?];
  v95 = [*(a1 + 40) viewModel];
  v96 = [v95 mainModel];
  v97 = [v96 layoutSpec];
  [v97 styleSwitcherViewportInset];

  CGRectGetMaxY(*(a1 + 136));
  v149.origin.x = 0.0;
  v149.size.height = 0.0;
  v149.origin.y = 0.0;
  v149.size.width = 0.0;
  CGRectGetMinY(v149);
  PXRectWithSizeAlignedToRectEdgesWithPadding();
}

- (void)_invalidateContent
{
  colorGradeNameAttributedString = self->_colorGradeNameAttributedString;
  self->_colorGradeNameAttributedString = 0;

  titleAccessoryAttributedString = self->_titleAccessoryAttributedString;
  self->_titleAccessoryAttributedString = 0;

  titleAttributedString = self->_titleAttributedString;
  self->_titleAttributedString = 0;

  subtitleAttributedString = self->_subtitleAttributedString;
  self->_subtitleAttributedString = 0;

  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeLayout _invalidateContent]"];
      [currentHandler handleFailureInFunction:v11 file:@"PXStoryStyleChromeLayout.m" lineNumber:199 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXStoryStyleChromeLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryStyleChromeLayout;
  [(PXStoryStyleChromeLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryStyleChromeLayout.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeLayout update]"];
      [currentHandler handleFailureInFunction:v6 file:@"PXStoryStyleChromeLayout.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryStyleChromeLayout *)self _updateContent];
      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeLayout update]"];
      [currentHandler2 handleFailureInFunction:v8 file:@"PXStoryStyleChromeLayout.m" lineNumber:185 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v9.receiver = self;
  v9.super_class = PXStoryStyleChromeLayout;
  [(PXStoryStyleChromeLayout *)&v9 update];
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryStyleChromeLayout;
  [(PXStoryStyleChromeLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryStyleChromeLayout.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryStyleChromeLayout;
  [(PXStoryStyleChromeLayout *)&v3 displayScaleDidChange];
  [(PXStoryStyleChromeLayout *)self _invalidateContent];
}

- (void)alphaDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryStyleChromeLayout;
  [(PXStoryStyleChromeLayout *)&v3 alphaDidChange];
  [(PXStoryStyleChromeLayout *)self _invalidateContent];
}

- (void)referenceDepthDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryStyleChromeLayout;
  [(PXStoryStyleChromeLayout *)&v3 referenceDepthDidChange];
  [(PXStoryStyleChromeLayout *)self _invalidateContent];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryStyleChromeLayout;
  [(PXStoryStyleChromeLayout *)&v3 referenceSizeDidChange];
  [(PXStoryStyleChromeLayout *)self _invalidateContent];
}

- (PXStoryStyleChromeLayout)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleChromeLayout.m" lineNumber:146 description:{@"%s is not available as initializer", "-[PXStoryStyleChromeLayout init]"}];

  abort();
}

- (void)setMediaVersion:(unsigned __int16)version
{
  if (self->_mediaVersion != version)
  {
    self->_mediaVersion = version;
    [(PXStoryStyleChromeLayout *)self _invalidateContent];
  }
}

- (void)setColorGradingRepository:(id)repository
{
  repositoryCopy = repository;
  v6 = repositoryCopy;
  if (self->_colorGradingRepository != repositoryCopy)
  {
    v8 = repositoryCopy;
    v7 = [(PXStoryColorGradingRepository *)repositoryCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_colorGradingRepository, repository);
      [(PXStoryStyleChromeLayout *)self _invalidateContent];
      v6 = v8;
    }
  }
}

- (void)setViewLayoutSpec:(id)spec
{
  specCopy = spec;
  v6 = specCopy;
  if (self->_viewLayoutSpec != specCopy)
  {
    v8 = specCopy;
    v7 = [(PXStoryViewLayoutSpec *)specCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_viewLayoutSpec, spec);
      [(PXStoryStyleChromeLayout *)self setMediaVersion:([(PXStoryStyleChromeLayout *)self mediaVersion]+ 1)];
      [(PXStoryStyleChromeLayout *)self _invalidateContent];
      [(PXStoryStyleChromeLayout *)self _invalidateStrings];
      v6 = v8;
    }
  }
}

- (void)setStyleInfo:(id)info
{
  infoCopy = info;
  v6 = infoCopy;
  if (self->_styleInfo != infoCopy)
  {
    v8 = infoCopy;
    v7 = [(PXStoryStyleDescriptor *)infoCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_styleInfo, info);
      [(PXStoryStyleChromeLayout *)self setMediaVersion:([(PXStoryStyleChromeLayout *)self mediaVersion]+ 1)];
      [(PXStoryStyleChromeLayout *)self _invalidateContent];
      v6 = v8;
    }
  }
}

- (PXStoryStyleChromeLayout)initWithViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = PXStoryStyleChromeLayout;
  v6 = [(PXStoryStyleChromeLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
    [(PXStoryStyleChromeLayout *)v7 setContentSource:v7];
    v7->_songTitleSpriteIndex = 0;
    v7->_songTitleAccessorySpriteIndex = 1;
    v7->_songSubtitleSpriteIndex = 2;
    v7->_colorGradeNameSpriteIndex = 3;
    v7->_songArtworkSpriteIndex = 4;
    v7->_filterButtonSpriteIndex = 5;
    v7->_musicButtonSpriteIndex = 6;
    v7->_customLabelSpriteIndex = 7;
    v7->_spriteCount = 8;
    [(PXStoryStyleChromeLayout *)v7 applySpriteChangeDetails:0 countAfterChanges:8 initialState:0 modifyState:0];
  }

  return v7;
}

+ (void)stopCachingResourcesForStyleInfo:(id)info viewLayoutSpec:(id)spec displayScale:(double)scale
{
  v11[1] = *MEMORY[0x1E69E9840];
  specCopy = spec;
  songResource = [info songResource];
  px_storyResourceSongAsset = [songResource px_storyResourceSongAsset];
  artworkDisplayAsset = [px_storyResourceSongAsset artworkDisplayAsset];

  if (artworkDisplayAsset)
  {
    defaultManager = [off_1E77217B0 defaultManager];
    [defaultManager imageProviderForAsset:artworkDisplayAsset];
    objc_claimAutoreleasedReturnValue();

    v11[0] = artworkDisplayAsset;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    objc_claimAutoreleasedReturnValue();
    [specCopy chromeButtonSize];
    PXSizeScale();
  }
}

+ (void)startCachingResourcesForStyleInfo:(id)info viewLayoutSpec:(id)spec displayScale:(double)scale
{
  v11[1] = *MEMORY[0x1E69E9840];
  specCopy = spec;
  songResource = [info songResource];
  px_storyResourceSongAsset = [songResource px_storyResourceSongAsset];
  artworkDisplayAsset = [px_storyResourceSongAsset artworkDisplayAsset];

  if (artworkDisplayAsset)
  {
    defaultManager = [off_1E77217B0 defaultManager];
    [defaultManager imageProviderForAsset:artworkDisplayAsset];
    objc_claimAutoreleasedReturnValue();

    v11[0] = artworkDisplayAsset;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    objc_claimAutoreleasedReturnValue();
    [specCopy chromeButtonSize];
    PXSizeScale();
  }
}

@end