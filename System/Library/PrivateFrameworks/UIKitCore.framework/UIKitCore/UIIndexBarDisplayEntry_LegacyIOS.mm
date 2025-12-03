@interface UIIndexBarDisplayEntry_LegacyIOS
- (CGPoint)baselinePoint;
- (CGRect)bounds;
- (CGRect)typeBounds;
- (id)description;
@end

@implementation UIIndexBarDisplayEntry_LegacyIOS

- (CGRect)typeBounds
{
  x = self->_typeBounds.origin.x;
  y = self->_typeBounds.origin.y;
  width = self->_typeBounds.size.width;
  height = self->_typeBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@: %p", v5, self];

  [(UIIndexBarDisplayEntry_LegacyIOS *)self bounds];
  v6 = NSStringFromCGRect(v12);
  [string appendFormat:@", bounds:%@", v6];

  [(UIIndexBarDisplayEntry_LegacyIOS *)self typeBounds];
  v7 = NSStringFromCGRect(v13);
  [string appendFormat:@", typeBounds:%@", v7];

  [(UIIndexBarDisplayEntry_LegacyIOS *)self baselinePoint];
  v8 = NSStringFromCGPoint(v11);
  [string appendFormat:@", baselinePoint:%@", v8];

  [string appendFormat:@">"];

  return string;
}

- (CGPoint)baselinePoint
{
  x = self->_baselinePoint.x;
  y = self->_baselinePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end