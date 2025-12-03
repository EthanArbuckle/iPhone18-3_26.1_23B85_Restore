@interface PICinematicVideoUtilities
+ (BOOL)assetIsCinematicVideo:(id)video;
+ (BOOL)currentSystemCanRenderAsset:(id)asset;
+ (id)cinematicMetadataFromAsset:(id)asset;
+ (unint64_t)renderingVersionFromAsset:(id)asset error:(id *)error;
@end

@implementation PICinematicVideoUtilities

+ (unint64_t)renderingVersionFromAsset:(id)asset error:(id *)error
{
  assetCopy = asset;
  if (assetCopy)
  {
    if (error)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PICinematicVideoUtilities.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];

    if (error)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PICinematicVideoUtilities.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"error != NULL"}];

LABEL_3:
  v8 = [self cinematicMetadataFromAsset:assetCopy];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x1E69C4F90];
    value = [v8 value];
    v12 = [v10 deserializeMetadataWithType:2 fromGlobalMetadata:value error:error];

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        renderingVersion = [v12 renderingVersion];
      }

      else
      {
        [MEMORY[0x1E69B3A48] unsupportedError:@"Unexpected global rendering metadata class" object:v12];
        *error = renderingVersion = 0;
      }
    }

    else
    {
      renderingVersion = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] missingError:@"Can't find global cinematic metadata in asset" object:assetCopy];
    *error = renderingVersion = 0;
  }

  return renderingVersion;
}

+ (id)cinematicMetadataFromAsset:(id)asset
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  metadata = [asset metadata];
  v4 = [metadata countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = *MEMORY[0x1E69C4FD8];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(metadata);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 key];
        v11 = [v10 isEqual:v7];

        if (v11)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v5 = [metadata countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (BOOL)currentSystemCanRenderAsset:(id)asset
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [self renderingVersionFromAsset:asset error:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = [MEMORY[0x1E69C4FA0] isRenderVersionSupported:v3];
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_20844);
    }

    v6 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "currentSystemCanRenderAsset: error retrieving rendering version from asset: %@", buf, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (BOOL)assetIsCinematicVideo:(id)video
{
  v3 = [self cinematicMetadataFromAsset:video];
  v4 = v3 != 0;

  return v4;
}

@end