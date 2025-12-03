@interface _UICollectionViewListLayoutSection
- (BOOL)__isLastItemInSection:(id)section;
- (BOOL)_adjustsLayoutToDrawTopSeparatorInSection:(int64_t)section interactionState:(id)state;
- (BOOL)_hasHeaderFooterBelowLastItemInSection:(int64_t)section interactionState:(id)state;
- (BOOL)_isRTL;
- (BOOL)_shouldDrawSeparatorAtBottom:(BOOL)bottom ofSection:(int64_t)section interactionState:(id)state;
- (BOOL)_shouldHideBottomSeparatorAtIndexPath:(id)path forGrouping:(unint64_t)grouping considerNextCellGrouping:(BOOL)cellGrouping interactionState:(id)state;
- (BOOL)_shouldHideTopSeparatorAtIndexPath:(id)path interactionState:(id)state;
- (BOOL)_useRoundedSwipeActions;
- (NSDirectionalEdgeInsets)_defaultDirectionalLayoutMargins;
- (NSDirectionalEdgeInsets)_defaultSectionContentInsets;
- (NSDirectionalEdgeInsets)_defaultSectionContentInsetsForSectionMetrics:(_UIListMetricsSectionMetrics *)metrics;
- (NSDirectionalEdgeInsets)_defaultSeparatorInsets;
- (NSDirectionalEdgeInsets)_effectiveBoundarySeparatorInsets:(NSDirectionalEdgeInsets)result;
- (NSDirectionalEdgeInsets)_effectiveSectionHorizontalInsets;
- (NSDirectionalEdgeInsets)_effectiveSectionSupplementaryHorizontalInsets;
- (NSDirectionalEdgeInsets)_sectionPreferredBottomSeparatorInsetsForIndexPath:(id)path;
- (NSDirectionalEdgeInsets)_sectionPreferredTopSeparatorInsetsWithBottomInsets:(NSDirectionalEdgeInsets)insets hasCustomInsets:(BOOL *)customInsets;
- (NSDirectionalEdgeInsets)contentInsets;
- (UIEdgeInsets)_defaultLayoutMarginsForHeaderFooterViewWithLayoutAttributes:(id)attributes;
- (UIEdgeInsets)_defaultLayoutMarginsInsideSection;
- (_UICollectionLayoutContainer)_layoutContainer;
- (_UICollectionViewListLayoutSection)initWithConfiguration:(id)configuration layoutEnvironment:(id)environment;
- (double)_alignedContentMarginGivenMargin:(double)margin;
- (double)_effectiveCornerRadius;
- (id)_constants;
- (id)_descriptionProperties;
- (id)_generateListSectionDataForLayoutAttributes:(id)attributes interactionState:(id)state;
- (id)_invalidationContextForCellBackgroundOrBottomSeparatorChangeAtIndexPath:(id)path interactionState:(id)state separatorOnly:(BOOL)only;
- (id)_leadingSwipeActionsConfigurationForIndexPath:(id)path;
- (id)_separatorConfigurationForItemAtIndexPath:(id)path withSelectionGrouping:(unint64_t)grouping considerNextCellGrouping:(BOOL)cellGrouping interactionState:(id)state;
- (id)_trailingSwipeActionsConfigurationForIndexPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_separatorInsetBehaviorAtBottom:(BOOL)bottom indexPath:(id)path interactionState:(id)state;
- (unint64_t)_extensionBehavior;
- (unint64_t)_maskedCornersForBackgroundOfItemWithSelectionGrouping:(unint64_t)grouping;
- (void)_configureLayoutAttributes:(id)attributes forSeparatorAtBottom:(BOOL)bottom preferredConfiguration:(id)configuration interactionState:(id)state;
- (void)_configureLayoutAttributesForBackgroundDecoration:(id)decoration;
- (void)_configureLayoutAttributesForPlainCell:(id)cell;
- (void)_configureLayoutAttributesForPlainSupplementaryView:(id)view;
- (void)_configureLayoutAttributesForSidebarPlainCell:(id)cell;
- (void)_configureLayoutAttributesForSwipeActionMasking:(id)masking interactionState:(id)state;
- (void)_configureLayoutAttributesWithDefaultMasking:(id)masking;
- (void)_configureLayoutAttributesWithInsetGroupedMasking:(id)masking stylesFirstItemAsHeader:(BOOL)header;
- (void)_didEndSwiping;
- (void)_enrichLayoutAttributes:(id)attributes interactionState:(id)state;
- (void)_transformFittingLayoutAttributes:(id)attributes interactionState:(id)state;
- (void)_transformPreferredLayoutAttributes:(id)attributes interactionState:(id)state;
- (void)_updateMaxWidthForLayoutAttributes:(id)attributes;
- (void)_updateStyleForSwipeActionsConfiguration:(id)configuration;
- (void)_willBeginSwiping;
- (void)setContentInsets:(NSDirectionalEdgeInsets)insets;
@end

@implementation _UICollectionViewListLayoutSection

- (_UICollectionLayoutContainer)_layoutContainer
{
  v4 = self->_layoutEnvironment;
  container = [(NSCollectionLayoutEnvironment_Private *)v4 container];
  if (!container)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:1050 description:{@"UICollectionView internal inconsistency: invalid environment layout container. Environment: %@", v4}];
  }

  return container;
}

- (BOOL)_isRTL
{
  traitCollection = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment traitCollection];
  v3 = [traitCollection layoutDirection] == 1;

  return v3;
}

- (NSDirectionalEdgeInsets)contentInsets
{
  if (*&self->_sectionFlags)
  {
    v27.receiver = self;
    v27.super_class = _UICollectionViewListLayoutSection;
    [(NSCollectionLayoutSection *)&v27 contentInsets];
    v4 = v23;
    v8 = v24;
  }

  else
  {
    [(_UICollectionViewListLayoutSection *)self _defaultSectionContentInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    _layoutContainer = [(_UICollectionViewListLayoutSection *)self _layoutContainer];
    v12 = _layoutContainer;
    if (_layoutContainer)
    {
      v13 = *(_layoutContainer + 8);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    [(_UIContentInsetsEnvironment *)v14 effectiveInsetsForInsetsReference:?];
    v16 = v15;
    v18 = v17;

    if (v6 >= v16)
    {
      v19 = v6;
    }

    else
    {
      v19 = v16;
    }

    v20 = v19 - v16;
    if (v10 >= v18)
    {
      v21 = v10;
    }

    else
    {
      v21 = v18;
    }

    v22 = v21 - v18;
  }

  v25 = v4;
  v26 = v8;
  result.trailing = v22;
  result.bottom = v26;
  result.leading = v20;
  result.top = v25;
  return result;
}

- (NSDirectionalEdgeInsets)_effectiveSectionHorizontalInsets
{
  _layoutContainer = [(_UICollectionViewListLayoutSection *)self _layoutContainer];
  v4 = _layoutContainer;
  if (_layoutContainer)
  {
    v5 = *(_layoutContainer + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(_UIContentInsetsEnvironment *)v6 effectiveInsetsForInsetsReference:?];
  v8 = v7;
  v10 = v9;

  [(_UICollectionViewListLayoutSection *)self contentInsets];
  v12 = v8 + 0.0 + v11;
  v14 = v10 + 0.0 + v13;
  v15 = 0.0;
  v16 = 0.0;
  result.trailing = v14;
  result.bottom = v16;
  result.leading = v12;
  result.top = v15;
  return result;
}

- (NSDirectionalEdgeInsets)_effectiveSectionSupplementaryHorizontalInsets
{
  if ([(NSCollectionLayoutSection *)self supplementaryContentInsetsReference])
  {
    supplementaryContentInsetsReference = [(NSCollectionLayoutSection *)self supplementaryContentInsetsReference];
  }

  else
  {
    supplementaryContentInsetsReference = [(NSCollectionLayoutSection *)self contentInsetsReference];
  }

  v4 = supplementaryContentInsetsReference;
  _layoutContainer = [(_UICollectionViewListLayoutSection *)self _layoutContainer];
  v6 = _layoutContainer;
  if (_layoutContainer)
  {
    v7 = *(_layoutContainer + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(_UIContentInsetsEnvironment *)v8 effectiveInsetsForInsetsReference:v4];
  v10 = v9;
  v12 = v11;

  v13 = 0.0;
  v14 = v10 + 0.0;
  v15 = v12 + 0.0;
  v16 = 0.0;
  result.trailing = v15;
  result.bottom = v16;
  result.leading = v14;
  result.top = v13;
  return result;
}

- (NSDirectionalEdgeInsets)_defaultSectionContentInsets
{
  top = self->_defaultSectionContentInsets.top;
  leading = self->_defaultSectionContentInsets.leading;
  bottom = self->_defaultSectionContentInsets.bottom;
  trailing = self->_defaultSectionContentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (UIEdgeInsets)_defaultLayoutMarginsInsideSection
{
  p_defaultDirectionalLayoutMargins = &self->_defaultDirectionalLayoutMargins;
  _isRTL = [(_UICollectionViewListLayoutSection *)self _isRTL];
  top = p_defaultDirectionalLayoutMargins->top;
  leading = p_defaultDirectionalLayoutMargins->leading;
  bottom = p_defaultDirectionalLayoutMargins->bottom;
  if (_isRTL)
  {
    trailing = p_defaultDirectionalLayoutMargins->trailing;
  }

  else
  {
    trailing = p_defaultDirectionalLayoutMargins->leading;
  }

  if (!_isRTL)
  {
    leading = p_defaultDirectionalLayoutMargins->trailing;
  }

  result.right = leading;
  result.bottom = bottom;
  result.left = trailing;
  result.top = top;
  return result;
}

- (double)_effectiveCornerRadius
{
  [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration cornerRadius];
  v4 = v3;
  if (v3 == 1.79769313e308)
  {
    traitCollection = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    if (userInterfaceIdiom == 6)
    {
      v4 = 16.0;
    }

    else if (userInterfaceIdiom == 3)
    {
      v4 = 10.0;
    }

    else if (_UISolariumEnabled())
    {
      v4 = 26.0;
    }

    else
    {
      v4 = 10.0;
    }
  }

  return v4;
}

- (_UICollectionViewListLayoutSection)initWithConfiguration:(id)configuration layoutEnvironment:(id)environment
{
  v8 = environment != 0;
  _collectionView = [configuration _collectionView];
  v10 = _collectionView == 0;

  if (v8 != v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:706 description:{@"SPI inconsistency detected. Old and new SPI is being mixed. Please initialize your configuration with -init and then initialize the section with -initWithConfiguration:layoutEnvironment:, passing in the layout environment you receive from the section provider of your compositional layout."}];

    if (environment)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [_UICollectionViewEnvironmentAdapter alloc];
    _collectionView2 = [configuration _collectionView];
    v15 = [(_UICollectionViewEnvironmentAdapter *)v13 initWithCollectionView:_collectionView2];
    environmentCopy = [(_UICollectionViewEnvironmentAdapter *)v15 createEnvironment];

    goto LABEL_6;
  }

  if (!environment)
  {
    goto LABEL_5;
  }

LABEL_3:
  environmentCopy = environment;
LABEL_6:
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:709 description:@"Incompatible layout environment. Make sure to pass the layout environment received from the compositional layout's section provider as is."];
  }

  v16 = environmentCopy;
  v17 = [configuration copy];
  appearanceStyle = [v17 appearanceStyle];
  traitCollection = [v16 traitCollection];
  [v17 setAppearanceStyle:appearanceStyle];

  v20 = [v17 _generateLayoutGroup:v16];
  v73.receiver = self;
  v73.super_class = _UICollectionViewListLayoutSection;
  v21 = [(NSCollectionLayoutSection *)&v73 initWithLayoutGroup:v20];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_layoutEnvironment, environmentCopy);
    objc_storeStrong(&v22->_configuration, v17);
    _traitCollection = [v17 _traitCollection];
    appearanceStyle2 = [v17 appearanceStyle];
    if ((appearanceStyle2 - 1) >= 4)
    {
      v25 = 0;
    }

    else
    {
      v25 = appearanceStyle2;
    }

    _sectionPosition = [v17 _sectionPosition];
    _hasHeaderOrFirstItemStyledAsHeader = [v17 _hasHeaderOrFirstItemStyledAsHeader];
    _hasFooter = [v17 _hasFooter];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    if (v17)
    {
      [v17 _listGeometry];
    }

    _sectionSpacingStyle = [v17 _sectionSpacingStyle];
    v28 = +[_UIListMetrics sharedMetrics];
    [v28 behaviorsForListWithStyle:v25 traitCollection:_traitCollection];
    v30 = v29;

    memset(v63, 0, 72);
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    v31 = +[_UIListMetrics sharedMetrics];
    v32 = v31;
    if (v31)
    {
      v57 = v70;
      v58 = v71;
      v59 = v72;
      v53 = v66;
      v54 = v67;
      v55 = v68;
      v56 = v69;
      v51 = v64;
      v52 = v65;
      [v31 metricsForSectionWithPosition:_sectionPosition hasHeader:_hasHeaderOrFirstItemStyledAsHeader hasFooter:_hasFooter listGeometry:&v51 listStyle:v25 spacingStyle:_sectionSpacingStyle traitCollection:_traitCollection];
    }

    else
    {
      memset(v63, 0, 72);
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
    }

    if ((v30 - 1) <= 1)
    {
      [v17 headerTopPadding];
      if (v33 == 0.0)
      {
        v30 = 3;
      }
    }

    v22->_headerFooterPinningBehavior = v30;
    v55 = v63[1];
    v56 = v63[2];
    v57 = v63[3];
    *&v58 = *&v63[4];
    v51 = v60;
    v52 = v61;
    v53 = v62;
    v54 = v63[0];
    [(_UICollectionViewListLayoutSection *)v22 _defaultSectionContentInsetsForSectionMetrics:&v51];
    v22->_defaultSectionContentInsets.top = v34;
    v22->_defaultSectionContentInsets.leading = v35;
    v22->_defaultSectionContentInsets.bottom = v36;
    v22->_defaultSectionContentInsets.trailing = v37;
    v38 = *(&v63[1] + 8);
    *&v22->_defaultDirectionalLayoutMargins.top = *(v63 + 8);
    *&v22->_defaultDirectionalLayoutMargins.bottom = v38;
    v39 = *(&v63[3] + 8);
    *&v22->_defaultSeparatorInsets.top = *(&v63[2] + 8);
    *&v22->_defaultSeparatorInsets.bottom = v39;
    v40 = *(&v60 + 1);
    if (*(&v60 + 1) >= 4uLL)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIContentInsetsReference _UIContentInsetReferenceForListContentInsetsReference(_UIListContentInsetsReference)"];
      [currentHandler3 handleFailureInFunction:v43 file:@"_UICollectionViewListLayoutSection_Internal.h" lineNumber:61 description:{@"UIKit internal inconsistency: unknown content insets reference (%ld)", v40}];

      v41 = 1;
    }

    else
    {
      v41 = qword_18A683300[*(&v60 + 1)];
    }

    [(NSCollectionLayoutSection *)v22 setContentInsetsReference:v41];
    [(NSCollectionLayoutSection *)v22 setInterGroupSpacing:*v63];
    v44 = 0.0;
    if ([v17 _hasSupplementaryAsHeader])
    {
      [v17 headerTopPadding];
      if (v45 == 1.79769313e308)
      {
        if (![v16 _wantsCollapsedTopSpacing] || (_sectionPosition & 2) == 0)
        {
          v44 = *&v61;
        }
      }

      else
      {
        [v17 headerTopPadding];
        v44 = v46;
      }
    }

    v22->_paddingToBoundarySupplementaries = v44;
    [v17 _setDefaultBackgroundColor:v60];
    [v17 _addSupplementaryItemsToLayout:v22 headerFooterPinningBehavior:v30];
  }

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = _UICollectionViewListLayoutSection;
  v4 = [(NSCollectionLayoutSection *)&v11 copyWithZone:zone];
  if (v4)
  {
    v5 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration copy];
    v6 = *(v4 + 41);
    *(v4 + 41) = v5;

    objc_storeStrong(v4 + 45, self->_layoutEnvironment);
    *(v4 + 43) = self->_headerFooterPinningBehavior;
    v7 = *&self->_defaultSectionContentInsets.bottom;
    *(v4 + 23) = *&self->_defaultSectionContentInsets.top;
    *(v4 + 24) = v7;
    *(v4 + 44) = *&self->_paddingToBoundarySupplementaries;
    v8 = *&self->_defaultDirectionalLayoutMargins.bottom;
    *(v4 + 25) = *&self->_defaultDirectionalLayoutMargins.top;
    *(v4 + 26) = v8;
    v9 = *&self->_defaultSeparatorInsets.bottom;
    *(v4 + 27) = *&self->_defaultSeparatorInsets.top;
    *(v4 + 28) = v9;
    *(v4 + 84) = self->_sectionFlags;
  }

  return v4;
}

- (id)_constants
{
  traitCollection = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment traitCollection];
  v3 = _UITableConstantsForTraitCollection(traitCollection);

  return v3;
}

- (unint64_t)_extensionBehavior
{
  if ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _hasSupplementaryAsHeader]&& (v3 = [(_UICollectionViewListLayoutSection *)self _headerFooterPinningBehavior], (v3 - 1) <= 2))
  {
    return qword_18A683320[v3 - 1];
  }

  else
  {
    return 0;
  }
}

- (double)_alignedContentMarginGivenMargin:(double)margin
{
  if ((_UISolariumEnabled() & 1) == 0 && ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle]- 3) <= 1 && [(_UICollectionViewListLayoutSection *)self _hasHorizontalInsets])
  {
    return self->_defaultDirectionalLayoutMargins.leading + margin;
  }

  return margin;
}

- (NSDirectionalEdgeInsets)_defaultSectionContentInsetsForSectionMetrics:(_UIListMetricsSectionMetrics *)metrics
{
  top = metrics->var2.top;
  leading = metrics->var2.leading;
  bottom = metrics->var2.bottom;
  trailing = metrics->var2.trailing;
  v8 = self->_configuration;
  v9 = self->_layoutEnvironment;
  v10 = 0.0;
  if (![(_UICollectionViewListLayoutSectionConfiguration *)v8 _hasSupplementaryAsHeader])
  {
    [(_UICollectionViewListLayoutSectionConfiguration *)v8 headerTopPadding];
    v10 = v11;
    if (v11 == 1.79769313e308)
    {
      if (([(_UICollectionViewListLayoutSectionConfiguration *)v8 _sectionPosition]& 2) != 0)
      {
        if ([(NSCollectionLayoutEnvironment_Private *)v9 _wantsCollapsedTopSpacing])
        {
          v10 = 0.0;
        }

        else
        {
          v10 = top;
        }
      }

      else
      {
        v10 = top;
      }
    }
  }

  if ([(_UICollectionViewListLayoutSectionConfiguration *)v8 appearanceStyle]== 4 && (self->_headerFooterPinningBehavior - 1) >= 2 && ([(_UICollectionViewListLayoutSectionConfiguration *)v8 _hasHeaderOrFirstItemStyledAsHeader]|| [(_UICollectionViewListLayoutSectionConfiguration *)v8 _hasFooter]))
  {
    v10 = v10 + 8.0;
    bottom = bottom + 8.0;
  }

  v12 = v10;
  v13 = leading;
  v14 = bottom;
  v15 = trailing;
  result.trailing = v15;
  result.bottom = v14;
  result.leading = v13;
  result.top = v12;
  return result;
}

- (UIEdgeInsets)_defaultLayoutMarginsForHeaderFooterViewWithLayoutAttributes:(id)attributes
{
  [(_UICollectionViewListLayoutSection *)self _defaultLayoutMarginsInsideSection];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  _content = [(_UILabelConfiguration *)attributes _content];
  _headerElementKind = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _headerElementKind];
  v15 = [_content isEqualToString:_headerElementKind];

  if (v15)
  {
    _layoutEnvironment = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _layoutEnvironment];
    traitCollection = [_layoutEnvironment traitCollection];
    if ([traitCollection userInterfaceIdiom] == 6)
    {
      appearanceStyle = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle];

      if (!appearanceStyle)
      {
        v19 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle]- 1;
        if (v19 > 2)
        {
          v20 = 0;
        }

        else
        {
          v20 = qword_18A683338[v19];
        }

        v60 = ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _sectionPosition]>> 1) & 1;
        _constants = [(_UICollectionViewListLayoutSection *)self _constants];
        [_constants defaultHeaderFooterLayoutMarginsForTableViewStyle:v20 isHeader:1 isFirstSection:v60];
        v6 = v61;
        v8 = v62;
        v10 = v63;
        v12 = v64;
LABEL_45:

        goto LABEL_46;
      }
    }

    else
    {
    }
  }

  if (![(NSCollectionLayoutSection *)self supplementariesFollowContentInsets])
  {
    v66 = v6;
    [(_UICollectionViewListLayoutSection *)self _effectiveSectionHorizontalInsets];
    v22 = v21;
    v24 = v23;
    _isRTL = [(_UICollectionViewListLayoutSection *)self _isRTL];
    if (_isRTL)
    {
      v26 = v24;
    }

    else
    {
      v26 = v22;
    }

    if (_isRTL)
    {
      v27 = v22;
    }

    else
    {
      v27 = v24;
    }

    [(_UICollectionViewListLayoutSection *)self _effectiveSectionSupplementaryHorizontalInsets];
    v29 = v28;
    v31 = v30;
    _isRTL2 = [(_UICollectionViewListLayoutSection *)self _isRTL];
    if (_isRTL2)
    {
      v33 = v31;
    }

    else
    {
      v33 = v29;
    }

    if (!_isRTL2)
    {
      v29 = v31;
    }

    _layoutContainer = [(_UICollectionViewListLayoutSection *)self _layoutContainer];
    v35 = _layoutContainer;
    v67 = v12;
    v65 = v10;
    if (_layoutContainer)
    {
      v36 = *(_layoutContainer + 8);
      v37 = v36;
      if (v36)
      {
        v38 = v8;
        v39 = v36[3];
        v40 = v36[5];
LABEL_22:
        _isRTL3 = [(_UICollectionViewListLayoutSection *)self _isRTL];
        if (_isRTL3)
        {
          v42 = v40;
        }

        else
        {
          v42 = v39;
        }

        if (!_isRTL3)
        {
          v39 = v40;
        }

        v12 = v67;
        v43 = v67 + v27;
        v44 = v38 + v26 + v42 - v26;
        if (v38 + v26 >= v42)
        {
          v44 = v38 + v26;
        }

        v45 = v43 + v39 - v27;
        if (v43 >= v39)
        {
          v45 = v67 + v27;
        }

        if (v33 < v44)
        {
          v46 = v44 - v33;
          if (v33 < v42)
          {
            v38 = v46 - (v42 - v33);
          }

          else
          {
            v38 = v46;
          }
        }

        v6 = v66;
        if (v29 >= v45)
        {
          v8 = v38;
        }

        else
        {
          v12 = v45 - v29;
          v8 = v38;
          if (v29 < v39)
          {
            v12 = v12 - (v39 - v29);
          }
        }

        v10 = v65;
        goto LABEL_40;
      }

      v38 = v8;
    }

    else
    {
      v38 = v8;
      v37 = 0;
    }

    v39 = 0.0;
    v40 = 0.0;
    goto LABEL_22;
  }

LABEL_40:
  if (_UIShouldApplyVerticalLayoutMarginsToListHeaderFooterViews())
  {
    v47 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle]- 1;
    if (v47 > 2)
    {
      v48 = 0;
    }

    else
    {
      v48 = qword_18A683338[v47];
    }

    _content2 = [(_UILabelConfiguration *)attributes _content];
    _headerElementKind2 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _headerElementKind];
    v51 = [_content2 isEqualToString:_headerElementKind2];

    v52 = ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _sectionPosition]>> 1) & 1;
    _constants = [(_UICollectionViewListLayoutSection *)self _constants];
    [_constants defaultHeaderFooterLayoutMarginsForTableViewStyle:v48 isHeader:v51 isFirstSection:v52];
    v6 = v54;
    v10 = v55;
    goto LABEL_45;
  }

LABEL_46:
  v56 = v6;
  v57 = v8;
  v58 = v10;
  v59 = v12;
  result.right = v59;
  result.bottom = v58;
  result.left = v57;
  result.top = v56;
  return result;
}

- (void)setContentInsets:(NSDirectionalEdgeInsets)insets
{
  *&self->_sectionFlags |= 1u;
  v3.receiver = self;
  v3.super_class = _UICollectionViewListLayoutSection;
  [(NSCollectionLayoutSection *)&v3 setContentInsets:insets.top, insets.leading, insets.bottom, insets.trailing];
}

- (BOOL)_useRoundedSwipeActions
{
  if ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle]== 2)
  {
    return 0;
  }

  return [(_UICollectionViewListLayoutSection *)self _hasHorizontalInsets];
}

- (void)_updateStyleForSwipeActionsConfiguration:(id)configuration
{
  if (configuration)
  {
    if (![configuration _swipeActionsStyle] && -[_UICollectionViewListLayoutSection _useRoundedSwipeActions](self, "_useRoundedSwipeActions"))
    {
      [configuration _setSwipeActionsStyle:2];
    }

    if ([configuration _swipeActionsStyle] == 2)
    {
      [configuration _roundedStyleCornerRadius];
      if (v5 == 0.0)
      {
        [(_UICollectionViewListLayoutSection *)self _effectiveCornerRadius];

        [configuration _setRoundedStyleCornerRadius:?];
      }
    }
  }
}

- (id)_leadingSwipeActionsConfigurationForIndexPath:(id)path
{
  leadingSwipeActionsConfigurationProvider = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration leadingSwipeActionsConfigurationProvider];

  if (leadingSwipeActionsConfigurationProvider)
  {
    leadingSwipeActionsConfigurationProvider2 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration leadingSwipeActionsConfigurationProvider];
    v7 = (leadingSwipeActionsConfigurationProvider2)[2](leadingSwipeActionsConfigurationProvider2, path);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_trailingSwipeActionsConfigurationForIndexPath:(id)path
{
  trailingSwipeActionsConfigurationProvider = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration trailingSwipeActionsConfigurationProvider];

  if (trailingSwipeActionsConfigurationProvider)
  {
    trailingSwipeActionsConfigurationProvider2 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration trailingSwipeActionsConfigurationProvider];
    v7 = (trailingSwipeActionsConfigurationProvider2)[2](trailingSwipeActionsConfigurationProvider2, path);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_willBeginSwiping
{
  willBeginSwipingHandler = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration willBeginSwipingHandler];

  if (willBeginSwipingHandler)
  {
    willBeginSwipingHandler2 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration willBeginSwipingHandler];
    willBeginSwipingHandler2[2]();
  }
}

- (void)_didEndSwiping
{
  didEndSwipingHandler = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration didEndSwipingHandler];

  if (didEndSwipingHandler)
  {
    didEndSwipingHandler2 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration didEndSwipingHandler];
    didEndSwipingHandler2[2]();
  }
}

- (BOOL)_adjustsLayoutToDrawTopSeparatorInSection:(int64_t)section interactionState:(id)state
{
  if ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle]|| [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _hasHeaderOrFirstItemStyledAsHeader])
  {
    return 0;
  }

  return [(_UICollectionViewLayoutInteractionStateModule *)state _shouldAdjustLayoutToDrawTopSeparatorInSection:section];
}

- (BOOL)_hasHeaderFooterBelowLastItemInSection:(int64_t)section interactionState:(id)state
{
  [(_UICollectionViewListLayoutSection *)self contentInsets];
  if (v8 <= 0.0)
  {
    if ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _hasFooter])
    {
      v9 = 1;
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __94___UICollectionViewListLayoutSection__hasHeaderFooterBelowLastItemInSection_interactionState___block_invoke;
      v11[3] = &unk_1E7128878;
      v11[5] = &v12;
      v11[6] = a2;
      v11[4] = self;
      [(_UICollectionViewLayoutInteractionStateModule *)state enumerateSectionsAfterSectionIndex:section enumerator:v11];
      v9 = *(v13 + 24);
      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)_shouldDrawSeparatorAtBottom:(BOOL)bottom ofSection:(int64_t)section interactionState:(id)state
{
  appearanceStyle = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle];
  if ((appearanceStyle - 2) < 2)
  {
    goto LABEL_19;
  }

  if (appearanceStyle != 4 && appearanceStyle != 0)
  {
    goto LABEL_14;
  }

  if (!bottom)
  {
    if ([(_UICollectionViewListLayoutSection *)self _adjustsLayoutToDrawTopSeparatorInSection:section interactionState:state]|| [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _hasHeaderOrFirstItemStyledAsHeader]&& [(_UICollectionViewListLayoutSection *)self _headerFooterPinningBehavior]== 1 && (([(_UICollectionViewListLayoutSection *)self contentInsets], v13 == 0.0) || [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader]))
    {
LABEL_14:
      LOBYTE(v12) = 1;
      return v12;
    }

LABEL_19:
    LOBYTE(v12) = 0;
    return v12;
  }

  v11 = [(_UICollectionViewListLayoutSection *)self _hasHeaderFooterBelowLastItemInSection:section interactionState:state];
  if (!v11 || (v12 = [(_UICollectionViewListLayoutSection *)self _headerFooterPinningBehavior], v12 != 1))
  {
    LOBYTE(v12) = [(_UICollectionViewListLayoutSection *)self _headerFooterPinningBehavior]!= 2 && !v11;
  }

  return v12;
}

- (int64_t)_separatorInsetBehaviorAtBottom:(BOOL)bottom indexPath:(id)path interactionState:(id)state
{
  appearanceStyle = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle];
  v10 = appearanceStyle;
  if (bottom)
  {
    if ((appearanceStyle | 4) != 4 || -[_UICollectionViewListLayoutSection _hasHeaderFooterBelowLastItemInSection:interactionState:](self, "_hasHeaderFooterBelowLastItemInSection:interactionState:", [path section], state) && (-[_UICollectionViewListLayoutSection _headerFooterPinningBehavior](self, "_headerFooterPinningBehavior") - 1) >= 2)
    {
      return 2;
    }

    return 0;
  }

  if (-[_UICollectionViewListLayoutSection _adjustsLayoutToDrawTopSeparatorInSection:interactionState:](self, "_adjustsLayoutToDrawTopSeparatorInSection:interactionState:", [path section], state))
  {
    return 0;
  }

  if ((v10 - 1) >= 3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (BOOL)__isLastItemInSection:(id)section
{
  sectionCopy = section;
  item = [section item];
  _dataSourceSnapshot = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment _dataSourceSnapshot];
  LOBYTE(sectionCopy) = item == [_dataSourceSnapshot numberOfItemsInSection:{objc_msgSend(sectionCopy, "section")}] - 1;

  return sectionCopy;
}

- (NSDirectionalEdgeInsets)_sectionPreferredBottomSeparatorInsetsForIndexPath:(id)path
{
  _separatorConfigurationNoCopy = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _separatorConfigurationNoCopy];
  [_separatorConfigurationNoCopy bottomSeparatorInsets];
  leading = v6;
  trailing = v8;

  separatorInsetProvider = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration separatorInsetProvider];
  v11 = separatorInsetProvider;
  if (separatorInsetProvider)
  {
    (*(separatorInsetProvider + 16))(separatorInsetProvider, path);
    leading = v12;
    trailing = v13;
  }

  v14 = fabs(leading + -1.79769313e308);
  if (fabs(leading + 1.0) <= 2.22044605e-16 || v14 <= 2.22044605e-16)
  {
    leading = self->_defaultSeparatorInsets.leading;
  }

  v16 = fabs(trailing + -1.79769313e308);
  if (fabs(trailing + 1.0) <= 2.22044605e-16 || v16 <= 2.22044605e-16)
  {
    trailing = self->_defaultSeparatorInsets.trailing;
  }

  v18 = 0.0;
  v19 = 0.0;
  v20 = leading;
  v21 = trailing;
  result.trailing = v21;
  result.bottom = v19;
  result.leading = v20;
  result.top = v18;
  return result;
}

- (NSDirectionalEdgeInsets)_sectionPreferredTopSeparatorInsetsWithBottomInsets:(NSDirectionalEdgeInsets)insets hasCustomInsets:(BOOL *)customInsets
{
  trailing = insets.trailing;
  leading = insets.leading;
  if (!customInsets)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:1338 description:{@"Invalid parameter not satisfying: %@", @"hasCustomInsets != nil"}];
  }

  v8 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _separatorConfigurationNoCopy:insets.top];
  [v8 topSeparatorInsets];
  v10 = v9;
  v12 = v11;

  v13 = fabs(v10 + -1.79769313e308);
  v14 = fabs(v10 + 1.0) > 2.22044605e-16 && v13 > 2.22044605e-16;
  if (v14)
  {
    v15 = v10;
  }

  else
  {
    v15 = leading;
  }

  v16 = v14;
  v17 = fabs(v12 + -1.79769313e308);
  v18 = fabs(v12 + 1.0) > 2.22044605e-16 && v17 > 2.22044605e-16;
  if (v18)
  {
    v19 = v12;
  }

  else
  {
    v19 = trailing;
  }

  v20 = v18;
  *customInsets = v16 | v20;
  v21 = 0.0;
  v22 = 0.0;
  result.trailing = v19;
  result.bottom = v22;
  result.leading = v15;
  result.top = v21;
  return result;
}

- (id)_invalidationContextForCellBackgroundOrBottomSeparatorChangeAtIndexPath:(id)path interactionState:(id)state separatorOnly:(BOOL)only
{
  if (state)
  {
    v7 = *(state + 2);
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_alloc_init(v7);
  [v8 _setIntent:10];
  if (only || [path item] < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(path inSection:{"item") - 1, objc_msgSend(path, "section")}];
  }

  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:{path, v9, 0}];
  [v8 invalidateDecorationElementsOfKind:@"UICollectionViewListLayoutElementKindBottomSeparator" atIndexPaths:v10];
  [v8 invalidateItemsAtIndexPaths:v10];

  return v8;
}

- (void)_transformFittingLayoutAttributes:(id)attributes interactionState:(id)state
{
  if (attributes && (*(attributes + 288) & 1) != 0)
  {
    v6 = [(_UICollectionViewListLayoutSection *)self _generateListSectionDataForLayoutAttributes:attributes interactionState:state];
    _listAttributesCreatingIfNecessary = [(UICollectionViewLayoutAttributes *)attributes _listAttributesCreatingIfNecessary];
    [(UIContentUnavailableImageProperties *)_listAttributesCreatingIfNecessary _setTintColor:v6];
  }

  [(_UICollectionViewListLayoutSection *)self _updateMaxWidthForLayoutAttributes:attributes, state];
}

- (void)_transformPreferredLayoutAttributes:(id)attributes interactionState:(id)state
{
  v25 = *MEMORY[0x1E69E9840];
  if (!attributes || (*(attributes + 288) & 1) == 0)
  {
    return;
  }

  _existingListAttributes = [(UICollectionViewLayoutAttributes *)attributes _existingListAttributes];
  v9 = _existingListAttributes;
  if (_existingListAttributes && (v10 = *(_existingListAttributes + 32)) != 0)
  {
    v11 = v10;
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v22 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        attributesCopy2 = attributes;
        _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "No list section data present in the preferred attributes from the cell. Attrs: %@", buf, 0xCu);
      }
    }

    else
    {
      v21 = *(__UILogGetCategoryCachedImpl("Assert", &_transformPreferredLayoutAttributes_interactionState____s_category) + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        attributesCopy2 = attributes;
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "No list section data present in the preferred attributes from the cell. Attrs: %@", buf, 0xCu);
      }
    }

    v11 = [(_UICollectionViewListLayoutSection *)self _generateListSectionDataForLayoutAttributes:attributes interactionState:state];
    if (!v11)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  v12 = v11[1];
LABEL_7:
  v13 = v12;
  if (![v13 topSeparatorVisibility])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:1405 description:{@"Separator configuration from preferred attributes of cell has unresolved top separator visibility. %@", attributes}];
  }

  if (![v13 bottomSeparatorVisibility])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:1406 description:{@"Separator configuration from preferred attributes of cell has unresolved bottom separator visibility. %@", attributes}];
  }

  _itemSeparatorHandler = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _itemSeparatorHandler];
  if (_itemSeparatorHandler)
  {
    indexPath = [attributes indexPath];
    v16 = [v13 copy];
    v17 = (_itemSeparatorHandler)[2](_itemSeparatorHandler, indexPath, v16);
    v18 = [v17 copy];

    [v18 _replaceAutomaticValuesWithValuesFromConfiguration:v13];
    [(UIViewAnimationContext *)v11 setViewAnimations:v18];
  }

  [(UICollectionViewLayoutAttributes *)attributes _setPreferredSizingData:v11];
  [(UIContentUnavailableImageProperties *)v9 _setTintColor:?];
}

- (void)_enrichLayoutAttributes:(id)attributes interactionState:(id)state
{
  _listAttributesCreatingIfNecessary = [(UICollectionViewLayoutAttributes *)attributes _listAttributesCreatingIfNecessary];
  appearanceStyle = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle];
  if (_listAttributesCreatingIfNecessary)
  {
    _listAttributesCreatingIfNecessary[2] = appearanceStyle;
    stylesFirstItemAsHeader = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader];
    *(_listAttributesCreatingIfNecessary + 8) = _listAttributesCreatingIfNecessary[1] & 0xFE | stylesFirstItemAsHeader;
  }

  else
  {
    stylesFirstItemAsHeader = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader];
  }

  _preferredSizingData = [(UICollectionViewLayoutAttributes *)attributes _preferredSizingData];
  v10 = _preferredSizingData;
  if (_preferredSizingData)
  {
    if (!attributes)
    {
      goto LABEL_54;
    }

    *(attributes + 38) = *(_preferredSizingData + 16);
  }

  else if (!attributes)
  {
    goto LABEL_54;
  }

  v11 = *(attributes + 72);
  if (v11)
  {
    if (appearanceStyle != 2 && *(attributes + 38) != 0)
    {
      v21 = [(_UICollectionViewListLayoutSection *)self _maskedCornersForBackgroundOfItemWithSelectionGrouping:?];
      if (_listAttributesCreatingIfNecessary)
      {
        _listAttributesCreatingIfNecessary[3] = v21;
        *(_listAttributesCreatingIfNecessary + 8) |= 2u;
      }
    }

    [attributes setZIndex:10];
    if (appearanceStyle <= 1)
    {
      if (!appearanceStyle)
      {
        [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesForPlainCell:attributes];
        goto LABEL_54;
      }

      if (appearanceStyle != 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (appearanceStyle == 2)
      {
        [(_UICollectionViewListLayoutSection *)self _defaultLayoutMarginsInsideSection];
        *(attributes + 72) |= 0x200u;
        *(attributes + 40) = v47;
        *(attributes + 41) = v48;
        *(attributes + 42) = v49;
        *(attributes + 43) = v50;
        [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesWithInsetGroupedMasking:attributes stylesFirstItemAsHeader:stylesFirstItemAsHeader];
        goto LABEL_54;
      }

      if (appearanceStyle != 3)
      {
        if (appearanceStyle == 4)
        {
          [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesForSidebarPlainCell:attributes];
        }

        goto LABEL_54;
      }
    }

    [(_UICollectionViewListLayoutSection *)self _defaultLayoutMarginsInsideSection];
    *(attributes + 72) |= 0x200u;
    *(attributes + 40) = v29;
    *(attributes + 41) = v30;
    *(attributes + 42) = v31;
    *(attributes + 43) = v32;
    [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesWithDefaultMasking:attributes];
    goto LABEL_54;
  }

  if ((v11 & 2) == 0)
  {
    if (dyld_program_sdk_at_least())
    {
      [(_UICollectionViewListLayoutSection *)self _defaultLayoutMarginsForHeaderFooterViewWithLayoutAttributes:attributes];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
    }

    else
    {
      [(_UICollectionViewListLayoutSection *)self _defaultLayoutMarginsInsideSection];
      v13 = v33;
      v15 = v34;
      v17 = v35;
      v19 = v36;
      if (![(NSCollectionLayoutSection *)self supplementariesFollowContentInsets])
      {
        [(_UICollectionViewListLayoutSection *)self _effectiveSectionHorizontalInsets];
        v38 = v37;
        v40 = v39;
        _isRTL = [(_UICollectionViewListLayoutSection *)self _isRTL];
        if (_isRTL)
        {
          v42 = v40;
        }

        else
        {
          v42 = v38;
        }

        if (_isRTL)
        {
          v43 = v38;
        }

        else
        {
          v43 = v40;
        }

        v15 = v15 + v42;
        v19 = v19 + v43;
      }
    }

    *(attributes + 72) |= 0x200u;
    *(attributes + 40) = v13;
    *(attributes + 41) = v15;
    *(attributes + 42) = v17;
    *(attributes + 43) = v19;
    if (!appearanceStyle)
    {
      [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesForPlainSupplementaryView:attributes];
    }

    goto LABEL_54;
  }

  _content = [(_UILabelConfiguration *)attributes _content];
  v23 = [_content isEqualToString:@"UICollectionViewListLayoutElementKindBottomSeparator"];

  if (v23)
  {
    if (v10)
    {
      v24 = v10[1];
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    selfCopy2 = self;
    attributesCopy2 = attributes;
    v28 = 1;
LABEL_43:
    [(_UICollectionViewListLayoutSection *)selfCopy2 _configureLayoutAttributes:attributesCopy2 forSeparatorAtBottom:v28 preferredConfiguration:v25 interactionState:state];

    goto LABEL_54;
  }

  _content2 = [(_UILabelConfiguration *)attributes _content];
  v45 = [_content2 isEqualToString:@"UICollectionViewListLayoutElementKindTopSeparator"];

  if (v45)
  {
    if (v10)
    {
      v46 = v10[1];
    }

    else
    {
      v46 = 0;
    }

    v25 = v46;
    selfCopy2 = self;
    attributesCopy2 = attributes;
    v28 = 0;
    goto LABEL_43;
  }

  _content3 = [(_UILabelConfiguration *)attributes _content];
  v52 = [_content3 isEqualToString:0x1EFB7AFF0];

  if (v52)
  {
    [attributes setHidden:1];
    if (appearanceStyle <= 4)
    {
      if (appearanceStyle == 2)
      {
        [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesWithInsetGroupedMasking:attributes stylesFirstItemAsHeader:stylesFirstItemAsHeader];
      }

      else
      {
        [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesForSwipeActionMasking:attributes interactionState:state];
      }
    }

    [(_UICollectionViewListLayoutSection *)self _defaultLayoutMarginsInsideSection];
    *(attributes + 72) |= 0x200u;
    *(attributes + 40) = v55;
    *(attributes + 41) = v56;
    *(attributes + 42) = v57;
    *(attributes + 43) = v58;
  }

  else
  {
    _content4 = [(_UILabelConfiguration *)attributes _content];
    v54 = [_content4 isEqualToString:@"_UICollectionViewListLayoutSectionBackgroundColorDecorationElementKind"];

    if (v54)
    {
      [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesForBackgroundDecoration:attributes];
    }
  }

LABEL_54:
}

- (id)_generateListSectionDataForLayoutAttributes:(id)attributes interactionState:(id)state
{
  indexPath = [attributes indexPath];
  v8 = objc_alloc_init(_UICollectionLayoutListSectionData);
  v9 = [(_UICollectionViewLayoutInteractionStateModule *)state selectionGroupingForItemAtIndexPath:indexPath];
  v10 = v9;
  if (v8)
  {
    v8->_selectionGrouping = v9;
  }

  indexPath2 = [attributes indexPath];
  v12 = [(_UICollectionViewListLayoutSection *)self __isLastItemInSection:indexPath2];

  v13 = [(_UICollectionViewListLayoutSection *)self _separatorConfigurationForItemAtIndexPath:indexPath withSelectionGrouping:v10 considerNextCellGrouping:!v12 interactionState:state];
  [(UIViewAnimationContext *)v8 setViewAnimations:v13];

  return v8;
}

- (void)_updateMaxWidthForLayoutAttributes:(id)attributes
{
  if (!attributes || (*(attributes + 288) & 3) != 0 || [(NSCollectionLayoutSection *)self supplementariesFollowContentInsets])
  {
    [(_UICollectionViewListLayoutSection *)self _effectiveSectionHorizontalInsets];
  }

  else
  {
    [(_UICollectionViewListLayoutSection *)self _effectiveSectionSupplementaryHorizontalInsets];
  }

  v7 = v5;
  v8 = v6;
  container = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment container];
  [container contentSize];
  v11 = v10;

  _listAttributesCreatingIfNecessary = [(UICollectionViewLayoutAttributes *)attributes _listAttributesCreatingIfNecessary];
  if (_listAttributesCreatingIfNecessary)
  {
    _listAttributesCreatingIfNecessary[8] = fmax(v11 - v7 - v8, 0.0);
  }
}

- (NSDirectionalEdgeInsets)_effectiveBoundarySeparatorInsets:(NSDirectionalEdgeInsets)result
{
  v3 = fabs(result.leading + -1.79769313e308);
  if (fabs(result.leading + 1.0) <= 2.22044605e-16 || v3 <= 2.22044605e-16)
  {
    result.leading = self->_defaultSeparatorInsets.leading;
  }

  v5 = fabs(result.trailing + -1.79769313e308);
  if (fabs(result.trailing + 1.0) <= 2.22044605e-16 || v5 <= 2.22044605e-16)
  {
    result.trailing = self->_defaultSeparatorInsets.trailing;
  }

  v7 = 0.0;
  v8 = 0.0;
  result.bottom = v8;
  result.top = v7;
  return result;
}

- (id)_separatorConfigurationForItemAtIndexPath:(id)path withSelectionGrouping:(unint64_t)grouping considerNextCellGrouping:(BOOL)cellGrouping interactionState:(id)state
{
  cellGroupingCopy = cellGrouping;
  v53 = *MEMORY[0x1E69E9840];
  _separatorConfiguration = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _separatorConfiguration];
  v12 = [(_UICollectionViewLayoutInteractionStateModule *)state itemAtIndexPathIsBeingReordered:path];
  [(_UICollectionViewListLayoutSection *)self _sectionPreferredBottomSeparatorInsetsForIndexPath:path];
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  if (v12)
  {
    v52[0] = 0;
    [(_UICollectionViewListLayoutSection *)self _sectionPreferredTopSeparatorInsetsWithBottomInsets:v52 hasCustomInsets:v13, v14, v15, v16];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [_separatorConfiguration setBottomSeparatorInsets:{v17, v18, v19, v20}];
    [_separatorConfiguration setTopSeparatorInsets:{v22, v24, v26, v28}];
    [_separatorConfiguration setBottomSeparatorVisibility:2];
    [_separatorConfiguration setTopSeparatorVisibility:2];
    goto LABEL_53;
  }

  if (v14 == -1000.0 && v16 == -1000.0)
  {
    [_separatorConfiguration setBottomSeparatorVisibility:2];
  }

  if (![_separatorConfiguration bottomSeparatorVisibility])
  {
    if ([(_UICollectionViewListLayoutSection *)self _shouldHideBottomSeparatorAtIndexPath:path forGrouping:grouping considerNextCellGrouping:cellGroupingCopy interactionState:state])
    {
      v29 = 2;
    }

    else
    {
      v29 = 1;
    }

    [_separatorConfiguration setBottomSeparatorVisibility:v29];
  }

  if (![_separatorConfiguration topSeparatorVisibility])
  {
    bottomSeparatorVisibility = [_separatorConfiguration bottomSeparatorVisibility];
    if (grouping && bottomSeparatorVisibility == 2)
    {
      v31 = 2;
    }

    else if ([(_UICollectionViewListLayoutSection *)self _shouldHideTopSeparatorAtIndexPath:path interactionState:state])
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    [_separatorConfiguration setTopSeparatorVisibility:v31];
  }

  stylesFirstItemAsHeader = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader];
  v33 = stylesFirstItemAsHeader && [path item] == 0;
  [(NSCollectionLayoutSection *)self interGroupSpacing];
  v35 = v34 > 0.0 && [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle]== 1;
  if ([(_UICollectionViewListLayoutSection *)self __isLastItemInSection:path])
  {
    v36 = [(_UICollectionViewListLayoutSection *)self _separatorInsetBehaviorAtBottom:1 indexPath:path interactionState:state];
  }

  else
  {
    if (v35)
    {
      v36 = 2;
    }

    else
    {
      v36 = 0;
    }

    if (v33)
    {
      goto LABEL_34;
    }
  }

  if (!v36)
  {
LABEL_34:
    [_separatorConfiguration setBottomSeparatorInsets:{v17, v18, v19, v20}];
    goto LABEL_35;
  }

  if (v36 == 2)
  {
    [_separatorConfiguration _insetsForBoundarySeparators];
    [(_UICollectionViewListLayoutSection *)self _effectiveBoundarySeparatorInsets:?];
    [_separatorConfiguration setBottomSeparatorInsets:?];
    [_separatorConfiguration _setIgnoreBottomSeparatorInsetsFromCell:1];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v50 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      *v52 = 134217984;
      *&v52[4] = v36;
      _os_log_fault_impl(&dword_188A29000, v50, OS_LOG_TYPE_FAULT, "The separator at the bottom of list sections does not support behavior %ld", v52, 0xCu);
    }
  }

  else
  {
    v48 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_90) + 8);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *v52 = 134217984;
      *&v52[4] = v36;
      _os_log_impl(&dword_188A29000, v48, OS_LOG_TYPE_ERROR, "The separator at the bottom of list sections does not support behavior %ld", v52, 0xCu);
    }
  }

LABEL_35:
  item = [path item];
  if (stylesFirstItemAsHeader)
  {
    if (item == 1)
    {
      goto LABEL_37;
    }

LABEL_44:
    if (v35)
    {
      goto LABEL_45;
    }

LABEL_46:
    v52[0] = 0;
    [_separatorConfiguration bottomSeparatorInsets];
    [(_UICollectionViewListLayoutSection *)self _sectionPreferredTopSeparatorInsetsWithBottomInsets:v52 hasCustomInsets:?];
    [_separatorConfiguration setTopSeparatorInsets:?];
    v46 = v52[0];
    v47 = _separatorConfiguration;
LABEL_52:
    [v47 _setIgnoreTopSeparatorInsetsFromCell:v46];
    goto LABEL_53;
  }

  if (item)
  {
    goto LABEL_44;
  }

LABEL_37:
  v38 = [(_UICollectionViewListLayoutSection *)self _separatorInsetBehaviorAtBottom:0 indexPath:path interactionState:state];
  if (!v38)
  {
    goto LABEL_46;
  }

  v39 = v38;
  if (v38 == 1)
  {
    v42 = 1.79769313e308;
    v41 = 0.0;
    v43 = 0.0;
    selfCopy2 = self;
    v44 = 1.79769313e308;
    goto LABEL_51;
  }

  if (v38 == 2)
  {
LABEL_45:
    [_separatorConfiguration _insetsForBoundarySeparators];
    selfCopy2 = self;
LABEL_51:
    [(_UICollectionViewListLayoutSection *)selfCopy2 _effectiveBoundarySeparatorInsets:v41, v42, v43, v44];
    [_separatorConfiguration setTopSeparatorInsets:?];
    v47 = _separatorConfiguration;
    v46 = 1;
    goto LABEL_52;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v51 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      *v52 = 134217984;
      *&v52[4] = v39;
      _os_log_fault_impl(&dword_188A29000, v51, OS_LOG_TYPE_FAULT, "The separator at the top of list sections does not support behavior %ld", v52, 0xCu);
    }
  }

  else
  {
    v40 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498420) + 8);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *v52 = 134217984;
      *&v52[4] = v39;
      _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_ERROR, "The separator at the top of list sections does not support behavior %ld", v52, 0xCu);
    }
  }

LABEL_53:

  return _separatorConfiguration;
}

- (BOOL)_shouldHideTopSeparatorAtIndexPath:(id)path interactionState:(id)state
{
  _separatorConfigurationNoCopy = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _separatorConfigurationNoCopy];
  topSeparatorVisibility = [_separatorConfigurationNoCopy topSeparatorVisibility];

  if (topSeparatorVisibility == 1)
  {
    return 0;
  }

  if (topSeparatorVisibility == 2)
  {
    return 1;
  }

  appearanceStyle = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle];
  traitCollection = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6 || [(_UICollectionViewLayoutInteractionStateModule *)state selectionGroupingForItemAtIndexPath:path])
  {
    return 1;
  }

  stylesFirstItemAsHeader = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader];
  item = [path item];
  v15 = item;
  if (stylesFirstItemAsHeader)
  {
    if (![path item] || v15 == 1)
    {
      if (v15 != 1)
      {
        return 1;
      }

      return !-[_UICollectionViewListLayoutSection _shouldDrawSeparatorAtBottom:ofSection:interactionState:](self, "_shouldDrawSeparatorAtBottom:ofSection:interactionState:", 0, [path section], state);
    }
  }

  else if (!item)
  {
    return !-[_UICollectionViewListLayoutSection _shouldDrawSeparatorAtBottom:ofSection:interactionState:](self, "_shouldDrawSeparatorAtBottom:ofSection:interactionState:", 0, [path section], state);
  }

  [(NSCollectionLayoutSection *)self interGroupSpacing];
  return v16 <= 0.0 || appearanceStyle != 1;
}

- (BOOL)_shouldHideBottomSeparatorAtIndexPath:(id)path forGrouping:(unint64_t)grouping considerNextCellGrouping:(BOOL)cellGrouping interactionState:(id)state
{
  cellGroupingCopy = cellGrouping;
  _separatorConfigurationNoCopy = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _separatorConfigurationNoCopy];
  _hidingBehavior = [_separatorConfigurationNoCopy _hidingBehavior];
  switch(_hidingBehavior)
  {
    case 2:
      goto LABEL_35;
    case 1:
      goto LABEL_10;
    case 0:
      bottomSeparatorVisibility = [_separatorConfigurationNoCopy bottomSeparatorVisibility];
      if (bottomSeparatorVisibility != 1)
      {
        if (bottomSeparatorVisibility != 2)
        {
          appearanceStyle = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle];
          if ([path item])
          {
            v16 = [(_UICollectionViewListLayoutSection *)self __isLastItemInSection:path];
            if (appearanceStyle != 3)
            {
              if (!v16)
              {
                goto LABEL_33;
              }

LABEL_32:
              v17 = 1;
              if (!-[_UICollectionViewListLayoutSection _shouldDrawSeparatorAtBottom:ofSection:interactionState:](self, "_shouldDrawSeparatorAtBottom:ofSection:interactionState:", 1, [path section], state))
              {
                goto LABEL_36;
              }

LABEL_33:
              if (appearanceStyle == 2)
              {
                [(NSCollectionLayoutSection *)self interGroupSpacing];
                if (v27 > 0.0)
                {
                  goto LABEL_35;
                }
              }

              traitCollection = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment traitCollection];
              v18 = 0;
              v17 = 1;
              if ([traitCollection userInterfaceIdiom] == 6 && !appearanceStyle)
              {
                [(NSCollectionLayoutSection *)self interGroupSpacing];
                v31 = v30;

                if (v31 > 0.0)
                {
                  goto LABEL_36;
                }

LABEL_40:
                v18 = 0;
                goto LABEL_12;
              }

LABEL_42:

              goto LABEL_12;
            }
          }

          else
          {
            stylesFirstItemAsHeader = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader];
            v26 = [(_UICollectionViewListLayoutSection *)self __isLastItemInSection:path];
            if (appearanceStyle == 3)
            {
              v17 = 1;
              if (!stylesFirstItemAsHeader || !v26)
              {
                goto LABEL_36;
              }

              goto LABEL_40;
            }

            if (!stylesFirstItemAsHeader)
            {
              if (!v26)
              {
                goto LABEL_33;
              }

              goto LABEL_32;
            }
          }
        }

LABEL_35:
        v17 = 1;
        goto LABEL_36;
      }

LABEL_10:
      v17 = 0;
      goto LABEL_36;
  }

  v17 = _hidingBehavior == 3;
  v18 = _hidingBehavior == 4;
  if ((_hidingBehavior - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    traitCollection = [MEMORY[0x1E696AAA8] currentHandler];
    [traitCollection handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:1806 description:@"Hiding behavior resolved to unsupported type"];
    goto LABEL_42;
  }

LABEL_12:
  [(NSCollectionLayoutSection *)self interGroupSpacing];
  v20 = v19 > 0.0 || v18;
  if (cellGroupingCopy && v19 <= 0.0 && ([MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(path inSection:{"item") + 1, objc_msgSend(path, "section")}], v21 = objc_claimAutoreleasedReturnValue(), v22 = -[_UICollectionViewLayoutInteractionStateModule selectionGroupingForItemAtIndexPath:](state, v21) - 1, v21, v22 <= 1))
  {
    v17 |= v20;
  }

  else
  {
    v23 = v17 | v20;
    if (grouping == 1)
    {
      v24 = v17;
    }

    else
    {
      v24 = 0;
    }

    if (grouping != 4)
    {
      v23 = v24;
    }

    if (grouping - 2 >= 2)
    {
      v17 = v23;
    }

    else
    {
      v17 = v20;
    }
  }

LABEL_36:

  return v17 & 1;
}

- (void)_configureLayoutAttributes:(id)attributes forSeparatorAtBottom:(BOOL)bottom preferredConfiguration:(id)configuration interactionState:(id)state
{
  bottomCopy = bottom;
  indexPath = [attributes indexPath];
  if (attributes)
  {
    v12 = *(attributes + 38);
  }

  else
  {
    v12 = 0;
  }

  configurationCopy = configuration;
  if (!configurationCopy)
  {
    configurationCopy = [(_UICollectionViewListLayoutSection *)self _separatorConfigurationForItemAtIndexPath:indexPath withSelectionGrouping:0 considerNextCellGrouping:0 interactionState:state];
  }

  if (![configurationCopy topSeparatorVisibility])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    indexPath2 = [attributes indexPath];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:1859 description:{@"topSeparatorVisibility for %@ is unresolved in the list section data, which is unsupported. This is a UIKit bug.", indexPath2}];
  }

  if (![configurationCopy bottomSeparatorVisibility])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    indexPath3 = [attributes indexPath];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:1860 description:{@"bottomSeparatorVisibility for %@ is unresolved in the list section data, which is unsupported. This is a UIKit bug.", indexPath3}];
  }

  v14 = [(_UICollectionViewLayoutInteractionStateModule *)state itemAtIndexPathIsSelected:indexPath];
  _listAttributesCreatingIfNecessary = [(UICollectionViewLayoutAttributes *)attributes _listAttributesCreatingIfNecessary];
  color = [configurationCopy color];
  [(_UICollectionLayoutItemSolver *)_listAttributesCreatingIfNecessary setSolveResult:color];

  visualEffect = [configurationCopy visualEffect];
  [(_UICollectionLayoutListAttributes *)_listAttributesCreatingIfNecessary setSeparatorVisualEffect:visualEffect];

  if (bottomCopy)
  {
    [attributes setHidden:{objc_msgSend(configurationCopy, "bottomSeparatorVisibility") == 2}];
    [configurationCopy bottomSeparatorInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [attributes frame];
    [attributes setFrame:{v21 + v26, v19 + v27, v28 - (v21 + v25), v29 - (v19 + v23)}];
    if ((v12 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v30 = v14;
    }

    else
    {
      v30 = 0;
    }

    if ((v30 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    multipleSelectionColor = [configurationCopy multipleSelectionColor];
    [(_UICollectionLayoutItemSolver *)_listAttributesCreatingIfNecessary setSolveResult:multipleSelectionColor];

    goto LABEL_20;
  }

  [attributes setHidden:{objc_msgSend(configurationCopy, "topSeparatorVisibility") == 2}];
  [configurationCopy topSeparatorInsets];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  [attributes frame];
  [attributes setFrame:{v34 + v39, v32 + v40, v41 - (v34 + v38), v42 - (v32 + v36)}];
  if ((v12 - 3) < 2)
  {
    v43 = v14;
  }

  else
  {
    v43 = 0;
  }

  if (v43 == 1)
  {
    goto LABEL_19;
  }

LABEL_20:
  isHidden = [attributes isHidden];
  v46 = 1.0;
  if (isHidden)
  {
    v46 = 0.0;
  }

  [attributes setAlpha:v46];
}

- (void)_configureLayoutAttributesForSidebarPlainCell:(id)cell
{
  [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesForPlainCell:?];
  if (([(_UICollectionViewListLayoutSection *)self _headerFooterPinningBehavior]- 1) >= 2)
  {
    if ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader])
    {
      indexPath = [cell indexPath];
      item = [indexPath item];

      if (!item)
      {
        [cell center];
        v8 = v7;
        v10 = v9;
        [(_UICollectionViewListLayoutSection *)self contentInsets];
        if (v11 > 8.0)
        {
          v11 = 8.0;
        }

        [cell setCenter:{v8, v10 - v11}];
      }
    }
  }
}

- (void)_configureLayoutAttributesForPlainCell:(id)cell
{
  [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesWithDefaultMasking:?];
  [(_UICollectionViewListLayoutSection *)self _defaultLayoutMarginsInsideSection];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader])
  {
    indexPath = [cell indexPath];
    item = [indexPath item];

    if (!item)
    {
      if (![(NSCollectionLayoutSection *)self supplementariesFollowContentInsets])
      {
        [(_UICollectionViewListLayoutSection *)self _effectiveSectionHorizontalInsets];
        v16 = v15;
        v18 = v17;
        _isRTL = [(_UICollectionViewListLayoutSection *)self _isRTL];
        if (_isRTL)
        {
          v20 = v18;
        }

        else
        {
          v20 = v16;
        }

        if (_isRTL)
        {
          v21 = v16;
        }

        else
        {
          v21 = v18;
        }

        v22 = v21 * 0.5 - v20 * 0.5;
        [cell bounds];
        [cell setBounds:?];
        [cell center];
        [cell setCenter:v22 + v23];
      }

      [(_UICollectionViewListLayoutSection *)self _defaultLayoutMarginsForHeaderFooterViewWithLayoutAttributes:cell];
      v6 = v24;
      v8 = v25;
      v10 = v26;
      v12 = v27;
    }
  }

  if (cell)
  {
    *(cell + 72) |= 0x200u;
    *(cell + 40) = v6;
    *(cell + 41) = v8;
    *(cell + 42) = v10;
    *(cell + 43) = v12;
  }
}

- (void)_configureLayoutAttributesForPlainSupplementaryView:(id)view
{
  _content = [(_UILabelConfiguration *)view _content];
  _headerElementKind = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _headerElementKind];
  v7 = [_content isEqualToString:_headerElementKind];

  if (v7)
  {
    if ([(_UICollectionViewListLayoutSection *)self _headerFooterPinningBehavior]== 2)
    {
      indexPath = [view indexPath];
      section = [indexPath section];

      if (view)
      {
        if (!section)
        {
          *(view + 72) |= 0x8000u;
        }
      }
    }
  }
}

- (void)_configureLayoutAttributesWithDefaultMasking:(id)masking
{
  if (masking)
  {
    *(masking + 72) &= ~0x10u;
    [(UICollectionViewLayoutAttributes *)masking _setMaskedCorners:?];
    *(masking + 39) = 0;
  }

  else
  {

    [(UICollectionViewLayoutAttributes *)0 _setMaskedCorners:?];
  }
}

- (void)_configureLayoutAttributesWithInsetGroupedMasking:(id)masking stylesFirstItemAsHeader:(BOOL)header
{
  headerCopy = header;
  indexPath = [masking indexPath];
  item = [indexPath item];
  [(NSCollectionLayoutSection *)self interGroupSpacing];
  if (v8 <= 0.0)
  {
    if (headerCopy)
    {
      v10 = 15;
      if (item)
      {
        v10 = 0;
      }

      if (item == 1)
      {
        v9 = 3;
      }

      else
      {
        v9 = v10;
      }

      if (item)
      {
        _dataSourceSnapshot = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment _dataSourceSnapshot];
        v12 = [_dataSourceSnapshot numberOfItemsInSection:{objc_msgSend(indexPath, "section")}] - 1;

        if (item == v12)
        {
          v9 |= 0xCuLL;
        }
      }
    }

    else
    {
      if (item)
      {
        v13 = 0;
      }

      else
      {
        v13 = 3;
      }

      _dataSourceSnapshot2 = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment _dataSourceSnapshot];
      v15 = [_dataSourceSnapshot2 numberOfItemsInSection:{objc_msgSend(indexPath, "section")}] - 1;

      if (item == v15)
      {
        v9 = v13 | 0xC;
      }

      else
      {
        v9 = v13;
      }
    }
  }

  else if (headerCopy && item == 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 15;
  }

  if (masking)
  {
    *(masking + 72) |= 0x10u;
  }

  [(UICollectionViewLayoutAttributes *)masking _setMaskedCorners:v9];
  [(_UICollectionViewListLayoutSection *)self _effectiveCornerRadius];
  if (masking)
  {
    *(masking + 39) = v16;
  }
}

- (void)_configureLayoutAttributesForSwipeActionMasking:(id)masking interactionState:(id)state
{
  indexPath = [masking indexPath];
  v8 = [(_UICollectionViewLayoutInteractionStateModule *)state swipeActionsStyleForSwipedItemAtIndexPath:indexPath];

  if (v8 == 2)
  {
    if (masking)
    {
      *(masking + 72) |= 0x10u;
    }

    [(UICollectionViewLayoutAttributes *)masking _setMaskedCorners:?];
    [(_UICollectionViewListLayoutSection *)self _effectiveCornerRadius];
    if (masking)
    {
      *(masking + 39) = v9;
    }
  }

  else
  {

    [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesWithDefaultMasking:masking];
  }
}

- (unint64_t)_maskedCornersForBackgroundOfItemWithSelectionGrouping:(unint64_t)grouping
{
  [(NSCollectionLayoutSection *)self interGroupSpacing];
  v4 = grouping - 2;
  if (v5 > 0.0)
  {
    v4 = -1;
  }

  if (v4 > 2)
  {
    return 15;
  }

  else
  {
    return qword_18A683350[v4];
  }
}

- (void)_configureLayoutAttributesForBackgroundDecoration:(id)decoration
{
  _preferredContainerBackgroundColor = [(_UICollectionViewListLayoutSection *)self _preferredContainerBackgroundColor];
  _listAttributesCreatingIfNecessary = [(UICollectionViewLayoutAttributes *)decoration _listAttributesCreatingIfNecessary];
  [(UIBackgroundConfiguration *)_listAttributesCreatingIfNecessary _setBackgroundColor:_preferredContainerBackgroundColor];

  [(_UICollectionViewListLayoutSection *)self _effectiveSectionHorizontalInsets];
  v8 = v7;
  v10 = v9;
  _isRTL = [(_UICollectionViewListLayoutSection *)self _isRTL];
  if (_isRTL)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (_isRTL)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  container = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment container];
  [container contentSize];
  v15 = v14 + v14;
  _sectionPosition = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _sectionPosition];
  v17 = 0.0 - v15 * 0.5;
  if ((_sectionPosition & 2) == 0)
  {
    v17 = 0.0;
  }

  if ((_sectionPosition & 8) != 0)
  {
    v18 = v15 * 0.5 + v17;
  }

  else
  {
    v18 = v17;
  }

  [decoration bounds];
  [decoration setBounds:?];
  [decoration center];
  [decoration setCenter:{v13 * 0.5 - v12 * 0.5 + v19, v20 + v18}];
}

- (id)_descriptionProperties
{
  v25.receiver = self;
  v25.super_class = _UICollectionViewListLayoutSection;
  _descriptionProperties = [(NSCollectionLayoutSection *)&v25 _descriptionProperties];
  if (![(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _isAPIVersion])
  {
    [_descriptionProperties addObject:@"SPI List Section Configuration"];
  }

  v4 = MEMORY[0x1E696AEC0];
  appearanceStyle = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle];
  if (appearanceStyle >= 5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown value: %ld)", appearanceStyle];
  }

  else
  {
    v6 = off_1E7128898[appearanceStyle];
  }

  v7 = [v4 stringWithFormat:@"appearance = %@", v6];
  [_descriptionProperties addObject:v7];

  [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration sectionHeaderHeight];
  if (v8 == -1000.0)
  {
    if (![(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader])
    {
      goto LABEL_11;
    }

    v9 = @"headerMode = .firstItemInSection";
  }

  else
  {
    v9 = @"headerMode = .supplementary";
  }

  [_descriptionProperties addObject:v9];
LABEL_11:
  [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration sectionFooterHeight];
  if (v10 != -1000.0)
  {
    [_descriptionProperties addObject:@"footerMode = .supplementary"];
  }

  [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration headerTopPadding];
  if (v11 != 1.79769313e308)
  {
    v12 = MEMORY[0x1E696AEC0];
    [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration headerTopPadding];
    v14 = [v12 stringWithFormat:@"headerTopPadding = %g", v13];
    [_descriptionProperties addObject:v14];
  }

  if ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration separatorStyle]!= 1)
  {
    [_descriptionProperties addObject:@"showsSeparators = NO"];
  }

  _itemSeparatorHandler = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _itemSeparatorHandler];

  if (_itemSeparatorHandler)
  {
    [_descriptionProperties addObject:@"Has Item Separator Handler"];
  }

  _backgroundColor = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _backgroundColor];

  if (_backgroundColor)
  {
    v17 = MEMORY[0x1E696AEC0];
    _backgroundColor2 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _backgroundColor];
    v19 = [v17 stringWithFormat:@"backgroundColor = %@", _backgroundColor2];
    [_descriptionProperties addObject:v19];
  }

  leadingSwipeActionsConfigurationProvider = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration leadingSwipeActionsConfigurationProvider];

  trailingSwipeActionsConfigurationProvider = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration trailingSwipeActionsConfigurationProvider];

  if (leadingSwipeActionsConfigurationProvider | trailingSwipeActionsConfigurationProvider)
  {
    v22 = @"Has Leading & Trailing Swipe Actions Providers";
    if (!trailingSwipeActionsConfigurationProvider)
    {
      v22 = @"Has Leading Swipe Actions Provider";
    }

    if (leadingSwipeActionsConfigurationProvider)
    {
      v23 = v22;
    }

    else
    {
      v23 = @"Has Trailing Swipe Actions Provider";
    }

    [_descriptionProperties addObject:v23];
  }

  return _descriptionProperties;
}

- (NSDirectionalEdgeInsets)_defaultDirectionalLayoutMargins
{
  top = self->_defaultDirectionalLayoutMargins.top;
  leading = self->_defaultDirectionalLayoutMargins.leading;
  bottom = self->_defaultDirectionalLayoutMargins.bottom;
  trailing = self->_defaultDirectionalLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)_defaultSeparatorInsets
{
  top = self->_defaultSeparatorInsets.top;
  leading = self->_defaultSeparatorInsets.leading;
  bottom = self->_defaultSeparatorInsets.bottom;
  trailing = self->_defaultSeparatorInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end