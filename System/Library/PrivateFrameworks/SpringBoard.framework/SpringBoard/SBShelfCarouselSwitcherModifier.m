@interface SBShelfCarouselSwitcherModifier
- (BOOL)_isIndexVisible:(unint64_t)a3;
- (BOOL)isLayoutRoleDraggable:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleKillable:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)a3;
- (BOOL)shouldTetherItemsAndAccessoriesInAppLayout:(id)a3;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4;
- (CGRect)_frameForIndex:(unint64_t)a3 applyCarousel:(BOOL)a4;
- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4;
- (CGRect)clippingFrameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5 withBounds:(CGRect)a6;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (CGRect)frameForShelf:(id)a3;
- (CGRect)shelfBackgroundBlurFrame;
- (CGSize)_cardSizeForAppLayout:(id)a3;
- (CGSize)_cardSizeForIndex:(unint64_t)a3;
- (CGSize)_centerCardSizeForOrientation:(int64_t)a3;
- (CGSize)_contentSize;
- (CGSize)_fittedContentSize;
- (CGSize)_floatingCardSizeForOrientation:(int64_t)a3;
- (SBShelfCarouselSwitcherModifier)init;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (_NSRange)_visibleRange;
- (double)_effectiveMaxCarouselWidth;
- (double)backgroundOpacityForIndex:(unint64_t)a3;
- (double)contentPageViewScaleForAppLayout:(id)a3 withScale:(double)a4;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (double)snapshotScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3;
- (id)_orderedVisibleAppLayouts;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)handleInitialSetupEvent:(id)a3;
- (id)handleShelfFocusedDisplayItemsChangedEvent:(id)a3;
- (id)handleTapAppLayoutEvent:(id)a3;
- (id)scrollViewAttributes;
- (id)topMostLayoutElements;
- (id)visibleAppLayouts;
- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)a3;
- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3;
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
  v3 = [(SBShelfCarouselSwitcherModifier *)self _orderedVisibleAppLayouts];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)_orderedVisibleAppLayouts
{
  v3 = [(SBShelfCarouselSwitcherModifier *)self _visibleRange];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v6 = v3;
    v7 = v4;
    v8 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
    v5 = [v8 subarrayWithRange:{v6, v7}];
  }

  return v5;
}

- (_NSRange)_visibleRange
{
  if (self->_hasReceivedInitialSetupEvent)
  {
    v3 = [(SBShelfCarouselSwitcherModifier *)self appLayoutsGenerationCount];
    v4 = [(SBShelfCarouselSwitcherModifier *)self switcherInterfaceOrientation];
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
    if (*&self->_visibleRange_lastAppLayoutsGenCount == __PAIR128__(v4, v3) && (v35.origin.x = v6, v35.origin.y = v8, v35.size.width = v10, v35.size.height = v12, CGRectEqualToRect(self->_visibleRange_lastContainerViewBounds, v35)) && (v36.origin.y = v32, v36.origin.x = v33, v36.size.width = v16, v36.size.height = v18, CGRectEqualToRect(self->_visibleRange_lastSwitcherViewBounds, v36)) && (self->_visibleRange_lastContentOffset.x == v20 ? (v23 = self->_visibleRange_lastContentOffset.y == v22) : (v23 = 0), v23))
    {
      location = self->_visibleRange_lastRange.location;
      length = self->_visibleRange_lastRange.length;
    }

    else
    {
      self->_visibleRange_lastAppLayoutsGenCount = v3;
      self->_visibleRange_lastOrientation = v4;
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
      v26 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
      v27 = [v26 count];

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

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  [(SBShelfCarouselSwitcherModifier *)self scaleForIndex:?];
  v6 = v5;
  v7 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [v7 switcherShelfCardScale];
  v9 = v8;

  v10 = (v6 - v9 * 0.75) * 0.25 / (v9 - v9 * 0.75) + 0.75;
  [(SBShelfCarouselSwitcherModifier *)self frameForIndex:a3];
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

- (CGRect)frameForIndex:(unint64_t)a3
{
  [(SBShelfCarouselSwitcherModifier *)self _frameForIndex:a3 applyCarousel:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  if ([v11 environment] == 1)
  {
    v28.receiver = self;
    v28.super_class = SBShelfCarouselSwitcherModifier;
    [(SBShelfCarouselSwitcherModifier *)&v28 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    [(SBShelfCarouselSwitcherModifier *)self _cardSizeForAppLayout:v11];

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

- (CGRect)_frameForIndex:(unint64_t)a3 applyCarousel:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (([(SBShelfCarouselSwitcherModifier *)self isRTLEnabled]& 1) == 0)
  {
    v8 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
    v7 = [v8 count] + ~a3;
  }

  [(SBShelfCarouselSwitcherModifier *)self _cardSizeForIndex:a3];
  v10 = v9;
  v11 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [v11 switcherShelfCardScale];
  v13 = v12;

  if (v7)
  {
    v14 = 0;
    v15 = 0.0;
    v16 = -1;
    v17 = v7;
    do
    {
      v18 = v14;
      if (([(SBShelfCarouselSwitcherModifier *)self isRTLEnabled]& 1) == 0)
      {
        v19 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
        v18 = [v19 count] + v16;
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
      v32 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
      -[SBShelfCarouselSwitcherModifier _cardSizeForIndex:](self, "_cardSizeForIndex:", [v32 count] - 1);
      v31 = v33;
    }

    v34 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
    [v34 switcherShelfCardScale];
    v36 = v35;

    v29 = v28 * 0.5 - v28 * 0.899497487 * 0.5 + v31 * v36 * 0.5 - v31 * v36 * 0.5;
  }

  else
  {
    v29 = (v27 - v26) * 0.5;
  }

  v37 = v24 + v29;
  if (v4)
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
      if (!v7 || (-[SBShelfCarouselSwitcherModifier appLayouts](self, "appLayouts"), v53 = objc_claimAutoreleasedReturnValue(), v54 = [v53 count] - 1, v53, v7 == v54))
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
      if (!v7 || (-[SBShelfCarouselSwitcherModifier appLayouts](self, "appLayouts"), v48 = objc_claimAutoreleasedReturnValue(), v49 = [v48 count] - 1, v48, v7 == v49))
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
    if (!BSFloatIsOne() && (BSFloatIsZero() & 1) == 0 && v7)
    {
      v67 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
      [v67 count];
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

- (double)scaleForIndex:(unint64_t)a3
{
  [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
  v6 = v5;
  [(SBShelfCarouselSwitcherModifier *)self _frameForIndex:a3 applyCarousel:1];
  UIRectGetCenter();
  v8 = v7;
  v9 = v6 * 0.5;
  if ([(SBShelfCarouselSwitcherModifier *)self isRTLEnabled]!= v7 <= v6 * 0.5)
  {
    v10 = a3 - 1;
  }

  else
  {
    v10 = a3 + 1;
  }

  v11 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  v12 = [v11 count] - 1;
  v13 = v10 & ~(v10 >> 63);

  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  [(SBShelfCarouselSwitcherModifier *)self _cardSizeForIndex:a3];
  v16 = v15;
  [(SBShelfCarouselSwitcherModifier *)self _frameForIndex:v14 applyCarousel:0];
  UIRectGetCenter();
  v18 = v17;
  v19 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [v19 switcherShelfCardScale];
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
  v41 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  v42 = [v41 count];

  v43 = 0.76;
  if (v40 >= 0.76 || v42 >= 3)
  {
    v43 = v40;
  }

  return v21 * v43;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  [(SBShelfCarouselSwitcherModifier *)self scaleForIndex:a5, a4];
  v6 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [v6 switcherShelfCardScale];
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

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [v5 switcherShelfCardScale];

  [(SBShelfCarouselSwitcherModifier *)self scaleForIndex:a3];
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
  v3 = [(SBShelfCarouselSwitcherModifier *)self _visibleRange];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v6 = v3;
    v7 = v4;
    v5 = objc_opt_new();
    v8 = [(SBShelfCarouselSwitcherModifier *)self isRTLEnabled];
    if (v6 < v6 + v7)
    {
      v9 = v8;
      do
      {
        [(SBShelfCarouselSwitcherModifier *)self switcherViewBounds];
        UIRectGetCenter();
        v11 = v10;
        [(SBShelfCarouselSwitcherModifier *)self _frameForIndex:v6 applyCarousel:1];
        UIRectGetCenter();
        v13 = v12;
        v14 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
        v15 = [v14 objectAtIndex:v6];

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
  v2 = [(SBShelfCarouselSwitcherModifier *)self visibleAppLayouts];
  v3 = [v2 allObjects];

  return v3;
}

- (double)snapshotScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v4 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings:a3];
  [v4 switcherShelfCardScale];
  v6 = v5;

  return v6;
}

- (double)contentPageViewScaleForAppLayout:(id)a3 withScale:(double)a4
{
  v4 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings:a3];
  [v4 switcherShelfCardScale];
  v6 = v5;

  return v6;
}

- (CGSize)_cardSizeForIndex:(unint64_t)a3
{
  v5 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  [(SBShelfCarouselSwitcherModifier *)self _cardSizeForAppLayout:v6];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)_cardSizeForAppLayout:(id)a3
{
  if (a3)
  {
    v4 = [a3 environment];
    if (v4 == 1)
    {
      [(SBShelfCarouselSwitcherModifier *)self containerViewBounds];
      v6 = v5;
      v8 = v7;
    }

    else
    {
      v9 = v4;
      v10 = [(SBShelfCarouselSwitcherModifier *)self switcherInterfaceOrientation];
      if (v9 == 2)
      {
        [(SBShelfCarouselSwitcherModifier *)self _floatingCardSizeForOrientation:v10];
      }

      else
      {
        [(SBShelfCarouselSwitcherModifier *)self _centerCardSizeForOrientation:v10];
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

- (BOOL)isLayoutRoleKillable:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v7 = a4;
  if ([v7 type] == 5 || (-[SBShelfCarouselSwitcherModifier shelfFocusedDisplayItems](self, "shelfFocusedDisplayItems"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "containsAnyItemFromSet:", v8), v8, (v9 & 1) != 0))
  {
    v10 = 0;
  }

  else
  {
    v11 = [v7 isCenterOverSplit] ^ 1;
    if (a3 == 4)
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

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v3 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [v3 switcherShelfCardCornerRadius];
  [v3 switcherShelfCardScale];
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

- (CGRect)frameForShelf:(id)a3
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

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = objc_opt_new();
  [v4 setUpdateMode:1];
  [v4 setTitleAndIconOpacityUpdateMode:3];
  v5 = [(SBShelfCarouselSwitcherModifier *)self switcherSettings];
  v6 = [v5 animationSettings];
  v7 = [v6 layoutSettings];
  [v4 setLayoutSettings:v7];

  v8 = [(SBShelfCarouselSwitcherModifier *)self switcherSettings];
  v9 = [v8 animationSettings];
  v10 = [v9 opacitySettings];
  [v4 setOpacitySettings:v10];

  return v4;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3
{
  [(SBShelfCarouselSwitcherModifier *)self frameForIndex:a3];

  return CGRectGetWidth(*&v3);
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  v6 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [v6 switcherShelfCardScale];
  v8 = v7;

  [(SBShelfCarouselSwitcherModifier *)self scaleForIndex:a4];
  v10 = v9;
  result = 1.0;
  if (v10 < v8 * 0.765)
  {
    return (v10 + v8 * -0.75) / (v8 * 0.765 + v8 * -0.75) + 0.0;
  }

  return result;
}

- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4
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

- (CGRect)clippingFrameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5 withBounds:(CGRect)a6
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

- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)a3
{
  v3 = [a3 itemForLayoutRole:2];
  v4 = v3 != 0;

  return v4;
}

- (unint64_t)transactionCompletionOptions
{
  v3 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  if ([v3 count])
  {
    v4 = [(SBShelfCarouselSwitcherModifier *)self isReduceMotionEnabled];

    if (v4)
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

- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)a3
{
  v5 = [(SBShelfCarouselSwitcherModifier *)self _visibleRange];
  if (v5 > a3)
  {
    return a3;
  }

  v7 = v5;
  v8 = v6;
  if (v5 + v6 <= a3)
  {
    return a3;
  }

  [(SBShelfCarouselSwitcherModifier *)self titleAndIconOpacityForIndex:a3];
  i = a3;
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
        return a3;
      }
    }
  }

  if (i == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a3;
  }

  return i;
}

- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3
{
  v5 = [(SBShelfCarouselSwitcherModifier *)self _visibleRange];
  if (v5 >= v5 + v6)
  {
    return a3;
  }

  v7 = v5;
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
      return a3;
    }
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a3;
  }

  return v7;
}

- (BOOL)isLayoutRoleDraggable:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([v6 type] || (-[SBShelfCarouselSwitcherModifier shelfFocusedDisplayItems](self, "shelfFocusedDisplayItems"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "containsAnyItemFromSet:", v7), v7, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    v11 = [v6 leafAppLayoutForRole:a3];
    v12 = [v11 itemForLayoutRole:1];
    v9 = [(SBShelfCarouselSwitcherModifier *)self displayItemSupportsMedusa:v12];
  }

  return v9;
}

- (BOOL)shouldTetherItemsAndAccessoriesInAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBShelfCarouselSwitcherModifier *)self shelfFocusedDisplayItems];
  if ([v4 containsAnyItemFromSet:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 itemForLayoutRole:4];
    v6 = v7 != 0;
  }

  return v6;
}

- (id)appLayoutsToResignActive
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = MEMORY[0x277CBEB98];
  v4 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  v5 = [v3 setWithArray:v4];
  v6 = [v2 dictionaryWithObject:v5 forKey:&unk_283372128];

  return v6;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4
{
  [(SBShelfCarouselSwitcherModifier *)self _frameForIndex:a3 applyCarousel:0];
  v6 = v5;
  UIRectGetCenter();
  v8 = v7;
  [(SBShelfCarouselSwitcherModifier *)self scrollViewContentOffset];
  v10 = v8 + v9;
  v11 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
  [v11 switcherShelfCardScale];
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

- (double)backgroundOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = [(SBShelfCarouselSwitcherModifier *)self shelfFocusedDisplayItems];
  if ([v6 containsAnyItemFromSet:v7])
  {
    v8 = [v6 isSplitConfiguration];

    v9 = 1.0;
    if (v8)
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

- (id)handleInitialSetupEvent:(id)a3
{
  v13.receiver = self;
  v13.super_class = SBShelfCarouselSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v13 handleInitialSetupEvent:a3];
  self->_hasReceivedInitialSetupEvent = 1;
  v5 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
    v8 = [v7 objectAtIndex:0];

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

- (id)handleTapAppLayoutEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 appLayout];
  if ([v5 type] == 5)
  {
    v6 = [SBNewWindowRequestSwitcherEventResponse alloc];
    v7 = [v5 allItems];
    v8 = [v7 firstObject];
    v9 = [v8 bundleIdentifier];
    v10 = [(SBNewWindowRequestSwitcherEventResponse *)v6 initWithBundleIdentifier:v9];
  }

  else
  {
    v7 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForTapAppLayoutEvent:v4];
    [v7 setRetainsSiri:{-[SBShelfCarouselSwitcherModifier isSystemAssistantExperiencePersistentSiriEnabled](self, "isSystemAssistantExperiencePersistentSiriEnabled")}];
    v10 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v7 gestureInitiated:0];
  }

  v14.receiver = self;
  v14.super_class = SBShelfCarouselSwitcherModifier;
  v11 = [(SBSwitcherModifier *)&v14 handleTapAppLayoutEvent:v4];

  v12 = SBAppendSwitcherModifierResponse(v10, v11);

  return v12;
}

- (id)handleShelfFocusedDisplayItemsChangedEvent:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBShelfCarouselSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v9 handleShelfFocusedDisplayItemsChangedEvent:a3];
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

- (BOOL)_isIndexVisible:(unint64_t)a3
{
  v5 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  [(SBShelfCarouselSwitcherModifier *)self opacityForLayoutRole:1 inAppLayout:v6 atIndex:a3];
  LOBYTE(a3) = BSFloatIsZero();

  return a3 ^ 1;
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
    v9 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
    v10 = [v9 count];

    if (v10)
    {
      if ([(SBShelfCarouselSwitcherModifier *)self isRTLEnabled])
      {
        [(SBShelfCarouselSwitcherModifier *)self _cardSizeForIndex:0];
        v12 = v11;
      }

      else
      {
        v13 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
        -[SBShelfCarouselSwitcherModifier _cardSizeForIndex:](self, "_cardSizeForIndex:", [v13 count] - 1);
        v12 = v14;
      }

      v15 = v8 * 0.899497487;
      if (([(SBShelfCarouselSwitcherModifier *)self isRTLEnabled]& 1) != 0)
      {
        v16 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
        -[SBShelfCarouselSwitcherModifier _cardSizeForIndex:](self, "_cardSizeForIndex:", [v16 count] - 1);
        v18 = v17;
      }

      else
      {
        [(SBShelfCarouselSwitcherModifier *)self _cardSizeForIndex:0];
        v18 = v19;
      }

      v20 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
      [v20 switcherShelfCardScale];
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
  v3 = [(SBShelfCarouselSwitcherModifier *)self appLayoutsGenerationCount];
  v4 = [(SBShelfCarouselSwitcherModifier *)self switcherInterfaceOrientation];
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
  if (*&self->_fittedContentSize_lastAppLayoutsGenCount == __PAIR128__(v4, v3) && (v34.origin.x = v6, v34.origin.y = v8, v34.size.width = v10, v34.size.height = v12, CGRectEqualToRect(self->_fittedContentSize_lastContainerViewBounds, v34)) && (v35.origin.x = v14, v35.origin.y = v16, v35.size.width = v18, v35.size.height = v20, CGRectEqualToRect(self->_fittedContentSize_lastSwitcherViewBounds, v35)))
  {
    width = self->_fittedContentSize_lastSize.width;
    height = self->_fittedContentSize_lastSize.height;
  }

  else
  {
    self->_fittedContentSize_lastAppLayoutsGenCount = v3;
    self->_fittedContentSize_lastOrientation = v4;
    self->_fittedContentSize_lastContainerViewBounds.origin.x = v6;
    self->_fittedContentSize_lastContainerViewBounds.origin.y = v8;
    self->_fittedContentSize_lastContainerViewBounds.size.width = v10;
    self->_fittedContentSize_lastContainerViewBounds.size.height = v12;
    self->_fittedContentSize_lastSwitcherViewBounds.origin.x = v14;
    self->_fittedContentSize_lastSwitcherViewBounds.origin.y = v16;
    self->_fittedContentSize_lastSwitcherViewBounds.size.width = v18;
    self->_fittedContentSize_lastSwitcherViewBounds.size.height = v20;
    v23 = [(SBShelfCarouselSwitcherModifier *)self medusaSettings];
    [v23 switcherShelfCardScale];
    v25 = v24;

    v26 = [(SBShelfCarouselSwitcherModifier *)self appLayouts];
    v27 = [v26 count];

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

- (CGSize)_centerCardSizeForOrientation:(int64_t)a3
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

  if ((a3 - 1) >= 2)
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

- (CGSize)_floatingCardSizeForOrientation:(int64_t)a3
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

  if ((a3 - 1) >= 2)
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