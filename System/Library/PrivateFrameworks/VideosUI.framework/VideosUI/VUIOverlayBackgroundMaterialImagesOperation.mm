@interface VUIOverlayBackgroundMaterialImagesOperation
- (CGSize)resizedBackgroundImageSize;
- (VUIOverlayBackgroundMaterialImagesOperation)init;
- (VUIOverlayBackgroundMaterialImagesOperation)initWithSourceBackgroundImage:(id)a3;
- (id)_blurredMaterialImageWithSourceBackgroundImage:(id)a3 forRect:(CGRect)a4 croppedRect:(CGRect)a5 backdropStyle:(int64_t)a6;
- (void)main;
@end

@implementation VUIOverlayBackgroundMaterialImagesOperation

- (VUIOverlayBackgroundMaterialImagesOperation)initWithSourceBackgroundImage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VUIOverlayBackgroundMaterialImagesOperation;
  v6 = [(VUIOverlayBackgroundMaterialImagesOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceBackgroundImage, a3);
  }

  return v7;
}

- (VUIOverlayBackgroundMaterialImagesOperation)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (void)main
{
  v40 = *MEMORY[0x1E69E9840];
  if (([(VUIOverlayBackgroundMaterialImagesOperation *)self isCancelled]& 1) == 0)
  {
    v3 = [(VUIOverlayBackgroundMaterialImagesOperation *)self sourceBackgroundImage];
    [(VUIOverlayBackgroundMaterialImagesOperation *)self resizedBackgroundImageSize];
    v5 = fabs(v4);
    [(VUIOverlayBackgroundMaterialImagesOperation *)self resizedBackgroundImageSize];
    v7 = fabs(v6);
    if (v5 != *MEMORY[0x1E695F060] || v7 != *(MEMORY[0x1E695F060] + 8))
    {
      [v3 size];
      if (v5 != v10 || v7 != v9)
      {
        v41.width = v5;
        v41.height = v7;
        UIGraphicsBeginImageContextWithOptions(v41, 0, 0.0);
        [v3 drawInRect:{0.0, 0.0, v5, v7}];
        v12 = UIGraphicsGetImageFromCurrentImageContext();

        UIGraphicsEndImageContext();
        [(VUIOverlayBackgroundMaterialImagesOperation *)self setResizedSourceBackgroundImage:v12];
        v3 = v12;
      }
    }

    v13 = [(VUIOverlayBackgroundMaterialImagesOperation *)self overlayMaterialRequests];
    if ([v13 count])
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    else
    {
      v14 = 0;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v35 + 1) + 8 * i);
          v21 = [v20 identifier];
          [v20 rect];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;
          [v20 croppedRect];
          v34 = -[VUIOverlayBackgroundMaterialImagesOperation _blurredMaterialImageWithSourceBackgroundImage:forRect:croppedRect:backdropStyle:](self, "_blurredMaterialImageWithSourceBackgroundImage:forRect:croppedRect:backdropStyle:", v3, [v20 backdropStyle], v23, v25, v27, v29, v30, v31, v32, v33);
          [v14 vui_setObjectIfNotNil:v34 forKey:v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v17);
    }

    if (([(VUIOverlayBackgroundMaterialImagesOperation *)self isCancelled]& 1) == 0)
    {
      [(VUIOverlayBackgroundMaterialImagesOperation *)self setOverlayMaterialImageByIdentifier:v14];
    }
  }
}

- (id)_blurredMaterialImageWithSourceBackgroundImage:(id)a3 forRect:(CGRect)a4 croppedRect:(CGRect)a5 backdropStyle:(int64_t)a6
{
  if (!a3 || (height = a5.size.height, width = a5.size.width, y = a5.origin.y, x = a5.origin.x, v11 = a4.size.width, v12 = a3, v13 = CGImageGetWidth([v12 CGImage]) / v11, v29.origin.x = x, v29.origin.y = y, v29.size.width = width, v29.size.height = height, v14 = CGRectGetMinX(v29) * v13, v30.origin.x = x, v30.origin.y = y, v30.size.width = width, v30.size.height = height, v15 = CGRectGetMinY(v30) * v13, v31.origin.x = x, v31.origin.y = y, v31.size.width = width, v31.size.height = height, v16 = v13 * CGRectGetWidth(v31), v32.origin.x = x, v32.origin.y = y, v32.size.width = width, v32.size.height = height, v17 = v13 * CGRectGetHeight(v32), v18 = objc_msgSend(v12, "CGImage"), v12, v33.origin.x = v14, v33.origin.y = v15, v33.size.width = v16, v33.size.height = v17, (v19 = CGImageCreateWithImageInRect(v18, v33)) == 0))
  {
    v26 = 0;
    goto LABEL_10;
  }

  v20 = v19;
  v21 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v19];
  v22 = [MEMORY[0x1E69DC938] currentDevice];
  v23 = [v22 userInterfaceIdiom];

  v24 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:a6];
  if (v23 != 2)
  {
    v25 = 0.6;
    goto LABEL_8;
  }

  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    v25 = 0.55;
LABEL_8:
    [v24 setColorTintAlpha:v25];
  }

  v26 = [v21 _applyBackdropViewSettings:v24];
  CGImageRelease(v20);

LABEL_10:

  return v26;
}

- (CGSize)resizedBackgroundImageSize
{
  width = self->_resizedBackgroundImageSize.width;
  height = self->_resizedBackgroundImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end