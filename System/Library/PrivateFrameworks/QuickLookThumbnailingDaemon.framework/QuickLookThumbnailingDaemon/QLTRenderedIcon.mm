@interface QLTRenderedIcon
- (CGRect)contentRect;
- (QLTRenderedIcon)initWithImage:(id)a3 contentRect:(CGRect)a4;
@end

@implementation QLTRenderedIcon

- (QLTRenderedIcon)initWithImage:(id)a3 contentRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11.receiver = self;
  v11.super_class = QLTRenderedIcon;
  v8 = a3;
  v9 = [(QLTRenderedIcon *)&v11 init];
  [(QLTRenderedIcon *)v9 setImage:v8, v11.receiver, v11.super_class];

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