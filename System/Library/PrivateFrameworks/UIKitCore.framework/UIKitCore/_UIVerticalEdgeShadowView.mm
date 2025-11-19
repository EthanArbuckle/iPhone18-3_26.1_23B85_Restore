@interface _UIVerticalEdgeShadowView
- (_UIVerticalEdgeShadowView)initWithWidth:(double)a3 edge:(unint64_t)a4;
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
  v3 = [(UIImageView *)self image];

  if (!v3)
  {
    width = self->_width;
    v20 = [(UIView *)self _screen];
    [v20 scale];
    v6 = v5;
    edge = self->_edge;
    if (qword_1ED49A908 != -1)
    {
      dispatch_once(&qword_1ED49A908, &__block_literal_global_330);
    }

    v8 = [[_UIShadowViewImageCacheKey alloc] initWithSize:2 * (edge != 2) scale:width options:v6];
    v9 = [_MergedGlobals_11_5 objectForKey:v8];
    if (!v9)
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
      v14 = [v13 CGColor];
      CGContextSetShadowWithColor(v11, *MEMORY[0x1E695F060], width * v6, v14);

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
      v9 = [v19 imageFlippedForRightToLeftLayoutDirection];

      UIGraphicsEndImageContext();
      if (v9)
      {
        [_MergedGlobals_11_5 setObject:v9 forKey:v8];
      }
    }

    [(UIImageView *)self setImage:v9];
  }
}

- (_UIVerticalEdgeShadowView)initWithWidth:(double)a3 edge:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = _UIVerticalEdgeShadowView;
  v6 = [(UIImageView *)&v9 initWithFrame:0.0, 0.0, a3, 1.0];
  v7 = v6;
  if (v6)
  {
    [(UIImageView *)v6 setContentMode:0];
    v7->_width = a3;
    v7->_edge = a4;
  }

  return v7;
}

@end