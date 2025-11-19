@interface _UIVisualEffectSubview
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_UIVisualEffectSubview)initWithFrame:(CGRect)a3;
- (_UIVisualEffectViewSubviewMonitoring)subviewMonitor;
- (id)_initialValueForLayer:(id)a3 keyPath:(id)a4 usePresentationValue:(BOOL)a5;
- (void)_monitoredView:(id)a3 willMoveFromSuperview:(id)a4 toSuperview:(id)a5;
- (void)layoutSubviews;
- (void)setContainedView:(id)a3;
- (void)setFilters:(id)a3;
- (void)setViewEffects:(id)a3;
- (void)willMoveToWindow:(id)a3;
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

- (_UIVisualEffectSubview)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIVisualEffectSubview;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_subviewMonitor);
  [WeakRetained _view:self willMoveToWindow:v4];
}

- (void)_monitoredView:(id)a3 willMoveFromSuperview:(id)a4 toSuperview:(id)a5
{
  v10 = a3;
  v8 = a4;
  if ([a5 isDescendantOfView:self] && (objc_msgSend(v8, "isDescendantOfView:", self) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_subviewMonitor);
    [WeakRetained _view:self willGainDescendent:v10];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_subviewMonitor);
    [WeakRetained _view:self willLoseDescendent:v10];
  }
}

- (void)setContainedView:(id)a3
{
  v5 = a3;
  containedView = self->_containedView;
  if (containedView != v5)
  {
    v7 = v5;
    [(_UIVisualEffectViewParticipating *)containedView removeFromSuperview];
    objc_storeStrong(&self->_containedView, a3);
    [(UIView *)self addSubview:self->_containedView];
    [(UIView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setViewEffects:(id)a3
{
  v4 = _UIVisualEffectSubviewSetViewEffects(self, self->_viewEffects, a3);
  viewEffects = self->_viewEffects;
  self->_viewEffects = v4;
}

- (void)setFilters:(id)a3
{
  v4 = _UIVisualEffectSubviewSetFilters(self, self->_filters, a3);
  filters = self->_filters;
  self->_filters = v4;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIVisualEffectSubview;
  if ([(UIView *)&v7 _shouldAnimatePropertyWithKey:v4])
  {
    ShouldAnimateKeyInternal = 1;
  }

  else
  {
    ShouldAnimateKeyInternal = _UIVisualEffectSubviewShouldAnimateKeyInternal(self->_viewEffects, v4);
  }

  return ShouldAnimateKeyInternal;
}

- (id)_initialValueForLayer:(id)a3 keyPath:(id)a4 usePresentationValue:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = _UIVisualEffectSubview;
  v9 = [(UIView *)&v11 _initialValueForLayer:a3 keyPath:v8 usePresentationValue:v5];
  if (!v9)
  {
    if ([v8 hasPrefix:@"filters."])
    {
      v9 = _UIVisualEffectSubviewFilterIdentityValueForKeypath(self->_filters, v8);
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