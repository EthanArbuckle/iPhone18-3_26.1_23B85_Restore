@interface _UIEditMenuPresentationLayout
- (CGPoint)anchorPoint;
- (CGPoint)menuPosition;
- (CGRect)containerBounds;
- (CGRect)menuSourceRect;
- (id)description;
@end

@implementation _UIEditMenuPresentationLayout

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"UIEditMenuPresentationLayout:\n"];
  v4 = NSStringFromCGRect(self->_containerBounds);
  [v3 appendFormat:@"\t containerBounds: %@, \n", v4];

  v5 = NSStringFromCGPoint(self->_anchorPoint);
  [v3 appendFormat:@"\t anchorPoint: %@, \n", v5];

  v6 = NSStringFromCGPoint(self->_menuPosition);
  [v3 appendFormat:@"\t menuPosition: %@, \n", v6];

  [v3 appendFormat:@"\t arrowDirection: %ld, \n", self->_arrowDirection];
  v7 = NSStringFromCGRect(self->_menuSourceRect);
  [v3 appendFormat:@"\t menuSourceRect: %@, \n", v7];

  v8 = [v3 copy];

  return v8;
}

- (CGRect)containerBounds
{
  x = self->_containerBounds.origin.x;
  y = self->_containerBounds.origin.y;
  width = self->_containerBounds.size.width;
  height = self->_containerBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)menuPosition
{
  x = self->_menuPosition.x;
  y = self->_menuPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)menuSourceRect
{
  x = self->_menuSourceRect.origin.x;
  y = self->_menuSourceRect.origin.y;
  width = self->_menuSourceRect.size.width;
  height = self->_menuSourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end