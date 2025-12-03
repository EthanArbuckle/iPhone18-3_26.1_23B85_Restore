@interface _UIFloatingShadowView
- (CGPath)_shadowPathForSize:(CGSize)size radius:(double)radius;
- (CGRect)shadowContentsCenter;
- (CGSize)shadowSize;
- (_UIFloatingShadowView)initWithFrame:(CGRect)frame;
- (void)_layoutShadow;
- (void)_setShadowImageIfNeeded;
- (void)_updateShadowLayer;
- (void)layoutSubviews;
- (void)setShadowContentsCenter:(CGRect)center;
- (void)setShadowEnabled:(BOOL)enabled;
- (void)setShadowImage:(id)image;
- (void)setShadowOpacity:(double)opacity;
@end

@implementation _UIFloatingShadowView

- (_UIFloatingShadowView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UIFloatingShadowView;
  v3 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39___UIFloatingShadowView_initWithFrame___block_invoke;
    v6[3] = &unk_1E70F3590;
    v7 = v3;
    [UIView _performSystemAppearanceModifications:v6];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIFloatingShadowView;
  [(UIView *)&v3 layoutSubviews];
  [(_UIFloatingShadowView *)self _setShadowImageIfNeeded];
  [(_UIFloatingShadowView *)self _layoutShadow];
}

- (void)setShadowOpacity:(double)opacity
{
  self->_shadowOpacity = opacity;
  layer = [(UIView *)self->_shadowView layer];
  shadowOpacity = self->_shadowOpacity;
  *&shadowOpacity = shadowOpacity;
  [layer setOpacity:shadowOpacity];
}

- (void)setShadowEnabled:(BOOL)enabled
{
  if (self->_shadowEnabled != enabled)
  {
    self->_shadowEnabled = enabled;
    [(_UIFloatingShadowView *)self _updateShadowLayer];

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setShadowImage:(id)image
{
  objc_storeStrong(&self->_shadowImage, image);
  imageCopy = image;
  layer = [(UIView *)self->_shadowView layer];
  cGImage = [imageCopy CGImage];

  [layer setContents:cGImage];
}

- (void)setShadowContentsCenter:(CGRect)center
{
  height = center.size.height;
  width = center.size.width;
  y = center.origin.y;
  x = center.origin.x;
  self->_shadowContentsCenter = center;
  layer = [(UIView *)self->_shadowView layer];
  [layer setContentsCenter:{x, y, width, height}];
}

- (void)_layoutShadow
{
  if ([(_UIFloatingShadowView *)self isShadowEnabled])
  {
    [(UIView *)self bounds];
    v4 = v3;
    v6 = v5;
    [(_UIFloatingShadowView *)self shadowSize];
    v9 = v7 == *MEMORY[0x1E695F060];
    v10 = v8 == *(MEMORY[0x1E695F060] + 8);
    if (v9 && v10)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }

    if (v9 && v10)
    {
      v12 = v4;
    }

    else
    {
      v12 = v7;
    }

    [(_UIFloatingShadowView *)self shadowRadius];
    v14 = v13 / 20.0;
    v15 = v12 / (v13 / 20.0);
    v16 = v11 / (v13 / 20.0);
    if ([(_UIFloatingShadowView *)self _disableOutsetShadowPath])
    {
      [(_UIFloatingShadowView *)self shadowRadius];
    }

    else
    {
      shadowExpansion = self->_shadowExpansion;
    }

    v18 = shadowExpansion + shadowExpansion;
    v19 = v15 + v18;
    v20 = v16 + v18;
    [(UIView *)self bounds];
    [(UIView *)self->_shadowView setFrame:round(v22 + (v21 - v19) * 0.5), round(v24 + (v23 - v20) * 0.5), v19, v20];
    CATransform3DMakeScale(&v38, v14, v14, 0.0);
    v25 = *&v38.m33;
    *&self->_shadowTransform.m31 = *&v38.m31;
    *&self->_shadowTransform.m33 = v25;
    v26 = *&v38.m43;
    *&self->_shadowTransform.m41 = *&v38.m41;
    *&self->_shadowTransform.m43 = v26;
    v27 = *&v38.m13;
    *&self->_shadowTransform.m11 = *&v38.m11;
    *&self->_shadowTransform.m13 = v27;
    v28 = *&v38.m23;
    *&self->_shadowTransform.m21 = *&v38.m21;
    *&self->_shadowTransform.m23 = v28;
    *&v28 = self->_shadowVerticalOffset;
    v29 = *&self->_shadowTransform.m33;
    *&v37.m31 = *&self->_shadowTransform.m31;
    *&v37.m33 = v29;
    v30 = *&self->_shadowTransform.m43;
    *&v37.m41 = *&self->_shadowTransform.m41;
    *&v37.m43 = v30;
    v31 = *&self->_shadowTransform.m13;
    *&v37.m11 = *&self->_shadowTransform.m11;
    *&v37.m13 = v31;
    v32 = *&self->_shadowTransform.m23;
    *&v37.m21 = *&self->_shadowTransform.m21;
    *&v37.m23 = v32;
    CATransform3DTranslate(&v38, &v37, 0.0, *&v28, 0.0);
    v33 = *&v38.m33;
    *&self->_shadowTransform.m31 = *&v38.m31;
    *&self->_shadowTransform.m33 = v33;
    v34 = *&v38.m43;
    *&self->_shadowTransform.m41 = *&v38.m41;
    *&self->_shadowTransform.m43 = v34;
    v35 = *&v38.m13;
    *&self->_shadowTransform.m11 = *&v38.m11;
    *&self->_shadowTransform.m13 = v35;
    v36 = *&v38.m23;
    *&self->_shadowTransform.m21 = *&v38.m21;
    *&self->_shadowTransform.m23 = v36;
  }
}

- (void)_updateShadowLayer
{
  if (self->_shadowView || ![(_UIFloatingShadowView *)self isShadowEnabled])
  {
    if (![(_UIFloatingShadowView *)self isShadowEnabled])
    {
      [(UIView *)self->_shadowView removeFromSuperview];
      shadowView = self->_shadowView;
      self->_shadowView = 0;
    }
  }

  else
  {
    shadowImage = [(_UIFloatingShadowView *)self shadowImage];
    v4 = [UIView alloc];
    [(UIView *)self frame];
    v5 = [(UIView *)v4 initWithFrame:?];
    v6 = self->_shadowView;
    self->_shadowView = v5;

    [(UIView *)self->_shadowView setOpaque:0];
    [(UIView *)self->_shadowView setBackgroundColor:0];
    layer = [(UIView *)self->_shadowView layer];
    [layer setContents:{objc_msgSend(shadowImage, "CGImage")}];
    [(_UIFloatingShadowView *)self shadowContentsCenter];
    [layer setContentsCenter:?];
    [layer setOpacity:0.0];
    [layer setZPosition:-1000.0];
    [(_UIFloatingShadowView *)self _layoutShadow];
    v8 = *&self->_shadowTransform.m23;
    v15 = *&self->_shadowTransform.m21;
    v16 = v8;
    v17 = *&self->_shadowTransform.m31;
    m33 = self->_shadowTransform.m33;
    v9 = *&self->_shadowTransform.m13;
    v13 = *&self->_shadowTransform.m11;
    v14 = v9;
    v10 = *&self->_shadowTransform.m43;
    v20 = *&self->_shadowTransform.m41;
    v21 = v10;
    v11 = [(UIView *)self->_shadowView layer:v13];
    v19 = 0xBF50624DD2F1A9FCLL;
    [v11 setTransform:&v13];

    [(UIView *)self insertSubview:self->_shadowView atIndex:0];
  }
}

- (void)_setShadowImageIfNeeded
{
  if (!self->_shadowImage)
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __48___UIFloatingShadowView__setShadowImageIfNeeded__block_invoke;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    [UIView _performSystemAppearanceModifications:v4];
  }
}

- (CGPath)_shadowPathForSize:(CGSize)size radius:(double)radius
{
  height = size.height;
  width = size.width;
  if (qword_1ED499FE8 != -1)
  {
    dispatch_once(&qword_1ED499FE8, &__block_literal_global_49);
  }

  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(_UIFloatingShadowView *)self cornerRadius:*&width];
  v24[2] = v16;
  *&v24[3] = radius;
  v17 = [MEMORY[0x1E696B098] valueWithBytes:v24 objCType:"{?={CGSize=dd}dd}"];
  cGPath = [_MergedGlobals_3_3 objectForKey:v17];
  if (!cGPath)
  {
    x = round(v9 + (v13 - width) * 0.5);
    y = round(v11 + (v15 - height) * 0.5);
    if (![(_UIFloatingShadowView *)self _disableOutsetShadowPath])
    {
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v26 = CGRectInset(v25, -radius, -radius);
      x = v26.origin.x;
      y = v26.origin.y;
      width = v26.size.width;
      height = v26.size.height;
    }

    [(_UIFloatingShadowView *)self cornerRadius];
    v22 = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y, width, height, v21];
    cGPath = [v22 CGPath];

    if (cGPath)
    {
      [_MergedGlobals_3_3 setObject:cGPath forKey:v17];
    }
  }

  return cGPath;
}

- (CGSize)shadowSize
{
  width = self->_shadowSize.width;
  height = self->_shadowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)shadowContentsCenter
{
  x = self->_shadowContentsCenter.origin.x;
  y = self->_shadowContentsCenter.origin.y;
  width = self->_shadowContentsCenter.size.width;
  height = self->_shadowContentsCenter.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end