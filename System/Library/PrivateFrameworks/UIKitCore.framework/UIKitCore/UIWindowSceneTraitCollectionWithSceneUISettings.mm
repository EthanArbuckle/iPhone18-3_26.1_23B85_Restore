@interface UIWindowSceneTraitCollectionWithSceneUISettings
@end

@implementation UIWindowSceneTraitCollectionWithSceneUISettings

void ____UIWindowSceneTraitCollectionWithSceneUISettings_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 272);
  v8 = v7;
  if (v7)
  {
    [(_UITraitOverrides *)v7 _applyTransformsUsingTraitCollectionProvider:v5 mutableTraitCollectionProvider:v6];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(*(a1 + 32) + 288);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * v13) _traitOverrides];
        if (v14)
        {
          [UITraitCollection _applyOverrides:v14 defaultValueOverrides:0 usingTraitCollectionProvider:v5 mutableTraitCollectionProvider:v6];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *(a1 + 32);
  v16 = v6[2](v6);
  [v15 _updateCornerProviderWithTraitCollection:v16];

  if (v8)
  {
    [(_UITraitOverrides *)v8 _applyOverridesUsingTraitCollectionProvider:v5 mutableTraitCollectionProvider:v6];
  }
}

@end