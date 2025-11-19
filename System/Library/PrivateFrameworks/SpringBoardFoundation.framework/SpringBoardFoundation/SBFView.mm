@interface SBFView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGSize)intrinsicContentSize;
- (void)didMoveToWindow;
- (void)setIntrinsicContentSize:(CGSize)a3;
@end

@implementation SBFView

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = SBFView;
  [(SBFView *)&v5 didMoveToWindow];
  v3 = [(SBFView *)self didMoveToWindowHandler];
  if (v3)
  {
    v4 = [(SBFView *)self window];
    (v3)[2](v3, self, v4);
  }
}

- (void)setIntrinsicContentSize:(CGSize)a3
{
  if (self->_intrinsicContentSize.width != a3.width || self->_intrinsicContentSize.height != a3.height)
  {
    self->_intrinsicContentSize = a3;
    [(SBFView *)self invalidateIntrinsicContentSize];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v5 = [(SBFView *)self animatedLayerProperties];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBFView;
    v7 = [(SBFView *)&v9 _shouldAnimatePropertyWithKey:v4];
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