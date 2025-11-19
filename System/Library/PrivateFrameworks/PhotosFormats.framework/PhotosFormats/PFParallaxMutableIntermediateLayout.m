@interface PFParallaxMutableIntermediateLayout
- (CGRect)adaptiveInactiveTopRect;
- (CGRect)adaptiveVisibleRect;
- (CGRect)inactiveRect;
- (CGRect)salientContentRect;
- (CGRect)spatialAdaptiveVisibleRect;
- (CGRect)spatialVisibleRect;
- (CGRect)visibleRect;
@end

@implementation PFParallaxMutableIntermediateLayout

- (CGRect)spatialAdaptiveVisibleRect
{
  x = self->spatialAdaptiveVisibleRect.origin.x;
  y = self->spatialAdaptiveVisibleRect.origin.y;
  width = self->spatialAdaptiveVisibleRect.size.width;
  height = self->spatialAdaptiveVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)spatialVisibleRect
{
  x = self->spatialVisibleRect.origin.x;
  y = self->spatialVisibleRect.origin.y;
  width = self->spatialVisibleRect.size.width;
  height = self->spatialVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)adaptiveInactiveTopRect
{
  x = self->adaptiveInactiveTopRect.origin.x;
  y = self->adaptiveInactiveTopRect.origin.y;
  width = self->adaptiveInactiveTopRect.size.width;
  height = self->adaptiveInactiveTopRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)inactiveRect
{
  x = self->inactiveRect.origin.x;
  y = self->inactiveRect.origin.y;
  width = self->inactiveRect.size.width;
  height = self->inactiveRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)adaptiveVisibleRect
{
  x = self->adaptiveVisibleRect.origin.x;
  y = self->adaptiveVisibleRect.origin.y;
  width = self->adaptiveVisibleRect.size.width;
  height = self->adaptiveVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)salientContentRect
{
  x = self->salientContentRect.origin.x;
  y = self->salientContentRect.origin.y;
  width = self->salientContentRect.size.width;
  height = self->salientContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)visibleRect
{
  x = self->visibleRect.origin.x;
  y = self->visibleRect.origin.y;
  width = self->visibleRect.size.width;
  height = self->visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end