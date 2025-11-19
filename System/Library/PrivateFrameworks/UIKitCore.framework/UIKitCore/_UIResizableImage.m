@interface _UIResizableImage
- (BOOL)_isTiledWhenStretchedToSize:(CGSize)a3;
- (BOOL)isEqual:(id)a3;
- (CGRect)_contentRectInPixels;
- (CGRect)_contentRectInPixelsApplyingInsets:(UIEdgeInsets)a3 emptySizeFallback:(id)a4;
- (CGRect)_contentStretchInPixels;
- (UIEdgeInsets)_subimageInsets;
- (UIEdgeInsets)capInsets;
- (_UIResizableImage)initWithCoder:(id)a3;
- (_UIResizableImage)initWithImage:(id)a3 capInsets:(UIEdgeInsets)a4;
- (id)_resizableImageWithCapMask:(int)a3;
- (void)_configureImage:(id)a3 assumePreconfigured:(BOOL)a4;
- (void)_setSubimageInsets:(UIEdgeInsets)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIResizableImage

- (UIEdgeInsets)capInsets
{
  top = self->_capInsets.top;
  left = self->_capInsets.left;
  bottom = self->_capInsets.bottom;
  right = self->_capInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)_contentStretchInPixels
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44___UIResizableImage__contentStretchInPixels__block_invoke;
  v6[3] = &unk_1E70F7FB8;
  v6[4] = self;
  [(_UIResizableImage *)self _contentRectInPixelsApplyingInsets:v6 emptySizeFallback:self->_capInsets.top, self->_capInsets.left, self->_capInsets.bottom, self->_capInsets.right];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_configureImage:(id)a3 assumePreconfigured:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8.receiver = self;
  v8.super_class = _UIResizableImage;
  [(UIImage *)&v8 _configureImage:v6 assumePreconfigured:v4];
  if ([v6 _isResizable])
  {
    [(_UIResizableImage *)self capInsets];
    [v6 _setCapInsets:?];
    *(v6 + 208) = *(v6 + 208) & 0xFD | *&self->_rImageFlags & 2;
    v7 = *&self->_subimageInsets.bottom;
    *(v6 + 11) = *&self->_subimageInsets.top;
    *(v6 + 12) = v7;
    [v6 _setAlwaysStretches:*&self->_rImageFlags & 1];
  }
}

- (_UIResizableImage)initWithImage:(id)a3 capInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9.receiver = self;
  v9.super_class = _UIResizableImage;
  result = [(UIImage *)&v9 _initWithOtherImage:a3];
  if (result)
  {
    result->_capInsets.top = top;
    result->_capInsets.left = left;
    result->_capInsets.bottom = bottom;
    result->_capInsets.right = right;
  }

  return result;
}

- (_UIResizableImage)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _UIResizableImage;
  v5 = [(UIImage *)&v17 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    p_top = &v5->_capInsets.top;
    [v4 decodeUIEdgeInsetsForKey:@"UICapInsets"];
    *p_top = v8;
    v6->_capInsets.left = v9;
    v6->_capInsets.bottom = v10;
    v6->_capInsets.right = v11;
    if ([v4 containsValueForKey:@"UILeftCapWidth"])
    {
      v6->_capInsets.left = [v4 decodeIntegerForKey:@"UILeftCapWidth"];
      *p_top = [v4 decodeIntegerForKey:@"UITopCapHeight"];
      [(UIImage *)v6 size];
      v6->_capInsets.right = v12 - v6->_capInsets.left + -1.0;
      [(UIImage *)v6 size];
      v6->_capInsets.bottom = v13 - *p_top + -1.0;
    }

    v14 = [v4 decodeIntForKey:@"UIResizingMode"];
    v15 = *&v6->_rImageFlags & 0xFE;
    if (v14)
    {
      ++v15;
    }

    *&v6->_rImageFlags = v15;
    *&v6->_subimageInsets.top = 0u;
    *&v6->_subimageInsets.bottom = 0u;
    *&v6->_rImageFlags &= ~2u;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIResizableImage;
  v4 = a3;
  [(UIImage *)&v5 encodeWithCoder:v4];
  [v4 encodeUIEdgeInsets:@"UICapInsets" forKey:{self->_capInsets.top, self->_capInsets.left, self->_capInsets.bottom, self->_capInsets.right, v5.receiver, v5.super_class}];
  [v4 encodeInt:*&self->_rImageFlags & 1 forKey:@"UIResizingMode"];
}

- (void)_setSubimageInsets:(UIEdgeInsets)a3
{
  if (a3.top == 0.0 && a3.left == 0.0 && a3.right == 0.0 && a3.bottom == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *&self->_rImageFlags = *&self->_rImageFlags & 0xFD | v6;
  self->_subimageInsets = a3;
}

- (UIEdgeInsets)_subimageInsets
{
  top = self->_subimageInsets.top;
  left = self->_subimageInsets.left;
  bottom = self->_subimageInsets.bottom;
  right = self->_subimageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)_contentRectInPixelsApplyingInsets:(UIEdgeInsets)a3 emptySizeFallback:(id)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9 = a4;
  v10 = [(UIImage *)self content];
  [v10 sizeInPixels];
  v13 = v12;
  v14 = v11;
  if (v12 <= 0.0 || v11 <= 0.0)
  {
    if (v9)
    {
      v21 = v9[2](v9);
      v22 = v23;
      v13 = v24;
      v14 = v25;
    }

    else
    {
      v21 = *MEMORY[0x1E695EFF8];
      v22 = *(MEMORY[0x1E695EFF8] + 8);
    }
  }

  else
  {
    [v10 scale];
    v16 = top * v15;
    v17 = bottom * v15;
    v18 = *MEMORY[0x1E695EFF8] + left * v15;
    v19 = top * v15 + *(MEMORY[0x1E695EFF8] + 8);
    v20 = v13 - (left * v15 + right * v15);
    v21 = fmax(v18, 0.0);
    v22 = fmax(v19, 0.0);
    v13 = fmax(v20, 0.0);
    v14 = fmax(v14 - (v16 + v17), 0.0);
  }

  v26 = v21;
  v27 = v22;
  v28 = v13;
  v29 = v14;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)_contentRectInPixels
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41___UIResizableImage__contentRectInPixels__block_invoke;
  v6[3] = &unk_1E70F7FB8;
  v6[4] = self;
  [(_UIResizableImage *)self _contentRectInPixelsApplyingInsets:v6 emptySizeFallback:self->_subimageInsets.top, self->_subimageInsets.left, self->_subimageInsets.bottom, self->_subimageInsets.right];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)_isTiledWhenStretchedToSize:(CGSize)a3
{
  if (*&self->_rImageFlags)
  {
    return 0;
  }

  height = a3.height;
  width = a3.width;
  [(UIImage *)self size];
  if (v6 - self->_capInsets.left - self->_capInsets.right > 1.0 && width != v6)
  {
    return 1;
  }

  if (height == v7)
  {
    return 0;
  }

  return v7 - self->_capInsets.top - self->_capInsets.bottom > 1.0;
}

- (id)_resizableImageWithCapMask:(int)a3
{
  v3 = a3;
  [(_UIResizableImage *)self capInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIImage *)self alignmentRectInsets];
  v52 = 0u;
  v53 = 0u;
  v17 = 0.0;
  if ((v3 & 1) == 0)
  {
    v14 = 0.0;
    v50 = 0.0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v49 = 0.0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  *(&v52 + 1) = v14;
  v50 = v8;
  v8 = 0.0;
  if ((v3 & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  *&v52 = v13;
  v17 = v13;
  v49 = v6;
  v6 = 0.0;
  if ((v3 & 4) != 0)
  {
LABEL_4:
    *(&v53 + 1) = v16;
    v18 = v12;
    v12 = 0.0;
    goto LABEL_8;
  }

LABEL_7:
  v16 = 0.0;
  v18 = 0.0;
LABEL_8:
  v47 = v16;
  v48 = v14;
  v46 = v17;
  if ((v3 & 8) != 0)
  {
    *&v53 = v15;
    v44 = v15;
    v19 = v10;
    v10 = 0.0;
  }

  else
  {
    v44 = 0;
    v19 = 0.0;
  }

  v20 = *MEMORY[0x1E695EFF8];
  v21 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIImage *)self size];
  v22 = v8 + v20;
  v23 = v6 + v21;
  v25 = v24 - (v8 + v12);
  v27 = v26 - (v6 + v10);
  v55.origin.x = v22;
  v55.origin.y = v23;
  v55.size.width = v25;
  v55.size.height = v27;
  if (CGRectIsEmpty(v55))
  {
    v28 = 0;
  }

  else
  {
    [(UIImage *)self scale];
    v30 = v29;
    CGAffineTransformMakeScale(&v51, v29, v29);
    v56.origin.x = v22;
    v56.origin.y = v23;
    v56.size.width = v25;
    v56.size.height = v27;
    v57 = CGRectApplyAffineTransform(v56, &v51);
    x = v57.origin.x;
    y = v57.origin.y;
    width = v57.size.width;
    height = v57.size.height;
    v35 = [(UIImage *)self CGImage];
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v36 = CGImageCreateWithImageInRect(v35, v58);
    v37 = [[UIImage alloc] initWithCGImage:v36 scale:[(UIImage *)self imageOrientation] orientation:v30];
    CGImageRelease(v36);
    v38 = [(UIImage *)v37 resizableImageWithCapInsets:v49, v50, v19, v18];
    v28 = v38;
    if (v52)
    {
      v39 = 0;
    }

    else
    {
      v39 = *(&v52 + 1) == 0;
    }

    if (v39 && v53 == 0 && *(&v53 + 1) == 0)
    {
      v42 = [v38 imageWithAlignmentRectInsets:{v46, v48, v45, v47}];

      v28 = v42;
    }

    if (*&self->_rImageFlags)
    {
      [v28 _setAlwaysStretches:1];
    }
  }

  return v28;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v21.receiver = self;
    v21.super_class = _UIResizableImage;
    if ([(UIImage *)&v21 isEqual:v5])
    {
      [(_UIResizableImage *)self capInsets];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [v5 capInsets];
      v17 = 0;
      if (v9 == v18 && v7 == v14 && v13 == v16 && v11 == v15)
      {
        v19 = [(_UIResizableImage *)self resizingMode];
        v17 = v19 == [v5 resizingMode];
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end