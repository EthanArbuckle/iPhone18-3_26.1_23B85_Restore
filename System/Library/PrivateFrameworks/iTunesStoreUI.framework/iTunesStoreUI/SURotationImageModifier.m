@interface SURotationImageModifier
- (BOOL)isEqual:(id)a3;
- (CGRect)imageFrameForImage:(id)a3 currentFrame:(CGRect)a4 finalSize:(CGSize)a5;
- (void)drawBeforeImageForContext:(CGContext *)a3 imageFrame:(CGRect)a4 finalSize:(CGSize)a5;
@end

@implementation SURotationImageModifier

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(SURotationImageModifier *)self orientation];
  if (v5 != [a3 orientation])
  {
    return 0;
  }

  [(SURotationImageModifier *)self degrees];
  v7 = v6;
  [a3 degrees];
  return v7 == v8;
}

- (void)drawBeforeImageForContext:(CGContext *)a3 imageFrame:(CGRect)a4 finalSize:(CGSize)a5
{
  height = a4.size.height;
  width = a4.size.width;
  v10 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  v11 = [(SURotationImageModifier *)self orientation:a4.origin.x];
  if (v11 > 2)
  {
    if (v11 == 4)
    {
LABEL_9:
      v12 = 0.0;
      if (height > width)
      {
        v12 = -1.57079633;
      }

      goto LABEL_14;
    }

    if (v11 != 3)
    {
LABEL_11:
      [(SURotationImageModifier *)self degrees];
      v12 = v13 * 0.0174532925;
      goto LABEL_14;
    }

    v12 = 0.0;
    if (height > width)
    {
      v12 = 1.57079633;
    }
  }

  else
  {
    if (v11 != 1)
    {
      if (v11 != 2)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v12 = 0.0;
    if (width > height)
    {
      v12 = 1.57079633;
      v10 = height;
    }
  }

LABEL_14:
  CGContextTranslateCTM(a3, v10, v9);

  CGContextRotateCTM(a3, v12);
}

- (CGRect)imageFrameForImage:(id)a3 currentFrame:(CGRect)a4 finalSize:(CGSize)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [a3 size];
  v11 = v10;
  v13 = v12;
  v14 = [(SURotationImageModifier *)self orientation];
  if ((v14 - 1) >= 2)
  {
    if ((v14 - 3) <= 1 && v13 > v11)
    {
      goto LABEL_4;
    }

LABEL_6:
    v15 = width;
    width = height;
    goto LABEL_7;
  }

  if (v11 <= v13)
  {
    goto LABEL_6;
  }

LABEL_4:
  v15 = height;
LABEL_7:
  v16 = x;
  v17 = y;
  v18 = width;
  result.size.height = v18;
  result.size.width = v15;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

@end