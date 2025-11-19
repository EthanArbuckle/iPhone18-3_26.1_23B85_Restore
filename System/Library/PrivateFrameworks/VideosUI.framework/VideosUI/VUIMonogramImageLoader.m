@interface VUIMonogramImageLoader
@end

@implementation VUIMonogramImageLoader

void __41___VUIMonogramImageLoader_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_VUIMonogramImageLoader);
  v1 = sharedInstance_sharedInstance_3;
  sharedInstance_sharedInstance_3 = v0;
}

void __101___VUIMonogramImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __101___VUIMonogramImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke_2;
  v20[3] = &unk_1E872FB00;
  v15 = *(a1 + 32);
  v21 = v11;
  v22 = v12;
  v25 = v15;
  v26 = a5;
  v23 = v13;
  v24 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v20);
}

@end