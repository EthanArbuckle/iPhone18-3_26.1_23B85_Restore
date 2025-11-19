@interface _UICalendarViewImageDecoration
- (_UICalendarViewImageDecoration)initWithImage:(id)a3 color:(id)a4 size:(int64_t)a5;
- (id)_decorationViewForReuseView:(id)a3;
- (id)_decorationViewReusableKey;
- (id)defaultImage;
@end

@implementation _UICalendarViewImageDecoration

- (_UICalendarViewImageDecoration)initWithImage:(id)a3 color:(id)a4 size:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _UICalendarViewImageDecoration;
  v11 = [(_UICalendarViewImageDecoration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_image, a3);
    objc_storeStrong(&v12->_color, a4);
    v12->_size = a5;
  }

  return v12;
}

- (id)_decorationViewForReuseView:(id)a3
{
  v4 = a3;
  if (!v4 || (objc_opt_class(), v5 = v4, (objc_opt_isKindOfClass() & 1) == 0))
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
    v6 = [(_UICalendarViewImageDecoration *)self defaultImage];
    [(UIImageView *)v5 setImage:v6];
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