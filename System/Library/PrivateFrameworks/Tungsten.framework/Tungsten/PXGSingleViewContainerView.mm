@interface PXGSingleViewContainerView
- (CGRect)clippingRect;
- (void)setContentView:(id)view;
- (void)setUserData:(id)data;
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

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v8 = viewCopy;
    superview = [(UIView *)contentView superview];

    if (superview == self)
    {
      [(UIView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, view);
    viewCopy = v8;
    if (v8)
    {
      [(PXGSingleViewContainerView *)self bounds];
      [(UIView *)v8 setFrame:?];
      [(UIView *)v8 setAutoresizingMask:18];
      [(PXGSingleViewContainerView *)self setUserInteractionEnabled:[(UIView *)v8 isUserInteractionEnabled]];
      [(PXGSingleViewContainerView *)self addSubview:v8];
      viewCopy = v8;
    }
  }
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  if (self->_userData != dataCopy)
  {
    v13 = dataCopy;
    objc_storeStrong(&self->_userData, data);
    v7 = v13;
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        px_descriptionForAssertionMessage = [(NSCopying *)v7 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSingleViewContainerView.m" lineNumber:38 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"userData", v11, px_descriptionForAssertionMessage}];
      }
    }

    contentView = [(NSCopying *)v7 contentView];
    [(PXGSingleViewContainerView *)self setContentView:contentView];

    dataCopy = v13;
  }
}

@end