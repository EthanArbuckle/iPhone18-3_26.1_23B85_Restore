@interface PXTilingControllerDebugInfo
- (CGRect)activeRect;
- (CGRect)cachedRect;
- (CGRect)contentBounds;
- (CGRect)pagedRect;
- (CGRect)visibleRect;
- (id)debugQuickLookObject;
- (void)drawInRect:(CGRect)rect inContext:(CGContext *)context;
@end

@implementation PXTilingControllerDebugInfo

- (CGRect)contentBounds
{
  x = self->_contentBounds.origin.x;
  y = self->_contentBounds.origin.y;
  width = self->_contentBounds.size.width;
  height = self->_contentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cachedRect
{
  x = self->_cachedRect.origin.x;
  y = self->_cachedRect.origin.y;
  width = self->_cachedRect.size.width;
  height = self->_cachedRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)pagedRect
{
  x = self->_pagedRect.origin.x;
  y = self->_pagedRect.origin.y;
  width = self->_pagedRect.size.width;
  height = self->_pagedRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)activeRect
{
  x = self->_activeRect.origin.x;
  y = self->_activeRect.origin.y;
  width = self->_activeRect.size.width;
  height = self->_activeRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)debugQuickLookObject
{
  v6.width = 50.0;
  v6.height = 640.0;
  UIGraphicsBeginImageContextWithOptions(v6, 1, 2.0);
  [(PXTilingControllerDebugInfo *)self drawInRect:UIGraphicsGetCurrentContext() inContext:0.0, 0.0, 50.0, 640.0];
  v3 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v3;
}

- (void)drawInRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = *MEMORY[0x1E69E9840];
  CGContextSaveGState(context);
  CGContextSetRGBFillColor(context, 1.0, 1.0, 1.0, 1.0);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  CGContextFillRect(context, v10);
  PXEdgeInsetsMake();
}

@end