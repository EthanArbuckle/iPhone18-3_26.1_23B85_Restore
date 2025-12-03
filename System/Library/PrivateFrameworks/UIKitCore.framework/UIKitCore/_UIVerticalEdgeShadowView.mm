@interface _UIVerticalEdgeShadowView
- (_UIVerticalEdgeShadowView)initWithWidth:(double)width edge:(unint64_t)edge;
- (void)_loadImageIfNecessary;
- (void)layoutSubviews;
@end

@implementation _UIVerticalEdgeShadowView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIVerticalEdgeShadowView;
  [(UIImageView *)&v3 layoutSubviews];
  [(_UIVerticalEdgeShadowView *)self _loadImageIfNecessary];
}

- (void)_loadImageIfNecessary
{
  image = [(UIImageView *)self image];

  if (!image)
  {
    width = self->_width;
    _screen = [(UIView *)self _screen];
    [_screen scale];
    v6 = v5;
    edge = self->_edge;
    if (qword_1ED49A908 != -1)
    {
      dispatch_once(&qword_1ED49A908, &__block_literal_global_330);
    }

    v8 = [[_UIShadowViewImageCacheKey alloc] initWithSize:2 * (edge != 2) scale:width options:v6];
    imageFlippedForRightToLeftLayoutDirection = [_MergedGlobals_11_5 objectForKey:v8];
    if (!imageFlippedForRightToLeftLayoutDirection)
    {
      _UIGraphicsBeginImageContextWithOptions(0, 1, width, 1.0, v6);
      ContextStack = GetContextStack(0);
      if (*ContextStack < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = ContextStack[3 * (*ContextStack - 1) + 1];
      }

      v12 = +[UIColor blackColor];
      CGContextSetFillColorWithColor(v11, [v12 CGColor]);

      v13 = +[UIColor blackColor];
      cGColor = [v13 CGColor];
      CGContextSetShadowWithColor(v11, *MEMORY[0x1E695F060], width * v6, cGColor);

      v15 = -width;
      if (edge == 2)
      {
        v15 = width;
      }

      v16 = width * -0.5;
      v17 = width;
      v18 = width;
      CGContextFillRect(v11, *&v15);
      v19 = _UIGraphicsGetImageFromCurrentImageContext(0);
      imageFlippedForRightToLeftLayoutDirection = [v19 imageFlippedForRightToLeftLayoutDirection];

      UIGraphicsEndImageContext();
      if (imageFlippedForRightToLeftLayoutDirection)
      {
        [_MergedGlobals_11_5 setObject:imageFlippedForRightToLeftLayoutDirection forKey:v8];
      }
    }

    [(UIImageView *)self setImage:imageFlippedForRightToLeftLayoutDirection];
  }
}

- (_UIVerticalEdgeShadowView)initWithWidth:(double)width edge:(unint64_t)edge
{
  v9.receiver = self;
  v9.super_class = _UIVerticalEdgeShadowView;
  v6 = [(UIImageView *)&v9 initWithFrame:0.0, 0.0, width, 1.0];
  v7 = v6;
  if (v6)
  {
    [(UIImageView *)v6 setContentMode:0];
    v7->_width = width;
    v7->_edge = edge;
  }

  return v7;
}

@end