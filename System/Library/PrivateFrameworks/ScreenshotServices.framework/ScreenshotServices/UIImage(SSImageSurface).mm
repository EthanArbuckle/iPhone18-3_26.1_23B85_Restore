@interface UIImage(SSImageSurface)
+ (id)ss_cgImageBackedImageFromImageSurface:()SSImageSurface;
+ (id)ss_imageFromImageSurface:()SSImageSurface;
+ (id)ss_imageProperties;
+ (uint64_t)ss_isHEICImageData:()SSImageSurface;
- (CGImage)ss_isHDRImage;
- (SSImageSurface)ss_imageSurfaceFromImage;
- (__CFData)ss_ioSurfaceImageData;
- (id)ss_dataWithFileFormat:()SSImageSurface addProperties:imageDescription:;
- (id)ss_heicDataWithImageDescription:()SSImageSurface;
- (id)ss_pngDataWithImageDescription:()SSImageSurface;
- (uint64_t)ss_hdrSurfaceCGImage;
- (uint64_t)ss_sdrSurfaceCGImage;
- (void)ss_imageSurfaceFromImage;
@end

@implementation UIImage(SSImageSurface)

+ (id)ss_imageProperties
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (ss_imageProperties_onceToken != -1)
  {
    +[UIImage(SSImageSurface) ss_imageProperties];
  }

  date = [MEMORY[0x1E695DF00] date];
  v1 = [ss_imageProperties_exifDateTimeFormatter stringFromDate:date];
  v2 = objc_opt_new();
  v3 = *MEMORY[0x1E696DE78];
  [v2 setObject:&unk_1F555C210 forKeyedSubscript:*MEMORY[0x1E696DE78]];
  [v2 setObject:&unk_1F555C1E0 forKeyedSubscript:*MEMORY[0x1E696D888]];
  [v2 setObject:&unk_1F555C1E0 forKeyedSubscript:*MEMORY[0x1E696D880]];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v20 = *MEMORY[0x1E696DB40];
  v21[0] = @"Screenshot";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  [dictionary addEntriesFromDictionary:v5];

  if (v1)
  {
    v18 = *MEMORY[0x1E696D998];
    v19 = v1;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [dictionary addEntriesFromDictionary:v6];
  }

  v7 = [dictionary copy];
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696D9B0]];

  if (_os_feature_enabled_impl())
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v16[0] = *MEMORY[0x1E696DF40];
    v16[1] = v3;
    v17[0] = @"Screenshot";
    v17[1] = &unk_1F555C210;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [dictionary2 addEntriesFromDictionary:v9];

    if (v1)
    {
      v14 = *MEMORY[0x1E696DF20];
      v15 = v1;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      [dictionary2 addEntriesFromDictionary:v10];
    }

    v11 = [dictionary2 copy];
    [v2 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696DF28]];
  }

  v12 = [v2 copy];

  return v12;
}

+ (uint64_t)ss_isHEICImageData:()SSImageSurface
{
  if (!data)
  {
    return 0;
  }

  v3 = CGImageSourceCreateWithData(data, 0);
  v4 = CGImageSourceGetType(v3);
  identifier = [*MEMORY[0x1E6982E00] identifier];
  v6 = [v4 isEqual:identifier];

  if (v3)
  {
    CFRelease(v3);
  }

  return v6;
}

- (__CFData)ss_ioSurfaceImageData
{
  v42[5] = *MEMORY[0x1E69E9840];
  sdrSurface = [self sdrSurface];
  hdrSurface = [self hdrSurface];
  if (sdrSurface | hdrSurface)
  {
    v4 = hdrSurface;
    v5 = _SSSignpostLog();
    if (os_signpost_enabled(v5))
    {
      *v38 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D9E04000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "EncodeScreenshotImageData", &unk_1D9E28D6F, v38, 2u);
    }

    v6 = os_log_create("com.apple.screenshotservices", "Performance");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v38 = 0;
      _os_log_impl(&dword_1D9E04000, v6, OS_LOG_TYPE_INFO, "BEGIN EncodeScreenshotImageData", v38, 2u);
    }

    isHighDynamicRange = [self isHighDynamicRange];
    if (sdrSurface)
    {
      v8 = isHighDynamicRange;
    }

    else
    {
      v8 = 0;
    }

    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = objc_opt_new();
    if ((_SSHDRCaptureEnabled() | v9))
    {
      v11 = @"public.heic";
    }

    else
    {
      v11 = @"public.png";
    }

    v12 = CGImageDestinationCreateWithData(v10, v11, 1uLL, 0);
    ss_imageProperties = [MEMORY[0x1E69DCAB8] ss_imageProperties];
    v14 = ss_imageProperties;
    if (v9 == 1)
    {
      v15 = CGImageCreateFromIOSurface();
      v16 = [v14 mutableCopy];
      v17 = *MEMORY[0x1E696D200];
      v41[0] = *MEMORY[0x1E696D300];
      v41[1] = v17;
      v42[0] = MEMORY[0x1E695E118];
      v42[1] = MEMORY[0x1E695E118];
      v41[2] = *MEMORY[0x1E696D2E0];
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2019963956];
      v19 = *MEMORY[0x1E696D2D8];
      v20 = *MEMORY[0x1E695F0B8];
      v42[2] = v18;
      v42[3] = v20;
      v21 = *MEMORY[0x1E696D338];
      v41[3] = v19;
      v41[4] = v21;
      v42[4] = &unk_1F555C1F0;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:5];
      v23 = *MEMORY[0x1E696D310];
      [v16 setObject:v22 forKeyedSubscript:*MEMORY[0x1E696D310]];

      CGImageDestinationAddImage(v12, v15, v16);
      CFRelease(v15);
      v24 = CGImageCreateFromIOSurface();
      v25 = [v14 mutableCopy];
      [v25 setObject:*MEMORY[0x1E696D318] forKeyedSubscript:*MEMORY[0x1E696D308]];
      v26 = *MEMORY[0x1E696D2F8];
      v40[0] = MEMORY[0x1E695E118];
      v27 = *MEMORY[0x1E696D2E8];
      v39[0] = v26;
      v39[1] = v27;
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2019963956];
      v29 = *MEMORY[0x1E696D2F0];
      v40[1] = v28;
      v40[2] = &unk_1F555C210;
      v30 = *MEMORY[0x1E696D2D0];
      v39[2] = v29;
      v39[3] = v30;
      v31 = *MEMORY[0x1E695F0C8];
      v39[4] = v21;
      v40[3] = v31;
      v40[4] = &unk_1F555C1F0;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:5];
      [v25 setObject:v32 forKeyedSubscript:v23];

      CGImageDestinationAddImage(v12, v24, v25);
      CFRelease(v24);
    }

    else
    {
      v16 = [ss_imageProperties mutableCopy];
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2019963956];
      [v16 setObject:v33 forKeyedSubscript:*MEMORY[0x1E696E148]];

      [v16 setObject:&unk_1F555C200 forKeyedSubscript:*MEMORY[0x1E696D338]];
      v34 = CGImageCreateFromIOSurface();
      CGImageDestinationAddImage(v12, v34, v16);
      CGImageRelease(v34);
    }

    if (!CGImageDestinationFinalize(v12))
    {

      v10 = 0;
    }

    CFRelease(v12);
    v35 = _SSSignpostLog();
    if (os_signpost_enabled(v35))
    {
      *v38 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D9E04000, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "EncodeScreenshotImageData", &unk_1D9E28D6F, v38, 2u);
    }

    v36 = os_log_create("com.apple.screenshotservices", "Performance");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *v38 = 0;
      _os_log_impl(&dword_1D9E04000, v36, OS_LOG_TYPE_INFO, "END EncodeScreenshotImageData", v38, 2u);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGImage)ss_isHDRImage
{
  if ([self isHighDynamicRange])
  {
    return 1;
  }

  result = [self CGImage];
  if (result)
  {
    result = CGImageGetColorSpace(result);
    if (result)
    {
      v3 = result;
      if ((MEMORY[0x1DA741E80]() & 1) != 0 || (result = CGColorSpaceUsesExtendedRange(v3), result))
      {
        CGImageGetContentHeadroom();
        return (v4 > 1.0);
      }
    }
  }

  return result;
}

- (id)ss_heicDataWithImageDescription:()SSImageSurface
{
  v4 = *MEMORY[0x1E6982E00];
  v5 = a3;
  identifier = [v4 identifier];
  v7 = [self ss_dataWithFileFormat:identifier addProperties:1 imageDescription:v5];

  return v7;
}

- (id)ss_dataWithFileFormat:()SSImageSurface addProperties:imageDescription:
{
  v8 = a3;
  v9 = a5;
  ss_sdrSurfaceCGImage = [self ss_sdrSurfaceCGImage];
  if (!ss_sdrSurfaceCGImage)
  {
    ss_CGImageBacked = [self ss_CGImageBacked];
    ss_sdrSurfaceCGImage = [ss_CGImageBacked CGImage];
  }

  if ([self ss_isHDRImage])
  {
    ss_hdrSurfaceCGImage = [self ss_hdrSurfaceCGImage];
  }

  else
  {
    ss_hdrSurfaceCGImage = 0;
  }

  v13 = MEMORY[0x1E69DCAB8];
  v14 = [MEMORY[0x1E6982C40] typeWithIdentifier:v8];
  if (a4)
  {
    ss_imageProperties = [MEMORY[0x1E69DCAB8] ss_imageProperties];
    v16 = [v13 ss_imageDataWithDataType:v14 sdrImage:ss_sdrSurfaceCGImage hdrImage:ss_hdrSurfaceCGImage properties:ss_imageProperties imageDescription:v9];
  }

  else
  {
    v16 = [v13 ss_imageDataWithDataType:v14 sdrImage:ss_sdrSurfaceCGImage hdrImage:ss_hdrSurfaceCGImage properties:0 imageDescription:v9];
  }

  return v16;
}

- (id)ss_pngDataWithImageDescription:()SSImageSurface
{
  v4 = *MEMORY[0x1E6982F28];
  v5 = a3;
  identifier = [v4 identifier];
  v7 = [self ss_dataWithFileFormat:identifier addProperties:1 imageDescription:v5];

  return v7;
}

- (uint64_t)ss_hdrSurfaceCGImage
{
  result = [self hdrSurface];
  if (result)
  {

    return _UICreateCGImageFromIOSurfaceWithOptions();
  }

  return result;
}

- (uint64_t)ss_sdrSurfaceCGImage
{
  result = [self sdrSurface];
  if (result)
  {

    return _UICreateCGImageFromIOSurfaceWithOptions();
  }

  return result;
}

+ (id)ss_imageFromImageSurface:()SSImageSurface
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = a3;
  v5 = [v3 alloc];
  backingSurface = [v4 backingSurface];
  hdrBackingSurface = [v4 hdrBackingSurface];
  [v4 scale];
  v9 = v8;
  orientation = [v4 orientation];

  v11 = [v5 _initWithSDRIOSurface:backingSurface HDRIOSurface:hdrBackingSurface scale:orientation orientation:v9];

  return v11;
}

- (SSImageSurface)ss_imageSurfaceFromImage
{
  v2 = objc_alloc_init(SSImageSurface);
  [self scale];
  [(SSImageSurface *)v2 setScale:?];
  -[SSImageSurface setOrientation:](v2, "setOrientation:", [self imageOrientation]);
  sdrSurface = [self sdrSurface];
  if (sdrSurface)
  {
    [(SSImageSurface *)v2 setBackingSurface:sdrSurface];
    -[SSImageSurface setHdrBackingSurface:](v2, "setHdrBackingSurface:", [self hdrSurface]);
  }

  else
  {
    _copyIOSurface = [self _copyIOSurface];
    if (_copyIOSurface)
    {
      v5 = _copyIOSurface;
      [(SSImageSurface *)v2 setBackingSurface:_copyIOSurface];
      CFRelease(v5);
    }

    else
    {
      v6 = os_log_create("com.apple.screenshotservices", "Image");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(UIImage(SSImageSurface) *)self ss_imageSurfaceFromImage];
      }
    }
  }

  return v2;
}

+ (id)ss_cgImageBackedImageFromImageSurface:()SSImageSurface
{
  v3 = a3;
  v4 = SSCGImageFromSSImageSurface(v3);
  v5 = MEMORY[0x1E69DCAB8];
  [v3 scale];
  v7 = v6;
  orientation = [v3 orientation];

  v9 = [v5 imageWithCGImage:v4 scale:orientation orientation:v7];
  CGImageRelease(v4);

  return v9;
}

- (void)ss_imageSurfaceFromImage
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_1D9E04000, a2, OS_LOG_TYPE_FAULT, "unexpected NULL backing surface for image %@", &v2, 0xCu);
}

@end