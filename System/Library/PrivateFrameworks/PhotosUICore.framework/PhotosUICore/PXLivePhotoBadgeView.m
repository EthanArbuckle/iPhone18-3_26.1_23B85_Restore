@interface PXLivePhotoBadgeView
- (CGRect)trackedRect;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXLivePhotoBadgeView)initWithFrame:(CGRect)a3;
- (PXLivePhotoBadgeViewDelegate)delegate;
- (void)layoutSubviews;
- (void)setDelegate:(id)a3;
- (void)setTrackedRect:(CGRect)a3;
- (void)setWantsPlayback:(BOOL)a3;
@end

@implementation PXLivePhotoBadgeView

- (CGRect)trackedRect
{
  x = self->_trackedRect.origin.x;
  y = self->_trackedRect.origin.y;
  width = self->_trackedRect.size.width;
  height = self->_trackedRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXLivePhotoBadgeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXLivePhotoBadgeView;
  [(PXLivePhotoBadgeView *)&v3 layoutSubviews];
  [(PXLivePhotoBadgeView *)self bounds];
  [(PXLivePhotoBadgeView *)self setTrackedRect:?];
}

- (void)setWantsPlayback:(BOOL)a3
{
  if (self->_delegateRespondsTo.wantsPlayback)
  {
    v4 = a3;
    v6 = [(PXLivePhotoBadgeView *)self delegate];
    [v6 livePhotoBadgeView:self wantsPlayback:v4];
  }
}

- (void)setTrackedRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_trackedRect = &self->_trackedRect;
  if (!CGRectEqualToRect(a3, self->_trackedRect))
  {
    p_trackedRect->origin.x = x;
    p_trackedRect->origin.y = y;
    p_trackedRect->size.width = width;
    p_trackedRect->size.height = height;
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo.wantsPlayback = objc_opt_respondsToSelector() & 1;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXLivePhotoBadgeView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXLivePhotoBadgeView;
  v3 = [(PXLivePhotoBadgeView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXLivePhotoBadgeView *)v3 _setUpContent];
  }

  return v4;
}

@end