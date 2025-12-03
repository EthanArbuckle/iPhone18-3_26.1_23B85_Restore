@interface PXCuratedLibrarySectionHeaderLayout
- (CGRect)titleSubtitleFrame;
- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (PXCuratedLibrarySectionHeaderLayout)init;
- (UIEdgeInsets)safeAreaInsetsWithCurrentBehavior;
- (double)assetsSectionCrossfadeTop;
- (id)_configurationForButton:(unint64_t)button;
- (id)_configurationForButton:(unint64_t)button overBackgroundVariant:(BOOL)variant;
- (id)_selectionTitleLabelConfigurationWithTitle:(id)title spec:(id)spec;
- (id)_titleSubtitleSpecForItemIdentifier:(id)identifier;
- (id)axSpriteIndexes;
- (id)configurationForButton:(unint64_t)button spec:(id)spec;
- (id)hitTestResultForSpriteIndex:(unsigned int)index;
- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)objectReferenceForSpriteIndex:(unsigned int)index;
- (id)titleSubtitleSpecForSpriteAtIndex:(unsigned int)index;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (unint64_t)toggleAspectFitButton;
- (unsigned)spriteIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
- (void)_discardAllCachedButtonSizes;
- (void)_handleAsyncDateDescription:(id)description title:(id)title subtitle:(id)subtitle placement:(int64_t)placement generation:(int64_t)generation;
- (void)_invalidateEllipsisButton;
- (void)_invalidateFilterButton;
- (void)_updateButtonActionPerformers;
- (void)_updateEffectiveSpec;
- (void)_updateLastBaseline;
- (void)_updateSpriteTags;
- (void)_updateSprites;
- (void)_updateSpritesAlpha;
- (void)_updateTitleAndSubtitle;
- (void)alphaDidChange;
- (void)didRenderTitleAndSubtitleSpriteAtIndex:(unsigned int)index layoutVersion:(int64_t)version withLastBaseline:(double)baseline;
- (void)displayScaleDidChange;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceOptionsDidChange;
- (void)referenceSizeDidChange;
- (void)safeAreaInsetsDidChange;
- (void)setAssetCollectionReference:(id)reference;
- (void)setButtonsAlpha:(double)alpha;
- (void)setButtonsMaxY:(double)y;
- (void)setCancelButtonActionPerformer:(id)performer;
- (void)setControlStackButtonSelected:(BOOL)selected;
- (void)setEffectiveSpec:(id)spec;
- (void)setEllipsisButtonActionPerformer:(id)performer;
- (void)setEllipsisButtonHighlighted:(BOOL)highlighted;
- (void)setExternalLeadingButtonConfigurations:(id)configurations;
- (void)setExternalTopButtonConfigurations:(id)configurations;
- (void)setExternalTrailingButtonConfigurations:(id)configurations;
- (void)setFilterButtonCaption:(id)caption;
- (void)setFilterButtonHighlighted:(BOOL)highlighted;
- (void)setFilterButtonTitle:(id)title;
- (void)setLateralMargin:(double)margin;
- (void)setLongestPossibleSelectionTitle:(id)title;
- (void)setMaxPossibleHeight:(double)height;
- (void)setSelectButtonActionPerformer:(id)performer;
- (void)setSelectButtonTitle:(id)title;
- (void)setSelectionTitle:(id)title;
- (void)setShowFiltersActionPerformer:(id)performer;
- (void)setShowSidebarButtonActionPerformer:(id)performer;
- (void)setShowsBackgroundGradient:(BOOL)gradient;
- (void)setShowsDebugDescription:(BOOL)description;
- (void)setSpec:(id)spec;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setTitleAlpha:(double)alpha;
- (void)setTitleSubtitleLastBaseline:(double)baseline;
- (void)setTitleSubtitleTopSpacing:(double)spacing;
- (void)setToggleAspectFitButtonActionPerformer:(id)performer;
- (void)setToggleAspectFitButtonPossibleTitles:(id)titles;
- (void)setToggleAspectFitButtonTitle:(id)title;
- (void)setToggleAspectFitCompactButtonSymbol:(int64_t)symbol;
- (void)setUsesCompactToggleAspectFitButton:(BOOL)button;
- (void)setVisibleRect:(CGRect)rect;
- (void)setWantsOverBackgroundAppearance:(BOOL)appearance;
- (void)setZoomInButtonActionPerformer:(id)performer;
- (void)setZoomOutButtonActionPerformer:(id)performer;
- (void)update;
- (void)visibleRectDidChange;
@end

@implementation PXCuratedLibrarySectionHeaderLayout

- (CGRect)titleSubtitleFrame
{
  x = self->_titleSubtitleFrame.origin.x;
  y = self->_titleSubtitleFrame.origin.y;
  width = self->_titleSubtitleFrame.size.width;
  height = self->_titleSubtitleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSharedLibraryStatusProviderObservationContext == context)
  {
    if ((changeCopy & 3) == 0)
    {
      goto LABEL_14;
    }

LABEL_12:
    v18 = observableCopy;
    [(PXCuratedLibrarySectionHeaderLayout *)self _invalidateEllipsisButton];
LABEL_13:
    observableCopy = v18;
    goto LABEL_14;
  }

  if (PXLibraryFilterStateObservationContext == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (AlternateAppearanceMixAnimatorObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1977 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 2) != 0)
  {
    v18 = observableCopy;
    alternateAppearanceMixAnimator = [(PXCuratedLibrarySectionHeaderLayout *)self alternateAppearanceMixAnimator];
    isBeingMutated = [alternateAppearanceMixAnimator isBeingMutated];

    observableCopy = v18;
    if ((isBeingMutated & 1) == 0)
    {
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_19:
          p_updateFlags->needsUpdate = needsUpdate | 2;
          goto LABEL_14;
        }

LABEL_18:
        if ((self->_updateFlags.updated & 2) != 0)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout observable:didChange:context:]"];
          [currentHandler2 handleFailureInFunction:v17 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1974 description:{@"invalidating %lu after it already has been updated", 2}];

          abort();
        }

        goto LABEL_19;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_18;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 2;
      if (!willPerformUpdate)
      {
        [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        goto LABEL_13;
      }
    }
  }

LABEL_14:
}

- (id)axSpriteIndexes
{
  v2 = [(NSMutableIndexSet *)self->_axSpriteIndexes copy];

  return v2;
}

- (id)hitTestResultForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  assetCollectionReference = [(PXCuratedLibrarySectionHeaderLayout *)self assetCollectionReference];
  v6 = [(PXCuratedLibrarySectionHeaderLayout *)self spriteReferenceForSpriteIndex:v3 objectReference:0];
  v7 = [(NSArray *)self->_itemIdentifierBySpriteIndex objectAtIndexedSubscript:v3];
  v8 = v7;
  if (v7 == @"PXCuratedLibrarySectionHeaderItemEllipsisButton" || v7 == @"PXCuratedLibrarySectionHeaderItemEllipsisButtonOverBackground")
  {
    v10 = 7;
    goto LABEL_25;
  }

  if (v7 == @"PXCuratedLibrarySectionHeaderItemFilterButton" || v7 == @"PXCuratedLibrarySectionHeaderItemFilterButtonOverBackground")
  {
    v10 = 8;
    goto LABEL_25;
  }

  if (v7 == @"PXCuratedLibrarySectionHeaderItemControlStackButton" || v7 == @"PXCuratedLibrarySectionHeaderItemControlStackButtonOverBackground")
  {
    v10 = 9;
    goto LABEL_25;
  }

  if (v7 == @"PXCuratedLibrarySectionHeaderItemSelectButton" || v7 == @"PXCuratedLibrarySectionHeaderItemSelectButtonOverBackground")
  {
    v10 = 10;
    goto LABEL_25;
  }

  v10 = 11;
  if (v7 == @"PXCuratedLibrarySectionHeaderItemCancelButton" || v7 == @"PXCuratedLibrarySectionHeaderItemCancelButtonOverBackground" || (v10 = 12, v7 == @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButton") || v7 == @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButtonOverBackground" || (v10 = 13, v7 == @"PXCuratedLibrarySectionHeaderItemZoomInButton") || v7 == @"PXCuratedLibrarySectionHeaderItemZoomInButtonOverBackground" || (v10 = 14, v7 == @"PXCuratedLibrarySectionHeaderItemZoomOutButton") || v7 == @"PXCuratedLibrarySectionHeaderItemZoomOutButtonOverBackground" || (v10 = 15, v7 == @"PXCuratedLibrarySectionHeaderItemShowSidebarButton") || v7 == @"PXCuratedLibrarySectionHeaderItemShowSidebarButtonOverBackground")
  {
LABEL_25:
    if (!assetCollectionReference)
    {
      v14 = [[off_1E7721520 alloc] initWithControl:v10 spriteReference:v6 layout:self];
      goto LABEL_28;
    }

LABEL_26:
    v14 = [[off_1E7721520 alloc] initWithControl:v10 spriteReference:v6 layout:self assetCollectionReference:assetCollectionReference];
LABEL_28:
    v15 = v14;
    goto LABEL_29;
  }

  if (v7 == @"PXCuratedLibrarySectionHeaderItemTitleHitArea")
  {
    v10 = 6;
    goto LABEL_25;
  }

  if (assetCollectionReference)
  {
    v10 = 5;
    goto LABEL_26;
  }

  v15 = 0;
LABEL_29:

  return v15;
}

- (id)_configurationForButton:(unint64_t)button overBackgroundVariant:(BOOL)variant
{
  variantCopy = variant;
  v7 = [(PXCuratedLibrarySectionHeaderLayout *)self _configurationForButton:?];
  [(PXCuratedLibrarySectionHeaderLayout *)self visibleRect];
  if (v8 >= 0.0)
  {
    [v7 setForcePointerInteractionEnabled:1];
  }

  if (button)
  {
    if (button == 1 || !variantCopy)
    {
      goto LABEL_10;
    }

LABEL_9:
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [v7 setTintColor:systemBlueColor];

    goto LABEL_10;
  }

  if (![(PXCuratedLibrarySectionHeaderLayout *)self ellipsisButtonHighlighted]&& variantCopy)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (id)_configurationForButton:(unint64_t)button
{
  effectiveSpec = [(PXCuratedLibrarySectionHeaderLayout *)self effectiveSpec];
  v6 = [(PXCuratedLibrarySectionHeaderLayout *)self configurationForButton:button spec:effectiveSpec];

  return v6;
}

- (id)configurationForButton:(unint64_t)button spec:(id)spec
{
  specCopy = spec;
  v7 = 0;
  if (button > 4)
  {
    if (button <= 6)
    {
      if (button != 5)
      {
        [PXCuratedLibraryOverlayButtonConfiguration configurationWithSystemImageName:@"plus" spec:specCopy];
        objc_claimAutoreleasedReturnValue();
        PXEdgeInsetsMake();
      }

      toggleAspectFitCompactButtonSymbol = [(PXCuratedLibrarySectionHeaderLayout *)self toggleAspectFitCompactButtonSymbol];
      v19 = 5;
      if (toggleAspectFitCompactButtonSymbol != 1)
      {
        v19 = 0;
      }

      if (toggleAspectFitCompactButtonSymbol)
      {
        v20 = v19;
      }

      else
      {
        v20 = 6;
      }

      v9 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithButtonType:v20 spec:specCopy];
      toggleAspectFitButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self toggleAspectFitButtonActionPerformer];
      goto LABEL_33;
    }

    if (button == 7)
    {
      [PXCuratedLibraryOverlayButtonConfiguration configurationWithSystemImageName:@"minus" spec:specCopy];
      objc_claimAutoreleasedReturnValue();
      PXEdgeInsetsMake();
    }

    if (button == 8)
    {
      controlStackButtonSelected = [(PXCuratedLibrarySectionHeaderLayout *)self controlStackButtonSelected];
      if (controlStackButtonSelected)
      {
        v26 = @"xmark";
      }

      else
      {
        v26 = @"plus.slash.minus";
      }

      v9 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithSystemImageName:v26 spec:specCopy];
      objc_initWeak(&location, self);
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __67__PXCuratedLibrarySectionHeaderLayout_configurationForButton_spec___block_invoke;
      v30 = &unk_1E774C318;
      objc_copyWeak(&v31, &location);
      [v9 setActionHandler:&v27];
      if (controlStackButtonSelected)
      {
        v7 = 8;
      }

      else
      {
        v7 = 0;
      }

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    else
    {
      v9 = 0;
      if (button == 9)
      {
        v9 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithSystemImageName:@"sidebar.leading" spec:specCopy];
        showSidebarButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self showSidebarButtonActionPerformer];
        [v9 setActionPerformer:showSidebarButtonActionPerformer];

        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [v9 setTintColor:whiteColor];

        v7 = 2;
      }
    }
  }

  else
  {
    if (button > 1)
    {
      if (button == 2)
      {
        selectButtonTitle = [(PXCuratedLibrarySectionHeaderLayout *)self selectButtonTitle];
        v9 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithTitle:selectButtonTitle spec:specCopy];

        toggleAspectFitButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self selectButtonActionPerformer];
      }

      else
      {
        if (button != 3)
        {
          toggleAspectFitButtonTitle = [(PXCuratedLibrarySectionHeaderLayout *)self toggleAspectFitButtonTitle];
          v9 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithTitle:toggleAspectFitButtonTitle spec:specCopy];

          toggleAspectFitButtonActionPerformer2 = [(PXCuratedLibrarySectionHeaderLayout *)self toggleAspectFitButtonActionPerformer];
          [v9 setActionPerformer:toggleAspectFitButtonActionPerformer2];

          toggleAspectFitButtonPossibleTitles = [(PXCuratedLibrarySectionHeaderLayout *)self toggleAspectFitButtonPossibleTitles];
          [v9 setPossibleTitles:toggleAspectFitButtonPossibleTitles];
LABEL_34:

          v7 = 0;
          goto LABEL_35;
        }

        v23 = PXLocalizedStringFromTable(@"PXCuratedLibraryCancelSelectionButtonTitle", @"PhotosUICore");
        v9 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithTitle:v23 spec:specCopy];

        toggleAspectFitButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self cancelButtonActionPerformer];
      }

LABEL_33:
      toggleAspectFitButtonPossibleTitles = toggleAspectFitButtonActionPerformer;
      [v9 setActionPerformer:toggleAspectFitButtonActionPerformer];
      goto LABEL_34;
    }

    if (button)
    {
      v9 = 0;
      if (button != 1)
      {
        goto LABEL_35;
      }

      if ([(PXCuratedLibrarySectionHeaderLayout *)self filterButtonHighlighted])
      {
        v7 = 12;
      }

      else
      {
        v7 = 10;
      }

      filterButtonTitle = [(PXCuratedLibrarySectionHeaderLayout *)self filterButtonTitle];
      v9 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithButtonType:4 title:filterButtonTitle spec:specCopy];

      filterButtonCaption = [(PXCuratedLibrarySectionHeaderLayout *)self filterButtonCaption];
      [v9 setCaption:filterButtonCaption];

      showFiltersActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self showFiltersActionPerformer];
    }

    else
    {
      if ([(PXCuratedLibrarySectionHeaderLayout *)self ellipsisButtonHighlighted])
      {
        v7 = 13;
      }

      else
      {
        v7 = 0;
      }

      v9 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithButtonType:1 spec:specCopy];
      showFiltersActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self ellipsisButtonActionPerformer];
    }

    v17 = showFiltersActionPerformer;
    [v9 setActionPerformer:showFiltersActionPerformer];
  }

LABEL_35:
  [v9 setStyle:{v7, v27, v28, v29, v30}];

  return v9;
}

void __67__PXCuratedLibrarySectionHeaderLayout_configurationForButton_spec___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained controlStackButtonSelected];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setControlStackButtonSelected:v2 ^ 1u];
}

- (void)_discardAllCachedButtonSizes
{
  v2 = 0;
  v3 = *off_1E7722230;
  do
  {
    self->_cachedSizeByButtonIdentifier[v2++] = v3;
  }

  while (v2 != 10);
  self->_cachedExternalTrailingButtonsSize = v3;
  self->_cachedExternalLeadingButtonsSize = v3;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layout = [(NSArray *)self->_itemIdentifierBySpriteIndex objectAtIndexedSubscript:index, layout];
  v6 = layout;
  if (layout == @"PXCuratedLibrarySectionHeaderItemEllipsisButton" || layout == @"PXCuratedLibrarySectionHeaderItemEllipsisButtonOverBackground")
  {
    v8 = layout == @"PXCuratedLibrarySectionHeaderItemEllipsisButtonOverBackground";
    selfCopy9 = self;
    toggleAspectFitButton = 0;
LABEL_49:
    v16 = [(PXCuratedLibrarySectionHeaderLayout *)selfCopy9 _configurationForButton:toggleAspectFitButton overBackgroundVariant:v8];
    goto LABEL_50;
  }

  if (layout == @"PXCuratedLibrarySectionHeaderItemFilterButton" || layout == @"PXCuratedLibrarySectionHeaderItemFilterButtonOverBackground")
  {
    v8 = layout == @"PXCuratedLibrarySectionHeaderItemFilterButtonOverBackground";
    selfCopy9 = self;
    toggleAspectFitButton = 1;
    goto LABEL_49;
  }

  if (layout == @"PXCuratedLibrarySectionHeaderItemSelectButton" || layout == @"PXCuratedLibrarySectionHeaderItemSelectButtonOverBackground")
  {
    v8 = layout == @"PXCuratedLibrarySectionHeaderItemSelectButtonOverBackground";
    selfCopy9 = self;
    toggleAspectFitButton = 2;
    goto LABEL_49;
  }

  if (layout == @"PXCuratedLibrarySectionHeaderItemCancelButton" || layout == @"PXCuratedLibrarySectionHeaderItemCancelButtonOverBackground")
  {
    v8 = layout == @"PXCuratedLibrarySectionHeaderItemCancelButtonOverBackground";
    selfCopy9 = self;
    toggleAspectFitButton = 3;
    goto LABEL_49;
  }

  if (layout == @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButton" || layout == @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButtonOverBackground")
  {
    v15 = layout == @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButtonOverBackground";
    toggleAspectFitButton = [(PXCuratedLibrarySectionHeaderLayout *)self toggleAspectFitButton];
    selfCopy9 = self;
    v8 = v15;
    goto LABEL_49;
  }

  if (layout == @"PXCuratedLibrarySectionHeaderItemZoomInButton" || layout == @"PXCuratedLibrarySectionHeaderItemZoomInButtonOverBackground")
  {
    v8 = layout == @"PXCuratedLibrarySectionHeaderItemZoomInButtonOverBackground";
    selfCopy9 = self;
    toggleAspectFitButton = 6;
    goto LABEL_49;
  }

  if (layout == @"PXCuratedLibrarySectionHeaderItemZoomOutButton" || layout == @"PXCuratedLibrarySectionHeaderItemZoomOutButtonOverBackground")
  {
    v8 = layout == @"PXCuratedLibrarySectionHeaderItemZoomOutButtonOverBackground";
    selfCopy9 = self;
    toggleAspectFitButton = 7;
    goto LABEL_49;
  }

  if (layout == @"PXCuratedLibrarySectionHeaderItemControlStackButton" || layout == @"PXCuratedLibrarySectionHeaderItemControlStackButtonOverBackground")
  {
    v8 = layout == @"PXCuratedLibrarySectionHeaderItemControlStackButtonOverBackground";
    selfCopy9 = self;
    toggleAspectFitButton = 8;
    goto LABEL_49;
  }

  if (layout == @"PXCuratedLibrarySectionHeaderItemShowSidebarButton" || layout == @"PXCuratedLibrarySectionHeaderItemShowSidebarButtonOverBackground")
  {
    v8 = layout == @"PXCuratedLibrarySectionHeaderItemShowSidebarButtonOverBackground";
    selfCopy9 = self;
    toggleAspectFitButton = 9;
    goto LABEL_49;
  }

  if (layout != @"PXCuratedLibrarySectionHeaderItemTitleSubtitle" && layout != @"PXCuratedLibrarySectionHeaderItemTitleSubtitleOverBackground")
  {
    if (layout == @"PXCuratedLibrarySectionHeaderItemGradient")
    {
      spec = [(PXCuratedLibrarySectionHeaderLayout *)self spec];
      headerGradientImageConfiguration = [spec headerGradientImageConfiguration];
      [headerGradientImageConfiguration imageName];
      objc_claimAutoreleasedReturnValue();

      PXPhotosUIFoundationBundle();
    }

    if (layout != @"PXCuratedLibrarySectionHeaderItemSelectionTitle" && layout != @"PXCuratedLibrarySectionHeaderItemSelectionTitleOverBackground")
    {
      v16 = 0;
      goto LABEL_50;
    }

    effectiveSpec = [(PXCuratedLibrarySectionHeaderLayout *)self _titleSubtitleSpecForItemIdentifier:layout];
    selectionTitle = [(PXCuratedLibrarySectionHeaderLayout *)self selectionTitle];
    v16 = [(PXCuratedLibrarySectionHeaderLayout *)self _selectionTitleLabelConfigurationWithTitle:selectionTitle spec:effectiveSpec];
    goto LABEL_58;
  }

  effectiveSpec = [(PXCuratedLibrarySectionHeaderLayout *)self effectiveSpec];
  if (![effectiveSpec renderMode])
  {
    v22 = [off_1E7721988 alloc];
    selectionTitle = [(PXCuratedLibrarySectionHeaderLayout *)self title];
    subtitle = [(PXCuratedLibrarySectionHeaderLayout *)self subtitle];
    spec2 = [(PXCuratedLibrarySectionHeaderLayout *)self spec];
    v16 = [v22 initWithTitle:selectionTitle subtitle:subtitle swapTitleAndSubtitle:0 style:{objc_msgSend(spec2, "inlineHeaderStyle")}];

LABEL_58:
    goto LABEL_59;
  }

  v16 = objc_alloc_init(PXGTitleSubtitleViewConfiguration);
  title = [(PXCuratedLibrarySectionHeaderLayout *)self title];
  [(PXGTitleSubtitleViewConfiguration *)v16 setTitle:title];

  subtitle2 = [(PXCuratedLibrarySectionHeaderLayout *)self subtitle];
  [(PXGTitleSubtitleViewConfiguration *)v16 setSubtitle:subtitle2];

  v21 = [(PXCuratedLibrarySectionHeaderLayout *)self _titleSubtitleSpecForItemIdentifier:v6];
  [(PXGTitleSubtitleViewConfiguration *)v16 setSpec:v21];

  [(PXGTitleSubtitleViewConfiguration *)v16 setFloatingAxis:1];
LABEL_59:

LABEL_50:

  return v16;
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layout = [(NSArray *)self->_itemIdentifierBySpriteIndex objectAtIndexedSubscript:index, layout];
  v6 = layout;
  v7 = layout == @"PXCuratedLibrarySectionHeaderItemTitleSubtitle" || layout == @"PXCuratedLibrarySectionHeaderItemTitleSubtitleOverBackground";
  if (!v7 || (-[PXCuratedLibrarySectionHeaderLayout spec](self, "spec"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 renderMode], v8, v9 < 3))
  {
    v8 = objc_opt_class();
  }

  return v8;
}

- (void)didRenderTitleAndSubtitleSpriteAtIndex:(unsigned int)index layoutVersion:(int64_t)version withLastBaseline:(double)baseline
{
  if ([(PXCuratedLibrarySectionHeaderLayout *)self version]== version)
  {

    [(PXCuratedLibrarySectionHeaderLayout *)self setTitleSubtitleLastBaseline:baseline];
  }
}

- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = [(PXCuratedLibrarySectionHeaderLayout *)self spec:*&index];
  headerGradientImageConfiguration = [v4 headerGradientImageConfiguration];

  return headerGradientImageConfiguration;
}

- (id)_titleSubtitleSpecForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy == @"PXCuratedLibrarySectionHeaderItemTitleSubtitle" || identifierCopy == @"PXCuratedLibrarySectionHeaderItemSelectionTitle")
  {
    effectiveTitleSubtitleLabelSpec = [(PXCuratedLibrarySectionHeaderLayout *)self effectiveTitleSubtitleLabelSpec];
  }

  else
  {
    if (identifierCopy != @"PXCuratedLibrarySectionHeaderItemTitleSubtitleOverBackground" && identifierCopy != @"PXCuratedLibrarySectionHeaderItemSelectionTitleOverBackground")
    {
      PXAssertGetLog();
    }

    effectiveTitleSubtitleLabelSpec = [(PXCuratedLibrarySectionHeaderLayout *)self effectiveOverBackgroundTitleSubtitleLabelSpec];
  }

  v8 = effectiveTitleSubtitleLabelSpec;

  return v8;
}

- (id)titleSubtitleSpecForSpriteAtIndex:(unsigned int)index
{
  if ([(PXCuratedLibrarySectionHeaderLayout *)self showsDebugDescription])
  {
    effectiveSpec = [(PXCuratedLibrarySectionHeaderLayout *)self effectiveSpec];
    assetCollectionReference = [(PXCuratedLibrarySectionHeaderLayout *)self assetCollectionReference];
    assetCollection = [assetCollectionReference assetCollection];

    [assetCollection promotionScore];
    v11 = v10;
    v12 = +[PXCuratedLibrarySettings sharedInstance];
    [v12 nonInterestingPromotionScore];
    v14 = v13;

    if (v11 >= v14)
    {
      [effectiveSpec debugInterestingTitleSubtitleLabelSpec];
    }

    else
    {
      [effectiveSpec debugNonInterestingTitleSubtitleLabelSpec];
    }
    v15 = ;
    v6 = [(PXCuratedLibrarySectionHeaderLayout *)self _effectiveTitleSubtitleLabelSpec:v15];
  }

  else
  {
    effectiveSpec = [(NSArray *)self->_itemIdentifierBySpriteIndex objectAtIndexedSubscript:index];
    v6 = [(PXCuratedLibrarySectionHeaderLayout *)self _titleSubtitleSpecForItemIdentifier:effectiveSpec];
  }

  return v6;
}

- (double)assetsSectionCrossfadeTop
{
  [(PXCuratedLibrarySectionHeaderLayout *)self titleSubtitleFrame];

  return CGRectGetMinY(*&v2);
}

- (void)setButtonsAlpha:(double)alpha
{
  if (self->_buttonsAlpha == alpha)
  {
    return;
  }

  self->_buttonsAlpha = alpha;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_8:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_7:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setButtonsAlpha:]"];
      [currentHandler handleFailureInFunction:v8 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1616 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_8;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_7;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)setWantsOverBackgroundAppearance:(BOOL)appearance
{
  if (self->_wantsOverBackgroundAppearance != appearance)
  {
    aBlock[5] = v6;
    aBlock[6] = v5;
    aBlock[11] = v3;
    aBlock[12] = v4;
    self->_wantsOverBackgroundAppearance = appearance;
    if (appearance)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    alternateAppearanceMixAnimator = [(PXCuratedLibrarySectionHeaderLayout *)self alternateAppearanceMixAnimator];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__PXCuratedLibrarySectionHeaderLayout_setWantsOverBackgroundAppearance___block_invoke;
    aBlock[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
    *&aBlock[4] = v8;
    v10 = _Block_copy(aBlock);
    [alternateAppearanceMixAnimator presentationValue];
    v12 = v11;
    if (self->_presentedTitleVisibility)
    {
      v13 = 1;
    }

    else
    {
      [(PXCuratedLibrarySectionHeaderLayout *)self titleAlpha];
      v13 = v14 <= 0.0;
    }

    v16 = !self->_presentedVisibility || !v13 || v8 == v12;
    if (v16 || (-[PXCuratedLibrarySectionHeaderLayout effectiveSpec](self, "effectiveSpec"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 userInterfaceStyle], v17, v18 == 2))
    {
      [alternateAppearanceMixAnimator performChangesWithoutAnimation:v10];
    }

    else
    {
      v19 = +[PXCuratedLibrarySettings sharedInstance];
      [v19 floatingHeadersAppearanceCrossfadeDuration];
      v21 = vabdd_f64(v8, v12) * v20;

      [alternateAppearanceMixAnimator performChangesWithDuration:1 curve:v10 changes:v21];
    }
  }
}

- (void)setTitleAlpha:(double)alpha
{
  if (self->_titleAlpha == alpha)
  {
    return;
  }

  self->_titleAlpha = alpha;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_8:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_7:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setTitleAlpha:]"];
      [currentHandler handleFailureInFunction:v8 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1585 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_8;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_7;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)setMaxPossibleHeight:(double)height
{
  if (self->_maxPossibleHeight == height)
  {
    return;
  }

  self->_maxPossibleHeight = height;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_8:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_7:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setMaxPossibleHeight:]"];
      [currentHandler handleFailureInFunction:v8 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1577 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_8;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_7;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)_handleAsyncDateDescription:(id)description title:(id)title subtitle:(id)subtitle placement:(int64_t)placement generation:(int64_t)generation
{
  descriptionCopy = description;
  titleCopy = title;
  subtitleCopy = subtitle;
  if (self->_asyncDateGeneration == generation)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__PXCuratedLibrarySectionHeaderLayout__handleAsyncDateDescription_title_subtitle_placement_generation___block_invoke;
    block[3] = &unk_1E772D7D8;
    generationCopy = generation;
    placementCopy = placement;
    block[4] = self;
    v22 = a2;
    v17 = descriptionCopy;
    v18 = subtitleCopy;
    v19 = titleCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void *__103__PXCuratedLibrarySectionHeaderLayout__handleAsyncDateDescription_title_subtitle_placement_generation___block_invoke(void *a1)
{
  v2 = a1[8];
  result = a1[4];
  if (v2 == result[144])
  {
    v4 = a1[9];
    switch(v4)
    {
      case 1:
        v5 = 6;
        v6 = 5;
        break;
      case 2:
        v5 = 5;
        v6 = 7;
        break;
      case 0:
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        [v9 handleFailureInMethod:a1[10] object:a1[4] file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1556 description:@"Code which should be unreachable has been reached"];

        abort();
      default:
        return result;
    }

    [result setTitle:a1[v6]];
    v7 = a1[v5];
    v8 = a1[4];

    return [v8 setSubtitle:v7];
  }

  return result;
}

- (void)_updateTitleAndSubtitle
{
  effectiveSpec = [(PXCuratedLibrarySectionHeaderLayout *)self effectiveSpec];
  assetCollectionReference = [(PXCuratedLibrarySectionHeaderLayout *)self assetCollectionReference];
  assetCollection = [assetCollectionReference assetCollection];

  assetCollectionReference2 = [(PXCuratedLibrarySectionHeaderLayout *)self assetCollectionReference];

  if (!assetCollectionReference2)
  {
    goto LABEL_40;
  }

  if ([effectiveSpec wantsTitle])
  {
    if ([effectiveSpec shouldOmitYear])
    {
      localizedDateDescription = @" ";
      v8 = 1;
      v9 = 2;
      goto LABEL_8;
    }

    localizedDateDescription = [assetCollection localizedDateDescription];
  }

  else
  {
    localizedDateDescription = 0;
  }

  v9 = 0;
  v8 = 0;
LABEL_8:
  if ([effectiveSpec wantsSubtitle])
  {
    localizedSmartDescription = [assetCollection localizedSmartDescription];
  }

  else
  {
    localizedSmartDescription = 0;
  }

  titleDateFormatter = [effectiveSpec titleDateFormatter];
  subtitleDateFormatter = [effectiveSpec subtitleDateFormatter];
  if (!(titleDateFormatter | subtitleDateFormatter))
  {
    goto LABEL_19;
  }

  v35 = v8;
  startDate = [assetCollection startDate];
  endDate = [assetCollection endDate];
  v15 = endDate;
  if (startDate && endDate)
  {
    v33 = v9;
    v34 = assetCollection;
    [endDate timeIntervalSinceDate:startDate];
    v17 = [startDate dateByAddingTimeInterval:v16 * 0.5];
    if (titleDateFormatter)
    {
      v18 = titleDateFormatter;
      v19 = [titleDateFormatter stringFromDate:v17];

      localizedDateDescription = v19;
      if (!subtitleDateFormatter)
      {
LABEL_17:
        titleDateFormatter = v18;

        v9 = v33;
        assetCollection = v34;
        goto LABEL_18;
      }
    }

    else
    {
      v18 = 0;
      if (!subtitleDateFormatter)
      {
        goto LABEL_17;
      }
    }

    v20 = [subtitleDateFormatter stringFromDate:v17];

    localizedSmartDescription = v20;
    goto LABEL_17;
  }

LABEL_18:

  v8 = v35;
LABEL_19:
  if ([effectiveSpec swapTitleWithSubtitle])
  {
    v21 = [(__CFString *)localizedSmartDescription length];
    if (v21)
    {
      v22 = localizedDateDescription;
    }

    else
    {
      v22 = localizedSmartDescription;
    }

    if (v21)
    {
      localizedDateDescription = localizedSmartDescription;
    }

    else
    {
      v9 = v8;
    }

    localizedSmartDescription = v22;
  }

  else
  {
    v9 = v8;
  }

  if ([(PXCuratedLibrarySectionHeaderLayout *)self showsDebugDescription])
  {
    v37 = v8;
    localizedDebugDescription = [assetCollection localizedDebugDescription];
    if (localizedDebugDescription && localizedSmartDescription)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", localizedSmartDescription, localizedDebugDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", localizedDebugDescription, v32];
    }
    v31 = ;

    localizedSmartDescription = v31;
    v8 = v37;
    if (v9 == 2)
    {
      goto LABEL_38;
    }
  }

  if (!v9)
  {
LABEL_38:
    [(PXCuratedLibrarySectionHeaderLayout *)self setTitle:localizedDateDescription];
    [(PXCuratedLibrarySectionHeaderLayout *)self setSubtitle:localizedSmartDescription];
  }

  else
  {
    v36 = v9;
    v23 = subtitleDateFormatter;
    v24 = localizedDateDescription;
    v25 = v8;
    v26 = (self->_asyncDateGeneration + 1);
    self->_asyncDateGeneration = v26;
    objc_initWeak(&location, self);
    v27 = titleDateFormatter;
    asyncDateQueue = self->_asyncDateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__PXCuratedLibrarySectionHeaderLayout__updateTitleAndSubtitle__block_invoke;
    block[3] = &unk_1E772D7B0;
    v39 = assetCollection;
    v42[1] = v25;
    localizedDateDescription = v24;
    subtitleDateFormatter = v23;
    objc_copyWeak(v42, &location);
    v40 = localizedDateDescription;
    localizedSmartDescription = localizedSmartDescription;
    v41 = localizedSmartDescription;
    v42[2] = v36;
    v42[3] = v26;
    v29 = asyncDateQueue;
    titleDateFormatter = v27;
    dispatch_async(v29, block);

    objc_destroyWeak(v42);
    objc_destroyWeak(&location);
  }

LABEL_40:
}

void __62__PXCuratedLibrarySectionHeaderLayout__updateTitleAndSubtitle__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) localizedDateDescriptionWithOptions:*(a1 + 64)];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleAsyncDateDescription:v3 title:*(a1 + 40) subtitle:*(a1 + 48) placement:*(a1 + 72) generation:*(a1 + 80)];
}

- (void)_updateEffectiveSpec
{
  spec = [(PXCuratedLibrarySectionHeaderLayout *)self spec];
  if (([(PXCuratedLibrarySectionHeaderLayout *)self referenceOptions]& 1) != 0)
  {
    smallVariantSpec = [spec smallVariantSpec];
    if (smallVariantSpec)
    {
      v5 = smallVariantSpec;
    }

    else
    {
      v5 = spec;
    }

    v3 = v5;
  }

  else
  {
    v3 = spec;
  }

  [(PXCuratedLibrarySectionHeaderLayout *)self setEffectiveSpec:v3];
  if (([(PXCuratedLibrarySectionHeaderLayout *)self referenceOptions]& 8) != 0)
  {
    firstCardVariantSpec = [spec firstCardVariantSpec];
    [(PXCuratedLibrarySectionHeaderLayout *)self setEffectiveSpec:firstCardVariantSpec];
  }

  titleSubtitleLabelSpec = [v3 titleSubtitleLabelSpec];
  v8 = [(PXCuratedLibrarySectionHeaderLayout *)self _effectiveTitleSubtitleLabelSpec:titleSubtitleLabelSpec];

  if (v8 != self->_effectiveTitleSubtitleLabelSpec)
  {
    objc_storeStrong(&self->_effectiveTitleSubtitleLabelSpec, v8);
    if ([v3 userInterfaceStyle] == 2)
    {
      v9 = v8;
      effectiveOverBackgroundTitleSubtitleLabelSpec = self->_effectiveOverBackgroundTitleSubtitleLabelSpec;
      self->_effectiveOverBackgroundTitleSubtitleLabelSpec = v9;
    }

    else
    {
      v11 = [(PXTitleSubtitleLabelSpec *)v8 copy];
      v12 = self->_effectiveOverBackgroundTitleSubtitleLabelSpec;
      self->_effectiveOverBackgroundTitleSubtitleLabelSpec = v11;

      titleSubtitleColorOverBackground = [v3 titleSubtitleColorOverBackground];
      titleLabelSpec = [(PXTitleSubtitleLabelSpec *)self->_effectiveOverBackgroundTitleSubtitleLabelSpec titleLabelSpec];
      [titleLabelSpec setTextColor:titleSubtitleColorOverBackground];

      effectiveOverBackgroundTitleSubtitleLabelSpec = [v3 titleSubtitleColorOverBackground];
      subtitleLabelSpec = [(PXTitleSubtitleLabelSpec *)self->_effectiveOverBackgroundTitleSubtitleLabelSpec subtitleLabelSpec];
      [subtitleLabelSpec setTextColor:effectiveOverBackgroundTitleSubtitleLabelSpec];
    }
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = self->_subtitle;
  v6 = v5;
  if (v5 == subtitleCopy)
  {

    goto LABEL_10;
  }

  v7 = [(NSString *)v5 isEqualToString:?];

  if (v7)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&self->_subtitle, subtitle);
  ++self->_textVersion;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_9:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      goto LABEL_10;
    }

LABEL_8:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setSubtitle:]"];
      [currentHandler handleFailureInFunction:v12 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1431 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_9;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_8;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {
    [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
  }

LABEL_10:
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = self->_title;
  v6 = v5;
  if (v5 == titleCopy)
  {

    goto LABEL_10;
  }

  v7 = [(NSString *)v5 isEqualToString:?];

  if (v7)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&self->_title, title);
  ++self->_textVersion;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_9:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      goto LABEL_10;
    }

LABEL_8:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setTitle:]"];
      [currentHandler handleFailureInFunction:v12 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1422 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_9;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_8;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {
    [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
  }

LABEL_10:
}

- (void)setExternalTopButtonConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v5 = configurationsCopy;
  if (self->_externalTopButtonConfigurations != configurationsCopy)
  {
    v14 = configurationsCopy;
    v6 = [(NSArray *)configurationsCopy isEqual:?];
    v5 = v14;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v14 copy];
      externalTopButtonConfigurations = self->_externalTopButtonConfigurations;
      self->_externalTopButtonConfigurations = v7;

      self->_cachedExternalTopButtonsSize = *off_1E7722230;
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_8:
          p_updateFlags->needsUpdate = needsUpdate | 1;
LABEL_9:
          v5 = v14;
          goto LABEL_10;
        }

LABEL_7:
        if (self->_updateFlags.updated)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setExternalTopButtonConfigurations:]"];
          [currentHandler handleFailureInFunction:v13 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1411 description:{@"invalidating %lu after it already has been updated", 1}];

          abort();
        }

        goto LABEL_8;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_7;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 1;
      v5 = v14;
      if (!willPerformUpdate)
      {
        [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (void)setExternalLeadingButtonConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v5 = configurationsCopy;
  if (self->_externalLeadingButtonConfigurations != configurationsCopy)
  {
    v14 = configurationsCopy;
    v6 = [(NSArray *)configurationsCopy isEqual:?];
    v5 = v14;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v14 copy];
      externalLeadingButtonConfigurations = self->_externalLeadingButtonConfigurations;
      self->_externalLeadingButtonConfigurations = v7;

      self->_cachedExternalLeadingButtonsSize = *off_1E7722230;
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_8:
          p_updateFlags->needsUpdate = needsUpdate | 1;
LABEL_9:
          v5 = v14;
          goto LABEL_10;
        }

LABEL_7:
        if (self->_updateFlags.updated)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setExternalLeadingButtonConfigurations:]"];
          [currentHandler handleFailureInFunction:v13 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1402 description:{@"invalidating %lu after it already has been updated", 1}];

          abort();
        }

        goto LABEL_8;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_7;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 1;
      v5 = v14;
      if (!willPerformUpdate)
      {
        [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (void)setExternalTrailingButtonConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v5 = configurationsCopy;
  if (self->_externalTrailingButtonConfigurations != configurationsCopy)
  {
    v14 = configurationsCopy;
    v6 = [(NSArray *)configurationsCopy isEqual:?];
    v5 = v14;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v14 copy];
      externalTrailingButtonConfigurations = self->_externalTrailingButtonConfigurations;
      self->_externalTrailingButtonConfigurations = v7;

      self->_cachedExternalTrailingButtonsSize = *off_1E7722230;
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_8:
          p_updateFlags->needsUpdate = needsUpdate | 1;
LABEL_9:
          v5 = v14;
          goto LABEL_10;
        }

LABEL_7:
        if (self->_updateFlags.updated)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setExternalTrailingButtonConfigurations:]"];
          [currentHandler handleFailureInFunction:v13 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1393 description:{@"invalidating %lu after it already has been updated", 1}];

          abort();
        }

        goto LABEL_8;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_7;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 1;
      v5 = v14;
      if (!willPerformUpdate)
      {
        [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (void)setToggleAspectFitCompactButtonSymbol:(int64_t)symbol
{
  if (self->_toggleAspectFitCompactButtonSymbol != symbol)
  {
    self->_toggleAspectFitCompactButtonSymbol = symbol;
    ++self->_toggleAspectFitButtonVersion;
    self->_cachedSizeByButtonIdentifier[5] = *off_1E7722230;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setToggleAspectFitCompactButtonSymbol:]"];
        [currentHandler handleFailureInFunction:v8 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1384 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {

      [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setToggleAspectFitButtonPossibleTitles:(id)titles
{
  titlesCopy = titles;
  v6 = titlesCopy;
  if (self->_toggleAspectFitButtonPossibleTitles != titlesCopy)
  {
    v13 = titlesCopy;
    v7 = [(NSSet *)titlesCopy isEqual:?];
    v6 = v13;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_toggleAspectFitButtonPossibleTitles, titles);
      ++self->_toggleAspectFitButtonVersion;
      self->_cachedSizeByButtonIdentifier[4] = *off_1E7722230;
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_8:
          p_updateFlags->needsUpdate = needsUpdate | 1;
LABEL_9:
          v6 = v13;
          goto LABEL_10;
        }

LABEL_7:
        if (self->_updateFlags.updated)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setToggleAspectFitButtonPossibleTitles:]"];
          [currentHandler handleFailureInFunction:v12 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1374 description:{@"invalidating %lu after it already has been updated", 1}];

          abort();
        }

        goto LABEL_8;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_7;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 1;
      v6 = v13;
      if (!willPerformUpdate)
      {
        [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (void)setToggleAspectFitButtonTitle:(id)title
{
  titleCopy = title;
  v6 = titleCopy;
  if (self->_toggleAspectFitButtonTitle != titleCopy)
  {
    v13 = titleCopy;
    v7 = [(NSString *)titleCopy isEqual:?];
    v6 = v13;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_toggleAspectFitButtonTitle, title);
      ++self->_toggleAspectFitButtonVersion;
      self->_cachedSizeByButtonIdentifier[4] = *off_1E7722230;
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_8:
          p_updateFlags->needsUpdate = needsUpdate | 1;
LABEL_9:
          v6 = v13;
          goto LABEL_10;
        }

LABEL_7:
        if (self->_updateFlags.updated)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setToggleAspectFitButtonTitle:]"];
          [currentHandler handleFailureInFunction:v12 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1364 description:{@"invalidating %lu after it already has been updated", 1}];

          abort();
        }

        goto LABEL_8;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_7;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 1;
      v6 = v13;
      if (!willPerformUpdate)
      {
        [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (void)setLongestPossibleSelectionTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_longestPossibleSelectionTitle != titleCopy)
  {
    v14 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v14;
    if (!v6)
    {
      v7 = [(NSString *)v14 copy];
      longestPossibleSelectionTitle = self->_longestPossibleSelectionTitle;
      self->_longestPossibleSelectionTitle = v7;

      self->_cachedLongestPossibleSelectionTitleSize = *off_1E7722230;
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_8:
          p_updateFlags->needsUpdate = needsUpdate | 1;
LABEL_9:
          v5 = v14;
          goto LABEL_10;
        }

LABEL_7:
        if (self->_updateFlags.updated)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setLongestPossibleSelectionTitle:]"];
          [currentHandler handleFailureInFunction:v13 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1354 description:{@"invalidating %lu after it already has been updated", 1}];

          abort();
        }

        goto LABEL_8;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_7;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 1;
      v5 = v14;
      if (!willPerformUpdate)
      {
        [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (void)setSelectionTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_selectionTitle != titleCopy)
  {
    v14 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v14;
    if (!v6)
    {
      v7 = [(NSString *)v14 copy];
      selectionTitle = self->_selectionTitle;
      self->_selectionTitle = v7;

      ++self->_selectionTitleVersion;
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_8:
          p_updateFlags->needsUpdate = needsUpdate | 1;
LABEL_9:
          v5 = v14;
          goto LABEL_10;
        }

LABEL_7:
        if (self->_updateFlags.updated)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setSelectionTitle:]"];
          [currentHandler handleFailureInFunction:v13 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1345 description:{@"invalidating %lu after it already has been updated", 1}];

          abort();
        }

        goto LABEL_8;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_7;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 1;
      v5 = v14;
      if (!willPerformUpdate)
      {
        [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (void)_invalidateFilterButton
{
  ++self->_filterButtonVersion;
  self->_cachedSizeByButtonIdentifier[1] = *off_1E7722230;
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout _invalidateFilterButton]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1336 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)setFilterButtonHighlighted:(BOOL)highlighted
{
  if (self->_filterButtonHighlighted != highlighted)
  {
    self->_filterButtonHighlighted = highlighted;
    [(PXCuratedLibrarySectionHeaderLayout *)self _invalidateFilterButton];
  }
}

- (void)setFilterButtonTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_filterButtonTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      filterButtonTitle = self->_filterButtonTitle;
      self->_filterButtonTitle = v7;

      [(PXCuratedLibrarySectionHeaderLayout *)self _invalidateFilterButton];
      v5 = v9;
    }
  }
}

- (void)setFilterButtonCaption:(id)caption
{
  captionCopy = caption;
  v5 = captionCopy;
  if (self->_filterButtonCaption != captionCopy)
  {
    v9 = captionCopy;
    v6 = [(NSString *)captionCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      filterButtonCaption = self->_filterButtonCaption;
      self->_filterButtonCaption = v7;

      [(PXCuratedLibrarySectionHeaderLayout *)self _invalidateFilterButton];
      v5 = v9;
    }
  }
}

- (void)setSelectButtonTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_selectButtonTitle != titleCopy)
  {
    v14 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v14;
    if (!v6)
    {
      v7 = [(NSString *)v14 copy];
      selectButtonTitle = self->_selectButtonTitle;
      self->_selectButtonTitle = v7;

      ++self->_selectButtonVersion;
      self->_cachedSizeByButtonIdentifier[2] = *off_1E7722230;
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_8:
          p_updateFlags->needsUpdate = needsUpdate | 1;
LABEL_9:
          v5 = v14;
          goto LABEL_10;
        }

LABEL_7:
        if (self->_updateFlags.updated)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setSelectButtonTitle:]"];
          [currentHandler handleFailureInFunction:v13 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1306 description:{@"invalidating %lu after it already has been updated", 1}];

          abort();
        }

        goto LABEL_8;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_7;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 1;
      v5 = v14;
      if (!willPerformUpdate)
      {
        [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (void)setControlStackButtonSelected:(BOOL)selected
{
  if (self->_controlStackButtonSelected != selected)
  {
    self->_controlStackButtonSelected = selected;
    ++self->_controlStackButtonVersion;
    ++self->_zoomInButtonVersion;
    ++self->_zoomOutButtonVersion;
    ++self->_toggleAspectFitButtonVersion;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setControlStackButtonSelected:]"];
        [currentHandler handleFailureInFunction:v8 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1295 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {

      [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
    }
  }
}

- (void)_invalidateEllipsisButton
{
  ++self->_ellipsisButtonVersion;
  self->_cachedSizeByButtonIdentifier[0] = *off_1E7722230;
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout _invalidateEllipsisButton]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1284 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)setEllipsisButtonHighlighted:(BOOL)highlighted
{
  if (self->_ellipsisButtonHighlighted != highlighted)
  {
    self->_ellipsisButtonHighlighted = highlighted;
    [(PXCuratedLibrarySectionHeaderLayout *)self _invalidateEllipsisButton];
  }
}

- (void)setShowSidebarButtonActionPerformer:(id)performer
{
  performerCopy = performer;
  v6 = performerCopy;
  if (self->_showSidebarButtonActionPerformer != performerCopy)
  {
    v16 = performerCopy;
    v7 = [(PXCuratedLibraryActionPerformer *)performerCopy isEqual:?];
    v6 = v16;
    if ((v7 & 1) == 0)
    {
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (v16 && self->_showSidebarButtonActionPerformer)
      {
        if (needsUpdate)
        {
          if (!self->_updateFlags.isPerformingUpdate)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (self->_updateFlags.isPerformingUpdate)
        {
LABEL_15:
          if ((self->_updateFlags.updated & 8) == 0)
          {
LABEL_16:
            v10 = needsUpdate | 8;
            goto LABEL_17;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setShowSidebarButtonActionPerformer:]"];
          v15 = 8;
LABEL_28:
          [currentHandler handleFailureInFunction:v14 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1266 description:{@"invalidating %lu after it already has been updated", v15}];

          abort();
        }

        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 8;
LABEL_24:
        p_updateFlags->needsUpdate = v12;
        if (!willPerformUpdate)
        {
          [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        }

        goto LABEL_18;
      }

      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
          goto LABEL_13;
        }
      }

      else if (!self->_updateFlags.isPerformingUpdate)
      {
        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 1;
        goto LABEL_24;
      }

      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setShowSidebarButtonActionPerformer:]"];
        v15 = 1;
        goto LABEL_28;
      }

LABEL_13:
      v10 = needsUpdate | 1;
LABEL_17:
      p_updateFlags->needsUpdate = v10;
LABEL_18:
      objc_storeStrong(&self->_showSidebarButtonActionPerformer, performer);
      ++self->_showSidebarButtonVersion;
      v6 = v16;
    }
  }
}

- (void)setToggleAspectFitButtonActionPerformer:(id)performer
{
  performerCopy = performer;
  v6 = performerCopy;
  if (self->_toggleAspectFitButtonActionPerformer != performerCopy)
  {
    v16 = performerCopy;
    v7 = [(PXCuratedLibraryActionPerformer *)performerCopy isEqual:?];
    v6 = v16;
    if ((v7 & 1) == 0)
    {
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (v16 && self->_toggleAspectFitButtonActionPerformer)
      {
        if (needsUpdate)
        {
          if (!self->_updateFlags.isPerformingUpdate)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (self->_updateFlags.isPerformingUpdate)
        {
LABEL_15:
          if ((self->_updateFlags.updated & 8) == 0)
          {
LABEL_16:
            v10 = needsUpdate | 8;
            goto LABEL_17;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setToggleAspectFitButtonActionPerformer:]"];
          v15 = 8;
LABEL_28:
          [currentHandler handleFailureInFunction:v14 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1257 description:{@"invalidating %lu after it already has been updated", v15}];

          abort();
        }

        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 8;
LABEL_24:
        p_updateFlags->needsUpdate = v12;
        if (!willPerformUpdate)
        {
          [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        }

        goto LABEL_18;
      }

      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
          goto LABEL_13;
        }
      }

      else if (!self->_updateFlags.isPerformingUpdate)
      {
        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 1;
        goto LABEL_24;
      }

      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setToggleAspectFitButtonActionPerformer:]"];
        v15 = 1;
        goto LABEL_28;
      }

LABEL_13:
      v10 = needsUpdate | 1;
LABEL_17:
      p_updateFlags->needsUpdate = v10;
LABEL_18:
      objc_storeStrong(&self->_toggleAspectFitButtonActionPerformer, performer);
      ++self->_toggleAspectFitButtonVersion;
      v6 = v16;
    }
  }
}

- (void)setZoomOutButtonActionPerformer:(id)performer
{
  performerCopy = performer;
  v6 = performerCopy;
  if (self->_zoomOutButtonActionPerformer != performerCopy)
  {
    v16 = performerCopy;
    v7 = [(PXCuratedLibraryActionPerformer *)performerCopy isEqual:?];
    v6 = v16;
    if ((v7 & 1) == 0)
    {
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (v16 && self->_zoomOutButtonActionPerformer)
      {
        if (needsUpdate)
        {
          if (!self->_updateFlags.isPerformingUpdate)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (self->_updateFlags.isPerformingUpdate)
        {
LABEL_15:
          if ((self->_updateFlags.updated & 8) == 0)
          {
LABEL_16:
            v10 = needsUpdate | 8;
            goto LABEL_17;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setZoomOutButtonActionPerformer:]"];
          v15 = 8;
LABEL_28:
          [currentHandler handleFailureInFunction:v14 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1248 description:{@"invalidating %lu after it already has been updated", v15}];

          abort();
        }

        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 8;
LABEL_24:
        p_updateFlags->needsUpdate = v12;
        if (!willPerformUpdate)
        {
          [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        }

        goto LABEL_18;
      }

      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
          goto LABEL_13;
        }
      }

      else if (!self->_updateFlags.isPerformingUpdate)
      {
        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 1;
        goto LABEL_24;
      }

      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setZoomOutButtonActionPerformer:]"];
        v15 = 1;
        goto LABEL_28;
      }

LABEL_13:
      v10 = needsUpdate | 1;
LABEL_17:
      p_updateFlags->needsUpdate = v10;
LABEL_18:
      objc_storeStrong(&self->_zoomOutButtonActionPerformer, performer);
      ++self->_zoomOutButtonVersion;
      v6 = v16;
    }
  }
}

- (void)setZoomInButtonActionPerformer:(id)performer
{
  performerCopy = performer;
  v6 = performerCopy;
  if (self->_zoomInButtonActionPerformer != performerCopy)
  {
    v16 = performerCopy;
    v7 = [(PXCuratedLibraryActionPerformer *)performerCopy isEqual:?];
    v6 = v16;
    if ((v7 & 1) == 0)
    {
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (v16 && self->_zoomInButtonActionPerformer)
      {
        if (needsUpdate)
        {
          if (!self->_updateFlags.isPerformingUpdate)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (self->_updateFlags.isPerformingUpdate)
        {
LABEL_15:
          if ((self->_updateFlags.updated & 8) == 0)
          {
LABEL_16:
            v10 = needsUpdate | 8;
            goto LABEL_17;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setZoomInButtonActionPerformer:]"];
          v15 = 8;
LABEL_28:
          [currentHandler handleFailureInFunction:v14 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1239 description:{@"invalidating %lu after it already has been updated", v15}];

          abort();
        }

        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 8;
LABEL_24:
        p_updateFlags->needsUpdate = v12;
        if (!willPerformUpdate)
        {
          [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        }

        goto LABEL_18;
      }

      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
          goto LABEL_13;
        }
      }

      else if (!self->_updateFlags.isPerformingUpdate)
      {
        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 1;
        goto LABEL_24;
      }

      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setZoomInButtonActionPerformer:]"];
        v15 = 1;
        goto LABEL_28;
      }

LABEL_13:
      v10 = needsUpdate | 1;
LABEL_17:
      p_updateFlags->needsUpdate = v10;
LABEL_18:
      objc_storeStrong(&self->_zoomInButtonActionPerformer, performer);
      ++self->_zoomInButtonVersion;
      v6 = v16;
    }
  }
}

- (void)setCancelButtonActionPerformer:(id)performer
{
  performerCopy = performer;
  v6 = performerCopy;
  if (self->_cancelButtonActionPerformer != performerCopy)
  {
    v16 = performerCopy;
    v7 = [(PXCuratedLibraryActionPerformer *)performerCopy isEqual:?];
    v6 = v16;
    if ((v7 & 1) == 0)
    {
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (v16 && self->_cancelButtonActionPerformer)
      {
        if (needsUpdate)
        {
          if (!self->_updateFlags.isPerformingUpdate)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (self->_updateFlags.isPerformingUpdate)
        {
LABEL_15:
          if ((self->_updateFlags.updated & 8) == 0)
          {
LABEL_16:
            v10 = needsUpdate | 8;
            goto LABEL_17;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setCancelButtonActionPerformer:]"];
          v15 = 8;
LABEL_28:
          [currentHandler handleFailureInFunction:v14 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1229 description:{@"invalidating %lu after it already has been updated", v15}];

          abort();
        }

        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 8;
LABEL_24:
        p_updateFlags->needsUpdate = v12;
        if (!willPerformUpdate)
        {
          [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        }

        goto LABEL_18;
      }

      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
          goto LABEL_13;
        }
      }

      else if (!self->_updateFlags.isPerformingUpdate)
      {
        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 1;
        goto LABEL_24;
      }

      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setCancelButtonActionPerformer:]"];
        v15 = 1;
        goto LABEL_28;
      }

LABEL_13:
      v10 = needsUpdate | 1;
LABEL_17:
      p_updateFlags->needsUpdate = v10;
LABEL_18:
      objc_storeStrong(&self->_cancelButtonActionPerformer, performer);
      ++self->_cancelButtonVersion;
      v6 = v16;
    }
  }
}

- (void)setSelectButtonActionPerformer:(id)performer
{
  performerCopy = performer;
  v6 = performerCopy;
  if (self->_selectButtonActionPerformer != performerCopy)
  {
    v16 = performerCopy;
    v7 = [(PXCuratedLibraryActionPerformer *)performerCopy isEqual:?];
    v6 = v16;
    if ((v7 & 1) == 0)
    {
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (v16 && self->_selectButtonActionPerformer)
      {
        if (needsUpdate)
        {
          if (!self->_updateFlags.isPerformingUpdate)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (self->_updateFlags.isPerformingUpdate)
        {
LABEL_15:
          if ((self->_updateFlags.updated & 8) == 0)
          {
LABEL_16:
            v10 = needsUpdate | 8;
            goto LABEL_17;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setSelectButtonActionPerformer:]"];
          v15 = 8;
LABEL_28:
          [currentHandler handleFailureInFunction:v14 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1219 description:{@"invalidating %lu after it already has been updated", v15}];

          abort();
        }

        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 8;
LABEL_24:
        p_updateFlags->needsUpdate = v12;
        if (!willPerformUpdate)
        {
          [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        }

        goto LABEL_18;
      }

      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
          goto LABEL_13;
        }
      }

      else if (!self->_updateFlags.isPerformingUpdate)
      {
        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 1;
        goto LABEL_24;
      }

      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setSelectButtonActionPerformer:]"];
        v15 = 1;
        goto LABEL_28;
      }

LABEL_13:
      v10 = needsUpdate | 1;
LABEL_17:
      p_updateFlags->needsUpdate = v10;
LABEL_18:
      objc_storeStrong(&self->_selectButtonActionPerformer, performer);
      ++self->_selectButtonVersion;
      v6 = v16;
    }
  }
}

- (void)setShowFiltersActionPerformer:(id)performer
{
  performerCopy = performer;
  v6 = performerCopy;
  if (self->_showFiltersActionPerformer != performerCopy)
  {
    v16 = performerCopy;
    v7 = [(PXCuratedLibraryShowFiltersActionPerformer *)performerCopy isEqual:?];
    v6 = v16;
    if ((v7 & 1) == 0)
    {
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (v16 && self->_showFiltersActionPerformer)
      {
        if (needsUpdate)
        {
          if (!self->_updateFlags.isPerformingUpdate)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (self->_updateFlags.isPerformingUpdate)
        {
LABEL_15:
          if ((self->_updateFlags.updated & 8) == 0)
          {
LABEL_16:
            v10 = needsUpdate | 8;
            goto LABEL_17;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setShowFiltersActionPerformer:]"];
          v15 = 8;
LABEL_28:
          [currentHandler handleFailureInFunction:v14 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1209 description:{@"invalidating %lu after it already has been updated", v15}];

          abort();
        }

        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 8;
LABEL_24:
        p_updateFlags->needsUpdate = v12;
        if (!willPerformUpdate)
        {
          [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        }

        goto LABEL_18;
      }

      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
          goto LABEL_13;
        }
      }

      else if (!self->_updateFlags.isPerformingUpdate)
      {
        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 1;
        goto LABEL_24;
      }

      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setShowFiltersActionPerformer:]"];
        v15 = 1;
        goto LABEL_28;
      }

LABEL_13:
      v10 = needsUpdate | 1;
LABEL_17:
      p_updateFlags->needsUpdate = v10;
LABEL_18:
      objc_storeStrong(&self->_showFiltersActionPerformer, performer);
      ++self->_filterButtonVersion;
      v6 = v16;
    }
  }
}

- (void)setEllipsisButtonActionPerformer:(id)performer
{
  performerCopy = performer;
  v6 = performerCopy;
  if (self->_ellipsisButtonActionPerformer != performerCopy)
  {
    v16 = performerCopy;
    v7 = [(PXCuratedLibraryEllipsisButtonActionPerformer *)performerCopy isEqual:?];
    v6 = v16;
    if ((v7 & 1) == 0)
    {
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (v16 && self->_ellipsisButtonActionPerformer)
      {
        if (needsUpdate)
        {
          if (!self->_updateFlags.isPerformingUpdate)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (self->_updateFlags.isPerformingUpdate)
        {
LABEL_15:
          if ((self->_updateFlags.updated & 8) == 0)
          {
LABEL_16:
            v10 = needsUpdate | 8;
            goto LABEL_17;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setEllipsisButtonActionPerformer:]"];
          v15 = 8;
LABEL_28:
          [currentHandler handleFailureInFunction:v14 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1197 description:{@"invalidating %lu after it already has been updated", v15}];

          abort();
        }

        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 8;
LABEL_24:
        p_updateFlags->needsUpdate = v12;
        if (!willPerformUpdate)
        {
          [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
        }

        goto LABEL_18;
      }

      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
          goto LABEL_13;
        }
      }

      else if (!self->_updateFlags.isPerformingUpdate)
      {
        willPerformUpdate = self->_updateFlags.willPerformUpdate;
        v12 = 1;
        goto LABEL_24;
      }

      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setEllipsisButtonActionPerformer:]"];
        v15 = 1;
        goto LABEL_28;
      }

LABEL_13:
      v10 = needsUpdate | 1;
LABEL_17:
      p_updateFlags->needsUpdate = v10;
LABEL_18:
      objc_storeStrong(&self->_ellipsisButtonActionPerformer, performer);
      ++self->_ellipsisButtonVersion;
      [(PXCuratedLibraryEllipsisButtonActionPerformer *)v16 setLayout:self];
      v6 = v16;
    }
  }
}

- (void)_updateLastBaseline
{
  [(PXCuratedLibrarySectionHeaderLayout *)self buttonsMaxY];
  v4 = v3;
  [(PXCuratedLibrarySectionHeaderLayout *)self titleSubtitleTopSpacing];
  v6 = v5;
  [(PXCuratedLibrarySectionHeaderLayout *)self titleSubtitleLastBaseline];
  v8 = v6 + v7;
  if (v4 >= v8)
  {
    v8 = v4;
  }

  [(PXCuratedLibrarySectionHeaderLayout *)self setLastBaseline:v8];
}

- (void)setTitleSubtitleTopSpacing:(double)spacing
{
  if (self->_titleSubtitleTopSpacing != spacing)
  {
    self->_titleSubtitleTopSpacing = spacing;
    [(PXCuratedLibrarySectionHeaderLayout *)self _updateLastBaseline];
  }
}

- (void)setTitleSubtitleLastBaseline:(double)baseline
{
  if (self->_titleSubtitleLastBaseline != baseline)
  {
    self->_titleSubtitleLastBaseline = baseline;
    [(PXCuratedLibrarySectionHeaderLayout *)self _updateLastBaseline];
  }
}

- (void)setButtonsMaxY:(double)y
{
  if (self->_buttonsMaxY != y)
  {
    self->_buttonsMaxY = y;
    [(PXCuratedLibrarySectionHeaderLayout *)self _updateLastBaseline];
  }
}

- (void)setShowsDebugDescription:(BOOL)description
{
  if (self->_showsDebugDescription != description)
  {
    self->_showsDebugDescription = description;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setShowsDebugDescription:]"];
        [currentHandler handleFailureInFunction:v8 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1151 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {

      [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setShowsBackgroundGradient:(BOOL)gradient
{
  if (self->_showsBackgroundGradient != gradient)
  {
    self->_showsBackgroundGradient = gradient;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setShowsBackgroundGradient:]"];
        [currentHandler handleFailureInFunction:v8 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1143 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {

      [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setLateralMargin:(double)margin
{
  if (self->_lateralMargin == margin)
  {
    return;
  }

  self->_lateralMargin = margin;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_8:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_7:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setLateralMargin:]"];
      [currentHandler handleFailureInFunction:v8 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1135 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_8;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_7;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)setEffectiveSpec:(id)spec
{
  specCopy = spec;
  if (self->_effectiveSpec != specCopy)
  {
    v12 = specCopy;
    objc_storeStrong(&self->_effectiveSpec, spec);
    ++self->_textVersion;
    ++self->_ellipsisButtonVersion;
    ++self->_selectButtonVersion;
    ++self->_cancelButtonVersion;
    ++self->_toggleAspectFitButtonVersion;
    ++self->_zoomInButtonVersion;
    ++self->_zoomOutButtonVersion;
    ++self->_controlStackButtonVersion;
    ++self->_showSidebarButtonVersion;
    ++self->_filterButtonVersion;
    [(PXCuratedLibrarySectionHeaderLayout *)self _discardAllCachedButtonSizes];
    [(PXCuratedLibrarySectionHeaderLayout *)self setControlStackButtonSelected:0];
    if ([(PXCuratedLibrarySectionHeaderLayoutSpec *)v12 renderMode])
    {
      titleSubtitleLabelSpec = [(PXCuratedLibrarySectionHeaderLayoutSpec *)v12 titleSubtitleLabelSpec];
      [titleSubtitleLabelSpec distanceBetweenTitleBaselineAndSubtitleBaseline];
      [(PXCuratedLibrarySectionHeaderLayout *)self setTitleSubtitleLastBaseline:?];
    }

    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_9:
        p_updateFlags->needsUpdate = needsUpdate | 5;
LABEL_10:
        specCopy = v12;
        goto LABEL_11;
      }

LABEL_8:
      if ((self->_updateFlags.updated & 5) != 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setEffectiveSpec:]"];
        [currentHandler handleFailureInFunction:v11 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1127 description:{@"invalidating %lu after it already has been updated", 5}];

        abort();
      }

      goto LABEL_9;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_8;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 5;
    specCopy = v12;
    if (!willPerformUpdate)
    {
      [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v11 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 0x20;
LABEL_8:
        specCopy = v11;
        goto LABEL_9;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 0x20) != 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setSpec:]"];
        [currentHandler handleFailureInFunction:v10 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1100 description:{@"invalidating %lu after it already has been updated", 32}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 32;
    specCopy = v11;
    if (!willPerformUpdate)
    {
      [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)setAssetCollectionReference:(id)reference
{
  referenceCopy = reference;
  v6 = referenceCopy;
  if (self->_assetCollectionReference != referenceCopy)
  {
    v18 = referenceCopy;
    v7 = [(PXAssetCollectionReference *)referenceCopy isEqual:?];
    v6 = v18;
    if ((v7 & 1) == 0)
    {
      v8 = self->_assetCollectionReference;
      objc_storeStrong(&self->_assetCollectionReference, reference);
      assetCollection = [(PXAssetCollectionReference *)v8 assetCollection];
      assetCollection2 = [(PXAssetCollectionReference *)self->_assetCollectionReference assetCollection];
      v11 = assetCollection2;
      if (assetCollection == assetCollection2)
      {
      }

      else
      {
        v12 = [assetCollection isEqual:assetCollection2];

        if ((v12 & 1) == 0)
        {
          p_updateFlags = &self->_updateFlags;
          needsUpdate = self->_updateFlags.needsUpdate;
          if (needsUpdate)
          {
            if (!self->_updateFlags.isPerformingUpdate)
            {
LABEL_11:
              p_updateFlags->needsUpdate = needsUpdate | 4;
              goto LABEL_12;
            }
          }

          else if (!self->_updateFlags.isPerformingUpdate)
          {
            willPerformUpdate = self->_updateFlags.willPerformUpdate;
            p_updateFlags->needsUpdate = 4;
            if (!willPerformUpdate)
            {
              [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
            }

            goto LABEL_12;
          }

          if ((self->_updateFlags.updated & 4) != 0)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout setAssetCollectionReference:]"];
            [currentHandler handleFailureInFunction:v17 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1091 description:{@"invalidating %lu after it already has been updated", 4}];

            abort();
          }

          goto LABEL_11;
        }
      }

LABEL_12:

      v6 = v18;
    }
  }
}

- (void)alphaDidChange
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibrarySectionHeaderLayout;
  [(PXCuratedLibrarySectionHeaderLayout *)&v8 alphaDidChange];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout alphaDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1079 description:{@"invalidating %lu after it already has been updated", 2}];

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
    [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)displayScaleDidChange
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibrarySectionHeaderLayout;
  [(PXCuratedLibrarySectionHeaderLayout *)&v8 displayScaleDidChange];
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout displayScaleDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1074 description:{@"invalidating %lu after it already has been updated", 1}];

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
    [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)referenceOptionsDidChange
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibrarySectionHeaderLayout;
  [(PXCuratedLibrarySectionHeaderLayout *)&v8 referenceOptionsDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x20;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x20) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout referenceOptionsDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1069 description:{@"invalidating %lu after it already has been updated", 32}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 32;
  if (!willPerformUpdate)
  {
    [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)referenceSizeDidChange
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibrarySectionHeaderLayout;
  [(PXCuratedLibrarySectionHeaderLayout *)&v8 referenceSizeDidChange];
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout referenceSizeDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1064 description:{@"invalidating %lu after it already has been updated", 1}];

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
    [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)safeAreaInsetsDidChange
{
  v9.receiver = self;
  v9.super_class = PXCuratedLibrarySectionHeaderLayout;
  [(PXCuratedLibrarySectionHeaderLayout *)&v9 safeAreaInsetsDidChange];
  spec = [(PXCuratedLibrarySectionHeaderLayout *)self spec];
  if (([spec shouldTextFadeOutWhenReachingTop] & 1) != 0 || objc_msgSend(spec, "shouldButtonsFadeOutWhenReachingTop"))
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_8:
        p_updateFlags->needsUpdate = needsUpdate | 2;
        goto LABEL_9;
      }

LABEL_7:
      if ((self->_updateFlags.updated & 2) != 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout safeAreaInsetsDidChange]"];
        [currentHandler handleFailureInFunction:v8 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1058 description:{@"invalidating %lu after it already has been updated", 2}];

        abort();
      }

      goto LABEL_8;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_7;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 2;
    if (!willPerformUpdate)
    {
      [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
    }
  }

LABEL_9:
}

- (void)visibleRectDidChange
{
  v10.receiver = self;
  v10.super_class = PXCuratedLibrarySectionHeaderLayout;
  [(PXCuratedLibrarySectionHeaderLayout *)&v10 visibleRectDidChange];
  spec = [(PXCuratedLibrarySectionHeaderLayout *)self spec];
  if ([(PXCuratedLibrarySectionHeaderLayout *)self safeAreaBehavior])
  {
    p_updateFlags = &self->_updateFlags;
    if (self->_updateFlags.needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate |= 1uLL;
        goto LABEL_8;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout visibleRectDidChange]"];
        [currentHandler handleFailureInFunction:v9 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1047 description:{@"invalidating %lu after it already has been updated", 1}];
        goto LABEL_23;
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
    }
  }

LABEL_8:
  if (([spec shouldTextFadeOutWhenReachingTop] & 1) != 0 || objc_msgSend(spec, "shouldButtonsFadeOutWhenReachingTop"))
  {
    v5 = &self->_updateFlags;
    if (self->_updateFlags.needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
LABEL_14:
      if ((self->_updateFlags.updated & 2) == 0)
      {
LABEL_15:
        v5->needsUpdate |= 2uLL;
        goto LABEL_16;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout visibleRectDidChange]"];
      [currentHandler handleFailureInFunction:v9 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:1050 description:{@"invalidating %lu after it already has been updated", 2}];
LABEL_23:

      abort();
    }

    v6 = self->_updateFlags.willPerformUpdate;
    v5->needsUpdate = 2;
    if (!v6)
    {
      [(PXCuratedLibrarySectionHeaderLayout *)self setNeedsUpdate];
    }
  }

LABEL_16:
}

- (void)setVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (rect.origin.y <= 0.0)
  {
    [(PXCuratedLibrarySectionHeaderLayout *)self visibleRect];
    v8 = v9 > 0.0;
  }

  else
  {
    v8 = 0;
  }

  if (y <= 0.0)
  {
    v11 = 0;
  }

  else
  {
    [(PXCuratedLibrarySectionHeaderLayout *)self visibleRect];
    v11 = v10 <= 0.0;
  }

  v12 = v8 || v11;
  v13.receiver = self;
  v13.super_class = PXCuratedLibrarySectionHeaderLayout;
  [(PXCuratedLibrarySectionHeaderLayout *)&v13 setVisibleRect:x, y, width, height];
  if (v12)
  {
    ++self->_ellipsisButtonVersion;
  }
}

- (unsigned)spriteIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  referenceCopy = reference;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actionType = [referenceCopy actionType];
    if ([actionType isEqualToString:@"PXCuratedLibraryActionEllipsisButton"])
    {
      if (self->_wantsOverBackgroundAppearance)
      {
        v10 = @"PXCuratedLibrarySectionHeaderItemEllipsisButtonOverBackground";
      }

      else
      {
        v10 = @"PXCuratedLibrarySectionHeaderItemEllipsisButton";
      }

      v11 = [(NSArray *)self->_itemIdentifierBySpriteIndex indexOfObject:v10];
      ellipsisButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self ellipsisButtonActionPerformer];
    }

    else
    {
      if ([actionType isEqualToString:@"PXCuratedLibraryActionShowFilters"])
      {
        sharedInstance = [off_1E7721810 sharedInstance];
        if ([sharedInstance enableFilterDropDownButton])
        {
          v14 = @"PXCuratedLibrarySectionHeaderItemFilterButton";
        }

        else if ([sharedInstance enableNewActionMenu])
        {
          v14 = @"PXCuratedLibrarySectionHeaderItemEllipsisButton";
        }

        else
        {
          v14 = 0;
        }

        v11 = [(NSArray *)self->_itemIdentifierBySpriteIndex indexOfObject:v14];
        *objectReference = [(PXCuratedLibrarySectionHeaderLayout *)self showFiltersActionPerformer];

        goto LABEL_18;
      }

      if ([actionType isEqualToString:@"PXCuratedLibraryActionEnterSelectMode"])
      {
        v11 = [(NSArray *)self->_itemIdentifierBySpriteIndex indexOfObject:@"PXCuratedLibrarySectionHeaderItemSelectButton"];
        ellipsisButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self selectButtonActionPerformer];
      }

      else if ([actionType isEqualToString:@"PXCuratedLibraryActionCancelSelectMode"])
      {
        v11 = [(NSArray *)self->_itemIdentifierBySpriteIndex indexOfObject:@"PXCuratedLibrarySectionHeaderItemCancelButton"];
        ellipsisButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self cancelButtonActionPerformer];
      }

      else if ([actionType isEqualToString:@"PXCuratedLibraryActionAllPhotosToggleAspectFit"])
      {
        v11 = [(NSArray *)self->_itemIdentifierBySpriteIndex indexOfObject:@"PXCuratedLibrarySectionHeaderItemToggleAspectFitButton"];
        ellipsisButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self toggleAspectFitButtonActionPerformer];
      }

      else if ([actionType isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomIn"])
      {
        v11 = [(NSArray *)self->_itemIdentifierBySpriteIndex indexOfObject:@"PXCuratedLibrarySectionHeaderItemZoomInButton"];
        ellipsisButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self zoomInButtonActionPerformer];
      }

      else
      {
        if (![actionType isEqualToString:@"PXCuratedLibraryActionAllPhotosZoomOut"])
        {
          if ([actionType isEqualToString:@"PXCuratedLibraryActionShowSidebar"])
          {
            v11 = [(NSArray *)self->_itemIdentifierBySpriteIndex indexOfObject:@"PXCuratedLibrarySectionHeaderItemShowSidebarButton"];
            *objectReference = [(PXCuratedLibrarySectionHeaderLayout *)self showSidebarButtonActionPerformer];
          }

          else
          {
            v11 = -1;
          }

          goto LABEL_18;
        }

        v11 = [(NSArray *)self->_itemIdentifierBySpriteIndex indexOfObject:@"PXCuratedLibrarySectionHeaderItemZoomOutButton"];
        ellipsisButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self zoomOutButtonActionPerformer];
      }
    }

    *objectReference = ellipsisButtonActionPerformer;
LABEL_18:

    goto LABEL_19;
  }

  v16.receiver = self;
  v16.super_class = PXCuratedLibrarySectionHeaderLayout;
  v11 = [(PXCuratedLibrarySectionHeaderLayout *)&v16 spriteIndexForObjectReference:referenceCopy options:options updatedObjectReference:objectReference];
LABEL_19:

  return v11;
}

- (id)objectReferenceForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  if ([(NSArray *)self->_itemIdentifierBySpriteIndex count]<= index)
  {
    v14.receiver = self;
    v14.super_class = PXCuratedLibrarySectionHeaderLayout;
    v9 = [(PXCuratedLibrarySectionHeaderLayout *)&v14 objectReferenceForSpriteIndex:v3];
    goto LABEL_42;
  }

  v5 = [(NSArray *)self->_itemIdentifierBySpriteIndex objectAtIndexedSubscript:v3];
  v6 = v5;
  if (v5 == @"PXCuratedLibrarySectionHeaderItemEllipsisButton" || v5 == @"PXCuratedLibrarySectionHeaderItemEllipsisButtonOverBackground")
  {
    ellipsisButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self ellipsisButtonActionPerformer];
LABEL_40:
    v9 = ellipsisButtonActionPerformer;
    goto LABEL_41;
  }

  if (v5 == @"PXCuratedLibrarySectionHeaderItemFilterButton" || v5 == @"PXCuratedLibrarySectionHeaderItemFilterButtonOverBackground")
  {
    ellipsisButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self showFiltersActionPerformer];
    goto LABEL_40;
  }

  if (v5 == @"PXCuratedLibrarySectionHeaderItemSelectButton" || v5 == @"PXCuratedLibrarySectionHeaderItemSelectButtonOverBackground")
  {
    ellipsisButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self selectButtonActionPerformer];
    goto LABEL_40;
  }

  if (v5 == @"PXCuratedLibrarySectionHeaderItemCancelButton" || v5 == @"PXCuratedLibrarySectionHeaderItemCancelButtonOverBackground")
  {
    ellipsisButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self cancelButtonActionPerformer];
    goto LABEL_40;
  }

  if (v5 == @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButton" || v5 == @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButtonOverBackground")
  {
    ellipsisButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self toggleAspectFitButtonActionPerformer];
    goto LABEL_40;
  }

  if (v5 == @"PXCuratedLibrarySectionHeaderItemZoomInButton" || v5 == @"PXCuratedLibrarySectionHeaderItemZoomInButtonOverBackground")
  {
    ellipsisButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self zoomInButtonActionPerformer];
    goto LABEL_40;
  }

  if (v5 == @"PXCuratedLibrarySectionHeaderItemZoomOutButton" || v5 == @"PXCuratedLibrarySectionHeaderItemZoomOutButtonOverBackground")
  {
    ellipsisButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self zoomOutButtonActionPerformer];
    goto LABEL_40;
  }

  if (v5 == @"PXCuratedLibrarySectionHeaderItemShowSidebarButton" || v5 == @"PXCuratedLibrarySectionHeaderItemShowSidebarButtonOverBackground")
  {
    ellipsisButtonActionPerformer = [(PXCuratedLibrarySectionHeaderLayout *)self showSidebarButtonActionPerformer];
    goto LABEL_40;
  }

  v9 = 0;
LABEL_41:

LABEL_42:

  return v9;
}

- (id)_selectionTitleLabelConfigurationWithTitle:(id)title spec:(id)spec
{
  specCopy = spec;
  titleCopy = title;
  v7 = objc_alloc_init(PXCuratedLibraryLabelConfiguration);
  [(PXCuratedLibraryLabelConfiguration *)v7 setText:titleCopy];

  [(PXCuratedLibraryLabelConfiguration *)v7 setTextAlignment:2];
  titleLabelSpec = [specCopy titleLabelSpec];

  textColor = [titleLabelSpec textColor];
  [(PXCuratedLibraryLabelConfiguration *)v7 setTextColor:textColor];

  return v7;
}

- (unint64_t)toggleAspectFitButton
{
  if (self->_usesCompactToggleAspectFitButton)
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

- (void)setUsesCompactToggleAspectFitButton:(BOOL)button
{
  if (self->_usesCompactToggleAspectFitButton != button)
  {
    self->_usesCompactToggleAspectFitButton = button;
    ++self->_toggleAspectFitButtonVersion;
  }
}

- (UIEdgeInsets)safeAreaInsetsWithCurrentBehavior
{
  [(PXCuratedLibrarySectionHeaderLayout *)self safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  safeAreaBehavior = [(PXCuratedLibrarySectionHeaderLayout *)self safeAreaBehavior];
  switch(safeAreaBehavior)
  {
    case 2:
      effectiveSpec = [(PXCuratedLibrarySectionHeaderLayout *)self effectiveSpec];
      [effectiveSpec minimumSpacingBetweenTopSafeAreaAndContentTop];
      v15 = v14;
      userInterfaceIdiom = [effectiveSpec userInterfaceIdiom];
      layoutOrientation = [effectiveSpec layoutOrientation];
      ellipsisButtonSpecialTreatment = [effectiveSpec ellipsisButtonSpecialTreatment];
      if (userInterfaceIdiom == 1 && layoutOrientation == 2 && (ellipsisButtonSpecialTreatment & 1) == 0)
      {
        [effectiveSpec contentPadding];
        v4 = v19;
      }

      else
      {
        [(PXCuratedLibrarySectionHeaderLayout *)self visibleRect];
        if (v15 + v4 + v20 >= v4 + v15)
        {
          v4 = v4 + v15;
        }

        else
        {
          v4 = v15 + v4 + v20;
        }
      }

      break;
    case 1:
      effectiveSpec2 = [(PXCuratedLibrarySectionHeaderLayout *)self effectiveSpec];
      [effectiveSpec2 minimumSpacingBetweenTopSafeAreaAndContentTop];

      [(PXCuratedLibrarySectionHeaderLayout *)self visibleRect];
      PXClamp();
    case 0:
      v4 = *off_1E7721FA8;
      v6 = *(off_1E7721FA8 + 1);
      v8 = *(off_1E7721FA8 + 2);
      v10 = *(off_1E7721FA8 + 3);
      break;
  }

  v21 = v4;
  v22 = v6;
  v23 = v8;
  v24 = v10;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (void)_updateSpritesAlpha
{
  [(PXCuratedLibrarySectionHeaderLayout *)self alpha];
  v4 = v3;
  [(PXCuratedLibrarySectionHeaderLayout *)self titleAlpha];
  v6 = v5;
  [(PXCuratedLibrarySectionHeaderLayout *)self buttonsAlpha];
  v8 = v7;
  spec = [(PXCuratedLibrarySectionHeaderLayout *)self spec];
  if (([spec shouldTextFadeOutWhenReachingTop] & 1) != 0 || objc_msgSend(spec, "shouldButtonsFadeOutWhenReachingTop"))
  {
    [(PXCuratedLibrarySectionHeaderLayout *)self visibleRect];
    CGRectGetMinY(v33);
    [(PXCuratedLibrarySectionHeaderLayout *)self safeAreaInsets];
    [spec fadeOutDistanceFromSafeAreaTop];
    [spec fadeOutDistance];
    PXClamp();
  }

  v10 = v8;
  v11 = dbl_1A5380D30[v8 < 1.0];
  if (v6 >= v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  alternateAppearanceMixAnimator = [(PXCuratedLibrarySectionHeaderLayout *)self alternateAppearanceMixAnimator];
  [alternateAppearanceMixAnimator presentationValue];
  v15 = v14;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PXCuratedLibrarySectionHeaderLayout__updateSpritesAlpha__block_invoke;
  aBlock[3] = &__block_descriptor_40_e8_d16__0d8l;
  aBlock[4] = v15;
  v16 = _Block_copy(aBlock);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __58__PXCuratedLibrarySectionHeaderLayout__updateSpritesAlpha__block_invoke_2;
  v31[3] = &__block_descriptor_40_e8_d16__0d8l;
  v31[4] = v15;
  v17 = _Block_copy(v31);
  numberOfSprites = [(PXCuratedLibrarySectionHeaderLayout *)self numberOfSprites];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __58__PXCuratedLibrarySectionHeaderLayout__updateSpritesAlpha__block_invoke_3;
  v25[3] = &unk_1E772D760;
  v19 = numberOfSprites << 32;
  v25[4] = self;
  v26 = v16;
  v27 = v17;
  v28 = v12;
  v29 = v10;
  v30 = v11;
  v20 = v17;
  v21 = v16;
  [(PXCuratedLibrarySectionHeaderLayout *)self modifySpritesInRange:v19 state:v25];
  localNumberOfSprites = [(PXCuratedLibrarySectionHeaderLayout *)self localNumberOfSprites];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __58__PXCuratedLibrarySectionHeaderLayout__updateSpritesAlpha__block_invoke_4;
  v23[3] = &unk_1E772D788;
  v23[4] = self;
  v24 = localNumberOfSprites;
  *&v23[5] = v4;
  *&v23[6] = v12;
  [(PXCuratedLibrarySectionHeaderLayout *)self installLayoutCompletionBlock:v23];
}

void __58__PXCuratedLibrarySectionHeaderLayout__updateSpritesAlpha__block_invoke_3(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v6 = a2;
    v28 = a1 + 40;
    v8 = a1 + 48;
    while (1)
    {
      v9 = [*(*(a1 + 32) + 896) objectAtIndexedSubscript:v6];
      v11 = v9;
      if (v9 == @"PXCuratedLibrarySectionHeaderItemTitleSubtitle" || v9 == @"PXCuratedLibrarySectionHeaderItemSelectionTitle")
      {
        break;
      }

      if (v9 == @"PXCuratedLibrarySectionHeaderItemSelectionTitleOverBackground" || v9 == @"PXCuratedLibrarySectionHeaderItemTitleSubtitleOverBackground")
      {
        v13 = *(a1 + 48);
        goto LABEL_15;
      }

      v23 = v9 == @"PXCuratedLibrarySectionHeaderItemShowSidebarButton" || v9 == @"PXCuratedLibrarySectionHeaderItemZoomOutButton" || v9 == @"PXCuratedLibrarySectionHeaderItemZoomInButton" || v9 == @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButton" || v9 == @"PXCuratedLibrarySectionHeaderItemSelectButton" || v9 == @"PXCuratedLibrarySectionHeaderItemCancelButton" || v9 == @"PXCuratedLibrarySectionHeaderItemControlStackButton" || v9 == @"PXCuratedLibrarySectionHeaderItemEllipsisButton" || v9 == @"PXCuratedLibrarySectionHeaderItemFilterButton";
      v24 = v28;
      if (v23 || (v24 = v8, v9 == @"PXCuratedLibrarySectionHeaderItemShowSidebarButtonOverBackground") || (v24 = v8, v9 == @"PXCuratedLibrarySectionHeaderItemFilterButtonOverBackground") || (v24 = v8, v9 == @"PXCuratedLibrarySectionHeaderItemEllipsisButtonOverBackground") || (v24 = v8, v9 == @"PXCuratedLibrarySectionHeaderItemZoomOutButtonOverBackground") || (v24 = v8, v9 == @"PXCuratedLibrarySectionHeaderItemZoomInButtonOverBackground") || (v24 = v8, v9 == @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButtonOverBackground") || (v24 = v8, v9 == @"PXCuratedLibrarySectionHeaderItemControlStackButtonOverBackground") || (v24 = v8, v9 == @"PXCuratedLibrarySectionHeaderItemSelectButtonOverBackground") || (v24 = v8, v9 == @"PXCuratedLibrarySectionHeaderItemCancelButtonOverBackground"))
      {
        v25 = (*(*v24 + 16))(*(a1 + 64));
        *(a4 + 160 * v6) = v25;
        *(a3 + 32 * v6 + 16) = *(a1 + 72);
        goto LABEL_17;
      }

      if (v9 == @"PXCuratedLibrarySectionHeaderItemGradient")
      {
        v26 = *(a1 + 40);
        [*(a1 + 32) gradientAlpha];
        v13 = v26;
        goto LABEL_16;
      }

LABEL_17:

      ++v6;
      if (!--v4)
      {
        return;
      }
    }

    v13 = *(a1 + 40);
LABEL_15:
    v10.n128_u64[0] = *(a1 + 56);
LABEL_16:
    v15 = (*(v13 + 16))(v10);
    *(a4 + 160 * v6) = v15;
    goto LABEL_17;
  }
}

uint64_t __58__PXCuratedLibrarySectionHeaderLayout__updateSpritesAlpha__block_invoke_4(uint64_t result)
{
  v1 = *(result + 40) > 0.0 && *(result + 56) != 0;
  *(*(result + 32) + 904) = v1;
  *(*(result + 32) + 905) = *(result + 48) > 0.0;
  return result;
}

- (void)_updateSpriteTags
{
  if (_updateSpriteTags_onceToken != -1)
  {
    dispatch_once(&_updateSpriteTags_onceToken, &__block_literal_global_316);
  }

  v9 = 0u;
  v10 = 0u;
  assetCollectionReference = [(PXCuratedLibrarySectionHeaderLayout *)self assetCollectionReference];
  v4 = assetCollectionReference;
  if (assetCollectionReference)
  {
    [assetCollectionReference indexPath];
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v5 = [(NSArray *)self->_itemIdentifierBySpriteIndex count];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = v9;
  v8 = v10;
  v6[2] = __56__PXCuratedLibrarySectionHeaderLayout__updateSpriteTags__block_invoke_339;
  v6[3] = &unk_1E7740B80;
  v6[4] = self;
  [(PXCuratedLibrarySectionHeaderLayout *)self modifySpritesInRange:v5 << 32 state:v6];
}

uint64_t __56__PXCuratedLibrarySectionHeaderLayout__updateSpriteTags__block_invoke_339(uint64_t result, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    [*(*(result + 32) + 896) objectAtIndexedSubscript:a2];
    v2 = [_updateSpriteTags_itemIDToSpriteKindMap objectForKeyedSubscript:objc_claimAutoreleasedReturnValue()];
    [v2 integerValue];

    PXGSectionedSpriteTagMake();
  }

  return result;
}

void __56__PXCuratedLibrarySectionHeaderLayout__updateSpriteTags__block_invoke()
{
  v3[21] = *MEMORY[0x1E69E9840];
  v2[0] = @"PXCuratedLibrarySectionHeaderItemGradient";
  v2[1] = @"PXCuratedLibrarySectionHeaderItemTitleSubtitle";
  v3[0] = &unk_1F1909838;
  v3[1] = &unk_1F1909850;
  v2[2] = @"PXCuratedLibrarySectionHeaderItemTitleSubtitleOverBackground";
  v2[3] = @"PXCuratedLibrarySectionHeaderItemEllipsisButton";
  v3[2] = &unk_1F1909850;
  v3[3] = &unk_1F1909868;
  v2[4] = @"PXCuratedLibrarySectionHeaderItemEllipsisButtonOverBackground";
  v2[5] = @"PXCuratedLibrarySectionHeaderItemFilterButton";
  v3[4] = &unk_1F1909868;
  v3[5] = &unk_1F1909880;
  v2[6] = @"PXCuratedLibrarySectionHeaderItemFilterButtonOverBackground";
  v2[7] = @"PXCuratedLibrarySectionHeaderItemSelectButton";
  v3[6] = &unk_1F1909880;
  v3[7] = &unk_1F1909898;
  v2[8] = @"PXCuratedLibrarySectionHeaderItemSelectButtonOverBackground";
  v2[9] = @"PXCuratedLibrarySectionHeaderItemCancelButton";
  v3[8] = &unk_1F1909898;
  v3[9] = &unk_1F19098B0;
  v2[10] = @"PXCuratedLibrarySectionHeaderItemCancelButtonOverBackground";
  v2[11] = @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButton";
  v3[10] = &unk_1F19098B0;
  v3[11] = &unk_1F19098C8;
  v2[12] = @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButtonOverBackground";
  v2[13] = @"PXCuratedLibrarySectionHeaderItemZoomInButton";
  v3[12] = &unk_1F19098C8;
  v3[13] = &unk_1F19098E0;
  v2[14] = @"PXCuratedLibrarySectionHeaderItemZoomInButtonOverBackground";
  v2[15] = @"PXCuratedLibrarySectionHeaderItemZoomOutButton";
  v3[14] = &unk_1F19098E0;
  v3[15] = &unk_1F19098F8;
  v2[16] = @"PXCuratedLibrarySectionHeaderItemZoomOutButtonOverBackground";
  v2[17] = @"PXCuratedLibrarySectionHeaderItemControlStackButton";
  v3[16] = &unk_1F19098F8;
  v3[17] = &unk_1F1909910;
  v2[18] = @"PXCuratedLibrarySectionHeaderItemControlStackButtonOverBackground";
  v2[19] = @"PXCuratedLibrarySectionHeaderItemShowSidebarButton";
  v3[18] = &unk_1F1909910;
  v3[19] = &unk_1F1909928;
  v2[20] = @"PXCuratedLibrarySectionHeaderItemShowSidebarButtonOverBackground";
  v3[20] = &unk_1F1909928;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:21];
  v1 = _updateSpriteTags_itemIDToSpriteKindMap;
  _updateSpriteTags_itemIDToSpriteKindMap = v0;
}

- (void)_updateButtonActionPerformers
{
  if (_updateButtonActionPerformers_onceToken != -1)
  {
    dispatch_once(&_updateButtonActionPerformers_onceToken, &__block_literal_global_308);
  }

  v3 = [(NSArray *)self->_itemIdentifierBySpriteIndex indexesOfObjectsPassingTest:&__block_literal_global_312];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__PXCuratedLibrarySectionHeaderLayout__updateButtonActionPerformers__block_invoke_3;
  v4[3] = &unk_1E77369E0;
  v4[4] = self;
  [(PXCuratedLibrarySectionHeaderLayout *)self modifySpritesAtIndexes:v3 state:v4];
}

void __68__PXCuratedLibrarySectionHeaderLayout__updateButtonActionPerformers__block_invoke_3(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v7 = a2;
    v9 = 0;
    v15 = v19;
    do
    {
      v10 = [*(*(a1 + 32) + 896) objectAtIndexedSubscript:{(v7 + v9), v15}];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      v19[0] = __68__PXCuratedLibrarySectionHeaderLayout__updateButtonActionPerformers__block_invoke_4;
      v19[1] = &unk_1E772D6F0;
      v20 = v10;
      v21 = a5;
      v22 = v9;
      v11 = v10;
      v12 = _Block_copy(aBlock);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __68__PXCuratedLibrarySectionHeaderLayout__updateButtonActionPerformers__block_invoke_5;
      v16[3] = &unk_1E772D718;
      v17 = v12;
      v13 = v12;
      v14 = _Block_copy(v16);
      v14[2](v14, @"PXCuratedLibrarySectionHeaderItemEllipsisButton", @"PXCuratedLibrarySectionHeaderItemEllipsisButtonOverBackground", *(*(a1 + 32) + 874));
      v14[2](v14, @"PXCuratedLibrarySectionHeaderItemFilterButton", @"PXCuratedLibrarySectionHeaderItemFilterButtonOverBackground", *(*(a1 + 32) + 876));
      v14[2](v14, @"PXCuratedLibrarySectionHeaderItemControlStackButton", @"PXCuratedLibrarySectionHeaderItemControlStackButtonOverBackground", *(*(a1 + 32) + 890));
      v14[2](v14, @"PXCuratedLibrarySectionHeaderItemSelectButton", @"PXCuratedLibrarySectionHeaderItemSelectButtonOverBackground", *(*(a1 + 32) + 880));
      v14[2](v14, @"PXCuratedLibrarySectionHeaderItemCancelButton", @"PXCuratedLibrarySectionHeaderItemCancelButtonOverBackground", *(*(a1 + 32) + 882));
      v14[2](v14, @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButton", @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButtonOverBackground", *(*(a1 + 32) + 884));
      v14[2](v14, @"PXCuratedLibrarySectionHeaderItemZoomInButton", @"PXCuratedLibrarySectionHeaderItemZoomInButtonOverBackground", *(*(a1 + 32) + 886));
      v14[2](v14, @"PXCuratedLibrarySectionHeaderItemZoomOutButton", @"PXCuratedLibrarySectionHeaderItemZoomOutButtonOverBackground", *(*(a1 + 32) + 888));

      ++v9;
    }

    while (v5 != v9);
  }
}

void *__68__PXCuratedLibrarySectionHeaderLayout__updateButtonActionPerformers__block_invoke_4(void *result, uint64_t a2, __int16 a3)
{
  if (result[4] == a2)
  {
    *(result[5] + 40 * result[6] + 32) = a3;
  }

  return result;
}

void __68__PXCuratedLibrarySectionHeaderLayout__updateButtonActionPerformers__block_invoke_5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  v9 = a3;
  v8(v7, a2, a4);
  (*(*(a1 + 32) + 16))();
}

void __68__PXCuratedLibrarySectionHeaderLayout__updateButtonActionPerformers__block_invoke()
{
  v2[18] = *MEMORY[0x1E69E9840];
  v2[0] = @"PXCuratedLibrarySectionHeaderItemEllipsisButton";
  v2[1] = @"PXCuratedLibrarySectionHeaderItemEllipsisButtonOverBackground";
  v2[2] = @"PXCuratedLibrarySectionHeaderItemFilterButton";
  v2[3] = @"PXCuratedLibrarySectionHeaderItemFilterButtonOverBackground";
  v2[4] = @"PXCuratedLibrarySectionHeaderItemControlStackButton";
  v2[5] = @"PXCuratedLibrarySectionHeaderItemControlStackButtonOverBackground";
  v2[6] = @"PXCuratedLibrarySectionHeaderItemZoomInButton";
  v2[7] = @"PXCuratedLibrarySectionHeaderItemZoomInButtonOverBackground";
  v2[8] = @"PXCuratedLibrarySectionHeaderItemZoomOutButton";
  v2[9] = @"PXCuratedLibrarySectionHeaderItemZoomOutButtonOverBackground";
  v2[10] = @"PXCuratedLibrarySectionHeaderItemSelectButton";
  v2[11] = @"PXCuratedLibrarySectionHeaderItemSelectButtonOverBackground";
  v2[12] = @"PXCuratedLibrarySectionHeaderItemCancelButton";
  v2[13] = @"PXCuratedLibrarySectionHeaderItemCancelButtonOverBackground";
  v2[14] = @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButton";
  v2[15] = @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButtonOverBackground";
  v2[16] = @"PXCuratedLibrarySectionHeaderItemShowSidebarButton";
  v2[17] = @"PXCuratedLibrarySectionHeaderItemShowSidebarButtonOverBackground";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:18];
  v1 = _updateButtonActionPerformers_buttonIDs;
  _updateButtonActionPerformers_buttonIDs = v0;
}

- (void)_updateSprites
{
  +[PXCuratedLibrarySettings sharedInstance];
  objc_claimAutoreleasedReturnValue();
  [off_1E7721810 sharedInstance];
  objc_claimAutoreleasedReturnValue();
  effectiveSpec = [(PXCuratedLibrarySectionHeaderLayout *)self effectiveSpec];
  [effectiveSpec styleGuide];
  objc_claimAutoreleasedReturnValue();
  assetCollectionReference = [(PXCuratedLibrarySectionHeaderLayout *)self assetCollectionReference];
  v5 = assetCollectionReference;
  if (assetCollectionReference)
  {
    [assetCollectionReference indexPath];
  }

  [(PXCuratedLibrarySectionHeaderLayout *)self referenceSize];
  [(PXCuratedLibrarySectionHeaderLayout *)self displayScale];
  [(PXCuratedLibrarySectionHeaderLayout *)self safeAreaInsetsWithCurrentBehavior];
  [(PXCuratedLibrarySectionHeaderLayout *)self maxPossibleHeight];
  [effectiveSpec contentSizeCategory];
  PXPreferredContentSizeCategoryIsAccessibility();
}

double __53__PXCuratedLibrarySectionHeaderLayout__updateSprites__block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return *MEMORY[0x1E695F058];
  }

  [*(a1 + 32) _sizeOfButton:a2];
  v6 = v5;
  v8 = v7;
  v9 = *(a1 + 96);
  [*(a1 + 40) buttonSpacing];
  if (a2 <= 5)
  {
    if ((a2 - 2) < 4)
    {
      v11 = v10;
      if (*(a1 + 120) != 1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (a2 == 1)
    {
      v12 = CGRectGetMaxX(*(a1 + 88)) - v6;
      v13 = v9 + *(*(*(a1 + 64) + 8) + 24);
      [*(a1 + 40) buttonHorizontalPadding];
      v14 = 0;
      v9 = v13 + v15;
      goto LABEL_20;
    }

LABEL_17:
    v14 = 0;
    *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) - v6;
    if (!a2)
    {
      v9 = v9 + 0.0;
    }

    v17 = *(*(a1 + 72) + 8);
    v12 = *(v17 + 24);
    *(v17 + 24) = v12 - v10;
    goto LABEL_20;
  }

  switch(a2)
  {
    case 9:
      v11 = v10;
      break;
    case 7:
      v11 = 1.0;
      if ((*(a1 + 120) & 1) == 0)
      {
        goto LABEL_17;
      }

      break;
    case 6:
      v11 = v10;
      v10 = 1.0;
      if ((*(a1 + 120) & 1) == 0)
      {
        goto LABEL_17;
      }

      break;
    default:
      goto LABEL_17;
  }

LABEL_16:
  v16 = *(*(a1 + 48) + 8);
  v12 = *(v16 + 24);
  *(v16 + 24) = v6 + v12;
  *(*(*(a1 + 48) + 8) + 24) = v11 + *(*(*(a1 + 48) + 8) + 24);
  v14 = 1;
  *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_20:
  *(*(*(a1 + 64) + 8) + 24) = fmax(v8 + v9 - *(a1 + 96), *(*(*(a1 + 64) + 8) + 24));
  if (v14)
  {
    v19.origin.x = v12;
    v19.origin.y = v9;
    v19.size.width = v6;
    v19.size.height = v8;
    *(*(*(a1 + 80) + 8) + 32) = CGRectUnion(*(*(*(a1 + 80) + 8) + 32), v19);
  }

  return v12;
}

void __53__PXCuratedLibrarySectionHeaderLayout__updateSprites__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) gradientHeight];
  [*(a1 + 32) maximumTitleSubtitleHeight];
  if ([*(a1 + 40) safeAreaBehavior] == 1 || objc_msgSend(*(a1 + 40), "safeAreaBehavior") == 2)
  {
    [*(a1 + 40) safeAreaInsets];
    v4 = v3;
    [*(a1 + 32) minimumSpacingBetweenTopSafeAreaAndContentTop];
    v2 = v4 + v5;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if ([*(a1 + 32) shouldAccommodateLeadingButtonsLayout])
    {
      v2 = *(*(*(a1 + 56) + 8) + 24);
    }
  }

  [*(a1 + 32) padding];
  PXEdgeInsetsInsetRect();
}

void __53__PXCuratedLibrarySectionHeaderLayout__updateSprites__block_invoke_5(id *a1)
{
  [a1[4] buttonSpacing];
  [a1[4] buttonHorizontalPadding];
  if ([a1[4] shouldAvoidOverlapWithSecondaryToolbar])
  {
    if ([a1[5] secondaryToolbarPlacement] == 4)
    {
      [a1[6] referenceSize];
      [a1[5] secondaryToolbarSize];
      [a1[5] secondaryToolbarPadding];
    }
  }

  [a1[4] minimumSpacingBetweenTopSafeAreaAndTitleTop];
  v3 = v2;
  [a1[4] titlePadding];
  [a1[6] setTitleSubtitleTopSpacing:v3 + v4];
  [a1[4] minimumSpacingBetweenTopSafeAreaAndTitleTop];
  [a1[4] minimumSpacingBetweenTopSafeAreaAndContentTop];
  [a1[4] titlePadding];
  PXEdgeInsetsInsetRect();
}

uint64_t __53__PXCuratedLibrarySectionHeaderLayout__updateSprites__block_invoke_6(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

void __53__PXCuratedLibrarySectionHeaderLayout__updateSprites__block_invoke_7(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  v9 = a3;
  v8(v7, a2, a4);
  (*(*(a1 + 32) + 16))();
}

void __53__PXCuratedLibrarySectionHeaderLayout__updateSprites__block_invoke_8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v8 = a2;
    v81 = *off_1E7721FD8;
    do
    {
      v10 = [*(*(a1 + 32) + 896) objectAtIndexedSubscript:{v8, v81}];
      if (v10 == @"PXCuratedLibrarySectionHeaderItemGradient")
      {
        v16 = (a3 + 32 * v8);
        v17 = *(a1 + 48);
        v18 = *(a1 + 56);
        v19 = *(a1 + 64);
        v20 = *(a1 + 72);
        v102.origin.x = v17;
        v102.origin.y = v18;
        v102.size.width = v19;
        v102.size.height = v20;
        MidX = CGRectGetMidX(v102);
        v103.origin.x = v17;
        v103.origin.y = v18;
        v103.size.width = v19;
        v103.size.height = v20;
        MidY = CGRectGetMidY(v103);
        v104.origin.x = v17;
        v104.origin.y = v18;
        v104.size.width = v19;
        v104.size.height = v20;
        Width = CGRectGetWidth(v104);
        v105.origin.x = v17;
        v105.origin.y = v18;
        v105.size.width = v19;
        v105.size.height = v20;
        Height = CGRectGetHeight(v105);
        v24.f64[0] = Width;
        v24.f64[1] = Height;
        *v16 = MidX;
        *&v16[1] = MidY;
        v16[3] = vcvt_f32_f64(v24);
        v16[2] = 0xBFECCCCCCCCCCCCDLL;
        v25 = a4 + 160 * v8;
        v26 = *(off_1E7722048 + 7);
        *(v25 + 96) = *(off_1E7722048 + 6);
        *(v25 + 112) = v26;
        v27 = *(off_1E7722048 + 9);
        *(v25 + 128) = *(off_1E7722048 + 8);
        *(v25 + 144) = v27;
        v28 = *(off_1E7722048 + 3);
        *(v25 + 32) = *(off_1E7722048 + 2);
        *(v25 + 48) = v28;
        v29 = *(off_1E7722048 + 5);
        *(v25 + 64) = *(off_1E7722048 + 4);
        *(v25 + 80) = v29;
        v30 = *(off_1E7722048 + 1);
        *v25 = *off_1E7722048;
        *(v25 + 16) = v30;
        [*(a1 + 40) cornerRadius];
        *(v25 + 36) = v31;
        *(v25 + 40) = v32;
        *(v25 + 44) = v33;
        *(v25 + 48) = v34;
        if (CGRectIsNull(*(a1 + 80)))
        {
          v35 = *(a1 + 112);
          *(v25 + 20) = v81;
          [*(a1 + 32) setGradientAlpha:v35];
          *(v25 + 68) = *(*(a1 + 32) + 920);
          v55 = a5 + 40 * v8;
          v56 = *(off_1E7722040 + 1);
          *v55 = *off_1E7722040;
          *(v55 + 16) = v56;
          *(v55 + 32) = *(off_1E7722040 + 4);
          v57 = [*(a1 + 40) renderMode];
          *v55 = v57 != 0;
          if (v57)
          {
            v58 = 10;
          }

          else
          {
            v58 = 1;
          }

          *(v55 + 1) = v58;
          v59 = *(a1 + 136);
          v100 = *(a1 + 120);
          v101 = v59;
          PXGSectionedSpriteTagMake();
        }

        PXSizeIsEmpty();
      }

      if (v10 == @"PXCuratedLibrarySectionHeaderItemTitleSubtitle" || v10 == @"PXCuratedLibrarySectionHeaderItemTitleSubtitleOverBackground")
      {
        if ([*(a1 + 40) renderMode])
        {
          v12 = *(a1 + 152);
          v13 = *(a1 + 160);
          v14 = *(a1 + 168);
          v15 = *(a1 + 176);
        }

        else
        {
          v60 = [*(a1 + 40) wantsInlineHeader];
          v12 = *(a1 + 152);
          v13 = *(a1 + 160);
          v14 = *(a1 + 168);
          v15 = *(a1 + 176);
          if ((v60 & 1) == 0)
          {
            PXEdgeInsetsInsetRect();
          }
        }

        v61 = (a3 + 32 * v8);
        v110.origin.x = v12;
        v110.origin.y = v13;
        v110.size.width = v14;
        v110.size.height = v15;
        v62 = CGRectGetMidX(v110);
        v111.origin.x = v12;
        v111.origin.y = v13;
        v111.size.width = v14;
        v111.size.height = v15;
        v63 = CGRectGetMidY(v111);
        v112.origin.x = v12;
        v112.origin.y = v13;
        v112.size.width = v14;
        v112.size.height = v15;
        v83 = CGRectGetWidth(v112);
        v113.origin.x = v12;
        v113.origin.y = v13;
        v113.size.width = v14;
        v113.size.height = v15;
        v64 = CGRectGetHeight(v113);
        v65.f64[0] = v83;
        v65.f64[1] = v64;
        *v61 = v62;
        *&v61[1] = v63;
        v61[3] = vcvt_f32_f64(v65);
        v61[2] = 0xBFF0000000000000;
        v66 = a4 + 160 * v8;
        v67 = *(off_1E7722048 + 7);
        *(v66 + 96) = *(off_1E7722048 + 6);
        *(v66 + 112) = v67;
        v68 = *(off_1E7722048 + 9);
        *(v66 + 128) = *(off_1E7722048 + 8);
        *(v66 + 144) = v68;
        v69 = *(off_1E7722048 + 3);
        *(v66 + 32) = *(off_1E7722048 + 2);
        *(v66 + 48) = v69;
        v70 = *(off_1E7722048 + 5);
        *(v66 + 64) = *(off_1E7722048 + 4);
        *(v66 + 80) = v70;
        v71 = *(off_1E7722048 + 1);
        *v66 = *off_1E7722048;
        *(v66 + 16) = v71;
        *(v66 + 70) = 10;
        v72 = a5 + 40 * v8;
        *(v72 + 32) = *(off_1E7722040 + 4);
        v73 = *(off_1E7722040 + 1);
        *v72 = *off_1E7722040;
        *(v72 + 16) = v73;
        *(v72 + 1) = 10;
        *v72 = 1;
        *(v72 + 32) = *(*(a1 + 32) + 872);
        *(v72 + 8) = vmul_n_f32(v61[3], *(a1 + 504));
        v74 = *(a1 + 136);
        v100 = *(a1 + 120);
        v101 = v74;
        PXGSectionedSpriteTagMake();
      }

      if (v10 == @"PXCuratedLibrarySectionHeaderItemTitleHitArea")
      {
        PXSizeMin();
      }

      if (v10 == @"PXCuratedLibrarySectionHeaderItemSelectionTitle" || v10 == @"PXCuratedLibrarySectionHeaderItemSelectionTitleOverBackground")
      {
        v37 = (a3 + 32 * v8);
        v38 = *(a1 + 184);
        v39 = *(a1 + 192);
        v40 = *(a1 + 200);
        v41 = *(a1 + 208);
        v106.origin.x = v38;
        v106.origin.y = v39;
        v106.size.width = v40;
        v106.size.height = v41;
        v42 = CGRectGetMidX(v106);
        v107.origin.x = v38;
        v107.origin.y = v39;
        v107.size.width = v40;
        v107.size.height = v41;
        v43 = CGRectGetMidY(v107);
        v108.origin.x = v38;
        v108.origin.y = v39;
        v108.size.width = v40;
        v108.size.height = v41;
        v85 = CGRectGetWidth(v108);
        v109.origin.x = v38;
        v109.origin.y = v39;
        v109.size.width = v40;
        v109.size.height = v41;
        v44 = CGRectGetHeight(v109);
        v45.f64[0] = v85;
        v45.f64[1] = v44;
        *v37 = v42;
        *&v37[1] = v43;
        v37[3] = vcvt_f32_f64(v45);
        v37[2] = 0xBFF0000000000000;
        v46 = a4 + 160 * v8;
        v47 = *(off_1E7722048 + 7);
        *(v46 + 96) = *(off_1E7722048 + 6);
        *(v46 + 112) = v47;
        v48 = *(off_1E7722048 + 9);
        *(v46 + 128) = *(off_1E7722048 + 8);
        *(v46 + 144) = v48;
        v49 = *(off_1E7722048 + 3);
        *(v46 + 32) = *(off_1E7722048 + 2);
        *(v46 + 48) = v49;
        v50 = *(off_1E7722048 + 5);
        *(v46 + 64) = *(off_1E7722048 + 4);
        *(v46 + 80) = v50;
        v51 = *(off_1E7722048 + 1);
        *v46 = *off_1E7722048;
        *(v46 + 16) = v51;
        *(v46 + 70) = 11;
        v52 = a5 + 40 * v8;
        *(v52 + 32) = *(off_1E7722040 + 4);
        v53 = *(off_1E7722040 + 1);
        *v52 = *off_1E7722040;
        *(v52 + 16) = v53;
        *v52 = 2561;
        *(v52 + 32) = *(*(a1 + 32) + 878);
        *(v52 + 8) = vmul_n_f32(v37[3], *(a1 + 504));
        v54 = *(a1 + 136);
        v100 = *(a1 + 120);
        v101 = v54;
        PXGSectionedSpriteTagMake();
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __53__PXCuratedLibrarySectionHeaderLayout__updateSprites__block_invoke_9;
      aBlock[3] = &unk_1E772D658;
      v99 = v8;
      v75 = *(a1 + 32);
      v90 = v10;
      v91 = v75;
      v92 = a3;
      v93 = a4;
      v76 = *(a1 + 232);
      v94 = *(a1 + 216);
      v95 = v76;
      v96 = a5;
      v97 = *(a1 + 120);
      v98 = *(a1 + 136);
      v77 = v10;
      v78 = _Block_copy(aBlock);
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __53__PXCuratedLibrarySectionHeaderLayout__updateSprites__block_invoke_10;
      v87[3] = &unk_1E772D680;
      v88 = v78;
      v79 = v78;
      v80 = _Block_copy(v87);
      v80[2](v80, @"PXCuratedLibrarySectionHeaderItemEllipsisButton", @"PXCuratedLibrarySectionHeaderItemEllipsisButtonOverBackground", *(*(a1 + 32) + 874), 5, *(a1 + 216), *(a1 + 224), *(a1 + 232), *(a1 + 240));
      v80[2](v80, @"PXCuratedLibrarySectionHeaderItemFilterButton", @"PXCuratedLibrarySectionHeaderItemFilterButtonOverBackground", *(*(a1 + 32) + 876), 6, *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 272));
      v80[2](v80, @"PXCuratedLibrarySectionHeaderItemControlStackButton", @"PXCuratedLibrarySectionHeaderItemControlStackButtonOverBackground", *(*(a1 + 32) + 890), 7, *(a1 + 280), *(a1 + 288), *(a1 + 296), *(a1 + 304));
      v80[2](v80, @"PXCuratedLibrarySectionHeaderItemSelectButton", @"PXCuratedLibrarySectionHeaderItemSelectButtonOverBackground", *(*(a1 + 32) + 880), 9, *(a1 + 312), *(a1 + 320), *(a1 + 328), *(a1 + 336));
      v80[2](v80, @"PXCuratedLibrarySectionHeaderItemCancelButton", @"PXCuratedLibrarySectionHeaderItemCancelButtonOverBackground", *(*(a1 + 32) + 882), 11, *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368));
      v80[2](v80, @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButton", @"PXCuratedLibrarySectionHeaderItemToggleAspectFitButtonOverBackground", *(*(a1 + 32) + 884), 12, *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
      v80[2](v80, @"PXCuratedLibrarySectionHeaderItemZoomInButton", @"PXCuratedLibrarySectionHeaderItemZoomInButtonOverBackground", *(*(a1 + 32) + 886), 13, *(a1 + 408), *(a1 + 416), *(a1 + 424), *(a1 + 432));
      v80[2](v80, @"PXCuratedLibrarySectionHeaderItemZoomOutButton", @"PXCuratedLibrarySectionHeaderItemZoomOutButtonOverBackground", *(*(a1 + 32) + 888), 14, *(a1 + 440), *(a1 + 448), *(a1 + 456), *(a1 + 464));
      v80[2](v80, @"PXCuratedLibrarySectionHeaderItemShowSidebarButton", @"PXCuratedLibrarySectionHeaderItemShowSidebarButtonOverBackground", *(*(a1 + 32) + 892), 16, *(a1 + 472), *(a1 + 480), *(a1 + 488), *(a1 + 496));

      ++v8;
      --v5;
    }

    while (v5);
  }
}

void __53__PXCuratedLibrarySectionHeaderLayout__updateSprites__block_invoke_11(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = *(*(*(a1 + 32) + 8) + 24);
  MaxY = CGRectGetMaxY(*&a2);
  if (v6 >= MaxY)
  {
    MaxY = v6;
  }

  *(*(*(a1 + 32) + 8) + 24) = MaxY;
}

uint64_t __53__PXCuratedLibrarySectionHeaderLayout__updateSprites__block_invoke_9(uint64_t result, uint64_t a2, __int16 a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  if (*(result + 32) == a2)
  {
    v12 = result;
    v13 = (*(result + 48) + 32 * *(result + 136));
    MidX = CGRectGetMidX(*&a4);
    v31.origin.x = a4;
    v31.origin.y = a5;
    v31.size.width = a6;
    v31.size.height = a7;
    MidY = CGRectGetMidY(v31);
    v32.origin.x = a4;
    v32.origin.y = a5;
    v32.size.width = a6;
    v32.size.height = a7;
    Width = CGRectGetWidth(v32);
    v33.origin.x = a4;
    v33.origin.y = a5;
    v33.size.width = a6;
    v33.size.height = a7;
    Height = CGRectGetHeight(v33);
    v17.f64[0] = Width;
    v17.f64[1] = Height;
    *v13 = MidX;
    *&v13[1] = MidY;
    v13[2] = 0;
    v13[3] = vcvt_f32_f64(v17);
    [*(v12 + 40) buttonsZIndex];
    v19 = *(v12 + 136);
    v20 = *(v12 + 56);
    *(*(v12 + 48) + 32 * v19 + 16) = v18;
    v21 = (v20 + 160 * v19);
    v22 = *(off_1E7722048 + 1);
    *v21 = *off_1E7722048;
    v21[1] = v22;
    v23 = *(off_1E7722048 + 5);
    v21[4] = *(off_1E7722048 + 4);
    v21[5] = v23;
    v24 = *(off_1E7722048 + 3);
    v21[2] = *(off_1E7722048 + 2);
    v21[3] = v24;
    v25 = *(off_1E7722048 + 9);
    v21[8] = *(off_1E7722048 + 8);
    v21[9] = v25;
    v26 = *(off_1E7722048 + 7);
    v21[6] = *(off_1E7722048 + 6);
    v21[7] = v26;
    v27 = *(v12 + 96) + 40 * *(v12 + 136);
    v28 = *(off_1E7722040 + 1);
    *v27 = *off_1E7722040;
    *(v27 + 16) = v28;
    *(v27 + 32) = *(off_1E7722040 + 4);
    v29 = (*(v12 + 96) + 40 * *(v12 + 136));
    *v29 = 2561;
    v29[16] = a3;
    PXGSectionedSpriteTagMake();
  }

  return result;
}

void __53__PXCuratedLibrarySectionHeaderLayout__updateSprites__block_invoke_10(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v17 = *(a1 + 32);
  v18 = *(v17 + 16);
  v19 = a3;
  v18(v17, a2, a4, a5, 1, a6, a7, a8, a9);
  (*(*(a1 + 32) + 16))(a6, a7, a8, a9);
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
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout update]"];
      [currentHandler handleFailureInFunction:v12 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 32;
    if ((needsUpdate & 0x20) != 0)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFDFLL;
      [(PXCuratedLibrarySectionHeaderLayout *)self _updateEffectiveSpec];
      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout update]"];
        [currentHandler2 handleFailureInFunction:v14 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v5 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXCuratedLibrarySectionHeaderLayout *)self _updateTitleAndSubtitle];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout update]"];
      [currentHandler3 handleFailureInFunction:v16 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    v7 = p_updateFlags->updated | 1;
    p_updateFlags->updated = v7;
    if (v6)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFELL;
      [(PXCuratedLibrarySectionHeaderLayout *)self _updateSprites];
      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout update]"];
        [currentHandler4 handleFailureInFunction:v26 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:219 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }

      v6 = p_updateFlags->needsUpdate;
      updated = p_updateFlags->updated | 8;
      p_updateFlags->updated = updated;
      if ((v6 & 8) != 0)
      {
        v6 &= ~8uLL;
        p_updateFlags->needsUpdate = v6;
      }

      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
        v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout update]"];
        [currentHandler5 handleFailureInFunction:v28 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:220 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];

        v6 = p_updateFlags->needsUpdate;
        updated = p_updateFlags->updated;
      }

      v7 = updated | 0x10;
      p_updateFlags->updated = v7;
      if ((v6 & 0x10) != 0)
      {
        v6 &= ~0x10uLL;
        p_updateFlags->needsUpdate = v6;
      }
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout update]"];
      [currentHandler6 handleFailureInFunction:v18 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];

      v6 = p_updateFlags->needsUpdate;
      v7 = p_updateFlags->updated;
    }

    p_updateFlags->updated = v7 | 2;
    if ((v6 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXCuratedLibrarySectionHeaderLayout *)self _updateSpritesAlpha];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout update]"];
      [currentHandler7 handleFailureInFunction:v20 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v9 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v9 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFF7;
      [(PXCuratedLibrarySectionHeaderLayout *)self _updateButtonActionPerformers];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout update]"];
      [currentHandler8 handleFailureInFunction:v22 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:228 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v10 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x10uLL;
    if ((v10 & 0x10) != 0)
    {
      p_updateFlags->needsUpdate = v10 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXCuratedLibrarySectionHeaderLayout *)self _updateSpriteTags];
      v10 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v10)
    {
      currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionHeaderLayout update]"];
      [currentHandler9 handleFailureInFunction:v24 file:@"PXCuratedLibrarySectionHeaderLayout.m" lineNumber:232 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v29.receiver = self;
  v29.super_class = PXCuratedLibrarySectionHeaderLayout;
  [(PXCuratedLibrarySectionHeaderLayout *)&v29 update];
}

- (PXCuratedLibrarySectionHeaderLayout)init
{
  v22.receiver = self;
  v22.super_class = PXCuratedLibrarySectionHeaderLayout;
  v2 = [(PXCuratedLibrarySectionHeaderLayout *)&v22 init];
  v3 = v2;
  if (v2)
  {
    [(PXCuratedLibrarySectionHeaderLayout *)v2 setContentSource:v2];
    v3->_maxPossibleHeight = 1.79769313e308;
    v3->_titleAlpha = 1.0;
    v3->_buttonsAlpha = 1.0;
    v3->_showsBackgroundGradient = 1;
    v3->_buttonsZIndex = -1.2;
    itemIdentifierBySpriteIndex = v3->_itemIdentifierBySpriteIndex;
    v3->_itemIdentifierBySpriteIndex = MEMORY[0x1E695E0F0];

    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    axSpriteIndexes = v3->_axSpriteIndexes;
    v3->_axSpriteIndexes = v5;

    LODWORD(v7) = 1.0;
    v3->_gradientResizableCapInsetsIndex = [(PXCuratedLibrarySectionHeaderLayout *)v3 addResizableCapInsets:0.0, 0.0, v7, 0.0];
    selectButtonTitle = v3->_selectButtonTitle;
    v3->_selectButtonTitle = &stru_1F1741150;

    filterButtonTitle = v3->_filterButtonTitle;
    v3->_filterButtonTitle = &stru_1F1741150;

    filterButtonCaption = v3->_filterButtonCaption;
    v3->_filterButtonCaption = &stru_1F1741150;

    toggleAspectFitButtonTitle = v3->_toggleAspectFitButtonTitle;
    v3->_toggleAspectFitButtonTitle = &stru_1F1741150;

    v12 = [[off_1E77217D0 alloc] initWithValue:0.0 epsilon:0.01];
    alternateAppearanceMixAnimator = v3->_alternateAppearanceMixAnimator;
    v3->_alternateAppearanceMixAnimator = v12;

    [(PXNumberAnimator *)v3->_alternateAppearanceMixAnimator registerChangeObserver:v3 context:AlternateAppearanceMixAnimatorObservationContext];
    if (init_onceToken != -1)
    {
      dispatch_once(&init_onceToken, &__block_literal_global_2936);
    }

    objc_storeStrong(&v3->_asyncDateQueue, init_asyncDateQueue);
    v14 = objc_alloc_init(off_1E7721630);
    leadingButtonsLayoutGuide = v3->_leadingButtonsLayoutGuide;
    v3->_leadingButtonsLayoutGuide = v14;

    [(PXCuratedLibrarySectionHeaderLayout *)v3 _discardAllCachedButtonSizes];
    if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
    {
      px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      v17 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:px_deprecated_appPhotoLibrary];
      sharedLibraryStatusProvider = v3->_sharedLibraryStatusProvider;
      v3->_sharedLibraryStatusProvider = v17;

      [(PXSharedLibraryStatusProvider *)v3->_sharedLibraryStatusProvider registerChangeObserver:v3 context:PXSharedLibraryStatusProviderObservationContext];
    }

    v19 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v3->_sharedLibraryStatusProvider];
    libraryFilterState = v3->_libraryFilterState;
    v3->_libraryFilterState = v19;

    [(PXLibraryFilterState *)v3->_libraryFilterState registerChangeObserver:v3 context:PXLibraryFilterStateObservationContext];
  }

  return v3;
}

void __43__PXCuratedLibrarySectionHeaderLayout_init__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);
  v2 = dispatch_queue_create("com.apple.photos.curatedlibrary-header-async-dates", v1);
  v3 = init_asyncDateQueue;
  init_asyncDateQueue = v2;

  sub_1A524D1F4();
}

@end