@interface PREditorElementLayoutAttributes
- (CGRect)rect;
- (PREditorElementLayoutAttributes)initWithRect:(CGRect)rect variant:(unint64_t)variant resolvedTitleLayout:(unint64_t)layout;
@end

@implementation PREditorElementLayoutAttributes

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PREditorElementLayoutAttributes)initWithRect:(CGRect)rect variant:(unint64_t)variant resolvedTitleLayout:(unint64_t)layout
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12.receiver = self;
  v12.super_class = PREditorElementLayoutAttributes;
  result = [(PREditorElementLayoutAttributes *)&v12 init];
  if (result)
  {
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
    result->_variant = variant;
    result->_resolvedTitleLayout = layout;
  }

  return result;
}

@end