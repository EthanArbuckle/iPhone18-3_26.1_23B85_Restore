@interface PUIImageEncoder
+ (BOOL)setSnapshotDeviceOrientation:(int64_t)orientation forURL:(id)l;
+ (BOOL)setSnapshotInterfaceOrientation:(int64_t)orientation forURL:(id)l;
+ (BOOL)setSnapshotScale:(double)scale forURL:(id)l;
+ (BOOL)setSnapshotVersionForURL:(id)l;
+ (double)snapshotScaleForURL:(id)l;
+ (int64_t)snapshotDeviceOrientationForURL:(id)l;
+ (int64_t)snapshotInterfaceOrientationForURL:(id)l;
+ (unsigned)snapshotVersionForURL:(id)l;
+ (void)decorateSurface:(id)surface interfaceOrientation:(int64_t)orientation deviceOrientation:(int64_t)deviceOrientation scale:(double)scale;
- (PUIImageEncoder)initWithURL:(id)l format:(id)format;
- (id)createUIImageWithError:(id *)error;
- (id)createUIImageWithOrientation:(int64_t)orientation scale:(double)scale error:(id *)error;
- (id)saveImage:(CGImage *)image error:(id *)error;
- (id)saveUIImage:(id)image error:(id *)error;
- (id)writeThenReadBackImage:(id)image error:(id *)error;
- (void)currentSnapshotInterfaceOrientation:(int64_t *)orientation outDeviceOrientation:(int64_t *)deviceOrientation;
@end

@implementation PUIImageEncoder

- (PUIImageEncoder)initWithURL:(id)l format:(id)format
{
  lCopy = l;
  formatCopy = format;
  if (!lCopy)
  {
    [PUIImageEncoder initWithURL:a2 format:?];
  }

  v9 = formatCopy;
  if (!formatCopy)
  {
    [PUIImageEncoder initWithURL:a2 format:?];
  }

  v17.receiver = self;
  v17.super_class = PUIImageEncoder;
  v10 = [(PUIImageEncoder *)&v17 init];
  if (v10)
  {
    absoluteURL = [lCopy absoluteURL];
    v12 = [absoluteURL copy];
    url = v10->_url;
    v10->_url = v12;

    v14 = [v9 copy];
    format = v10->_format;
    v10->_format = v14;
  }

  return v10;
}

- (id)writeThenReadBackImage:(id)image error:(id *)error
{
  v6 = [(PUIImageEncoder *)self saveUIImage:image error:?];

  if (v6)
  {
    v7 = [(PUIImageEncoder *)self createUIImageWithError:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createUIImageWithError:(id *)error
{
  [objc_opt_class() snapshotInterfaceOrientationForURL:self->_url];
  [objc_opt_class() snapshotDeviceOrientationForURL:self->_url];
  [objc_opt_class() snapshotScaleForURL:self->_url];
  if (v5 == 0.0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = v5;
  }

  v7 = PUIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation();

  return [(PUIImageEncoder *)self createUIImageWithOrientation:v7 scale:error error:v6];
}

- (void)currentSnapshotInterfaceOrientation:(int64_t *)orientation outDeviceOrientation:(int64_t *)deviceOrientation
{
  if (orientation)
  {
    *orientation = [objc_opt_class() snapshotInterfaceOrientationForURL:self->_url];
  }

  if (deviceOrientation)
  {
    *deviceOrientation = [objc_opt_class() snapshotDeviceOrientationForURL:self->_url];
  }
}

+ (void)decorateSurface:(id)surface interfaceOrientation:(int64_t)orientation deviceOrientation:(int64_t)deviceOrientation scale:(double)scale
{
  surfaceCopy = surface;
  if (BSInterfaceOrientationIsValid())
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
    [surfaceCopy setAttachment:v9 forKey:kPaperboardIOSurfaceInterfaceOrientationPropertiesKey];
  }

  if (BSInterfaceOrientationIsValid())
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:deviceOrientation];
    [surfaceCopy setAttachment:v10 forKey:kPaperboardIOSurfaceDeviceOrientationPropertiesKey];
  }

  if (scale > 0.0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:scale];
    [surfaceCopy setAttachment:v11 forKey:kPaperboardIOSurfaceDeviceScalePropertiesKey];
  }
}

- (id)createUIImageWithOrientation:(int64_t)orientation scale:(double)scale error:(id *)error
{
  v50[4] = *MEMORY[0x1E69E9840];
  url = self->_url;
  v42 = 0;
  v10 = [(NSURL *)url checkResourceIsReachableAndReturnError:&v42];
  v11 = v42;
  v12 = v11;
  if (!v10)
  {
    if (error)
    {
      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A598];
      v49[0] = *MEMORY[0x1E696A578];
      v49[1] = v22;
      v50[0] = @"Image cannot be created from URL.";
      v50[1] = @"Ensure the path is reachable by this process.";
      v23 = *MEMORY[0x1E696A998];
      v49[2] = *MEMORY[0x1E696AA08];
      v49[3] = v23;
      v24 = self->_url;
      v50[2] = v11;
      v50[3] = v24;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:4];
      [v21 errorWithDomain:@"com.apple.PosterBoard.PosterUIFoundation.ImageEncoding" code:4 userInfo:v17];
      *error = v20 = 0;
      goto LABEL_29;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_30;
  }

  v13 = [objc_opt_class() snapshotVersionForURL:self->_url];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1;
  }

  if (v14 > 13)
  {
    v25 = self->_url;
    v41 = 0;
    v26 = [MEMORY[0x1E695DEF0] pui_loadImageDataFromFileURL:v25 error:&v41];
    v27 = v41;
    v17 = v27;
    if (!v26 || v27)
    {
      if (!error)
      {
        v20 = 0;
LABEL_28:

        goto LABEL_29;
      }

      v33 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A598];
      v45[0] = *MEMORY[0x1E696A578];
      v45[1] = v34;
      v46[0] = @"Image cannot be created from URL.";
      v46[1] = @"Ensure the path is readable by this process.";
      v35 = *MEMORY[0x1E696A998];
      v45[2] = *MEMORY[0x1E696AA08];
      v45[3] = v35;
      v36 = self->_url;
      v46[2] = v27;
      v46[3] = v36;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:4];
      [v33 errorWithDomain:@"com.apple.PosterBoard.PosterUIFoundation.ImageEncoding" code:4 userInfo:v32];
      *error = v20 = 0;
    }

    else
    {
      v28 = CGImageSourceCreateWithData(v26, 0);
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v28, 0, 0);
      v30 = objc_alloc(MEMORY[0x1E69DCAB8]);
      scaleCopy = 1.0;
      if (scale != 0.0)
      {
        scaleCopy = scale;
      }

      v32 = [v30 initWithCGImage:ImageAtIndex scale:orientation orientation:scaleCopy];
      if (ImageAtIndex)
      {
        CGImageRelease(ImageAtIndex);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      if (v32)
      {
        v32 = v32;
        v20 = v32;
      }

      else
      {
        if (error)
        {
          v37 = MEMORY[0x1E696ABC0];
          v38 = *MEMORY[0x1E696A598];
          v43[0] = *MEMORY[0x1E696A578];
          v43[1] = v38;
          v44[0] = @"Image cannot be created from URL.";
          v44[1] = @"Ensure the data is an actual image.";
          v43[2] = *MEMORY[0x1E696A998];
          v44[2] = self->_url;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];
          *error = [v37 errorWithDomain:@"com.apple.PosterBoard.PosterUIFoundation.ImageEncoding" code:4 userInfo:v39];
        }

        v20 = 0;
      }
    }

    goto LABEL_28;
  }

  if (!error)
  {
    goto LABEL_10;
  }

  v15 = MEMORY[0x1E696ABC0];
  v16 = *MEMORY[0x1E696A578];
  v48[0] = @"Image cannot be created from URL; using an out-of-date version.";
  v47[0] = v16;
  v47[1] = @"version";
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v47[2] = *MEMORY[0x1E696A998];
  v18 = self->_url;
  v48[1] = v17;
  v48[2] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];
  *error = [v15 errorWithDomain:@"com.apple.PosterBoard.PosterUIFoundation.ImageEncoding" code:3 userInfo:v19];

  v20 = 0;
LABEL_29:

LABEL_30:

  return v20;
}

- (id)saveUIImage:(id)image error:(id *)error
{
  v58[3] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v8 = imageCopy;
  if (imageCopy)
  {
    CGImageRepresentation = [imageCopy CGImage];
    if (!CGImageRepresentation)
    {
      pui_wrappedIOSurface = [v8 pui_wrappedIOSurface];

      if (pui_wrappedIOSurface)
      {
        pui_wrappedIOSurface2 = [v8 pui_wrappedIOSurface];
        cGImageBuilder = [pui_wrappedIOSurface2 CGImageBuilder];

        buildCGImage = [cGImageBuilder buildCGImage];
        if (!buildCGImage)
        {
          if (error)
          {
            v48 = MEMORY[0x1E696ABC0];
            v49 = *MEMORY[0x1E696A598];
            v55[0] = *MEMORY[0x1E696A578];
            v55[1] = v49;
            v56[0] = @"underlying CGImage cannot be saved URL by encoder";
            v56[1] = @"Ensure the image is an actual image.";
            v55[2] = *MEMORY[0x1E696A998];
            v56[2] = self->_url;
            v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:3];
            *error = [v48 errorWithDomain:@"com.apple.PosterBoard.PosterUIFoundation.ImageEncoding" code:4 userInfo:v50];
          }

          v15 = 0;
          goto LABEL_49;
        }

        v14 = CFAutorelease(buildCGImage);

        if (v14)
        {
LABEL_8:
          v15 = [(PUIImageEncoder *)self saveImage:v14 error:error];
          if (!v15)
          {
            goto LABEL_50;
          }

          pui_wrappedIOSurface3 = [v8 pui_wrappedIOSurface];
          v17 = [pui_wrappedIOSurface3 attachmentForKey:kPaperboardIOSurfaceInterfaceOrientationPropertiesKey];
          unsignedIntegerValue = [v17 unsignedIntegerValue];

          pui_wrappedIOSurface4 = [v8 pui_wrappedIOSurface];
          v20 = [pui_wrappedIOSurface4 attachmentForKey:kPaperboardIOSurfaceDeviceOrientationPropertiesKey];
          unsignedIntegerValue2 = [v20 unsignedIntegerValue];

          if (unsignedIntegerValue | unsignedIntegerValue2)
          {
            if (!unsignedIntegerValue)
            {
LABEL_20:
              if (unsignedIntegerValue2)
              {
                v28 = [objc_opt_class() setSnapshotDeviceOrientation:unsignedIntegerValue2 forURL:v15];
                if (error)
                {
                  if ((v28 & 1) == 0)
                  {
                    v29 = [MEMORY[0x1E695DF90] dictionaryWithObject:@"Failed to write snapshot orientation xattr" forKey:*MEMORY[0x1E696A580]];
                    [v29 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A998]];
                    __error();
                    v30 = _NSErrorWithFilePathAndErrno();
                    if (v30)
                    {
                      [v29 setObject:v30 forKeyedSubscript:*MEMORY[0x1E696AA08]];
                    }

                    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PosterBoard.PosterUIFoundation.ImageEncoding" code:6 userInfo:v29];
                  }
                }
              }

LABEL_26:
              pui_wrappedIOSurface5 = [v8 pui_wrappedIOSurface];
              v32 = [pui_wrappedIOSurface5 attachmentForKey:kPaperboardIOSurfaceDeviceScalePropertiesKey];
              [v32 doubleValue];
              v34 = v33;
              if (v33 == 0.0)
              {
                [v8 scale];
                v34 = v35;
              }

              v36 = [objc_opt_class() setSnapshotScale:v15 forURL:v34];
              if (error && !v36)
              {
                v37 = [MEMORY[0x1E695DF90] dictionaryWithObject:@"Failed to write snapshot orientation xattr" forKey:*MEMORY[0x1E696A580]];
                [v37 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A998]];
                __error();
                v38 = _NSErrorWithFilePathAndErrno();
                if (v38)
                {
                  [v37 setObject:v38 forKeyedSubscript:*MEMORY[0x1E696AA08]];
                }

                *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PosterBoard.PosterUIFoundation.ImageEncoding" code:6 userInfo:v37];
              }

              v39 = [objc_opt_class() setSnapshotVersionForURL:v15];
              if (error && !v39)
              {
                v40 = [MEMORY[0x1E695DF90] dictionaryWithObject:@"Failed to write snapshot version xattr" forKey:*MEMORY[0x1E696A580]];
                [v40 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A998]];
                __error();
                v41 = _NSErrorWithFilePathAndErrno();
                if (v41)
                {
                  [v40 setObject:v41 forKeyedSubscript:*MEMORY[0x1E696AA08]];
                }

                *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PosterBoard.PosterUIFoundation.ImageEncoding" code:5 userInfo:v40];
              }

              v42 = *MEMORY[0x1E695DAF0];
              v53[0] = *MEMORY[0x1E695DB80];
              v53[1] = v42;
              v43 = *MEMORY[0x1E695DAF8];
              v54[0] = MEMORY[0x1E695E118];
              v54[1] = v43;
              v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];
              v52 = 0;
              v45 = [v15 setResourceValues:v44 error:&v52];
              cGImageBuilder = v52;

              if (!error || v45)
              {
                goto LABEL_49;
              }

              v46 = [MEMORY[0x1E695DF90] dictionaryWithObject:@"Failed to tag snapshot as excluded from backup" forKey:*MEMORY[0x1E696A580]];
              [v46 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A998]];
              if (cGImageBuilder)
              {
                v47 = cGImageBuilder;
              }

              else
              {
                __error();
                v47 = _NSErrorWithFilePathAndErrno();
                if (!v47)
                {
LABEL_45:
                  *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PosterBoard.PosterUIFoundation.ImageEncoding" code:5 userInfo:v46];

                  goto LABEL_49;
                }
              }

              [v46 setObject:v47 forKeyedSubscript:*MEMORY[0x1E696AA08]];
              goto LABEL_45;
            }
          }

          else
          {
            imageOrientation = [v8 imageOrientation];
            if (imageOrientation >= 4)
            {
              goto LABEL_26;
            }

            unsignedIntegerValue2 = imageOrientation + 1;
            unsignedIntegerValue = 1;
          }

          v25 = [objc_opt_class() setSnapshotInterfaceOrientation:unsignedIntegerValue forURL:v15];
          if (error && (v25 & 1) == 0)
          {
            v26 = [MEMORY[0x1E695DF90] dictionaryWithObject:@"Failed to write snapshot orientation xattr" forKey:*MEMORY[0x1E696A580]];
            [v26 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A998]];
            __error();
            v27 = _NSErrorWithFilePathAndErrno();
            if (v27)
            {
              [v26 setObject:v27 forKeyedSubscript:*MEMORY[0x1E696AA08]];
            }

            *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PosterBoard.PosterUIFoundation.ImageEncoding" code:7 userInfo:v26];
          }

          goto LABEL_20;
        }
      }

      CGImageRepresentation = _UIImageGetCGImageRepresentation();
      if (!CGImageRepresentation)
      {
        [PUIImageEncoder saveUIImage:a2 error:?];
      }
    }

    v14 = CGImageRepresentation;
    goto LABEL_8;
  }

  if (!error)
  {
    v15 = 0;
    goto LABEL_50;
  }

  v23 = MEMORY[0x1E696ABC0];
  v24 = *MEMORY[0x1E696A598];
  v57[0] = *MEMORY[0x1E696A578];
  v57[1] = v24;
  v58[0] = @"Image cannot be saved URL.";
  v58[1] = @"Ensure the image is an actual image.";
  v57[2] = *MEMORY[0x1E696A998];
  v58[2] = self->_url;
  cGImageBuilder = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];
  [v23 errorWithDomain:@"com.apple.PosterBoard.PosterUIFoundation.ImageEncoding" code:4 userInfo:cGImageBuilder];
  *error = v15 = 0;
LABEL_49:

LABEL_50:

  return v15;
}

- (id)saveImage:(CGImage *)image error:(id *)error
{
  v42[3] = *MEMORY[0x1E69E9840];
  if (!image)
  {
    [PUIImageEncoder saveImage:a2 error:?];
  }

  v7 = self->_format;
  v8 = [(PUIImageOnDiskFormat *)v7 resolveDestinationOptionsForImage:image];
  v9 = CGImageDestinationCreateWithURL(self->_url, [(PUIImageOnDiskFormat *)self->_format typeIdentifier], 1uLL, v8);
  if (!v9)
  {
    if (!error)
    {
      goto LABEL_21;
    }

    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v42[0] = @"Image destination failed to be created from URL.";
    v24 = *MEMORY[0x1E696A598];
    v41[0] = v23;
    v41[1] = v24;
    v25 = MEMORY[0x1E696AEC0];
    typeIdentifier = [(PUIImageOnDiskFormat *)self->_format typeIdentifier];
    v26 = [v25 stringWithFormat:@"Ensure the path is reachable, and that the device supports the type identifier", typeIdentifier];
    v27 = v26;
    v41[2] = *MEMORY[0x1E696A998];
    url = self->_url;
    if (!url)
    {
      url = @"(null)";
    }

    v42[1] = v26;
    v42[2] = url;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];
    *error = [v22 errorWithDomain:@"com.apple.PosterBoard.PosterUIFoundation.ImageEncoding" code:1 userInfo:v29];

    goto LABEL_19;
  }

  v10 = v9;
  v11 = PUILogSnapshotting();
  v12 = os_signpost_id_generate(v11);

  v13 = PUILogSnapshotting();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = self->_url;
    *buf = 138412290;
    v38 = v15;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "[PUIImageEncoder saveImage:error:]", "URL: %@", buf, 0xCu);
  }

  typeIdentifier = [(PUIImageOnDiskFormat *)v7 resolveAddImageOptionsForImage:image];
  v17 = objc_autoreleasePoolPush();
  CGImageDestinationAddImage(v10, image, typeIdentifier);
  v18 = CGImageDestinationFinalize(v10);
  CFRelease(v10);
  objc_autoreleasePoolPop(v17);
  v19 = PUILogSnapshotting();
  v20 = v19;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v21 = self->_url;
    *buf = 138412546;
    v38 = v21;
    v39 = 1024;
    v40 = v18;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v20, OS_SIGNPOST_INTERVAL_END, v12, "[PUIImageEncoder saveImage:error:]", "URL: %@ success:%{BOOL}u", buf, 0x12u);
  }

  if (!v18)
  {
    if (!error)
    {
      goto LABEL_20;
    }

    v30 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A998];
    v35[0] = *MEMORY[0x1E696A578];
    v35[1] = v31;
    v32 = self->_url;
    if (!v32)
    {
      v32 = @"(null)";
    }

    v36[0] = @"Image final encoding failed for unknown reasons in CoreGraphics.";
    v36[1] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    *error = [v30 errorWithDomain:@"com.apple.PosterBoard.PosterUIFoundation.ImageEncoding" code:2 userInfo:v33];

LABEL_19:
    error = 0;
    goto LABEL_20;
  }

  error = self->_url;
LABEL_20:

LABEL_21:

  return error;
}

+ (unsigned)snapshotVersionForURL:(id)l
{
  value = -1;
  fileSystemRepresentation = [l fileSystemRepresentation];
  v4 = getxattr(fileSystemRepresentation, [kPaperboardIOSurfaceSnapshotVersionPropertiesKey UTF8String], &value, 1uLL, 0, 0);
  v5 = value;
  if (v4 == -1)
  {
    return -1;
  }

  return v5;
}

+ (BOOL)setSnapshotVersionForURL:(id)l
{
  value = 14;
  fileSystemRepresentation = [l fileSystemRepresentation];
  return setxattr(fileSystemRepresentation, [kPaperboardIOSurfaceSnapshotVersionPropertiesKey UTF8String], &value, 1uLL, 0, 0) == 0;
}

+ (BOOL)setSnapshotScale:(double)scale forURL:(id)l
{
  value = scale;
  fileSystemRepresentation = [l fileSystemRepresentation];
  return setxattr(fileSystemRepresentation, [kPaperboardIOSurfaceDeviceScalePropertiesKey UTF8String], &value, 8uLL, 0, 0) == 0;
}

+ (double)snapshotScaleForURL:(id)l
{
  value = 1.0;
  fileSystemRepresentation = [l fileSystemRepresentation];
  v4 = getxattr(fileSystemRepresentation, [kPaperboardIOSurfaceDeviceScalePropertiesKey UTF8String], &value, 8uLL, 0, 0);
  result = value;
  if (v4 == -1)
  {
    return 1.0;
  }

  return result;
}

+ (int64_t)snapshotInterfaceOrientationForURL:(id)l
{
  value = 0;
  fileSystemRepresentation = [l fileSystemRepresentation];
  if (getxattr(fileSystemRepresentation, [kPaperboardIOSurfaceInterfaceOrientationPropertiesKey UTF8String], &value, 8uLL, 0, 0) == -1)
  {
    return 0;
  }

  else
  {
    return value;
  }
}

+ (BOOL)setSnapshotInterfaceOrientation:(int64_t)orientation forURL:(id)l
{
  value = orientation;
  fileSystemRepresentation = [l fileSystemRepresentation];
  return setxattr(fileSystemRepresentation, [kPaperboardIOSurfaceInterfaceOrientationPropertiesKey UTF8String], &value, 8uLL, 0, 0) == 0;
}

+ (int64_t)snapshotDeviceOrientationForURL:(id)l
{
  value = 0;
  fileSystemRepresentation = [l fileSystemRepresentation];
  if (getxattr(fileSystemRepresentation, [kPaperboardIOSurfaceDeviceOrientationPropertiesKey UTF8String], &value, 8uLL, 0, 0) == -1)
  {
    return 0;
  }

  else
  {
    return value;
  }
}

+ (BOOL)setSnapshotDeviceOrientation:(int64_t)orientation forURL:(id)l
{
  value = orientation;
  fileSystemRepresentation = [l fileSystemRepresentation];
  return setxattr(fileSystemRepresentation, [kPaperboardIOSurfaceDeviceOrientationPropertiesKey UTF8String], &value, 8uLL, 0, 0) == 0;
}

- (void)initWithURL:(char *)a1 format:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"format != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithURL:(char *)a1 format:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"url != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)saveUIImage:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"cgImage != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)saveImage:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"image != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end