@interface _UIOHypogeanViewHandle
- (CGRect)bounds;
- (_UIOHypogeanViewHandle)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIOHypogeanViewHandle

- (_UIOHypogeanViewHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIOHypogeanViewHandle *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_uniqueIdentifier);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = NSStringFromSelector(sel_renderId);
    v5->_renderId = [coderCopy decodeInt64ForKey:v10];

    v11 = NSStringFromSelector(sel_contextId);
    v5->_contextId = [coderCopy decodeInt32ForKey:v11];

    v12 = NSStringFromSelector(sel_bounds);
    [coderCopy decodeCGRectForKey:v12];
    v5->_bounds.origin.x = v13;
    v5->_bounds.origin.y = v14;
    v5->_bounds.size.width = v15;
    v5->_bounds.size.height = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uniqueIdentifier = self->_uniqueIdentifier;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_uniqueIdentifier);
  [coderCopy encodeObject:uniqueIdentifier forKey:v6];

  renderId = self->_renderId;
  v8 = NSStringFromSelector(sel_renderId);
  [coderCopy encodeInt64:renderId forKey:v8];

  contextId = self->_contextId;
  v10 = NSStringFromSelector(sel_contextId);
  [coderCopy encodeInt32:contextId forKey:v10];

  v11 = NSStringFromSelector(sel_bounds);
  [coderCopy encodeCGRect:v11 forKey:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
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