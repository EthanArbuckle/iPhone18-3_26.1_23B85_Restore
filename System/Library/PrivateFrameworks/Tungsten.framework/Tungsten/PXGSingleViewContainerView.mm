@interface PXGSingleViewContainerView
- (CGRect)clippingRect;
- (void)setContentView:(id)a3;
- (void)setUserData:(id)a3;
@end

@implementation PXGSingleViewContainerView

- (CGRect)clippingRect
{
  x = self->clippingRect.origin.x;
  y = self->clippingRect.origin.y;
  width = self->clippingRect.size.width;
  height = self->clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v8 = v5;
    v7 = [(UIView *)contentView superview];

    if (v7 == self)
    {
      [(UIView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, a3);
    v5 = v8;
    if (v8)
    {
      [(PXGSingleViewContainerView *)self bounds];
      [(UIView *)v8 setFrame:?];
      [(UIView *)v8 setAutoresizingMask:18];
      [(PXGSingleViewContainerView *)self setUserInteractionEnabled:[(UIView *)v8 isUserInteractionEnabled]];
      [(PXGSingleViewContainerView *)self addSubview:v8];
      v5 = v8;
    }
  }
}

- (void)setUserData:(id)a3
{
  v6 = a3;
  if (self->_userData != v6)
  {
    v13 = v6;
    objc_storeStrong(&self->_userData, a3);
    v7 = v13;
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = [MEMORY[0x277CCA890] currentHandler];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [(NSCopying *)v7 px_descriptionForAssertionMessage];
        [v9 handleFailureInMethod:a2 object:self file:@"PXGSingleViewContainerView.m" lineNumber:38 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"userData", v11, v12}];
      }
    }

    v8 = [(NSCopying *)v7 contentView];
    [(PXGSingleViewContainerView *)self setContentView:v8];

    v6 = v13;
  }
}

@end