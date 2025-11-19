@interface _UIOHypogeanViewHandle
- (CGRect)bounds;
- (_UIOHypogeanViewHandle)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIOHypogeanViewHandle

- (_UIOHypogeanViewHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIOHypogeanViewHandle *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_uniqueIdentifier);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = NSStringFromSelector(sel_renderId);
    v5->_renderId = [v4 decodeInt64ForKey:v10];

    v11 = NSStringFromSelector(sel_contextId);
    v5->_contextId = [v4 decodeInt32ForKey:v11];

    v12 = NSStringFromSelector(sel_bounds);
    [v4 decodeCGRectForKey:v12];
    v5->_bounds.origin.x = v13;
    v5->_bounds.origin.y = v14;
    v5->_bounds.size.width = v15;
    v5->_bounds.size.height = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  uniqueIdentifier = self->_uniqueIdentifier;
  v5 = a3;
  v6 = NSStringFromSelector(sel_uniqueIdentifier);
  [v5 encodeObject:uniqueIdentifier forKey:v6];

  renderId = self->_renderId;
  v8 = NSStringFromSelector(sel_renderId);
  [v5 encodeInt64:renderId forKey:v8];

  contextId = self->_contextId;
  v10 = NSStringFromSelector(sel_contextId);
  [v5 encodeInt32:contextId forKey:v10];

  v11 = NSStringFromSelector(sel_bounds);
  [v5 encodeCGRect:v11 forKey:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
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

@end