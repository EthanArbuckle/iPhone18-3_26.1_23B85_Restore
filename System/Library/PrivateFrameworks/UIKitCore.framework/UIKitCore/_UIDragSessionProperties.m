@interface _UIDragSessionProperties
- (CGSize)_maximumResizableSize;
- (CGSize)_minimumResizableSize;
- (_UIDragSessionProperties)init;
@end

@implementation _UIDragSessionProperties

- (_UIDragSessionProperties)init
{
  v3.receiver = self;
  v3.super_class = _UIDragSessionProperties;
  result = [(_UIDragSessionProperties *)&v3 init];
  if (result)
  {
    result->_supportsSystemDrag = 1;
  }

  return result;
}

- (CGSize)_minimumResizableSize
{
  width = self->__minimumResizableSize.width;
  height = self->__minimumResizableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_maximumResizableSize
{
  width = self->__maximumResizableSize.width;
  height = self->__maximumResizableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end