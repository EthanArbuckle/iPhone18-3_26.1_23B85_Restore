@interface UITextPlaceholder
- (CGRect)caretRectBeforeInsertion;
- (UITextPlaceholder)init;
@end

@implementation UITextPlaceholder

- (UITextPlaceholder)init
{
  v6.receiver = self;
  v6.super_class = UITextPlaceholder;
  v2 = [(UITextPlaceholder *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_UITextPlaceholderAttachment);
    attachment = v2->_attachment;
    v2->_attachment = v3;
  }

  return v2;
}

- (CGRect)caretRectBeforeInsertion
{
  x = self->_caretRectBeforeInsertion.origin.x;
  y = self->_caretRectBeforeInsertion.origin.y;
  width = self->_caretRectBeforeInsertion.size.width;
  height = self->_caretRectBeforeInsertion.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end