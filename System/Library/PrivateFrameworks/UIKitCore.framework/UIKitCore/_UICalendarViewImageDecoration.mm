@interface _UICalendarViewImageDecoration
- (_UICalendarViewImageDecoration)initWithImage:(id)image color:(id)color size:(int64_t)size;
- (id)_decorationViewForReuseView:(id)view;
- (id)_decorationViewReusableKey;
- (id)defaultImage;
@end

@implementation _UICalendarViewImageDecoration

- (_UICalendarViewImageDecoration)initWithImage:(id)image color:(id)color size:(int64_t)size
{
  imageCopy = image;
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = _UICalendarViewImageDecoration;
  v11 = [(_UICalendarViewImageDecoration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_image, image);
    objc_storeStrong(&v12->_color, color);
    v12->_size = size;
  }

  return v12;
}

- (id)_decorationViewForReuseView:(id)view
{
  viewCopy = view;
  if (!viewCopy || (objc_opt_class(), v5 = viewCopy, (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = objc_alloc_init(_UICalendarDecorationImageView);
  }

  [(_UICalendarDecorationImageView *)v5 setDecorationSize:self->_size];
  if (self->_image)
  {
    [(UIImageView *)v5 setImage:?];
  }

  else
  {
    defaultImage = [(_UICalendarViewImageDecoration *)self defaultImage];
    [(UIImageView *)v5 setImage:defaultImage];
  }

  if (self->_color)
  {
    [(UIView *)v5 setTintColor:?];
  }

  else
  {
    v7 = +[UIColor systemFillColor];
    [(UIView *)v5 setTintColor:v7];
  }

  return v5;
}

- (id)defaultImage
{
  v2 = _circleImage;
  if (!_circleImage)
  {
    v3 = [UIImage systemImageNamed:@"circlebadge.fill"];
    v4 = _circleImage;
    _circleImage = v3;

    v2 = _circleImage;
  }

  return v2;
}

- (id)_decorationViewReusableKey
{
  if (self->_image)
  {
    return @"UICalendarViewDecoration.image";
  }

  else
  {
    return @"UICalendarViewDecoration.circle";
  }
}

@end