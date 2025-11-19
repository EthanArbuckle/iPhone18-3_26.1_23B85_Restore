@interface AVAsset
@end

@implementation AVAsset

void __58__AVAsset_PhotosUI__pu_loadDurationWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = 0;
  v3 = [WeakRetained statusOfValueForKey:@"duration" error:&v12];
  v4 = v12;
  v10 = *MEMORY[0x1E6960C68];
  v11 = *(MEMORY[0x1E6960C68] + 16);
  if (v3 == 2)
  {
    if (WeakRetained)
    {
      [WeakRetained duration];
    }

    else
    {
      v8 = 0uLL;
      v9 = 0;
    }

    v10 = v8;
    v11 = v9;
    v5 = [MEMORY[0x1E696B098] valueWithCMTime:&v8];
    [WeakRetained _pu_setCachedDuration:v5];
  }

  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 16);
      v8 = v10;
      v9 = v11;
      v7(v6, &v8, v3 == 2, v4);
    }
  }
}

void __125__AVAsset_PUPerspectiveTransform__pu_loadNormalizedVitalityPerspectiveTransformWithAdditionalNormalizedTransform_completion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 80));
  v2 = *(a1 + 80);
  v3 = _vitalityTransformRequiredProperties();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __125__AVAsset_PUPerspectiveTransform__pu_loadNormalizedVitalityPerspectiveTransformWithAdditionalNormalizedTransform_completion___block_invoke_2;
  v5[3] = &unk_1E7B76300;
  objc_copyWeak(v10, &location);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = v4;
  v8 = *(a1 + 64);
  v9 = *(a1 + 88);
  [v2 loadValuesAsynchronouslyForKeys:v3 completionHandler:v5];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __125__AVAsset_PUPerspectiveTransform__pu_loadNormalizedVitalityPerspectiveTransformWithAdditionalNormalizedTransform_completion___block_invoke_2(uint64_t a1)
{
  if (dispatch_get_specific(VitalityLoadingQueueIdentifier))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    [WeakRetained _pu_handleRequiredPropertiesLoadedWithAdditionalNormalizedTransform:*(a1 + 80) completion:{*(a1 + 32), *(a1 + 48), *(a1 + 64)}];
  }

  else
  {
    v2 = _vitalityLoadingQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __125__AVAsset_PUPerspectiveTransform__pu_loadNormalizedVitalityPerspectiveTransformWithAdditionalNormalizedTransform_completion___block_invoke_3;
    block[3] = &unk_1E7B76300;
    objc_copyWeak(&v10, (a1 + 88));
    v3 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = v3;
    v8 = *(a1 + 64);
    v9 = *(a1 + 80);
    dispatch_async(v2, block);

    objc_destroyWeak(&v10);
  }
}

void __125__AVAsset_PUPerspectiveTransform__pu_loadNormalizedVitalityPerspectiveTransformWithAdditionalNormalizedTransform_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  [WeakRetained _pu_handleRequiredPropertiesLoadedWithAdditionalNormalizedTransform:*(a1 + 80) completion:{*(a1 + 32), *(a1 + 48), *(a1 + 64)}];
}

@end