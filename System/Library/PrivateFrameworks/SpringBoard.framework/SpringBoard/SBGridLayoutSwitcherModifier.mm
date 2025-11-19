@interface SBGridLayoutSwitcherModifier
- (BOOL)_isIndexVisible:(unint64_t)a3;
- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)a3;
- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4;
- (CGRect)_frameForIndex:(unint64_t)a3 ignoringScrollOffset:(BOOL)a4;
- (CGRect)_frameWithScaleAppliedForIndex:(unint64_t)a3 ignoringScrollOffset:(BOOL)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGSize)_contentSize;
- (CGSize)_fittedContentSize;
- (CGSize)_scaledCardSize;
- (SBGridLayoutSwitcherModifier)initWithAlignment:(unint64_t)a3 layoutDirection:(unint64_t)a4;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (_NSRange)visibleAppLayoutRangeForContentOffset:(CGPoint)a3;
- (double)_cardHeaderHeight;
- (double)_cornerRadius;
- (double)_horizontalSpacing;
- (double)_verticalSpacing;
- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)a3;
- (double)minimumTranslationToKillIndex:(unint64_t)a3;
- (double)scale;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToCacheSnapshots;
- (id)handleScrollEvent:(id)a3;
- (id)handleSwitcherSettingsChangedEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)scrollViewAttributes;
- (id)visibleAppLayouts;
- (unint64_t)_columnForIndex:(unint64_t)a3;
- (unint64_t)_firstTrailingIndexForContentOffset:(CGPoint)a3;
- (unint64_t)_indexOfLeadingCard;
- (unint64_t)_numberOfSpaces;
- (unint64_t)_rowForIndex:(unint64_t)a3;
- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)a3;
- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3;
- (void)_applyPrototypeSettings;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBGridLayoutSwitcherModifier

- (SBGridLayoutSwitcherModifier)initWithAlignment:(unint64_t)a3 layoutDirection:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = SBGridLayoutSwitcherModifier;
  result = [(SBSwitcherModifier *)&v7 init];
  if (result)
  {
    result->_alignment = a3;
    result->_layoutDirection = a4;
  }

  return result;
}

- (void)didMoveToParentModifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBGridLayoutSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (a3)
  {
    [(SBGridLayoutSwitcherModifier *)self _applyPrototypeSettings];
  }
}

- (double)scale
{
  v3 = [(SBGridLayoutSwitcherModifier *)self switcherSettings];
  [v3 gridSwitcherPageScale];
  v5 = v4;

  [(SBGridLayoutSwitcherModifier *)self containerViewBounds];
  Width = CGRectGetWidth(v9);
  IsZero = BSFloatIsZero();
  result = 0.0;
  if ((IsZero & 1) == 0)
  {
    return round(v5 * Width) / Width;
  }

  return result;
}

- (_NSRange)visibleAppLayoutRangeForContentOffset:(CGPoint)a3
{
  [(SBGridLayoutSwitcherModifier *)self scrollViewContentOffset:a3.x];
  v4 = [(SBGridLayoutSwitcherModifier *)self _firstTrailingIndexForContentOffset:?];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  v7 = v4;
  if (([(SBGridLayoutSwitcherModifier *)self isRTLEnabled]& 1) == 0)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        if ([(SBGridLayoutSwitcherModifier *)self _isIndexVisible:v7])
        {
          if (v11 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = v7;
          }

          else
          {
            v13 = v11;
          }

          v10 = v7;
        }

        else
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_24;
          }
        }

        v11 = v13;
      }

      while (v7-- > 0);
      goto LABEL_24;
    }

LABEL_2:
    v5 = 0;
    v6 = 0;
    goto LABEL_36;
  }

  v8 = [(SBGridLayoutSwitcherModifier *)self _numberOfSpaces];
  if (v7 >= v8)
  {
    goto LABEL_2;
  }

  v9 = v8;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if ([(SBGridLayoutSwitcherModifier *)self _isIndexVisible:v7])
    {
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v7;
      }

      else
      {
        v12 = v10;
      }

      v11 = v7;
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }

    ++v7;
    v10 = v12;
  }

  while (v9 != v7);
LABEL_24:
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  else
  {
    v15 = v10;
  }

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    v16 = v11 - v10 + 1;
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = v15;
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = v16;
  }

LABEL_36:
  result.length = v6;
  result.location = v5;
  return result;
}

- (id)handleSwitcherSettingsChangedEvent:(id)a3
{
  v4 = a3;
  [(SBGridLayoutSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBGridLayoutSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleSwitcherSettingsChangedEvent:v4];

  return v5;
}

- (id)handleScrollEvent:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  x = self->_previousContentOffset.x;
  if (x != 1.79769313e308 || self->_previousContentOffset.y != 1.79769313e308)
  {
    self->_isScrollingForward = x > v5;
  }

  self->_previousContentOffset.x = v5;
  self->_previousContentOffset.y = v6;
  v11.receiver = self;
  v11.super_class = SBGridLayoutSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v11 handleScrollEvent:v4];

  return v9;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  if ([v4 toEnvironmentMode] == 2 && objc_msgSend(v4, "fromEnvironmentMode") != 2)
  {
    self->_previousContentOffset = SBInvalidPoint;
    self->_isScrollingForward = 1;
  }

  v7.receiver = self;
  v7.super_class = SBGridLayoutSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleTransitionEvent:v4];

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  [(SBGridLayoutSwitcherModifier *)self _frameForIndex:a3 ignoringScrollOffset:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)visibleAppLayouts
{
  [(SBGridLayoutSwitcherModifier *)self scrollViewContentOffset];
  v3 = [(SBGridLayoutSwitcherModifier *)self visibleAppLayoutRangeForContentOffset:?];
  v5 = v4;
  v11.receiver = self;
  v11.super_class = SBGridLayoutSwitcherModifier;
  v6 = [(SBGridLayoutSwitcherModifier *)&v11 visibleAppLayouts];
  v7 = [(SBGridLayoutSwitcherModifier *)self appLayouts];
  v8 = [v7 subarrayWithRange:{v3, v5}];
  v9 = [v6 setByAddingObjectsFromArray:v8];

  return v9;
}

- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)a3
{
  v3 = [(SBGridLayoutSwitcherModifier *)self homeGrabberSettings];
  v4 = [v3 isEnabled];

  return v4;
}

- (BOOL)_isIndexVisible:(unint64_t)a3
{
  [(SBGridLayoutSwitcherModifier *)self _frameWithScaleAppliedForIndex:a3 ignoringScrollOffset:1];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SBGridLayoutSwitcherModifier *)self switcherSettings];
  [v12 switcherCardShadowRadius];
  v14 = v13;

  [(SBGridLayoutSwitcherModifier *)self switcherViewBounds];
  v22 = CGRectInset(v21, v14 * -2.8, v14 * -2.8);
  v15 = v5;
  v16 = v7;
  v17 = v9;
  v18 = v11;

  return CGRectIntersectsRect(v22, *&v15);
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v3 = [(SBGridLayoutSwitcherModifier *)self switcherSettings];
  v4 = [v3 animationSettings];

  v5 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
  [(SBSwitcherAnimationAttributes *)v5 setUpdateMode:1];
  v6 = [v4 layoutSettings];
  [(SBSwitcherAnimationAttributes *)v5 setLayoutSettings:v6];

  v7 = [v4 opacitySettings];
  [(SBSwitcherAnimationAttributes *)v5 setOpacitySettings:v7];

  return v5;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3
{
  [(SBGridLayoutSwitcherModifier *)self frameForIndex:a3];

  return CGRectGetWidth(*&v3);
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  [(SBGridLayoutSwitcherModifier *)self _cornerRadius];
  [(SBGridLayoutSwitcherModifier *)self scaleForIndex:a3];

  SBRectCornerRadiiForRadius();
  result.topRight = v8;
  result.bottomRight = v7;
  result.bottomLeft = v6;
  result.topLeft = v5;
  return result;
}

- (id)appLayoutsToCacheSnapshots
{
  [(SBGridLayoutSwitcherModifier *)self scrollViewContentOffset];
  v3 = [(SBGridLayoutSwitcherModifier *)self visibleAppLayoutRangeForContentOffset:?];
  v5 = v4;
  v6 = [(SBGridLayoutSwitcherModifier *)self switcherSettings];
  v7 = [v6 numberOfSnapshotsToCacheInSwitcher];

  isScrollingForward = self->_isScrollingForward;

  return [(SBSwitcherModifier *)self appLayoutsToCacheSnapshotsWithVisibleRange:v3 numberOfSnapshotsToCache:v5 biasForward:v7, isScrollingForward];
}

- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)a3
{
  result = [(SBGridLayoutSwitcherModifier *)self _indexOfLeadingCard];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return result;
}

- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3
{
  if ([(SBGridLayoutSwitcherModifier *)self _numberOfSpaces]< 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SBGridLayoutSwitcherModifier *)self _indexOfLeadingCard];
}

- (unint64_t)_indexOfLeadingCard
{
  [(SBGridLayoutSwitcherModifier *)self scrollViewContentOffset];
  v3 = [(SBGridLayoutSwitcherModifier *)self visibleAppLayoutRangeForContentOffset:?];
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v3;
  [(SBSwitcherModifier *)self scaledFrameForIndex:v3];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(SBGridLayoutSwitcherModifier *)self switcherViewBounds];
  v16.origin.x = v7;
  v16.origin.y = v9;
  v16.size.width = v11;
  v16.size.height = v13;
  if (!CGRectIntersectsRect(v15, v16) && v5 < [(SBGridLayoutSwitcherModifier *)self _numberOfSpaces]- 1)
  {
    v5 += [(SBGridLayoutSwitcherModifier *)self numberOfRowsInGridSwitcher];
  }

  return v5;
}

- (id)scrollViewAttributes
{
  v3 = objc_alloc_init(SBMutableSwitcherScrollViewAttributes);
  [(SBGridLayoutSwitcherModifier *)self _contentSize];
  [(SBSwitcherScrollViewAttributes *)v3 setContentSize:?];
  [(SBSwitcherScrollViewAttributes *)v3 setDecelerationRate:*MEMORY[0x277D76EC0]];
  [(SBSwitcherScrollViewAttributes *)v3 setScrollViewPagingEnabled:0];
  [(SBSwitcherScrollViewAttributes *)v3 setInterpageSpacingForPaging:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(SBSwitcherScrollViewAttributes *)v3 setPagingOrigin:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(SBSwitcherScrollViewAttributes *)v3 setInterpolatesDuringSwipeToKill:0];
  [(SBGridLayoutSwitcherModifier *)self switcherViewBounds];
  [(SBSwitcherScrollViewAttributes *)v3 setFrame:?];

  return v3;
}

- (double)minimumTranslationToKillIndex:(unint64_t)a3
{
  [(SBGridLayoutSwitcherModifier *)self frameForIndex:?];
  [(SBGridLayoutSwitcherModifier *)self scaleForIndex:a3];
  SBTransformedRectWithScale();

  return CGRectGetMinY(*&v5);
}

- (CGSize)_contentSize
{
  [(SBGridLayoutSwitcherModifier *)self _fittedContentSize];
  v4 = v3;
  v6 = v5;
  [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
  v8 = v4 + v7;
  [(SBGridLayoutSwitcherModifier *)self switcherViewBounds];
  Width = CGRectGetWidth(v14);
  if (v8 < Width)
  {
    v8 = Width;
  }

  [(SBGridLayoutSwitcherModifier *)self switcherViewBounds];
  Height = CGRectGetHeight(v15);
  if (v6 >= Height)
  {
    v11 = v6;
  }

  else
  {
    v11 = Height;
  }

  v12 = v8;
  result.height = v11;
  result.width = v12;
  return result;
}

- (CGSize)_fittedContentSize
{
  [(SBGridLayoutSwitcherModifier *)self _scaledCardSize];
  [(SBGridLayoutSwitcherModifier *)self _numberOfColumns];
  [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
  [(SBGridLayoutSwitcherModifier *)self numberOfRowsInGridSwitcher];
  [(SBGridLayoutSwitcherModifier *)self _verticalSpacing];
  [(SBGridLayoutSwitcherModifier *)self screenScale];

  BSSizeRoundForScale();
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4
{
  v7 = [(SBGridLayoutSwitcherModifier *)self isRTLEnabled];
  [(SBGridLayoutSwitcherModifier *)self _contentSize];
  v9 = v8;
  [(SBGridLayoutSwitcherModifier *)self switcherViewBounds];
  v11 = v10;
  [(SBGridLayoutSwitcherModifier *)self _frameWithScaleAppliedForIndex:a3 ignoringScrollOffset:1];
  v13 = v12;
  [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
  v15 = v14 + v13;
  [(SBGridLayoutSwitcherModifier *)self _frameWithScaleAppliedForIndex:a3 ignoringScrollOffset:0];
  v17 = v16;
  v18 = 0.0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      if (!v7)
      {
        v18 = v15 + v15;
        goto LABEL_15;
      }

      [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
      v19 = v15 + v20;
LABEL_12:
      v18 = -v19;
      goto LABEL_15;
    }

    if (a4 != 3)
    {
      goto LABEL_15;
    }

LABEL_8:
    v18 = v15;
    if (!v7)
    {
      goto LABEL_15;
    }

    [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
    goto LABEL_12;
  }

  if (!a4)
  {
    goto LABEL_8;
  }

  if (a4 == 1)
  {
    if (v7)
    {
      v18 = v15 - v11;
    }

    else
    {
      [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
      v18 = v11 - v21;
    }
  }

LABEL_15:
  v22 = v17 + v18;
  v23 = 0.0;
  if (v7)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v11;
  }

  v25 = fmax(v22 - v24, 0.0);
  if (v9 - v11 <= v25)
  {
    v25 = v9 - v11;
  }

  result.y = v23;
  result.x = v25;
  return result;
}

- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)a3
{
  v5 = [(SBGridLayoutSwitcherModifier *)self numberOfRowsInGridSwitcher];
  [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
  layoutDirection = self->_layoutDirection;

  [(SBSwitcherModifier *)self distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:a3 numberOfRows:v5 padding:layoutDirection layoutDirection:?];
  return result;
}

- (void)_applyPrototypeSettings
{
  v6 = [(SBGridLayoutSwitcherModifier *)self switcherSettings];
  [v6 gridSwitcherHorizontalInterpageSpacingLandscape];
  kGridSwitcherHorizontalInterpageSpacingLandscape = v2;
  [v6 gridSwitcherVerticalNaturalSpacingLandscape];
  kGridSwitcherVerticalNaturalSpacingLandscape = v3;
  [v6 gridSwitcherHorizontalInterpageSpacingPortrait];
  kGridSwitcherHorizontalInterpageSpacingPortrait = v4;
  [v6 gridSwitcherVerticalNaturalSpacingPortrait];
  kGridSwitcherVerticalNaturalSpacingPortrait = v5;
}

- (unint64_t)_firstTrailingIndexForContentOffset:(CGPoint)a3
{
  x = a3.x;
  v5 = [(SBGridLayoutSwitcherModifier *)self _numberOfSpaces:a3.x];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  [(SBGridLayoutSwitcherModifier *)self _scaledCardSize];
  v8 = v7;
  [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
  v10 = x / (v8 + v9 * 2.0);
  v11 = BSFloatLessThanOrEqualToFloat();
  v12 = vcvtmd_u64_f64(v10);
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if ([(SBGridLayoutSwitcherModifier *)self isRTLEnabled])
  {
    return [(SBGridLayoutSwitcherModifier *)self numberOfRowsInGridSwitcher]* v13;
  }

  v15 = [(SBGridLayoutSwitcherModifier *)self _numberOfColumns]- v13;
  v16 = v6 - 1;
  v17 = [(SBGridLayoutSwitcherModifier *)self numberOfRowsInGridSwitcher];
  if (v16 >= v15 * v17 - 1)
  {
    return v15 * v17 - 1;
  }

  else
  {
    return v16;
  }
}

- (CGRect)_frameForIndex:(unint64_t)a3 ignoringScrollOffset:(BOOL)a4
{
  v4 = a4;
  v7 = [(SBGridLayoutSwitcherModifier *)self _numberOfSpaces];
  v8 = a3;
  if (v7)
  {
    if (self->_layoutDirection)
    {
      v8 = v7 + ~a3;
    }

    else
    {
      v8 = a3;
    }
  }

  [(SBGridLayoutSwitcherModifier *)self _rowForIndex:v8];
  [(SBGridLayoutSwitcherModifier *)self _columnForIndex:v8];
  [(SBGridLayoutSwitcherModifier *)self switcherViewBounds];
  [(SBGridLayoutSwitcherModifier *)self _scaledCardSize];
  [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
  [(SBGridLayoutSwitcherModifier *)self _fittedContentSize];
  [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
  [(SBGridLayoutSwitcherModifier *)self _fittedContentSize];
  [(SBGridLayoutSwitcherModifier *)self _verticalSpacing];
  [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
  [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
  if (![(SBGridLayoutSwitcherModifier *)self isRTLEnabled])
  {
    [(SBGridLayoutSwitcherModifier *)self _contentSize];
  }

  [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
  [(SBGridLayoutSwitcherModifier *)self _cardHeaderHeight];
  [(SBGridLayoutSwitcherModifier *)self numberOfRowsInGridSwitcher];
  [(SBGridLayoutSwitcherModifier *)self _verticalSpacing];
  [(SBGridLayoutSwitcherModifier *)self numberOfRowsInGridSwitcher];
  [(SBGridLayoutSwitcherModifier *)self floatingDockHeight];
  [(SBGridLayoutSwitcherModifier *)self _verticalSpacing];
  if (self->_alignment == 1)
  {
    [(SBGridLayoutSwitcherModifier *)self _contentSize];
    [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
    if (BSFloatLessThanOrEqualToFloat())
    {
      [(SBGridLayoutSwitcherModifier *)self isRTLEnabled];
    }
  }

  v22.receiver = self;
  v22.super_class = SBGridLayoutSwitcherModifier;
  [(SBGridLayoutSwitcherModifier *)&v22 frameForIndex:a3];
  SBRectWithSize();
  SBUnintegralizedRectCenteredAboutPoint();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (v4)
  {
    [(SBGridLayoutSwitcherModifier *)self scrollViewContentOffset];
    v10 = v10 - v17;
  }

  v18 = v10;
  v19 = v12;
  v20 = v14;
  v21 = v16;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (double)_verticalSpacing
{
  [(SBGridLayoutSwitcherModifier *)self switcherInterfaceOrientation];
  [(SBGridLayoutSwitcherModifier *)self screenScale];

  BSFloatRoundForScale();
  return result;
}

- (double)_horizontalSpacing
{
  [(SBGridLayoutSwitcherModifier *)self switcherInterfaceOrientation];
  [(SBGridLayoutSwitcherModifier *)self screenScale];

  BSFloatRoundForScale();
  return result;
}

- (double)_cornerRadius
{
  [(SBGridLayoutSwitcherModifier *)self displayCornerRadius];
  v3 = v2 <= 0.0;
  result = 7.0;
  if (!v3)
  {
    return 10.0;
  }

  return result;
}

- (unint64_t)_rowForIndex:(unint64_t)a3
{
  v4 = [(SBGridLayoutSwitcherModifier *)self numberOfRowsInGridSwitcher];
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return a3 % v5;
}

- (unint64_t)_columnForIndex:(unint64_t)a3
{
  v4 = [(SBGridLayoutSwitcherModifier *)self numberOfRowsInGridSwitcher];
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return a3 / v5;
}

- (double)_cardHeaderHeight
{
  v2 = [(SBGridLayoutSwitcherModifier *)self switcherSettings];
  [v2 spacingBetweenSnapshotAndIcon];
  v4 = v3;
  [v2 iconSideLength];
  v6 = v4 + v5;

  return v6;
}

- (CGRect)_frameWithScaleAppliedForIndex:(unint64_t)a3 ignoringScrollOffset:(BOOL)a4
{
  [(SBGridLayoutSwitcherModifier *)self _frameForIndex:a3 ignoringScrollOffset:a4];
  [(SBGridLayoutSwitcherModifier *)self scaleForIndex:a3];

  SBTransformedRectWithScale();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (unint64_t)_numberOfSpaces
{
  v2 = [(SBGridLayoutSwitcherModifier *)self appLayouts];
  v3 = [v2 count];

  return v3;
}

- (CGSize)_scaledCardSize
{
  [(SBGridLayoutSwitcherModifier *)self scale];
  v4 = v3;
  [(SBGridLayoutSwitcherModifier *)self containerViewBounds];
  v6 = v4 * v5;
  v8 = v4 * v7;
  result.height = v8;
  result.width = v6;
  return result;
}

@end