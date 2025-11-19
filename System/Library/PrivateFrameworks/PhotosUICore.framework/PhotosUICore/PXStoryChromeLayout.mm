@interface PXStoryChromeLayout
- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5;
- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (PXStoryChromeLayout)initWithViewModel:(id)a3;
- (PXStoryRelatedLayoutGenerator)layoutGenerator;
- (PXStoryViewLayoutSpec)viewLayoutSpec;
- (UIEdgeInsets)paddingForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)_actionPerformer;
- (id)_buttonConfigurationForSpriteIndex:(unsigned int)a3;
- (id)_configurationForBrowserAddPhotosButton;
- (id)_configurationForBrowserSelectButton;
- (id)_configurationForButtonWithAction:(SEL)a3 systemImageName:(id)a4 backgroundStyle:(int64_t)a5 axLabelKey:(id)a6;
- (id)_configurationForButtonWithAction:(SEL)a3 systemImageName:(id)a4 backgroundStyle:(int64_t)a5 label:(id)a6 axLabelKey:(id)a7;
- (id)_configurationForCloseButtonWithAction:(SEL)a3 systemImageName:(id)a4 axLabelKey:(id)a5;
- (id)_configurationForLargeButtonWithAction:(SEL)a3 systemImageName:(id)a4 backgroundStyle:(int64_t)a5 axLabelKey:(id)a6;
- (id)_configurationForShareButtonWithAction:(SEL)a3 systemImageName:(id)a4 backgroundStyle:(int64_t)a5 axLabelKey:(id)a6;
- (id)_possiblyAccessibleSpriteIndexes;
- (id)attributedStringForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)axContentInfoAtSpriteIndex:(unsigned int)a3;
- (id)axVisibleSpriteIndexes;
- (id)imageConfigurationAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)mainLayoutSpec;
- (id)preferredFocusLayouts;
- (id)preferredFocusSpriteIndexes;
- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (unint64_t)axFocusabilityForSpriteAtIndex:(unsigned int)a3;
- (unsigned)_addButtonForChromeItem:(unint64_t)a3 isSupported:(BOOL)a4;
- (unsigned)_addEdgeHighlightForChromeItem:(unint64_t)a3;
- (unsigned)_addLabelForChromeItem:(unint64_t)a3 isSupported:(BOOL)a4;
- (unsigned)_addSpriteForChromeItemController:(id)a3 mediaKind:(unsigned __int8)a4 presentationType:(unsigned __int8)a5;
- (void)_configureDefaultContentLayout:(id)a3;
- (void)_configureUnifiedContentLayout:(id)a3;
- (void)_handleAspectModeButton:(id)a3;
- (void)_handleAutoEditButton:(id)a3;
- (void)_handleBrowserAddPhotosButton:(id)a3;
- (void)_handleBrowserGridButton:(id)a3;
- (void)_handleBrowserSelectButton:(id)a3;
- (void)_handleCloseButton:(id)a3;
- (void)_handleEditColorGradeButton:(id)a3;
- (void)_handleEditMusicButton:(id)a3;
- (void)_handleErrorIndicator:(id)a3;
- (void)_handleFavoriteButton:(id)a3;
- (void)_handleMuteToggleButton:(id)a3;
- (void)_handlePlayButton:(id)a3;
- (void)_handleReplayButton:(id)a3;
- (void)_handleShareButton:(id)a3;
- (void)_handleToggleViewModeButton:(id)a3;
- (void)_invalidateAXGroupRole;
- (void)_invalidateActionMenu;
- (void)_invalidateContentAlpha;
- (void)_invalidateContentLayout;
- (void)_invalidateMainModel;
- (void)_menuDidClose;
- (void)_updateConfigurationUpdatedForPlaybackEnd:(id)a3;
- (void)_updateContentAlpha;
- (void)_updateContentLayout;
- (void)_updateMainModel;
- (void)alphaDidChange;
- (void)didUpdate;
- (void)getDetailedPresentedPlacement:(id)a3 forItemReference:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)setAlphaOverride:(id)a3;
- (void)setDetailedPlacementOverride:(id)a3 forItemReference:(id)a4;
- (void)setMainModel:(id)a3;
- (void)setRecipeManager:(id)a3;
- (void)update;
- (void)willUpdate;
@end

@implementation PXStoryChromeLayout

- (id)preferredFocusSpriteIndexes
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v3 addIndex:self->_actionMenuButtonSpriteIndex];
  [v3 addIndex:self->_browserGridButtonSpriteIndex];
  [v3 addIndex:self->_browserAddPhotosButtonSpriteIndex];
  [v3 addIndex:self->_browserSelectButtonSpriteIndex];
  [v3 addIndex:self->_replayButtonSpriteIndex];
  [v3 addIndex:self->_toggleFavoriteButtonSpriteIndex];
  [v3 addIndex:self->_styleSwitcherButtonSpriteIndex];
  v4 = [v3 copy];

  return v4;
}

- (id)preferredFocusLayouts
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PXStoryChromeLayout *)self viewModel];
  v11 = [v10 mainModel];
  if ([v11 viewMode] == 1)
  {
    v12 = [(PXStoryChromeLayout *)self viewModel];
    [v12 wantsChromeVisible];
  }

  v13 = [(PXStoryChromeLayout *)self axNextResponder];
  v14 = [v13 axGroup:v9 didRequestToPerformAction:a4 userInfo:v8];

  return v14;
}

- (unint64_t)axFocusabilityForSpriteAtIndex:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(PXStoryChromeLayout *)self viewModel];
  v6 = [v5 wantsChromeVisible];

  if (!v6)
  {
    return 0;
  }

  v7 = [(PXStoryChromeLayout *)self itemControllers];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9 || (-[PXStoryChromeLayout viewModel](self, "viewModel"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 chromeItems], v12 = objc_msgSend(v9, "chromeItem") & ~v11, v10, v12))
  {
    v13 = 0;
  }

  else
  {
    v13 = 2 * (([v9 chromeItem] & 0x800C00) == 0);
  }

  return v13;
}

- (id)axContentInfoAtSpriteIndex:(unsigned int)a3
{
  v11.receiver = self;
  v11.super_class = PXStoryChromeLayout;
  v5 = [(PXStoryChromeLayout *)&v11 axContentInfoAtSpriteIndex:?];
  if (self->_playButtonSpriteIndex == a3)
  {
    v6 = [(PXStoryChromeLayout *)self viewModel];
    v7 = [v6 desiredPlayState];

    if (v7)
    {
      if (v7 != 1)
      {
        v9 = 0;
        goto LABEL_8;
      }

      v8 = @"InteractiveMemoryButtonAccessibilityLabelPause";
    }

    else
    {
      v8 = @"InteractiveMemoryButtonAccessibilityLabelPlay";
    }

    v9 = PXLocalizedStringFromTable(v8, @"PhotosUICore");
LABEL_8:
    [v5 setContent:v9 ofContentKind:3];
  }

  return v5;
}

- (id)axVisibleSpriteIndexes
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v4 = [(PXStoryChromeLayout *)self viewModel];
  v5 = [v4 chromeItems];

  v6 = [(PXStoryChromeLayout *)self itemControllers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PXStoryChromeLayout_axVisibleSpriteIndexes__block_invoke;
  v9[3] = &unk_1E77375D0;
  v11 = v5;
  v7 = v3;
  v10 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __45__PXStoryChromeLayout_axVisibleSpriteIndexes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = *(a1 + 40);
  if (([a3 chromeItem] & ~v5) == 0)
  {
    [*(a1 + 32) addIndex:{objc_msgSend(v6, "integerValue")}];
  }
}

- (id)_possiblyAccessibleSpriteIndexes
{
  cachePossiblyAccessibleSpriteIndexes = self->_cachePossiblyAccessibleSpriteIndexes;
  if (!cachePossiblyAccessibleSpriteIndexes)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v5 = [(PXStoryChromeLayout *)self itemControllers];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __55__PXStoryChromeLayout__possiblyAccessibleSpriteIndexes__block_invoke;
    v13 = &unk_1E77375A8;
    v14 = self;
    v15 = v4;
    v6 = v4;
    [v5 enumerateKeysAndObjectsUsingBlock:&v10];

    v7 = [v6 copy];
    v8 = self->_cachePossiblyAccessibleSpriteIndexes;
    self->_cachePossiblyAccessibleSpriteIndexes = v7;

    cachePossiblyAccessibleSpriteIndexes = self->_cachePossiblyAccessibleSpriteIndexes;
  }

  return cachePossiblyAccessibleSpriteIndexes;
}

uint64_t __55__PXStoryChromeLayout__possiblyAccessibleSpriteIndexes__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 integerValue];
  v4 = *(a1 + 32);
  if (v4[275] != result && v4[276] != result && v4[281] != result)
  {
    v5 = result;
    v6 = *(a1 + 40);

    return [v6 addIndex:v5];
  }

  return result;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v10 = a3;
  if (ViewModelObservationContext_92630 != a5)
  {
    if (ItemControllerObservationContext == a5)
    {
      if ((a4 & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_32:
      [(PXStoryChromeLayout *)self _invalidateContentAlpha];
      goto LABEL_33;
    }

    if (MainModelObservationContext_92631 != a5)
    {
      if (RecipeManagerObservationContext != a5)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        [v9 handleFailureInMethod:a2 object:self file:@"PXStoryChromeLayout.m" lineNumber:1355 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      if ((a4 & 0x21) != 0)
      {
        [(PXStoryChromeLayout *)self _invalidateActionMenu];
      }

      goto LABEL_33;
    }

    if ((a4 & 0x1000010000) != 0)
    {
      [(PXStoryChromeLayout *)self _invalidateContent];
    }

    if ((a4 & 0x40) != 0)
    {
      [(PXStoryChromeLayout *)self _invalidateActionMenu];
      if ((a4 & 0x200000000000) == 0)
      {
LABEL_25:
        if ((a4 & 0x2000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }
    }

    else if ((a4 & 0x200000000000) == 0)
    {
      goto LABEL_25;
    }

    [(PXStoryChromeLayout *)self _invalidateActionMenu];
    [(PXStoryChromeLayout *)self _invalidateContent];
    if ((a4 & 0x2000) == 0)
    {
LABEL_26:
      if ((a4 & 0x800000000000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

LABEL_30:
    [(PXStoryChromeLayout *)self _invalidateContent];
    if ((a4 & 0x800000000000000) == 0)
    {
      goto LABEL_33;
    }

LABEL_31:
    [(PXStoryChromeLayout *)self _invalidateContentLayout];
    goto LABEL_32;
  }

  if ((a4 & 0x80000) != 0)
  {
    [(PXStoryChromeLayout *)self _invalidateContent];
  }

  if ((a4 & 0x418000000008020) != 0)
  {
    [(PXStoryChromeLayout *)self _invalidateContent];
  }

  if ((a4 & 0x40) != 0)
  {
    [(PXStoryChromeLayout *)self _invalidateMainModel];
  }

  if ((a4 & 0x4000) != 0)
  {
    [(PXStoryChromeLayout *)self _invalidateContentAlpha];
  }

  if ((a4 & 0x4140002C02) != 0)
  {
    [(PXStoryChromeLayout *)self _invalidateActionMenu];
  }

  if ((a4 & 0x8000) != 0)
  {
    [(PXStoryChromeLayout *)self _invalidateAXGroupRole];
  }

LABEL_33:
}

- (void)setDetailedPlacementOverride:(id)a3 forItemReference:(id)a4
{
  if (a3)
  {
    v5 = MEMORY[0x1E696AD98];
    [a3 chromeAlpha];
    v6 = [v5 numberWithDouble:?];
    [(PXStoryChromeLayout *)self setAlphaOverride:v6];
  }

  else
  {

    [(PXStoryChromeLayout *)self setAlphaOverride:?];
  }
}

- (void)getDetailedPresentedPlacement:(id)a3 forItemReference:(id)a4
{
  v5 = a3;
  [(PXStoryChromeLayout *)self alpha];
  [v5 setChromeAlpha:?];
}

- (void)_handleBrowserSelectButton:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryChromeLayout *)self _actionPerformer];
  [v5 performActionForChromeActionMenuItem:19 withValue:0 sender:v4 presentationSource:0];
}

- (void)_handleBrowserAddPhotosButton:(id)a3
{
  v3 = [(PXStoryChromeLayout *)self _actionPerformer];
  [v3 presentAssetPicker];
}

- (void)_handleBrowserGridButton:(id)a3
{
  v3 = [(PXStoryChromeLayout *)self _actionPerformer];
  [v3 presentBrowserGrid];
}

- (void)_handleAutoEditButton:(id)a3
{
  v3 = [(PXStoryChromeLayout *)self _actionPerformer];
  [v3 presentStyleSwitcher];
}

- (void)_handleToggleViewModeButton:(id)a3
{
  v4 = [(PXStoryChromeLayout *)self viewModel];
  v3 = [v4 mainModel];
  [v3 performChanges:&__block_literal_global_589];
}

void __51__PXStoryChromeLayout__handleToggleViewModeButton___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 viewMode];
  if (v2 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v4 setViewMode:v3];
  if (v2 != 1)
  {
    [v4 rewindToBeginningOfCurrentSegment];
  }
}

- (void)_handleAspectModeButton:(id)a3
{
  v4 = [(PXStoryChromeLayout *)self viewModel];
  v3 = [v4 mainModel];
  [v3 performChanges:&__block_literal_global_587];
}

void __47__PXStoryChromeLayout__handleAspectModeButton___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setShouldAspectFitCurrentSegment:{objc_msgSend(v2, "shouldAspectFitCurrentSegment") ^ 1}];
}

- (void)_handleCloseButton:(id)a3
{
  v3 = [(PXStoryChromeLayout *)self _actionPerformer];
  [v3 dismissStoryViewController];
}

- (void)_handleMuteToggleButton:(id)a3
{
  v3 = [(PXStoryChromeLayout *)self _actionPerformer];
  [v3 toggleMuteState];
}

- (void)_handleErrorIndicator:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryChromeLayout *)self _actionPerformer];
  [v5 performActionForChromeActionMenuItem:13 withValue:0 sender:v4 presentationSource:0];
}

- (void)_handleFavoriteButton:(id)a3
{
  v3 = [(PXStoryChromeLayout *)self _actionPerformer];
  [v3 toggleFavoriteState];
}

- (void)_handleShareButton:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryChromeLayout *)self viewModel];
  v6 = [v5 isAtPlaybackEnd];

  if (v6)
  {
    v7 = [(PXStoryChromeLayout *)self viewModel];
    [v7 performChanges:&__block_literal_global_584];
  }

  v8 = [(PXStoryChromeLayout *)self _actionPerformer];
  [v8 presentSharingViewWithSender:v4];
}

- (void)_handleReplayButton:(id)a3
{
  v3 = [(PXStoryChromeLayout *)self viewModel];
  [v3 performChanges:&__block_literal_global_582_92640];
}

- (void)_handleEditColorGradeButton:(id)a3
{
  v3 = [(PXStoryChromeLayout *)self _actionPerformer];
  [v3 presentColorGradeEditor];
}

- (void)_handleEditMusicButton:(id)a3
{
  v3 = [(PXStoryChromeLayout *)self _actionPerformer];
  [v3 presentMusicEditor];
}

- (void)_handlePlayButton:(id)a3
{
  v3 = [(PXStoryChromeLayout *)self viewModel];
  if ([v3 isAtPlaybackEnd])
  {
    [v3 performChanges:&__block_literal_global_92642];
  }

  else
  {
    v4 = [v3 mainModel];
    v5 = [v4 desiredPlayState];
    v6 = 1;
    if (v5)
    {
      v6 = v5;
    }

    if (v5 == 1)
    {
      v6 = 0;
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__PXStoryChromeLayout__handlePlayButton___block_invoke_2;
    v7[3] = &__block_descriptor_40_e31_v16__0___PXStoryMutableModel__8l;
    v7[4] = v6;
    [v4 performChanges:v7];
  }
}

- (id)_actionPerformer
{
  v2 = [(PXStoryChromeLayout *)self viewModel];
  v3 = [v2 actionPerformer];

  return v3;
}

- (id)imageConfigurationAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  v8 = [(PXStoryChromeLayout *)self viewLayoutSpec];
  v9 = v8;
  if (self->_leftEdgeHighlightSpriteIndex != a3 && self->_rightEdgeHighlightSpriteIndex != a3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXStoryChromeLayout.m" lineNumber:1185 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = [v8 rightEdgeHighlightImageConfiguration];

  return v10;
}

- (UIEdgeInsets)paddingForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = *off_1E77220A0;
  v5 = *(off_1E77220A0 + 1);
  v6 = *(off_1E77220A0 + 2);
  v7 = *(off_1E77220A0 + 3);
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = [(PXStoryChromeLayout *)self attributedStringForSpriteAtIndex:*&a3 inLayout:a4];
  v5 = [v4 string];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F1741150;
  }

  v8 = v7;

  return v7;
}

- (id)attributedStringForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_titleSpriteIndex == a3)
  {
    v8 = [(PXStoryChromeLayout *)self viewModel];
    v9 = [v8 displayTitle];
  }

  else
  {
    if (self->_subtitleSpriteIndex != a3)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXStoryChromeLayout.m" lineNumber:1154 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v8 = [(PXStoryChromeLayout *)self viewModel];
    v9 = [v8 displaySubtitle];
  }

  v10 = v9;

  return v10;
}

- (void)_menuDidClose
{
  if (self->_shouldInvalidateActionMenuOnClose)
  {
    self->_shouldInvalidateActionMenuOnClose = 0;
    [(PXStoryChromeLayout *)self _invalidateActionMenu];
  }
}

- (id)_configurationForButtonWithAction:(SEL)a3 systemImageName:(id)a4 backgroundStyle:(int64_t)a5 label:(id)a6 axLabelKey:(id)a7
{
  v12 = a6;
  v13 = [(PXStoryChromeLayout *)self _configurationForButtonWithAction:a3 systemImageName:a4 backgroundStyle:a5 axLabelKey:a7];
  [v13 setLabel:v12];

  return v13;
}

- (void)_updateConfigurationUpdatedForPlaybackEnd:(id)a3
{
  v4 = a3;
  v6 = [(PXStoryChromeLayout *)self viewLayoutSpec];
  [v6 playbackEndButtonSystemImageWeight];
  [v4 setPreferredSystemImageWeight:v5];
  [v6 playbackEndButtonSystemImagePointSize];
  [v4 setPreferredSystemImagePointSize:?];
}

- (id)_configurationForBrowserSelectButton
{
  v3 = [(PXStoryChromeLayout *)self viewLayoutSpec];
  v4 = [v3 insideCollectionDetailsView];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  v6 = [(PXStoryChromeLayout *)self _configurationForButtonWithAction:sel__handleBrowserSelectButton_ systemImageName:@"checkmark" backgroundStyle:v5 axLabelKey:@"InteractiveMemoryButtonAccessibilityLabelBrowserSelect"];
  v7 = v6;
  if (v4)
  {
    [v6 setPreferredSystemImageWeight:6];
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v7 setSolidBackgroundColor:v8];
  }

  return v7;
}

- (id)_configurationForBrowserAddPhotosButton
{
  v3 = [(PXStoryChromeLayout *)self viewLayoutSpec];
  v4 = [v3 insideCollectionDetailsView];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  v6 = [(PXStoryChromeLayout *)self _configurationForButtonWithAction:sel__handleBrowserAddPhotosButton_ systemImageName:@"plus" backgroundStyle:v5 axLabelKey:@"InteractiveMemoryButtonAccessibilityLabelAddPhotos"];
  v7 = v6;
  if (v4)
  {
    [v6 setPreferredSystemImageWeight:6];
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v7 setSolidBackgroundColor:v8];
  }

  return v7;
}

- (id)_configurationForCloseButtonWithAction:(SEL)a3 systemImageName:(id)a4 axLabelKey:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(PXStoryChromeLayout *)self viewLayoutSpec];
  v11 = -[PXStoryChromeLayout _configurationForButtonWithAction:systemImageName:backgroundStyle:axLabelKey:](self, "_configurationForButtonWithAction:systemImageName:backgroundStyle:axLabelKey:", a3, v9, [v10 insideCollectionDetailsView], v8);

  [v11 setPreferredSystemImageWeight:6];

  return v11;
}

- (id)_configurationForShareButtonWithAction:(SEL)a3 systemImageName:(id)a4 backgroundStyle:(int64_t)a5 axLabelKey:(id)a6
{
  v7 = [(PXStoryChromeLayout *)self _configurationForButtonWithAction:a3 systemImageName:a4 backgroundStyle:0 axLabelKey:a6];
  v8 = [(PXStoryChromeLayout *)self viewModel];
  v9 = [v8 mainConfiguration];
  v10 = [v9 assetCollection];
  [v7 setEnabled:{objc_msgSend(v10, "px_canContainPotentiallySensitiveContent") ^ 1}];

  return v7;
}

- (id)_configurationForButtonWithAction:(SEL)a3 systemImageName:(id)a4 backgroundStyle:(int64_t)a5 axLabelKey:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = objc_alloc_init(PXStoryChromeButtonConfiguration);
  [(PXStoryChromeButtonConfiguration *)v12 setBackgroundStyle:a5];
  [(PXStoryChromeButtonConfiguration *)v12 setSystemImageName:v11];

  [(PXStoryChromeButtonConfiguration *)v12 setAction:a3];
  [(PXStoryChromeButtonConfiguration *)v12 setTarget:self];
  v13 = [(PXStoryChromeLayout *)self viewLayoutSpec];
  v14 = [v13 chromeButtonSpec];
  [(PXStoryChromeButtonConfiguration *)v12 setSpec:v14];

  if (v10)
  {
    v15 = PXLocalizedStringFromTable(v10, @"PhotosUICore");
    [(PXStoryChromeButtonConfiguration *)v12 setAxLabel:v15];
  }

  return v12;
}

- (id)_configurationForLargeButtonWithAction:(SEL)a3 systemImageName:(id)a4 backgroundStyle:(int64_t)a5 axLabelKey:(id)a6
{
  [(PXStoryChromeLayout *)self _configurationForButtonWithAction:a3 systemImageName:a4 backgroundStyle:a5 axLabelKey:a6];
  objc_claimAutoreleasedReturnValue();
  sub_1A524D1E4();
}

- (id)_buttonConfigurationForSpriteIndex:(unsigned int)a3
{
  v6 = [(PXStoryChromeLayout *)self viewLayoutSpec];
  v7 = v6;
  if (self->_replayButtonSpriteIndex == a3)
  {
    v8 = [v6 replayButtonImageName];
    v9 = -[PXStoryChromeLayout _configurationForButtonWithAction:systemImageName:backgroundStyle:label:axLabelKey:](self, "_configurationForButtonWithAction:systemImageName:backgroundStyle:label:axLabelKey:", sel__handleReplayButton_, v8, [v7 defaultChromeButtonBackgroundStyle], 0, @"InteractiveMemoryButtonAccessibilityLabelReplay");
LABEL_3:
    v10 = v9;

    goto LABEL_16;
  }

  if (self->_shareButtonSpriteIndex == a3)
  {
    v10 = [(PXStoryChromeLayout *)self _configurationForShareButtonWithAction:sel__handleShareButton_ systemImageName:@"square.and.arrow.up" backgroundStyle:0 axLabelKey:@"InteractiveMemoryShareButtonLabel"];
    [v7 shareButtonExtraOffset];
    [v10 setOffset:?];
    goto LABEL_16;
  }

  if (self->_browserGridButtonSpriteIndex == a3)
  {
    v11 = sel__handleBrowserGridButton_;
    v12 = [v6 defaultChromeButtonBackgroundStyle];
    v13 = @"rectangle.grid.3x2.fill";
    v14 = @"InteractiveMemoryButtonAccessibilityLabelBrowse";
LABEL_8:
    v15 = [(PXStoryChromeLayout *)self _configurationForLargeButtonWithAction:v11 systemImageName:v13 backgroundStyle:v12 axLabelKey:v14];
LABEL_15:
    v10 = v15;
    goto LABEL_16;
  }

  if (self->_browserAddPhotosButtonSpriteIndex == a3)
  {
    v15 = [(PXStoryChromeLayout *)self _configurationForBrowserAddPhotosButton];
    goto LABEL_15;
  }

  if (self->_browserSelectButtonSpriteIndex == a3)
  {
    v15 = [(PXStoryChromeLayout *)self _configurationForBrowserSelectButton];
    goto LABEL_15;
  }

  if (self->_fullsizePlayerButtonSpriteIndex == a3)
  {
    v15 = -[PXStoryChromeLayout _configurationForButtonWithAction:systemImageName:backgroundStyle:label:axLabelKey:](self, "_configurationForButtonWithAction:systemImageName:backgroundStyle:label:axLabelKey:", sel__handleToggleViewModeButton_, @"play.circle.fill", [v6 defaultChromeButtonBackgroundStyle], 0, @"InteractiveMemoryButtonAccessibilityLabelPlay");
    goto LABEL_15;
  }

  if (self->_closeButtonSpriteIndex == a3)
  {
    v8 = [v6 closeButtonImageName];
    v9 = [(PXStoryChromeLayout *)self _configurationForCloseButtonWithAction:sel__handleCloseButton_ systemImageName:v8 axLabelKey:@"InteractiveMemoryButtonAccessibilityLabelClose"];
    goto LABEL_3;
  }

  if (self->_closeBrowserButtonSpriteIndex == a3)
  {
    v15 = [(PXStoryChromeLayout *)self _configurationForCloseButtonWithAction:sel__handleCloseBrowserButton_ systemImageName:@"chevron.backward" axLabelKey:@"PXBack"];
    goto LABEL_15;
  }

  if (self->_aspectModeButtonIndex == a3)
  {
    v17 = [(PXStoryChromeLayout *)self viewModel];
    v18 = [v17 mainModel];
    v19 = [v18 shouldAspectFitCurrentSegment];
    v20 = @"rectangle.arrowtriangle.2.inward";
    if (v19)
    {
      v20 = @"rectangle.arrowtriangle.2.outward";
    }

    v21 = v20;

    v10 = -[PXStoryChromeLayout _configurationForButtonWithAction:systemImageName:backgroundStyle:label:axLabelKey:](self, "_configurationForButtonWithAction:systemImageName:backgroundStyle:label:axLabelKey:", sel__handleAspectModeButton_, v21, [v7 defaultChromeButtonBackgroundStyle], 0, 0);
LABEL_27:

    goto LABEL_16;
  }

  if (self->_errorIndicatorSpriteIndex == a3)
  {
    v22 = sel__handleErrorIndicator_;
    v23 = [v6 nonblurredChromeButtonBackgroundStyle];
    v24 = @"exclamationmark.circle";
    v25 = @"InteractiveMemoryButtonAccessibilityLabelError";
    goto LABEL_30;
  }

  if (self->_muteToggleButtonSpriteIndex == a3)
  {
    v26 = [(PXStoryChromeLayout *)self viewModel];
    v27 = [v26 isMuted];

    if (v27)
    {
      v28 = @"speaker.slash";
    }

    else
    {
      v28 = @"speaker.wave.2";
    }

    if (v27)
    {
      v29 = @"InteractiveMemoryButtonAccessibilityLabelUnmute";
    }

    else
    {
      v29 = @"InteractiveMemoryButtonAccessibilityLabelMute";
    }

    v10 = [(PXStoryChromeLayout *)self _configurationForButtonWithAction:sel__handleMuteToggleButton_ systemImageName:v28 backgroundStyle:0 axLabelKey:v29];
    v30 = [MEMORY[0x1E6982288] replaceOffUpTransition];
    v31 = [v30 transitionWithByLayer];
    [v10 setSymbolTransition:v31];

    goto LABEL_16;
  }

  if (self->_styleSwitcherButtonSpriteIndex == a3)
  {
    v11 = sel__handleAutoEditButton_;
    v12 = [v6 defaultChromeButtonBackgroundStyle];
    v13 = @"music.and.sparkles";
    v14 = @"InteractiveMemoryButtonAccessibilityLabelStyles";
    goto LABEL_8;
  }

  if (self->_playbackEndReplayButtonSpriteIndex == a3)
  {
    if ([v6 onlyShowReplayEndButtonAtTopOfTitle])
    {
      v32 = [v7 defaultChromeButtonBackgroundStyle];
    }

    else
    {
      v32 = 0;
    }

    v34 = sel__handleReplayButton_;
    v35 = @"arrow.counterclockwise";
    v36 = @"InteractiveMemoryButtonAccessibilityLabelReplay";
    v37 = self;
    goto LABEL_53;
  }

  if (self->_playbackEndShareButtonSpriteIndex == a3)
  {
    v33 = [(PXStoryChromeLayout *)self _configurationForShareButtonWithAction:sel__handleShareButton_ systemImageName:@"square.and.arrow.up" backgroundStyle:0 axLabelKey:@"InteractiveMemoryShareButtonLabel"];
LABEL_54:
    v38 = v33;
    v39 = self;
    v10 = v38;
    [(PXStoryChromeLayout *)v39 _updateConfigurationUpdatedForPlaybackEnd:v38];
    goto LABEL_16;
  }

  if (self->_playbackEndFavoriteButtonSpriteIndex == a3)
  {
    v34 = sel__handleFavoriteButton_;
    v35 = @"heart";
    v36 = @"InteractiveMemoryButtonAccessibilityLabelFavorite";
LABEL_52:
    v37 = self;
    v32 = 0;
LABEL_53:
    v33 = [(PXStoryChromeLayout *)v37 _configurationForButtonWithAction:v34 systemImageName:v35 backgroundStyle:v32 axLabelKey:v36];
    goto LABEL_54;
  }

  if (self->_playbackEndUnfavoriteButtonSpriteIndex == a3)
  {
    v34 = sel__handleFavoriteButton_;
    v35 = @"heart.fill";
    v36 = @"InteractiveMemoryButtonAccessibilityLabelUnfavorite";
    goto LABEL_52;
  }

  if (self->_actionMenuButtonSpriteIndex != a3)
  {
    if (self->_toggleFavoriteButtonSpriteIndex == a3)
    {
      v45 = [(PXStoryChromeLayout *)self viewModel];
      v46 = [v45 mainModel];
      v47 = [v46 currentAssetCollectionIsFavorite];

      v48 = v47 == 0;
      if (v47)
      {
        v49 = @"heart.fill";
      }

      else
      {
        v49 = @"heart";
      }

      v50 = @"InteractiveMemoryButtonAccessibilityLabelUnfavorite";
      if (v48)
      {
        v50 = @"InteractiveMemoryButtonAccessibilityLabelFavorite";
      }

      v51 = v50;
      v21 = v49;
      v10 = -[PXStoryChromeLayout _configurationForButtonWithAction:systemImageName:backgroundStyle:axLabelKey:](self, "_configurationForButtonWithAction:systemImageName:backgroundStyle:axLabelKey:", sel__handleFavoriteButton_, v21, [v7 defaultChromeButtonBackgroundStyle], v51);

      goto LABEL_27;
    }

    if (self->_editMusicButtonSpriteIndex == a3)
    {
      v22 = sel__handleEditMusicButton_;
      v23 = [v6 defaultChromeButtonBackgroundStyle];
      v24 = @"music.badge.plus";
      v25 = @"InteractiveMemoryButtonAccessibilityLabelEditMusic";
    }

    else
    {
      if (self->_editColorGradeButtonSpriteIndex != a3)
      {
        v52 = [MEMORY[0x1E696AAA8] currentHandler];
        [v52 handleFailureInMethod:a2 object:self file:@"PXStoryChromeLayout.m" lineNumber:1061 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v22 = sel__handleEditColorGradeButton_;
      v23 = [v6 defaultChromeButtonBackgroundStyle];
      v24 = @"camera.filters";
      v25 = @"InteractiveMemoryButtonAccessibilityLabelEditColorGrade";
    }

LABEL_30:
    v15 = [(PXStoryChromeLayout *)self _configurationForButtonWithAction:v22 systemImageName:v24 backgroundStyle:v23 axLabelKey:v25];
    goto LABEL_15;
  }

  v40 = [v6 actionMenuButtonImageName];
  v41 = -[PXStoryChromeLayout _configurationForButtonWithAction:systemImageName:backgroundStyle:axLabelKey:](self, "_configurationForButtonWithAction:systemImageName:backgroundStyle:axLabelKey:", 0, v40, [v7 nonblurredChromeButtonBackgroundStyle], @"InteractiveMemoryButtonAccessibilityLabelActionMenu");

  objc_initWeak(&location, self);
  v42 = [(PXStoryChromeLayout *)self viewModel];
  v43 = [PXMenuBuilder defaultStoryActionsMenuWithViewModel:v42];
  v53 = MEMORY[0x1E69E9820];
  v54 = 3221225472;
  v55 = __58__PXStoryChromeLayout__buttonConfigurationForSpriteIndex___block_invoke;
  v56 = &unk_1E774C318;
  objc_copyWeak(&v57, &location);
  v44 = [v43 onClose:&v53];
  [v41 setMenu:{v44, v53, v54, v55, v56}];

  objc_destroyWeak(&v57);
  objc_destroyWeak(&location);
  v10 = v41;
LABEL_16:

  return v10;
}

void __58__PXStoryChromeLayout__buttonConfigurationForSpriteIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _menuDidClose];
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (self->_playButtonSpriteIndex == v4)
  {
    v7 = [PXStoryPlayButtonConfiguration alloc];
    v8 = [(PXStoryChromeLayout *)self viewModel];
    v9 = [(PXStoryPlayButtonConfiguration *)v7 initWithViewModel:v8];

    [(PXStoryBufferingStatusViewConfiguration *)v9 setTarget:self];
    [(PXStoryBufferingStatusViewConfiguration *)v9 setAction:sel__handlePlayButton_];
    v10 = [(PXStoryChromeLayout *)self viewLayoutSpec];
    v11 = [v10 playButtonSpec];
    [(PXStoryBufferingStatusViewConfiguration *)v9 setSpec:v11];

LABEL_5:
    goto LABEL_6;
  }

  if (self->_bufferingIndicatorSpriteIndex == v4)
  {
    v9 = objc_alloc_init(PXStoryBufferingStatusViewConfiguration);
    v10 = [(PXStoryChromeLayout *)self viewLayoutSpec];
    -[PXStoryBufferingStatusViewConfiguration setWantsBackground:](v9, "setWantsBackground:", [v10 bufferingIndicatorWantsBackground]);
    goto LABEL_5;
  }

  if (self->_chromeButtonFocusGuideSpriteIndex == v4)
  {
    v13 = objc_alloc_init(PXGFocusContainerGuideViewConfiguration);
  }

  else
  {
    if (self->_infoPanelSpriteIndex == v4)
    {
      v9 = objc_alloc_init(PXStoryTVInfoPanelViewConfiguration);
      v10 = [(PXStoryChromeLayout *)self viewModel];
      [(PXStoryBufferingStatusViewConfiguration *)v9 setViewModel:v10];
      goto LABEL_5;
    }

    v13 = [(PXStoryChromeLayout *)self _buttonConfigurationForSpriteIndex:v4];
  }

  v9 = v13;
LABEL_6:

  return v9;
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v6 = a4;
  if (self->_playButtonSpriteIndex == a3 || self->_bufferingIndicatorSpriteIndex == a3 || self->_chromeButtonFocusGuideSpriteIndex == a3 || self->_infoPanelSpriteIndex == a3)
  {
    v7 = objc_opt_class();
  }

  else
  {
    v7 = [_TtC12PhotosUICore26PXStoryChromeButtonFactory buttonClassWithGlassEffect:0];
  }

  v8 = v7;

  return v8;
}

- (void)_invalidateAXGroupRole
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryChromeLayout _invalidateAXGroupRole]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryChromeLayout.m" lineNumber:939 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {

    [(PXStoryChromeLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContentAlpha
{
  [(PXStoryChromeLayout *)self alpha];
  v4 = v3;
  v5 = [(PXStoryChromeLayout *)self alphaOverride];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v4 = v7;
  }

  v8 = [(PXStoryChromeLayout *)self viewModel];
  [v8 chromeVisibilityFraction];
  v10 = v9;
  v11 = [(PXStoryChromeLayout *)self mainModel];
  [v11 infoPanelVisibilityFraction];
  v13 = v12;

  LOBYTE(v11) = [v8 isChromeAllowed];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v14 = [(PXStoryChromeLayout *)self localNumberOfSprites];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __42__PXStoryChromeLayout__updateContentAlpha__block_invoke;
  v17[3] = &unk_1E7737538;
  *&v17[7] = v4;
  v17[8] = v10;
  v17[9] = v13;
  v18 = v11;
  v17[4] = self;
  v17[5] = v23;
  v17[6] = &v19;
  [(PXStoryChromeLayout *)self modifySpritesInRange:v14 << 32 state:v17];
  v15 = v20[3];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42__PXStoryChromeLayout__updateContentAlpha__block_invoke_3;
  v16[3] = &unk_1E7737560;
  v16[4] = v23;
  v16[5] = &v19;
  v16[6] = v15;
  [v8 performChanges:v16];
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

void __42__PXStoryChromeLayout__updateContentAlpha__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*(a1 + 32) itemControllers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__PXStoryChromeLayout__updateContentAlpha__block_invoke_2;
  v7[3] = &unk_1E7737510;
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v13 = *(a1 + 80);
  v12 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

void __42__PXStoryChromeLayout__updateContentAlpha__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  [v4 setBufferingIndicatorVisibilityFraction:v3];
  [v4 setMuteToggleButtonVisibilityFraction:*(*(*(a1 + 40) + 8) + 24)];
  [v4 setMaximumIndividualTopChromeItemVisibilityFraction:*(a1 + 48)];
}

void __42__PXStoryChromeLayout__updateContentAlpha__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  [v5 alpha];
  v8 = v7;

  v9 = v8 * *(a1 + 56);
  v10 = *(a1 + 32);
  if (v10[276] != v6 && v10[275] != v6 && v10[278] != v6 && v10[258] != v6 && v10[259] != v6)
  {
    v11 = *(a1 + 64);
    if (v10[281] != v6)
    {
      v11 = v11 * (1.0 - *(a1 + 72));
    }

    v9 = v9 * v11;
  }

  if (!*(a1 + 88))
  {
    v9 = 0.0;
  }

  v12 = v9;
  *(*(a1 + 80) + 160 * v6) = v12;
  v13 = *(a1 + 32);
  if (*(v13 + 1112) == v6)
  {
    v14 = 40;
  }

  else
  {
    if (*(v13 + 1036) != v6)
    {
      return;
    }

    v14 = 48;
  }

  *(*(*(a1 + v14) + 8) + 24) = v9;
}

- (void)_invalidateContentAlpha
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryChromeLayout _invalidateContentAlpha]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryChromeLayout.m" lineNumber:888 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXStoryChromeLayout *)self setNeedsUpdate];
  }
}

- (void)_configureUnifiedContentLayout:(id)a3
{
  v4 = a3;
  [(PXStoryChromeLayout *)self viewModel];
  objc_claimAutoreleasedReturnValue();
  [(PXStoryChromeLayout *)self mainLayoutSpec];
  objc_claimAutoreleasedReturnValue();
  [(PXStoryChromeLayout *)self displayScale];
  v7 = *MEMORY[0x1E695EFF8];
  [(PXStoryChromeLayout *)self referenceSize];
  [v4 chromeButtonSize];
  [v4 chromeButtonPadding];
  [(PXStoryChromeLayout *)self referenceDepth];
  v6 = [(PXStoryChromeLayout *)self mainModel];
  [v6 infoPanelVisibilityFraction];

  [v4 infoPanelAnimationDistance];
  PXFloatByLinearlyInterpolatingFloats();
}

void __54__PXStoryChromeLayout__configureUnifiedContentLayout___block_invoke()
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v3[3] = 0x7FEFFFFFFFFFFFFFLL;
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x4010000000;
  v0[3] = &unk_1A561E057;
  v1 = 0u;
  v2 = 0u;
  PXRectWithSizeAlignedToRectEdgesWithPadding();
}

double __54__PXStoryChromeLayout__configureUnifiedContentLayout___block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(*(a1 + 40) + 8);
  x = v3[1].origin.x;
  y = v3[1].origin.y;
  width = v3[1].size.width;
  height = v3[1].size.height;
  if (a2)
  {
    MinX = CGRectGetMinX(v3[1]);
    [*(a1 + 32) interChromeButtonSpacing];
    *(*(*(a1 + 40) + 8) + 32) = MinX - v9 - *(*(*(a1 + 40) + 8) + 48);
  }

  v10 = *(*(*(a1 + 48) + 8) + 24);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v11 = CGRectGetMinX(v13);
  if (v10 < v11)
  {
    v11 = v10;
  }

  *(*(*(a1 + 48) + 8) + 24) = v11;
  return x;
}

float32x2_t __54__PXStoryChromeLayout__configureUnifiedContentLayout___block_invoke_3(uint64_t a1, unsigned int a2)
{
  v16.origin.x = (*(*(a1 + 40) + 16))();
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v8 = *(a1 + 48) + 32 * a2;
  v9 = *(a1 + 56);
  MidX = CGRectGetMidX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MidY = CGRectGetMidY(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v15 = CGRectGetWidth(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v12 = CGRectGetHeight(v19);
  v13.f64[0] = v15;
  v13.f64[1] = v12;
  result = vcvt_f32_f64(v13);
  *v8 = MidX;
  *(v8 + 8) = MidY;
  *(v8 + 16) = v9;
  *(v8 + 24) = result;
  *(*(a1 + 64) + 40 * a2 + 32) = *(*(a1 + 32) + 1144);
  return result;
}

uint64_t __54__PXStoryChromeLayout__configureUnifiedContentLayout___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) chromeItems];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

double __54__PXStoryChromeLayout__configureUnifiedContentLayout___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) attributedStringForSpriteAtIndex:a2 inLayout:*(a1 + 32)];
  if ([v5 length] && (objc_msgSend(v5, "px_sizeWithProposedWidth:maximumLines:drawingOptions:", a3, 1, *(a1 + 40)), v6 > 0.0))
  {
    v7 = ceil(v6);
  }

  else
  {
    v7 = *MEMORY[0x1E695F060];
  }

  return v7;
}

double __54__PXStoryChromeLayout__configureUnifiedContentLayout___block_invoke_6(uint64_t a1)
{
  CGRectGetHeight(*(a1 + 48));
  [*(a1 + 32) scrubberVerticalPadding];
  [*(a1 + 40) scrubberRegularAssetSize];
  return 80.0;
}

- (void)_configureDefaultContentLayout:(id)a3
{
  v4 = a3;
  [(PXStoryChromeLayout *)self viewModel];
  objc_claimAutoreleasedReturnValue();
  [(PXStoryChromeLayout *)self referenceSize];
  [(PXStoryChromeLayout *)self displayScale];
  [v4 chromeButtonSize];
  [v4 chromeButtonPadding];
  [(PXStoryChromeLayout *)self referenceDepth];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x4010000000;
  v5[3] = &unk_1A561E057;
  v6 = 0u;
  v7 = 0u;
  PXRectWithSizeAlignedToRectEdgesWithPadding();
}

double __54__PXStoryChromeLayout__configureDefaultContentLayout___block_invoke(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 40) + 8);
  x = v2[1].origin.x;
  if (a2)
  {
    MinX = CGRectGetMinX(v2[1]);
    [*(a1 + 32) interChromeButtonSpacing];
    *(*(*(a1 + 40) + 8) + 32) = MinX - v6 - *(*(*(a1 + 40) + 8) + 48);
  }

  return x;
}

void __54__PXStoryChromeLayout__configureDefaultContentLayout___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v120 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) styleSwitcherButtonPlacement] == 4)
  {
    v8 = *(a1 + 56);
    v9 = [*(a1 + 40) _buttonConfigurationForSpriteIndex:*(*(a1 + 40) + 1072)];
    v10 = (*(v8 + 16))(v8, v9, 0);
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = a3 + 32 * *(*(a1 + 40) + 1072);
    v18 = *(a1 + 96);
    v121.origin.x = v10;
    v121.origin.y = v12;
    v121.size.width = v14;
    v121.size.height = v16;
    MidX = CGRectGetMidX(v121);
    v122.origin.x = v10;
    v122.origin.y = v12;
    v122.size.width = v14;
    v122.size.height = v16;
    MidY = CGRectGetMidY(v122);
    v123.origin.x = v10;
    v123.origin.y = v12;
    v123.size.width = v14;
    v123.size.height = v16;
    Width = CGRectGetWidth(v123);
    v124.origin.x = v10;
    v124.origin.y = v12;
    v124.size.width = v14;
    v124.size.height = v16;
    Height = CGRectGetHeight(v124);
    v22.f64[0] = Width;
    v22.f64[1] = Height;
    *v17 = MidX;
    *(v17 + 8) = MidY;
    *(v17 + 16) = v18;
    *(v17 + 24) = vcvt_f32_f64(v22);
    *(a5 + 40 * *(*(a1 + 40) + 1072) + 32) = *(*(a1 + 40) + 1144);
  }

  v125.origin.x = (*(*(a1 + 64) + 16))();
  x = v125.origin.x;
  y = v125.origin.y;
  v25 = v125.size.width;
  v26 = v125.size.height;
  v27 = a3 + 32 * *(*(a1 + 40) + 1056);
  v28 = *(a1 + 96);
  v29 = CGRectGetMidX(v125);
  v126.origin.x = x;
  v126.origin.y = y;
  v126.size.width = v25;
  v126.size.height = v26;
  v30 = CGRectGetMidY(v126);
  v127.origin.x = x;
  v127.origin.y = y;
  v127.size.width = v25;
  v127.size.height = v26;
  v110 = CGRectGetWidth(v127);
  v128.origin.x = x;
  v128.origin.y = y;
  v128.size.width = v25;
  v128.size.height = v26;
  v31 = CGRectGetHeight(v128);
  v32.f64[0] = v110;
  v32.f64[1] = v31;
  *v27 = v29;
  *(v27 + 8) = v30;
  *(v27 + 16) = v28;
  *(v27 + 24) = vcvt_f32_f64(v32);
  *(a5 + 40 * *(*(a1 + 40) + 1056) + 32) = *(*(a1 + 40) + 1144);
  v33 = [*(a1 + 40) viewLayoutSpec];
  LOBYTE(v27) = [v33 insideCollectionDetailsView];

  if ((v27 & 1) == 0)
  {
    v34 = a3 + 32 * *(*(a1 + 40) + 1060);
    v35 = *(a1 + 96);
    v129.origin.x = x;
    v129.origin.y = y;
    v129.size.width = v25;
    v129.size.height = v26;
    v36 = CGRectGetMidX(v129);
    v130.origin.x = x;
    v130.origin.y = y;
    v130.size.width = v25;
    v130.size.height = v26;
    v37 = CGRectGetMidY(v130);
    v131.origin.x = x;
    v131.origin.y = y;
    v131.size.width = v25;
    v131.size.height = v26;
    v111 = CGRectGetWidth(v131);
    v132.origin.x = x;
    v132.origin.y = y;
    v132.size.width = v25;
    v132.size.height = v26;
    v38 = CGRectGetHeight(v132);
    v39.f64[0] = v111;
    v39.f64[1] = v38;
    *v34 = v36;
    *(v34 + 8) = v37;
    *(v34 + 16) = v35;
    *(v34 + 24) = vcvt_f32_f64(v39);
    *(a5 + 40 * *(*(a1 + 40) + 1060) + 32) = *(*(a1 + 40) + 1144);
  }

  v40 = a3 + 32 * *(*(a1 + 40) + 1068);
  v41 = *(a1 + 96);
  v133.origin.x = x;
  v133.origin.y = y;
  v133.size.width = v25;
  v133.size.height = v26;
  v42 = CGRectGetMidX(v133);
  v134.origin.x = x;
  v134.origin.y = y;
  v134.size.width = v25;
  v134.size.height = v26;
  v43 = CGRectGetMidY(v134);
  v135.origin.x = x;
  v135.origin.y = y;
  v135.size.width = v25;
  v135.size.height = v26;
  v112 = CGRectGetWidth(v135);
  v136.origin.x = x;
  v136.origin.y = y;
  v136.size.width = v25;
  v136.size.height = v26;
  v44 = CGRectGetHeight(v136);
  v45.f64[0] = v112;
  v45.f64[1] = v44;
  *v40 = v42;
  *(v40 + 8) = v43;
  *(v40 + 16) = v41;
  *(v40 + 24) = vcvt_f32_f64(v45);
  *(a5 + 40 * *(*(a1 + 40) + 1068) + 32) = *(*(a1 + 40) + 1144);
  if ([*(a1 + 32) playButtonPlacement] == 1)
  {
    (*(*(a1 + 64) + 16))();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = CGRectGetMidX(*(a1 + 104)) + v48 * -0.5;
  }

  else if ([*(a1 + 32) playButtonPlacement] == 4)
  {
    v53 = *(*(a1 + 88) + 8);
    v52 = v53[4];
    v47 = v53[5];
    v49 = v53[6];
    v51 = v53[7];
  }

  else
  {
    v52 = (*(*(a1 + 64) + 16))();
    v47 = v54;
    v49 = v55;
    v51 = v56;
  }

  if ([*(a1 + 32) shouldVerticallyCenterPlayButton])
  {
    v47 = CGRectGetMidY(*(a1 + 104)) + v51 * -0.5;
  }

  v57 = (a1 + 40);
  v58 = a3 + 32 * *(*(a1 + 40) + 1024);
  v59 = *(a1 + 96);
  v137.origin.x = v52;
  v137.origin.y = v47;
  v137.size.width = v49;
  v137.size.height = v51;
  v60 = CGRectGetMidX(v137);
  v138.origin.x = v52;
  v138.origin.y = v47;
  v138.size.width = v49;
  v138.size.height = v51;
  v61 = CGRectGetMidY(v138);
  v139.origin.x = v52;
  v139.origin.y = v47;
  v139.size.width = v49;
  v139.size.height = v51;
  v113 = CGRectGetWidth(v139);
  v140.origin.x = v52;
  v140.origin.y = v47;
  v140.size.width = v49;
  v140.size.height = v51;
  v62 = CGRectGetHeight(v140);
  v63.f64[0] = v113;
  v63.f64[1] = v62;
  *v58 = v60;
  *(v58 + 8) = v61;
  *(v58 + 16) = v59;
  *(v58 + 24) = vcvt_f32_f64(v63);
  *(a5 + 40 * *(*v57 + 256) + 32) = *(*v57 + 572);
  v64 = *(a1 + 56);
  v65 = [*v57 _buttonConfigurationForSpriteIndex:*(*v57 + 257)];
  v66 = (*(v64 + 16))(v64, v65, 1);
  v68 = v67;
  v70 = v69;
  v72 = v71;

  v73 = a3 + 32 * *(*(a1 + 40) + 1028);
  v74 = *(a1 + 96);
  v141.origin.x = v66;
  v141.origin.y = v68;
  v141.size.width = v70;
  v141.size.height = v72;
  v75 = CGRectGetMidX(v141);
  v142.origin.x = v66;
  v142.origin.y = v68;
  v142.size.width = v70;
  v142.size.height = v72;
  v76 = CGRectGetMidY(v142);
  v143.origin.x = v66;
  v143.origin.y = v68;
  v143.size.width = v70;
  v143.size.height = v72;
  v114 = CGRectGetWidth(v143);
  v144.origin.x = v66;
  v144.origin.y = v68;
  v144.size.width = v70;
  v144.size.height = v72;
  v77 = CGRectGetHeight(v144);
  v78.f64[0] = v114;
  v78.f64[1] = v77;
  *v73 = v75;
  *(v73 + 8) = v76;
  *(v73 + 16) = v74;
  *(v73 + 24) = vcvt_f32_f64(v78);
  *(a5 + 40 * *(*v57 + 257) + 32) = *(*v57 + 572);
  v79 = *(a1 + 56);
  v80 = [*v57 _buttonConfigurationForSpriteIndex:*(*v57 + 282)];
  v81 = (*(v79 + 16))(v79, v80, 1);
  v83 = v82;
  v85 = v84;
  v87 = v86;

  v88 = a3 + 32 * *(*(a1 + 40) + 1128);
  v89 = *(a1 + 96);
  v145.origin.x = v81;
  v145.origin.y = v83;
  v145.size.width = v85;
  v145.size.height = v87;
  v90 = CGRectGetMidX(v145);
  v146.origin.x = v81;
  v146.origin.y = v83;
  v146.size.width = v85;
  v146.size.height = v87;
  v91 = CGRectGetMidY(v146);
  v147.origin.x = v81;
  v147.origin.y = v83;
  v147.size.width = v85;
  v147.size.height = v87;
  v115 = CGRectGetWidth(v147);
  v148.origin.x = v81;
  v148.origin.y = v83;
  v148.size.width = v85;
  v148.size.height = v87;
  v92 = CGRectGetHeight(v148);
  v93.f64[0] = v115;
  v93.f64[1] = v92;
  *v88 = v90;
  *(v88 + 8) = v91;
  *(v88 + 16) = v89;
  *(v88 + 24) = vcvt_f32_f64(v93);
  *(a5 + 40 * *(*v57 + 282) + 32) = *(*v57 + 572);
  v94 = *(a1 + 56);
  v95 = [*v57 _buttonConfigurationForSpriteIndex:*(*v57 + 283)];
  v96 = (*(v94 + 16))(v94, v95, 1);
  v98 = v97;
  v100 = v99;
  v102 = v101;

  v103 = a3 + 32 * *(*(a1 + 40) + 1132);
  v104 = *(a1 + 96);
  v149.origin.x = v96;
  v149.origin.y = v98;
  v149.size.width = v100;
  v149.size.height = v102;
  v105 = CGRectGetMidX(v149);
  v150.origin.x = v96;
  v150.origin.y = v98;
  v150.size.width = v100;
  v150.size.height = v102;
  v106 = CGRectGetMidY(v150);
  v151.origin.x = v96;
  v151.origin.y = v98;
  v151.size.width = v100;
  v151.size.height = v102;
  v116 = CGRectGetWidth(v151);
  v152.origin.x = v96;
  v152.origin.y = v98;
  v152.size.width = v100;
  v152.size.height = v102;
  v107 = CGRectGetHeight(v152);
  v108.f64[0] = v116;
  v108.f64[1] = v107;
  *v103 = v105;
  *(v103 + 8) = v106;
  *(v103 + 16) = v104;
  *(v103 + 24) = vcvt_f32_f64(v108);
  *(a5 + 40 * *(*v57 + 283) + 32) = *(*v57 + 572);
  v117[0] = 0;
  v117[1] = v117;
  v117[2] = 0x4010000000;
  v117[3] = &unk_1A561E057;
  v118 = 0u;
  v119 = 0u;
  [*(a1 + 32) playbackEndButtonSize];
  [*(a1 + 32) playbackEndButtonPadding];
  PXRectWithSizeAlignedToRectEdgesWithPadding();
}

double __54__PXStoryChromeLayout__configureDefaultContentLayout___block_invoke_6(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = v2[4];
  v7.origin.x = v3;
  v7.origin.y = v2[5];
  v7.size.width = v2[6];
  v7.size.height = v2[7];
  MaxX = CGRectGetMaxX(v7);
  [*(a1 + 32) interPlaybackEndButtonSpacing];
  *(*(*(a1 + 40) + 8) + 32) = MaxX + v5;
  return v3;
}

float32x2_t __54__PXStoryChromeLayout__configureDefaultContentLayout___block_invoke_7(uint64_t a1, unsigned int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = *(a1 + 40) + 32 * a2;
  v13 = *(a1 + 48);
  MidX = CGRectGetMidX(*&a3);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  MidY = CGRectGetMidY(v20);
  v21.origin.x = a3;
  v21.origin.y = a4;
  v21.size.width = a5;
  v21.size.height = a6;
  Width = CGRectGetWidth(v21);
  v22.origin.x = a3;
  v22.origin.y = a4;
  v22.size.width = a5;
  v22.size.height = a6;
  Height = CGRectGetHeight(v22);
  v17.f64[0] = Width;
  v17.f64[1] = Height;
  result = vcvt_f32_f64(v17);
  *v12 = MidX;
  *(v12 + 8) = MidY;
  *(v12 + 16) = v13;
  *(v12 + 24) = result;
  *(*(a1 + 56) + 40 * a2 + 32) = *(*(a1 + 32) + 1144);
  return result;
}

double __54__PXStoryChromeLayout__configureDefaultContentLayout___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) _buttonConfigurationForSpriteIndex:a2];
  v7 = (*(v5 + 16))(v5, v6, a3);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  (*(*(a1 + 48) + 16))(v7, v9, v11, v13);
  if (a3)
  {
    v14 = *(*(a1 + 56) + 8);
    v14[4] = v7;
    v14[5] = v9;
    v14[6] = v11;
    v14[7] = v13;
  }

  return v7;
}

double __54__PXStoryChromeLayout__configureDefaultContentLayout___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) _buttonConfigurationForSpriteIndex:a2];
  v8 = (*(v6 + 16))(v6, v7, a3);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  (*(*(a1 + 48) + 16))(v8, v10, v12, v14);
  if (a3)
  {
    v15 = *(*(a1 + 56) + 8);
    v15[4] = v8;
    v15[5] = v10;
    v15[6] = v12;
    v15[7] = v14;
  }

  else
  {
    *(*(a1 + 64) + 40 * v4 + 1) = 0;
  }

  return v8;
}

double __54__PXStoryChromeLayout__configureDefaultContentLayout___block_invoke_416(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) attributedStringForSpriteAtIndex:a2 inLayout:*(a1 + 32)];
  if ([v5 length] && (objc_msgSend(v5, "px_sizeWithProposedWidth:maximumLines:drawingOptions:", a3, 1, *(a1 + 40)), v6 > 0.0))
  {
    v7 = ceil(v6);
  }

  else
  {
    v7 = *MEMORY[0x1E695F060];
  }

  return v7;
}

void __54__PXStoryChromeLayout__configureDefaultContentLayout___block_invoke_2_418(uint64_t a1)
{
  if ([*(a1 + 32) wantsRelatedOverlayVisible])
  {
    if ([*(a1 + 40) onlyShowReplayEndButtonAtTopOfTitle])
    {
      CGRectGetMaxY(*(a1 + 80));
    }

    [*(a1 + 40) spacingBetweenPlaybackEndButtonAndTitles];
    CGRectGetMidX(*(a1 + 112));
  }

  else
  {
    [*(a1 + 56) safeAreaInsets];
    CGRectGetMidY(*(*(*(a1 + 72) + 8) + 32));
    v2 = *(a1 + 152);
    if (v2 == 1)
    {
      CGRectGetMidX(*(a1 + 160));
    }

    else
    {
      if (v2)
      {
        v3 = [MEMORY[0x1E696AAA8] currentHandler];
        [v3 handleFailureInMethod:*(a1 + 144) object:*(a1 + 56) file:@"PXStoryChromeLayout.m" lineNumber:715 description:{@"unsupported text alignment %li", *(a1 + 152)}];

        abort();
      }

      CGRectGetMinX(*(a1 + 160));
    }
  }

  sub_1A524D1F4();
}

void __54__PXStoryChromeLayout__configureDefaultContentLayout___block_invoke_3_420(uint64_t a1)
{
  [*(a1 + 32) rightEdgeHighlightImageSize];
  CGRectGetHeight(*(a1 + 40));
  PXSizeScale();
}

- (void)_updateContentLayout
{
  [(PXStoryChromeLayout *)self viewLayoutSpec];
  [objc_claimAutoreleasedReturnValue() shouldUseUnifiedButtonLayout];
  [(PXStoryChromeLayout *)self referenceSize];
  PXRectWithOriginAndSize();
}

- (void)_invalidateContentLayout
{
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryChromeLayout _invalidateContentLayout]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryChromeLayout.m" lineNumber:362 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXStoryChromeLayout *)self setNeedsUpdate];
  }
}

- (void)_invalidateActionMenu
{
  v3 = [(PXStoryChromeLayout *)self viewModel];
  v4 = [v3 isActionMenuOpen];

  if (v4)
  {
    self->_shouldInvalidateActionMenuOnClose = 1;
  }

  else
  {
    ++self->_actionMenuButtonVersion;

    [(PXStoryChromeLayout *)self _invalidateContentLayout];
  }
}

- (void)_updateMainModel
{
  v4 = [(PXStoryChromeLayout *)self viewModel];
  v3 = [v4 mainModel];
  [(PXStoryChromeLayout *)self setMainModel:v3];
}

- (void)_invalidateMainModel
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryChromeLayout _invalidateMainModel]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryChromeLayout.m" lineNumber:340 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {

    [(PXStoryChromeLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryChromeLayout;
  [(PXGCompositeLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryChromeLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryChromeLayout.m" lineNumber:336 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
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
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryChromeLayout update]"];
      [v8 handleFailureInFunction:v9 file:@"PXStoryChromeLayout.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 4;
    if ((needsUpdate & 4) != 0)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFBLL;
      [(PXStoryChromeLayout *)self _updateMainModel];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryChromeLayout update]"];
        [v10 handleFailureInFunction:v11 file:@"PXStoryChromeLayout.m" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 1uLL;
    if (v5)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryChromeLayout *)self _updateContentLayout];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryChromeLayout update]"];
      [v12 handleFailureInFunction:v13 file:@"PXStoryChromeLayout.m" lineNumber:324 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v6 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXStoryChromeLayout *)self _updateContentAlpha];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryChromeLayout update]"];
      [v14 handleFailureInFunction:v15 file:@"PXStoryChromeLayout.m" lineNumber:327 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v7 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFF7;
      [(PXStoryChromeLayout *)self _updateAXGroupRole];
      v7 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v7)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryChromeLayout update]"];
      [v16 handleFailureInFunction:v17 file:@"PXStoryChromeLayout.m" lineNumber:330 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v18.receiver = self;
  v18.super_class = PXStoryChromeLayout;
  [(PXGCompositeLayout *)&v18 update];
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryChromeLayout;
  [(PXGCompositeLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryChromeLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryChromeLayout.m" lineNumber:313 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)setAlphaOverride:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_alphaOverride != v5)
  {
    v8 = v5;
    v7 = [(NSNumber *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_alphaOverride, a3);
      [(PXStoryChromeLayout *)self _invalidateContentAlpha];
      v6 = v8;
    }
  }
}

- (void)setRecipeManager:(id)a3
{
  v5 = a3;
  recipeManager = self->_recipeManager;
  if (recipeManager != v5)
  {
    v7 = v5;
    [(PXStoryRecipeManager *)recipeManager unregisterChangeObserver:self context:RecipeManagerObservationContext];
    objc_storeStrong(&self->_recipeManager, a3);
    [(PXStoryRecipeManager *)self->_recipeManager registerChangeObserver:self context:RecipeManagerObservationContext];
    [(PXStoryChromeLayout *)self _invalidateActionMenu];
    v5 = v7;
  }
}

- (void)setMainModel:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_mainModel != v5)
  {
    v10 = v5;
    v7 = [(PXStoryModel *)v5 isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      [(PXStoryModel *)self->_mainModel unregisterChangeObserver:self context:MainModelObservationContext_92631];
      objc_storeStrong(&self->_mainModel, a3);
      [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:MainModelObservationContext_92631];
      v8 = [(PXStoryChromeLayout *)self mainModel];
      v9 = [v8 recipeManager];
      [(PXStoryChromeLayout *)self setRecipeManager:v9];

      [(PXStoryChromeLayout *)self _invalidateActionMenu];
      v6 = v10;
    }
  }
}

- (void)alphaDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryChromeLayout;
  [(PXStoryChromeLayout *)&v3 alphaDidChange];
  [(PXStoryChromeLayout *)self _invalidateContentAlpha];
}

- (void)referenceDepthDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryChromeLayout;
  [(PXGCompositeLayout *)&v3 referenceDepthDidChange];
  [(PXStoryChromeLayout *)self _invalidateContentLayout];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryChromeLayout;
  [(PXGCompositeLayout *)&v3 referenceSizeDidChange];
  [(PXStoryChromeLayout *)self _invalidateContentLayout];
}

- (PXStoryRelatedLayoutGenerator)layoutGenerator
{
  layoutGenerator = self->_layoutGenerator;
  if (!layoutGenerator)
  {
    v4 = [PXStoryRelatedLayoutGenerator alloc];
    v5 = [(PXStoryChromeLayout *)self viewModel];
    v6 = [v5 viewLayoutSpec];
    v7 = [v6 relatedLayoutMetrics];
    v8 = [(PXStoryRelatedLayoutGenerator *)v4 initWithMetrics:v7];
    v9 = self->_layoutGenerator;
    self->_layoutGenerator = v8;

    [(PXStoryRelatedLayoutGenerator *)self->_layoutGenerator setItemCount:1];
    v10 = [(PXStoryChromeLayout *)self viewModel];
    v11 = [v10 viewLayoutSpec];
    v12 = [v11 relatedLayoutMetrics];
    [(PXStoryRelatedLayoutGenerator *)self->_layoutGenerator setMetrics:v12];

    layoutGenerator = self->_layoutGenerator;
  }

  return layoutGenerator;
}

- (id)mainLayoutSpec
{
  v2 = [(PXStoryChromeLayout *)self mainModel];
  v3 = [v2 layoutSpec];

  return v3;
}

- (PXStoryViewLayoutSpec)viewLayoutSpec
{
  v2 = [(PXStoryChromeLayout *)self viewModel];
  v3 = [v2 viewLayoutSpec];

  return v3;
}

- (unsigned)_addSpriteForChromeItemController:(id)a3 mediaKind:(unsigned __int8)a4 presentationType:(unsigned __int8)a5
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__PXStoryChromeLayout__addSpriteForChromeItemController_mediaKind_presentationType___block_invoke;
  v11[3] = &__block_descriptor_34_e55_v56__0__PXGSpriteIndexRange_II_8___I_________________16l;
  v12 = a4;
  v13 = a5;
  v6 = a3;
  v7 = [(PXStoryChromeLayout *)self addSpriteWithInitialState:v11];
  [v6 registerChangeObserver:self context:ItemControllerObservationContext];
  v8 = [(PXStoryChromeLayout *)self itemControllers];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  [v8 setObject:v6 forKeyedSubscript:v9];

  return v7;
}

__n128 __84__PXStoryChromeLayout__addSpriteForChromeItemController_mediaKind_presentationType___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(off_1E7722048 + 7);
  v3[6] = *(off_1E7722048 + 6);
  v3[7] = v4;
  v5 = *(off_1E7722048 + 9);
  v3[8] = *(off_1E7722048 + 8);
  v3[9] = v5;
  v6 = *(off_1E7722048 + 3);
  v3[2] = *(off_1E7722048 + 2);
  v3[3] = v6;
  v7 = *(off_1E7722048 + 5);
  v3[4] = *(off_1E7722048 + 4);
  v3[5] = v7;
  result = *off_1E7722048;
  v9 = *(off_1E7722048 + 1);
  *v3 = *off_1E7722048;
  v3[1] = v9;
  v10 = *(a3 + 32);
  v10[1] = *(a1 + 32);
  *v10 = *(a1 + 33);
  return result;
}

- (unsigned)_addEdgeHighlightForChromeItem:(unint64_t)a3
{
  v5 = [PXStoryChromeLayoutEdgeHighlightController alloc];
  v6 = [(PXStoryChromeLayout *)self viewModel];
  v7 = [(PXStoryChromeLayoutItemController *)v5 initWithViewModel:v6 chromeItem:a3];

  LODWORD(self) = [(PXStoryChromeLayout *)self _addSpriteForChromeItemController:v7 mediaKind:1 presentationType:0];
  return self;
}

- (unsigned)_addLabelForChromeItem:(unint64_t)a3 isSupported:(BOOL)a4
{
  v4 = a4;
  v7 = [PXStoryChromeLayoutItemController alloc];
  v8 = [(PXStoryChromeLayout *)self viewModel];
  v9 = [(PXStoryChromeLayoutItemController *)v7 initWithViewModel:v8 chromeItem:a3];

  if (v4)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(PXStoryChromeLayout *)self _addSpriteForChromeItemController:v9 mediaKind:v10 presentationType:0];

  return v11;
}

- (unsigned)_addButtonForChromeItem:(unint64_t)a3 isSupported:(BOOL)a4
{
  v4 = a4;
  v7 = [PXStoryChromeLayoutItemController alloc];
  v8 = [(PXStoryChromeLayout *)self viewModel];
  v9 = [(PXStoryChromeLayoutItemController *)v7 initWithViewModel:v8 chromeItem:a3];

  if (v4)
  {
    v10 = 10;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(PXStoryChromeLayout *)self _addSpriteForChromeItemController:v9 mediaKind:v10 presentationType:1];

  return v11;
}

- (PXStoryChromeLayout)initWithViewModel:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = PXStoryChromeLayout;
  v6 = [(PXGAbsoluteCompositeLayout *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    [(PXStoryViewModel *)v7->_viewModel registerChangeObserver:v7 context:ViewModelObservationContext_92630];
    v8 = [v5 mainConfiguration];
    if ([v8 isEmbeddedInCollectionDetail])
    {
      v9 = 1;
    }

    else
    {
      v9 = MEMORY[0x1A590D320]() ^ 1;
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    itemControllers = v7->_itemControllers;
    v7->_itemControllers = v10;

    v7->_closeButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:1 isSupported:v9];
    v7->_closeBrowserButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:0x20000 isSupported:v9];
    if (v9)
    {
      v7->_playButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:4 isSupported:1];
    }

    else
    {
      v12 = [v5 mainConfiguration];
      v7->_playButtonSpriteIndex = -[PXStoryChromeLayout _addButtonForChromeItem:isSupported:](v7, "_addButtonForChromeItem:isSupported:", 4, [v12 isExportPreview]);
    }

    v7->_replayButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:32];
    v7->_errorIndicatorSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:0x10000 isSupported:v9];
    v7->_muteToggleButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:0x1000000 isSupported:v9];
    v7->_actionMenuButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:2 isSupported:v9];
    v7->_shareButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:64 isSupported:v9];
    v7->_browserGridButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:128 isSupported:v9];
    v7->_browserAddPhotosButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:0x20000000 isSupported:v9];
    v7->_browserSelectButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:0x80000000 isSupported:v9];
    v7->_fullsizePlayerButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:256];
    v7->_aspectModeButtonIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:0x4000];
    v7->_bufferingIndicatorSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:0x8000];
    v7->_toggleFavoriteButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:0x400000];
    v7->_playbackEndReplayButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:0x40000];
    v7->_playbackEndShareButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:0x80000];
    v7->_playbackEndFavoriteButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:0x100000];
    v7->_playbackEndUnfavoriteButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:0x200000];
    v7->_titleSpriteIndex = [(PXStoryChromeLayout *)v7 _addLabelForChromeItem:1024 isSupported:1];
    v7->_subtitleSpriteIndex = [(PXStoryChromeLayout *)v7 _addLabelForChromeItem:1024 isSupported:1];
    v7->_styleSwitcherButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:512 isSupported:v9];
    v7->_editMusicButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:8];
    v7->_editColorGradeButtonSpriteIndex = [(PXStoryChromeLayout *)v7 _addButtonForChromeItem:16];
    v7->_leftEdgeHighlightSpriteIndex = [(PXStoryChromeLayout *)v7 _addEdgeHighlightForChromeItem:4096];
    v7->_rightEdgeHighlightSpriteIndex = [(PXStoryChromeLayout *)v7 _addEdgeHighlightForChromeItem:0x2000];
    v7->_chromeButtonFocusGuideSpriteIndex = -1;
    v7->_infoPanelSpriteIndex = -1;
    v7->_styleChromeSublayoutIndex = 0x7FFFFFFFFFFFFFFFLL;
    v13 = +[PXStorySettings sharedInstance];
    if ([(PXStoryStyleChromeContainerLayout *)v13 showStyleSwitcher])
    {
      v14 = [v5 viewMode];

      if (v14 == 5)
      {
LABEL_12:
        [(PXStoryChromeLayout *)v7 setContentSource:v7];
        [(PXStoryChromeLayout *)v7 _invalidateMainModel];
        [(PXStoryChromeLayout *)v7 _invalidateContentAlpha];
        goto LABEL_13;
      }

      v13 = [[PXStoryStyleChromeContainerLayout alloc] initWithViewModel:v7->_viewModel];
      v7->_styleChromeSublayoutIndex = [(PXStoryChromeLayout *)v7 addSublayout:v13];
    }

    goto LABEL_12;
  }

LABEL_13:

  return v7;
}

@end