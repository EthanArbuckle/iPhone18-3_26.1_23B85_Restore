@interface _UIVisualEffectImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (id)_initialValueForLayer:(id)a3 keyPath:(id)a4 usePresentationValue:(BOOL)a5;
- (void)setContainedView:(id)a3;
- (void)setFilters:(id)a3;
- (void)setViewEffects:(id)a3;
@end

@implementation _UIVisualEffectImageView

- (void)setContainedView:(id)a3
{
  if (a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIVisualEffectSubview.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"containedView == nil"}];
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
  v7.super_class = _UIVisualEffectImageView;
  if ([(UIImageView *)&v7 _shouldAnimatePropertyWithKey:v4])
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
  v11.super_class = _UIVisualEffectImageView;
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

@end