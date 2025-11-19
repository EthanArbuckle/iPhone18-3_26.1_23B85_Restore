@interface PICinematicVideoUtilities
+ (BOOL)assetIsCinematicVideo:(id)a3;
+ (BOOL)currentSystemCanRenderAsset:(id)a3;
+ (id)cinematicMetadataFromAsset:(id)a3;
+ (unint64_t)renderingVersionFromAsset:(id)a3 error:(id *)a4;
@end

@implementation PICinematicVideoUtilities

+ (unint64_t)renderingVersionFromAsset:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (v7)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PICinematicVideoUtilities.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:a1 file:@"PICinematicVideoUtilities.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"error != NULL"}];

LABEL_3:
  v8 = [a1 cinematicMetadataFromAsset:v7];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x1E69C4F90];
    v11 = [v8 value];
    v12 = [v10 deserializeMetadataWithType:2 fromGlobalMetadata:v11 error:a4];

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 renderingVersion];
      }

      else
      {
        [MEMORY[0x1E69B3A48] unsupportedError:@"Unexpected global rendering metadata class" object:v12];
        *a4 = v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] missingError:@"Can't find global cinematic metadata in asset" object:v7];
    *a4 = v13 = 0;
  }

  return v13;
}

+ (id)cinematicMetadataFromAsset:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a3 metadata];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
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

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (BOOL)currentSystemCanRenderAsset:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [a1 renderingVersionFromAsset:a3 error:&v8];
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

+ (BOOL)assetIsCinematicVideo:(id)a3
{
  v3 = [a1 cinematicMetadataFromAsset:a3];
  v4 = v3 != 0;

  return v4;
}

@end