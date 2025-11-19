@interface _UITextClippingDebugInfo
- (CGRect)visibleBounds;
- (UIView)clippingView;
- (_UITextClippingDebugInfo)initWithClippingView:(id)a3 visibleBounds:(CGRect)a4 ignoresResult:(BOOL)a5 edgesClipped:(unint64_t)a6;
@end

@implementation _UITextClippingDebugInfo

- (_UITextClippingDebugInfo)initWithClippingView:(id)a3 visibleBounds:(CGRect)a4 ignoresResult:(BOOL)a5 edgesClipped:(unint64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  objc_storeWeak(&self->_clippingView, a3);
  self->_visibleBounds.origin.x = x;
  self->_visibleBounds.origin.y = y;
  self->_visibleBounds.size.width = width;
  self->_visibleBounds.size.height = height;
  self->_ignoresResult = a5;
  self->_edgesClipped = a6;
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