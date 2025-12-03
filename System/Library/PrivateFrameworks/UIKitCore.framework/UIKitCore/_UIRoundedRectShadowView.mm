@interface _UIRoundedRectShadowView
+ (UIEdgeInsets)_expansionInsetForShadowImage;
- (CGRect)frameWithContentWithFrame:(CGRect)frame;
- (_UIRoundedRectShadowView)initWithCornerRadius:(double)radius;
- (void)_loadImageIfNecessary;
- (void)_updateShadowOutsetsIfNecessary;
- (void)layoutSubviews;
@end

@implementation _UIRoundedRectShadowView

- (void)_loadImageIfNecessary
{
  image = [(UIImageView *)self image];

  if (!image)
  {
    maskCornerRadius = self->_maskCornerRadius;
    _screen = [(UIView *)self _screen];
    [_screen scale];
    v7 = v6;
    _shouldCutoutShadow = [objc_opt_class() _shouldCutoutShadow];
    if (qword_1ED49A918 != -1)
    {
      dispatch_once(&qword_1ED49A918, &__block_literal_global_80_0);
    }

    v9 = [[_UIShadowViewImageCacheKey alloc] initWithSize:_shouldCutoutShadow scale:maskCornerRadius options:v7];
    v10 = [qword_1ED49A910 objectForKey:v9];
    if (!v10)
    {
      v11 = [UIImage kitImageNamed:@"_UIPopoverShadow"];
      _UIGraphicsBeginImageContextWithOptions(0, 1, 400.0, 400.0, v7);
      ContextStack = GetContextStack(0);
      v33 = maskCornerRadius;
      if (*ContextStack < 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = ContextStack[3 * (*ContextStack - 1) + 1];
      }

      v14 = 0;
      v15 = *MEMORY[0x1E695F060];
      v16 = *(MEMORY[0x1E695F060] + 8);
      v17 = *MEMORY[0x1E695EFF8];
      v18 = *(MEMORY[0x1E695EFF8] + 8);
      do
      {
        CGContextSaveGState(v13);
        if (v14 == 3)
        {
          v21 = 0.0;
          v20 = 400.0;
          v19 = 4.71238898;
        }

        else if (v14 == 2)
        {
          [v11 size];
          v20 = v22 + v22;
          v21 = 400.0;
          v19 = 3.14159265;
        }

        else
        {
          v19 = 0.0;
          v20 = v16;
          v21 = v15;
          if (v14 == 1)
          {
            v20 = 0.0;
            v21 = 400.0;
            v19 = 1.57079633;
          }
        }

        CGContextTranslateCTM(v13, v21, v20);
        CGContextRotateCTM(v13, v19);
        [v11 drawAtPoint:{v17, v18}];
        CGContextRestoreGState(v13);
        ++v14;
      }

      while (v14 != 4);
      if (_shouldCutoutShadow)
      {
        v23 = +[UIColor blackColor];
        CGContextSetFillColorWithColor(v13, [v23 CGColor]);

        CGContextSetBlendMode(v13, kCGBlendModeClear);
        v36.size.width = 400.0;
        v36.origin.x = 0.0;
        v36.origin.y = 0.0;
        v36.size.height = 400.0;
        v37 = CGRectInset(v36, 150.0, 150.0);
        maskCornerRadius = [UIBezierPath bezierPathWithRoundedRect:v37.origin.x cornerRadius:v37.origin.y, v37.size.width, v37.size.height, maskCornerRadius];
        [maskCornerRadius fill];
      }

      v25 = _UIGraphicsGetImageFromCurrentImageContext(0);
      v10 = [v25 resizableImageWithCapInsets:{-1.0 / v7 + 200.0, -1.0 / v7 + 200.0, -1.0 / v7 + 200.0, -1.0 / v7 + 200.0}];

      UIGraphicsEndImageContext();
      if (v10)
      {
        [qword_1ED49A910 setObject:v10 forKey:v9];
      }
    }

    [(UIImageView *)self setImage:v10];
  }

  [(UIView *)self frame];
  if (v26 < 400.0 || ([(UIView *)self frame], v27 < 400.0))
  {
    v28 = fmax(self->_maskCornerRadius + 150.0, 170.0);
    _screen2 = [(UIView *)self _screen];
    [_screen2 scale];
    v31 = -1.0 / v30 + 200.0;

    if (v28 >= v31)
    {
      v28 = v31;
    }

    image2 = [(UIImageView *)self image];
    v34 = [image2 resizableImageWithCapInsets:{v28, v28, v28, v28}];

    [(UIImageView *)self setImage:v34];
  }
}

- (void)_updateShadowOutsetsIfNecessary
{
  p_shadowOutsets = &self->_shadowOutsets;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&self->_shadowOutsets.top), vceqzq_f64(*&self->_shadowOutsets.bottom))))) & 1) == 0)
  {
    +[(_UIRoundedRectShadowView *)_UICutoutShadowView];
    p_shadowOutsets->top = v3;
    p_shadowOutsets->left = v4;
    p_shadowOutsets->bottom = v5;
    p_shadowOutsets->right = v6;
  }
}

+ (UIEdgeInsets)_expansionInsetForShadowImage
{
  v2 = -150.0;
  v3 = -150.0;
  v4 = -150.0;
  v5 = -150.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIRoundedRectShadowView;
  [(UIImageView *)&v3 layoutSubviews];
  [(_UIRoundedRectShadowView *)self _loadImageIfNecessary];
}

- (_UIRoundedRectShadowView)initWithCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = _UIRoundedRectShadowView;
  result = [(UIView *)&v5 init];
  if (result)
  {
    result->_maskCornerRadius = radius;
  }

  return result;
}

- (CGRect)frameWithContentWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(_UIRoundedRectShadowView *)self _updateShadowOutsetsIfNecessary];
  top = self->_shadowOutsets.top;
  left = self->_shadowOutsets.left;
  v10 = x + left;
  v11 = y + top;
  v12 = width - (left + self->_shadowOutsets.right);
  v13 = height - (top + self->_shadowOutsets.bottom);
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

@end