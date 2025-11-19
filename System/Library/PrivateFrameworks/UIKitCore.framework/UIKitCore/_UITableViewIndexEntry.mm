@interface _UITableViewIndexEntry
- (CGPoint)baselinePoint;
- (CGRect)bounds;
- (CGRect)typeBounds;
- (id)description;
@end

@implementation _UITableViewIndexEntry

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@: %p", v5, self];

  [(_UITableViewIndexEntry *)self bounds];
  v6 = NSStringFromCGRect(v12);
  [v3 appendFormat:@", bounds:%@", v6];

  [(_UITableViewIndexEntry *)self typeBounds];
  v7 = NSStringFromCGRect(v13);
  [v3 appendFormat:@", typeBounds:%@", v7];

  [(_UITableViewIndexEntry *)self baselinePoint];
  v8 = NSStringFromCGPoint(v11);
  [v3 appendFormat:@", baselinePoint:%@", v8];

  [v3 appendFormat:@">"];

  return v3;
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

- (CGPoint)baselinePoint
{
  x = self->_baselinePoint.x;
  y = self->_baselinePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end