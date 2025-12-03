@interface QLTRenderedIcon
- (CGRect)contentRect;
- (QLTRenderedIcon)initWithImage:(id)image contentRect:(CGRect)rect;
@end

@implementation QLTRenderedIcon

- (QLTRenderedIcon)initWithImage:(id)image contentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11.receiver = self;
  v11.super_class = QLTRenderedIcon;
  imageCopy = image;
  v9 = [(QLTRenderedIcon *)&v11 init];
  [(QLTRenderedIcon *)v9 setImage:imageCopy, v11.receiver, v11.super_class];

  [(QLTRenderedIcon *)v9 setContentRect:x, y, width, height];
  return v9;
}

- (CGRect)contentRect
{
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end