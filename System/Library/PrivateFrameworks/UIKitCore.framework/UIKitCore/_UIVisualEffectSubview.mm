@interface _UIVisualEffectSubview
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_UIVisualEffectSubview)initWithFrame:(CGRect)frame;
- (_UIVisualEffectViewSubviewMonitoring)subviewMonitor;
- (id)_initialValueForLayer:(id)layer keyPath:(id)path usePresentationValue:(BOOL)value;
- (void)_monitoredView:(id)view willMoveFromSuperview:(id)superview toSuperview:(id)toSuperview;
- (void)layoutSubviews;
- (void)setContainedView:(id)view;
- (void)setFilters:(id)filters;
- (void)setViewEffects:(id)effects;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIVisualEffectSubview

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIVisualEffectSubview;
  [(UIView *)&v3 layoutSubviews];
  if (self->_containedView)
  {
    [(UIView *)self bounds];
    [(_UIVisualEffectViewParticipating *)self->_containedView setFrame:?];
  }
}

- (_UIVisualEffectSubview)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIVisualEffectSubview;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  WeakRetained = objc_loadWeakRetained(&self->_subviewMonitor);
  [WeakRetained _view:self willMoveToWindow:windowCopy];
}

- (void)_monitoredView:(id)view willMoveFromSuperview:(id)superview toSuperview:(id)toSuperview
{
  viewCopy = view;
  superviewCopy = superview;
  if ([toSuperview isDescendantOfView:self] && (objc_msgSend(superviewCopy, "isDescendantOfView:", self) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_subviewMonitor);
    [WeakRetained _view:self willGainDescendent:viewCopy];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_subviewMonitor);
    [WeakRetained _view:self willLoseDescendent:viewCopy];
  }
}

- (void)setContainedView:(id)view
{
  viewCopy = view;
  containedView = self->_containedView;
  if (containedView != viewCopy)
  {
    v7 = viewCopy;
    [(_UIVisualEffectViewParticipating *)containedView removeFromSuperview];
    objc_storeStrong(&self->_containedView, view);
    [(UIView *)self addSubview:self->_containedView];
    [(UIView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)setViewEffects:(id)effects
{
  v4 = _UIVisualEffectSubviewSetViewEffects(self, self->_viewEffects, effects);
  viewEffects = self->_viewEffects;
  self->_viewEffects = v4;
}

- (void)setFilters:(id)filters
{
  v4 = _UIVisualEffectSubviewSetFilters(self, self->_filters, filters);
  filters = self->_filters;
  self->_filters = v4;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = _UIVisualEffectSubview;
  if ([(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    ShouldAnimateKeyInternal = 1;
  }

  else
  {
    ShouldAnimateKeyInternal = _UIVisualEffectSubviewShouldAnimateKeyInternal(self->_viewEffects, keyCopy);
  }

  return ShouldAnimateKeyInternal;
}

- (id)_initialValueForLayer:(id)layer keyPath:(id)path usePresentationValue:(BOOL)value
{
  valueCopy = value;
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = _UIVisualEffectSubview;
  v9 = [(UIView *)&v11 _initialValueForLayer:layer keyPath:pathCopy usePresentationValue:valueCopy];
  if (!v9)
  {
    if ([pathCopy hasPrefix:@"filters."])
    {
      v9 = _UIVisualEffectSubviewFilterIdentityValueForKeypath(self->_filters, pathCopy);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (_UIVisualEffectViewSubviewMonitoring)subviewMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_subviewMonitor);

  return WeakRetained;
}

@end