@interface AVAsset
@end

@implementation AVAsset

void __62__AVAsset_PhotosUICore__px_loadDurationWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = NSStringFromSelector(sel_duration);
  v13 = 0;
  v4 = [WeakRetained statusOfValueForKey:v3 error:&v13];
  v5 = v13;

  v11 = *MEMORY[0x1E6960C68];
  v12 = *(MEMORY[0x1E6960C68] + 16);
  if (v4 == 2)
  {
    if (WeakRetained)
    {
      [WeakRetained duration];
    }

    else
    {
      v9 = 0uLL;
      v10 = 0;
    }

    v11 = v9;
    v12 = v10;
    v6 = [MEMORY[0x1E696B098] valueWithCMTime:&v9];
    [WeakRetained _px_setCachedDuration:v6];
  }

  v7 = *(a1 + 32);
  if (v7 && WeakRetained)
  {
    v8 = *(v7 + 16);
    v9 = v11;
    v10 = v12;
    v8(v7, &v9, v4 == 2, v5);
  }
}

@end