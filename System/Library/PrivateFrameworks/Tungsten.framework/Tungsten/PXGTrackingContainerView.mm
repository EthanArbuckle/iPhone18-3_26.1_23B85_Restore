@interface PXGTrackingContainerView
- (CGRect)clippingRect;
- (PXGTrackingContainerView)initWithFrame:(CGRect)a3;
- (void)_removeFromSuperviewIfFinished;
- (void)becomeReusable;
- (void)prepareForReuse;
- (void)setIsSpriteRemoved:(BOOL)a3;
- (void)willRemoveSubview:(id)a3;
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
  v3 = [(PXGTrackingContainerView *)self superview];
  if (v3 && (v7 = v3, v4 = [(PXGTrackingContainerView *)self isSpriteRemoved], v3 = v7, v4))
  {
    v5 = [(PXGTrackingContainerView *)self subviews];
    v6 = [v5 count];

    if (!v6)
    {

      [(PXGTrackingContainerView *)self removeFromSuperview];
    }
  }

  else
  {
  }
}

- (void)willRemoveSubview:(id)a3
{
  v9.receiver = self;
  v9.super_class = PXGTrackingContainerView;
  [(PXGTrackingContainerView *)&v9 willRemoveSubview:a3];
  v4 = [(PXGTrackingContainerView *)self superview];
  if (v4)
  {
    v5 = v4;
    v6 = [(PXGTrackingContainerView *)self subviews];
    v7 = [v6 count];

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

- (void)setIsSpriteRemoved:(BOOL)a3
{
  if (self->_isSpriteRemoved != a3)
  {
    self->_isSpriteRemoved = a3;
    [(PXGTrackingContainerView *)self _removeFromSuperviewIfFinished];
  }
}

- (void)prepareForReuse
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXGTrackingContainerView.m" lineNumber:31 description:{@"%@ is not reusable", v6}];

  abort();
}

- (void)becomeReusable
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXGTrackingContainerView.m" lineNumber:27 description:{@"%@ is not reusable", v6}];

  abort();
}

- (PXGTrackingContainerView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PXGTrackingContainerView;
  v3 = [(PXGTrackingContainerView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXGTrackingContainerView *)v3 setUserInteractionEnabled:0];
    v5 = [MEMORY[0x277D75348] clearColor];
    [(PXGTrackingContainerView *)v4 setBackgroundColor:v5];
  }

  return v4;
}

@end