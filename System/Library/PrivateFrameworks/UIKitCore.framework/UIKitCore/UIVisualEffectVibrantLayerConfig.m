@interface UIVisualEffectVibrantLayerConfig
@end

@implementation UIVisualEffectVibrantLayerConfig

void __56___UIVisualEffectVibrantLayerConfig_configureLayerView___block_invoke(id *a1)
{
  v2 = +[UIColor whiteColor];
  [a1[4] setTintColor:v2];

  v3 = [a1[5] filterAttributes];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __56___UIVisualEffectVibrantLayerConfig_configureLayerView___block_invoke_2;
  v17 = &unk_1E70F3898;
  v18 = a1[6];
  v19 = a1[7];
  [v3 enumerateKeysAndObjectsUsingBlock:&v14];

  v4 = [a1[5] vibrantColor];
  v5 = v4;
  if (!v4)
  {
    v5 = +[UIColor clearColor];
  }

  v6 = [v5 CGColor];
  if (!v4)
  {
  }

  v7 = [a1[5] tintColor];
  v8 = v7;
  if (!v7)
  {
    v8 = +[UIColor clearColor];
  }

  v9 = [v8 CGColor];
  if (!v7)
  {
  }

  v10 = a1[6];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"filters.%@.%@", a1[7], @"inputColor0", v14, v15, v16, v17];
  [v10 setValue:v6 forKeyPath:v11];

  v12 = a1[6];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"filters.%@.%@", a1[7], @"inputColor1"];
  [v12 setValue:v9 forKeyPath:v13];
}

void __56___UIVisualEffectVibrantLayerConfig_configureLayerView___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [v6 stringWithFormat:@"filters.%@.%@", v5, a2];
  [v4 setValue:v7 forKeyPath:v8];
}

void __56___UIVisualEffectVibrantLayerConfig_configureLayerView___block_invoke_3(uint64_t a1)
{
  v2 = +[UIColor whiteColor];
  [*(a1 + 32) setTintColor:v2];

  v3 = +[UIColor clearColor];
  v4 = [v3 CGColor];

  v5 = [MEMORY[0x1E6979378] filterWithType:*(a1 + 40)];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 48) filterAttributes];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56___UIVisualEffectVibrantLayerConfig_configureLayerView___block_invoke_4;
  v14[3] = &unk_1E70F6B68;
  v14[4] = *(a1 + 64);
  [v8 enumerateKeysAndObjectsUsingBlock:v14];

  [*(*(*(a1 + 64) + 8) + 40) setValue:v4 forKey:@"inputColor0"];
  [*(*(*(a1 + 64) + 8) + 40) setValue:v4 forKey:@"inputColor1"];
  v9 = [*(a1 + 56) filters];
  v10 = v9;
  v11 = MEMORY[0x1E695E0F0];
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [v12 arrayByAddingObject:*(*(*(a1 + 64) + 8) + 40)];

  [*(a1 + 56) setFilters:v13];
}

void __58___UIVisualEffectVibrantLayerConfig_deconfigureLayerView___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58___UIVisualEffectVibrantLayerConfig_deconfigureLayerView___block_invoke_2;
  v2[3] = &unk_1E70F35B8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  [UIView performWithoutAnimation:v2];
}

void __58___UIVisualEffectVibrantLayerConfig_deconfigureLayerView___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF70];
  v3 = [*(a1 + 32) filters];
  v4 = [v2 arrayWithArray:v3];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [*(a1 + 32) filters];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 type];
        v12 = [v11 isEqualToString:*(a1 + 40)];

        if (v12)
        {
          [v4 removeObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) setFilters:v4];
}

@end