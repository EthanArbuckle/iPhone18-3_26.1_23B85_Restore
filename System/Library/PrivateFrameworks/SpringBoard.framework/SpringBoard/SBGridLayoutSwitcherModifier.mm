@interface SBGridLayoutSwitcherModifier
- (BOOL)_isIndexVisible:(unint64_t)visible;
- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)layout;
- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment;
- (CGRect)_frameForIndex:(unint64_t)index ignoringScrollOffset:(BOOL)offset;
- (CGRect)_frameWithScaleAppliedForIndex:(unint64_t)index ignoringScrollOffset:(BOOL)offset;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGSize)_contentSize;
- (CGSize)_fittedContentSize;
- (CGSize)_scaledCardSize;
- (SBGridLayoutSwitcherModifier)initWithAlignment:(unint64_t)alignment layoutDirection:(unint64_t)direction;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (_NSRange)visibleAppLayoutRangeForContentOffset:(CGPoint)offset;
- (double)_cardHeaderHeight;
- (double)_cornerRadius;
- (double)_horizontalSpacing;
- (double)_verticalSpacing;
- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)search;
- (double)minimumTranslationToKillIndex:(unint64_t)index;
- (double)scale;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsToCacheSnapshots;
- (id)handleScrollEvent:(id)event;
- (id)handleSwitcherSettingsChangedEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)scrollViewAttributes;
- (id)visibleAppLayouts;
- (unint64_t)_columnForIndex:(unint64_t)index;
- (unint64_t)_firstTrailingIndexForContentOffset:(CGPoint)offset;
- (unint64_t)_indexOfLeadingCard;
- (unint64_t)_numberOfSpaces;
- (unint64_t)_rowForIndex:(unint64_t)index;
- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)index;
- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)index;
- (void)_applyPrototypeSettings;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBGridLayoutSwitcherModifier

- (SBGridLayoutSwitcherModifier)initWithAlignment:(unint64_t)alignment layoutDirection:(unint64_t)direction
{
  v7.receiver = self;
  v7.super_class = SBGridLayoutSwitcherModifier;
  result = [(SBSwitcherModifier *)&v7 init];
  if (result)
  {
    result->_alignment = alignment;
    result->_layoutDirection = direction;
  }

  return result;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v5.receiver = self;
  v5.super_class = SBGridLayoutSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (modifier)
  {
    [(SBGridLayoutSwitcherModifier *)self _applyPrototypeSettings];
  }
}

- (double)scale
{
  switcherSettings = [(SBGridLayoutSwitcherModifier *)self switcherSettings];
  [switcherSettings gridSwitcherPageScale];
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

- (_NSRange)visibleAppLayoutRangeForContentOffset:(CGPoint)offset
{
  [(SBGridLayoutSwitcherModifier *)self scrollViewContentOffset:offset.x];
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

  _numberOfSpaces = [(SBGridLayoutSwitcherModifier *)self _numberOfSpaces];
  if (v7 >= _numberOfSpaces)
  {
    goto LABEL_2;
  }

  v9 = _numberOfSpaces;
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

- (id)handleSwitcherSettingsChangedEvent:(id)event
{
  eventCopy = event;
  [(SBGridLayoutSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBGridLayoutSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleSwitcherSettingsChangedEvent:eventCopy];

  return v5;
}

- (id)handleScrollEvent:(id)event
{
  eventCopy = event;
  [eventCopy contentOffset];
  x = self->_previousContentOffset.x;
  if (x != 1.79769313e308 || self->_previousContentOffset.y != 1.79769313e308)
  {
    self->_isScrollingForward = x > v5;
  }

  self->_previousContentOffset.x = v5;
  self->_previousContentOffset.y = v6;
  v11.receiver = self;
  v11.super_class = SBGridLayoutSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v11 handleScrollEvent:eventCopy];

  return v9;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy toEnvironmentMode] == 2 && objc_msgSend(eventCopy, "fromEnvironmentMode") != 2)
  {
    self->_previousContentOffset = SBInvalidPoint;
    self->_isScrollingForward = 1;
  }

  v7.receiver = self;
  v7.super_class = SBGridLayoutSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleTransitionEvent:eventCopy];

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  [(SBGridLayoutSwitcherModifier *)self _frameForIndex:index ignoringScrollOffset:1];
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
  visibleAppLayouts = [(SBGridLayoutSwitcherModifier *)&v11 visibleAppLayouts];
  appLayouts = [(SBGridLayoutSwitcherModifier *)self appLayouts];
  v8 = [appLayouts subarrayWithRange:{v3, v5}];
  v9 = [visibleAppLayouts setByAddingObjectsFromArray:v8];

  return v9;
}

- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)layout
{
  homeGrabberSettings = [(SBGridLayoutSwitcherModifier *)self homeGrabberSettings];
  isEnabled = [homeGrabberSettings isEnabled];

  return isEnabled;
}

- (BOOL)_isIndexVisible:(unint64_t)visible
{
  [(SBGridLayoutSwitcherModifier *)self _frameWithScaleAppliedForIndex:visible ignoringScrollOffset:1];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  switcherSettings = [(SBGridLayoutSwitcherModifier *)self switcherSettings];
  [switcherSettings switcherCardShadowRadius];
  v14 = v13;

  [(SBGridLayoutSwitcherModifier *)self switcherViewBounds];
  v22 = CGRectInset(v21, v14 * -2.8, v14 * -2.8);
  v15 = v5;
  v16 = v7;
  v17 = v9;
  v18 = v11;

  return CGRectIntersectsRect(v22, *&v15);
}

- (id)animationAttributesForLayoutElement:(id)element
{
  switcherSettings = [(SBGridLayoutSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  v5 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
  [(SBSwitcherAnimationAttributes *)v5 setUpdateMode:1];
  layoutSettings = [animationSettings layoutSettings];
  [(SBSwitcherAnimationAttributes *)v5 setLayoutSettings:layoutSettings];

  opacitySettings = [animationSettings opacitySettings];
  [(SBSwitcherAnimationAttributes *)v5 setOpacitySettings:opacitySettings];

  return v5;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index
{
  [(SBGridLayoutSwitcherModifier *)self frameForIndex:index];

  return CGRectGetWidth(*&v3);
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  [(SBGridLayoutSwitcherModifier *)self _cornerRadius];
  [(SBGridLayoutSwitcherModifier *)self scaleForIndex:index];

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
  switcherSettings = [(SBGridLayoutSwitcherModifier *)self switcherSettings];
  numberOfSnapshotsToCacheInSwitcher = [switcherSettings numberOfSnapshotsToCacheInSwitcher];

  isScrollingForward = self->_isScrollingForward;

  return [(SBSwitcherModifier *)self appLayoutsToCacheSnapshotsWithVisibleRange:v3 numberOfSnapshotsToCache:v5 biasForward:numberOfSnapshotsToCacheInSwitcher, isScrollingForward];
}

- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)index
{
  result = [(SBGridLayoutSwitcherModifier *)self _indexOfLeadingCard];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return result;
}

- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)index
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

- (double)minimumTranslationToKillIndex:(unint64_t)index
{
  [(SBGridLayoutSwitcherModifier *)self frameForIndex:?];
  [(SBGridLayoutSwitcherModifier *)self scaleForIndex:index];
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

- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment
{
  isRTLEnabled = [(SBGridLayoutSwitcherModifier *)self isRTLEnabled];
  [(SBGridLayoutSwitcherModifier *)self _contentSize];
  v9 = v8;
  [(SBGridLayoutSwitcherModifier *)self switcherViewBounds];
  v11 = v10;
  [(SBGridLayoutSwitcherModifier *)self _frameWithScaleAppliedForIndex:index ignoringScrollOffset:1];
  v13 = v12;
  [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
  v15 = v14 + v13;
  [(SBGridLayoutSwitcherModifier *)self _frameWithScaleAppliedForIndex:index ignoringScrollOffset:0];
  v17 = v16;
  v18 = 0.0;
  if (alignment > 1)
  {
    if (alignment == 2)
    {
      if (!isRTLEnabled)
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

    if (alignment != 3)
    {
      goto LABEL_15;
    }

LABEL_8:
    v18 = v15;
    if (!isRTLEnabled)
    {
      goto LABEL_15;
    }

    [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
    goto LABEL_12;
  }

  if (!alignment)
  {
    goto LABEL_8;
  }

  if (alignment == 1)
  {
    if (isRTLEnabled)
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
  if (isRTLEnabled)
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

- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)search
{
  numberOfRowsInGridSwitcher = [(SBGridLayoutSwitcherModifier *)self numberOfRowsInGridSwitcher];
  [(SBGridLayoutSwitcherModifier *)self _horizontalSpacing];
  layoutDirection = self->_layoutDirection;

  [(SBSwitcherModifier *)self distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:search numberOfRows:numberOfRowsInGridSwitcher padding:layoutDirection layoutDirection:?];
  return result;
}

- (void)_applyPrototypeSettings
{
  switcherSettings = [(SBGridLayoutSwitcherModifier *)self switcherSettings];
  [switcherSettings gridSwitcherHorizontalInterpageSpacingLandscape];
  kGridSwitcherHorizontalInterpageSpacingLandscape = v2;
  [switcherSettings gridSwitcherVerticalNaturalSpacingLandscape];
  kGridSwitcherVerticalNaturalSpacingLandscape = v3;
  [switcherSettings gridSwitcherHorizontalInterpageSpacingPortrait];
  kGridSwitcherHorizontalInterpageSpacingPortrait = v4;
  [switcherSettings gridSwitcherVerticalNaturalSpacingPortrait];
  kGridSwitcherVerticalNaturalSpacingPortrait = v5;
}

- (unint64_t)_firstTrailingIndexForContentOffset:(CGPoint)offset
{
  x = offset.x;
  v5 = [(SBGridLayoutSwitcherModifier *)self _numberOfSpaces:offset.x];
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
  numberOfRowsInGridSwitcher = [(SBGridLayoutSwitcherModifier *)self numberOfRowsInGridSwitcher];
  if (v16 >= v15 * numberOfRowsInGridSwitcher - 1)
  {
    return v15 * numberOfRowsInGridSwitcher - 1;
  }

  else
  {
    return v16;
  }
}

- (CGRect)_frameForIndex:(unint64_t)index ignoringScrollOffset:(BOOL)offset
{
  offsetCopy = offset;
  _numberOfSpaces = [(SBGridLayoutSwitcherModifier *)self _numberOfSpaces];
  indexCopy2 = index;
  if (_numberOfSpaces)
  {
    if (self->_layoutDirection)
    {
      indexCopy2 = _numberOfSpaces + ~index;
    }

    else
    {
      indexCopy2 = index;
    }
  }

  [(SBGridLayoutSwitcherModifier *)self _rowForIndex:indexCopy2];
  [(SBGridLayoutSwitcherModifier *)self _columnForIndex:indexCopy2];
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
  [(SBGridLayoutSwitcherModifier *)&v22 frameForIndex:index];
  SBRectWithSize();
  SBUnintegralizedRectCenteredAboutPoint();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (offsetCopy)
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

- (unint64_t)_rowForIndex:(unint64_t)index
{
  numberOfRowsInGridSwitcher = [(SBGridLayoutSwitcherModifier *)self numberOfRowsInGridSwitcher];
  if (numberOfRowsInGridSwitcher <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = numberOfRowsInGridSwitcher;
  }

  return index % v5;
}

- (unint64_t)_columnForIndex:(unint64_t)index
{
  numberOfRowsInGridSwitcher = [(SBGridLayoutSwitcherModifier *)self numberOfRowsInGridSwitcher];
  if (numberOfRowsInGridSwitcher <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = numberOfRowsInGridSwitcher;
  }

  return index / v5;
}

- (double)_cardHeaderHeight
{
  switcherSettings = [(SBGridLayoutSwitcherModifier *)self switcherSettings];
  [switcherSettings spacingBetweenSnapshotAndIcon];
  v4 = v3;
  [switcherSettings iconSideLength];
  v6 = v4 + v5;

  return v6;
}

- (CGRect)_frameWithScaleAppliedForIndex:(unint64_t)index ignoringScrollOffset:(BOOL)offset
{
  [(SBGridLayoutSwitcherModifier *)self _frameForIndex:index ignoringScrollOffset:offset];
  [(SBGridLayoutSwitcherModifier *)self scaleForIndex:index];

  SBTransformedRectWithScale();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (unint64_t)_numberOfSpaces
{
  appLayouts = [(SBGridLayoutSwitcherModifier *)self appLayouts];
  v3 = [appLayouts count];

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