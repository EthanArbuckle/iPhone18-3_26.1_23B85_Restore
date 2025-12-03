@interface _UITextClippingDebugInfo
- (CGRect)visibleBounds;
- (UIView)clippingView;
- (_UITextClippingDebugInfo)initWithClippingView:(id)view visibleBounds:(CGRect)bounds ignoresResult:(BOOL)result edgesClipped:(unint64_t)clipped;
@end

@implementation _UITextClippingDebugInfo

- (_UITextClippingDebugInfo)initWithClippingView:(id)view visibleBounds:(CGRect)bounds ignoresResult:(BOOL)result edgesClipped:(unint64_t)clipped
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  objc_storeWeak(&self->_clippingView, view);
  self->_visibleBounds.origin.x = x;
  self->_visibleBounds.origin.y = y;
  self->_visibleBounds.size.width = width;
  self->_visibleBounds.size.height = height;
  self->_ignoresResult = result;
  self->_edgesClipped = clipped;
  return self;
}

- (UIView)clippingView
{
  WeakRetained = objc_loadWeakRetained(&self->_clippingView);

  return WeakRetained;
}

- (CGRect)visibleBounds
{
  x = self->_visibleBounds.origin.x;
  y = self->_visibleBounds.origin.y;
  width = self->_visibleBounds.size.width;
  height = self->_visibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end