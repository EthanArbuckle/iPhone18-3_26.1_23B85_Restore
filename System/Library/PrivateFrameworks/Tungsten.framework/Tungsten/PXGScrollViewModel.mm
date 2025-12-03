@interface PXGScrollViewModel
- (CGPoint)contentOffset;
- (CGSize)contentSize;
- (PXGScrollViewModel)init;
- (UIEdgeInsets)hitTestContentInsets;
- (UIEdgeInsets)horizontalScrollIndicatorInsets;
- (UIEdgeInsets)verticalScrollIndicatorInsets;
- (id)description;
- (void)didEndChangeHandling;
- (void)performChanges:(id)changes options:(unint64_t)options;
- (void)setAlwaysBounceHorizontal:(BOOL)horizontal;
- (void)setAlwaysBounceVertical:(BOOL)vertical;
- (void)setClipsToBounds:(BOOL)bounds;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentSize:(CGSize)size;
- (void)setDraggingPerformsScroll:(BOOL)scroll;
- (void)setHitTestContentInsets:(UIEdgeInsets)insets;
- (void)setHorizontalInterPageSpacing:(double)spacing;
- (void)setHorizontalScrollIndicatorInsets:(UIEdgeInsets)insets;
- (void)setScrollDecelerationRate:(int64_t)rate;
- (void)setScrollRegime:(int64_t)regime;
- (void)setShowsHorizontalScrollIndicator:(BOOL)indicator;
- (void)setShowsVerticalScrollIndicator:(BOOL)indicator;
- (void)setTransfersScrollToContainer:(BOOL)container;
- (void)setVerticalScrollIndicatorInsets:(UIEdgeInsets)insets;
@end

@implementation PXGScrollViewModel

- (UIEdgeInsets)hitTestContentInsets
{
  top = self->_hitTestContentInsets.top;
  left = self->_hitTestContentInsets.left;
  bottom = self->_hitTestContentInsets.bottom;
  right = self->_hitTestContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)verticalScrollIndicatorInsets
{
  top = self->_verticalScrollIndicatorInsets.top;
  left = self->_verticalScrollIndicatorInsets.left;
  bottom = self->_verticalScrollIndicatorInsets.bottom;
  right = self->_verticalScrollIndicatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)horizontalScrollIndicatorInsets
{
  top = self->_horizontalScrollIndicatorInsets.top;
  left = self->_horizontalScrollIndicatorInsets.left;
  bottom = self->_horizontalScrollIndicatorInsets.bottom;
  right = self->_horizontalScrollIndicatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)contentOffset
{
  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  scrollRegime = self->_scrollRegime;
  scrollDecelerationRate = self->_scrollDecelerationRate;
  if (self->_clipsToBounds)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = v11;
  if (self->_showsHorizontalScrollIndicator)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = v13;
  if (self->_showsVerticalScrollIndicator)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = v15;
  if (self->_draggingPerformsScroll)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = v17;
  v19 = [v3 stringWithFormat:@"<%@: %p contentSize={%g, %g}; contentOffset={%g, %g}; scrollRegime=%ti; scrollDecelerationRate=%ti; clipsToBounds=%@; showsHorizontalScrollIndicator=%@; showsVerticalScrollIndicator=%@; draggingPerformsScroll=%@>", v4, self, *&width, *&height, *&x, *&y, scrollRegime, scrollDecelerationRate, v12, v14, v16, v18];;

  return v19;
}

- (void)setTransfersScrollToContainer:(BOOL)container
{
  if (self->_transfersScrollToContainer != container)
  {
    self->_transfersScrollToContainer = container;
    [(PXGScrollViewModel *)self signalChange:0x8000];
  }
}

- (void)setDraggingPerformsScroll:(BOOL)scroll
{
  if (self->_draggingPerformsScroll != scroll)
  {
    self->_draggingPerformsScroll = scroll;
    [(PXGScrollViewModel *)self signalChange:128];
  }
}

- (void)setHorizontalInterPageSpacing:(double)spacing
{
  if (self->_horizontalInterPageSpacing != spacing)
  {
    self->_horizontalInterPageSpacing = spacing;
    [(PXGScrollViewModel *)self signalChange:512];
  }
}

- (void)setHitTestContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  p_hitTestContentInsets = &self->_hitTestContentInsets;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_hitTestContentInsets->top = top;
    p_hitTestContentInsets->left = left;
    p_hitTestContentInsets->bottom = bottom;
    p_hitTestContentInsets->right = right;

    [(PXGScrollViewModel *)self signalChange:4096];
  }
}

- (void)setVerticalScrollIndicatorInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  p_verticalScrollIndicatorInsets = &self->_verticalScrollIndicatorInsets;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_verticalScrollIndicatorInsets->top = top;
    p_verticalScrollIndicatorInsets->left = left;
    p_verticalScrollIndicatorInsets->bottom = bottom;
    p_verticalScrollIndicatorInsets->right = right;

    [(PXGScrollViewModel *)self signalChange:0x4000];
  }
}

- (void)setHorizontalScrollIndicatorInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  p_horizontalScrollIndicatorInsets = &self->_horizontalScrollIndicatorInsets;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_horizontalScrollIndicatorInsets->top = top;
    p_horizontalScrollIndicatorInsets->left = left;
    p_horizontalScrollIndicatorInsets->bottom = bottom;
    p_horizontalScrollIndicatorInsets->right = right;

    [(PXGScrollViewModel *)self signalChange:0x2000];
  }
}

- (void)setAlwaysBounceVertical:(BOOL)vertical
{
  if (self->_alwaysBounceVertical != vertical)
  {
    self->_alwaysBounceVertical = vertical;
    [(PXGScrollViewModel *)self signalChange:2048];
  }
}

- (void)setAlwaysBounceHorizontal:(BOOL)horizontal
{
  if (self->_alwaysBounceHorizontal != horizontal)
  {
    self->_alwaysBounceHorizontal = horizontal;
    [(PXGScrollViewModel *)self signalChange:1024];
  }
}

- (void)setShowsVerticalScrollIndicator:(BOOL)indicator
{
  if (self->_showsVerticalScrollIndicator != indicator)
  {
    self->_showsVerticalScrollIndicator = indicator;
    [(PXGScrollViewModel *)self signalChange:64];
  }
}

- (void)setShowsHorizontalScrollIndicator:(BOOL)indicator
{
  if (self->_showsHorizontalScrollIndicator != indicator)
  {
    self->_showsHorizontalScrollIndicator = indicator;
    [(PXGScrollViewModel *)self signalChange:32];
  }
}

- (void)setClipsToBounds:(BOOL)bounds
{
  if (self->_clipsToBounds != bounds)
  {
    self->_clipsToBounds = bounds;
    [(PXGScrollViewModel *)self signalChange:256];
  }
}

- (void)setScrollDecelerationRate:(int64_t)rate
{
  if (self->_scrollDecelerationRate != rate)
  {
    self->_scrollDecelerationRate = rate;
    [(PXGScrollViewModel *)self signalChange:8];
  }
}

- (void)setScrollRegime:(int64_t)regime
{
  if (self->_scrollRegime != regime)
  {
    self->_scrollRegime = regime;
    [(PXGScrollViewModel *)self signalChange:4];
  }
}

- (void)setContentOffset:(CGPoint)offset
{
  if (offset.x != self->_contentOffset.x || offset.y != self->_contentOffset.y)
  {
    self->_contentOffset = offset;
    [(PXGScrollViewModel *)self signalChange:2];
  }
}

- (void)setContentSize:(CGSize)size
{
  if (size.width != self->_contentSize.width || size.height != self->_contentSize.height)
  {
    self->_contentSize = size;
    [(PXGScrollViewModel *)self signalChange:1];
  }
}

- (void)didEndChangeHandling
{
  v3.receiver = self;
  v3.super_class = PXGScrollViewModel;
  [(PXGScrollViewModel *)&v3 didEndChangeHandling];
  self->_changesOptions = 0;
}

- (void)performChanges:(id)changes options:(unint64_t)options
{
  v16 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  changesOptions = self->_changesOptions;
  if ((changesOptions & 4) == 0 && changesOptions && changesOptions != options)
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = self->_changesOptions;
      *buf = 134218240;
      optionsCopy = options;
      v14 = 2048;
      v15 = v10;
      _os_log_fault_impl(&dword_21AD38000, v9, OS_LOG_TYPE_FAULT, "changes with origin %li nested within different origin %li", buf, 0x16u);
    }
  }

  self->_changesOptions = options;
  v11.receiver = self;
  v11.super_class = PXGScrollViewModel;
  [(PXGScrollViewModel *)&v11 performChanges:changesCopy];
}

- (PXGScrollViewModel)init
{
  v3.receiver = self;
  v3.super_class = PXGScrollViewModel;
  result = [(PXGScrollViewModel *)&v3 init];
  if (result)
  {
    result->_transfersScrollToContainer = 1;
  }

  return result;
}

@end