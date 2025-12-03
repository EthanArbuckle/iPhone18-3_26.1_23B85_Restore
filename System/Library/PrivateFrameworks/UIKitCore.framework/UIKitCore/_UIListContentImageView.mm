@interface _UIListContentImageView
- (_UIListContentImageView)initWithCoder:(id)coder;
- (_UIListContentImageView)initWithFrame:(CGRect)frame;
- (_UIListContentImageView)initWithImage:(id)image;
- (_UIListContentImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (void)_registerTraitChanges;
- (void)_setStrokeColor:(id)color;
- (void)_setStrokeWidth:(double)width;
- (void)_updateStroke;
@end

@implementation _UIListContentImageView

- (void)_registerTraitChanges
{
  v4 = +[UITraitCollection systemTraitsAffectingColorAppearance];
  v3 = [(UIView *)self registerForTraitChanges:v4 withAction:sel__updateStroke];
}

- (void)_updateStroke
{
  layer = [(UIView *)self layer];
  if (self->_strokeWidth <= 0.0 || (v4 = self->_strokeColor) == 0 || (v11 = layer, +[UIColor clearColor], v5 = objc_claimAutoreleasedReturnValue(), v5, layer = v11, v4 == v5))
  {
    if (self->_hadStroke)
    {
      v12 = layer;
      v10 = +[UIColor blackColor];
      [v12 setBorderColor:{objc_msgSend(v10, "CGColor")}];

      [v12 setBorderWidth:0.0];
      layer = v12;
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
    [v11 setMasksToBounds:1];
    strokeColor = self->_strokeColor;
    traitCollection = [(UIView *)self traitCollection];
    v9 = [(UIColor *)strokeColor resolvedColorWithTraitCollection:traitCollection];
    [v11 setBorderColor:{objc_msgSend(v9, "CGColor")}];

    [v11 setBorderWidth:self->_strokeWidth];
    layer = v11;
  }

  self->_hadStroke = v6;
}

- (_UIListContentImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIListContentImageView;
  v3 = [(UIImageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIListContentImageView *)v3 _registerTraitChanges];
  }

  return v4;
}

- (_UIListContentImageView)initWithImage:(id)image
{
  v6.receiver = self;
  v6.super_class = _UIListContentImageView;
  v3 = [(UIImageView *)&v6 initWithImage:image];
  v4 = v3;
  if (v3)
  {
    [(_UIListContentImageView *)v3 _registerTraitChanges];
  }

  return v4;
}

- (_UIListContentImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  v7.receiver = self;
  v7.super_class = _UIListContentImageView;
  v4 = [(UIImageView *)&v7 initWithImage:image highlightedImage:highlightedImage];
  v5 = v4;
  if (v4)
  {
    [(_UIListContentImageView *)v4 _registerTraitChanges];
  }

  return v5;
}

- (_UIListContentImageView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UIListContentImageView;
  v3 = [(UIImageView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(_UIListContentImageView *)v3 _registerTraitChanges];
  }

  return v4;
}

- (void)_setStrokeColor:(id)color
{
  colorCopy = color;
  if (self->_strokeColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_strokeColor, color);
    [(_UIListContentImageView *)self _updateStroke];
    colorCopy = v6;
  }
}

- (void)_setStrokeWidth:(double)width
{
  if (self->_strokeWidth != width)
  {
    self->_strokeWidth = width;
    [(_UIListContentImageView *)self _updateStroke];
  }
}

@end