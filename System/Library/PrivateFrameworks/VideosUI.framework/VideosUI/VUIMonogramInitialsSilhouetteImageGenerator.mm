@interface VUIMonogramInitialsSilhouetteImageGenerator
@end

@implementation VUIMonogramInitialsSilhouetteImageGenerator

void __122___VUIMonogramInitialsSilhouetteImageGenerator_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 48));
  v2 = objc_loadWeakRetained(&to);
  v3 = [v2 isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = [_VUIMonogramInitialsSilhouetteImageGenerator monogramImageWithDescription:*(a1 + 32)];
    v5 = [objc_alloc(MEMORY[0x1E69DF710]) initWithCGImageRef:objc_msgSend(v4 exifOrientation:"vuiCGImage") preserveAlpha:{1, 1}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __122___VUIMonogramInitialsSilhouetteImageGenerator_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke_2;
    v8[3] = &unk_1E8734A20;
    objc_copyWeak(&v11, &to);
    v6 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    v7 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v8);

    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(&to);
}

void __122___VUIMonogramInitialsSilhouetteImageGenerator_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

@end