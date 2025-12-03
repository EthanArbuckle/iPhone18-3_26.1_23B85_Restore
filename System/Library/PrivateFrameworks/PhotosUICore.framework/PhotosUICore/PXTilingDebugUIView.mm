@interface PXTilingDebugUIView
- (PXTilingDebugUIView)init;
- (void)_setDebugInfo:(id)info;
- (void)drawRect:(CGRect)rect;
- (void)tilingControllerDidUpdateDebugInfo:(id)info;
@end

@implementation PXTilingDebugUIView

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  _debugInfo = [(PXTilingDebugUIView *)self _debugInfo];
  [_debugInfo drawInRect:CurrentContext inContext:{x, y, width, height}];
}

- (void)tilingControllerDidUpdateDebugInfo:(id)info
{
  debugInfo = [info debugInfo];
  [(PXTilingDebugUIView *)self _setDebugInfo:debugInfo];
}

- (void)_setDebugInfo:(id)info
{
  infoCopy = info;
  if (self->__debugInfo != infoCopy)
  {
    v6 = infoCopy;
    objc_storeStrong(&self->__debugInfo, info);
    [(PXTilingDebugUIView *)self setNeedsDisplay];
    infoCopy = v6;
  }
}

- (PXTilingDebugUIView)init
{
  v5.receiver = self;
  v5.super_class = PXTilingDebugUIView;
  v2 = [(PXTilingDebugUIView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_debugWidth = 100.0;
    [(PXTilingDebugUIView *)v2 setOpaque:0];
    [(PXTilingDebugUIView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

@end