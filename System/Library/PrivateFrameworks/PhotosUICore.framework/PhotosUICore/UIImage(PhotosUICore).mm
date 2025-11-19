@interface UIImage(PhotosUICore)
+ (id)px_imageNamed:()PhotosUICore withConfiguration:;
+ (id)px_playOverlayImage:()PhotosUICore;
+ (uint64_t)_px_createOverlayImageWithGlyphStyle:()PhotosUICore backgroundWhite:backgroundAlpha:glyphAlpha:;
- (PXImageExtraction)px_extractPlayOverlayBackgroundImageFromLocation:()PhotosUICore inViewportWithSize:contentMode:contentsRect:asynchronously:handler:;
- (id)px_ASTCCompressedImageWithBlockSize:()PhotosUICore;
- (id)px_debugImageWithStrokeRect:()PhotosUICore color:text:;
- (id)px_imageByCroppingRect:()PhotosUICore pixelTargetSize:cornerRadius:;
- (uint64_t)px_drawInRect:()PhotosUICore withContentMode:;
- (uint64_t)px_isLargerThan:()PhotosUICore;
@end

@implementation UIImage(PhotosUICore)

- (id)px_debugImageWithStrokeRect:()PhotosUICore color:text:
{
  v29[2] = *MEMORY[0x1E69E9840];
  v14 = a7;
  v15 = a8;
  [a1 size];
  UIGraphicsBeginImageContext(v31);
  [a1 drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  CurrentContext = UIGraphicsGetCurrentContext();
  [v14 setStroke];
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  CGContextStrokeRectWithWidth(CurrentContext, v32, 5.0);
  if ([v15 length])
  {
    v17 = objc_alloc(MEMORY[0x1E696AAB0]);
    v28[0] = *MEMORY[0x1E69DB648];
    v18 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:40.0];
    v28[1] = *MEMORY[0x1E69DB650];
    v29[0] = v18;
    v29[1] = v14;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v20 = [v17 initWithString:v15 attributes:v19];

    [v20 size];
    v22 = v21;
    v24 = v23;
    v33.origin.x = a2;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    v25 = CGRectGetMinX(v33) + 6.0;
    v34.origin.x = a2;
    v34.origin.y = a3;
    v34.size.width = a4;
    v34.size.height = a5;
    [v20 drawInRect:{v25, CGRectGetMaxY(v34) - v24 + -6.0, v22, v24}];
  }

  v26 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v26;
}

- (id)px_ASTCCompressedImageWithBlockSize:()PhotosUICore
{
  v5 = [a1 CGImage];
  if (PXCreateASTCCompressImage_onceToken != -1)
  {
    dispatch_once(&PXCreateASTCCompressImage_onceToken, &__block_literal_global_103_166385);
  }

  if (PXCreateASTCCompressImage_deviceSupportsASTC)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v7 = CGImageDestinationCreateWithData(v6, @"org.khronos.ktx", 1uLL, 0);
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = v7;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __PXCreateASTCCompressImage_block_invoke_2;
    block[3] = &__block_descriptor_36_e5_v8__0l;
    v17 = a3;
    if (PXCreateASTCCompressImage_onceToken_111 != -1)
    {
      dispatch_once(&PXCreateASTCCompressImage_onceToken_111, block);
    }

    CGImageDestinationAddImage(v8, v5, PXCreateASTCCompressImage_properties);
    v9 = CGImageDestinationFinalize(v8);
    CFRelease(v8);
    if (v9)
    {
      v10 = CGImageSourceCreateWithData(v6, 0);
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, 0);
      CFRelease(v10);

      if (ImageAtIndex)
      {
        v12 = MEMORY[0x1E69DCAB8];
        [a1 scale];
        v14 = [v12 imageWithCGImage:ImageAtIndex scale:objc_msgSend(a1 orientation:{"imageOrientation"), v13}];
        CGImageRelease(ImageAtIndex);
        goto LABEL_12;
      }
    }

    else
    {
LABEL_10:
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (PXImageExtraction)px_extractPlayOverlayBackgroundImageFromLocation:()PhotosUICore inViewportWithSize:contentMode:contentsRect:asynchronously:handler:
{
  v17 = a5;
  if (v17)
  {
    if (!a4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"UIImage+PhotosUICore.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

    if (!a4)
    {
      goto LABEL_5;
    }
  }

  if (px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler__onceToken != -1)
  {
    dispatch_once(&px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler__onceToken, &__block_literal_global_15_166397);
  }

LABEL_5:
  v18 = objc_alloc_init(PXImageExtraction);
  if (px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler__onceToken_18 != -1)
  {
    dispatch_once(&px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler__onceToken_18, &__block_literal_global_20_166398);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __141__UIImage_PhotosUICore__px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler___block_invoke_3;
  aBlock[3] = &unk_1E773F288;
  v19 = v18;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v34 = a9;
  v28 = v19;
  v29 = a1;
  v35 = a3;
  v36 = a4;
  v20 = v17;
  v30 = v20;
  v21 = _Block_copy(aBlock);
  v22 = v21;
  if (a4)
  {
    v23 = [MEMORY[0x1E69DCAB8] px_playOverlayImage:2];
    (*(v20 + 2))(v20, v23, 1, v19);
    dispatch_async(px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler___extractionQueue, v22);
  }

  else
  {
    (*(v21 + 2))(v21);
  }

  v24 = v19;

  return v19;
}

- (uint64_t)px_drawInRect:()PhotosUICore withContentMode:
{
  [a1 size];
  if (a3)
  {
    if (a3 == 1)
    {
      PXRectWithAspectRatioFittingRect();
    }

    if (a3 == 2)
    {
      PXRectWithAspectRatioFillingRect();
    }

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"UIImage+PhotosUICore.m" lineNumber:177 description:{@"support for content mode %i not implemented", a3}];
  }

  return [a1 drawInRect:{a4, a5, a6, a7}];
}

- (id)px_imageByCroppingRect:()PhotosUICore pixelTargetSize:cornerRadius:
{
  v15 = [a1 CGImage];
  Width = CGImageGetWidth(v15);
  Height = CGImageGetHeight(v15);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v19 = CGBitmapContextCreate(0, a6, a7, 8uLL, 0, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = a6;
  v26.size.height = a7;
  CGContextClipToRect(v19, v26);
  if (a8 > 0.0)
  {
    v20 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, a6, a7, a8}];
    v21 = [v20 CGPath];

    CGContextAddPath(v19, v21);
    CGContextClip(v19);
  }

  CGContextScaleCTM(v19, a6 / a4, a7 / a5);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  v28.origin.y = -(Height - CGRectGetMaxY(v27));
  v28.origin.x = -a2;
  v28.size.width = Width;
  v28.size.height = Height;
  CGContextDrawImage(v19, v28, v15);
  Image = CGBitmapContextCreateImage(v19);
  CGContextRelease(v19);
  v23 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image];
  CGImageRelease(Image);

  return v23;
}

- (uint64_t)px_isLargerThan:()PhotosUICore
{
  if (a3)
  {
    v4 = a3;
    [a1 px_pixelSize];
    [v4 px_pixelSize];

    JUMPOUT(0x1A590D220);
  }

  return 1;
}

+ (uint64_t)_px_createOverlayImageWithGlyphStyle:()PhotosUICore backgroundWhite:backgroundAlpha:glyphAlpha:
{
  v10 = [MEMORY[0x1E69DCAB8] px_playOverlayImage:1];
  v11 = [MEMORY[0x1E69DCAB8] px_playOverlayImage:a6];
  v12 = *MEMORY[0x1E695EFF8];
  v13 = *(MEMORY[0x1E695EFF8] + 8);
  [v10 size];
  width = v19.width;
  height = v19.height;
  UIGraphicsBeginImageContextWithOptions(v19, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetGrayFillColor(CurrentContext, a1, a2);
  v20.origin.x = v12;
  v20.origin.y = v13;
  v20.size.width = width;
  v20.size.height = height;
  CGContextFillRect(CurrentContext, v20);
  [v10 drawAtPoint:23 blendMode:v12 alpha:{v13, 1.0}];
  [v11 drawAtPoint:23 blendMode:v12 alpha:{v13, 1.0}];
  [v11 drawAtPoint:0 blendMode:v12 alpha:{v13, a3}];
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

+ (id)px_playOverlayImage:()PhotosUICore
{
  v3 = 0;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        if (px_playOverlayImage__onceToken_34 != -1)
        {
          dispatch_once(&px_playOverlayImage__onceToken_34, &__block_literal_global_36_166413);
        }

        v4 = &px_playOverlayImage__approximationImage;
      }

      else
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __45__UIImage_PhotosUICore__px_playOverlayImage___block_invoke_4;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = a1;
        if (px_playOverlayImage__onceToken_40 != -1)
        {
          dispatch_once(&px_playOverlayImage__onceToken_40, block);
        }

        v4 = &px_playOverlayImage__normalButtonImage;
      }
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_39;
      }

      if (px_playOverlayImage__onceToken_28 != -1)
      {
        dispatch_once(&px_playOverlayImage__onceToken_28, &__block_literal_global_30_166412);
      }

      v4 = &px_playOverlayImage__overlayBackgroundMask;
    }

    else
    {
      if (px_playOverlayImage__onceToken != -1)
      {
        dispatch_once(&px_playOverlayImage__onceToken, &__block_literal_global_24_166411);
      }

      v4 = &px_playOverlayImage__overlayGlyphMask;
    }
  }

  else if (a3 <= 5)
  {
    if (a3 == 4)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __45__UIImage_PhotosUICore__px_playOverlayImage___block_invoke_5;
      v8[3] = &__block_descriptor_40_e5_v8__0l;
      v8[4] = a1;
      if (px_playOverlayImage__onceToken_41 != -1)
      {
        dispatch_once(&px_playOverlayImage__onceToken_41, v8);
      }

      v4 = &px_playOverlayImage__highlightedButtonImage;
    }

    else
    {
      if (px_playOverlayImage__onceToken_43 != -1)
      {
        dispatch_once(&px_playOverlayImage__onceToken_43, &__block_literal_global_45);
      }

      v4 = &px_playOverlayImage__overlayGlyphMask_42;
    }
  }

  else
  {
    switch(a3)
    {
      case 6:
        if (px_playOverlayImage__onceToken_50 != -1)
        {
          dispatch_once(&px_playOverlayImage__onceToken_50, &__block_literal_global_52_166414);
        }

        v4 = &px_playOverlayImage__approximationImage_49;
        break;
      case 7:
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __45__UIImage_PhotosUICore__px_playOverlayImage___block_invoke_8;
        v7[3] = &__block_descriptor_40_e5_v8__0l;
        v7[4] = a1;
        if (px_playOverlayImage__onceToken_57 != -1)
        {
          dispatch_once(&px_playOverlayImage__onceToken_57, v7);
        }

        v4 = &px_playOverlayImage__normalButtonImage_56;
        break;
      case 8:
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __45__UIImage_PhotosUICore__px_playOverlayImage___block_invoke_9;
        v6[3] = &__block_descriptor_40_e5_v8__0l;
        v6[4] = a1;
        if (px_playOverlayImage__onceToken_59 != -1)
        {
          dispatch_once(&px_playOverlayImage__onceToken_59, v6);
        }

        v4 = &px_playOverlayImage__highlightedButtonImage_58;
        break;
      default:
        goto LABEL_39;
    }
  }

  v3 = *v4;
LABEL_39:

  return v3;
}

+ (id)px_imageNamed:()PhotosUICore withConfiguration:
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = [MEMORY[0x1E696AAE8] px_bundle];
  v9 = [v7 px_imageNamed:v5 configuration:v6 bundle:v8];

  if (!v9)
  {
    PXAssertGetLog();
  }

  return v9;
}

@end