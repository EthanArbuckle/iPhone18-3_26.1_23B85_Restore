@interface DCIMImageWriter
+ (BOOL)isLivePhotoFilteredVideoPath:(id)path;
+ (id)defaultFileExtensionForAssetType:(signed __int16)type;
+ (id)filteredVideoPathForRecordedLivePhotoVideoPath:(id)path;
+ (id)incomingDirectoryPath;
+ (id)incomingDirectoryPathForPhotoStream;
+ (id)preferredFileExtensionForType:(id)type;
+ (id)recordedVideoPathForFilteredLivePhotoVideoPath:(id)path;
+ (id)sharedDCIMWriter;
+ (id)uniqueIncomingPathForAssetWithUUID:(id)d andExtension:(id)extension isPhotoStream:(BOOL)stream;
+ (void)writeableDataForImage:(id)image previewImage:(id)previewImage imageData:(id)data imageUTIType:(id)type imageSource:(CGImageSource *)source primaryImageProperties:(id)properties imageOrientation:(int64_t)orientation thumbnailDataOut:(id *)self0 imageUTITypeOut:(id *)self1 primaryImagePropertiesOut:(id *)self2 isJPEGOut:(BOOL *)self3 imageDataOut:(id *)self4;
- (BOOL)_writeJPEGToURL:(id)l withData:(id)data thumbnail:(id)thumbnail properties:(id)properties duringBurst:(BOOL)burst;
- (BOOL)saveImageJobToDisk:(id)disk;
- (id)_cameraAssetExtensionForType:(signed __int16)type;
@end

@implementation DCIMImageWriter

- (BOOL)_writeJPEGToURL:(id)l withData:(id)data thumbnail:(id)thumbnail properties:(id)properties duringBurst:(BOOL)burst
{
  burstCopy = burst;
  dataCopy = data;
  thumbnailCopy = thumbnail;
  propertiesCopy = properties;
  v14 = CFWriteStreamCreateWithFile(*MEMORY[0x1E695E480], l);
  if (v14)
  {
    v15 = v14;
    if (CFWriteStreamOpen(v14))
    {
      v16 = CFWriteStreamCopyProperty(v15, @"_kCFStreamPropertyFileNativeHandle");
      if (v16)
      {
        v17 = v16;
        *buffer = 0;
        v21.location = 0;
        v21.length = 4;
        CFDataGetBytes(v16, v21, buffer);
        fcntl(*buffer, 48, 1);
        fcntl(*buffer, 62, 1);
        if (burstCopy)
        {
          fcntl(*buffer, 82, 1);
        }

        CFRelease(v17);
      }

      v18 = CGImageWriteEXIFJPEGWithMetadata();
      CFWriteStreamClose(v15);
    }

    else
    {
      v18 = 0;
    }

    CFRelease(v15);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_cameraAssetExtensionForType:(signed __int16)type
{
  if (type > 3)
  {
    return 0;
  }

  else
  {
    return off_1E792F768[type];
  }
}

- (BOOL)saveImageJobToDisk:(id)disk
{
  v99 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v5 = [diskCopy objectForKey:@"AssetPathFromType"];

  if (v5)
  {
    v6 = [diskCopy objectForKey:@"AssetPathFromType"];
    intValue = [v6 intValue];

    pathExtension = [(DCIMImageWriter *)self _cameraAssetExtensionForType:intValue];
  }

  else
  {
    v9 = [diskCopy objectForKey:@"PhotoDestinationPath"];
    v10 = v9;
    if (v9)
    {
      pathExtension = [v9 pathExtension];
    }

    else
    {
      pathExtension = 0;
    }
  }

  v11 = [diskCopy objectForKey:@"DestinationAssetUUID"];
  v12 = [DCIMImageWriter uniqueIncomingPathForAssetWithUUID:v11 andExtension:pathExtension isPhotoStream:0];

  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:0];
  path = [v13 path];

  if (!path)
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v98 = incomingDirectoryPath_homeDirectory;
      _os_log_impl(&dword_1AA9BD000, v15, OS_LOG_TYPE_ERROR, "saveImageJobToDisk incomingDirectoryPath_homeDirectory %@", buf, 0xCu);
    }

    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v98 = incomingDirectoryPath;
      _os_log_impl(&dword_1AA9BD000, v16, OS_LOG_TYPE_ERROR, "saveImageJobToDisk incomingDirectoryPath %@", buf, 0xCu);
    }

    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [diskCopy objectForKey:@"DestinationAssetUUID"];
      *buf = 138412290;
      v98 = v18;
      _os_log_impl(&dword_1AA9BD000, v17, OS_LOG_TYPE_ERROR, "saveImageJobToDisk [job objectForKey:kPLImageWriterDestinationAssetUUID] %@", buf, 0xCu);
    }

    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v98 = pathExtension;
      _os_log_impl(&dword_1AA9BD000, v19, OS_LOG_TYPE_ERROR, "saveImageJobToDisk extension %@", buf, 0xCu);
    }

    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v98 = v12;
      _os_log_impl(&dword_1AA9BD000, v20, OS_LOG_TYPE_ERROR, "saveImageJobToDisk photoFilePath %@", buf, 0xCu);
    }

    v21 = PLBackendGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v98 = v13;
      _os_log_impl(&dword_1AA9BD000, v21, OS_LOG_TYPE_ERROR, "saveImageJobToDisk photoFileURL %@", buf, 0xCu);
    }
  }

  v22 = +[PLValidatedSavedAssetType maskForPhotoBoothAsset];
  v23 = [diskCopy objectForKey:@"kPLImageWriterSavedAssetTypeKey"];
  v75 = PLValidatedSavedAssetTypeApplies(v22, [v23 integerValue]);

  v24 = [diskCopy objectForKey:@"EXIFProperties"];
  v78 = *MEMORY[0x1E696DE30];
  v82 = [v24 objectForKeyedSubscript:?];
  v77 = *MEMORY[0x1E69867B0];
  v85 = [v82 objectForKey:?];
  v25 = [diskCopy objectForKey:@"ImageData"];
  v26 = [diskCopy objectForKey:@"ImageOrientation"];
  if (!v26)
  {
    v27 = [v24 objectForKey:*MEMORY[0x1E696DE78]];

    if (v27)
    {
      v26 = [MEMORY[0x1E696AD98] numberWithInteger:PLImageOrientationFromImageProperties(v24)];
    }

    else
    {
      v26 = 0;
    }
  }

  v86 = pathExtension;
  v28 = [diskCopy objectForKey:@"PreviewImageRef"];
  v29 = 0;
  if (v28 && v26)
  {
    v29 = [NSClassFromString(@"UIImage") imageWithCGImage:v28 scale:0 orientation:1.0];
  }

  v89 = 0;
  v87 = v26;
  if (v25 && v26)
  {
    v30 = v29;
    selfCopy = self;
    intValue2 = [v26 intValue];
    v33 = CGImageSourceCreateWithData(v25, 0);
    if (v33)
    {
      v34 = v33;
      v35 = v25;
      if (CGImageSourceGetCount(v33))
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v34, 0, 0);
      }

      else
      {
        ImageAtIndex = 0;
      }

      CFRelease(v34);
    }

    else
    {
      v35 = v25;
      ImageAtIndex = 0;
    }

    v89 = [NSClassFromString(@"UIImage") imageWithCGImage:ImageAtIndex scale:intValue2 orientation:1.0];
    CGImageRelease(ImageAtIndex);
    v25 = v35;
    self = selfCopy;
    v29 = v30;
  }

  v90 = v24;
  buf[0] = 0;
  v37 = [diskCopy objectForKeyedSubscript:@"Type"];
  v38 = v37;
  v83 = v12;
  if (v37)
  {
    v95 = *MEMORY[0x1E696E118];
    v96 = v37;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
  }

  else
  {
    v39 = 0;
  }

  v79 = v39;
  v40 = CGImageSourceCreateWithData(v25, v39);
  v93 = 0;
  v94 = 0;
  v91 = 0;
  v92 = 0;
  v81 = v25;
  +[DCIMImageWriter writeableDataForImage:previewImage:imageData:imageUTIType:imageSource:primaryImageProperties:imageOrientation:thumbnailDataOut:imageUTITypeOut:primaryImagePropertiesOut:isJPEGOut:imageDataOut:](DCIMImageWriter, "writeableDataForImage:previewImage:imageData:imageUTIType:imageSource:primaryImageProperties:imageOrientation:thumbnailDataOut:imageUTITypeOut:primaryImagePropertiesOut:isJPEGOut:imageDataOut:", v89, v29, v25, v38, v40, v24, [v87 intValue], &v94, &v93, &v92, buf, &v91);
  v84 = v94;
  v41 = v93;
  dictionary = v92;
  v88 = v91;
  if (v40)
  {
    CFRelease(v40);
  }

  v80 = v29;
  if ([v88 length] && v41)
  {
    if (buf[0] == 1)
    {
      v43 = v13;
      if (v75)
      {
        selfCopy2 = self;
        v44 = dictionary;
        v45 = objc_autoreleasePoolPush();
        dictionary = [v44 mutableCopy];
        if (!dictionary)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
        }

        v46 = [dictionary objectForKey:@"{IPTC}"];
        dictionary2 = [v46 mutableCopy];

        if (!dictionary2)
        {
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          [dictionary setObject:dictionary2 forKey:@"{IPTC}"];
        }

        v48 = [dictionary2 objectForKey:@"Keywords"];
        array = [v48 mutableCopy];

        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
          [dictionary2 setObject:array forKey:@"Keywords"];
        }

        v43 = v13;
        if (([array containsObject:@"Photo Booth"] & 1) == 0)
        {
          [array addObject:@"Photo Booth"];
        }

        objc_autoreleasePoolPop(v45);
        v24 = v90;
        selfCopy3 = selfCopy2;
      }

      else
      {
        selfCopy3 = self;
      }

      [(DCIMImageWriter *)selfCopy3 _writeJPEGToURL:v43 withData:v88 thumbnail:v84 properties:dictionary duringBurst:v85 != 0];
    }

    else
    {
      v57 = [DCIMImageWriter preferredFileExtensionForType:v41];

      v43 = v13;
      pathExtension2 = [v13 pathExtension];
      v59 = [pathExtension2 isEqualToString:v57];

      if ((v59 & 1) == 0)
      {
        uRLByDeletingPathExtension = [v13 URLByDeletingPathExtension];
        v61 = [uRLByDeletingPathExtension URLByAppendingPathExtension:v57];

        v43 = v61;
      }

      [v88 writeToURL:v43 atomically:0];
      v86 = v57;
    }

    v51 = [PLFileSystemPersistence filesystemPersistenceBatchItemForFileAtURL:v43];
    if (v51)
    {
      v62 = [diskCopy objectForKey:@"AssetWriterID"];

      if (v62)
      {
        v63 = [diskCopy objectForKey:@"AssetWriterID"];
        [v51 setString:v63 forKey:@"com.apple.assetsd.creatorBundleID"];
      }

      v64 = [diskCopy objectForKey:@"AssetWriterDisplayName"];

      if (v64)
      {
        v65 = [diskCopy objectForKey:@"AssetWriterDisplayName"];
        [v51 setString:v65 forKey:@"com.apple.assetsd.importedByDisplayName"];
      }

      v66 = [diskCopy objectForKey:@"OriginalAssetUUID"];

      if (v66)
      {
        v67 = [diskCopy objectForKey:@"OriginalAssetUUID"];
        [v51 setUUIDString:v67 forKey:@"com.apple.assetsd.originalAssetUUID"];
      }

      v68 = v43;
      v69 = [v90 objectForKeyedSubscript:v78];
      v70 = [v69 objectForKey:v77];
      if (v70)
      {
        [v51 setUUIDString:v70 forKey:@"com.apple.assetsd.avalanche.UUID"];
      }

      v71 = [diskCopy objectForKey:@"kPLImageWriterCameraAdjustmentData"];
      if (v71)
      {
        [v51 setData:v71 forKey:@"com.apple.assetsd.inProgress.cameraAdjustmentsData"];
      }

      [v51 persist];

      v43 = v68;
      v24 = v90;
    }

    v55 = [diskCopy objectForKey:@"Date"];
    if (v55)
    {
      [v43 setResourceValue:v55 forKey:*MEMORY[0x1E695DAA8] error:0];
    }

    v72 = [diskCopy objectForKey:@"callStack"];

    if (v72)
    {
      NSLog(@"##### SAVE to %@, uti %@, extension %@", v43, v41, v86);
    }

    path2 = [v43 path];
    [diskCopy setObject:path2 forKey:@"PhotoSourcePath"];

    [diskCopy setObject:v41 forKey:@"Type"];
    if (dictionary)
    {
      [diskCopy setObject:dictionary forKey:@"EXIFProperties"];
    }
  }

  else
  {
    v51 = PLServicesLocalizedFrameworkString(@"ENCODING_FAILED");
    v52 = MEMORY[0x1E695DF20];
    v53 = diskCopy;
    v54 = [v52 alloc];
    v55 = [v54 initWithObjectsAndKeys:{v51, *MEMORY[0x1E696A578], 0}];
    v56 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos" code:12 userInfo:v55];
    [v53 setObject:v56 forKey:@"DCIMWriter Error"];

    v43 = v13;
  }

  return 1;
}

+ (id)defaultFileExtensionForAssetType:(signed __int16)type
{
  if (type > 2)
  {
    return 0;
  }

  else
  {
    return off_1E792F750[type];
  }
}

+ (id)preferredFileExtensionForType:(id)type
{
  v3 = [MEMORY[0x1E69C08F0] typeWithIdentifier:type];
  if ([v3 isEqual:*MEMORY[0x1E6983008]])
  {
    uppercaseString = @"TIF";
  }

  else if ([v3 isEqual:*MEMORY[0x1E6982F28]])
  {
    uppercaseString = @"PNG";
  }

  else if ([v3 isEqual:*MEMORY[0x1E6982DE8]])
  {
    uppercaseString = @"GIF";
  }

  else if ([v3 isEqual:*MEMORY[0x1E6982E58]])
  {
    uppercaseString = @"JPG";
  }

  else
  {
    preferredFilenameExtension = [v3 preferredFilenameExtension];
    v6 = preferredFilenameExtension;
    if (preferredFilenameExtension)
    {
      uppercaseString = [preferredFilenameExtension uppercaseString];
    }

    else
    {
      uppercaseString = @"JPG";
    }
  }

  return uppercaseString;
}

+ (BOOL)isLivePhotoFilteredVideoPath:(id)path
{
  stringByDeletingPathExtension = [path stringByDeletingPathExtension];
  pathExtension = [stringByDeletingPathExtension pathExtension];

  LOBYTE(stringByDeletingPathExtension) = [pathExtension isEqualToString:@"FILTERED"];
  return stringByDeletingPathExtension;
}

+ (id)recordedVideoPathForFilteredLivePhotoVideoPath:(id)path
{
  pathCopy = path;
  if ([self isLivePhotoFilteredVideoPath:pathCopy])
  {
    pathExtension = [pathCopy pathExtension];
    stringByDeletingPathExtension = [pathCopy stringByDeletingPathExtension];
    v6StringByDeletingPathExtension = [stringByDeletingPathExtension stringByDeletingPathExtension];

    v8 = [v6StringByDeletingPathExtension stringByAppendingPathExtension:pathExtension];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)filteredVideoPathForRecordedLivePhotoVideoPath:(id)path
{
  pathCopy = path;
  stringByDeletingPathExtension = [pathCopy stringByDeletingPathExtension];
  pathExtension = [pathCopy pathExtension];

  v6 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"FILTERED"];
  v7 = [v6 stringByAppendingPathExtension:pathExtension];

  return v7;
}

+ (id)uniqueIncomingPathForAssetWithUUID:(id)d andExtension:(id)extension isPhotoStream:(BOOL)stream
{
  dCopy = d;
  extensionCopy = extension;
  if (![dCopy length])
  {
    v9 = +[PLUUIDString string];

    dCopy = v9;
  }

  if (stream)
  {
    +[DCIMImageWriter incomingDirectoryPathForPhotoStream];
  }

  else
  {
    +[DCIMImageWriter incomingDirectoryPath];
  }
  v10 = ;
  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.f%@%@", CFAbsoluteTimeGetCurrent() * 100.0, @"__", dCopy];
  v12 = [v10 stringByAppendingPathComponent:dCopy];

  if (extensionCopy)
  {
    v13 = [v12 stringByAppendingPathExtension:extensionCopy];

    v12 = v13;
  }

  return v12;
}

+ (id)incomingDirectoryPathForPhotoStream
{
  pl_dispatch_once(&incomingDirectoryPathForPhotoStream_onceToken, &__block_literal_global_31);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager createDirectoryAtPath:incomingDirectoryPathForPhotoStream_incomingDirectory withIntermediateDirectories:1 attributes:0 error:0];

  v3 = incomingDirectoryPathForPhotoStream_incomingDirectory;

  return v3;
}

void __54__DCIMImageWriter_incomingDirectoryPathForPhotoStream__block_invoke()
{
  v3 = NSHomeDirectory();
  v0 = [v3 stringByAppendingPathComponent:@"Media/PhotoStreamsData/.MISC/Incoming"];
  v1 = [v0 copy];
  v2 = incomingDirectoryPathForPhotoStream_incomingDirectory;
  incomingDirectoryPathForPhotoStream_incomingDirectory = v1;
}

+ (id)incomingDirectoryPath
{
  pl_dispatch_once(&incomingDirectoryPath_onceToken, &__block_literal_global_25);
  v2 = incomingDirectoryPath;

  return v2;
}

void __40__DCIMImageWriter_incomingDirectoryPath__block_invoke()
{
  v0 = NSHomeDirectory();
  v1 = [v0 copy];
  v2 = incomingDirectoryPath_homeDirectory;
  incomingDirectoryPath_homeDirectory = v1;

  v3 = [incomingDirectoryPath_homeDirectory stringByAppendingPathComponent:@"Media/DCIM/.MISC/Incoming"];
  v4 = [v3 copy];
  v5 = incomingDirectoryPath;
  incomingDirectoryPath = v4;

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 fileExistsAtPath:incomingDirectoryPath];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    [v8 createDirectoryAtPath:incomingDirectoryPath withIntermediateDirectories:1 attributes:0 error:0];
  }
}

+ (void)writeableDataForImage:(id)image previewImage:(id)previewImage imageData:(id)data imageUTIType:(id)type imageSource:(CGImageSource *)source primaryImageProperties:(id)properties imageOrientation:(int64_t)orientation thumbnailDataOut:(id *)self0 imageUTITypeOut:(id *)self1 primaryImagePropertiesOut:(id *)self2 isJPEGOut:(BOOL *)self3 imageDataOut:(id *)self4
{
  imageCopy = image;
  previewImageCopy = previewImage;
  dataCopy = data;
  typeCopy = type;
  propertiesCopy = properties;
  if (previewImageCopy)
  {
    v24 = previewImageCopy;
  }

  else
  {
    v24 = imageCopy;
  }

  ImageAtIndex = [v24 CGImage];
  *valuePtr = 0;
  if (imageCopy)
  {
    v26 = 1;
  }

  else
  {
    v26 = dataCopy == 0;
  }

  v27 = !v26;
  v92 = imageCopy;
  if (v26)
  {
    if (!imageCopy)
    {
      v28 = 1;
      goto LABEL_22;
    }

    imageOrientation = [imageCopy imageOrientation];
    if ((imageOrientation - 1) > 2)
    {
      v28 = 3;
      if (typeCopy)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v28 = dword_1AAA8F234[imageOrientation - 1];
      if (typeCopy)
      {
        goto LABEL_22;
      }
    }

    v29 = CGImageGetUTType([imageCopy CGImage]);
    goto LABEL_21;
  }

  v28 = 1;
  if (!typeCopy && source)
  {
    v29 = CGImageSourceGetType(source);
LABEL_21:
    typeCopy = v29;
  }

LABEL_22:
  v91 = typeCopy;
  v31 = [MEMORY[0x1E69C08F0] typeWithIdentifier:typeCopy];
  v32 = *MEMORY[0x1E6982E58];
  if (!v31)
  {
    v31 = v32;
  }

  v90 = [v31 isEqual:v32];
  v93 = 0;
  if (ImageAtIndex)
  {
    v33 = 0;
  }

  else
  {
    v33 = v27;
  }

  if (!source || !v33)
  {
    dataOutCopy2 = dataOut;
    goto LABEL_62;
  }

  v34 = objc_alloc(MEMORY[0x1E695DF20]);
  v35 = [v34 initWithObjectsAndKeys:{*MEMORY[0x1E695E4D0], *MEMORY[0x1E696DFD8], 0}];
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(source);
  v36 = CGImageSourceCopyPropertiesAtIndex(source, PrimaryImageIndex, v35);
  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = v37;
  if (v36)
  {
    v88 = previewImageCopy;
    v89 = v37;
    v86 = v28;
    v87 = v31;
    Value = CFDictionaryGetValue(v36, *MEMORY[0x1E696DED8]);
    v40 = CFDictionaryGetValue(v36, *MEMORY[0x1E696DEC8]);
    if (!propertiesCopy)
    {
      propertiesCopy = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v36];
    }

    v85 = v35;
    v41 = propertiesCopy;
    v42 = [propertiesCopy objectForKey:*MEMORY[0x1E696D9B0]];
    v43 = [v42 objectForKey:*MEMORY[0x1E696E060]];
    intValue = [v43 intValue];

    v45 = [v42 objectForKey:*MEMORY[0x1E696E068]];
    intValue2 = [v45 intValue];

    if (Value && v40)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr[1]);
      CFNumberGetValue(v40, kCFNumberIntType, valuePtr);
    }

    pl_dispatch_once(&PLPhysicalDeviceIsIPad___onceToken, &__block_literal_global);
    if (PLPhysicalDeviceIsIPad___isIPad == 1)
    {
      v46 = +[PLAssetFormatsCore wildcatStackFormat];
    }

    else
    {
      v46 = 3039;
    }

    previewImageCopy = v88;
    v49 = valuePtr[0];
    v48 = valuePtr[1];
    [PLAssetFormatsCore sizeForFormat:v46];
    if (v49 <= v48)
    {
      v52 = v48;
    }

    else
    {
      v52 = v49;
    }

    if (v50 < v51)
    {
      v50 = v51;
    }

    v53 = floor(log2((v52 / v50)));
    v54 = exp2f(v53);
    CFRelease(v36);

    if (v54 >= 2)
    {
      if (v54 >= 32)
      {
        v55 = 32;
      }

      else
      {
        v55 = v54;
      }

      v56 = [MEMORY[0x1E696AD98] numberWithInt:v55];
      [(__CFDictionary *)v89 setObject:v56 forKey:*MEMORY[0x1E696E0F8]];
    }

    propertiesCopy = v41;
    v28 = v86;
    v38 = v89;
    if (dataOut)
    {
      v31 = v87;
      v35 = v85;
    }

    else
    {
      v31 = v87;
      v35 = v85;
      if (intValue >= 1 && intValue2 >= 1)
      {
        pl_dispatch_once(&PLPhysicalDeviceIsIPad___onceToken, &__block_literal_global);
        if ((PLPhysicalDeviceIsIPad___isIPad & 1) == 0)
        {
          v57 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:objc_msgSend(dataCopy length:"bytes") + intValue freeWhenDone:{intValue2, 0}];
          v58 = CGImageSourceCreateWithData(v57, 0);
          if (v58)
          {
            v59 = v58;
            ImageAtIndex = CGImageSourceCreateImageAtIndex(v58, 0, 0);
            CFRelease(v59);
            if (ImageAtIndex)
            {
              ImageByRemovingBlackBarsFromPreviewImage = createImageByRemovingBlackBarsFromPreviewImage(ImageAtIndex, valuePtr[1], valuePtr[0]);
              if (ImageByRemovingBlackBarsFromPreviewImage)
              {
                v61 = ImageByRemovingBlackBarsFromPreviewImage;
                CGImageRelease(ImageAtIndex);
                ImageAtIndex = v61;
              }

              previewImageCopy = v88;
              dataOutCopy2 = 0;

              v38 = v89;
              goto LABEL_61;
            }
          }

          previewImageCopy = v88;
          v38 = v89;
        }
      }
    }
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(source, PrimaryImageIndex, v38);
  dataOutCopy2 = dataOut;
LABEL_61:
  v93 = ImageAtIndex != 0;

LABEL_62:
  if (dataOutCopy2)
  {
    if (dataCopy)
    {
      data = dataCopy;
    }

    else
    {
      v63 = propertiesCopy;
      v64 = previewImageCopy;
      data = [MEMORY[0x1E695DF88] data];
      identifier = [v31 identifier];
      v66 = CGImageDestinationCreateWithData(data, identifier, 1uLL, 0);

      if (v66)
      {
        CGImageDestinationAddImage(v66, ImageAtIndex, 0);
        if (!CGImageDestinationFinalize(v66))
        {

          data = 0;
        }

        propertiesCopy = v63;
        CFRelease(v66);
        previewImageCopy = v64;
      }

      else
      {
        previewImageCopy = v64;
        propertiesCopy = v63;
      }
    }

    v67 = data;
    *dataOutCopy2 = data;
  }

  if (!propertiesCopy)
  {
    v68 = objc_alloc(MEMORY[0x1E696AD98]);
    if (v28 - 2 > 2)
    {
      v69 = 6;
    }

    else
    {
      v69 = dword_1AAA8F268[v28 - 2];
    }

    v70 = [v68 initWithInt:v69];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    PLAddTIFFDPIPropertiesToDictionary(dictionary);
    v72 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v70, *MEMORY[0x1E696DE78], dictionary, *MEMORY[0x1E696DF28], 0}];

    propertiesCopy = v72;
  }

  if (out)
  {
    v73 = propertiesCopy;
    cGImage = ImageAtIndex;
    if (!v93)
    {
      if (previewImageCopy)
      {
        v75 = previewImageCopy;
      }

      else
      {
        v75 = v92;
      }

      cGImage = [v75 CGImage];
    }

    v76 = v31;
    v77 = dataCopy;
    v78 = previewImageCopy;
    if ((orientation - 1) > 6)
    {
      v79 = 0;
    }

    else
    {
      v79 = qword_1AAA8F358[orientation - 1];
    }

    v80 = [objc_alloc(NSClassFromString(@"UIImage")) initWithCGImage:cGImage scale:v79 orientation:1.0];
    v81 = PLCreateImageWithFormatFromImage(v80, 0, 3039, 0, 0);
    *out = DCIM_newJPEGRepresentationWithPLImage(v81, 0.899999976);

    previewImageCopy = v78;
    dataCopy = v77;
    propertiesCopy = v73;
    v31 = v76;
  }

  if (typeOut)
  {
    *typeOut = [v31 identifier];
  }

  if (propertiesOut)
  {
    v82 = propertiesCopy;
    *propertiesOut = propertiesCopy;
  }

  if (gOut)
  {
    *gOut = v90;
  }

  v83 = v93;
  if (!ImageAtIndex)
  {
    v83 = 0;
  }

  if (v83)
  {
    CFAutorelease(ImageAtIndex);
  }
}

+ (id)sharedDCIMWriter
{
  pl_dispatch_once(&sharedDCIMWriter_onceToken, &__block_literal_global_86);
  v2 = sharedDCIMWriter_sharedDCIMWriter;

  return v2;
}

uint64_t __35__DCIMImageWriter_sharedDCIMWriter__block_invoke()
{
  sharedDCIMWriter_sharedDCIMWriter = objc_alloc_init(DCIMImageWriter);

  return MEMORY[0x1EEE66BB8]();
}

@end