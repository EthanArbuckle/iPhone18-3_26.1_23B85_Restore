@interface UIImage(Utilities)
+ (double)vk_aspectFitImageFrameForViewWithFrame:()Utilities imageSize:;
+ (id)vk_UIImageFromCIImage:()Utilities;
+ (id)vk_fileIconForURL:()Utilities withPreferredSize:;
+ (id)vk_imageNamed:()Utilities withTint:;
+ (id)vk_imageNamed:()Utilities withTint:size:;
+ (id)vk_imageWithCIImage:()Utilities;
+ (id)vk_imageWithCVPixelBuffer:()Utilities;
+ (id)vk_imageWithColor:()Utilities size:;
+ (id)vk_imageWithContentsOfURL:()Utilities;
+ (id)vk_orientationMetadataFromImageOrientation:()Utilities;
+ (id)vk_orientedImageFromCGImage:()Utilities scale:transform:;
+ (id)vk_orientedImageFromImage:()Utilities fromOrientation:;
+ (id)vk_orientedImageFromImage:()Utilities toOrientation:;
- (id)vk_HEICDataWithCompressionQuality:()Utilities orientation:;
- (id)vk_JPEGDataWithOrientation:()Utilities;
- (id)vk_PNGData;
- (id)vk_PNGDataWithOrientation:()Utilities;
- (id)vk_decodeInBackground;
- (id)vk_imageDataWithRequirements:()Utilities;
- (id)vk_imageDataWithUTType:()Utilities;
- (id)vk_imageDataWithUTType:()Utilities metadata:;
- (id)vk_imageFromSubrect:()Utilities;
- (id)vk_imageView;
- (id)vk_imageWithTint:()Utilities size:;
- (id)vk_scaledImageWithSize:()Utilities scale:;
- (uint64_t)vk_HEICDataWithCompressionQuality:()Utilities;
- (uint64_t)vk_JPEGData;
- (uint64_t)vk_cgImage;
- (uint64_t)vk_cgImageGeneratingIfNecessary;
- (uint64_t)vk_cgImagePropertyOrientation;
- (uint64_t)vk_horizontallyMirroredImage;
- (uint64_t)vk_scaledImageMaxDimension:()Utilities scale:;
- (uint64_t)vk_scaledImageMinDimension:()Utilities scale:;
- (void)vk_cropRectZeroAlpha;
- (void)vk_decodeWithCompletion:()Utilities;
- (void)vk_imageDataWithRequirements:()Utilities completion:;
@end

@implementation UIImage(Utilities)

+ (id)vk_imageWithContentsOfURL:()Utilities
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 path];

  v7 = [v5 initWithContentsOfFile:v6];

  return v7;
}

+ (id)vk_imageNamed:()Utilities withTint:
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = a4;
  v7 = [v5 imageNamed:a3];
  [v7 size];
  v8 = [v7 vk_imageWithTint:v6 size:?];

  return v8;
}

+ (id)vk_imageNamed:()Utilities withTint:size:
{
  v9 = MEMORY[0x1E69DCAB8];
  v10 = a6;
  v11 = [v9 imageNamed:a5];
  v12 = [v11 vk_imageWithTint:v10 size:{a1, a2}];

  return v12;
}

- (id)vk_imageWithTint:()Utilities size:
{
  v8 = a5;
  v9 = [MEMORY[0x1E69DCA80] defaultFormat];
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 scale];
  [v9 setScale:?];

  v11 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v9 format:{a2, a3}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__UIImage_Utilities__vk_imageWithTint_size___block_invoke;
  v15[3] = &unk_1E7BE7900;
  v18 = a2;
  v19 = a3;
  v20 = 0;
  v21 = 0;
  v22 = a2;
  v23 = a3;
  v16 = v8;
  v17 = a1;
  v12 = v8;
  v13 = [v11 imageWithActions:v15];

  return v13;
}

- (id)vk_imageView
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [a1 size];
  v3 = [v2 initWithFrame:VKMRectWithSize()];
  [v3 setImage:a1];

  return v3;
}

- (uint64_t)vk_scaledImageMinDimension:()Utilities scale:
{
  [a1 size];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = a2 / v8;
  v10 = round(v6 * v9);
  v11 = round(v7 * v9);

  return [a1 vk_scaledImageWithSize:v10 scale:{v11, a3}];
}

- (uint64_t)vk_scaledImageMaxDimension:()Utilities scale:
{
  [a1 size];
  if (v6 >= v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = a2 / v8;
  v10 = round(v6 * v9);
  v11 = round(v7 * v9);

  return [a1 vk_scaledImageWithSize:v10 scale:{v11, a3}];
}

- (id)vk_scaledImageWithSize:()Utilities scale:
{
  v8 = [a1 imageRendererFormat];
  [v8 setScale:a4];
  v9 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v8 format:{a2, a3}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__UIImage_Utilities__vk_scaledImageWithSize_scale___block_invoke;
  v12[3] = &unk_1E7BE7928;
  v12[4] = a1;
  *&v12[5] = a2;
  *&v12[6] = a3;
  v10 = [v9 imageWithActions:v12];

  return v10;
}

- (id)vk_imageFromSubrect:()Utilities
{
  [a1 scale];
  if (v10 > 1.0)
  {
    [a1 scale];
    a2 = a2 * v11;
    [a1 scale];
    a3 = a3 * v12;
    [a1 scale];
    a4 = a4 * v13;
    [a1 scale];
    a5 = a5 * v14;
  }

  if ([a1 CGImage])
  {
    v15 = [a1 vk_cgImage];
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    v16 = CGImageCreateWithImageInRect(v15, v25);
    v17 = MEMORY[0x1E69DCAB8];
    [a1 scale];
    v19 = [v17 imageWithCGImage:v16 scale:objc_msgSend(a1 orientation:{"imageOrientation"), v18}];
    CGImageRelease(v16);
  }

  else
  {
    v20 = [a1 CIImage];

    if (v20)
    {
      v21 = [a1 CIImage];
      v22 = [v21 imageByCroppingToRect:{a2, a3, a4, a5}];
      v19 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCIImage:v22];
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

+ (id)vk_UIImageFromCIImage:()Utilities
{
  v3 = a3;
  [v3 extent];
  v5 = v4;
  v7 = v6;
  v14.width = v4;
  v14.height = v6;
  UIGraphicsBeginImageContext(v14);
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  v10 = [MEMORY[0x1E69DCAB8] imageWithCIImage:v3];

  [v10 drawInRect:{v8, v9, v5, v7}];
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

+ (id)vk_orientedImageFromCGImage:()Utilities scale:transform:
{
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v12 = a5[1];
  *&v25.a = *a5;
  *&v25.c = v12;
  *&v25.tx = a5[2];
  v13 = v8;
  *&v12 = v9;
  v14 = Width;
  v15 = Height;
  v27 = CGRectApplyAffineTransform(*(&v12 - 8), &v25);
  x = v27.origin.x;
  y = v27.origin.y;
  v18 = VKMCreateRGBABitmapContext(0, v27.size.width, v27.size.height, a4);
  if (!v18 || (v19 = v18, CGContextTranslateCTM(v18, -x, -y), v20 = a5[1], *&v25.a = *a5, *&v25.c = v20, *&v25.tx = a5[2], CGContextConcatCTM(v19, &v25), v28.origin.x = v8, v28.origin.y = v9, v28.size.width = Width, v28.size.height = Height, CGContextDrawImage(v19, v28, image), v21 = CGBitmapContextCreateImage(v19), CGContextRelease(v19), !v21) || ([MEMORY[0x1E69DCAB8] vk_imageWithCGImage:v21 scale:0 orientation:a4], v22 = objc_claimAutoreleasedReturnValue(), CGImageRelease(v21), !v22))
  {
    v23 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      +[UIImage(Utilities) vk_orientedImageFromCGImage:scale:transform:];
    }

    v22 = [MEMORY[0x1E69DCAB8] vk_imageWithCGImage:image];
  }

  return v22;
}

+ (id)vk_orientedImageFromImage:()Utilities fromOrientation:
{
  v5 = [a3 vk_cgImage];
  memset(&v10, 0, sizeof(v10));
  vk_transformToImageOrientation(a4, &v10);
  v8 = v10;
  CGAffineTransformInvert(&v9, &v8);
  v10 = v9;
  v6 = [MEMORY[0x1E69DCAB8] vk_orientedImageFromCGImage:v5 scale:&v9 transform:1.0];

  return v6;
}

+ (id)vk_orientedImageFromImage:()Utilities toOrientation:
{
  v5 = [a3 vk_cgImage];
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  vk_transformFromImageOrientation(a4, &v9);
  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  v6 = [MEMORY[0x1E69DCAB8] vk_orientedImageFromCGImage:v5 scale:v8 transform:1.0];

  return v6;
}

+ (id)vk_imageWithCIImage:()Utilities
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = a3;
  v5 = [[v3 alloc] initWithCIImage:v4];

  return v5;
}

- (uint64_t)vk_cgImage
{
  v1 = a1;

  return [v1 CGImage];
}

- (uint64_t)vk_cgImageGeneratingIfNecessary
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(__CFString *)a1 vk_cgImage];
  if (!v2)
  {
    v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = a1;
      _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Creating a CGImage from an VKImage, but CGImage is nil: %@", &v15, 0xCu);
    }

    v4 = [(__CFString *)a1 vk_ciImage];
    v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = a1;
      _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "Attempting CIImage for VKImage to CGImage: %@", &v15, 0xCu);
    }

    if (v4)
    {
      v6 = [objc_alloc(MEMORY[0x1E695F620]) initWithOptions:0];
      [v4 extent];
      v7 = [v6 createCGImage:v4 fromRect:?];
      v2 = v7;
      if (v7)
      {
        CFAutorelease(v7);
      }
    }

    else
    {
      v2 = 0;
    }

    v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"Success";
      if (!v2)
      {
        v9 = @"Unsuccessful";
      }

      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = a1;
      _os_log_impl(&dword_1B4335000, v8, OS_LOG_TYPE_DEFAULT, "%@ at Attempting CIImage for VKImage to CGImage: %@", &v15, 0x16u);
    }

    if (!v2)
    {
      v10 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = a1;
        _os_log_impl(&dword_1B4335000, v10, OS_LOG_TYPE_DEFAULT, "Attempting IOSurface for VKImage to CGImage: %@", &v15, 0xCu);
      }

      if ([(__CFString *)a1 vk_ioSurface])
      {
        v2 = CGImageCreateFromIOSurface();
      }

      else
      {
        v2 = 0;
      }

      v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = @"Success";
        if (!v2)
        {
          v12 = @"Unsuccessful";
        }

        v15 = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = a1;
        _os_log_impl(&dword_1B4335000, v11, OS_LOG_TYPE_DEFAULT, "%@ using IOSurface for VKImage to CGImage: %@", &v15, 0x16u);
      }

      if (!v2)
      {
        v13 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [UIImage(Utilities) vk_cgImageGeneratingIfNecessary];
        }

        return 0;
      }
    }
  }

  return v2;
}

+ (id)vk_imageWithCVPixelBuffer:()Utilities
{
  v2 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:?];
  v3 = [a1 imageWithCIImage:v2];

  return v3;
}

- (uint64_t)vk_horizontallyMirroredImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [a1 vk_cgImage];
  [a1 scale];

  return [v2 imageWithCGImage:v3 scale:4 orientation:?];
}

- (uint64_t)vk_cgImagePropertyOrientation
{
  v1 = [a1 vk_imageOrientation];

  return vk_cgImagePropertyOrientationFromVKOrientation(v1);
}

+ (id)vk_orientationMetadataFromImageOrientation:()Utilities
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ((a3 - 1) > 6)
  {
    v3 = 1;
  }

  else
  {
    v3 = dword_1B44287F8[a3 - 1];
  }

  v7 = @"Orientation";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (uint64_t)vk_JPEGData
{
  v2 = [a1 vk_imageOrientation];

  return [a1 vk_JPEGDataWithOrientation:v2];
}

- (id)vk_JPEGDataWithOrientation:()Utilities
{
  v5 = [*MEMORY[0x1E6982E58] identifier];
  v6 = [objc_opt_class() vk_orientationMetadataFromImageOrientation:a3];
  v7 = [a1 vk_imageDataWithUTType:v5 metadata:v6];

  return v7;
}

- (id)vk_PNGData
{
  v2 = [*MEMORY[0x1E6982F28] identifier];
  v3 = [a1 vk_imageDataWithUTType:v2 metadata:0];

  return v3;
}

- (id)vk_PNGDataWithOrientation:()Utilities
{
  v5 = [*MEMORY[0x1E6982F28] identifier];
  v6 = [objc_opt_class() vk_orientationMetadataFromImageOrientation:a3];
  v7 = [a1 vk_imageDataWithUTType:v5 metadata:v6];

  return v7;
}

- (uint64_t)vk_HEICDataWithCompressionQuality:()Utilities
{
  v4 = [a1 vk_imageOrientation];

  return [a1 vk_HEICDataWithCompressionQuality:v4 orientation:a2];
}

- (id)vk_HEICDataWithCompressionQuality:()Utilities orientation:
{
  v6 = [objc_opt_class() vk_orientationMetadataFromImageOrientation:a4];
  v7 = [v6 mutableCopy];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696D338]];

  v9 = [*MEMORY[0x1E6982E00] identifier];
  v10 = [a1 vk_imageDataWithUTType:v9 metadata:v7];

  return v10;
}

- (id)vk_imageDataWithUTType:()Utilities
{
  v4 = a3;
  v5 = [*MEMORY[0x1E6982E58] identifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [objc_opt_class() vk_orientationMetadataFromImageOrientation:{objc_msgSend(a1, "vk_imageOrientation")}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [a1 vk_imageDataWithUTType:v4 metadata:v7];

  return v8;
}

- (id)vk_imageDataWithUTType:()Utilities metadata:
{
  v6 = a4;
  v7 = a3;
  v8 = vk_dataFromCGImage([a1 vk_cgImage], v7, v6);

  return v8;
}

- (id)vk_imageDataWithRequirements:()Utilities
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__24;
  v12 = __Block_byref_object_dispose__24;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__UIImage_Utilities__vk_imageDataWithRequirements___block_invoke;
  v7[3] = &unk_1E7BE7950;
  v7[4] = &v8;
  [a1 vk_imageDataWithRequirements:v4 completion:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)vk_imageDataWithRequirements:()Utilities completion:
{
  v35[6] = *MEMORY[0x1E69E9840];
  v34 = a3;
  v33 = a4;
  v6 = [v34 uti];
  v7 = [*MEMORY[0x1E6982E00] identifier];
  if (![v6 isEqual:v7])
  {
    v8 = [v34 uti];
    v9 = [*MEMORY[0x1E6982E58] identifier];
    if (([v8 isEqual:v9] & 1) == 0)
    {
      v30 = [v34 uti];
      v31 = [*MEMORY[0x1E6982F28] identifier];
      v32 = [v30 isEqual:v31];

      if ((v32 & 1) == 0)
      {
        [VKAssert handleFailedAssertWithCondition:"validUTI" functionName:"[UIImage(Utilities) vk_imageDataWithRequirements:completion:]" simulateCrash:0 showAlert:0 format:@"UTI should be HEIC, JPEG, or PNG."];
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  if (![v34 maxLength])
  {
    [VKAssert handleFailedAssertWithCondition:"requirements.maxLength > 0" functionName:"[UIImage(Utilities) vk_imageDataWithRequirements:completion:]" simulateCrash:0 showAlert:0 format:@"The max length requirement should be greater than zero."];
  }

  if (![v34 minLength])
  {
    [VKAssert handleFailedAssertWithCondition:"requirements.minLength > 0" functionName:"[UIImage(Utilities) vk_imageDataWithRequirements:completion:]" simulateCrash:0 showAlert:0 format:@"The min length requirement should be greater than zero."];
  }

  if (![v34 maxDataLength])
  {
    [VKAssert handleFailedAssertWithCondition:"requirements.maxDataLength > 0" functionName:"[UIImage(Utilities) vk_imageDataWithRequirements:completion:]" simulateCrash:0 showAlert:0 format:@"The max data length requirement should be greater than zero."];
  }

  v10 = [v34 maxLength];
  if (v10 <= [v34 minLength])
  {
    [VKAssert handleFailedAssertWithCondition:"requirements.maxLength > requirements.minLength" functionName:"[UIImage(Utilities) vk_imageDataWithRequirements:completion:]" simulateCrash:0 showAlert:0 format:@"The max length requirement should not be less than the min length requirement."];
  }

  v11 = [a1 vk_cgImage];
  v12 = [objc_opt_class() vk_orientationMetadataFromImageOrientation:{objc_msgSend(a1, "vk_imageOrientation")}];
  v13 = [v12 mutableCopy];

  Width = CGImageGetWidth(v11);
  Height = CGImageGetHeight(v11);
  v35[0] = VKMClampSizeToMaxLength(Width, Height, [v34 maxLength]);
  v35[1] = v16;
  v35[2] = VKMClampSizeToMaxLength(Width, Height, vcvtd_n_f64_u64([v34 maxLength] - objc_msgSend(v34, "minLength"), 1uLL) + objc_msgSend(v34, "minLength"));
  v35[3] = v17;
  v18 = 0;
  v35[4] = VKMClampSizeToMaxLength(Width, Height, [v34 minLength]);
  v35[5] = v19;
  v20 = *MEMORY[0x1E696D338];
  do
  {
    v21 = &v35[2 * v18];
    v22 = *v21;
    v23 = v21[1];
    ResizedCGImage = vk_createResizedCGImage(v11, *v21, v23);
    v25 = 0;
    while (1)
    {
      v26 = [MEMORY[0x1E696AD98] numberWithDouble:*&qword_1B44287E0[v25]];
      [v13 setObject:v26 forKeyedSubscript:v20];

      v27 = [v34 uti];
      v28 = vk_dataFromCGImage(ResizedCGImage, v27, v13);

      v29 = [v28 length];
      if (v29 <= [v34 maxDataLength])
      {
        break;
      }

      if (++v25 == 3)
      {
        CGImageRelease(ResizedCGImage);
        goto LABEL_19;
      }
    }

    CGImageRelease(ResizedCGImage);
    Height = v23;
    Width = v22;
    if (v28)
    {
      goto LABEL_21;
    }

LABEL_19:
    ++v18;
  }

  while (v18 != 3);
  v28 = 0;
  v22 = Width;
  v23 = Height;
LABEL_21:
  v33[2](v33, v28, v22, v23);
}

+ (id)vk_fileIconForURL:()Utilities withPreferredSize:
{
  if (!a5)
  {
    v9 = 0;
    goto LABEL_33;
  }

  v7 = [MEMORY[0x1E6963658] documentProxyForURL:a5 isContentManaged:0 sourceAuditToken:0];
  v8 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v7 format:3];
  v9 = v8;
  if (!v8 || ([v8 size], v10 < a1) || (objc_msgSend(v9, "size"), v11 < a2))
  {
    v12 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v7 format:6];
    if (v12)
    {
      v13 = v12;
      if (!v9 || ([v12 size], v15 = v14, objc_msgSend(v9, "size"), v15 > v16) && (objc_msgSend(v13, "size"), v18 = v17, objc_msgSend(v9, "size"), v18 > v19))
      {
        v20 = v13;

        v9 = v20;
      }
    }

    else if (!v9)
    {
      v23 = 1;
      goto LABEL_16;
    }
  }

  [v9 size];
  if (v21 >= a1)
  {
    [v9 size];
    if (v22 >= a2)
    {
      goto LABEL_22;
    }
  }

  v23 = 0;
LABEL_16:
  v24 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v7 format:4];
  v25 = v24;
  if (v24 && ((v23 & 1) != 0 || ([v24 size], v27 = v26, objc_msgSend(v9, "size"), v27 > v28) && (objc_msgSend(v25, "size"), v30 = v29, objc_msgSend(v9, "size"), v30 > v31)))
  {

    v9 = v25;
  }

  else
  {

    if (!v9)
    {
      v34 = 1;
LABEL_26:
      v35 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v7 format:7];
      v36 = v35;
      if (v35)
      {
        if ((v34 & 1) != 0 || ([v35 size], v39 = v38, objc_msgSend(v9, "size"), v39 > v40) && (objc_msgSend(v36, "size"), v42 = v41, objc_msgSend(v9, "size"), v42 > v43))
        {
          v37 = v36;

          v9 = v37;
        }
      }

      goto LABEL_32;
    }
  }

LABEL_22:
  [v9 size];
  if (v32 < a1 || ([v9 size], v33 < a2))
  {
    v34 = 0;
    goto LABEL_26;
  }

LABEL_32:

LABEL_33:

  return v9;
}

- (void)vk_decodeWithCompletion:()Utilities
{
  v4 = vk_decodeWithCompletion__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    [UIImage(Utilities) vk_decodeWithCompletion:];
  }

  v6 = [v5 copy];

  v7 = MEMORY[0x1E696AAE0];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __46__UIImage_Utilities__vk_decodeWithCompletion___block_invoke_2;
  v13 = &unk_1E7BE47B8;
  v14 = a1;
  v15 = v6;
  v8 = v6;
  v9 = [v7 blockOperationWithBlock:&v10];
  [vk_decodeWithCompletion__drawingDecodingOperationQueue addOperation:{v9, v10, v11, v12, v13, v14}];
}

- (id)vk_decodeInBackground
{
  v2 = [a1 imageRendererFormat];
  [a1 scale];
  [v2 setScale:?];
  v3 = objc_alloc(MEMORY[0x1E69DCA78]);
  [a1 size];
  v4 = [v3 initWithSize:v2 format:?];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__UIImage_Utilities__vk_decodeInBackground__block_invoke;
  v7[3] = &unk_1E7BE6738;
  v7[4] = a1;
  v5 = [v4 imageWithActions:v7];

  return v5;
}

+ (id)vk_imageWithColor:()Utilities size:
{
  v7 = a5;
  v13.width = a1;
  v13.height = a2;
  UIGraphicsBeginImageContext(v13);
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = [v7 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v9);
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = a1;
  v14.size.height = a2;
  CGContextFillRect(CurrentContext, v14);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

+ (double)vk_aspectFitImageFrameForViewWithFrame:()Utilities imageSize:
{
  v11 = 0;
  v12 = 0;
  v13 = CGRectGetWidth(*(&a3 - 2)) / a5;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = a3;
  v19.size.height = a4;
  v14 = CGRectGetHeight(v19) / a6;
  v15 = a5 * fminf(v13, v14);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = a3;
  v20.size.height = a4;
  v16 = (CGRectGetWidth(v20) - v15) * 0.5;
  v17 = roundf(v16);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetHeight(v21);
  return a1 + v17;
}

- (void)vk_cropRectZeroAlpha
{
  v2 = [a1 vk_cgImage];
  v3 = vk_newARGB8BitmapContextFromImage(v2);
  if (v3)
  {
    v4 = v3;
    Width = CGImageGetWidth(v2);
    Height = CGImageGetHeight(v2);
    v21.size.height = Height;
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = Width;
    CGContextDrawImage(v4, v21, v2);
    Data = CGBitmapContextGetData(v4);
    if (Data)
    {
      if (Height)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = Height;
        v12 = Width;
        do
        {
          if (Width)
          {
            v13 = 0;
            v14 = Data;
            do
            {
              v16 = *v14;
              v14 += 4;
              v15 = v16;
              if (v12 >= v13)
              {
                v17 = v13;
              }

              else
              {
                v17 = v12;
              }

              if (v10 <= v13)
              {
                v18 = v13;
              }

              else
              {
                v18 = v10;
              }

              if (v11 >= v8)
              {
                v19 = v8;
              }

              else
              {
                v19 = v11;
              }

              if (v9 <= v8)
              {
                v20 = v8;
              }

              else
              {
                v20 = v9;
              }

              if (v15)
              {
                v12 = v17;
                v11 = v19;
                v10 = v18;
                v9 = v20;
              }

              ++v13;
            }

            while (Width != v13);
            Data += 4 * Width;
          }

          ++v8;
        }

        while (v8 != Height);
      }

      CGContextRelease(v4);
      [a1 scale];
    }

    else
    {
      CGContextRelease(v4);
    }
  }
}

@end