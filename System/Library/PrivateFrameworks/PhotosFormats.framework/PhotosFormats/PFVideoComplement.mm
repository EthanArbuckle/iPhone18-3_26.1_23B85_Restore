@interface PFVideoComplement
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_retimedPTSForOriginalPTS:(SEL)a3 inAsset:(unint64_t)a4 error:(id)a5;
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertTime:(SEL)a3 fromAsset:(id *)a4 toAsset:(id)a5;
+ (BOOL)_enumerateV3MetadataInAsset:(id)a3 withBlock:(id)a4 error:(id *)a5;
+ (unint64_t)_originalPTSForFrameAtTime:(id *)a3 inAsset:(id)a4 error:(id *)a5;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)imageDisplayTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)originalImageDisplayTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)originalVideoDuration;
- (BOOL)_getSourceFilePath:(id)a3 destinationFilePath:(id)a4 areOnSameVolume:(BOOL *)a5 volumeSupportsCloning:(BOOL *)a6;
- (BOOL)copyOrLinkPath:(id)a3 toPath:(id)a4 error:(id *)a5;
- (BOOL)writeToBundleAtURL:(id)a3 error:(id *)a4;
- (NSString)originalPairingIdentifier;
- (NSString)pairingIdentifier;
- (PFVideoComplement)init;
- (PFVideoComplement)initWithBundleAtURL:(id)a3;
- (PFVideoComplement)initWithPathToVideo:(id)a3 pathToImage:(id)a4;
- (PFVideoComplement)initWithPathToVideo:(id)a3 pathToImage:(id)a4 imageDisplayTime:(id *)a5 pairingIdentifier:(id)a6;
- (PFVideoComplement)initWithPropertyList:(id)a3;
- (id)propertyListRepresentation;
- (int)numberOfFramesRecoveredWithError:(id *)a3;
- (void)_readMetadataIfNeeded;
@end

@implementation PFVideoComplement

- (BOOL)writeToBundleAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 1;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__9942;
  v51 = __Block_byref_object_dispose__9943;
  v52 = 0;
  v46 = 0;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __46__PFVideoComplement_writeToBundleAtURL_error___block_invoke;
  v45[3] = &unk_1E7B66278;
  v45[4] = &v53;
  v45[5] = &v47;
  v7 = MEMORY[0x1B8C64C40](v45);
  v8 = [(NSString *)self->_imagePath pathExtension];
  v9 = [PFUniformTypeUtilities typeWithFilenameExtension:v8];

  if (*(v54 + 24) == 1 && (!v9 || ([v9 conformsToType:*MEMORY[0x1E6982E30]] & 1) == 0))
  {
    (v7)[2](v7, @"UTType is not image at '%@'");
  }

  v46 = 1;
  if (*(v54 + 24) == 1 && ([v6 fileExistsAtPath:self->_imagePath isDirectory:&v46] & 1) == 0)
  {
    (v7)[2](v7, @"no file exists at '%@'");
  }

  if (*(v54 + 24) == 1 && v46 == 1)
  {
    (v7)[2](v7, @"directory exists at '%@'");
  }

  v10 = [(NSString *)self->_videoPath pathExtension];
  v40 = [PFUniformTypeUtilities typeWithFilenameExtension:v10];

  if (*(v54 + 24) == 1 && (!v40 || ([v40 conformsToType:*MEMORY[0x1E6982EE8]] & 1) == 0))
  {
    (v7)[2](v7, @"UTType is not movie at '%@'");
  }

  v46 = 1;
  if (*(v54 + 24) == 1 && ([v6 fileExistsAtPath:self->_videoPath isDirectory:&v46] & 1) == 0)
  {
    (v7)[2](v7, @"no file exists at '%@'");
  }

  if (*(v54 + 24) == 1)
  {
    if (v46 != 1 || ((v7)[2](v7, @"directory exists at '%@'"), (v54[3] & 1) != 0))
    {
      if (([v5 isFileURL] & 1) == 0)
      {
        (v7)[2](v7, @"destination is not a file url: '%@'");
      }
    }
  }

  if (*(v54 + 24) == 1)
  {
    v11 = [v5 pathExtension];
    v12 = [v11 isEqualToString:@"pvt"];

    if ((v12 & 1) == 0)
    {
      v37 = [v5 pathExtension];
      (v7)[2](v7, @"destination has extension '%@' but requires '%@'");
    }
  }

  v13 = [v5 path];
  if (*(v54 + 24) == 1 && [v6 fileExistsAtPath:v13])
  {
    (v7)[2](v7, @"destination already exists: '%@'");
  }

  v14 = v54;
  v38 = v5;
  if (*(v54 + 24) == 1)
  {
    v15 = (v48 + 5);
    obj = v48[5];
    v16 = [v6 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&obj];
    v17 = v9;
    objc_storeStrong(v15, obj);
    v14 = v54;
  }

  else
  {
    v17 = v9;
    v16 = 0;
  }

  *(v14 + 24) = v16;
  v18 = [v13 stringByAppendingPathComponent:@"metadata.plist"];
  v19 = v54;
  if (*(v54 + 24) == 1)
  {
    v20 = [(NSDictionary *)self->_metadata writeToFile:v18 atomically:1];
    v19 = v54;
  }

  else
  {
    v20 = 0;
  }

  *(v19 + 24) = v20;
  v21 = [(NSString *)self->_imagePath lastPathComponent];
  v22 = [v13 stringByAppendingPathComponent:v21];

  v23 = v54;
  if (*(v54 + 24) == 1)
  {
    imagePath = self->_imagePath;
    v25 = (v48 + 5);
    v43 = v48[5];
    v26 = [(PFVideoComplement *)self copyOrLinkPath:imagePath toPath:v22 error:&v43];
    objc_storeStrong(v25, v43);
    v23 = v54;
  }

  else
  {
    v26 = 0;
  }

  *(v23 + 24) = v26;
  v27 = [(NSString *)self->_videoPath lastPathComponent];
  v28 = [v13 stringByAppendingPathComponent:v27];

  if (*(v54 + 24) != 1)
  {
    *(v54 + 24) = 0;
    if (!v16)
    {
      goto LABEL_45;
    }

LABEL_43:
    [v6 removeItemAtPath:v13 error:0];
    if ((v54[3] & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  videoPath = self->_videoPath;
  v30 = (v48 + 5);
  v42 = v48[5];
  v31 = [(PFVideoComplement *)self copyOrLinkPath:videoPath toPath:v28 error:&v42];
  objc_storeStrong(v30, v42);
  *(v54 + 24) = v31;
  if (!v31 && (v16 & 1) != 0)
  {
    goto LABEL_43;
  }

  if (v31)
  {
LABEL_44:
    v32 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:1];
    v33 = *MEMORY[0x1E695DBA0];
    v34 = (v48 + 5);
    v41 = v48[5];
    [v32 setResourceValue:MEMORY[0x1E695E118] forKey:v33 error:&v41];
    objc_storeStrong(v34, v41);
  }

LABEL_45:
  if (a4)
  {
    *a4 = v48[5];
  }

  v35 = *(v54 + 24);

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);

  return v35;
}

void __46__PFVideoComplement_writeToBundleAtURL_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[1] = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v10 = MEMORY[0x1E696AEC0];
  v11 = a2;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = @"unknown reason";
  if (v12)
  {
    v13 = v12;
  }

  v14 = v13;

  v15 = MEMORY[0x1E696ABC0];
  v20 = *MEMORY[0x1E696A578];
  v21[0] = v14;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v17 = [v15 errorWithDomain:@"com.apple.PhotosFormats" code:-1 userInfo:v16];
  v18 = *(*(a1 + 40) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

- (BOOL)_getSourceFilePath:(id)a3 destinationFilePath:(id)a4 areOnSameVolume:(BOOL *)a5 volumeSupportsCloning:(BOOL *)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
  v34 = 0;
  v12 = *MEMORY[0x1E695DD70];
  v33 = 0;
  v13 = [v11 getResourceValue:&v34 forKey:v12 error:&v33];
  v14 = v34;
  v15 = v33;
  if (v13)
  {
    v28 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:0];
    [v28 URLByDeletingLastPathComponent];
    v31 = 0;
    v27 = v32 = 0;
    v16 = [v27 getResourceValue:&v32 forKey:v12 error:&v31];
    v17 = v32;
    v18 = v31;

    if ((v16 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = v10;
        v37 = 2112;
        v38 = v18;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to query volume ID for %@: %@", buf, 0x16u);
      }

      v23 = 0;
      v15 = v18;
      goto LABEL_17;
    }

    v26 = v17;
    v19 = [v14 isEqual:v17];
    v20 = v19;
    if (a6 && (*a6 = 0, v19))
    {
      v30 = 0;
      v21 = *MEMORY[0x1E695DE38];
      v29 = 0;
      v25 = [v11 getResourceValue:&v30 forKey:v21 error:&v29];
      v22 = v30;
      v15 = v29;

      if ((v25 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v36 = v9;
          v37 = 2112;
          v38 = v15;
          _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to query cloning status for %@: %@", buf, 0x16u);
        }

        v23 = 0;
        v17 = v26;
        goto LABEL_17;
      }

      *a6 = [v22 BOOLValue];
    }

    else
    {
      v15 = v18;
    }

    v17 = v26;
    if (a5)
    {
      *a5 = v20;
    }

    v23 = 1;
LABEL_17:

    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v36 = v9;
    v37 = 2112;
    v38 = v15;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to query volume ID for %@: %@", buf, 0x16u);
  }

  v23 = 0;
LABEL_18:

  return v23;
}

- (BOOL)copyOrLinkPath:(id)a3 toPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  v11 = [(PFVideoComplement *)self _getSourceFilePath:v8 destinationFilePath:v9 areOnSameVolume:&v20 + 1 volumeSupportsCloning:&v20];
  v12 = 0;
  if (v11 && HIBYTE(v20) == 1 && (v20 & 1) == 0 && (v19 = 0, v13 = [v10 linkItemAtPath:v8 toPath:v9 error:&v19], v12 = v19, (v13 & 1) != 0))
  {
    v14 = 1;
  }

  else
  {
    v15 = v12;
    v18 = v12;
    v14 = [v10 copyItemAtPath:v8 toPath:v9 error:&v18];
    v12 = v18;

    if (a5 && (v14 & 1) == 0)
    {
      v16 = v12;
      v14 = 0;
      *a5 = v12;
    }
  }

  return v14;
}

- (id)propertyListRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  imagePath = self->_imagePath;
  if (imagePath)
  {
    [v3 setObject:imagePath forKeyedSubscript:@"PFVideoComplementImagePathKey"];
  }

  videoPath = self->_videoPath;
  if (videoPath)
  {
    [v4 setObject:videoPath forKeyedSubscript:@"PFVideoComplementVideoPathKey"];
  }

  [v4 setObject:self->_metadata forKeyedSubscript:@"PFVideoComplementMetadataKey"];

  return v4;
}

- (PFVideoComplement)initWithBundleAtURL:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 pathExtension];
  v6 = [v5 isEqualToString:@"pvt"];

  if (v6)
  {
    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v7 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:5 errorHandler:0];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v25 = v4;
      v26 = self;
      v27 = 0;
      v31 = 0;
      v29 = 0;
      v12 = *v34;
      v13 = *MEMORY[0x1E6982E30];
      v30 = *MEMORY[0x1E6982EE8];
      v28 = *MEMORY[0x1E6982F68];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v16 = [v15 path];
          if (v16)
          {
            v17 = MEMORY[0x1E6982C40];
            v18 = [v15 pathExtension];
            v19 = [v17 typeWithFilenameExtension:v18];

            if (v19)
            {
              if ([v19 conformsToType:v13])
              {
                [v32 setObject:v16 forKeyedSubscript:@"PFVideoComplementImagePathKey"];
                v31 = 1;
              }

              else if ([v19 conformsToType:v30])
              {
                [v32 setObject:v16 forKeyedSubscript:@"PFVideoComplementVideoPathKey"];
                v29 = 1;
              }

              else if ([v19 conformsToType:v28])
              {
                v20 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v16];
                v21 = v20;
                if (v20)
                {
                  v22 = [v20 objectForKeyedSubscript:@"PFVideoComplementMetadataVersionKey"];
                  if ([v22 isEqualToString:@"1"])
                  {
                    [v32 setObject:v21 forKeyedSubscript:@"PFVideoComplementMetadataKey"];
                    v27 = 1;
                  }
                }
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v11);

      if ((v29 & v31) & v27)
      {
        self = [(PFVideoComplement *)v26 initWithPropertyList:v32];
        v23 = self;
      }

      else
      {
        v23 = 0;
        self = v26;
      }

      v4 = v25;
    }

    else
    {

      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (PFVideoComplement)initWithPropertyList:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PFVideoComplement;
  v5 = [(PFVideoComplement *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"PFVideoComplementMetadataKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKeyedSubscript:@"PFVideoComplementMetadataVersionKey"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v7 = 0;
      }

      v8 = [v6 objectForKeyedSubscript:@"PFVideoComplementMetadataPairidIdentifierKey"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v8 = 0;
      }

      v9 = [v6 objectForKeyedSubscript:@"PFVideoComplementMetadataTimingInfoKey"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v7 = 0;
    }

    v10 = @"1";
    if (v7)
    {
      v10 = v7;
    }

    v11 = v10;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v6 mutableCopy];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v13 = v12;
    v14 = [(__CFString *)v11 copy];

    [v13 setObject:v14 forKeyedSubscript:@"PFVideoComplementMetadataVersionKey"];
    v15 = [v9 copy];
    [v13 setObject:v15 forKeyedSubscript:@"PFVideoComplementMetadataTimingInfoKey"];

    v16 = [v8 copy];
    [v13 setObject:v16 forKeyedSubscript:@"PFVideoComplementMetadataPairidIdentifierKey"];

    objc_storeStrong(&v5->_metadata, v13);
    v17 = [v4 objectForKeyedSubscript:@"PFVideoComplementImagePathKey"];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 copy];
        imagePath = v5->_imagePath;
        v5->_imagePath = v18;
      }
    }

    v20 = [v4 objectForKeyedSubscript:@"PFVideoComplementVideoPathKey"];
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v20 copy];
        videoPath = v5->_videoPath;
        v5->_videoPath = v21;
      }
    }
  }

  return v5;
}

- (PFVideoComplement)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"%@ not supported for %@: use initWithPropertyList: or initWithBundleAtURL:", v5, objc_opt_class()}];

  return 0;
}

- (int)numberOfFramesRecoveredWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = MEMORY[0x1E6987E28];
  v5 = MEMORY[0x1E695DFF8];
  v6 = [(PFVideoComplement *)self videoPath];
  v7 = [v5 fileURLWithPath:v6];
  v8 = [v4 assetWithURL:v7];

  if (!v8)
  {
    v10 = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = objc_opt_class();
  v14 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__PFVideoComplement_Convenience__numberOfFramesRecoveredWithError___block_invoke;
  v15[3] = &unk_1E7B662A0;
  v15[4] = &v16;
  [v9 _enumerateV3MetadataInAsset:v8 withBlock:v15 error:&v14];
  v10 = v14;
  if (a3)
  {
LABEL_3:
    v11 = v10;
    *a3 = v10;
  }

LABEL_4:
  v12 = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return v12;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)originalImageDisplayTime
{
  result = [(PFVideoComplement *)self _readMetadataIfNeeded];
  *retstr = self->_originalImageDisplayTime;
  return result;
}

- (NSString)originalPairingIdentifier
{
  [(PFVideoComplement *)self _readMetadataIfNeeded];
  originalPairingIdentifier = self->_originalPairingIdentifier;

  return originalPairingIdentifier;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)originalVideoDuration
{
  result = [(PFVideoComplement *)self _readMetadataIfNeeded];
  *retstr = self->_originalVideoDuration;
  return result;
}

- (void)_readMetadataIfNeeded
{
  if (!self->_didReadOriginalMetadata)
  {
    self->_didReadOriginalMetadata = 1;
    v3 = PFVideoComplementMetadataForVideoAtPath(self->_videoPath, 0);
    v4 = [v3 pairingIdentifier];
    originalPairingIdentifier = self->_originalPairingIdentifier;
    self->_originalPairingIdentifier = v4;

    if (v3)
    {
      [v3 videoDuration];
      *&self->_originalVideoDuration.value = v6;
      self->_originalVideoDuration.epoch = v7;
      [v3 imageDisplayTime];
    }

    else
    {
      self->_originalVideoDuration.value = 0;
      *&self->_originalVideoDuration.timescale = 0;
      self->_originalVideoDuration.epoch = 0;
      v6 = 0uLL;
      v7 = 0;
    }

    *&self->_originalImageDisplayTime.value = v6;
    self->_originalImageDisplayTime.epoch = v7;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)imageDisplayTime
{
  *retstr = **&MEMORY[0x1E6960C70];
  v5 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"PFVideoComplementMetadataTimingInfoKey"];

  if (v5)
  {

    return CMTimeMakeFromDictionary(retstr, v5);
  }

  else
  {

    return [(PFVideoComplement *)self originalImageDisplayTime];
  }
}

- (NSString)pairingIdentifier
{
  v3 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"PFVideoComplementMetadataPairidIdentifierKey"];
  if (!v3)
  {
    v3 = [(PFVideoComplement *)self originalPairingIdentifier];
  }

  return v3;
}

- (PFVideoComplement)initWithPathToVideo:(id)a3 pathToImage:(id)a4 imageDisplayTime:(id *)a5 pairingIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a5->var2)
  {
    v20 = *a5;
    v14 = CMTimeCopyAsDictionary(&v20, 0);
    if (v14)
    {
      v15 = v14;
      [v13 setObject:v14 forKeyedSubscript:@"PFVideoComplementMetadataTimingInfoKey"];
      CFRelease(v15);
    }
  }

  if (v12)
  {
    [v13 setObject:v12 forKeyedSubscript:@"PFVideoComplementMetadataPairidIdentifierKey"];
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = v16;
  if (v10)
  {
    [v16 setObject:v10 forKeyedSubscript:@"PFVideoComplementVideoPathKey"];
  }

  if (v11)
  {
    [v17 setObject:v11 forKeyedSubscript:@"PFVideoComplementImagePathKey"];
  }

  if (v13)
  {
    [v17 setObject:v13 forKeyedSubscript:@"PFVideoComplementMetadataKey"];
  }

  v18 = [(PFVideoComplement *)self initWithPropertyList:v17];

  return v18;
}

- (PFVideoComplement)initWithPathToVideo:(id)a3 pathToImage:(id)a4
{
  v5 = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  return [(PFVideoComplement *)self initWithPathToVideo:a3 pathToImage:a4 imageDisplayTime:&v5 pairingIdentifier:0];
}

+ (BOOL)_enumerateV3MetadataInAsset:(id)a3 withBlock:(id)a4 error:(id *)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v53 = 0;
  if (!v7)
  {
    v13 = 0;
    if (!a5)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v52 = 0;
  v9 = [MEMORY[0x1E6987E78] assetReaderWithAsset:v7 error:&v52];
  v10 = v52;
  v11 = v10;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9 == 0;
  }

  if (!v12)
  {
    v44 = v10;
    v46 = v8;
    v47 = v9;
    [v9 setPreparesMediaDataForRealTimeConsumption:1];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v45 = v7;
    v14 = [v7 tracks];
    v15 = [v14 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (!v15)
    {
LABEL_27:

LABEL_38:
      v7 = v45;
      v9 = v47;
      v11 = v44;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *count = 138412290;
        *&count[4] = v45;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to find metadata track for AVAsset %@", count, 0xCu);
      }

      v13 = 0;
      v8 = v46;
      goto LABEL_48;
    }

    v16 = v15;
    v17 = *v49;
    v18 = *MEMORY[0x1E6990A00];
LABEL_15:
    v19 = 0;
    while (1)
    {
      if (*v49 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v48 + 1) + 8 * v19);
      v21 = [v20 formatDescriptions];
      if ([v21 count] == 1 && (objc_msgSend(v21, "firstObject"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22) && CMFormatDescriptionGetMediaType(v22) == 1835365473 && (CMMetadataFormatDescriptionGetIdentifiers(v22), (v23 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v24 = v23;
        v25 = [v23 containsObject:v18];

        if (v25)
        {
          v26 = v20;

          if (!v26)
          {
            goto LABEL_38;
          }

          v27 = [objc_alloc(MEMORY[0x1E6987EA8]) initWithTrack:v26 outputSettings:0];
          v9 = v47;
          v7 = v45;
          if ([v47 canAddOutput:v27])
          {
            [v47 addOutput:v27];
            v28 = [objc_alloc(MEMORY[0x1E6987E98]) initWithAssetReaderTrackOutput:v27];
            v8 = v46;
            if ([v47 startReading])
            {
              v29 = [v28 nextTimedMetadataGroup];
              if (v29)
              {
                v30 = v29;
                v42 = v27;
                v43 = v26;
                do
                {
                  v31 = [v30 items];
                  v32 = [v31 firstObject];

                  *count = 0;
                  v33 = [v32 dataValue];
                  [v33 bytes];
                  v34 = [v32 dataValue];
                  [v34 length];
                  FigLivePhotoMetadataComputeDeserializationSize();

                  v35 = malloc_type_calloc(*count, 1uLL, 0x42C489ACuLL);
                  v36 = [v32 dataValue];
                  [v36 bytes];
                  v37 = [v32 dataValue];
                  [v37 length];
                  FigLivePhotoMetadataDeserializeIntoBuffer();

                  if (*v35 >= 3u)
                  {
                    v38 = &v35[8 * v35[11]];
                    (*(v46 + 2))(v46, &v38[2 * vaddvq_s32(v38[3]) + 4], &v53);
                  }

                  free(v35);
                  v39 = [v28 nextTimedMetadataGroup];

                  if (!v39)
                  {
                    break;
                  }

                  v30 = v39;
                }

                while (!v53);

                v9 = v47;
                v27 = v42;
                v26 = v43;
              }
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *count = 0;
              _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to start reading from asset reader", count, 2u);
            }

            v11 = v44;
          }

          else
          {
            v8 = v46;
            v11 = v44;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *count = 0;
              _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to add output to asset reader", count, 2u);
            }
          }

LABEL_47:
          v13 = 0;
          goto LABEL_48;
        }
      }

      else
      {
      }

      if (v16 == ++v19)
      {
        v16 = [v14 countByEnumeratingWithState:&v48 objects:v55 count:16];
        if (v16)
        {
          goto LABEL_15;
        }

        goto LABEL_27;
      }
    }
  }

  if (!v10)
  {
    goto LABEL_47;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *count = 138412290;
    *&count[4] = v11;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to read from asset with error: %@", count, 0xCu);
  }

  v13 = v11;
LABEL_48:

  if (a5)
  {
LABEL_49:
    v40 = v13;
    *a5 = v13;
  }

LABEL_50:

  return 0;
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_retimedPTSForOriginalPTS:(SEL)a3 inAsset:(unint64_t)a4 error:(id)a5
{
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  *retstr = **&MEMORY[0x1E6960C70];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__PFVideoComplement_Convenience___retimedPTSForOriginalPTS_inAsset_error___block_invoke;
  v15[3] = &unk_1E7B662F0;
  v15[5] = &v16;
  v15[6] = a4;
  v15[4] = &v20;
  [a2 _enumerateV3MetadataInAsset:v10 withBlock:v15 error:a6];
  v11 = v17[3];
  if (v11)
  {
    v12 = v21[3];
    if (v12)
    {
      CMTimeMake(&v14, v11 - v12, 1000000000);
      *retstr = v14;
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return result;
}

void *__74__PFVideoComplement_Convenience___retimedPTSForOriginalPTS_inAsset_error___block_invoke(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result[4] + 8);
  if (!*(v3 + 24))
  {
    *(v3 + 24) = *(a2 + 40);
  }

  if (result[6] == *(a2 + 48))
  {
    *(*(result[5] + 8) + 24) = *(a2 + 40);
    *a3 = 1;
  }

  return result;
}

+ (unint64_t)_originalPTSForFrameAtTime:(id *)a3 inAsset:(id)a4 error:(id *)a5
{
  v8 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PFVideoComplement_Convenience___originalPTSForFrameAtTime_inAsset_error___block_invoke;
  v11[3] = &unk_1E7B662C8;
  v12 = *a3;
  v11[4] = v13;
  v11[5] = &v14;
  [a1 _enumerateV3MetadataInAsset:v8 withBlock:v11 error:a5];
  v9 = v15[3];
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __75__PFVideoComplement_Convenience___originalPTSForFrameAtTime_inAsset_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a2 + 40);
  v7 = *(*(*(a1 + 32) + 8) + 24);
  if (!v7)
  {
    v8 = *(a1 + 48);
    *(*(*(a1 + 32) + 8) + 24) = v6 + (CMTimeGetSeconds(&v8) * 1000000000.0);
    *(*(*(a1 + 40) + 8) + 24) = *(a2 + 48);
    v7 = *(*(*(a1 + 32) + 8) + 24);
  }

  if (v7 < v6)
  {
    *a3 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = *(a2 + 48);
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertTime:(SEL)a3 fromAsset:(id *)a4 toAsset:(id)a5
{
  v10 = a6;
  *retstr = **&MEMORY[0x1E6960C70];
  v13 = *a4;
  v11 = [a2 _originalPTSForFrameAtTime:&v13 inAsset:a5 error:0];
  if (v11)
  {
    [a2 _retimedPTSForOriginalPTS:v11 inAsset:v10 error:0];
  }

  return result;
}

@end