@interface PXDefaultAudioCueProvider
@end

@implementation PXDefaultAudioCueProvider

void __53___PXDefaultAudioCueProvider__cueProviderForCatalog___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(a1[5] + 8) + 40))
  {
    v7 = a1[6];
    if (v7 > 4)
    {
      v11 = 0;
    }

    else
    {
      v8 = objc_alloc_init(*off_1E7740E80[v7]);
      v9 = *(a1[5] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = a1[6];
      v11 = *(*(a1[5] + 8) + 40);
    }

    v12 = *(a1[4] + 8);
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    [v12 setObject:v11 forKeyedSubscript:v13];
  }
}

void __69___PXDefaultAudioCueProvider_requestCuesForAudioAsset_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "requestAudioCues", "", v10, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

@end