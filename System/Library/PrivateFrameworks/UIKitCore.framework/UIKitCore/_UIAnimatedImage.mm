@interface _UIAnimatedImage
- (BOOL)_isResizable;
- (BOOL)_isTiledWhenStretchedToSize:(CGSize)a3;
- (BOOL)isEqual:(id)a3;
- (CGRect)_contentRectInPixels;
- (CGRect)_contentStretchInPixels;
- (CGSize)_sizeWithHairlineThickening:(BOOL)a3 forTraitCollection:(id)a4;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)capInsets;
- (_UIAnimatedImage)initWithCoder:(id)a3;
- (_UIAnimatedImage)initWithImages:(id)a3 duration:(double)a4;
- (id)_bezeledImageWithShadowRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 fillRed:(double)a7 green:(double)a8 blue:(double)a9 alpha:(double)a10 drawShadow:(BOOL)a11;
- (id)_doubleBezeledImageWithExteriorShadowRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 interiorShadowRed:(double)a7 green:(double)a8 blue:(double)a9 alpha:(double)a10 fillRed:(double)a11 green:(double)a12 blue:(double)a13 alpha:(double)a14;
- (id)_imageScaledToProportion:(double)a3 interpolationQuality:(int)a4;
- (id)_imageWithStylePresets:(id)a3 tintColor:(id)a4 traitCollection:(id)a5;
- (id)_initWithOtherImage:(id)a3;
- (id)resizableImageWithCapInsets:(UIEdgeInsets)a3 resizingMode:(int64_t)a4;
- (int64_t)resizingMode;
- (unint64_t)hash;
- (void)_horizontallyFlipImageOrientation;
- (void)_mirrorImageOrientation;
- (void)_setAlignmentRectInsets:(UIEdgeInsets)a3;
- (void)_setAlwaysStretches:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIAnimatedImage

- (id)_initWithOtherImage:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 images];
    [v4 duration];
  }

  else
  {
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = 0.0;
  }

  v7 = [(_UIAnimatedImage *)self initWithImages:v5 duration:v6];

  if (v7)
  {
    [v4 _configureImage:v7 assumePreconfigured:0];
  }

  return v7;
}

- (_UIAnimatedImage)initWithImages:(id)a3 duration:(double)a4
{
  v6 = a3;
  v7 = [v6 objectAtIndex:0];
  v12.receiver = self;
  v12.super_class = _UIAnimatedImage;
  v8 = [(UIImage *)&v12 _initWithOtherImage:v7];
  if (v8)
  {
    v9 = [v6 copy];
    images = v8->_images;
    v8->_images = v9;

    if (a4 <= 0.0)
    {
      a4 = [v6 count] * 0.0333333333;
    }

    v8->_duration = a4;
  }

  return v8;
}

- (_UIAnimatedImage)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UIAnimatedImage;
  v5 = [(UIImage *)&v12 initWithCoder:v4];
  if (v5)
  {
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"UIImages"];
    images = v5->_images;
    v5->_images = v8;

    [v4 decodeDoubleForKey:@"UIDuration"];
    v5->_duration = v10;
    if (v10 == 0.0)
    {
      v5->_duration = [(NSArray *)v5->_images count]* 0.0333333333;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _UIAnimatedImage;
  [(UIImage *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_images forKey:@"UIImages"];
  if (fabs(self->_duration + [(NSArray *)self->_images count]* -0.0333333333) >= 2.22044605e-16)
  {
    [v4 encodeDouble:@"UIDuration" forKey:self->_duration];
  }
}

- (void)_mirrorImageOrientation
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _UIAnimatedImage;
  [(UIImage *)&v12 _mirrorImageOrientation];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_images;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) _mirrorImageOrientation];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_horizontallyFlipImageOrientation
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _UIAnimatedImage;
  [(UIImage *)&v12 _horizontallyFlipImageOrientation];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_images;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) _horizontallyFlipImageOrientation];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (UIEdgeInsets)capInsets
{
  v2 = [(NSArray *)self->_images objectAtIndex:0];
  [v2 capInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (int64_t)resizingMode
{
  v2 = [(NSArray *)self->_images objectAtIndex:0];
  v3 = [v2 resizingMode];

  return v3;
}

- (CGRect)_contentStretchInPixels
{
  v2 = [(NSArray *)self->_images objectAtIndex:0];
  [v2 _contentStretchInPixels];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_contentRectInPixels
{
  v2 = [(NSArray *)self->_images objectAtIndex:0];
  [v2 _contentRectInPixels];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)_isResizable
{
  v2 = [(NSArray *)self->_images objectAtIndex:0];
  v3 = [v2 _isResizable];

  return v3;
}

- (BOOL)_isTiledWhenStretchedToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(NSArray *)self->_images objectAtIndex:0];
  v6 = [v5 _isTiledWhenStretchedToSize:{width, height}];

  return v6;
}

- (void)_setAlwaysStretches:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_images;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) _setAlwaysStretches:{v3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)resizableImageWithCapInsets:(UIEdgeInsets)a3 resizingMode:(int64_t)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v31 = *MEMORY[0x1E69E9840];
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_images, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = self->_images;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [v17 resizableImageWithCapInsets:{top, left, bottom, right}];
        if (!v18)
        {
          v24 = [MEMORY[0x1E696AAA8] currentHandler];
          v25 = a4;
          v33.top = top;
          v33.left = left;
          v33.bottom = bottom;
          v33.right = right;
          NSStringFromUIEdgeInsets(v33);
          v20 = v19 = a2;
          [v24 handleFailureInMethod:v19 object:self file:@"UIImage.m" lineNumber:837 description:{@"Unable to create resizable image from %@ with cap insets %@", v17, v20}];

          a2 = v19;
          a4 = v25;
        }

        [v11 addObject:v18];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v21 = [UIImage animatedImageWithImages:v11 duration:self->_duration];
  v22 = v21;
  if (a4 == 1)
  {
    [v21 _setAlwaysStretches:1];
  }

  return v22;
}

- (void)_setAlignmentRectInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_images;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) _setAlignmentRectInsets:{top, left, bottom, right, v12}];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = [(NSArray *)self->_images objectAtIndex:0];
  [v2 alignmentRectInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (id)_bezeledImageWithShadowRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 fillRed:(double)a7 green:(double)a8 blue:(double)a9 alpha:(double)a10 drawShadow:(BOOL)a11
{
  v11 = a11;
  v35 = *MEMORY[0x1E69E9840];
  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_images, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = self->_images;
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v30 + 1) + 8 * i) _bezeledImageWithShadowRed:v11 green:a3 blue:a4 alpha:a5 fillRed:a6 green:a7 blue:a8 alpha:a9 drawShadow:{a10, v30}];
        [v21 addObject:v27];
      }

      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v24);
  }

  v28 = [UIImage animatedImageWithImages:v21 duration:self->_duration];

  return v28;
}

- (id)_doubleBezeledImageWithExteriorShadowRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 interiorShadowRed:(double)a7 green:(double)a8 blue:(double)a9 alpha:(double)a10 fillRed:(double)a11 green:(double)a12 blue:(double)a13 alpha:(double)a14
{
  v37 = *MEMORY[0x1E69E9840];
  v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_images, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = self->_images;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v32 + 1) + 8 * i) _doubleBezeledImageWithExteriorShadowRed:a3 green:a4 blue:a5 alpha:a6 interiorShadowRed:a7 green:a8 blue:a9 alpha:a10 fillRed:*&a11 green:*&a12 blue:*&a13 alpha:*&a14];
        [v19 addObject:v25];
      }

      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v22);
  }

  v26 = [UIImage animatedImageWithImages:v19 duration:self->_duration];

  return v26;
}

- (id)_imageScaledToProportion:(double)a3 interpolationQuality:(int)a4
{
  v4 = *&a4;
  v21 = *MEMORY[0x1E69E9840];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_images, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_images;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) _imageScaledToProportion:v4 interpolationQuality:{a3, v16}];
        [v7 addObject:v13];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [UIImage animatedImageWithImages:v7 duration:self->_duration];

  return v14;
}

- (id)_imageWithStylePresets:(id)a3 tintColor:(id)a4 traitCollection:(id)a5
{
  v6 = NSStringFromSelector(a2);
  NSLog(&cfstr_NotYetSupporte.isa, v6);

  return self;
}

- (CGSize)_sizeWithHairlineThickening:(BOOL)a3 forTraitCollection:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(NSArray *)self->_images firstObject];
  v8 = v7;
  if (v7)
  {
    [v7 _sizeWithHairlineThickening:v4 forTraitCollection:v6];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = *MEMORY[0x1E695F060];
    v12 = *(MEMORY[0x1E695F060] + 8);
  }

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_UIAnimatedImage *)self images];
    v7 = [v6 count];
    v8 = [v5 images];
    if (v7 == [v8 count] && (-[_UIAnimatedImage duration](self, "duration"), v10 = v9, objc_msgSend(v5, "duration"), v10 == v11) && (-[_UIAnimatedImage capInsets](self, "capInsets"), v13 = v12, v15 = v14, v17 = v16, v19 = v18, objc_msgSend(v5, "capInsets"), v15 == v23) && v13 == v20 && v19 == v22 && v17 == v21)
    {
      v24 = [(_UIAnimatedImage *)self resizingMode];
      v25 = [v5 resizingMode];

      if (v24 == v25)
      {
        v26 = [(_UIAnimatedImage *)self images];
        v27 = [v26 count];

        if (v27)
        {
          v28 = 0;
          do
          {
            v29 = [(_UIAnimatedImage *)self images];
            v30 = [v29 objectAtIndexedSubscript:v28];

            v31 = [v5 images];
            v32 = [v31 objectAtIndexedSubscript:v28];

            v33 = [v30 isEqual:v32];
            if ((v33 & 1) == 0)
            {
              break;
            }

            ++v28;
            v34 = [(_UIAnimatedImage *)self images];
            v35 = [v34 count];
          }

          while (v28 < v35);
        }

        else
        {
          v33 = 1;
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

    v33 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v33 = 0;
LABEL_18:

  return v33;
}

- (unint64_t)hash
{
  v2 = [(NSArray *)self->_images objectAtIndexedSubscript:0];
  v3 = [v2 hash];

  return v3;
}

@end