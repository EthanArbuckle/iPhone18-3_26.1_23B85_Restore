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

  v0 = [MEMORY[0x1E695DF00] date];
  v1 = [ss_imageProperties_exifDateTimeFormatter stringFromDate:v0];
  v2 = objc_opt_new();
  v3 = *MEMORY[0x1E696DE78];
  [v2 setObject:&unk_1F555C210 forKeyedSubscript:*MEMORY[0x1E696DE78]];
  [v2 setObject:&unk_1F555C1E0 forKeyedSubscript:*MEMORY[0x1E696D888]];
  [v2 setObject:&unk_1F555C1E0 forKeyedSubscript:*MEMORY[0x1E696D880]];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v20 = *MEMORY[0x1E696DB40];
  v21[0] = @"Screenshot";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  [v4 addEntriesFromDictionary:v5];

  if (v1)
  {
    v18 = *MEMORY[0x1E696D998];
    v19 = v1;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v4 addEntriesFromDictionary:v6];
  }

  v7 = [v4 copy];
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696D9B0]];

  if (_os_feature_enabled_impl())
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v16[0] = *MEMORY[0x1E696DF40];
    v16[1] = v3;
    v17[0] = @"Screenshot";
    v17[1] = &unk_1F555C210;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [v8 addEntriesFromDictionary:v9];

    if (v1)
    {
      v14 = *MEMORY[0x1E696DF20];
      v15 = v1;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      [v8 addEntriesFromDictionary:v10];
    }

    v11 = [v8 copy];
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
  v5 = [*MEMORY[0x1E6982E00] identifier];
  v6 = [v4 isEqual:v5];

  if (v3)
  {
    CFRelease(v3);
  }

  return v6;
}

- (__CFData)ss_ioSurfaceImageData
{
  v42[5] = *MEMORY[0x1E69E9840];
  v2 = [a1 sdrSurface];
  v3 = [a1 hdrSurface];
  if (v2 | v3)
  {
    v4 = v3;
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

    v7 = [a1 isHighDynamicRange];
    if (v2)
    {
      v8 = v7;
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
    v13 = [MEMORY[0x1E69DCAB8] ss_imageProperties];
    v14 = v13;
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
      v16 = [v13 mutableCopy];
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
  if ([a1 isHighDynamicRange])
  {
    return 1;
  }

  result = [a1 CGImage];
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
  v6 = [v4 identifier];
  v7 = [a1 ss_dataWithFileFormat:v6 addProperties:1 imageDescription:v5];

  return v7;
}

- (id)ss_dataWithFileFormat:()SSImageSurface addProperties:imageDescription:
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 ss_sdrSurfaceCGImage];
  if (!v10)
  {
    v11 = [a1 ss_CGImageBacked];
    v10 = [v11 CGImage];
  }

  if ([a1 ss_isHDRImage])
  {
    v12 = [a1 ss_hdrSurfaceCGImage];
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x1E69DCAB8];
  v14 = [MEMORY[0x1E6982C40] typeWithIdentifier:v8];
  if (a4)
  {
    v15 = [MEMORY[0x1E69DCAB8] ss_imageProperties];
    v16 = [v13 ss_imageDataWithDataType:v14 sdrImage:v10 hdrImage:v12 properties:v15 imageDescription:v9];
  }

  else
  {
    v16 = [v13 ss_imageDataWithDataType:v14 sdrImage:v10 hdrImage:v12 properties:0 imageDescription:v9];
  }

  return v16;
}

- (id)ss_pngDataWithImageDescription:()SSImageSurface
{
  v4 = *MEMORY[0x1E6982F28];
  v5 = a3;
  v6 = [v4 identifier];
  v7 = [a1 ss_dataWithFileFormat:v6 addProperties:1 imageDescription:v5];

  return v7;
}

- (uint64_t)ss_hdrSurfaceCGImage
{
  result = [a1 hdrSurface];
  if (result)
  {

    return _UICreateCGImageFromIOSurfaceWithOptions();
  }

  return result;
}

- (uint64_t)ss_sdrSurfaceCGImage
{
  result = [a1 sdrSurface];
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
  v6 = [v4 backingSurface];
  v7 = [v4 hdrBackingSurface];
  [v4 scale];
  v9 = v8;
  v10 = [v4 orientation];

  v11 = [v5 _initWithSDRIOSurface:v6 HDRIOSurface:v7 scale:v10 orientation:v9];

  return v11;
}

- (SSImageSurface)ss_imageSurfaceFromImage
{
  v2 = objc_alloc_init(SSImageSurface);
  [a1 scale];
  [(SSImageSurface *)v2 setScale:?];
  -[SSImageSurface setOrientation:](v2, "setOrientation:", [a1 imageOrientation]);
  v3 = [a1 sdrSurface];
  if (v3)
  {
    [(SSImageSurface *)v2 setBackingSurface:v3];
    -[SSImageSurface setHdrBackingSurface:](v2, "setHdrBackingSurface:", [a1 hdrSurface]);
  }

  else
  {
    v4 = [a1 _copyIOSurface];
    if (v4)
    {
      v5 = v4;
      [(SSImageSurface *)v2 setBackingSurface:v4];
      CFRelease(v5);
    }

    else
    {
      v6 = os_log_create("com.apple.screenshotservices", "Image");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(UIImage(SSImageSurface) *)a1 ss_imageSurfaceFromImage];
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
  v8 = [v3 orientation];

  v9 = [v5 imageWithCGImage:v4 scale:v8 orientation:v7];
  CGImageRelease(v4);

  return v9;
}

- (void)ss_imageSurfaceFromImage
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1D9E04000, a2, OS_LOG_TYPE_FAULT, "unexpected NULL backing surface for image %@", &v2, 0xCu);
}

@end