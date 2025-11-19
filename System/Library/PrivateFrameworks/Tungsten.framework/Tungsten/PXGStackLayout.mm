@interface PXGStackLayout
- (CGRect)axFrame;
- (PXGStackLayout)init;
- (PXGStackLayoutSublayoutAlignmentDelegate)sublayoutAlignmentDelegate;
- (PXGSublayoutFaultingDelegate)sublayoutFaultingDelegate;
- (UIEdgeInsets)additionalSafeAreaInsetsForSublayout:(id)a3;
- (UIEdgeInsets)faultInOutsets;
- (UIEdgeInsets)faultOutOutsets;
- (UIEdgeInsets)flexibleRegionInsets;
- (UIEdgeInsets)padding;
- (void)_invalidateEstimatedSublayoutContentSizes;
- (void)_invalidateFirstFloatingLayout;
- (void)_updateFirstFloatingLayout;
- (void)_updateInterlayoutSpacing;
- (void)_updateSublayouts;
- (void)_updateSublayoutsForAnchoringSublayoutIndex:(int64_t)a3 enumerationOptions:(unint64_t)a4 sublayoutIndexRange:(_NSRange)a5 shouldFaultInAnchoringSublayout:(BOOL)a6 sublayoutIndexesToAlignToVisibleTopEdge:(id)a7 subreferenceSize:(CGSize)a8 visibleRect:(CGRect *)a9;
- (void)dealloc;
- (void)didAddSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)insertSublayoutProvider:(id)a3 inRange:(_NSRange)a4;
- (void)invalidateAdditionalSafeAreaInsets;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)scrollSpeedRegimeDidChange;
- (void)setAxis:(int64_t)a3;
- (void)setFaultInOutsets:(UIEdgeInsets)a3;
- (void)setInterlayoutSpacing:(double)a3;
- (void)setPadding:(UIEdgeInsets)a3;
- (void)setSublayoutAlignmentDelegate:(id)a3;
- (void)sublayoutDidChangeContentSize:(id)a3;
- (void)sublayoutDidChangeLastBaseline:(id)a3;
- (void)sublayoutNeedsUpdate:(id)a3;
- (void)update;
- (void)viewEnvironmentDidChange;
- (void)visibleRectDidChange;
- (void)willRemoveSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5;
- (void)willUpdate;
@end

@implementation PXGStackLayout

- (UIEdgeInsets)faultOutOutsets
{
  top = self->_faultOutOutsets.top;
  left = self->_faultOutOutsets.left;
  bottom = self->_faultOutOutsets.bottom;
  right = self->_faultOutOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)faultInOutsets
{
  top = self->_faultInOutsets.top;
  left = self->_faultInOutsets.left;
  bottom = self->_faultInOutsets.bottom;
  right = self->_faultInOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PXGSublayoutFaultingDelegate)sublayoutFaultingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sublayoutFaultingDelegate);

  return WeakRetained;
}

- (PXGStackLayoutSublayoutAlignmentDelegate)sublayoutAlignmentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sublayoutAlignmentDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)flexibleRegionInsets
{
  top = self->_flexibleRegionInsets.top;
  left = self->_flexibleRegionInsets.left;
  bottom = self->_flexibleRegionInsets.bottom;
  right = self->_flexibleRegionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)axFrame
{
  [(PXGLayout *)self frame];
  [(PXGStackLayout *)self padding];

  PXEdgeInsetsInsetRect();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setInterlayoutSpacing:(double)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    PXGAssertErrValidFloat(a3);
    self->_interlayoutSpacing = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 2;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 2) != 0)
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout setInterlayoutSpacing:]"];
        [v8 handleFailureInFunction:v9 file:@"PXGStackLayout.m" lineNumber:761 description:{@"invalidating %lu after it already has been updated", 2}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 2;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setFaultInOutsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  p_faultInOutsets = &self->_faultInOutsets;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_faultInOutsets->top = top;
    p_faultInOutsets->left = left;
    p_faultInOutsets->bottom = bottom;
    p_faultInOutsets->right = right;
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
        v12 = [MEMORY[0x277CCA890] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout setFaultInOutsets:]"];
        [v12 handleFailureInFunction:v13 file:@"PXGStackLayout.m" lineNumber:750 description:{@"invalidating %lu after it already has been updated", 1}];

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

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setPadding:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  p_padding = &self->_padding;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_padding->top = top;
    p_padding->left = left;
    p_padding->bottom = bottom;
    p_padding->right = right;
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
        v12 = [MEMORY[0x277CCA890] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout setPadding:]"];
        [v12 handleFailureInFunction:v13 file:@"PXGStackLayout.m" lineNumber:742 description:{@"invalidating %lu after it already has been updated", 1}];

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

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setAxis:(int64_t)a3
{
  if (self->_axis == a3)
  {
    return;
  }

  self->_axis = a3;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (!needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 1;
      if (!willPerformUpdate)
      {
        [(PXGLayout *)self setNeedsUpdate];
      }

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
LABEL_6:
    if (self->_updateFlags.updated)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout setAxis:]"];
      [v7 handleFailureInFunction:v8 file:@"PXGStackLayout.m" lineNumber:729 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }
  }

  p_updateFlags->needsUpdate = needsUpdate | 1;
LABEL_8:

  [(PXGLayout *)self setNeedsUpdateOfScrollableAxis];
}

- (void)scrollSpeedRegimeDidChange
{
  v8.receiver = self;
  v8.super_class = PXGStackLayout;
  [(PXGLayout *)&v8 scrollSpeedRegimeDidChange];
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout scrollSpeedRegimeDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGStackLayout.m" lineNumber:721 description:{@"invalidating %lu after it already has been updated", 1}];

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
    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)displayScaleDidChange
{
  v8.receiver = self;
  v8.super_class = PXGStackLayout;
  [(PXGLayout *)&v8 displayScaleDidChange];
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout displayScaleDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGStackLayout.m" lineNumber:716 description:{@"invalidating %lu after it already has been updated", 1}];

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
    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)visibleRectDidChange
{
  v8.receiver = self;
  v8.super_class = PXGStackLayout;
  [(PXGLayout *)&v8 visibleRectDidChange];
  if (self->_isUpdatingSublayouts)
  {
    [(PXGStackLayout *)self _invalidateFirstFloatingLayout];
    return;
  }

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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout visibleRectDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGStackLayout.m" lineNumber:710 description:{@"invalidating %lu after it already has been updated", 1}];

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
    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)referenceDepthDidChange
{
  v8.receiver = self;
  v8.super_class = PXGStackLayout;
  [(PXGLayout *)&v8 referenceDepthDidChange];
  if (!self->_isUpdatingSublayouts)
  {
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
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout referenceDepthDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGStackLayout.m" lineNumber:700 description:{@"invalidating %lu after it already has been updated", 1}];

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
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)referenceSizeDidChange
{
  v8.receiver = self;
  v8.super_class = PXGStackLayout;
  [(PXGLayout *)&v8 referenceSizeDidChange];
  [(PXGStackLayout *)self _invalidateEstimatedSublayoutContentSizes];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 2;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 2) != 0)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout referenceSizeDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGStackLayout.m" lineNumber:693 description:{@"invalidating %lu after it already has been updated", 2}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 2;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)viewEnvironmentDidChange
{
  v8.receiver = self;
  v8.super_class = PXGStackLayout;
  [(PXGLayout *)&v8 viewEnvironmentDidChange];
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout viewEnvironmentDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGStackLayout.m" lineNumber:686 description:{@"invalidating %lu after it already has been updated", 1}];

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
    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)sublayoutDidChangeLastBaseline:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXGStackLayout;
  [(PXGLayout *)&v10 sublayoutDidChangeLastBaseline:v4];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 3;
        goto LABEL_8;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 3) != 0)
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout sublayoutDidChangeLastBaseline:]"];
        [v8 handleFailureInFunction:v9 file:@"PXGStackLayout.m" lineNumber:680 description:{@"invalidating %lu after it already has been updated", 3}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 3;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }

LABEL_8:
}

- (void)sublayoutDidChangeContentSize:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXGStackLayout;
  [(PXGLayout *)&v10 sublayoutDidChangeContentSize:v4];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 3;
        goto LABEL_8;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 3) != 0)
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout sublayoutDidChangeContentSize:]"];
        [v8 handleFailureInFunction:v9 file:@"PXGStackLayout.m" lineNumber:672 description:{@"invalidating %lu after it already has been updated", 3}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 3;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }

LABEL_8:
}

- (void)sublayoutNeedsUpdate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXGStackLayout;
  [(PXGLayout *)&v10 sublayoutNeedsUpdate:v4];
  if (self->_isUpdatingSublayouts)
  {
    [(PXGLayout *)self assumeWillUpdateSublayoutInUpdatePass:v4];
    goto LABEL_9;
  }

  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_8:
      p_updateFlags->needsUpdate = needsUpdate | 3;
      goto LABEL_9;
    }

LABEL_7:
    if ((self->_updateFlags.updated & 3) != 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout sublayoutNeedsUpdate:]"];
      [v8 handleFailureInFunction:v9 file:@"PXGStackLayout.m" lineNumber:662 description:{@"invalidating %lu after it already has been updated", 3}];

      abort();
    }

    goto LABEL_8;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_7;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 3;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }

LABEL_9:
}

- (void)willRemoveSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = PXGStackLayout;
  [(PXGLayout *)&v14 willRemoveSublayout:v8 atIndex:a4 flags:a5];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 3;
        goto LABEL_8;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 3) != 0)
      {
        v12 = [MEMORY[0x277CCA890] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout willRemoveSublayout:atIndex:flags:]"];
        [v12 handleFailureInFunction:v13 file:@"PXGStackLayout.m" lineNumber:654 description:{@"invalidating %lu after it already has been updated", 3}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 3;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }

LABEL_8:
}

- (void)didAddSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = PXGStackLayout;
  [(PXGLayout *)&v14 didAddSublayout:v8 atIndex:a4 flags:a5];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 3;
        goto LABEL_8;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 3) != 0)
      {
        v12 = [MEMORY[0x277CCA890] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout didAddSublayout:atIndex:flags:]"];
        [v12 handleFailureInFunction:v13 file:@"PXGStackLayout.m" lineNumber:646 description:{@"invalidating %lu after it already has been updated", 3}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 3;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }

LABEL_8:
}

- (void)insertSublayoutProvider:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v13.receiver = self;
  v13.super_class = PXGStackLayout;
  [(PXGLayout *)&v13 insertSublayoutProvider:v7 inRange:location, length];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        goto LABEL_8;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v11 = [MEMORY[0x277CCA890] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout insertSublayoutProvider:inRange:]"];
        [v11 handleFailureInFunction:v12 file:@"PXGStackLayout.m" lineNumber:638 description:{@"invalidating %lu after it already has been updated", 1}];

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
      [(PXGLayout *)self setNeedsUpdate];
    }
  }

LABEL_8:
}

- (void)_updateFirstFloatingLayout
{
  if ([(NSSet *)self->_sublayoutsToAlignToVisibleTopEdge count])
  {
    [(PXGLayout *)self visibleRect];
    [(PXGLayout *)self safeAreaInsets];
    PXEdgeInsetsInsetRect();
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v13[3] = 0;
    v11 = [(PXGLayout *)self sublayoutDataStore];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__PXGStackLayout__updateFirstFloatingLayout__block_invoke;
    v12[3] = &unk_2782A87A0;
    v12[6] = v4;
    v12[7] = v6;
    v12[8] = v8;
    v12[9] = v10;
    v12[4] = self;
    v12[5] = v13;
    [v11 enumerateSublayoutGeometriesUsingBlock:v12];

    _Block_object_dispose(v13, 8);
  }
}

void __44__PXGStackLayout__updateFirstFloatingLayout__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v6 = *a4;
  if ([*(*(a1 + 32) + 912) containsObject:?])
  {
    *(a3 + 56) = *(a1 + 56) + *(*(*(a1 + 40) + 8) + 24);
    *(*(*(a1 + 40) + 8) + 24) = *(a3 + 40) + *(*(*(a1 + 40) + 8) + 24);
  }
}

- (void)_invalidateFirstFloatingLayout
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_postUpdateFlags.updated)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout _invalidateFirstFloatingLayout]"];
      [v6 handleFailureInFunction:v7 file:@"PXGStackLayout.m" lineNumber:611 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)_updateSublayouts
{
  v3 = [(PXGLayout *)self sublayoutDataStore];
  v4 = [v3 count];
  if (self->_isUpdatingSublayouts)
  {
    v71 = [MEMORY[0x277CCA890] currentHandler];
    [v71 handleFailureInMethod:a2 object:self file:@"PXGStackLayout.m" lineNumber:365 description:{@"Invalid parameter not satisfying: %@", @"!_isUpdatingSublayouts"}];
  }

  self->_isUpdatingSublayouts = 1;
  v5 = [(PXGStackLayout *)self axis];
  if (!v5)
  {
    v72 = [MEMORY[0x277CCA890] currentHandler];
    [v72 handleFailureInMethod:a2 object:self file:@"PXGStackLayout.m" lineNumber:369 description:{@"stacking axis is undefined %@", self}];

    [(PXGStackLayout *)self padding];
    [(PXGLayout *)self referenceSize];
    v73 = [MEMORY[0x277CCA890] currentHandler];
    [v73 handleFailureInMethod:a2 object:self file:@"PXGStackLayout.m" lineNumber:376 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v6 = v5;
  [(PXGStackLayout *)self padding];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(PXGLayout *)self referenceSize];
  v17 = 0.0;
  v18 = v8 + v12;
  v19 = v10 + v14;
  v20 = v15 - (v10 + v14);
  if (v6 == 1)
  {
    v21 = v16;
  }

  else
  {
    v21 = 0.0;
  }

  if (v6 == 1)
  {
    v17 = v15;
  }

  else
  {
    v20 = 0.0;
  }

  if (v6 == 2)
  {
    v22 = v16 - (v8 + v12);
  }

  else
  {
    v22 = v21;
  }

  if (v6 == 2)
  {
    v23 = v15;
  }

  else
  {
    v23 = v20;
  }

  if (v6 == 2)
  {
    v24 = v16;
  }

  else
  {
    v24 = v17;
  }

  v75 = v24;
  v127 = 0;
  v128 = &v127;
  v129 = 0x4010000000;
  v130 = "";
  v131 = 0u;
  v132 = 0u;
  [(PXGLayout *)self visibleRect];
  *&v131 = v25;
  *(&v131 + 1) = v26;
  *&v132 = v27;
  *(&v132 + 1) = v28;
  self->_sublayoutOriginsBeforeUpdate = malloc_type_realloc(self->_sublayoutOriginsBeforeUpdate, 24 * v4, 0x42760281uLL);
  v29 = [v3 geometries];
  if (v4 >= 1)
  {
    sublayoutOriginsBeforeUpdate = self->_sublayoutOriginsBeforeUpdate;
    v31 = v29 + 48;
    v32 = v4;
    do
    {
      v33 = *v31;
      sublayoutOriginsBeforeUpdate->var2 = *(v31 + 16);
      *&sublayoutOriginsBeforeUpdate->var0 = v33;
      ++sublayoutOriginsBeforeUpdate;
      v31 += 136;
      --v32;
    }

    while (v32);
  }

  v120 = 0;
  v121 = &v120;
  v122 = 0x3810000000;
  v123 = "";
  v124 = v10;
  v125 = v8;
  v126 = 0;
  v116 = 0;
  v117 = &v116;
  v118 = 0x2020000000;
  v119 = 0x7FFFFFFFFFFFFFFFLL;
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  v34 = [(PXGLayout *)self anchoredContentEdges];
  if (v34)
  {
    if (v34)
    {
      v35 = 0;
    }

    else
    {
      if ((v34 & 4) == 0)
      {
LABEL_30:
        v37 = [(PXGLayout *)self shouldFaultInContentAtAnchoredContentEdges];
        *(v113 + 24) = v37;
        goto LABEL_31;
      }

      v35 = v4 - 1;
    }

    v117[3] = v35;
    goto LABEL_30;
  }

  v36 = [(PXGLayout *)self anchoredSublayoutIndex];
  if (v36 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v117[3] = v36;
    *(v113 + 24) = 1;
  }

LABEL_31:
  v38 = [(PXGStackLayout *)self sublayoutAlignmentDelegate];
  v39 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v40 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = __35__PXGStackLayout__updateSublayouts__block_invoke;
  v100[3] = &unk_2782A8750;
  v104 = &v120;
  v100[4] = self;
  v108 = v23;
  v109 = v22;
  v105 = &v127;
  v106 = &v116;
  v107 = &v112;
  v110 = v6;
  v111 = a2;
  v41 = v38;
  v101 = v41;
  v42 = v39;
  v102 = v42;
  v43 = v40;
  v103 = v43;
  [v3 enumerateSublayoutGeometriesUsingBlock:v100];
  v44 = v117[3];
  if (v44 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v117[3] = v4 - 1;
    v44 = v4 - 1;
  }

  if ((v44 & 0x8000000000000000) == 0 && v4 > v44)
  {
    [(PXGStackLayout *)self _updateSublayoutsForAnchoringSublayoutIndex:v44 enumerationOptions:0 sublayoutIndexRange:v44 shouldFaultInAnchoringSublayout:v4 - v44 sublayoutIndexesToAlignToVisibleTopEdge:*(v113 + 24) subreferenceSize:v42 visibleRect:v23, v22, v128 + 4];
    [(PXGStackLayout *)self _updateSublayoutsForAnchoringSublayoutIndex:v117[3] enumerationOptions:2 sublayoutIndexRange:0 shouldFaultInAnchoringSublayout:v117[3] sublayoutIndexesToAlignToVisibleTopEdge:*(v113 + 24) subreferenceSize:v42 visibleRect:v23, v22, v128 + 4];
  }

  v45 = *(MEMORY[0x277D3CF90] + 16);
  *&self->_flexibleRegionInsets.top = *MEMORY[0x277D3CF90];
  *&self->_flexibleRegionInsets.bottom = v45;
  v46 = v121;
  v121[4] = v10;
  v46[5] = v8;
  v46[6] = 0.0;
  v93 = 0;
  v94 = &v93;
  v95 = 0x3810000000;
  v96 = "";
  v97 = v10;
  v98 = v8;
  v99 = 0;
  [(PXGLayout *)self visibleRect];
  [(PXGLayout *)self safeAreaInsets];
  PXEdgeInsetsInsetRect();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __35__PXGStackLayout__updateSublayouts__block_invoke_2;
  v80[3] = &unk_2782A8778;
  v55 = v42;
  v81 = v55;
  v82 = self;
  v84 = &v93;
  v86 = v6;
  v87 = a2;
  v88 = v4;
  v56 = v43;
  v83 = v56;
  v85 = &v120;
  v89 = v48;
  v90 = v50;
  v91 = v52;
  v92 = v54;
  [v3 enumerateSublayoutGeometriesUsingBlock:v80];
  if (v4 != [v3 count])
  {
    v74 = [MEMORY[0x277CCA890] currentHandler];
    [v74 handleFailureInMethod:a2 object:self file:@"PXGStackLayout.m" lineNumber:569 description:{@"number of sublayouts unexpectedly changed during update pass of %@", self}];
  }

  v57 = [v3 geometries];
  if (v4 >= 1)
  {
    v58 = self->_sublayoutOriginsBeforeUpdate;
    v59 = (v57 + 64);
    while (1)
    {
      var1 = v58->var1;
      var2 = v58->var2;
      v62 = v58->var0 == *(v59 - 2) && var1 == *(v59 - 1);
      if (!v62 || var2 != *v59)
      {
        break;
      }

      ++v58;
      v59 += 17;
      if (!--v4)
      {
        goto LABEL_49;
      }
    }

    [(PXGLayout *)self didChangeSublayoutOrigins:v58->var0];
  }

LABEL_49:
  v64 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __35__PXGStackLayout__updateSublayouts__block_invoke_3;
  v77[3] = &unk_2782AAF40;
  v65 = v64;
  v78 = v65;
  v66 = v3;
  v79 = v66;
  [v55 enumerateIndexesUsingBlock:v77];
  v67 = [v65 copy];
  sublayoutsToAlignToVisibleTopEdge = self->_sublayoutsToAlignToVisibleTopEdge;
  self->_sublayoutsToAlignToVisibleTopEdge = v67;

  if (v6 == 1)
  {
    if (v12 + v94[5] >= v18)
    {
      v70 = v12 + v94[5];
    }

    else
    {
      v70 = v18;
    }

    v69 = v75;
  }

  else
  {
    v69 = 0.0;
    v70 = 0.0;
    if (v6 == 2)
    {
      v69 = v14 + v94[4];
      if (v69 < v19)
      {
        v69 = v19;
      }

      v70 = v75;
    }
  }

  [(PXGStackLayout *)self сontentSizeForProposedContentSize:v69, v70];
  [(PXGLayout *)self setContentSize:?];
  [(PXGLayout *)self changeVisibleRectToProposedVisibleRect:v128[4], v128[5], v128[6], v128[7]];
  self->_isUpdatingSublayouts = 0;

  _Block_object_dispose(&v93, 8);
  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&v116, 8);
  _Block_object_dispose(&v120, 8);
  _Block_object_dispose(&v127, 8);
}

void __35__PXGStackLayout__updateSublayouts__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 32);
  *(a3 + 64) = *(v8 + 48);
  *(a3 + 48) = v9;
  v32 = *a4;
  v10 = (a3 + 32);
  if (PXSizeIsNull())
  {
    if (*a4)
    {
      *v10 = *(*(*(a1 + 72) + 8) + 48);
    }

    else
    {
      v11 = *(a4 + 8);
      v12 = *(a1 + 32);
      v13 = *(a1 + 96);
      v14 = *(a1 + 104);
      v15 = v11;
      [v15 layout:v12 estimatedContentSizeForSublayoutAtIndex:a2 referenceSize:{v13, v14}];
      v17 = v16;
      v19 = v18;
      *(a3 + 32) = v16;
      *(a3 + 40) = v18;

      PXGAssertErrValidSize(v17, v19);
    }
  }

  if ([v32 numberOfDescendantAnchors] >= 1)
  {
    *(*(*(a1 + 80) + 8) + 24) = a2;
    *(*(*(a1 + 88) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 80) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  v20 = *(a1 + 112);
  switch(v20)
  {
    case 1:
      v29 = *(a3 + 56);
      if (v29 < CGRectGetMinY(*(*(*(a1 + 72) + 8) + 32)))
      {
        v27 = *(a3 + 56) + *(a3 + 40);
        MaxY = CGRectGetMaxY(*(*(*(a1 + 72) + 8) + 32));
LABEL_16:
        if (v27 < MaxY)
        {
          break;
        }
      }

LABEL_17:
      *(*(*(a1 + 80) + 8) + 24) = a2;
      break;
    case 2:
      v26 = *(a3 + 48);
      if (v26 < CGRectGetMinX(*(*(*(a1 + 72) + 8) + 32)))
      {
        v27 = *(a3 + 48) + *v10;
        MaxY = CGRectGetMaxX(*(*(*(a1 + 72) + 8) + 32));
        goto LABEL_16;
      }

      goto LABEL_17;
    case 0:
      v21 = [MEMORY[0x277CCA890] currentHandler];
      v22 = v21;
      v23 = *(a1 + 120);
      v24 = *(a1 + 32);
      v25 = 454;
      goto LABEL_22;
  }

LABEL_18:
  v30 = *(a1 + 112);
  switch(v30)
  {
    case 1:
      v31 = 40;
      goto LABEL_25;
    case 2:
      v31 = 32;
LABEL_25:
      *(*(*(a1 + 64) + 8) + v31) = *(a3 + v31) + *(a3 + 128) + *(*(*(a1 + 64) + 8) + v31);
      break;
    case 0:
      v21 = [MEMORY[0x277CCA890] currentHandler];
      v22 = v21;
      v23 = *(a1 + 120);
      v24 = *(a1 + 32);
      v25 = 471;
LABEL_22:
      [v21 handleFailureInMethod:v23 object:v24 file:@"PXGStackLayout.m" lineNumber:v25 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  if (*(*(a1 + 32) + 920) == 1 && [*(a1 + 40) stackLayout:? shouldAlignSublayoutToVisibleTopEdge:?])
  {
    [*(a1 + 48) addIndex:a2];
  }

  if (*(*(a1 + 32) + 921) == 1 && [*(a1 + 40) stackLayout:? shouldAlignSublayoutToVisibleBottomEdge:?])
  {
    [*(a1 + 56) addIndex:a2];
  }
}

void __35__PXGStackLayout__updateSublayouts__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v8 = 0.0;
  if ([*(a1 + 32) containsIndex:a2])
  {
    if (*(a1 + 72) != 1)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:*(a1 + 80) object:*(a1 + 40) file:? lineNumber:? description:?];
    }

    v9 = *(a3 + 56);
    [*(a1 + 40) visibleRect];
    [*(a1 + 40) safeAreaInsets];
    PXEdgeInsetsMakeWithValueForEdges();
    PXEdgeInsetsInsetRect();
    v8 = v10 - v9;
  }

  if (*(a1 + 88) >= 2 && [*(a1 + 48) containsIndex:a2])
  {
    if (*(a1 + 72) != 1)
    {
      v21 = [MEMORY[0x277CCA890] currentHandler];
      [v21 handleFailureInMethod:*(a1 + 80) object:*(a1 + 40) file:? lineNumber:? description:?];
    }

    v11 = *(*(*(a1 + 64) + 8) + 40);
    v12 = *(a3 + 40);
    v13 = *(a1 + 120);
    if (v11 + v12 < v13)
    {
      v14 = v13 - v12;
      *(*(a1 + 40) + 976) = v14 - v11;
      *(*(*(a1 + 64) + 8) + 40) = v14;
    }
  }

  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 48);
  *(a3 + 48) = *(v15 + 32);
  *(a3 + 64) = v16;
  *(a3 + 56) = v8 + *(a3 + 56);
  v22 = *a4;
  [v22 setFloating:v8 > 0.0];
  [v22 setFloatingOffset:v8];
  v17 = *(a1 + 72);
  switch(v17)
  {
    case 1:
      v19 = 40;
      goto LABEL_17;
    case 2:
      v19 = 32;
LABEL_17:
      *(*(*(a1 + 56) + 8) + v19) = *(*(*(a1 + 64) + 8) + v19) + *(a3 + v19);
      *(*(*(a1 + 64) + 8) + v19) = *(*(*(a1 + 56) + 8) + v19) + *(a3 + 128);
      break;
    case 0:
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 80) object:*(a1 + 40) file:@"PXGStackLayout.m" lineNumber:555 description:@"Code which should be unreachable has been reached"];

      abort();
  }
}

void __35__PXGStackLayout__updateSublayouts__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sublayoutAtIndex:a2];
  [v2 addObject:v3];
}

- (void)_updateSublayoutsForAnchoringSublayoutIndex:(int64_t)a3 enumerationOptions:(unint64_t)a4 sublayoutIndexRange:(_NSRange)a5 shouldFaultInAnchoringSublayout:(BOOL)a6 sublayoutIndexesToAlignToVisibleTopEdge:(id)a7 subreferenceSize:(CGSize)a8 visibleRect:(CGRect *)a9
{
  v48 = a7;
  v49 = [(PXGStackLayout *)self sublayoutFaultingDelegate];
  v12 = [(PXGLayout *)self sublayoutDataStore];
  v52 = [v12 count];
  v51 = [(PXGLayout *)self anchoredContentEdges];
  v13 = [(PXGStackLayout *)self axis];
  [(PXGLayout *)self referenceDepth];
  v47 = v14;
  v15 = [(PXGLayout *)self referenceOptions];
  v16 = [(PXGLayout *)self scrollSpeedRegime];
  [(PXGLayout *)self displayScale];
  v45 = v17;
  v18 = [(PXGLayout *)self userInterfaceDirection];
  [(PXGLayout *)self lastScrollDirection];
  v43 = v20;
  v44 = v19;
  [(PXGStackLayout *)self faultInOutsets];
  PXEdgeInsetsInvert();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(PXGStackLayout *)self faultOutOutsets];
  PXEdgeInsetsInvert();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x3810000000;
  v84[3] = "";
  v85 = 0uLL;
  v86 = 0;
  v37 = [v12 geometries] + 136 * a3;
  v38 = *(v37 + 64);
  v85 = *(v37 + 48);
  v86 = v38;
  v39 = [(PXGLayout *)self viewEnvironment];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __202__PXGStackLayout__updateSublayoutsForAnchoringSublayoutIndex_enumerationOptions_sublayoutIndexRange_shouldFaultInAnchoringSublayout_sublayoutIndexesToAlignToVisibleTopEdge_subreferenceSize_visibleRect___block_invoke;
  v55[3] = &unk_2782A8728;
  v82 = (a4 & 2) != 0;
  v60 = a2;
  v61 = v13;
  v55[4] = self;
  v59 = v84;
  v83 = a6;
  v62 = a3;
  v63 = a9;
  v64 = v30;
  v65 = v32;
  v66 = v34;
  v67 = v36;
  v40 = v48;
  v56 = v40;
  v41 = v49;
  v57 = v41;
  v68 = v22;
  v69 = v24;
  v70 = v26;
  v71 = v28;
  v42 = v39;
  v58 = v42;
  v72 = a8;
  v81 = v15;
  v73 = v47;
  v74 = v45;
  v75 = v44;
  v76 = v43;
  v77 = v16;
  v78 = v18;
  v79 = v52;
  v80 = v51;
  [v12 enumerateSublayoutGeometriesInRange:a5.location options:a5.length usingBlock:{a4, v55}];

  _Block_object_dispose(v84, 8);
}

void __202__PXGStackLayout__updateSublayoutsForAnchoringSublayoutIndex_enumerationOptions_sublayoutIndexRange_shouldFaultInAnchoringSublayout_sublayoutIndexesToAlignToVisibleTopEdge_subreferenceSize_visibleRect___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v10 = *(a3 + 32);
  v9 = *(a3 + 40);
  v8 = (a3 + 32);
  if (*(a1 + 250) != 1)
  {
    goto LABEL_9;
  }

  v11 = *(a1 + 80);
  switch(v11)
  {
    case 1:
      v17 = 40;
      v18 = *(a3 + 40);
      goto LABEL_8;
    case 2:
      v17 = 32;
      v18 = *(a3 + 32);
LABEL_8:
      *(*(*(a1 + 64) + 8) + v17) = *(*(*(a1 + 64) + 8) + v17) - (v18 + *(a3 + 128));
      break;
    case 0:
      v12 = [MEMORY[0x277CCA890] currentHandler];
      v13 = v12;
      v14 = *(a1 + 72);
      v15 = *(a1 + 32);
      v16 = 187;
      goto LABEL_89;
  }

LABEL_9:
  v19 = *(*(a1 + 64) + 8);
  v20 = *(v19 + 32);
  *(a3 + 64) = *(v19 + 48);
  *(a3 + 48) = v20;
  if (!a4[1])
  {
    goto LABEL_26;
  }

  v21 = *a4 == 0;
  if (*a4)
  {
    if (!*(a1 + 251) || *(a1 + 88) != a2)
    {
      v22 = *(*(a1 + 64) + 8);
      v23 = *(v22 + 32);
      v24 = *(v22 + 40);
      v25 = *(a3 + 32);
      v26 = *(a3 + 40);
      PXEdgeInsetsInsetRect();
      v94.origin.x = v27;
      v94.origin.y = v28;
      v94.size.width = v29;
      v94.size.height = v30;
      v90.origin.x = v23;
      v90.origin.y = v24;
      v90.size.width = v25;
      v90.size.height = v26;
      if (!CGRectIntersectsRect(v90, v94) && ([*(a1 + 40) containsIndex:a2] & 1) == 0)
      {
        v31 = *a4;
        if (([*(a1 + 48) layout:*(a1 + 32) shouldPreventFaultOutOfSublayout:v31] & 1) == 0)
        {
          [*(a1 + 32) willFaultOutSublayout:v31 atIndex:a2];
          if (*a4)
          {

            *a4 = 0;
          }
        }

        goto LABEL_36;
      }
    }

LABEL_26:
    v21 = 0;
    goto LABEL_37;
  }

  if ((!*(a1 + 251) || *(a1 + 88) != a2) && ([*(a1 + 40) containsIndex:a2] & 1) == 0)
  {
    v32 = *(*(a1 + 64) + 8);
    v33 = *(v32 + 32);
    v34 = *(v32 + 40);
    v35 = *(a3 + 32);
    v36 = *(a3 + 40);
    PXEdgeInsetsInsetRect();
    v95.origin.x = v37;
    v95.origin.y = v38;
    v95.size.width = v39;
    v95.size.height = v40;
    v91.origin.x = v33;
    v91.origin.y = v34;
    v91.size.width = v35;
    v91.size.height = v36;
    if (!CGRectIntersectsRect(v91, v95))
    {
      goto LABEL_26;
    }
  }

  v41 = *(a1 + 32);
  v42 = a4[1];
  v43 = [v42 layout:v41 createSublayoutAtIndex:a2];

  if (v43)
  {
    v31 = v43;
    if (*a4 != v31)
    {

      *a4 = v31;
    }

    [*(a1 + 32) didFaultInSublayout:v31 atIndex:a2 fromEstimatedContentSize:{v10, v9}];
    goto LABEL_36;
  }

  a4[1] = 0;
  if (*(a1 + 250) == 1)
  {
    v44 = *(a1 + 80);
    switch(v44)
    {
      case 1:
        v45 = *(a1 + 96);
        v51 = -v9;
        x = v45->origin.x;
        y = v45->origin.y;
        width = v45->size.width;
        height = v45->size.height;
        v46 = 0.0;
        break;
      case 2:
        v45 = *(a1 + 96);
        v46 = -v10;
        x = v45->origin.x;
        y = v45->origin.y;
        width = v45->size.width;
        height = v45->size.height;
        v51 = 0.0;
        break;
      case 0:
        v12 = [MEMORY[0x277CCA890] currentHandler];
        v13 = v12;
        v14 = *(a1 + 72);
        v15 = *(a1 + 32);
        v16 = 231;
        goto LABEL_89;
      default:
        goto LABEL_35;
    }

    *v45 = CGRectOffset(*&x, v46, v51);
  }

LABEL_35:
  v31 = 0;
  *v8 = *MEMORY[0x277CBF3A8];
LABEL_36:

LABEL_37:
  v52 = *a4;
  v53 = v52;
  if (!v52)
  {
    goto LABEL_62;
  }

  [v52 setViewEnvironment:*(a1 + 56)];
  [v53 setReferenceSize:{*(a1 + 168), *(a1 + 176)}];
  [v53 setReferenceDepth:*(a1 + 184)];
  [v53 setReferenceOptions:*(a1 + 248)];
  v92 = CGRectOffset(**(a1 + 96), -*(*(*(a1 + 64) + 8) + 32), -*(*(*(a1 + 64) + 8) + 40));
  [v53 setVisibleRect:{v92.origin.x, v92.origin.y, v92.size.width, v92.size.height}];
  [v53 setDisplayScale:*(a1 + 192)];
  [v53 setLastScrollDirection:{*(a1 + 200), *(a1 + 208)}];
  [v53 setScrollSpeedRegime:*(a1 + 216)];
  [v53 setUserInterfaceDirection:*(a1 + 224)];
  [*(a1 + 32) additionalSafeAreaInsetsForSublayout:v53];
  [*(a1 + 32) safeAreaInsets];
  PXEdgeInsetsAdd();
  [v53 setSafeAreaInsets:?];
  if (!a2)
  {
    v54 = *(a1 + 80);
    if (v54 == 1 || v54 == 2)
    {
      goto LABEL_40;
    }

    if (!v54)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      v13 = v12;
      v14 = *(a1 + 72);
      v15 = *(a1 + 32);
      v16 = 265;
      goto LABEL_89;
    }
  }

  v54 = 0;
LABEL_40:
  if (*(a1 + 232) - 1 == a2)
  {
    v55 = *(a1 + 80);
    switch(v55)
    {
      case 1:
        v54 |= 4uLL;
        break;
      case 2:
        v54 |= 8uLL;
        break;
      case 0:
        v12 = [MEMORY[0x277CCA890] currentHandler];
        v13 = v12;
        v14 = *(a1 + 72);
        v15 = *(a1 + 32);
        v16 = 278;
        goto LABEL_89;
    }
  }

  v56 = [v53 createAnchorFromSuperlayoutWithSublayoutIndex:a2 sublayoutPositionEdges:v54 ignoringScrollingAnimationAnchors:1];
  v57 = v56;
  if (v56)
  {
    v58 = [v56 autoInvalidate];
  }

  else if ((*(a1 + 88) != a2 || *(a1 + 240)) && ![v53 numberOfDescendantAnchors])
  {
    if (([v53 needsUpdate] & 1) != 0 || (objc_msgSend(v53, "contentSize"), v10 != v62) || v9 != v61)
    {
      if (!*(a1 + 240) && !*(a1 + 80))
      {
        v12 = [MEMORY[0x277CCA890] currentHandler];
        v13 = v12;
        v14 = *(a1 + 72);
        v15 = *(a1 + 32);
        v16 = 303;
        goto LABEL_89;
      }

      v59 = [v53 createAnchorForContentEdges:?];
      v60 = [v59 autoInvalidate];
    }
  }

  [v53 updateIfNeeded];
  [*(a1 + 32) didUpdateSublayout:v53];
  v63 = *(a1 + 96);
  [v53 visibleRect];
  *v63 = CGRectOffset(v93, *(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40));
  [v53 contentSize];
  *(a3 + 32) = v64;
  *(a3 + 40) = v65;
  PXGAssertErrValidSize(v64, v65);

LABEL_62:
  v66 = *(a3 + 128);
  v67 = *(a1 + 80);
  v68 = *(*(a1 + 32) + 936);
  v69 = v53;
  v70 = 32;
  if (v67 == 1)
  {
    v70 = 40;
  }

  v71 = *(a3 + v70);
  v88 = v69;
  if (v68 == -1.0)
  {
    [v69 lastBaseline];
    if (!v53 || ((v73 = *(MEMORY[0x277D3CFE0] + 8), v71 != v73) ? (v74 = v72 == v73) : (v74 = 1), v74))
    {
      v75 = *(a3 + 128);
    }

    else
    {
      v75 = v72 - v71;
    }
  }

  else if (v71 == 0.0)
  {
    v75 = 0.0;
  }

  else
  {
    v75 = v68;
  }

  PXGAssertErrValidFloat(v75);
  *(a3 + 128) = v75;

  v76 = *(a1 + 250);
  if (!v21)
  {
LABEL_84:
    v77 = v88;
    if (v76)
    {
      goto LABEL_93;
    }

LABEL_85:
    v86 = *(a1 + 80);
    if (v86 == 1)
    {
      v87 = 40;
    }

    else
    {
      if (v86 != 2)
      {
        if (v86)
        {
          goto LABEL_93;
        }

        v12 = [MEMORY[0x277CCA890] currentHandler];
        v13 = v12;
        v14 = *(a1 + 72);
        v15 = *(a1 + 32);
        v16 = 348;
LABEL_89:
        [v12 handleFailureInMethod:v14 object:v15 file:@"PXGStackLayout.m" lineNumber:v16 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v87 = 32;
    }

    *(*(*(a1 + 64) + 8) + v87) = *(a3 + v87) + *(a3 + 128) + *(*(*(a1 + 64) + 8) + v87);
    goto LABEL_93;
  }

  v77 = v88;
  if ((*(a1 + 250) & 1) == 0)
  {
    goto LABEL_85;
  }

  v78 = *(a1 + 80);
  switch(v78)
  {
    case 1:
      v79 = *(a1 + 96);
      v85 = *(a3 + 128) - v66;
      v81 = v79->origin.x;
      v82 = v79->origin.y;
      v83 = v79->size.width;
      v84 = v79->size.height;
      v80 = 0.0;
      goto LABEL_83;
    case 2:
      v79 = *(a1 + 96);
      v80 = *(a3 + 128) - v66;
      v81 = v79->origin.x;
      v82 = v79->origin.y;
      v83 = v79->size.width;
      v84 = v79->size.height;
      v85 = 0.0;
LABEL_83:
      *v79 = CGRectOffset(*&v81, v80, v85);
      v76 = *(a1 + 250);
      goto LABEL_84;
    case 0:
      v12 = [MEMORY[0x277CCA890] currentHandler];
      v13 = v12;
      v14 = *(a1 + 72);
      v15 = *(a1 + 32);
      v16 = 333;
      goto LABEL_89;
  }

LABEL_93:
}

- (void)_updateInterlayoutSpacing
{
  v3 = [(PXGLayout *)self sublayoutDataStore];
  v4 = [(PXGStackLayout *)self axis];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PXGStackLayout__updateInterlayoutSpacing__block_invoke;
  v5[3] = &unk_2782A8700;
  v5[4] = self;
  v5[5] = v4;
  [v3 enumerateSublayoutGeometriesUsingBlock:v5];
}

void __43__PXGStackLayout__updateInterlayoutSpacing__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v12 = *a4;
  v6 = 32;
  if (*(a1 + 40) == 1)
  {
    v6 = 40;
  }

  v7 = *(a3 + v6);
  if (*(*(a1 + 32) + 936) == -1.0)
  {
    [v12 lastBaseline];
    if (!v12 || ((v9 = *(MEMORY[0x277D3CFE0] + 8), v7 != v9) ? (v10 = v8 == v9) : (v10 = 1), v10))
    {
      v11 = *(a3 + 128);
    }

    else
    {
      v11 = v8 - v7;
    }
  }

  else if (v7 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = *(*(a1 + 32) + 936);
  }

  PXGAssertErrValidFloat(v11);
  *(a3 + 128) = v11;
}

- (void)_invalidateEstimatedSublayoutContentSizes
{
  v3 = [(PXGLayout *)self sublayoutDataStore];
  [v3 enumerateSublayoutGeometriesUsingBlock:&__block_literal_global_4436];

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
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout _invalidateEstimatedSublayoutContentSizes]"];
      [v7 handleFailureInFunction:v8 file:@"PXGStackLayout.m" lineNumber:149 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXGLayout *)self setNeedsUpdate];
  }
}

__n128 __59__PXGStackLayout__invalidateEstimatedSublayoutContentSizes__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *MEMORY[0x277D3CFE0];
  *(a3 + 32) = *MEMORY[0x277D3CFE0];
  return result;
}

- (void)didUpdate
{
  v7.receiver = self;
  v7.super_class = PXGStackLayout;
  [(PXGLayout *)&v7 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXGStackLayout.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }

  if (self->_postUpdateFlags.willPerformUpdate)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout didUpdate]"];
    [v5 handleFailureInFunction:v6 file:@"PXGStackLayout.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  v3 = [(PXGLayout *)self numberOfDescendantAnchors];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (v3 < 1)
  {
    self->_updateFlags.willPerformUpdate = 0;
    if (!needsUpdate)
    {
      goto LABEL_17;
    }

    p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      if (self->_updateFlags.updated)
      {
        v20 = [MEMORY[0x277CCA890] currentHandler];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout update]"];
        [v20 handleFailureInFunction:v21 file:@"PXGStackLayout.m" lineNumber:117 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      p_updateFlags->needsUpdate = needsUpdate | 1;
      self->_updateFlags.willPerformUpdate = 0;
      p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
LABEL_5:
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout update]"];
      [v7 handleFailureInFunction:v8 file:@"PXGStackLayout.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
      goto LABEL_10;
    }

    needsUpdate |= 1uLL;
    p_updateFlags->needsUpdate = needsUpdate;
    self->_updateFlags.willPerformUpdate = 0;
    p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
  }

LABEL_10:
  self->_updateFlags.isPerformingUpdate = 1;
  self->_updateFlags.updated = 2;
  if ((needsUpdate & 2) != 0)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFDLL;
    [(PXGStackLayout *)self _updateInterlayoutSpacing];
    if (!self->_updateFlags.isPerformingUpdate)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout update]"];
      [v12 handleFailureInFunction:v13 file:@"PXGStackLayout.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }
  }

  v9 = p_updateFlags->needsUpdate;
  self->_updateFlags.updated |= 1uLL;
  if (v9)
  {
    p_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFFELL;
    [(PXGStackLayout *)self _updateSublayouts];
    v9 = p_updateFlags->needsUpdate;
  }

  *p_isPerformingUpdate = 0;
  if (v9)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout update]"];
    [v14 handleFailureInFunction:v15 file:@"PXGStackLayout.m" lineNumber:127 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
  }

LABEL_17:
  v22.receiver = self;
  v22.super_class = PXGStackLayout;
  [(PXGLayout *)&v22 update];
  p_postUpdateFlags = &self->_postUpdateFlags;
  self->_postUpdateFlags.willPerformUpdate = 0;
  v11 = self->_postUpdateFlags.needsUpdate;
  if (v11)
  {
    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout update]"];
      [v16 handleFailureInFunction:v17 file:@"PXGStackLayout.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];

      v11 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 1;
    self->_postUpdateFlags.updated = 1;
    if (v11)
    {
      p_postUpdateFlags->needsUpdate = v11 & 0xFFFFFFFFFFFFFFFELL;
      [(PXGStackLayout *)self _updateFirstFloatingLayout];
      v11 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 0;
    if (v11)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout update]"];
      [v18 handleFailureInFunction:v19 file:@"PXGStackLayout.m" lineNumber:135 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
    }
  }
}

- (void)willUpdate
{
  v7.receiver = self;
  v7.super_class = PXGStackLayout;
  [(PXGLayout *)&v7 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXGStackLayout.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }

  self->_postUpdateFlags.willPerformUpdate = 1;
  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout willUpdate]"];
    [v5 handleFailureInFunction:v6 file:@"PXGStackLayout.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
  }
}

- (void)invalidateAdditionalSafeAreaInsets
{
  if (!self->_isUpdatingSublayouts)
  {
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
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout invalidateAdditionalSafeAreaInsets]"];
        [v6 handleFailureInFunction:v7 file:@"PXGStackLayout.m" lineNumber:104 description:{@"invalidating %lu after it already has been updated", 1}];

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

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (UIEdgeInsets)additionalSafeAreaInsetsForSublayout:(id)a3
{
  v3 = *MEMORY[0x277D3CF90];
  v4 = *(MEMORY[0x277D3CF90] + 8);
  v5 = *(MEMORY[0x277D3CF90] + 16);
  v6 = *(MEMORY[0x277D3CF90] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setSublayoutAlignmentDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sublayoutAlignmentDelegate);
  v5 = WeakRetained;
  if (WeakRetained == obj)
  {

LABEL_8:
    v7 = obj;
    goto LABEL_12;
  }

  v6 = [WeakRetained isEqual:?];

  v7 = obj;
  if ((v6 & 1) == 0)
  {
    objc_storeWeak(&self->_sublayoutAlignmentDelegate, obj);
    self->_sublayoutAlignmentDelegateRespondsTo.shouldAlignSublayoutToVisibleTopEdge = objc_opt_respondsToSelector() & 1;
    v8 = objc_opt_respondsToSelector();
    v7 = obj;
    self->_sublayoutAlignmentDelegateRespondsTo.shouldAlignSublayoutToVisibleBottomEdge = v8 & 1;
    if (!self->_isUpdatingSublayouts)
    {
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_11:
          p_updateFlags->needsUpdate = needsUpdate | 1;
          goto LABEL_12;
        }

LABEL_10:
        if (self->_updateFlags.updated)
        {
          v12 = [MEMORY[0x277CCA890] currentHandler];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGStackLayout setSublayoutAlignmentDelegate:]"];
          [v12 handleFailureInFunction:v13 file:@"PXGStackLayout.m" lineNumber:90 description:{@"invalidating %lu after it already has been updated", 1}];

          abort();
        }

        goto LABEL_11;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_10;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 1;
      if (!willPerformUpdate)
      {
        [(PXGLayout *)self setNeedsUpdate];
        goto LABEL_8;
      }
    }
  }

LABEL_12:
}

- (void)dealloc
{
  free(self->_sublayoutOriginsBeforeUpdate);
  v3.receiver = self;
  v3.super_class = PXGStackLayout;
  [(PXGLayout *)&v3 dealloc];
}

- (PXGStackLayout)init
{
  v14.receiver = self;
  v14.super_class = PXGStackLayout;
  v2 = [(PXGLayout *)&v14 init];
  v3 = v2;
  if (v2)
  {
    p_faultInOutsets = &v2->_faultInOutsets;
    PXEdgeInsetsMake();
    *&p_faultInOutsets->top = v5;
    v3->_faultInOutsets.left = v6;
    v3->_faultInOutsets.bottom = v7;
    v3->_faultInOutsets.right = v8;
    PXEdgeInsetsMake();
    v3->_faultOutOutsets.top = v9;
    v3->_faultOutOutsets.left = v10;
    v3->_faultOutOutsets.bottom = v11;
    v3->_faultOutOutsets.right = v12;
  }

  return v3;
}

@end