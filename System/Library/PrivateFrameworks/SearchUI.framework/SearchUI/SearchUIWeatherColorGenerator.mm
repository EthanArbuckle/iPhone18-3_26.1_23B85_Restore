@interface SearchUIWeatherColorGenerator
- (void)generateUIColorsIsDark:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation SearchUIWeatherColorGenerator

- (void)generateUIColorsIsDark:(BOOL)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__SearchUIWeatherColorGenerator_generateUIColorsIsDark_completionHandler___block_invoke;
  v7[3] = &unk_1E85B2720;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [SearchUIUtilities dispatchAsyncIfNecessary:v7];
}

void __74__SearchUIWeatherColorGenerator_generateUIColorsIsDark_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sfColor];
  v3 = [v2 location];
  [v3 lat];
  v17 = v4;

  v5 = [v2 location];
  [v5 lng];
  v18 = v6;

  v7 = [v2 date];
  if (v7)
  {
    v8 = [v2 date];
    MEMORY[0x1DA748040]();
  }

  else
  {
    CFAbsoluteTimeGetCurrent();
  }

  isDayLightForLocation = geo_isDayLightForLocation();
  v10 = objc_opt_new();
  v11 = [*(a1 + 32) sfColor];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__SearchUIWeatherColorGenerator_generateUIColorsIsDark_completionHandler___block_invoke_2;
  v13[3] = &unk_1E85B44C8;
  v16 = isDayLightForLocation;
  v14 = v2;
  v15 = *(a1 + 40);
  v12 = v2;
  [v10 generateHexColorsWithSfColor:v11 completionHandler:v13];
}

void __74__SearchUIWeatherColorGenerator_generateUIColorsIsDark_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [SearchUIBackgroundColorUtilities colorWithHexString:*(*(&v30 + 1) + 8 * v9)];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  v11 = 0.0;
  if (*(a1 + 48) == 1)
  {
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      v12 = [*(a1 + 32) condition];
      if ([v12 isEqualToString:@"haze"])
      {
        v11 = 0.3;
      }

      else if ([v12 isEqualToString:@"cloudy"])
      {
        v11 = 0.3;
      }

      else
      {
        v11 = 0.2;
      }
    }

    else
    {
      v11 = 0.1;
    }
  }

  v13 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    v18 = 1.0 - v11;
    do
    {
      v19 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v26 + 1) + 8 * v19);
        v24 = 0.0;
        v25 = 0.0;
        v22 = 0.0;
        v23 = 0.0;
        [v20 getRed:&v25 green:&v24 blue:&v23 alpha:&v22];
        v21 = [MEMORY[0x1E69DC888] colorWithRed:v18 * v25 green:v18 * v24 blue:v18 * v23 alpha:v22];
        [v13 addObject:v21];

        ++v19;
      }

      while (v16 != v19);
      v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v16);
  }

  (*(*(a1 + 40) + 16))();
}

@end