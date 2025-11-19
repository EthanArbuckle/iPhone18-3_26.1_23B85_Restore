@interface PXGScrollViewModel
- (CGPoint)contentOffset;
- (CGSize)contentSize;
- (PXGScrollViewModel)init;
- (UIEdgeInsets)hitTestContentInsets;
- (UIEdgeInsets)horizontalScrollIndicatorInsets;
- (UIEdgeInsets)verticalScrollIndicatorInsets;
- (id)description;
- (void)didEndChangeHandling;
- (void)performChanges:(id)a3 options:(unint64_t)a4;
- (void)setAlwaysBounceHorizontal:(BOOL)a3;
- (void)setAlwaysBounceVertical:(BOOL)a3;
- (void)setClipsToBounds:(BOOL)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setDraggingPerformsScroll:(BOOL)a3;
- (void)setHitTestContentInsets:(UIEdgeInsets)a3;
- (void)setHorizontalInterPageSpacing:(double)a3;
- (void)setHorizontalScrollIndicatorInsets:(UIEdgeInsets)a3;
- (void)setScrollDecelerationRate:(int64_t)a3;
- (void)setScrollRegime:(int64_t)a3;
- (void)setShowsHorizontalScrollIndicator:(BOOL)a3;
- (void)setShowsVerticalScrollIndicator:(BOOL)a3;
- (void)setTransfersScrollToContainer:(BOOL)a3;
- (void)setVerticalScrollIndicatorInsets:(UIEdgeInsets)a3;
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

- (void)setTransfersScrollToContainer:(BOOL)a3
{
  if (self->_transfersScrollToContainer != a3)
  {
    self->_transfersScrollToContainer = a3;
    [(PXGScrollViewModel *)self signalChange:0x8000];
  }
}

- (void)setDraggingPerformsScroll:(BOOL)a3
{
  if (self->_draggingPerformsScroll != a3)
  {
    self->_draggingPerformsScroll = a3;
    [(PXGScrollViewModel *)self signalChange:128];
  }
}

- (void)setHorizontalInterPageSpacing:(double)a3
{
  if (self->_horizontalInterPageSpacing != a3)
  {
    self->_horizontalInterPageSpacing = a3;
    [(PXGScrollViewModel *)self signalChange:512];
  }
}

- (void)setHitTestContentInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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

- (void)setVerticalScrollIndicatorInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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

- (void)setHorizontalScrollIndicatorInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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

- (void)setAlwaysBounceVertical:(BOOL)a3
{
  if (self->_alwaysBounceVertical != a3)
  {
    self->_alwaysBounceVertical = a3;
    [(PXGScrollViewModel *)self signalChange:2048];
  }
}

- (void)setAlwaysBounceHorizontal:(BOOL)a3
{
  if (self->_alwaysBounceHorizontal != a3)
  {
    self->_alwaysBounceHorizontal = a3;
    [(PXGScrollViewModel *)self signalChange:1024];
  }
}

- (void)setShowsVerticalScrollIndicator:(BOOL)a3
{
  if (self->_showsVerticalScrollIndicator != a3)
  {
    self->_showsVerticalScrollIndicator = a3;
    [(PXGScrollViewModel *)self signalChange:64];
  }
}

- (void)setShowsHorizontalScrollIndicator:(BOOL)a3
{
  if (self->_showsHorizontalScrollIndicator != a3)
  {
    self->_showsHorizontalScrollIndicator = a3;
    [(PXGScrollViewModel *)self signalChange:32];
  }
}

- (void)setClipsToBounds:(BOOL)a3
{
  if (self->_clipsToBounds != a3)
  {
    self->_clipsToBounds = a3;
    [(PXGScrollViewModel *)self signalChange:256];
  }
}

- (void)setScrollDecelerationRate:(int64_t)a3
{
  if (self->_scrollDecelerationRate != a3)
  {
    self->_scrollDecelerationRate = a3;
    [(PXGScrollViewModel *)self signalChange:8];
  }
}

- (void)setScrollRegime:(int64_t)a3
{
  if (self->_scrollRegime != a3)
  {
    self->_scrollRegime = a3;
    [(PXGScrollViewModel *)self signalChange:4];
  }
}

- (void)setContentOffset:(CGPoint)a3
{
  if (a3.x != self->_contentOffset.x || a3.y != self->_contentOffset.y)
  {
    self->_contentOffset = a3;
    [(PXGScrollViewModel *)self signalChange:2];
  }
}

- (void)setContentSize:(CGSize)a3
{
  if (a3.width != self->_contentSize.width || a3.height != self->_contentSize.height)
  {
    self->_contentSize = a3;
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

- (void)performChanges:(id)a3 options:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  changesOptions = self->_changesOptions;
  if ((changesOptions & 4) == 0 && changesOptions && changesOptions != a4)
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = self->_changesOptions;
      *buf = 134218240;
      v13 = a4;
      v14 = 2048;
      v15 = v10;
      _os_log_fault_impl(&dword_21AD38000, v9, OS_LOG_TYPE_FAULT, "changes with origin %li nested within different origin %li", buf, 0x16u);
    }
  }

  self->_changesOptions = a4;
  v11.receiver = self;
  v11.super_class = PXGScrollViewModel;
  [(PXGScrollViewModel *)&v11 performChanges:v6];
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