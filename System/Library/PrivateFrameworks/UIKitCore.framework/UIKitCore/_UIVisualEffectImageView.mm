@interface _UIVisualEffectImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (id)_initialValueForLayer:(id)layer keyPath:(id)path usePresentationValue:(BOOL)value;
- (void)setContainedView:(id)view;
- (void)setFilters:(id)filters;
- (void)setViewEffects:(id)effects;
@end

@implementation _UIVisualEffectImageView

- (void)setContainedView:(id)view
{
  if (view)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIVisualEffectSubview.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"containedView == nil"}];
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
  v7.super_class = _UIVisualEffectImageView;
  if ([(UIImageView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
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
  v11.super_class = _UIVisualEffectImageView;
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

@end