@interface _SAUIProvidedViewContainerView
- (SAUIElementView)elementView;
- (_SAUIProvidedViewContainerView)initWithFrame:(CGRect)frame;
- (id)_contentView;
- (void)_createPortalView;
- (void)_recreatePortalViewIfNeeded;
- (void)_removePortalView;
- (void)layoutSubviews;
- (void)setProvidedView:(id)view;
- (void)willMoveToWindow:(id)window;
@end

@implementation _SAUIProvidedViewContainerView

- (_SAUIProvidedViewContainerView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _SAUIProvidedViewContainerView;
  v3 = [(_SAUIProvidedViewContainerView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    p_lastSize = &v3->_lastSize;
    [(_SAUIProvidedViewContainerView *)v3 bounds];
    *&p_lastSize->width = v6;
    v4->_lastSize.height = v7;
  }

  return v4;
}

- (id)_contentView
{
  portalView = self->_portalView;
  if (!portalView)
  {
    portalView = self->_providedView;
  }

  return portalView;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = _SAUIProvidedViewContainerView;
  [(_SAUIProvidedViewContainerView *)&v14 layoutSubviews];
  [(_SAUIProvidedViewContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _contentView = [(_SAUIProvidedViewContainerView *)self _contentView];
  [_contentView setFrame:{v4, v6, v8, v10}];

  if (self->_lastSize.width != v8 || self->_lastSize.height != v10)
  {
    self->_lastSize.width = v8;
    self->_lastSize.height = v10;
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    [WeakRetained _didLayoutResizedTransformView:self];
  }
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  window = [(_SAUIProvidedViewContainerView *)self window];
  v6.receiver = self;
  v6.super_class = _SAUIProvidedViewContainerView;
  [(_SAUIProvidedViewContainerView *)&v6 willMoveToWindow:windowCopy];

  if (window != windowCopy && windowCopy && window)
  {
    [(_SAUIProvidedViewContainerView *)self _recreatePortalViewIfNeeded];
  }
}

- (void)setProvidedView:(id)view
{
  viewCopy = view;
  if (self->_providedView != viewCopy)
  {
    v7 = viewCopy;
    if (objc_opt_respondsToSelector())
    {
      v6 = [(UIView *)v7 allowsReparentingByLayoutHost]^ 1;
    }

    else
    {
      LOBYTE(v6) = 1;
    }

    self->_portalsProvidedView = v6;
    if ([(UIView *)self->_providedView isDescendantOfView:self])
    {
      [(UIView *)self->_providedView removeFromSuperview];
    }

    [(_SAUIProvidedViewContainerView *)self _removePortalView];
    objc_storeStrong(&self->_providedView, view);
    viewCopy = v7;
    if (v7)
    {
      if (self->_portalsProvidedView)
      {
        [(_SAUIProvidedViewContainerView *)self _createPortalView];
      }

      else
      {
        [(_SAUIProvidedViewContainerView *)self bounds];
        [(UIView *)v7 setFrame:?];
        [(_SAUIProvidedViewContainerView *)self addSubview:v7];
      }

      [(_SAUIProvidedViewContainerView *)self setNeedsLayout];
      viewCopy = v7;
    }
  }
}

- (void)_recreatePortalViewIfNeeded
{
  if (self->_providedView && self->_portalsProvidedView)
  {
    [(_SAUIProvidedViewContainerView *)self _removePortalView];
    [(_SAUIProvidedViewContainerView *)self _createPortalView];

    [(_SAUIProvidedViewContainerView *)self setNeedsLayout];
  }
}

- (void)_createPortalView
{
  v3 = [_SAUIPortalView alloc];
  [(_SAUIProvidedViewContainerView *)self bounds];
  v4 = [(_SAUIPortalView *)v3 initWithFrame:?];
  portalView = self->_portalView;
  self->_portalView = v4;

  [(_SAUIPortalView *)self->_portalView setSourceView:self->_providedView];
  v6 = self->_portalView;

  [(_SAUIProvidedViewContainerView *)self addSubview:v6];
}

- (void)_removePortalView
{
  [(_SAUIPortalView *)self->_portalView removeFromSuperview];
  portalView = self->_portalView;
  self->_portalView = 0;
}

- (SAUIElementView)elementView
{
  WeakRetained = objc_loadWeakRetained(&self->_elementView);

  return WeakRetained;
}

@end