@interface _VFXExportOperation
- (CGSize)size;
- (SEL)didEndSelector;
- (void)dealloc;
- (void)setDidEndSelector:(SEL)a3;
@end

@implementation _VFXExportOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _VFXExportOperation;
  [(_VFXExportOperation *)&v3 dealloc];
}

- (SEL)didEndSelector
{
  if (self->_didEndSelector)
  {
    return self->_didEndSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setDidEndSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_didEndSelector = v3;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end