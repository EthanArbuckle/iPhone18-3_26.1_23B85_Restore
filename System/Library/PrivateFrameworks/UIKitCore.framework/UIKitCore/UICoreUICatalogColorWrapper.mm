@interface UICoreUICatalogColorWrapper
@end

@implementation UICoreUICatalogColorWrapper

void __63___UICoreUICatalogColorWrapper__uikit_valueForTraitCollection___block_invoke(void *a1, uint64_t a2)
{
  if (a2 && !*(*(a1[6] + 8) + 40))
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:a2];
    if (v3)
    {
      v9 = v3;
      v4 = [_UIAssetManager assetManagerForBundle:v3];
      v5 = v4;
      if (v4)
      {
        v6 = [v4 colorNamed:*(a1[4] + 32) withTraitCollection:a1[5]];
        v7 = *(a1[6] + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;
      }

      v3 = v9;
    }
  }
}

@end