@interface SBShelfCarouselSwitcherModifier
- (BOOL)_isIndexVisible:(unint64_t)visible;
- (BOOL)isLayoutRoleDraggable:(int64_t)draggable inAppLayout:(id)layout;
- (BOOL)isLayoutRoleKillable:(int64_t)killable inAppLayout:(id)layout atIndex:(unint64_t)index;
- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)layout;
- (BOOL)shouldTetherItemsAndAccessoriesInAppLayout:(id)layout;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment;
- (CGRect)_frameForIndex:(unint64_t)index applyCarousel:(BOOL)carousel;
- (CGRect)clippingFrameForIndex:(unint64_t)index withBounds:(CGRect)bounds;
- (CGRect)clippingFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index withBounds:(CGRect)bounds;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (CGRect)frameForShelf:(id)shelf;
- (CGRect)shelfBackgroundBlurFrame;
- (CGSize)_cardSizeForAppLayout:(id)layout;
- (CGSize)_cardSizeForIndex:(unint64_t)index;
- (CGSize)_centerCardSizeForOrientation:(int64_t)orientation;
- (CGSize)_contentSize;
- (CGSize)_fittedContentSize;
- (CGSize)_floatingCardSizeForOrientation:(int64_t)orientation;
- (SBShelfCarouselSwitcherModifier)init;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (_NSRange)_visibleRange;
- (double)_effectiveMaxCarouselWidth;
- (double)backgroundOpacityForIndex:(unint64_t)index;
- (double)contentPageViewScaleForAppLayout:(id)layout withScale:(double)scale;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (double)snapshotScaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)titleAndIconOpacityForIndex:(unint64_t)index;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index;
- (id)_orderedVisibleAppLayouts;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)handleInitialSetupEvent:(id)event;
- (id)handleShelfFocusedDisplayItemsChangedEvent:(id)event;
- (id)handleTapAppLayoutEvent:(id)event;
- (id)scrollViewAttributes;
- (id)topMostLayoutElements;
- (id)visibleAppLayouts;
- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)index;
- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)index;
- (unint64_t)transactionCompletionOptions;
@end

@implementation SBShelfCarouselSwitcherModifier

- (SBShelfCarouselSwitcherModifier)init
{
  v8.receiver = self;
  v8.super_class = SBShelfCarouselSwitcherModifier;
  v2 = [(SBSwitcherModifier *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_fittedContentSize_lastAppLayoutsGenCount = 0x7FFFFFFFFFFFFFFFLL;
    v2->_fittedContentSize_lastOrientation = 0;
    v5 = *MEMORY[0x277CBF398];
    v4 = *(MEMORY[0x277CBF398] + 16);
    v2->_fittedContentSize_lastContainerViewBounds.origin = *MEMORY[0x277CBF398];
    v2->_fittedContentSize_lastContainerViewBounds.size = v4;
    v2->_fittedContentSize_lastSwitcherViewBounds.origin = v5;
    v2->_fittedContentSize_lastSwitcherViewBounds.size = v4;
    v2->_fittedContentSize_lastSize = *MEMORY[0x277CBF3A8];
    v2->_visibleRange_lastAppLayoutsGenCount = 0x7FFFFFFFFFFFFFFFLL;
    v2->_visibleRange_lastOrientation = 0;
    v2->_visibleRange_lastContainerViewBounds.origin = v5;
    v2->_visibleRange_lastContainerViewBounds.size = v4;
    v2->_visibleRange_lastSwitcherViewBounds.origin = v5;
    v2->_visibleRange_lastSwitcherViewBounds.size = v4;
    v2->_visibleRange_lastContentOffset = SBInvalidPoint;
    v2->_visibleRange_lastRange = xmmword_21F8A8680;
    v2->_centerCardSize_containerViewBounds.origin = v5;
    v2->_centerCardSize_containerViewBounds.size = v4;
    v2->_floatingCardSize_containerViewBounds.origin = v5;
    v2->_floatingCardSize_containerViewBounds.size = v4;
    v6 = objc_alloc_init(SBDefaultImplementationsSwitcherModifier);
    [(SBChainableModifier *)v3 addChildModifier:v6];
  }

  return v3;
}

- (id)visibleAppLayouts
{
  v2 = MEMORY[0x277CBEB98];
  _orderedVisibleAppLayouts = [(SBShelfCarouselSwitcherModifier *)self _orderedVisibleAppLayouts];
  v4 = [v2 setWithArray:_orderedVisibleAppLayouts];

  return v4;
}

- (id)_orderedVisibleAppLayouts
{
  _visibleRange = [(SBShelfCarouselSwitcherModifier *)self _visibleRange];
  if (_visibleRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v6 = _visibleRange;
    v7 = v4;
    appLayouts = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
    v5 = [appLayouts subarrayWithRange:{v6, v7}];
  }

  return v5;
}

- (_NSRange)_visibleRange
{
  if (self->_hasReceivedInitialSetupEvent)
  {
    appLayoutsGenerationCount = [(SBShelfCarouselSwitcherModifier *)self appLayoutsGenerationCount];
    switcherInterfaceOrientation = [(SBShelfCarouselSwitcherModifier *)self switcherInterfaceOrientation];
    [(SBShelfCarouselSwitcherModifier *)self containerViewBounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
    v32 = v14;
    v33 = v13;
    v16 = v15;
    v18 = v17;
    [(SBShelfCarouselSwitcherModifier *)self scrollViewContentOffset];
    v20 = v19;
    v22 = v21;
    if (*&self->_visibleRange_lastAppLayoutsGenCount == __PAIR128__(switcherInterfaceOrientation, appLayoutsGenerationCount) && (v35.origin.x = v6, v35.origin.y = v8, v35.size.width = v10, v35.size.height = v12, CGRectEqualToRect(self->_visibleRange_lastContainerViewBounds, v35)) && (v36.origin.y = v32, v36.origin.x = v33, v36.size.width = v16, v36.size.height = v18, CGRectEqualToRect(self->_visibleRange_lastSwitcherViewBounds, v36)) && (self->_visibleRange_lastContentOffset.x == v20 ? (v23 = self->_visibleRange_lastContentOffset.y == v22) : (v23 = 0), v23))
    {
      location = self->_visibleRange_lastRange.location;
      length = self->_visibleRange_lastRange.length;
    }

    else
    {
      self->_visibleRange_lastAppLayoutsGenCount = appLayoutsGenerationCount;
      self->_visibleRange_lastOrientation = switcherInterfaceOrientation;
      self->_visibleRange_lastContainerViewBounds.origin.x = v6;
      self->_visibleRange_lastContainerViewBounds.origin.y = v8;
      self->_visibleRange_lastContainerViewBounds.size.width = v10;
      self->_visibleRange_lastContainerViewBounds.size.height = v12;
      self->_visibleRange_lastSwitcherViewBounds.origin.x = v33;
      self->_visibleRange_lastSwitcherViewBounds.origin.y = v32;
      self->_visibleRange_lastSwitcherViewBounds.size.width = v16;
      self->_visibleRange_lastSwitcherViewBounds.size.height = v18;
      self->_visibleRange_lastContentOffset.x = v20;
      self->_visibleRange_lastContentOffset.y = v22;
      appLayouts = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
      v27 = [appLayouts count];

      if (v27)
      {
        v28 = 0;
        length = 0;
        location = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          if ([(SBShelfCarouselSwitcherModifier *)self _isIndexVisible:v28])
          {
            if (location == 0x7FFFFFFFFFFFFFFFLL)
            {
              v29 = v28;
            }

            else
            {
              v29 = location;
            }

            ++length;
          }

          else
          {
            v29 = 0x7FFFFFFFFFFFFFFFLL;
            if (location != 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }
          }

          ++v28;
          location = v29;
        }

        while (v27 != v28);
      }

      else
      {
        length = 0;
        location = 0x7FFFFFFFFFFFFFFFLL;
      }

      self->_visibleRange_lastRange.location = location;
      self->_visibleRange_lastRange.length = length;
    }
  }

  else
  {
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  v30 = location;
  v31 = length;
  result.length = v31;
  result.location = v30;
  return result;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  [(SBShelfCarouselSwitcherModifier *)self scaleForIndex:?];
  v6 = v5;
  medusaSettings = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [medusaSettings switcherShelfCardScale];
  v9 = v8;

  v10 = (v6 - v9 * 0.75) * 0.25 / (v9 - v9 * 0.75) + 0.75;
  [(SBShelfCarouselSwitcherModifier *)self frameForIndex:index];
  UIRectGetCenter();
  v12 = v11;
  [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
  v14 = v10 * 0.5;
  if (v12 <= v13 * 0.5)
  {
    v14 = 1.0 - v10 * 0.5;
  }

  v15 = 0.5;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  [(SBShelfCarouselSwitcherModifier *)self _frameForIndex:index applyCarousel:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  if ([layoutCopy environment] == 1)
  {
    v28.receiver = self;
    v28.super_class = SBShelfCarouselSwitcherModifier;
    [(SBShelfCarouselSwitcherModifier *)&v28 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    [(SBShelfCarouselSwitcherModifier *)self _cardSizeForAppLayout:layoutCopy];

    SBRectWithSize();
    v13 = v20;
    v15 = v21;
    v17 = v22;
    v19 = v23;
  }

  v24 = v13;
  v25 = v15;
  v26 = v17;
  v27 = v19;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)_frameForIndex:(unint64_t)index applyCarousel:(BOOL)carousel
{
  carouselCopy = carousel;
  indexCopy = index;
  if (([(SBShelfCarouselSwitcherModifier *)self isRTLEnabled]& 1) == 0)
  {
    appLayouts = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
    indexCopy = [appLayouts count] + ~index;
  }

  [(SBShelfCarouselSwitcherModifier *)self _cardSizeForIndex:index];
  v10 = v9;
  medusaSettings = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [medusaSettings switcherShelfCardScale];
  v13 = v12;

  if (indexCopy)
  {
    v14 = 0;
    v15 = 0.0;
    v16 = -1;
    v17 = indexCopy;
    do
    {
      v18 = v14;
      if (([(SBShelfCarouselSwitcherModifier *)self isRTLEnabled]& 1) == 0)
      {
        appLayouts2 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
        v18 = [appLayouts2 count] + v16;
      }

      [(SBShelfCarouselSwitcherModifier *)self _cardSizeForIndex:v18];
      v15 = v15 + v13 * v20 + 32.0;
      ++v14;
      --v16;
      --v17;
    }

    while (v17);
  }

  else
  {
    v15 = 0.0;
  }

  v21 = v10 * v13;
  v22 = v10 * v13 * 0.5;
  [(SBShelfCarouselSwitcherModifier *)self scrollViewContentOffset];
  v24 = v22 + v15 - v23;
  [(SBShelfCarouselSwitcherModifier *)self _fittedContentSize];
  v26 = v25;
  [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
  v28 = v27;
  if (v26 >= v27)
  {
    if ([(SBShelfCarouselSwitcherModifier *)self isRTLEnabled])
    {
      [(SBShelfCarouselSwitcherModifier *)self _cardSizeForIndex:0];
      v31 = v30;
    }

    else
    {
      appLayouts3 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
      -[SBShelfCarouselSwitcherModifier _cardSizeForIndex:](self, "_cardSizeForIndex:", [appLayouts3 count] - 1);
      v31 = v33;
    }

    medusaSettings2 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
    [medusaSettings2 switcherShelfCardScale];
    v36 = v35;

    v29 = v28 * 0.5 - v28 * 0.899497487 * 0.5 + v31 * v36 * 0.5 - v31 * v36 * 0.5;
  }

  else
  {
    v29 = (v27 - v26) * 0.5;
  }

  v37 = v24 + v29;
  if (carouselCopy)
  {
    [(SBShelfCarouselSwitcherModifier *)self _effectiveMaxCarouselWidth];
    v38 = v28 * 0.5;
    v40 = v39 * 0.5;
    v41 = v28 * 0.5 - v40;
    v42 = v21 * 3.0 * 0.5;
    v43 = v42 + v41;
    v44 = v22 + v41;
    v45 = v38 + v40;
    v46 = v45 - v42;
    v47 = v45 - v22;
    if (v37 <= v38)
    {
      if (!indexCopy || (-[SBShelfCarouselSwitcherModifier appLayouts](self, "appLayouts"), v53 = objc_claimAutoreleasedReturnValue(), v54 = [v53 count] - 1, v53, indexCopy == v54))
      {
        if (v44 >= v37)
        {
          v55 = v44;
        }

        else
        {
          v55 = v37;
        }

        if (v43 <= v55)
        {
          v55 = v43;
        }

        v51 = v55 - v43;
        v52 = v44 - v43;
        goto LABEL_34;
      }

      if (v44 - v22 >= v37)
      {
        v61 = v44 - v22;
      }

      else
      {
        v61 = v37;
      }

      if (v43 <= v61)
      {
        v61 = v43;
      }

      v59 = v61 - v43;
      v60 = v44 - v22 - v43;
    }

    else
    {
      if (!indexCopy || (-[SBShelfCarouselSwitcherModifier appLayouts](self, "appLayouts"), v48 = objc_claimAutoreleasedReturnValue(), v49 = [v48 count] - 1, v48, indexCopy == v49))
      {
        if (v46 >= v37)
        {
          v50 = v46;
        }

        else
        {
          v50 = v37;
        }

        if (v47 <= v50)
        {
          v50 = v47;
        }

        v51 = v50 - v46;
        v52 = v47 - v46;
LABEL_34:
        v56 = v51 / v52;
        goto LABEL_48;
      }

      v57 = v22 + v47;
      if (v46 >= v37)
      {
        v58 = v46;
      }

      else
      {
        v58 = v37;
      }

      if (v57 <= v58)
      {
        v58 = v22 + v47;
      }

      v59 = v58 - v46;
      v60 = v57 - v46;
    }

    v56 = v59 / v60;
LABEL_48:
    if (v56 <= 0.0)
    {
      v62 = 0.0;
    }

    else
    {
      v62 = v56 + 0.0;
    }

    sin(fmin(v62, 1.0) * 1.57079633);
    if (!BSFloatIsOne() && (BSFloatIsZero() & 1) == 0 && indexCopy)
    {
      appLayouts4 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
      [appLayouts4 count];
    }
  }

  SBRectWithSize();

  UIRectCenteredAboutPoint();
  result.size.height = v66;
  result.size.width = v65;
  result.origin.y = v64;
  result.origin.x = v63;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
  v6 = v5;
  [(SBShelfCarouselSwitcherModifier *)self _frameForIndex:index applyCarousel:1];
  UIRectGetCenter();
  v8 = v7;
  v9 = v6 * 0.5;
  if ([(SBShelfCarouselSwitcherModifier *)self isRTLEnabled]!= v7 <= v6 * 0.5)
  {
    v10 = index - 1;
  }

  else
  {
    v10 = index + 1;
  }

  appLayouts = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  v12 = [appLayouts count] - 1;
  v13 = v10 & ~(v10 >> 63);

  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  [(SBShelfCarouselSwitcherModifier *)self _cardSizeForIndex:index];
  v16 = v15;
  [(SBShelfCarouselSwitcherModifier *)self _frameForIndex:v14 applyCarousel:0];
  UIRectGetCenter();
  v18 = v17;
  medusaSettings = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [medusaSettings switcherShelfCardScale];
  v21 = v20;

  [(SBShelfCarouselSwitcherModifier *)self _effectiveMaxCarouselWidth];
  v23 = v22 * 0.5;
  v24 = v9 - v22 * 0.5;
  v25 = v16 * v21 * 3.0 * 0.5;
  v26 = v16 * v21 * 0.5;
  v27 = v9 + v23;
  v28 = v27 - v25;
  v29 = v25 + v24 + 32.0;
  v30 = v28 + -32.0;
  v31 = (v29 - (v28 + -32.0)) * 0.5;
  if (v8 > v9)
  {
    v36 = v30 + v31;
    if (v30 >= v29)
    {
      v36 = v30;
    }

    v37 = v27 - v26 + 32.0;
    if (v36 >= v18)
    {
      v38 = v36;
    }

    else
    {
      v38 = v18;
    }

    if (v37 <= v38)
    {
      v38 = v37;
    }

    v35 = (v38 - v36) / (v37 - v36);
  }

  else
  {
    v32 = v29 - v31;
    if (v30 >= v29)
    {
      v32 = v29;
    }

    v33 = v26 + v24 + -32.0;
    if (v33 >= v18)
    {
      v34 = v33;
    }

    else
    {
      v34 = v18;
    }

    if (v32 <= v34)
    {
      v34 = v32;
    }

    v35 = (v34 - v32) / (v33 - v32);
  }

  if (v35 <= 0.0)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v35 + 0.0;
  }

  v40 = sin(fmin(v39, 1.0) * 1.57079633) * -0.25 + 1.0;
  appLayouts2 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  v42 = [appLayouts2 count];

  v43 = 0.76;
  if (v40 >= 0.76 || v42 >= 3)
  {
    v43 = v40;
  }

  return v21 * v43;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  [(SBShelfCarouselSwitcherModifier *)self scaleForIndex:index, layout];
  medusaSettings = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [medusaSettings switcherShelfCardScale];
  if (BSFloatEqualToFloat())
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  return v7;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)index
{
  medusaSettings = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [medusaSettings switcherShelfCardScale];

  [(SBShelfCarouselSwitcherModifier *)self scaleForIndex:index];
  v6 = BSFloatLessThanOrEqualToFloat();
  result = 1.0;
  if (v6)
  {
    return 0.0;
  }

  return result;
}

- (id)topMostLayoutElements
{
  _visibleRange = [(SBShelfCarouselSwitcherModifier *)self _visibleRange];
  if (_visibleRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v6 = _visibleRange;
    v7 = v4;
    v5 = objc_opt_new();
    isRTLEnabled = [(SBShelfCarouselSwitcherModifier *)self isRTLEnabled];
    if (v6 < v6 + v7)
    {
      v9 = isRTLEnabled;
      do
      {
        [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
        UIRectGetCenter();
        v11 = v10;
        [(SBShelfCarouselSwitcherModifier *)self _frameForIndex:v6 applyCarousel:1];
        UIRectGetCenter();
        v13 = v12;
        appLayouts = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
        v15 = [appLayouts objectAtIndex:v6];

        if ((v9 ^ (v13 <= v11)))
        {
          [v5 addObject:v15];
        }

        else
        {
          [v5 insertObject:v15 atIndex:0];
        }

        ++v6;
        --v7;
      }

      while (v7);
    }
  }

  return v5;
}

- (id)appLayoutsToCacheSnapshots
{
  visibleAppLayouts = [(SBShelfCarouselSwitcherModifier *)self visibleAppLayouts];
  allObjects = [visibleAppLayouts allObjects];

  return allObjects;
}

- (double)snapshotScaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v4 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings:role];
  [v4 switcherShelfCardScale];
  v6 = v5;

  return v6;
}

- (double)contentPageViewScaleForAppLayout:(id)layout withScale:(double)scale
{
  v4 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings:layout];
  [v4 switcherShelfCardScale];
  v6 = v5;

  return v6;
}

- (CGSize)_cardSizeForIndex:(unint64_t)index
{
  appLayouts = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  [(SBShelfCarouselSwitcherModifier *)self _cardSizeForAppLayout:v6];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)_cardSizeForAppLayout:(id)layout
{
  if (layout)
  {
    environment = [layout environment];
    if (environment == 1)
    {
      [(SBShelfCarouselSwitcherModifier *)self containerViewBounds];
      v6 = v5;
      v8 = v7;
    }

    else
    {
      v9 = environment;
      switcherInterfaceOrientation = [(SBShelfCarouselSwitcherModifier *)self switcherInterfaceOrientation];
      if (v9 == 2)
      {
        [(SBShelfCarouselSwitcherModifier *)self _floatingCardSizeForOrientation:switcherInterfaceOrientation];
      }

      else
      {
        [(SBShelfCarouselSwitcherModifier *)self _centerCardSizeForOrientation:switcherInterfaceOrientation];
      }
    }
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v8;
  result.width = v6;
  return result;
}

- (BOOL)isLayoutRoleKillable:(int64_t)killable inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  if ([layoutCopy type] == 5 || (-[SBShelfCarouselSwitcherModifier shelfFocusedDisplayItems](self, "shelfFocusedDisplayItems"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(layoutCopy, "containsAnyItemFromSet:", v8), v8, (v9 & 1) != 0))
  {
    v10 = 0;
  }

  else
  {
    v11 = [layoutCopy isCenterOverSplit] ^ 1;
    if (killable == 4)
    {
      v10 = 1;
    }

    else
    {
      v10 = v11;
    }
  }

  return v10;
}

- (CGRect)shelfBackgroundBlurFrame
{
  [(SBShelfCarouselSwitcherModifier *)self _fittedContentSize];
  [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
  SBRectWithSize();
  [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
  UIRectGetCenter();

  UIRectCenteredAboutPoint();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  medusaSettings = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [medusaSettings switcherShelfCardCornerRadius];
  [medusaSettings switcherShelfCardScale];
  SBRectCornerRadiiForRadius();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.topRight = v15;
  result.bottomRight = v14;
  result.bottomLeft = v13;
  result.topLeft = v12;
  return result;
}

- (id)scrollViewAttributes
{
  v3 = objc_opt_new();
  [(SBShelfCarouselSwitcherModifier *)self _contentSize];
  [v3 setContentSize:?];
  [v3 setDecelerationRate:*MEMORY[0x277D76EC0]];
  [v3 setScrollViewPagingEnabled:0];
  [v3 setInterpageSpacingForPaging:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  [v3 setPagingOrigin:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [v3 setInterpolatesDuringSwipeToKill:0];
  [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
  [v3 setFrame:?];

  return v3;
}

- (CGRect)frameForShelf:(id)shelf
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v4 = objc_opt_new();
  [v4 setUpdateMode:1];
  [v4 setTitleAndIconOpacityUpdateMode:3];
  switcherSettings = [(SBShelfCarouselSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  layoutSettings = [animationSettings layoutSettings];
  [v4 setLayoutSettings:layoutSettings];

  switcherSettings2 = [(SBShelfCarouselSwitcherModifier *)self switcherSettings];
  animationSettings2 = [switcherSettings2 animationSettings];
  opacitySettings = [animationSettings2 opacitySettings];
  [v4 setOpacitySettings:opacitySettings];

  return v4;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index
{
  [(SBShelfCarouselSwitcherModifier *)self frameForIndex:index];

  return CGRectGetWidth(*&v3);
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  medusaSettings = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [medusaSettings switcherShelfCardScale];
  v8 = v7;

  [(SBShelfCarouselSwitcherModifier *)self scaleForIndex:index];
  v10 = v9;
  result = 1.0;
  if (v10 < v8 * 0.765)
  {
    return (v10 + v8 * -0.75) / (v8 * 0.765 + v8 * -0.75) + 0.0;
  }

  return result;
}

- (CGRect)clippingFrameForIndex:(unint64_t)index withBounds:(CGRect)bounds
{
  v4 = *MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)clippingFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index withBounds:(CGRect)bounds
{
  v6 = *MEMORY[0x277CBF398];
  v7 = *(MEMORY[0x277CBF398] + 8);
  v8 = *(MEMORY[0x277CBF398] + 16);
  v9 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)layout
{
  v3 = [layout itemForLayoutRole:2];
  v4 = v3 != 0;

  return v4;
}

- (unint64_t)transactionCompletionOptions
{
  appLayouts = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  if ([appLayouts count])
  {
    isReduceMotionEnabled = [(SBShelfCarouselSwitcherModifier *)self isReduceMotionEnabled];

    if (isReduceMotionEnabled)
    {
      return 6;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 6;
  }
}

- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)index
{
  _visibleRange = [(SBShelfCarouselSwitcherModifier *)self _visibleRange];
  if (_visibleRange > index)
  {
    return index;
  }

  v7 = _visibleRange;
  v8 = v6;
  if (_visibleRange + v6 <= index)
  {
    return index;
  }

  [(SBShelfCarouselSwitcherModifier *)self titleAndIconOpacityForIndex:index];
  i = index;
  if (BSFloatIsOne())
  {
    for (i = v7; ; ++i)
    {
      [(SBShelfCarouselSwitcherModifier *)self titleAndIconOpacityForIndex:i];
      if (BSFloatIsOne())
      {
        break;
      }

      if (!--v8)
      {
        return index;
      }
    }
  }

  if (i == 0x7FFFFFFFFFFFFFFFLL)
  {
    return index;
  }

  return i;
}

- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)index
{
  _visibleRange = [(SBShelfCarouselSwitcherModifier *)self _visibleRange];
  if (_visibleRange >= _visibleRange + v6)
  {
    return index;
  }

  v7 = _visibleRange;
  v8 = v6;
  while (1)
  {
    [(SBShelfCarouselSwitcherModifier *)self titleAndIconOpacityForIndex:v7];
    if (BSFloatIsOne())
    {
      break;
    }

    ++v7;
    if (!--v8)
    {
      return index;
    }
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return index;
  }

  return v7;
}

- (BOOL)isLayoutRoleDraggable:(int64_t)draggable inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy type] || (-[SBShelfCarouselSwitcherModifier shelfFocusedDisplayItems](self, "shelfFocusedDisplayItems"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(layoutCopy, "containsAnyItemFromSet:", v7), v7, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    v11 = [layoutCopy leafAppLayoutForRole:draggable];
    v12 = [v11 itemForLayoutRole:1];
    v9 = [(SBShelfCarouselSwitcherModifier *)self displayItemSupportsMedusa:v12];
  }

  return v9;
}

- (BOOL)shouldTetherItemsAndAccessoriesInAppLayout:(id)layout
{
  layoutCopy = layout;
  shelfFocusedDisplayItems = [(SBShelfCarouselSwitcherModifier *)self shelfFocusedDisplayItems];
  if ([layoutCopy containsAnyItemFromSet:shelfFocusedDisplayItems])
  {
    v6 = 1;
  }

  else
  {
    v7 = [layoutCopy itemForLayoutRole:4];
    v6 = v7 != 0;
  }

  return v6;
}

- (id)appLayoutsToResignActive
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = MEMORY[0x277CBEB98];
  appLayouts = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  v5 = [v3 setWithArray:appLayouts];
  v6 = [v2 dictionaryWithObject:v5 forKey:&unk_283372128];

  return v6;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment
{
  [(SBShelfCarouselSwitcherModifier *)self _frameForIndex:index applyCarousel:0];
  v6 = v5;
  UIRectGetCenter();
  v8 = v7;
  [(SBShelfCarouselSwitcherModifier *)self scrollViewContentOffset];
  v10 = v8 + v9;
  medusaSettings = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [medusaSettings switcherShelfCardScale];
  v13 = v10 + v6 * v12 * 0.5;

  [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
  v15 = v13 + v14 * -0.899497487;
  [(SBShelfCarouselSwitcherModifier *)self _contentSize];
  v17 = v16;
  [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
  v19 = v17 - v18;
  v20 = fmax(v15, 0.0);
  if (v17 - v18 > v20)
  {
    v19 = v20;
  }

  v21 = 0.0;
  result.y = v21;
  result.x = v19;
  return result;
}

- (double)backgroundOpacityForIndex:(unint64_t)index
{
  appLayouts = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  shelfFocusedDisplayItems = [(SBShelfCarouselSwitcherModifier *)self shelfFocusedDisplayItems];
  if ([v6 containsAnyItemFromSet:shelfFocusedDisplayItems])
  {
    isSplitConfiguration = [v6 isSplitConfiguration];

    v9 = 1.0;
    if (isSplitConfiguration)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = 0.0;
LABEL_6:

  return v9;
}

- (id)handleInitialSetupEvent:(id)event
{
  v13.receiver = self;
  v13.super_class = SBShelfCarouselSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v13 handleInitialSetupEvent:event];
  self->_hasReceivedInitialSetupEvent = 1;
  appLayouts = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  v6 = [appLayouts count];

  if (v6)
  {
    appLayouts2 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
    v8 = [appLayouts2 objectAtIndex:0];

    if (v8)
    {
      v9 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v8 alignment:0 animated:0];
      v10 = SBAppendSwitcherModifierResponse(v9, v4);

      v11 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:2];
      v4 = SBAppendSwitcherModifierResponse(v11, v10);
    }
  }

  return v4;
}

- (id)handleTapAppLayoutEvent:(id)event
{
  eventCopy = event;
  appLayout = [eventCopy appLayout];
  if ([appLayout type] == 5)
  {
    v6 = [SBNewWindowRequestSwitcherEventResponse alloc];
    allItems = [appLayout allItems];
    firstObject = [allItems firstObject];
    bundleIdentifier = [firstObject bundleIdentifier];
    v10 = [(SBNewWindowRequestSwitcherEventResponse *)v6 initWithBundleIdentifier:bundleIdentifier];
  }

  else
  {
    allItems = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForTapAppLayoutEvent:eventCopy];
    [allItems setRetainsSiri:{-[SBShelfCarouselSwitcherModifier isSystemAssistantExperiencePersistentSiriEnabled](self, "isSystemAssistantExperiencePersistentSiriEnabled")}];
    v10 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:allItems gestureInitiated:0];
  }

  v14.receiver = self;
  v14.super_class = SBShelfCarouselSwitcherModifier;
  v11 = [(SBSwitcherModifier *)&v14 handleTapAppLayoutEvent:eventCopy];

  v12 = SBAppendSwitcherModifierResponse(v10, v11);

  return v12;
}

- (id)handleShelfFocusedDisplayItemsChangedEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBShelfCarouselSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v9 handleShelfFocusedDisplayItemsChangedEvent:event];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:3];
  v7 = SBAppendSwitcherModifierResponse(v6, v5);

  return v7;
}

- (double)_effectiveMaxCarouselWidth
{
  [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
  v4 = v3;
  [(SBShelfCarouselSwitcherModifier *)self _fittedContentSize];
  result = v5 + v4 * 0.100502513;
  if (result > v4 * 0.899497487)
  {
    return v4 * 0.899497487;
  }

  return result;
}

- (BOOL)_isIndexVisible:(unint64_t)visible
{
  appLayouts = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:visible];

  [(SBShelfCarouselSwitcherModifier *)self opacityForLayoutRole:1 inAppLayout:v6 atIndex:visible];
  LOBYTE(visible) = BSFloatIsZero();

  return visible ^ 1;
}

- (CGSize)_contentSize
{
  [(SBShelfCarouselSwitcherModifier *)self _fittedContentSize];
  v4 = v3;
  v6 = v5;
  [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
  v8 = v7;
  if (v4 >= v7)
  {
    appLayouts = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
    v10 = [appLayouts count];

    if (v10)
    {
      if ([(SBShelfCarouselSwitcherModifier *)self isRTLEnabled])
      {
        [(SBShelfCarouselSwitcherModifier *)self _cardSizeForIndex:0];
        v12 = v11;
      }

      else
      {
        appLayouts2 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
        -[SBShelfCarouselSwitcherModifier _cardSizeForIndex:](self, "_cardSizeForIndex:", [appLayouts2 count] - 1);
        v12 = v14;
      }

      v15 = v8 * 0.899497487;
      if (([(SBShelfCarouselSwitcherModifier *)self isRTLEnabled]& 1) != 0)
      {
        appLayouts3 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
        -[SBShelfCarouselSwitcherModifier _cardSizeForIndex:](self, "_cardSizeForIndex:", [appLayouts3 count] - 1);
        v18 = v17;
      }

      else
      {
        [(SBShelfCarouselSwitcherModifier *)self _cardSizeForIndex:0];
        v18 = v19;
      }

      medusaSettings = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
      [medusaSettings switcherShelfCardScale];
      v22 = v21;

      v23 = v12 * v22 * 0.5;
      v24 = v8 * 0.5 - v15 * 0.5 + v23;
      v25 = v8 * 0.5 + v15 * 0.5;
      v26 = v18 * v22 * 0.5;
      v27 = v25 - v26;
      v28 = v24 - v23;
      [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
      v8 = v4 + v28 + v29 - v27 - v26;
    }

    else
    {
      v8 = 0.0;
    }
  }

  v30 = v8;
  v31 = v6;
  result.height = v31;
  result.width = v30;
  return result;
}

- (CGSize)_fittedContentSize
{
  appLayoutsGenerationCount = [(SBShelfCarouselSwitcherModifier *)self appLayoutsGenerationCount];
  switcherInterfaceOrientation = [(SBShelfCarouselSwitcherModifier *)self switcherInterfaceOrientation];
  [(SBShelfCarouselSwitcherModifier *)self containerViewBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if (*&self->_fittedContentSize_lastAppLayoutsGenCount == __PAIR128__(switcherInterfaceOrientation, appLayoutsGenerationCount) && (v34.origin.x = v6, v34.origin.y = v8, v34.size.width = v10, v34.size.height = v12, CGRectEqualToRect(self->_fittedContentSize_lastContainerViewBounds, v34)) && (v35.origin.x = v14, v35.origin.y = v16, v35.size.width = v18, v35.size.height = v20, CGRectEqualToRect(self->_fittedContentSize_lastSwitcherViewBounds, v35)))
  {
    width = self->_fittedContentSize_lastSize.width;
    height = self->_fittedContentSize_lastSize.height;
  }

  else
  {
    self->_fittedContentSize_lastAppLayoutsGenCount = appLayoutsGenerationCount;
    self->_fittedContentSize_lastOrientation = switcherInterfaceOrientation;
    self->_fittedContentSize_lastContainerViewBounds.origin.x = v6;
    self->_fittedContentSize_lastContainerViewBounds.origin.y = v8;
    self->_fittedContentSize_lastContainerViewBounds.size.width = v10;
    self->_fittedContentSize_lastContainerViewBounds.size.height = v12;
    self->_fittedContentSize_lastSwitcherViewBounds.origin.x = v14;
    self->_fittedContentSize_lastSwitcherViewBounds.origin.y = v16;
    self->_fittedContentSize_lastSwitcherViewBounds.size.width = v18;
    self->_fittedContentSize_lastSwitcherViewBounds.size.height = v20;
    medusaSettings = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
    [medusaSettings switcherShelfCardScale];
    v25 = v24;

    appLayouts = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
    v27 = [appLayouts count];

    if (v27)
    {
      v28 = 0;
      v29 = 0.0;
      do
      {
        [(SBShelfCarouselSwitcherModifier *)self _cardSizeForIndex:v28];
        v29 = v29 + v30 * v25;
        ++v28;
      }

      while (v27 != v28);
    }

    else
    {
      v29 = 0.0;
    }

    width = v29 + (v27 - 1) * 32.0;
    [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
    height = v31;
    self->_fittedContentSize_lastSize.width = width;
    self->_fittedContentSize_lastSize.height = v31;
  }

  v32 = width;
  result.height = height;
  result.width = v32;
  return result;
}

- (CGSize)_centerCardSizeForOrientation:(int64_t)orientation
{
  [(SBShelfCarouselSwitcherModifier *)self containerViewBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  p_centerCardSize_containerViewBounds = &self->_centerCardSize_containerViewBounds;
  if (CGRectIsNull(self->_centerCardSize_containerViewBounds) || (v29.origin.x = p_centerCardSize_containerViewBounds->origin.x, v29.origin.y = self->_centerCardSize_containerViewBounds.origin.y, v29.size.width = self->_centerCardSize_containerViewBounds.size.width, v29.size.height = self->_centerCardSize_containerViewBounds.size.height, v28.origin.x = v6, v28.origin.y = v8, v28.size.width = v10, v28.size.height = v12, !CGRectEqualToRect(v28, v29)))
  {
    p_centerCardSize_containerViewBounds->origin.x = v6;
    self->_centerCardSize_containerViewBounds.origin.y = v8;
    self->_centerCardSize_containerViewBounds.size.width = v10;
    self->_centerCardSize_containerViewBounds.size.height = v12;
    v14 = SBAppLayoutGenericAppLayoutWithConfiguration(1);
    [(SBShelfCarouselSwitcherModifier *)self preferredFrameForLayoutRole:1 inAppLayout:v14 bounds:3 interfaceOrientation:v6, v8, v10, v12];
    v16 = v15;
    [(SBShelfCarouselSwitcherModifier *)self preferredFrameForLayoutRole:1 inAppLayout:v14 bounds:1 interfaceOrientation:v6, v8, v10, v12];
    v18 = v17;
    [(SBShelfCarouselSwitcherModifier *)self centerWindowFrameInInterfaceOrientation:4 centerConfiguration:1];
    self->_centerCardSize_landscapeCardSize.width = v16 * (v19 / v20);
    self->_centerCardSize_landscapeCardSize.height = v16;
    [(SBShelfCarouselSwitcherModifier *)self centerWindowFrameInInterfaceOrientation:1 centerConfiguration:1];
    self->_centerCardSize_portraitCardSize.width = v18 * (v21 / v22);
    self->_centerCardSize_portraitCardSize.height = v18;
  }

  if ((orientation - 1) >= 2)
  {
    v23 = &OBJC_IVAR___SBShelfCarouselSwitcherModifier__centerCardSize_landscapeCardSize;
  }

  else
  {
    v23 = &OBJC_IVAR___SBShelfCarouselSwitcherModifier__centerCardSize_portraitCardSize;
  }

  v24 = (self + *v23);
  v25 = *v24;
  v26 = v24[1];
  result.height = v26;
  result.width = v25;
  return result;
}

- (CGSize)_floatingCardSizeForOrientation:(int64_t)orientation
{
  [(SBShelfCarouselSwitcherModifier *)self containerViewBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  p_floatingCardSize_containerViewBounds = &self->_floatingCardSize_containerViewBounds;
  if (CGRectIsNull(self->_floatingCardSize_containerViewBounds) || (v29.origin.x = p_floatingCardSize_containerViewBounds->origin.x, v29.origin.y = self->_floatingCardSize_containerViewBounds.origin.y, v29.size.width = self->_floatingCardSize_containerViewBounds.size.width, v29.size.height = self->_floatingCardSize_containerViewBounds.size.height, v28.origin.x = v6, v28.origin.y = v8, v28.size.width = v10, v28.size.height = v12, !CGRectEqualToRect(v28, v29)))
  {
    p_floatingCardSize_containerViewBounds->origin.x = v6;
    self->_floatingCardSize_containerViewBounds.origin.y = v8;
    self->_floatingCardSize_containerViewBounds.size.width = v10;
    self->_floatingCardSize_containerViewBounds.size.height = v12;
    v14 = SBAppLayoutGenericAppLayoutWithConfiguration(1);
    [(SBShelfCarouselSwitcherModifier *)self containerViewBounds];
    [(SBShelfCarouselSwitcherModifier *)self preferredFrameForLayoutRole:1 inAppLayout:v14 bounds:3 interfaceOrientation:?];
    v16 = v15;
    [(SBShelfCarouselSwitcherModifier *)self containerViewBounds];
    [(SBShelfCarouselSwitcherModifier *)self preferredFrameForLayoutRole:1 inAppLayout:v14 bounds:1 interfaceOrientation:?];
    v18 = v17;
    [(SBShelfCarouselSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:3 floatingConfiguration:2];
    self->_floatingCardSize_landscapeCardSize.width = v16 * (v19 / v20);
    self->_floatingCardSize_landscapeCardSize.height = v16;
    [(SBShelfCarouselSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:1 floatingConfiguration:2];
    self->_floatingCardSize_portraitCardSize.width = v18 * (v21 / v22);
    self->_floatingCardSize_portraitCardSize.height = v18;
  }

  if ((orientation - 1) >= 2)
  {
    v23 = &OBJC_IVAR___SBShelfCarouselSwitcherModifier__floatingCardSize_landscapeCardSize;
  }

  else
  {
    v23 = &OBJC_IVAR___SBShelfCarouselSwitcherModifier__floatingCardSize_portraitCardSize;
  }

  v24 = (self + *v23);
  v25 = *v24;
  v26 = v24[1];
  result.height = v26;
  result.width = v25;
  return result;
}

@end