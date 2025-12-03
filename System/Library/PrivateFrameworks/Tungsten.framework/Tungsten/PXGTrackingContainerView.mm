@interface PXGTrackingContainerView
- (CGRect)clippingRect;
- (PXGTrackingContainerView)initWithFrame:(CGRect)frame;
- (void)_removeFromSuperviewIfFinished;
- (void)becomeReusable;
- (void)prepareForReuse;
- (void)setIsSpriteRemoved:(BOOL)removed;
- (void)willRemoveSubview:(id)subview;
@end

@implementation PXGTrackingContainerView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_removeFromSuperviewIfFinished
{
  superview = [(PXGTrackingContainerView *)self superview];
  if (superview && (v7 = superview, v4 = [(PXGTrackingContainerView *)self isSpriteRemoved], superview = v7, v4))
  {
    subviews = [(PXGTrackingContainerView *)self subviews];
    v6 = [subviews count];

    if (!v6)
    {

      [(PXGTrackingContainerView *)self removeFromSuperview];
    }
  }

  else
  {
  }
}

- (void)willRemoveSubview:(id)subview
{
  v9.receiver = self;
  v9.super_class = PXGTrackingContainerView;
  [(PXGTrackingContainerView *)&v9 willRemoveSubview:subview];
  superview = [(PXGTrackingContainerView *)self superview];
  if (superview)
  {
    v5 = superview;
    subviews = [(PXGTrackingContainerView *)self subviews];
    v7 = [subviews count];

    if (v7 == 1)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__PXGTrackingContainerView_willRemoveSubview___block_invoke;
      block[3] = &unk_2782ABE50;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)setIsSpriteRemoved:(BOOL)removed
{
  if (self->_isSpriteRemoved != removed)
  {
    self->_isSpriteRemoved = removed;
    [(PXGTrackingContainerView *)self _removeFromSuperviewIfFinished];
  }
}

- (void)prepareForReuse
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGTrackingContainerView.m" lineNumber:31 description:{@"%@ is not reusable", v6}];

  abort();
}

- (void)becomeReusable
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGTrackingContainerView.m" lineNumber:27 description:{@"%@ is not reusable", v6}];

  abort();
}

- (PXGTrackingContainerView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PXGTrackingContainerView;
  v3 = [(PXGTrackingContainerView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXGTrackingContainerView *)v3 setUserInteractionEnabled:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(PXGTrackingContainerView *)v4 setBackgroundColor:clearColor];
  }

  return v4;
}

@end