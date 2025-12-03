@interface PNSpatial3DGeneratorUtils
+ (BOOL)hasSpatial3DWidgetResourceForAsset:(id)asset;
+ (void)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
@end

@implementation PNSpatial3DGeneratorUtils

+ (BOOL)hasSpatial3DWidgetResourceForAsset:(id)asset
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69786D8] assetResourcesForAsset:asset includeDerivatives:1];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isLocallyAvailable] && (objc_msgSend(v9, "type") == 117 || objc_msgSend(v9, "type") == 118))
        {
          v6 = 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

+ (void)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  v13 = MEMORY[0x1E6978860];
  optionsCopy = options;
  assetCopy = asset;
  defaultManager = [v13 defaultManager];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __95__PNSpatial3DGeneratorUtils_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v18[3] = &unk_1E82A1CC0;
  v19 = handlerCopy;
  v17 = handlerCopy;
  [defaultManager requestNewCGImageForAsset:assetCopy targetSize:mode contentMode:optionsCopy options:v18 resultHandler:{width, height}];
}

void __95__PNSpatial3DGeneratorUtils_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, const void *a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
    CFRelease(a2);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v5;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Fetching image for asset failed with error: %@", &v6, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

@end