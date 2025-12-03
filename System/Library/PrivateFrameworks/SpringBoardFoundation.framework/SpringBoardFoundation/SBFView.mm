@interface SBFView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGSize)intrinsicContentSize;
- (void)didMoveToWindow;
- (void)setIntrinsicContentSize:(CGSize)size;
@end

@implementation SBFView

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = SBFView;
  [(SBFView *)&v5 didMoveToWindow];
  didMoveToWindowHandler = [(SBFView *)self didMoveToWindowHandler];
  if (didMoveToWindowHandler)
  {
    window = [(SBFView *)self window];
    (didMoveToWindowHandler)[2](didMoveToWindowHandler, self, window);
  }
}

- (void)setIntrinsicContentSize:(CGSize)size
{
  if (self->_intrinsicContentSize.width != size.width || self->_intrinsicContentSize.height != size.height)
  {
    self->_intrinsicContentSize = size;
    [(SBFView *)self invalidateIntrinsicContentSize];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  animatedLayerProperties = [(SBFView *)self animatedLayerProperties];
  v6 = [animatedLayerProperties containsObject:keyCopy];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBFView;
    v7 = [(SBFView *)&v9 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v7;
}

- (CGSize)intrinsicContentSize
{
  width = self->_intrinsicContentSize.width;
  height = self->_intrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end