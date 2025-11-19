@interface _UICollectionViewListLayoutSection
- (BOOL)__isLastItemInSection:(id)a3;
- (BOOL)_adjustsLayoutToDrawTopSeparatorInSection:(int64_t)a3 interactionState:(id)a4;
- (BOOL)_hasHeaderFooterBelowLastItemInSection:(int64_t)a3 interactionState:(id)a4;
- (BOOL)_isRTL;
- (BOOL)_shouldDrawSeparatorAtBottom:(BOOL)a3 ofSection:(int64_t)a4 interactionState:(id)a5;
- (BOOL)_shouldHideBottomSeparatorAtIndexPath:(id)a3 forGrouping:(unint64_t)a4 considerNextCellGrouping:(BOOL)a5 interactionState:(id)a6;
- (BOOL)_shouldHideTopSeparatorAtIndexPath:(id)a3 interactionState:(id)a4;
- (BOOL)_useRoundedSwipeActions;
- (NSDirectionalEdgeInsets)_defaultDirectionalLayoutMargins;
- (NSDirectionalEdgeInsets)_defaultSectionContentInsets;
- (NSDirectionalEdgeInsets)_defaultSectionContentInsetsForSectionMetrics:(_UIListMetricsSectionMetrics *)a3;
- (NSDirectionalEdgeInsets)_defaultSeparatorInsets;
- (NSDirectionalEdgeInsets)_effectiveBoundarySeparatorInsets:(NSDirectionalEdgeInsets)result;
- (NSDirectionalEdgeInsets)_effectiveSectionHorizontalInsets;
- (NSDirectionalEdgeInsets)_effectiveSectionSupplementaryHorizontalInsets;
- (NSDirectionalEdgeInsets)_sectionPreferredBottomSeparatorInsetsForIndexPath:(id)a3;
- (NSDirectionalEdgeInsets)_sectionPreferredTopSeparatorInsetsWithBottomInsets:(NSDirectionalEdgeInsets)a3 hasCustomInsets:(BOOL *)a4;
- (NSDirectionalEdgeInsets)contentInsets;
- (UIEdgeInsets)_defaultLayoutMarginsForHeaderFooterViewWithLayoutAttributes:(id)a3;
- (UIEdgeInsets)_defaultLayoutMarginsInsideSection;
- (_UICollectionLayoutContainer)_layoutContainer;
- (_UICollectionViewListLayoutSection)initWithConfiguration:(id)a3 layoutEnvironment:(id)a4;
- (double)_alignedContentMarginGivenMargin:(double)a3;
- (double)_effectiveCornerRadius;
- (id)_constants;
- (id)_descriptionProperties;
- (id)_generateListSectionDataForLayoutAttributes:(id)a3 interactionState:(id)a4;
- (id)_invalidationContextForCellBackgroundOrBottomSeparatorChangeAtIndexPath:(id)a3 interactionState:(id)a4 separatorOnly:(BOOL)a5;
- (id)_leadingSwipeActionsConfigurationForIndexPath:(id)a3;
- (id)_separatorConfigurationForItemAtIndexPath:(id)a3 withSelectionGrouping:(unint64_t)a4 considerNextCellGrouping:(BOOL)a5 interactionState:(id)a6;
- (id)_trailingSwipeActionsConfigurationForIndexPath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_separatorInsetBehaviorAtBottom:(BOOL)a3 indexPath:(id)a4 interactionState:(id)a5;
- (unint64_t)_extensionBehavior;
- (unint64_t)_maskedCornersForBackgroundOfItemWithSelectionGrouping:(unint64_t)a3;
- (void)_configureLayoutAttributes:(id)a3 forSeparatorAtBottom:(BOOL)a4 preferredConfiguration:(id)a5 interactionState:(id)a6;
- (void)_configureLayoutAttributesForBackgroundDecoration:(id)a3;
- (void)_configureLayoutAttributesForPlainCell:(id)a3;
- (void)_configureLayoutAttributesForPlainSupplementaryView:(id)a3;
- (void)_configureLayoutAttributesForSidebarPlainCell:(id)a3;
- (void)_configureLayoutAttributesForSwipeActionMasking:(id)a3 interactionState:(id)a4;
- (void)_configureLayoutAttributesWithDefaultMasking:(id)a3;
- (void)_configureLayoutAttributesWithInsetGroupedMasking:(id)a3 stylesFirstItemAsHeader:(BOOL)a4;
- (void)_didEndSwiping;
- (void)_enrichLayoutAttributes:(id)a3 interactionState:(id)a4;
- (void)_transformFittingLayoutAttributes:(id)a3 interactionState:(id)a4;
- (void)_transformPreferredLayoutAttributes:(id)a3 interactionState:(id)a4;
- (void)_updateMaxWidthForLayoutAttributes:(id)a3;
- (void)_updateStyleForSwipeActionsConfiguration:(id)a3;
- (void)_willBeginSwiping;
- (void)setContentInsets:(NSDirectionalEdgeInsets)a3;
@end

@implementation _UICollectionViewListLayoutSection

- (_UICollectionLayoutContainer)_layoutContainer
{
  v4 = self->_layoutEnvironment;
  v5 = [(NSCollectionLayoutEnvironment_Private *)v4 container];
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:1050 description:{@"UICollectionView internal inconsistency: invalid environment layout container. Environment: %@", v4}];
  }

  return v5;
}

- (BOOL)_isRTL
{
  v2 = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment traitCollection];
  v3 = [v2 layoutDirection] == 1;

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
    v11 = [(_UICollectionViewListLayoutSection *)self _layoutContainer];
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 8);
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
  v3 = [(_UICollectionViewListLayoutSection *)self _layoutContainer];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 8);
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
    v3 = [(NSCollectionLayoutSection *)self supplementaryContentInsetsReference];
  }

  else
  {
    v3 = [(NSCollectionLayoutSection *)self contentInsetsReference];
  }

  v4 = v3;
  v5 = [(_UICollectionViewListLayoutSection *)self _layoutContainer];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 8);
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
  v3 = [(_UICollectionViewListLayoutSection *)self _isRTL];
  top = p_defaultDirectionalLayoutMargins->top;
  leading = p_defaultDirectionalLayoutMargins->leading;
  bottom = p_defaultDirectionalLayoutMargins->bottom;
  if (v3)
  {
    trailing = p_defaultDirectionalLayoutMargins->trailing;
  }

  else
  {
    trailing = p_defaultDirectionalLayoutMargins->leading;
  }

  if (!v3)
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
    v5 = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment traitCollection];
    v6 = [v5 userInterfaceIdiom];
    if (v6 == 6)
    {
      v4 = 16.0;
    }

    else if (v6 == 3)
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

- (_UICollectionViewListLayoutSection)initWithConfiguration:(id)a3 layoutEnvironment:(id)a4
{
  v8 = a4 != 0;
  v9 = [a3 _collectionView];
  v10 = v9 == 0;

  if (v8 != v10)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:706 description:{@"SPI inconsistency detected. Old and new SPI is being mixed. Please initialize your configuration with -init and then initialize the section with -initWithConfiguration:layoutEnvironment:, passing in the layout environment you receive from the section provider of your compositional layout."}];

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [_UICollectionViewEnvironmentAdapter alloc];
    v14 = [a3 _collectionView];
    v15 = [(_UICollectionViewEnvironmentAdapter *)v13 initWithCollectionView:v14];
    v11 = [(_UICollectionViewEnvironmentAdapter *)v15 createEnvironment];

    goto LABEL_6;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = a4;
LABEL_6:
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:709 description:@"Incompatible layout environment. Make sure to pass the layout environment received from the compositional layout's section provider as is."];
  }

  v16 = v11;
  v17 = [a3 copy];
  v18 = [v17 appearanceStyle];
  v19 = [v16 traitCollection];
  [v17 setAppearanceStyle:v18];

  v20 = [v17 _generateLayoutGroup:v16];
  v73.receiver = self;
  v73.super_class = _UICollectionViewListLayoutSection;
  v21 = [(NSCollectionLayoutSection *)&v73 initWithLayoutGroup:v20];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_layoutEnvironment, v11);
    objc_storeStrong(&v22->_configuration, v17);
    v23 = [v17 _traitCollection];
    v24 = [v17 appearanceStyle];
    if ((v24 - 1) >= 4)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    v50 = [v17 _sectionPosition];
    v49 = [v17 _hasHeaderOrFirstItemStyledAsHeader];
    v26 = [v17 _hasFooter];
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

    v27 = [v17 _sectionSpacingStyle];
    v28 = +[_UIListMetrics sharedMetrics];
    [v28 behaviorsForListWithStyle:v25 traitCollection:v23];
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
      [v31 metricsForSectionWithPosition:v50 hasHeader:v49 hasFooter:v26 listGeometry:&v51 listStyle:v25 spacingStyle:v27 traitCollection:v23];
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
      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIContentInsetsReference _UIContentInsetReferenceForListContentInsetsReference(_UIListContentInsetsReference)"];
      [v42 handleFailureInFunction:v43 file:@"_UICollectionViewListLayoutSection_Internal.h" lineNumber:61 description:{@"UIKit internal inconsistency: unknown content insets reference (%ld)", v40}];

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
        if (![v16 _wantsCollapsedTopSpacing] || (v50 & 2) == 0)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = _UICollectionViewListLayoutSection;
  v4 = [(NSCollectionLayoutSection *)&v11 copyWithZone:a3];
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
  v2 = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment traitCollection];
  v3 = _UITableConstantsForTraitCollection(v2);

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

- (double)_alignedContentMarginGivenMargin:(double)a3
{
  if ((_UISolariumEnabled() & 1) == 0 && ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle]- 3) <= 1 && [(_UICollectionViewListLayoutSection *)self _hasHorizontalInsets])
  {
    return self->_defaultDirectionalLayoutMargins.leading + a3;
  }

  return a3;
}

- (NSDirectionalEdgeInsets)_defaultSectionContentInsetsForSectionMetrics:(_UIListMetricsSectionMetrics *)a3
{
  top = a3->var2.top;
  leading = a3->var2.leading;
  bottom = a3->var2.bottom;
  trailing = a3->var2.trailing;
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

- (UIEdgeInsets)_defaultLayoutMarginsForHeaderFooterViewWithLayoutAttributes:(id)a3
{
  [(_UICollectionViewListLayoutSection *)self _defaultLayoutMarginsInsideSection];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(_UILabelConfiguration *)a3 _content];
  v14 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _headerElementKind];
  v15 = [v13 isEqualToString:v14];

  if (v15)
  {
    v16 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _layoutEnvironment];
    v17 = [v16 traitCollection];
    if ([v17 userInterfaceIdiom] == 6)
    {
      v18 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle];

      if (!v18)
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
        v53 = [(_UICollectionViewListLayoutSection *)self _constants];
        [v53 defaultHeaderFooterLayoutMarginsForTableViewStyle:v20 isHeader:1 isFirstSection:v60];
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
    v25 = [(_UICollectionViewListLayoutSection *)self _isRTL];
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = v22;
    }

    if (v25)
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
    v32 = [(_UICollectionViewListLayoutSection *)self _isRTL];
    if (v32)
    {
      v33 = v31;
    }

    else
    {
      v33 = v29;
    }

    if (!v32)
    {
      v29 = v31;
    }

    v34 = [(_UICollectionViewListLayoutSection *)self _layoutContainer];
    v35 = v34;
    v67 = v12;
    v65 = v10;
    if (v34)
    {
      v36 = *(v34 + 8);
      v37 = v36;
      if (v36)
      {
        v38 = v8;
        v39 = v36[3];
        v40 = v36[5];
LABEL_22:
        v41 = [(_UICollectionViewListLayoutSection *)self _isRTL];
        if (v41)
        {
          v42 = v40;
        }

        else
        {
          v42 = v39;
        }

        if (!v41)
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

    v49 = [(_UILabelConfiguration *)a3 _content];
    v50 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _headerElementKind];
    v51 = [v49 isEqualToString:v50];

    v52 = ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _sectionPosition]>> 1) & 1;
    v53 = [(_UICollectionViewListLayoutSection *)self _constants];
    [v53 defaultHeaderFooterLayoutMarginsForTableViewStyle:v48 isHeader:v51 isFirstSection:v52];
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

- (void)setContentInsets:(NSDirectionalEdgeInsets)a3
{
  *&self->_sectionFlags |= 1u;
  v3.receiver = self;
  v3.super_class = _UICollectionViewListLayoutSection;
  [(NSCollectionLayoutSection *)&v3 setContentInsets:a3.top, a3.leading, a3.bottom, a3.trailing];
}

- (BOOL)_useRoundedSwipeActions
{
  if ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle]== 2)
  {
    return 0;
  }

  return [(_UICollectionViewListLayoutSection *)self _hasHorizontalInsets];
}

- (void)_updateStyleForSwipeActionsConfiguration:(id)a3
{
  if (a3)
  {
    if (![a3 _swipeActionsStyle] && -[_UICollectionViewListLayoutSection _useRoundedSwipeActions](self, "_useRoundedSwipeActions"))
    {
      [a3 _setSwipeActionsStyle:2];
    }

    if ([a3 _swipeActionsStyle] == 2)
    {
      [a3 _roundedStyleCornerRadius];
      if (v5 == 0.0)
      {
        [(_UICollectionViewListLayoutSection *)self _effectiveCornerRadius];

        [a3 _setRoundedStyleCornerRadius:?];
      }
    }
  }
}

- (id)_leadingSwipeActionsConfigurationForIndexPath:(id)a3
{
  v5 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration leadingSwipeActionsConfigurationProvider];

  if (v5)
  {
    v6 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration leadingSwipeActionsConfigurationProvider];
    v7 = (v6)[2](v6, a3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_trailingSwipeActionsConfigurationForIndexPath:(id)a3
{
  v5 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration trailingSwipeActionsConfigurationProvider];

  if (v5)
  {
    v6 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration trailingSwipeActionsConfigurationProvider];
    v7 = (v6)[2](v6, a3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_willBeginSwiping
{
  v3 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration willBeginSwipingHandler];

  if (v3)
  {
    v4 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration willBeginSwipingHandler];
    v4[2]();
  }
}

- (void)_didEndSwiping
{
  v3 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration didEndSwipingHandler];

  if (v3)
  {
    v4 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration didEndSwipingHandler];
    v4[2]();
  }
}

- (BOOL)_adjustsLayoutToDrawTopSeparatorInSection:(int64_t)a3 interactionState:(id)a4
{
  if ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle]|| [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _hasHeaderOrFirstItemStyledAsHeader])
  {
    return 0;
  }

  return [(_UICollectionViewLayoutInteractionStateModule *)a4 _shouldAdjustLayoutToDrawTopSeparatorInSection:a3];
}

- (BOOL)_hasHeaderFooterBelowLastItemInSection:(int64_t)a3 interactionState:(id)a4
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
      [(_UICollectionViewLayoutInteractionStateModule *)a4 enumerateSectionsAfterSectionIndex:a3 enumerator:v11];
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

- (BOOL)_shouldDrawSeparatorAtBottom:(BOOL)a3 ofSection:(int64_t)a4 interactionState:(id)a5
{
  v9 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle];
  if ((v9 - 2) < 2)
  {
    goto LABEL_19;
  }

  if (v9 != 4 && v9 != 0)
  {
    goto LABEL_14;
  }

  if (!a3)
  {
    if ([(_UICollectionViewListLayoutSection *)self _adjustsLayoutToDrawTopSeparatorInSection:a4 interactionState:a5]|| [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _hasHeaderOrFirstItemStyledAsHeader]&& [(_UICollectionViewListLayoutSection *)self _headerFooterPinningBehavior]== 1 && (([(_UICollectionViewListLayoutSection *)self contentInsets], v13 == 0.0) || [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader]))
    {
LABEL_14:
      LOBYTE(v12) = 1;
      return v12;
    }

LABEL_19:
    LOBYTE(v12) = 0;
    return v12;
  }

  v11 = [(_UICollectionViewListLayoutSection *)self _hasHeaderFooterBelowLastItemInSection:a4 interactionState:a5];
  if (!v11 || (v12 = [(_UICollectionViewListLayoutSection *)self _headerFooterPinningBehavior], v12 != 1))
  {
    LOBYTE(v12) = [(_UICollectionViewListLayoutSection *)self _headerFooterPinningBehavior]!= 2 && !v11;
  }

  return v12;
}

- (int64_t)_separatorInsetBehaviorAtBottom:(BOOL)a3 indexPath:(id)a4 interactionState:(id)a5
{
  v9 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle];
  v10 = v9;
  if (a3)
  {
    if ((v9 | 4) != 4 || -[_UICollectionViewListLayoutSection _hasHeaderFooterBelowLastItemInSection:interactionState:](self, "_hasHeaderFooterBelowLastItemInSection:interactionState:", [a4 section], a5) && (-[_UICollectionViewListLayoutSection _headerFooterPinningBehavior](self, "_headerFooterPinningBehavior") - 1) >= 2)
    {
      return 2;
    }

    return 0;
  }

  if (-[_UICollectionViewListLayoutSection _adjustsLayoutToDrawTopSeparatorInSection:interactionState:](self, "_adjustsLayoutToDrawTopSeparatorInSection:interactionState:", [a4 section], a5))
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

- (BOOL)__isLastItemInSection:(id)a3
{
  v3 = a3;
  v5 = [a3 item];
  v6 = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment _dataSourceSnapshot];
  LOBYTE(v3) = v5 == [v6 numberOfItemsInSection:{objc_msgSend(v3, "section")}] - 1;

  return v3;
}

- (NSDirectionalEdgeInsets)_sectionPreferredBottomSeparatorInsetsForIndexPath:(id)a3
{
  v5 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _separatorConfigurationNoCopy];
  [v5 bottomSeparatorInsets];
  leading = v6;
  trailing = v8;

  v10 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration separatorInsetProvider];
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10, a3);
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

- (NSDirectionalEdgeInsets)_sectionPreferredTopSeparatorInsetsWithBottomInsets:(NSDirectionalEdgeInsets)a3 hasCustomInsets:(BOOL *)a4
{
  trailing = a3.trailing;
  leading = a3.leading;
  if (!a4)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:1338 description:{@"Invalid parameter not satisfying: %@", @"hasCustomInsets != nil"}];
  }

  v8 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _separatorConfigurationNoCopy:a3.top];
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
  *a4 = v16 | v20;
  v21 = 0.0;
  v22 = 0.0;
  result.trailing = v19;
  result.bottom = v22;
  result.leading = v15;
  result.top = v21;
  return result;
}

- (id)_invalidationContextForCellBackgroundOrBottomSeparatorChangeAtIndexPath:(id)a3 interactionState:(id)a4 separatorOnly:(BOOL)a5
{
  if (a4)
  {
    v7 = *(a4 + 2);
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_alloc_init(v7);
  [v8 _setIntent:10];
  if (a5 || [a3 item] < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(a3 inSection:{"item") - 1, objc_msgSend(a3, "section")}];
  }

  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:{a3, v9, 0}];
  [v8 invalidateDecorationElementsOfKind:@"UICollectionViewListLayoutElementKindBottomSeparator" atIndexPaths:v10];
  [v8 invalidateItemsAtIndexPaths:v10];

  return v8;
}

- (void)_transformFittingLayoutAttributes:(id)a3 interactionState:(id)a4
{
  if (a3 && (*(a3 + 288) & 1) != 0)
  {
    v6 = [(_UICollectionViewListLayoutSection *)self _generateListSectionDataForLayoutAttributes:a3 interactionState:a4];
    v7 = [(UICollectionViewLayoutAttributes *)a3 _listAttributesCreatingIfNecessary];
    [(UIContentUnavailableImageProperties *)v7 _setTintColor:v6];
  }

  [(_UICollectionViewListLayoutSection *)self _updateMaxWidthForLayoutAttributes:a3, a4];
}

- (void)_transformPreferredLayoutAttributes:(id)a3 interactionState:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3 || (*(a3 + 288) & 1) == 0)
  {
    return;
  }

  v8 = [(UICollectionViewLayoutAttributes *)a3 _existingListAttributes];
  v9 = v8;
  if (v8 && (v10 = *(v8 + 32)) != 0)
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
        v24 = a3;
        _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "No list section data present in the preferred attributes from the cell. Attrs: %@", buf, 0xCu);
      }
    }

    else
    {
      v21 = *(__UILogGetCategoryCachedImpl("Assert", &_transformPreferredLayoutAttributes_interactionState____s_category) + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = a3;
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "No list section data present in the preferred attributes from the cell. Attrs: %@", buf, 0xCu);
      }
    }

    v11 = [(_UICollectionViewListLayoutSection *)self _generateListSectionDataForLayoutAttributes:a3 interactionState:a4];
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
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:1405 description:{@"Separator configuration from preferred attributes of cell has unresolved top separator visibility. %@", a3}];
  }

  if (![v13 bottomSeparatorVisibility])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:1406 description:{@"Separator configuration from preferred attributes of cell has unresolved bottom separator visibility. %@", a3}];
  }

  v14 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _itemSeparatorHandler];
  if (v14)
  {
    v15 = [a3 indexPath];
    v16 = [v13 copy];
    v17 = (v14)[2](v14, v15, v16);
    v18 = [v17 copy];

    [v18 _replaceAutomaticValuesWithValuesFromConfiguration:v13];
    [(UIViewAnimationContext *)v11 setViewAnimations:v18];
  }

  [(UICollectionViewLayoutAttributes *)a3 _setPreferredSizingData:v11];
  [(UIContentUnavailableImageProperties *)v9 _setTintColor:?];
}

- (void)_enrichLayoutAttributes:(id)a3 interactionState:(id)a4
{
  v59 = [(UICollectionViewLayoutAttributes *)a3 _listAttributesCreatingIfNecessary];
  v7 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle];
  if (v59)
  {
    v59[2] = v7;
    v8 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader];
    *(v59 + 8) = v59[1] & 0xFE | v8;
  }

  else
  {
    v8 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader];
  }

  v9 = [(UICollectionViewLayoutAttributes *)a3 _preferredSizingData];
  v10 = v9;
  if (v9)
  {
    if (!a3)
    {
      goto LABEL_54;
    }

    *(a3 + 38) = *(v9 + 16);
  }

  else if (!a3)
  {
    goto LABEL_54;
  }

  v11 = *(a3 + 72);
  if (v11)
  {
    if (v7 != 2 && *(a3 + 38) != 0)
    {
      v21 = [(_UICollectionViewListLayoutSection *)self _maskedCornersForBackgroundOfItemWithSelectionGrouping:?];
      if (v59)
      {
        v59[3] = v21;
        *(v59 + 8) |= 2u;
      }
    }

    [a3 setZIndex:10];
    if (v7 <= 1)
    {
      if (!v7)
      {
        [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesForPlainCell:a3];
        goto LABEL_54;
      }

      if (v7 != 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v7 == 2)
      {
        [(_UICollectionViewListLayoutSection *)self _defaultLayoutMarginsInsideSection];
        *(a3 + 72) |= 0x200u;
        *(a3 + 40) = v47;
        *(a3 + 41) = v48;
        *(a3 + 42) = v49;
        *(a3 + 43) = v50;
        [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesWithInsetGroupedMasking:a3 stylesFirstItemAsHeader:v8];
        goto LABEL_54;
      }

      if (v7 != 3)
      {
        if (v7 == 4)
        {
          [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesForSidebarPlainCell:a3];
        }

        goto LABEL_54;
      }
    }

    [(_UICollectionViewListLayoutSection *)self _defaultLayoutMarginsInsideSection];
    *(a3 + 72) |= 0x200u;
    *(a3 + 40) = v29;
    *(a3 + 41) = v30;
    *(a3 + 42) = v31;
    *(a3 + 43) = v32;
    [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesWithDefaultMasking:a3];
    goto LABEL_54;
  }

  if ((v11 & 2) == 0)
  {
    if (dyld_program_sdk_at_least())
    {
      [(_UICollectionViewListLayoutSection *)self _defaultLayoutMarginsForHeaderFooterViewWithLayoutAttributes:a3];
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
        v41 = [(_UICollectionViewListLayoutSection *)self _isRTL];
        if (v41)
        {
          v42 = v40;
        }

        else
        {
          v42 = v38;
        }

        if (v41)
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

    *(a3 + 72) |= 0x200u;
    *(a3 + 40) = v13;
    *(a3 + 41) = v15;
    *(a3 + 42) = v17;
    *(a3 + 43) = v19;
    if (!v7)
    {
      [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesForPlainSupplementaryView:a3];
    }

    goto LABEL_54;
  }

  v22 = [(_UILabelConfiguration *)a3 _content];
  v23 = [v22 isEqualToString:@"UICollectionViewListLayoutElementKindBottomSeparator"];

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
    v26 = self;
    v27 = a3;
    v28 = 1;
LABEL_43:
    [(_UICollectionViewListLayoutSection *)v26 _configureLayoutAttributes:v27 forSeparatorAtBottom:v28 preferredConfiguration:v25 interactionState:a4];

    goto LABEL_54;
  }

  v44 = [(_UILabelConfiguration *)a3 _content];
  v45 = [v44 isEqualToString:@"UICollectionViewListLayoutElementKindTopSeparator"];

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
    v26 = self;
    v27 = a3;
    v28 = 0;
    goto LABEL_43;
  }

  v51 = [(_UILabelConfiguration *)a3 _content];
  v52 = [v51 isEqualToString:0x1EFB7AFF0];

  if (v52)
  {
    [a3 setHidden:1];
    if (v7 <= 4)
    {
      if (v7 == 2)
      {
        [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesWithInsetGroupedMasking:a3 stylesFirstItemAsHeader:v8];
      }

      else
      {
        [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesForSwipeActionMasking:a3 interactionState:a4];
      }
    }

    [(_UICollectionViewListLayoutSection *)self _defaultLayoutMarginsInsideSection];
    *(a3 + 72) |= 0x200u;
    *(a3 + 40) = v55;
    *(a3 + 41) = v56;
    *(a3 + 42) = v57;
    *(a3 + 43) = v58;
  }

  else
  {
    v53 = [(_UILabelConfiguration *)a3 _content];
    v54 = [v53 isEqualToString:@"_UICollectionViewListLayoutSectionBackgroundColorDecorationElementKind"];

    if (v54)
    {
      [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesForBackgroundDecoration:a3];
    }
  }

LABEL_54:
}

- (id)_generateListSectionDataForLayoutAttributes:(id)a3 interactionState:(id)a4
{
  v7 = [a3 indexPath];
  v8 = objc_alloc_init(_UICollectionLayoutListSectionData);
  v9 = [(_UICollectionViewLayoutInteractionStateModule *)a4 selectionGroupingForItemAtIndexPath:v7];
  v10 = v9;
  if (v8)
  {
    v8->_selectionGrouping = v9;
  }

  v11 = [a3 indexPath];
  v12 = [(_UICollectionViewListLayoutSection *)self __isLastItemInSection:v11];

  v13 = [(_UICollectionViewListLayoutSection *)self _separatorConfigurationForItemAtIndexPath:v7 withSelectionGrouping:v10 considerNextCellGrouping:!v12 interactionState:a4];
  [(UIViewAnimationContext *)v8 setViewAnimations:v13];

  return v8;
}

- (void)_updateMaxWidthForLayoutAttributes:(id)a3
{
  if (!a3 || (*(a3 + 288) & 3) != 0 || [(NSCollectionLayoutSection *)self supplementariesFollowContentInsets])
  {
    [(_UICollectionViewListLayoutSection *)self _effectiveSectionHorizontalInsets];
  }

  else
  {
    [(_UICollectionViewListLayoutSection *)self _effectiveSectionSupplementaryHorizontalInsets];
  }

  v7 = v5;
  v8 = v6;
  v9 = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment container];
  [v9 contentSize];
  v11 = v10;

  v12 = [(UICollectionViewLayoutAttributes *)a3 _listAttributesCreatingIfNecessary];
  if (v12)
  {
    v12[8] = fmax(v11 - v7 - v8, 0.0);
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

- (id)_separatorConfigurationForItemAtIndexPath:(id)a3 withSelectionGrouping:(unint64_t)a4 considerNextCellGrouping:(BOOL)a5 interactionState:(id)a6
{
  v7 = a5;
  v53 = *MEMORY[0x1E69E9840];
  v11 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _separatorConfiguration];
  v12 = [(_UICollectionViewLayoutInteractionStateModule *)a6 itemAtIndexPathIsBeingReordered:a3];
  [(_UICollectionViewListLayoutSection *)self _sectionPreferredBottomSeparatorInsetsForIndexPath:a3];
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
    [v11 setBottomSeparatorInsets:{v17, v18, v19, v20}];
    [v11 setTopSeparatorInsets:{v22, v24, v26, v28}];
    [v11 setBottomSeparatorVisibility:2];
    [v11 setTopSeparatorVisibility:2];
    goto LABEL_53;
  }

  if (v14 == -1000.0 && v16 == -1000.0)
  {
    [v11 setBottomSeparatorVisibility:2];
  }

  if (![v11 bottomSeparatorVisibility])
  {
    if ([(_UICollectionViewListLayoutSection *)self _shouldHideBottomSeparatorAtIndexPath:a3 forGrouping:a4 considerNextCellGrouping:v7 interactionState:a6])
    {
      v29 = 2;
    }

    else
    {
      v29 = 1;
    }

    [v11 setBottomSeparatorVisibility:v29];
  }

  if (![v11 topSeparatorVisibility])
  {
    v30 = [v11 bottomSeparatorVisibility];
    if (a4 && v30 == 2)
    {
      v31 = 2;
    }

    else if ([(_UICollectionViewListLayoutSection *)self _shouldHideTopSeparatorAtIndexPath:a3 interactionState:a6])
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    [v11 setTopSeparatorVisibility:v31];
  }

  v32 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader];
  v33 = v32 && [a3 item] == 0;
  [(NSCollectionLayoutSection *)self interGroupSpacing];
  v35 = v34 > 0.0 && [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle]== 1;
  if ([(_UICollectionViewListLayoutSection *)self __isLastItemInSection:a3])
  {
    v36 = [(_UICollectionViewListLayoutSection *)self _separatorInsetBehaviorAtBottom:1 indexPath:a3 interactionState:a6];
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
    [v11 setBottomSeparatorInsets:{v17, v18, v19, v20}];
    goto LABEL_35;
  }

  if (v36 == 2)
  {
    [v11 _insetsForBoundarySeparators];
    [(_UICollectionViewListLayoutSection *)self _effectiveBoundarySeparatorInsets:?];
    [v11 setBottomSeparatorInsets:?];
    [v11 _setIgnoreBottomSeparatorInsetsFromCell:1];
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
  v37 = [a3 item];
  if (v32)
  {
    if (v37 == 1)
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
    [v11 bottomSeparatorInsets];
    [(_UICollectionViewListLayoutSection *)self _sectionPreferredTopSeparatorInsetsWithBottomInsets:v52 hasCustomInsets:?];
    [v11 setTopSeparatorInsets:?];
    v46 = v52[0];
    v47 = v11;
LABEL_52:
    [v47 _setIgnoreTopSeparatorInsetsFromCell:v46];
    goto LABEL_53;
  }

  if (v37)
  {
    goto LABEL_44;
  }

LABEL_37:
  v38 = [(_UICollectionViewListLayoutSection *)self _separatorInsetBehaviorAtBottom:0 indexPath:a3 interactionState:a6];
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
    v45 = self;
    v44 = 1.79769313e308;
    goto LABEL_51;
  }

  if (v38 == 2)
  {
LABEL_45:
    [v11 _insetsForBoundarySeparators];
    v45 = self;
LABEL_51:
    [(_UICollectionViewListLayoutSection *)v45 _effectiveBoundarySeparatorInsets:v41, v42, v43, v44];
    [v11 setTopSeparatorInsets:?];
    v47 = v11;
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

  return v11;
}

- (BOOL)_shouldHideTopSeparatorAtIndexPath:(id)a3 interactionState:(id)a4
{
  v7 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _separatorConfigurationNoCopy];
  v8 = [v7 topSeparatorVisibility];

  if (v8 == 1)
  {
    return 0;
  }

  if (v8 == 2)
  {
    return 1;
  }

  v9 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle];
  v10 = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 6 || [(_UICollectionViewLayoutInteractionStateModule *)a4 selectionGroupingForItemAtIndexPath:a3])
  {
    return 1;
  }

  v13 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader];
  v14 = [a3 item];
  v15 = v14;
  if (v13)
  {
    if (![a3 item] || v15 == 1)
    {
      if (v15 != 1)
      {
        return 1;
      }

      return !-[_UICollectionViewListLayoutSection _shouldDrawSeparatorAtBottom:ofSection:interactionState:](self, "_shouldDrawSeparatorAtBottom:ofSection:interactionState:", 0, [a3 section], a4);
    }
  }

  else if (!v14)
  {
    return !-[_UICollectionViewListLayoutSection _shouldDrawSeparatorAtBottom:ofSection:interactionState:](self, "_shouldDrawSeparatorAtBottom:ofSection:interactionState:", 0, [a3 section], a4);
  }

  [(NSCollectionLayoutSection *)self interGroupSpacing];
  return v16 <= 0.0 || v9 != 1;
}

- (BOOL)_shouldHideBottomSeparatorAtIndexPath:(id)a3 forGrouping:(unint64_t)a4 considerNextCellGrouping:(BOOL)a5 interactionState:(id)a6
{
  v7 = a5;
  v12 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _separatorConfigurationNoCopy];
  v13 = [v12 _hidingBehavior];
  switch(v13)
  {
    case 2:
      goto LABEL_35;
    case 1:
      goto LABEL_10;
    case 0:
      v14 = [v12 bottomSeparatorVisibility];
      if (v14 != 1)
      {
        if (v14 != 2)
        {
          v15 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle];
          if ([a3 item])
          {
            v16 = [(_UICollectionViewListLayoutSection *)self __isLastItemInSection:a3];
            if (v15 != 3)
            {
              if (!v16)
              {
                goto LABEL_33;
              }

LABEL_32:
              v17 = 1;
              if (!-[_UICollectionViewListLayoutSection _shouldDrawSeparatorAtBottom:ofSection:interactionState:](self, "_shouldDrawSeparatorAtBottom:ofSection:interactionState:", 1, [a3 section], a6))
              {
                goto LABEL_36;
              }

LABEL_33:
              if (v15 == 2)
              {
                [(NSCollectionLayoutSection *)self interGroupSpacing];
                if (v27 > 0.0)
                {
                  goto LABEL_35;
                }
              }

              v29 = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment traitCollection];
              v18 = 0;
              v17 = 1;
              if ([v29 userInterfaceIdiom] == 6 && !v15)
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
            v25 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader];
            v26 = [(_UICollectionViewListLayoutSection *)self __isLastItemInSection:a3];
            if (v15 == 3)
            {
              v17 = 1;
              if (!v25 || !v26)
              {
                goto LABEL_36;
              }

              goto LABEL_40;
            }

            if (!v25)
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

  v17 = v13 == 3;
  v18 = v13 == 4;
  if ((v13 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:1806 description:@"Hiding behavior resolved to unsupported type"];
    goto LABEL_42;
  }

LABEL_12:
  [(NSCollectionLayoutSection *)self interGroupSpacing];
  v20 = v19 > 0.0 || v18;
  if (v7 && v19 <= 0.0 && ([MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(a3 inSection:{"item") + 1, objc_msgSend(a3, "section")}], v21 = objc_claimAutoreleasedReturnValue(), v22 = -[_UICollectionViewLayoutInteractionStateModule selectionGroupingForItemAtIndexPath:](a6, v21) - 1, v21, v22 <= 1))
  {
    v17 |= v20;
  }

  else
  {
    v23 = v17 | v20;
    if (a4 == 1)
    {
      v24 = v17;
    }

    else
    {
      v24 = 0;
    }

    if (a4 != 4)
    {
      v23 = v24;
    }

    if (a4 - 2 >= 2)
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

- (void)_configureLayoutAttributes:(id)a3 forSeparatorAtBottom:(BOOL)a4 preferredConfiguration:(id)a5 interactionState:(id)a6
{
  v8 = a4;
  v51 = [a3 indexPath];
  if (a3)
  {
    v12 = *(a3 + 38);
  }

  else
  {
    v12 = 0;
  }

  v13 = a5;
  if (!v13)
  {
    v13 = [(_UICollectionViewListLayoutSection *)self _separatorConfigurationForItemAtIndexPath:v51 withSelectionGrouping:0 considerNextCellGrouping:0 interactionState:a6];
  }

  if (![v13 topSeparatorVisibility])
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    v48 = [a3 indexPath];
    [v47 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:1859 description:{@"topSeparatorVisibility for %@ is unresolved in the list section data, which is unsupported. This is a UIKit bug.", v48}];
  }

  if (![v13 bottomSeparatorVisibility])
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    v50 = [a3 indexPath];
    [v49 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListLayoutSection.m" lineNumber:1860 description:{@"bottomSeparatorVisibility for %@ is unresolved in the list section data, which is unsupported. This is a UIKit bug.", v50}];
  }

  v14 = [(_UICollectionViewLayoutInteractionStateModule *)a6 itemAtIndexPathIsSelected:v51];
  v15 = [(UICollectionViewLayoutAttributes *)a3 _listAttributesCreatingIfNecessary];
  v16 = [v13 color];
  [(_UICollectionLayoutItemSolver *)v15 setSolveResult:v16];

  v17 = [v13 visualEffect];
  [(_UICollectionLayoutListAttributes *)v15 setSeparatorVisualEffect:v17];

  if (v8)
  {
    [a3 setHidden:{objc_msgSend(v13, "bottomSeparatorVisibility") == 2}];
    [v13 bottomSeparatorInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [a3 frame];
    [a3 setFrame:{v21 + v26, v19 + v27, v28 - (v21 + v25), v29 - (v19 + v23)}];
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
    v44 = [v13 multipleSelectionColor];
    [(_UICollectionLayoutItemSolver *)v15 setSolveResult:v44];

    goto LABEL_20;
  }

  [a3 setHidden:{objc_msgSend(v13, "topSeparatorVisibility") == 2}];
  [v13 topSeparatorInsets];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  [a3 frame];
  [a3 setFrame:{v34 + v39, v32 + v40, v41 - (v34 + v38), v42 - (v32 + v36)}];
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
  v45 = [a3 isHidden];
  v46 = 1.0;
  if (v45)
  {
    v46 = 0.0;
  }

  [a3 setAlpha:v46];
}

- (void)_configureLayoutAttributesForSidebarPlainCell:(id)a3
{
  [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesForPlainCell:?];
  if (([(_UICollectionViewListLayoutSection *)self _headerFooterPinningBehavior]- 1) >= 2)
  {
    if ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader])
    {
      v5 = [a3 indexPath];
      v6 = [v5 item];

      if (!v6)
      {
        [a3 center];
        v8 = v7;
        v10 = v9;
        [(_UICollectionViewListLayoutSection *)self contentInsets];
        if (v11 > 8.0)
        {
          v11 = 8.0;
        }

        [a3 setCenter:{v8, v10 - v11}];
      }
    }
  }
}

- (void)_configureLayoutAttributesForPlainCell:(id)a3
{
  [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesWithDefaultMasking:?];
  [(_UICollectionViewListLayoutSection *)self _defaultLayoutMarginsInsideSection];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration stylesFirstItemAsHeader])
  {
    v13 = [a3 indexPath];
    v14 = [v13 item];

    if (!v14)
    {
      if (![(NSCollectionLayoutSection *)self supplementariesFollowContentInsets])
      {
        [(_UICollectionViewListLayoutSection *)self _effectiveSectionHorizontalInsets];
        v16 = v15;
        v18 = v17;
        v19 = [(_UICollectionViewListLayoutSection *)self _isRTL];
        if (v19)
        {
          v20 = v18;
        }

        else
        {
          v20 = v16;
        }

        if (v19)
        {
          v21 = v16;
        }

        else
        {
          v21 = v18;
        }

        v22 = v21 * 0.5 - v20 * 0.5;
        [a3 bounds];
        [a3 setBounds:?];
        [a3 center];
        [a3 setCenter:v22 + v23];
      }

      [(_UICollectionViewListLayoutSection *)self _defaultLayoutMarginsForHeaderFooterViewWithLayoutAttributes:a3];
      v6 = v24;
      v8 = v25;
      v10 = v26;
      v12 = v27;
    }
  }

  if (a3)
  {
    *(a3 + 72) |= 0x200u;
    *(a3 + 40) = v6;
    *(a3 + 41) = v8;
    *(a3 + 42) = v10;
    *(a3 + 43) = v12;
  }
}

- (void)_configureLayoutAttributesForPlainSupplementaryView:(id)a3
{
  v5 = [(_UILabelConfiguration *)a3 _content];
  v6 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _headerElementKind];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    if ([(_UICollectionViewListLayoutSection *)self _headerFooterPinningBehavior]== 2)
    {
      v8 = [a3 indexPath];
      v9 = [v8 section];

      if (a3)
      {
        if (!v9)
        {
          *(a3 + 72) |= 0x8000u;
        }
      }
    }
  }
}

- (void)_configureLayoutAttributesWithDefaultMasking:(id)a3
{
  if (a3)
  {
    *(a3 + 72) &= ~0x10u;
    [(UICollectionViewLayoutAttributes *)a3 _setMaskedCorners:?];
    *(a3 + 39) = 0;
  }

  else
  {

    [(UICollectionViewLayoutAttributes *)0 _setMaskedCorners:?];
  }
}

- (void)_configureLayoutAttributesWithInsetGroupedMasking:(id)a3 stylesFirstItemAsHeader:(BOOL)a4
{
  v4 = a4;
  v17 = [a3 indexPath];
  v7 = [v17 item];
  [(NSCollectionLayoutSection *)self interGroupSpacing];
  if (v8 <= 0.0)
  {
    if (v4)
    {
      v10 = 15;
      if (v7)
      {
        v10 = 0;
      }

      if (v7 == 1)
      {
        v9 = 3;
      }

      else
      {
        v9 = v10;
      }

      if (v7)
      {
        v11 = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment _dataSourceSnapshot];
        v12 = [v11 numberOfItemsInSection:{objc_msgSend(v17, "section")}] - 1;

        if (v7 == v12)
        {
          v9 |= 0xCuLL;
        }
      }
    }

    else
    {
      if (v7)
      {
        v13 = 0;
      }

      else
      {
        v13 = 3;
      }

      v14 = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment _dataSourceSnapshot];
      v15 = [v14 numberOfItemsInSection:{objc_msgSend(v17, "section")}] - 1;

      if (v7 == v15)
      {
        v9 = v13 | 0xC;
      }

      else
      {
        v9 = v13;
      }
    }
  }

  else if (v4 && v7 == 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 15;
  }

  if (a3)
  {
    *(a3 + 72) |= 0x10u;
  }

  [(UICollectionViewLayoutAttributes *)a3 _setMaskedCorners:v9];
  [(_UICollectionViewListLayoutSection *)self _effectiveCornerRadius];
  if (a3)
  {
    *(a3 + 39) = v16;
  }
}

- (void)_configureLayoutAttributesForSwipeActionMasking:(id)a3 interactionState:(id)a4
{
  v7 = [a3 indexPath];
  v8 = [(_UICollectionViewLayoutInteractionStateModule *)a4 swipeActionsStyleForSwipedItemAtIndexPath:v7];

  if (v8 == 2)
  {
    if (a3)
    {
      *(a3 + 72) |= 0x10u;
    }

    [(UICollectionViewLayoutAttributes *)a3 _setMaskedCorners:?];
    [(_UICollectionViewListLayoutSection *)self _effectiveCornerRadius];
    if (a3)
    {
      *(a3 + 39) = v9;
    }
  }

  else
  {

    [(_UICollectionViewListLayoutSection *)self _configureLayoutAttributesWithDefaultMasking:a3];
  }
}

- (unint64_t)_maskedCornersForBackgroundOfItemWithSelectionGrouping:(unint64_t)a3
{
  [(NSCollectionLayoutSection *)self interGroupSpacing];
  v4 = a3 - 2;
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

- (void)_configureLayoutAttributesForBackgroundDecoration:(id)a3
{
  v5 = [(_UICollectionViewListLayoutSection *)self _preferredContainerBackgroundColor];
  v6 = [(UICollectionViewLayoutAttributes *)a3 _listAttributesCreatingIfNecessary];
  [(UIBackgroundConfiguration *)v6 _setBackgroundColor:v5];

  [(_UICollectionViewListLayoutSection *)self _effectiveSectionHorizontalInsets];
  v8 = v7;
  v10 = v9;
  v11 = [(_UICollectionViewListLayoutSection *)self _isRTL];
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  v21 = [(NSCollectionLayoutEnvironment_Private *)self->_layoutEnvironment container];
  [v21 contentSize];
  v15 = v14 + v14;
  v16 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _sectionPosition];
  v17 = 0.0 - v15 * 0.5;
  if ((v16 & 2) == 0)
  {
    v17 = 0.0;
  }

  if ((v16 & 8) != 0)
  {
    v18 = v15 * 0.5 + v17;
  }

  else
  {
    v18 = v17;
  }

  [a3 bounds];
  [a3 setBounds:?];
  [a3 center];
  [a3 setCenter:{v13 * 0.5 - v12 * 0.5 + v19, v20 + v18}];
}

- (id)_descriptionProperties
{
  v25.receiver = self;
  v25.super_class = _UICollectionViewListLayoutSection;
  v3 = [(NSCollectionLayoutSection *)&v25 _descriptionProperties];
  if (![(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _isAPIVersion])
  {
    [v3 addObject:@"SPI List Section Configuration"];
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration appearanceStyle];
  if (v5 >= 5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown value: %ld)", v5];
  }

  else
  {
    v6 = off_1E7128898[v5];
  }

  v7 = [v4 stringWithFormat:@"appearance = %@", v6];
  [v3 addObject:v7];

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

  [v3 addObject:v9];
LABEL_11:
  [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration sectionFooterHeight];
  if (v10 != -1000.0)
  {
    [v3 addObject:@"footerMode = .supplementary"];
  }

  [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration headerTopPadding];
  if (v11 != 1.79769313e308)
  {
    v12 = MEMORY[0x1E696AEC0];
    [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration headerTopPadding];
    v14 = [v12 stringWithFormat:@"headerTopPadding = %g", v13];
    [v3 addObject:v14];
  }

  if ([(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration separatorStyle]!= 1)
  {
    [v3 addObject:@"showsSeparators = NO"];
  }

  v15 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _itemSeparatorHandler];

  if (v15)
  {
    [v3 addObject:@"Has Item Separator Handler"];
  }

  v16 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _backgroundColor];

  if (v16)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration _backgroundColor];
    v19 = [v17 stringWithFormat:@"backgroundColor = %@", v18];
    [v3 addObject:v19];
  }

  v20 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration leadingSwipeActionsConfigurationProvider];

  v21 = [(_UICollectionViewListLayoutSectionConfiguration *)self->_configuration trailingSwipeActionsConfigurationProvider];

  if (v20 | v21)
  {
    v22 = @"Has Leading & Trailing Swipe Actions Providers";
    if (!v21)
    {
      v22 = @"Has Leading Swipe Actions Provider";
    }

    if (v20)
    {
      v23 = v22;
    }

    else
    {
      v23 = @"Has Trailing Swipe Actions Provider";
    }

    [v3 addObject:v23];
  }

  return v3;
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