@interface STUIStatusBarPortalView
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)setView:(id)a3;
@end

@implementation STUIStatusBarPortalView

- (void)layoutSubviews
{
  [(STUIStatusBarPortalView *)self bounds];
  [(_UIPortalView *)self->_portalView setFrame:?];
  v3.receiver = self;
  v3.super_class = STUIStatusBarPortalView;
  [(STUIStatusBarPortalView *)&v3 layoutSubviews];
}

- (void)setView:(id)a3
{
  portalView = a3;
  v17 = portalView;
  if (self->_view != portalView)
  {
    objc_storeStrong(&self->_view, a3);
    v6 = v17;
    portalView = self->_portalView;
    if (!v17)
    {
      if (!portalView)
      {
        goto LABEL_16;
      }

      [(UIView *)portalView removeFromSuperview];
      v7 = self->_portalView;
      self->_portalView = 0;

      goto LABEL_15;
    }

    if (portalView)
    {
      [(UIView *)portalView setSourceView:v17];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277D76180]) initWithSourceView:v17];
      v9 = self->_portalView;
      self->_portalView = v8;

      [(_UIPortalView *)self->_portalView setName:@"STUIStatusBarAdditionalItem.portal"];
      [(_UIPortalView *)self->_portalView setMatchesAlpha:0];
      [(_UIPortalView *)self->_portalView setHidesSourceView:1];
      [(STUIStatusBarPortalView *)self addSubview:self->_portalView];
    }

    [(STUIStatusBarPortalView *)self setNeedsLayout];
    v6 = v17;
LABEL_11:
    [(UIView *)v6 bounds];
    v11 = v10;
    v13 = v12;
    portalView = [(STUIStatusBarPortalView *)self bounds];
    v6 = v17;
    if (v11 == v15 && v13 == v14)
    {
      goto LABEL_16;
    }

LABEL_15:
    portalView = [(STUIStatusBarPortalView *)self invalidateIntrinsicContentSize];
    v6 = v17;
    goto LABEL_16;
  }

  v6 = portalView;
  if (portalView)
  {
    goto LABEL_11;
  }

LABEL_16:

  MEMORY[0x2821F96F8](portalView, v6);
}

- (CGSize)intrinsicContentSize
{
  view = self->_view;
  if (view)
  {
    [(UIView *)view bounds];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v4 = *MEMORY[0x277CBF3A8];
    v6 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v6;
  result.width = v4;
  return result;
}

@end