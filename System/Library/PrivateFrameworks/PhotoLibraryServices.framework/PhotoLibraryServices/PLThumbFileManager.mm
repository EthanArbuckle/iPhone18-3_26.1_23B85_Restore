@interface PLThumbFileManager
- (BOOL)_writeImage:(id)image forThumbIdentifier:(id)identifier;
- (BOOL)setImageForEntry:(id)entry withIdentifier:(id)identifier orIndex:(unint64_t)index photoUUID:(id)d options:(id)options;
- (CGImage)createImageWithIdentifier:(id)identifier orIndex:(unint64_t)index;
@end

@implementation PLThumbFileManager

- (CGImage)createImageWithIdentifier:(id)identifier orIndex:(unint64_t)index
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v7 = MEMORY[0x1E695DEF0];
    v8 = [(PLThumbFileManagerCore *)self thumbnailPathForThumbIdentifier:identifierCopy];
    v9 = [v7 dataWithContentsOfFile:v8];

    if ([(__CFData *)v9 length])
    {
      v10 = +[PLJPEGThumbnailDecode decodeSessionOptions];
      CGImageFromImageData = PFFigCreateCGImageFromImageData();

      v12 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = NSStringFromSelector(a2);
        v14 = CGImageFromImageData;
        v15 = [(PLThumbFileManagerCore *)self thumbnailPathForThumbIdentifier:identifierCopy];
        *buf = 138412802;
        v21 = v13;
        v22 = 2048;
        v23 = v14;
        v24 = 2112;
        v25 = v15;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "PFFigCreateCGImageFromImageData %@ returned %ld for %@.", buf, 0x20u);
      }

      v16 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(PLThumbFileManagerCore *)self thumbnailPathForThumbIdentifier:identifierCopy];
        *buf = 138412290;
        v21 = v17;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Fall back to software decoding for %@", buf, 0xCu);
      }

      CGImageFromJPEGData = CreateCGImageFromJPEGData(v9);
    }

    else
    {
      CGImageFromJPEGData = 0;
    }
  }

  else
  {
    CGImageFromJPEGData = 0;
  }

  return CGImageFromJPEGData;
}

- (BOOL)_writeImage:(id)image forThumbIdentifier:(id)identifier
{
  v29[2] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    v16 = 0;
    goto LABEL_19;
  }

  v8 = [(PLThumbFileManagerCore *)self thumbnailPathForThumbIdentifier:identifierCopy];
  uniformTypeIdentifier = [imageCopy uniformTypeIdentifier];
  data = [imageCopy data];
  v11 = data;
  if (!data || !uniformTypeIdentifier)
  {

    goto LABEL_9;
  }

  v12 = [MEMORY[0x1E6982C40] typeWithIdentifier:uniformTypeIdentifier];
  v13 = [v12 conformsToType:*MEMORY[0x1E6982E58]];

  if (!v13 || ([imageCopy data], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_9:
    if (([imageCopy hasAuxiliaryImages] & 1) != 0 || !objc_msgSend(imageCopy, "ioSurface") || (v17 = *MEMORY[0x1E6991978], v29[0] = &unk_1F0FBE038, v18 = *MEMORY[0x1E6991970], v28[0] = v17, v28[1] = v18, v26 = *MEMORY[0x1E6991B90], v27 = &unk_1F0FC08A0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v27, &v26, 1), v19 = objc_claimAutoreleasedReturnValue(), v29[1] = v19, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v29, v28, 2), v20 = objc_claimAutoreleasedReturnValue(), v19, objc_msgSend(imageCopy, "ioSurface"), PFFigJPEGDataFromImage(), v15 = 0, v20, !v15))
    {
      if ([imageCopy CGImage])
      {
        cGImage = [imageCopy CGImage];
        auxiliaryImageRecords = [imageCopy auxiliaryImageRecords];
        v15 = PLJPEGDataFromImage(cGImage, 1, auxiliaryImageRecords, 0.899999976);
      }

      else
      {
        v15 = 0;
      }
    }

    goto LABEL_15;
  }

  v15 = v14;
LABEL_15:
  if ([v15 length])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    stringByDeletingLastPathComponent = [v8 stringByDeletingLastPathComponent];
    [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

    v16 = [v15 writeToFile:v8 options:1073741825 error:0];
  }

  else
  {
    v16 = 0;
  }

LABEL_19:
  return v16;
}

- (BOOL)setImageForEntry:(id)entry withIdentifier:(id)identifier orIndex:(unint64_t)index photoUUID:(id)d options:(id)options
{
  v48 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  identifierCopy = identifier;
  dCopy = d;
  optionsCopy = options;
  if (setImageForEntry_withIdentifier_orIndex_photoUUID_options__s_onceToken != -1)
  {
    dispatch_once(&setImageForEntry_withIdentifier_orIndex_photoUUID_options__s_onceToken, &__block_literal_global_94044);
  }

  isReadOnly = [(PLThumbFileManagerCore *)self isReadOnly];
  LOBYTE(v16) = 0;
  if (entryCopy && !isReadOnly)
  {
    [entryCopy pixelSize];
    [entryCopy pixelSize];
    v17 = PLSizeMake();
    v18 = MEMORY[0x1E69BF308];
    format = [(PLThumbFileManagerCore *)self format];
    v20 = [v18 maxMasterSizeFromSourceImageSize:v17 format:format];

    if (v17 <= v20 && SHIDWORD(v17) <= SHIDWORD(v20))
    {
      v24 = entryCopy;
    }

    else
    {
      v22 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        *&buf[4] = dCopy;
        v44 = 2048;
        v45 = v17;
        v46 = 2048;
        v47 = v17 >> 32;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEBUG, "Attempting to set a file backed thumbnail for asset (%@) with larger allowed size (%lu, %lu), attempting downscale", buf, 0x20u);
      }

      if (![entryCopy ioSurface] || (*buf = 0, !PLCreateDownscaledIOSurfaceFromIOSurface(objc_msgSend(entryCopy, "ioSurface"), v20, buf)) || (v23 = [PLImageContainer alloc], v24 = -[PLImageContainer initWithIOSurface:](v23, "initWithIOSurface:", *buf), CFRelease(*buf), !v24))
      {
        data = [entryCopy data];

        if (data)
        {
          v40 = @"kPLCreateThumbnailFromImageAlways";
          v41 = @"kPLOptimalSourcePixelSizeKey";
          v42[0] = MEMORY[0x1E695E118];
          v26 = DCIM_NSValueFromCGSize();
          v42[1] = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v40 count:2];

          data2 = [entryCopy data];
          uniformTypeIdentifier = [entryCopy uniformTypeIdentifier];
          v30 = PLCreateImageFromDataWithFormat(data2, 0, 0, uniformTypeIdentifier, 0, 0, v27);

          v24 = [[PLImageContainer alloc] initWithCGImage:DCIM_CGImageRefFromPLImage()];
        }

        else if ([entryCopy CGImage])
        {
          v37 = CGBitmapContextCreate(0, v20, v20 >> 32, 8uLL, 4 * v20, setImageForEntry_withIdentifier_orIndex_photoUUID_options__s_P3ColorSpace, 2u);
          cGImage = [entryCopy CGImage];
          v49.origin.x = 0.0;
          v49.origin.y = 0.0;
          v49.size.width = v20;
          v49.size.height = SHIDWORD(v20);
          CGContextDrawImage(v37, v49, cGImage);
          Image = CGBitmapContextCreateImage(v37);
          CGContextRelease(v37);
          v24 = [[PLImageContainer alloc] initWithCGImage:Image];
          CGImageRelease(Image);
        }

        else
        {
          v24 = 0;
        }
      }
    }

    v16 = [(PLThumbFileManager *)self _writeImage:v24 forThumbIdentifier:identifierCopy];
    v31 = PLThumbnailsGetLog();
    v32 = v31;
    if (v16)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *&buf[4] = dCopy;
        v44 = 2112;
        v45 = identifierCopy;
        v33 = "Saved file backed thumbnail for asset (%@) thumb identifier (%@)";
        v34 = v32;
        v35 = OS_LOG_TYPE_DEBUG;
LABEL_22:
        _os_log_impl(&dword_19BF1F000, v34, v35, v33, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = dCopy;
      v44 = 2112;
      v45 = identifierCopy;
      v33 = "Failed to write file backed thumbnail for asset (%@) thumb identifier (%@)";
      v34 = v32;
      v35 = OS_LOG_TYPE_ERROR;
      goto LABEL_22;
    }
  }

  return v16;
}

CGColorSpaceRef __80__PLThumbFileManager_setImageForEntry_withIdentifier_orIndex_photoUUID_options___block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  setImageForEntry_withIdentifier_orIndex_photoUUID_options__s_P3ColorSpace = result;
  return result;
}

@end