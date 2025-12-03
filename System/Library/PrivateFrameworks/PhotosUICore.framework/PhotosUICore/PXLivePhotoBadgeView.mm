@interface PXLivePhotoBadgeView
- (CGRect)trackedRect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXLivePhotoBadgeView)initWithFrame:(CGRect)frame;
- (PXLivePhotoBadgeViewDelegate)delegate;
- (void)layoutSubviews;
- (void)setDelegate:(id)delegate;
- (void)setTrackedRect:(CGRect)rect;
- (void)setWantsPlayback:(BOOL)playback;
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

- (void)setWantsPlayback:(BOOL)playback
{
  if (self->_delegateRespondsTo.wantsPlayback)
  {
    playbackCopy = playback;
    delegate = [(PXLivePhotoBadgeView *)self delegate];
    [delegate livePhotoBadgeView:self wantsPlayback:playbackCopy];
  }
}

- (void)setTrackedRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_trackedRect = &self->_trackedRect;
  if (!CGRectEqualToRect(rect, self->_trackedRect))
  {
    p_trackedRect->origin.x = x;
    p_trackedRect->origin.y = y;
    p_trackedRect->size.width = width;
    p_trackedRect->size.height = height;
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo.wantsPlayback = objc_opt_respondsToSelector() & 1;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXLivePhotoBadgeView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PXLivePhotoBadgeView;
  v3 = [(PXLivePhotoBadgeView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXLivePhotoBadgeView *)v3 _setUpContent];
  }

  return v4;
}

@end