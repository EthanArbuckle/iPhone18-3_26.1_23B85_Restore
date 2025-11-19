@interface DCIMImageWriter
+ (BOOL)isLivePhotoFilteredVideoPath:(id)a3;
+ (id)defaultFileExtensionForAssetType:(signed __int16)a3;
+ (id)filteredVideoPathForRecordedLivePhotoVideoPath:(id)a3;
+ (id)incomingDirectoryPath;
+ (id)incomingDirectoryPathForPhotoStream;
+ (id)preferredFileExtensionForType:(id)a3;
+ (id)recordedVideoPathForFilteredLivePhotoVideoPath:(id)a3;
+ (id)sharedDCIMWriter;
+ (id)uniqueIncomingPathForAssetWithUUID:(id)a3 andExtension:(id)a4 isPhotoStream:(BOOL)a5;
+ (void)writeableDataForImage:(id)a3 previewImage:(id)a4 imageData:(id)a5 imageUTIType:(id)a6 imageSource:(CGImageSource *)a7 primaryImageProperties:(id)a8 imageOrientation:(int64_t)a9 thumbnailDataOut:(id *)a10 imageUTITypeOut:(id *)a11 primaryImagePropertiesOut:(id *)a12 isJPEGOut:(BOOL *)a13 imageDataOut:(id *)a14;
- (BOOL)_writeJPEGToURL:(id)a3 withData:(id)a4 thumbnail:(id)a5 properties:(id)a6 duringBurst:(BOOL)a7;
- (BOOL)saveImageJobToDisk:(id)a3;
- (id)_cameraAssetExtensionForType:(signed __int16)a3;
@end

@implementation DCIMImageWriter

- (BOOL)_writeJPEGToURL:(id)a3 withData:(id)a4 thumbnail:(id)a5 properties:(id)a6 duringBurst:(BOOL)a7
{
  v7 = a7;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = CFWriteStreamCreateWithFile(*MEMORY[0x1E695E480], a3);
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
        if (v7)
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

- (id)_cameraAssetExtensionForType:(signed __int16)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E792F768[a3];
  }
}

- (BOOL)saveImageJobToDisk:(id)a3
{
  v99 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"AssetPathFromType"];

  if (v5)
  {
    v6 = [v4 objectForKey:@"AssetPathFromType"];
    v7 = [v6 intValue];

    v8 = [(DCIMImageWriter *)self _cameraAssetExtensionForType:v7];
  }

  else
  {
    v9 = [v4 objectForKey:@"PhotoDestinationPath"];
    v10 = v9;
    if (v9)
    {
      v8 = [v9 pathExtension];
    }

    else
    {
      v8 = 0;
    }
  }

  v11 = [v4 objectForKey:@"DestinationAssetUUID"];
  v12 = [DCIMImageWriter uniqueIncomingPathForAssetWithUUID:v11 andExtension:v8 isPhotoStream:0];

  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:0];
  v14 = [v13 path];

  if (!v14)
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
      v18 = [v4 objectForKey:@"DestinationAssetUUID"];
      *buf = 138412290;
      v98 = v18;
      _os_log_impl(&dword_1AA9BD000, v17, OS_LOG_TYPE_ERROR, "saveImageJobToDisk [job objectForKey:kPLImageWriterDestinationAssetUUID] %@", buf, 0xCu);
    }

    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v98 = v8;
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
  v23 = [v4 objectForKey:@"kPLImageWriterSavedAssetTypeKey"];
  v75 = PLValidatedSavedAssetTypeApplies(v22, [v23 integerValue]);

  v24 = [v4 objectForKey:@"EXIFProperties"];
  v78 = *MEMORY[0x1E696DE30];
  v82 = [v24 objectForKeyedSubscript:?];
  v77 = *MEMORY[0x1E69867B0];
  v85 = [v82 objectForKey:?];
  v25 = [v4 objectForKey:@"ImageData"];
  v26 = [v4 objectForKey:@"ImageOrientation"];
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

  v86 = v8;
  v28 = [v4 objectForKey:@"PreviewImageRef"];
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
    v31 = self;
    v32 = [v26 intValue];
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

    v89 = [NSClassFromString(@"UIImage") imageWithCGImage:ImageAtIndex scale:v32 orientation:1.0];
    CGImageRelease(ImageAtIndex);
    v25 = v35;
    self = v31;
    v29 = v30;
  }

  v90 = v24;
  buf[0] = 0;
  v37 = [v4 objectForKeyedSubscript:@"Type"];
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
  v42 = v92;
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
        v76 = self;
        v44 = v42;
        v45 = objc_autoreleasePoolPush();
        v42 = [v44 mutableCopy];
        if (!v42)
        {
          v42 = [MEMORY[0x1E695DF90] dictionary];
        }

        v46 = [v42 objectForKey:@"{IPTC}"];
        v47 = [v46 mutableCopy];

        if (!v47)
        {
          v47 = [MEMORY[0x1E695DF90] dictionary];
          [v42 setObject:v47 forKey:@"{IPTC}"];
        }

        v48 = [v47 objectForKey:@"Keywords"];
        v49 = [v48 mutableCopy];

        if (!v49)
        {
          v49 = [MEMORY[0x1E695DF70] array];
          [v47 setObject:v49 forKey:@"Keywords"];
        }

        v43 = v13;
        if (([v49 containsObject:@"Photo Booth"] & 1) == 0)
        {
          [v49 addObject:@"Photo Booth"];
        }

        objc_autoreleasePoolPop(v45);
        v24 = v90;
        v50 = v76;
      }

      else
      {
        v50 = self;
      }

      [(DCIMImageWriter *)v50 _writeJPEGToURL:v43 withData:v88 thumbnail:v84 properties:v42 duringBurst:v85 != 0];
    }

    else
    {
      v57 = [DCIMImageWriter preferredFileExtensionForType:v41];

      v43 = v13;
      v58 = [v13 pathExtension];
      v59 = [v58 isEqualToString:v57];

      if ((v59 & 1) == 0)
      {
        v60 = [v13 URLByDeletingPathExtension];
        v61 = [v60 URLByAppendingPathExtension:v57];

        v43 = v61;
      }

      [v88 writeToURL:v43 atomically:0];
      v86 = v57;
    }

    v51 = [PLFileSystemPersistence filesystemPersistenceBatchItemForFileAtURL:v43];
    if (v51)
    {
      v62 = [v4 objectForKey:@"AssetWriterID"];

      if (v62)
      {
        v63 = [v4 objectForKey:@"AssetWriterID"];
        [v51 setString:v63 forKey:@"com.apple.assetsd.creatorBundleID"];
      }

      v64 = [v4 objectForKey:@"AssetWriterDisplayName"];

      if (v64)
      {
        v65 = [v4 objectForKey:@"AssetWriterDisplayName"];
        [v51 setString:v65 forKey:@"com.apple.assetsd.importedByDisplayName"];
      }

      v66 = [v4 objectForKey:@"OriginalAssetUUID"];

      if (v66)
      {
        v67 = [v4 objectForKey:@"OriginalAssetUUID"];
        [v51 setUUIDString:v67 forKey:@"com.apple.assetsd.originalAssetUUID"];
      }

      v68 = v43;
      v69 = [v90 objectForKeyedSubscript:v78];
      v70 = [v69 objectForKey:v77];
      if (v70)
      {
        [v51 setUUIDString:v70 forKey:@"com.apple.assetsd.avalanche.UUID"];
      }

      v71 = [v4 objectForKey:@"kPLImageWriterCameraAdjustmentData"];
      if (v71)
      {
        [v51 setData:v71 forKey:@"com.apple.assetsd.inProgress.cameraAdjustmentsData"];
      }

      [v51 persist];

      v43 = v68;
      v24 = v90;
    }

    v55 = [v4 objectForKey:@"Date"];
    if (v55)
    {
      [v43 setResourceValue:v55 forKey:*MEMORY[0x1E695DAA8] error:0];
    }

    v72 = [v4 objectForKey:@"callStack"];

    if (v72)
    {
      NSLog(@"##### SAVE to %@, uti %@, extension %@", v43, v41, v86);
    }

    v73 = [v43 path];
    [v4 setObject:v73 forKey:@"PhotoSourcePath"];

    [v4 setObject:v41 forKey:@"Type"];
    if (v42)
    {
      [v4 setObject:v42 forKey:@"EXIFProperties"];
    }
  }

  else
  {
    v51 = PLServicesLocalizedFrameworkString(@"ENCODING_FAILED");
    v52 = MEMORY[0x1E695DF20];
    v53 = v4;
    v54 = [v52 alloc];
    v55 = [v54 initWithObjectsAndKeys:{v51, *MEMORY[0x1E696A578], 0}];
    v56 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos" code:12 userInfo:v55];
    [v53 setObject:v56 forKey:@"DCIMWriter Error"];

    v43 = v13;
  }

  return 1;
}

+ (id)defaultFileExtensionForAssetType:(signed __int16)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E792F750[a3];
  }
}

+ (id)preferredFileExtensionForType:(id)a3
{
  v3 = [MEMORY[0x1E69C08F0] typeWithIdentifier:a3];
  if ([v3 isEqual:*MEMORY[0x1E6983008]])
  {
    v4 = @"TIF";
  }

  else if ([v3 isEqual:*MEMORY[0x1E6982F28]])
  {
    v4 = @"PNG";
  }

  else if ([v3 isEqual:*MEMORY[0x1E6982DE8]])
  {
    v4 = @"GIF";
  }

  else if ([v3 isEqual:*MEMORY[0x1E6982E58]])
  {
    v4 = @"JPG";
  }

  else
  {
    v5 = [v3 preferredFilenameExtension];
    v6 = v5;
    if (v5)
    {
      v4 = [v5 uppercaseString];
    }

    else
    {
      v4 = @"JPG";
    }
  }

  return v4;
}

+ (BOOL)isLivePhotoFilteredVideoPath:(id)a3
{
  v3 = [a3 stringByDeletingPathExtension];
  v4 = [v3 pathExtension];

  LOBYTE(v3) = [v4 isEqualToString:@"FILTERED"];
  return v3;
}

+ (id)recordedVideoPathForFilteredLivePhotoVideoPath:(id)a3
{
  v4 = a3;
  if ([a1 isLivePhotoFilteredVideoPath:v4])
  {
    v5 = [v4 pathExtension];
    v6 = [v4 stringByDeletingPathExtension];
    v7 = [v6 stringByDeletingPathExtension];

    v8 = [v7 stringByAppendingPathExtension:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)filteredVideoPathForRecordedLivePhotoVideoPath:(id)a3
{
  v3 = a3;
  v4 = [v3 stringByDeletingPathExtension];
  v5 = [v3 pathExtension];

  v6 = [v4 stringByAppendingPathExtension:@"FILTERED"];
  v7 = [v6 stringByAppendingPathExtension:v5];

  return v7;
}

+ (id)uniqueIncomingPathForAssetWithUUID:(id)a3 andExtension:(id)a4 isPhotoStream:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  if (![v7 length])
  {
    v9 = +[PLUUIDString string];

    v7 = v9;
  }

  if (a5)
  {
    +[DCIMImageWriter incomingDirectoryPathForPhotoStream];
  }

  else
  {
    +[DCIMImageWriter incomingDirectoryPath];
  }
  v10 = ;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.f%@%@", CFAbsoluteTimeGetCurrent() * 100.0, @"__", v7];
  v12 = [v10 stringByAppendingPathComponent:v11];

  if (v8)
  {
    v13 = [v12 stringByAppendingPathExtension:v8];

    v12 = v13;
  }

  return v12;
}

+ (id)incomingDirectoryPathForPhotoStream
{
  pl_dispatch_once(&incomingDirectoryPathForPhotoStream_onceToken, &__block_literal_global_31);
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 createDirectoryAtPath:incomingDirectoryPathForPhotoStream_incomingDirectory withIntermediateDirectories:1 attributes:0 error:0];

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

+ (void)writeableDataForImage:(id)a3 previewImage:(id)a4 imageData:(id)a5 imageUTIType:(id)a6 imageSource:(CGImageSource *)a7 primaryImageProperties:(id)a8 imageOrientation:(int64_t)a9 thumbnailDataOut:(id *)a10 imageUTITypeOut:(id *)a11 primaryImagePropertiesOut:(id *)a12 isJPEGOut:(BOOL *)a13 imageDataOut:(id *)a14
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a8;
  if (v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v19;
  }

  ImageAtIndex = [v24 CGImage];
  *valuePtr = 0;
  if (v19)
  {
    v26 = 1;
  }

  else
  {
    v26 = v21 == 0;
  }

  v27 = !v26;
  v92 = v19;
  if (v26)
  {
    if (!v19)
    {
      v28 = 1;
      goto LABEL_22;
    }

    v30 = [v19 imageOrientation];
    if ((v30 - 1) > 2)
    {
      v28 = 3;
      if (v22)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v28 = dword_1AAA8F234[v30 - 1];
      if (v22)
      {
        goto LABEL_22;
      }
    }

    v29 = CGImageGetUTType([v19 CGImage]);
    goto LABEL_21;
  }

  v28 = 1;
  if (!v22 && a7)
  {
    v29 = CGImageSourceGetType(a7);
LABEL_21:
    v22 = v29;
  }

LABEL_22:
  v91 = v22;
  v31 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v22];
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

  if (!a7 || !v33)
  {
    v47 = a14;
    goto LABEL_62;
  }

  v34 = objc_alloc(MEMORY[0x1E695DF20]);
  v35 = [v34 initWithObjectsAndKeys:{*MEMORY[0x1E695E4D0], *MEMORY[0x1E696DFD8], 0}];
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(a7);
  v36 = CGImageSourceCopyPropertiesAtIndex(a7, PrimaryImageIndex, v35);
  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = v37;
  if (v36)
  {
    v88 = v20;
    v89 = v37;
    v86 = v28;
    v87 = v31;
    Value = CFDictionaryGetValue(v36, *MEMORY[0x1E696DED8]);
    v40 = CFDictionaryGetValue(v36, *MEMORY[0x1E696DEC8]);
    if (!v23)
    {
      v23 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v36];
    }

    v85 = v35;
    v41 = v23;
    v42 = [v23 objectForKey:*MEMORY[0x1E696D9B0]];
    v43 = [v42 objectForKey:*MEMORY[0x1E696E060]];
    v44 = [v43 intValue];

    v45 = [v42 objectForKey:*MEMORY[0x1E696E068]];
    v84 = [v45 intValue];

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

    v20 = v88;
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

    v23 = v41;
    v28 = v86;
    v38 = v89;
    if (a14)
    {
      v31 = v87;
      v35 = v85;
    }

    else
    {
      v31 = v87;
      v35 = v85;
      if (v44 >= 1 && v84 >= 1)
      {
        pl_dispatch_once(&PLPhysicalDeviceIsIPad___onceToken, &__block_literal_global);
        if ((PLPhysicalDeviceIsIPad___isIPad & 1) == 0)
        {
          v57 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:objc_msgSend(v21 length:"bytes") + v44 freeWhenDone:{v84, 0}];
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

              v20 = v88;
              v47 = 0;

              v38 = v89;
              goto LABEL_61;
            }
          }

          v20 = v88;
          v38 = v89;
        }
      }
    }
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(a7, PrimaryImageIndex, v38);
  v47 = a14;
LABEL_61:
  v93 = ImageAtIndex != 0;

LABEL_62:
  if (v47)
  {
    if (v21)
    {
      v62 = v21;
    }

    else
    {
      v63 = v23;
      v64 = v20;
      v62 = [MEMORY[0x1E695DF88] data];
      v65 = [v31 identifier];
      v66 = CGImageDestinationCreateWithData(v62, v65, 1uLL, 0);

      if (v66)
      {
        CGImageDestinationAddImage(v66, ImageAtIndex, 0);
        if (!CGImageDestinationFinalize(v66))
        {

          v62 = 0;
        }

        v23 = v63;
        CFRelease(v66);
        v20 = v64;
      }

      else
      {
        v20 = v64;
        v23 = v63;
      }
    }

    v67 = v62;
    *v47 = v62;
  }

  if (!v23)
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
    v71 = [MEMORY[0x1E695DF90] dictionary];
    PLAddTIFFDPIPropertiesToDictionary(v71);
    v72 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v70, *MEMORY[0x1E696DE78], v71, *MEMORY[0x1E696DF28], 0}];

    v23 = v72;
  }

  if (a10)
  {
    v73 = v23;
    v74 = ImageAtIndex;
    if (!v93)
    {
      if (v20)
      {
        v75 = v20;
      }

      else
      {
        v75 = v92;
      }

      v74 = [v75 CGImage];
    }

    v76 = v31;
    v77 = v21;
    v78 = v20;
    if ((a9 - 1) > 6)
    {
      v79 = 0;
    }

    else
    {
      v79 = qword_1AAA8F358[a9 - 1];
    }

    v80 = [objc_alloc(NSClassFromString(@"UIImage")) initWithCGImage:v74 scale:v79 orientation:1.0];
    v81 = PLCreateImageWithFormatFromImage(v80, 0, 3039, 0, 0);
    *a10 = DCIM_newJPEGRepresentationWithPLImage(v81, 0.899999976);

    v20 = v78;
    v21 = v77;
    v23 = v73;
    v31 = v76;
  }

  if (a11)
  {
    *a11 = [v31 identifier];
  }

  if (a12)
  {
    v82 = v23;
    *a12 = v23;
  }

  if (a13)
  {
    *a13 = v90;
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