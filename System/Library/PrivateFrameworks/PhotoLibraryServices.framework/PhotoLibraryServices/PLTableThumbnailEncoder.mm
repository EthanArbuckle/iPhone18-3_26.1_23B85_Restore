@interface PLTableThumbnailEncoder
+ (CGImage)_createDownscaledImageFromSource:(CGImageSource *)source toSize:(CGSize)size cropped:(BOOL)cropped;
+ (CGImage)_createDownscaledImageFromSourceImage:(CGImage *)image toSize:(CGSize)size cropped:(BOOL)cropped;
+ (CGImage)createCascadeSeedImageFromSourceImage:(CGImage *)image toFormats:(id)formats;
+ (CGSize)smallestSizeThatFitsSourceSize:(CGSize)size withinFitFormat:(id)format andLargerSquareFormat:(id)squareFormat;
+ (id)_encodeDownscaledImage:(CGImage *)image toFormat:(id)format withUUID:(id)d error:(id *)error;
+ (id)encodeThumbnailImage:(CGImage *)image toFormat:(id)format withUUID:(id)d error:(id *)error;
+ (id)encodeThumbnailImage:(CGImage *)image toFormats:(id)formats withUUID:(id)d error:(id *)error;
+ (id)encodeThumbnailSource:(CGImageSource *)source toFormat:(id)format withUUID:(id)d error:(id *)error;
+ (id)encodeThumbnailSource:(CGImageSource *)source toFormats:(id)formats withUUID:(id)d error:(id *)error;
@end

@implementation PLTableThumbnailEncoder

+ (CGImage)createCascadeSeedImageFromSourceImage:(CGImage *)image toFormats:(id)formats
{
  v50 = *MEMORY[0x1E69E9840];
  formatsCopy = formats;
  v7 = formatsCopy;
  if (image && [formatsCopy count] >= 2)
  {
    v8 = [MEMORY[0x1E696AB50] setWithCapacity:5];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v46;
      do
      {
        v13 = 0;
        do
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v45 + 1) + 8 * v13), "formatMode", v45)}];
          [v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v11);
    }

    if ([v8 count] == 1)
    {
      v15 = [v9 objectAtIndexedSubscript:0];
      [v15 size];
      v18 = [self _createDownscaledImageFromSourceImage:image toSize:objc_msgSend(v15 cropped:{"isCropped"), v16, v17}];

      if (v18)
      {
        goto LABEL_26;
      }
    }

    v19 = [v9 objectAtIndexedSubscript:{0, v45}];
    if ([v19 isSquare])
    {
      v20 = [v9 objectAtIndexedSubscript:1];
      isSquare = [v20 isSquare];

      if ((isSquare & 1) == 0)
      {
        Width = CGImageGetWidth(image);
        Height = CGImageGetHeight(image);
        v24 = [v9 objectAtIndexedSubscript:1];
        v25 = [v9 objectAtIndexedSubscript:0];
        [self smallestSizeThatFitsSourceSize:v24 withinFitFormat:v25 andLargerSquareFormat:Width, Height];
        v27 = v26;
        v29 = v28;

        v30 = [self _createDownscaledImageFromSourceImage:image toSize:0 cropped:{v27, v29}];
        if (v30)
        {
          v18 = v30;
LABEL_26:

          goto LABEL_27;
        }
      }
    }

    else
    {
    }

    v31 = [v9 objectAtIndexedSubscript:0];
    isSquare2 = [v31 isSquare];

    v18 = 0;
    if (isSquare2)
    {
      goto LABEL_26;
    }

    v33 = [v9 objectAtIndexedSubscript:0];
    if ([v9 count] < 2)
    {
LABEL_23:
      v35 = 0;
    }

    else
    {
      v34 = 1;
      while (1)
      {
        v35 = [v9 objectAtIndexedSubscript:v34];
        if ([v35 isSquare])
        {
          break;
        }

        if ([v9 count] <= ++v34)
        {
          goto LABEL_23;
        }
      }

      if (v35)
      {
        [v33 size];
        PLSizeFromCGSize();
        CGImageGetWidth(image);
        CGImageGetHeight(image);
        PLSizeMake();
        PLCGSizeScaledToFitSize();
        v38 = v37;
        v40 = v39;
        [v35 dimension];
        if (v38 >= v41)
        {
          [v35 dimension];
          if (v40 >= v42)
          {
            [v33 size];
            v18 = [self _createDownscaledImageFromSourceImage:image toSize:objc_msgSend(v33 cropped:{"isCropped"), v43, v44}];
            goto LABEL_25;
          }
        }
      }
    }

    v18 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v18 = 0;
LABEL_27:

  return v18;
}

+ (CGSize)smallestSizeThatFitsSourceSize:(CGSize)size withinFitFormat:(id)format andLargerSquareFormat:(id)squareFormat
{
  height = size.height;
  width = size.width;
  formatCopy = format;
  squareFormatCopy = squareFormat;
  if (!formatCopy || [formatCopy isSquare])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLTableThumbnailEncoder.m" lineNumber:424 description:{@"Invalid parameter not satisfying: %@", @"fitFormat && !fitFormat.isSquare"}];

    if (squareFormatCopy)
    {
LABEL_4:
      if ([squareFormatCopy isSquare])
      {
        goto LABEL_5;
      }
    }
  }

  else if (squareFormatCopy)
  {
    goto LABEL_4;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLTableThumbnailEncoder.m" lineNumber:425 description:{@"Invalid parameter not satisfying: %@", @"squareFormat && squareFormat.isSquare"}];

LABEL_5:
  [squareFormatCopy dimension];
  v13 = v12;
  [formatCopy dimension];
  if (v13 < v14)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLTableThumbnailEncoder.m" lineNumber:426 description:{@"Invalid parameter not satisfying: %@", @"squareFormat.dimension >= fitFormat.dimension"}];
  }

  if (width <= 0.0 || height <= 0.0)
  {
    v24 = *MEMORY[0x1E695F060];
    v25 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    [formatCopy size];
    [formatCopy size];
    PLSizeMake();
    PLSizeFromCGSize();
    PLCGSizeScaledToFitSize();
    v16 = v15;
    v18 = v17;
    [squareFormatCopy dimension];
    if (height > width)
    {
      v20 = v18 * (v19 / v16);
    }

    else
    {
      v20 = v19;
    }

    if (height > width)
    {
      v21 = v19;
    }

    else
    {
      v21 = v16 * (v19 / v18);
    }

    v22 = 0;
    v23 = 0;
    v32 = CGRectIntegral(*(&v20 - 3));
    v24 = v32.size.width;
    v25 = v32.size.height;
  }

  v26 = v24;
  v27 = v25;
  result.height = v27;
  result.width = v26;
  return result;
}

+ (id)encodeThumbnailImage:(CGImage *)image toFormat:(id)format withUUID:(id)d error:(id *)error
{
  formatCopy = format;
  dCopy = d;
  if (!image || !formatCopy)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:61002 userInfo:0];
    if (v12)
    {
      goto LABEL_7;
    }
  }

  v13 = objc_opt_class();
  [formatCopy size];
  v16 = [v13 _createDownscaledImageFromSourceImage:image toSize:objc_msgSend(formatCopy cropped:{"isCropped"), v14, v15}];
  if (!v16)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:61001 userInfo:0];
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_10:
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:61004 userInfo:0];
    if (error)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v17 = v16;
  v21 = 0;
  v18 = [self _encodeDownscaledImage:v16 toFormat:formatCopy withUUID:dCopy error:&v21];
  v12 = v21;
  CGImageRelease(v17);
  if (v18)
  {
    goto LABEL_12;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (error)
  {
LABEL_8:
    v19 = v12;
    v18 = 0;
    *error = v12;
    goto LABEL_12;
  }

LABEL_11:
  v18 = 0;
LABEL_12:

  return v18;
}

+ (id)encodeThumbnailImage:(CGImage *)image toFormats:(id)formats withUUID:(id)d error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  formatsCopy = formats;
  dCopy = d;
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(formatsCopy, "count")}];
  v13 = [self createCascadeSeedImageFromSourceImage:image toFormats:formatsCopy];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = formatsCopy;
  v14 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    errorCopy = error;
    v25 = v13;
    v16 = 0;
    v17 = *v29;
    if (v13)
    {
      image = v13;
    }

    while (2)
    {
      v18 = 0;
      v19 = v16;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v28 + 1) + 8 * v18);
        v27 = v19;
        errorCopy = [self encodeThumbnailImage:image toFormat:v20 withUUID:dCopy error:&v27, errorCopy];
        v16 = v27;

        if (!errorCopy)
        {

          if (errorCopy)
          {
            v22 = v16;
            v12 = 0;
            *errorCopy = v16;
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_14;
        }

        [v12 addObject:errorCopy];

        ++v18;
        v19 = v16;
      }

      while (v15 != v18);
      v15 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

LABEL_14:
    v13 = v25;
  }

  CGImageRelease(v13);

  return v12;
}

+ (id)encodeThumbnailSource:(CGImageSource *)source toFormat:(id)format withUUID:(id)d error:(id *)error
{
  formatCopy = format;
  dCopy = d;
  if (source && formatCopy)
  {
    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:61002 userInfo:0];
  }

  v13 = objc_opt_class();
  [formatCopy size];
  v16 = [v13 _createDownscaledImageFromSource:source toSize:objc_msgSend(formatCopy cropped:{"isCropped"), v14, v15}];
  if (!v16)
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:61001 userInfo:0];

    if (v19)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:61004 userInfo:0];
    if (error)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v17 = v16;
  v22 = v12;
  v18 = [self _encodeDownscaledImage:v16 toFormat:formatCopy withUUID:dCopy error:&v22];
  v19 = v22;

  CGImageRelease(v17);
  if (v18)
  {
    goto LABEL_13;
  }

  if (!v19)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (error)
  {
LABEL_9:
    v20 = v19;
    v18 = 0;
    *error = v19;
    goto LABEL_13;
  }

LABEL_12:
  v18 = 0;
LABEL_13:

  return v18;
}

+ (id)encodeThumbnailSource:(CGImageSource *)source toFormats:(id)formats withUUID:(id)d error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  formatsCopy = formats;
  dCopy = d;
  if (source)
  {
    if ([formatsCopy count])
    {
      PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(source);
      v20 = *MEMORY[0x1E696E138];
      v21[0] = MEMORY[0x1E695E118];
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      ImageAtIndex = CGImageSourceCreateImageAtIndex(source, PrimaryImageIndex, v13);
      if (ImageAtIndex)
      {
        v15 = ImageAtIndex;
        source = [self encodeThumbnailImage:ImageAtIndex toFormats:formatsCopy withUUID:dCopy error:error];
        CGImageRelease(v15);
      }

      else
      {
        v16 = PLThumbnailsGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v18 = 138543362;
          sourceCopy = source;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Unable to decode full sized image from source: %{public}@", &v18, 0xCu);
        }

        source = 0;
      }
    }

    else
    {
      source = 0;
    }
  }

  return source;
}

+ (id)_encodeDownscaledImage:(CGImage *)image toFormat:(id)format withUUID:(id)d error:(id *)error
{
  v54[2] = *MEMORY[0x1E69E9840];
  formatCopy = format;
  dCopy = d;
  v11 = 0x1E696A000uLL;
  if (!image || !formatCopy)
  {
    v12 = *MEMORY[0x1E69BFF48];
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:61002 userInfo:0];
    if (v13)
    {
      goto LABEL_6;
    }
  }

  thumbnailKind = [formatCopy thumbnailKind];
  if (thumbnailKind < 3)
  {
    v12 = *MEMORY[0x1E69BFF48];
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:61002 userInfo:0];
    if (v13)
    {
LABEL_6:
      v15 = v13;
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:v12 code:61001 userInfo:0];

      v17 = 0;
      goto LABEL_25;
    }

    goto LABEL_10;
  }

  if (thumbnailKind == 3)
  {
    v23 = *MEMORY[0x1E696D3E8];
    v24 = *MEMORY[0x1E696D3E0];
    v51[0] = *MEMORY[0x1E696D8A0];
    v51[1] = v24;
    v52[0] = v23;
    v52[1] = &unk_1F0FBC010;
    v20 = MEMORY[0x1E695DF20];
    v21 = v52;
    v22 = v51;
  }

  else
  {
    if (thumbnailKind != 4)
    {
LABEL_10:
      v17 = 0;
      goto LABEL_13;
    }

    v18 = *MEMORY[0x1E696D420];
    v19 = *MEMORY[0x1E696D428];
    v53[0] = *MEMORY[0x1E696D8A0];
    v53[1] = v19;
    v54[0] = v18;
    v54[1] = &unk_1F0FBBFF8;
    v20 = MEMORY[0x1E695DF20];
    v21 = v54;
    v22 = v53;
  }

  v17 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:2];
LABEL_13:
  Width = CGImageGetWidth(image);
  v26 = [PLTableThumbnailEncoderResult _minKtxDataLengthFromImageSize:Width, CGImageGetHeight(image)];
  Mutable = CFDataCreateMutable(0, v26 + 1024);
  v28 = CGImageDestinationCreateWithData(Mutable, @"org.khronos.ktx", 1uLL, 0);
  if (!v28)
  {
    v33 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E69BFF48];
    v45 = *MEMORY[0x1E696A578];
    v46 = @"Can't create destination";
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v16 = [v33 errorWithDomain:v34 code:61003 userInfo:v35];

    CFRelease(Mutable);
    goto LABEL_25;
  }

  v29 = v28;
  if ([formatCopy thumbnailKind] == 4)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    CopyWithColorSpace = CGImageCreateCopyWithColorSpace(image, DeviceRGB);
    v32 = DeviceRGB;
    v11 = 0x1E696A000;
    CGColorSpaceRelease(v32);
    CGImageDestinationAddImage(v29, CopyWithColorSpace, v17);
    CGImageRelease(CopyWithColorSpace);
  }

  else
  {
    CGImageDestinationAddImage(v29, image, v17);
  }

  if (!CGImageDestinationFinalize(v29))
  {
    v36 = *(v11 + 3008);
    v37 = *MEMORY[0x1E69BFF48];
    v47 = *MEMORY[0x1E696A578];
    v48 = @"Finalize failed";
    v38 = MEMORY[0x1E695DF20];
    v39 = &v48;
    v40 = &v47;
    goto LABEL_22;
  }

  if (CFDataGetLength(Mutable) < v26)
  {
    v36 = *(v11 + 3008);
    v37 = *MEMORY[0x1E69BFF48];
    v49 = *MEMORY[0x1E696A578];
    v50 = @"KTX data too short";
    v38 = MEMORY[0x1E695DF20];
    v39 = &v50;
    v40 = &v49;
LABEL_22:
    v41 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:1];
    v16 = [v36 errorWithDomain:v37 code:61003 userInfo:v41];

    v11 = 0x1E696A000;
    v42 = 0;
    goto LABEL_24;
  }

  v42 = [[PLTableThumbnailEncoderResult alloc] initWithKtxData:Mutable uuid:dCopy format:formatCopy];
  v16 = 0;
LABEL_24:
  CFRelease(v29);
  CFRelease(Mutable);
  if (v42)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (v16)
  {
    if (error)
    {
LABEL_27:
      v43 = v16;
      v42 = 0;
      *error = v16;
      goto LABEL_30;
    }
  }

  else
  {
    v16 = [*(v11 + 3008) errorWithDomain:*MEMORY[0x1E69BFF48] code:61004 userInfo:0];
    if (error)
    {
      goto LABEL_27;
    }
  }

  v42 = 0;
LABEL_30:

  return v42;
}

+ (CGImage)_createDownscaledImageFromSource:(CGImageSource *)source toSize:(CGSize)size cropped:(BOOL)cropped
{
  sourceCopy = source;
  v20[1] = *MEMORY[0x1E69E9840];
  if (source)
  {
    height = size.height;
    width = size.width;
    if (size.width == *MEMORY[0x1E695F060] && size.height == *(MEMORY[0x1E695F060] + 8))
    {
      return 0;
    }

    else
    {
      croppedCopy = cropped;
      PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(source);
      v19 = *MEMORY[0x1E696E138];
      v20[0] = MEMORY[0x1E695E118];
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      ImageAtIndex = CGImageSourceCreateImageAtIndex(sourceCopy, PrimaryImageIndex, v12);
      if (ImageAtIndex)
      {
        v14 = ImageAtIndex;
        sourceCopy = [self _createDownscaledImageFromSourceImage:ImageAtIndex toSize:croppedCopy cropped:{width, height}];
        CGImageRelease(v14);
      }

      else
      {
        v15 = PLThumbnailsGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = 138543362;
          v18 = sourceCopy;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Unable to decode full sized image from source: %{public}@", &v17, 0xCu);
        }

        sourceCopy = 0;
      }
    }
  }

  return sourceCopy;
}

+ (CGImage)_createDownscaledImageFromSourceImage:(CGImage *)image toSize:(CGSize)size cropped:(BOOL)cropped
{
  croppedCopy = cropped;
  height = size.height;
  width = size.width;
  v30 = *MEMORY[0x1E69E9840];
  if (_createDownscaledImageFromSourceImage_toSize_cropped__s_onceToken != -1)
  {
    dispatch_once(&_createDownscaledImageFromSourceImage_toSize_cropped__s_onceToken, &__block_literal_global_22782);
  }

  CGImageGetColorSpace(image);
  v9 = CGColorSpaceEqualToColorSpace();
  v10 = CGImageGetWidth(image);
  v11 = CGImageGetHeight(image);
  v12 = width == v10 && height == v11;
  if (v12 && (v9 & 1) != 0)
  {

    return CGImageRetain(image);
  }

  else
  {
    if (croppedCopy)
    {
      SquareCroppedImage = PLThumbnailCreateSquareCroppedImage(image);
    }

    else
    {
      SquareCroppedImage = CGImageRetain(image);
    }

    v15 = SquareCroppedImage;
    if (SquareCroppedImage)
    {
      v16 = PLSizeMake();
      CGImageGetWidth(v15);
      CGImageGetHeight(v15);
      PLSizeMake();
      PLCGSizeScaledToFitSize();
      v32.size.width = v17;
      v32.size.height = v18;
      v32.origin.x = 0.0;
      v32.origin.y = 0.0;
      v33 = CGRectIntegral(v32);
      x = v33.origin.x;
      y = v33.origin.y;
      v21 = v33.size.width;
      v22 = v33.size.height;
      v23 = CGBitmapContextCreate(0, v33.size.width, v33.size.height, 8uLL, 4 * v16, _createDownscaledImageFromSourceImage_toSize_cropped__s_targetColorSpace, 0x2002u);
      if (v23)
      {
        v24 = v23;
        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = v21;
        v34.size.height = v22;
        CGContextDrawImage(v23, v34, v15);
        Image = CGBitmapContextCreateImage(v24);
        CGContextRelease(v24);
      }

      else
      {
        v27 = PLThumbnailsGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = 138543362;
          imageCopy = v15;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Unable to create CGContext to downscale image: %{public}@", &v28, 0xCu);
        }

        Image = 0;
      }

      CGImageRelease(v15);
    }

    else
    {
      v26 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = 138543362;
        imageCopy = image;
        _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Unable to create square-cropped image from full size image: %{public}@", &v28, 0xCu);
      }

      return 0;
    }

    return Image;
  }
}

CGColorSpaceRef __80__PLTableThumbnailEncoder__createDownscaledImageFromSourceImage_toSize_cropped___block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  _createDownscaledImageFromSourceImage_toSize_cropped__s_targetColorSpace = result;
  return result;
}

@end