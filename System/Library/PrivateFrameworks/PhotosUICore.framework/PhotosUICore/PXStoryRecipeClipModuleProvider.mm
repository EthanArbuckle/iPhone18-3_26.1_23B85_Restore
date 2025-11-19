@interface PXStoryRecipeClipModuleProvider
- (PXStoryRecipeClipModuleProvider)init;
- (PXStoryRecipeClipModuleProvider)initWithConfiguration:(id)a3;
- (id)_splitEmptySpaceInModules:(id)a3 maxEmptySpaceLength:(unint64_t)a4 momentClipRange:(_NSRange)a5 withClipCatalog:(id)a6;
- (id)computeRunsForModuleType:(int64_t)a3 momentClipRange:(_NSRange)a4 withClipCatalog:(id)a5 maxModuleLength:(unint64_t)a6;
- (id)mergeModulesFromRangesByModuleType:(id)a3 momentClipRange:(_NSRange)a4;
- (id)splitRanges:(id)a3 maxLength:(unint64_t)a4;
- (void)provideModulesForMomentClipRange:(_NSRange)a3 withClipCatalog:(id)a4 maxModuleLength:(unint64_t)a5 maxEmptySpaceLength:(unint64_t)a6 usingBlock:(id)a7;
@end

@implementation PXStoryRecipeClipModuleProvider

- (void)provideModulesForMomentClipRange:(_NSRange)a3 withClipCatalog:(id)a4 maxModuleLength:(unint64_t)a5 maxEmptySpaceLength:(unint64_t)a6 usingBlock:(id)a7
{
  length = a3.length;
  location = a3.location;
  v49 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v37 = a7;
  v13 = objc_opt_new();
  v14 = +[PXStorySettings sharedInstance];
  v15 = [v14 autoEditUseMomentRecipes];

  if (v15)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  v17 = &PXStoryAutoEditModuleTypes;
  do
  {
    v18 = *v17++;
    v19 = [(PXStoryRecipeClipModuleProvider *)self computeRunsForModuleType:v18 momentClipRange:location withClipCatalog:length maxModuleLength:v12, a5];
    v20 = [(PXStoryRecipeClipModuleProvider *)self splitRanges:v19 maxLength:a5];
    [v13 addObject:v20];

    --v16;
  }

  while (v16);
  v39 = v13;
  v21 = [(PXStoryRecipeClipModuleProvider *)self mergeModulesFromRangesByModuleType:v13 momentClipRange:location, length];
  v22 = a6;
  v41 = v12;
  v23 = [(PXStoryRecipeClipModuleProvider *)self _splitEmptySpaceInModules:v21 maxEmptySpaceLength:v22 momentClipRange:location withClipCatalog:length, v12];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __131__PXStoryRecipeClipModuleProvider_provideModulesForMomentClipRange_withClipCatalog_maxModuleLength_maxEmptySpaceLength_usingBlock___block_invoke;
  v46[3] = &unk_1E7734CE0;
  v24 = v37;
  v47 = v24;
  v38 = v23;
  [v23 enumerateIndexesUsingBlock:v46];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = v21;
  v26 = [v25 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v43;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v42 + 1) + 8 * i);
        v31 = [v30 moduleType];
        v32 = [v30 range];
        if (v32 < v32 + v33)
        {
          v34 = v32;
          v35 = 0;
          v36 = -v33;
          do
          {
            (*(v24 + 2))(v24, v35-- == 0, v31, 0, v34++);
          }

          while (v36 != v35);
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v27);
  }
}

- (id)_splitEmptySpaceInModules:(id)a3 maxEmptySpaceLength:(unint64_t)a4 momentClipRange:(_NSRange)a5 withClipCatalog:(id)a6
{
  length = a5.length;
  location = a5.location;
  v38 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v13 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{location, length}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      v18 = 0;
      do
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v33 + 1) + 8 * v18) range];
        [v13 removeIndexesInRange:{v19, v20}];
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v16);
  }

  v21 = length - 1 + location;
  if (!__CFADD__(length - 1, location))
  {
    do
    {
      v22 = [v12 clipAtIndex:location];
      v23 = [v22 displayAssets];
      v24 = [v23 count];

      if (v24 != 1 || ([v22 playbackStyle] - 2) <= 3)
      {
        [v13 removeIndex:location];
      }

      ++location;
    }

    while (location <= v21);
  }

  v25 = objc_opt_new();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __113__PXStoryRecipeClipModuleProvider__splitEmptySpaceInModules_maxEmptySpaceLength_momentClipRange_withClipCatalog___block_invoke;
  v30[3] = &unk_1E772EAB8;
  v32 = a4;
  v30[4] = self;
  v26 = v25;
  v31 = v26;
  [v13 enumerateRangesUsingBlock:v30];
  v27 = v31;
  v28 = v26;

  return v26;
}

void __113__PXStoryRecipeClipModuleProvider__splitEmptySpaceInModules_maxEmptySpaceLength_momentClipRange_withClipCatalog___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (a3 > *(a1 + 48))
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696B098] valueWithRange:{a2, a3}];
    v20[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v8 = [v5 splitRanges:v7 maxLength:*(a1 + 48)];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v15 + 1) + 8 * v13) rangeValue];
          if (v14 != a2)
          {
            [*(a1 + 40) addIndex:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (id)mergeModulesFromRangesByModuleType:(id)a3 momentClipRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v61 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  if ([v6 count])
  {
    v8 = 0;
    do
    {
      [v7 addObject:&unk_1F1909C88];
      ++v8;
    }

    while (v8 < [v6 count]);
  }

  v54 = v7;
  v55 = objc_opt_new();
  v49 = location;
  v50 = location + length;
  v53 = v6;
  if ([v6 count])
  {
    v9 = 0;
    do
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v50];
      for (i = v50; i; --i)
      {
        [v10 addObject:{&unk_1F1909C88, v49}];
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v51 = v9;
      v12 = [v53 objectAtIndexedSubscript:{v9, v49}];
      v13 = [v12 countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v57;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v57 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v56 + 1) + 8 * j) rangeValue];
            if (v18)
            {
              v19 = v17;
              v20 = v18;
              do
              {
                v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
                [v10 setObject:v21 atIndexedSubscript:v19];

                ++v19;
                --v20;
              }

              while (v20);
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v56 objects:v60 count:16];
        }

        while (v14);
      }

      [v55 addObject:v10];
      v6 = v53;
      v9 = v51 + 1;
    }

    while (v51 + 1 < [v53 count]);
  }

  v52 = objc_opt_new();
  v22 = v49;
  for (k = v54; v22 < v50; v22 += v25)
  {
    if ([v6 count] < 2)
    {
      v25 = 0;
      v24 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v26 = -1;
      v27 = 1;
      do
      {
        v28 = [k objectAtIndexedSubscript:v27];
        v29 = [v28 unsignedIntegerValue];

        v30 = [v55 objectAtIndexedSubscript:v27];
        v31 = [v30 objectAtIndexedSubscript:v22];
        v32 = v22;
        v33 = [v31 integerValue];

        v35 = v29 < v26 || v33 > v25;
        v36 = !v35;
        if (v35)
        {
          v37 = v33;
        }

        else
        {
          v37 = v25;
        }

        if (v36)
        {
          v38 = v26;
        }

        else
        {
          v38 = v29;
        }

        if (v36)
        {
          v39 = v24;
        }

        else
        {
          v39 = v27;
        }

        if (v29 > v26)
        {
          v37 = v25;
          v38 = v26;
          v39 = v24;
        }

        v40 = v33 >= 2;
        v22 = v32;
        k = v54;
        if (v40)
        {
          v25 = v37;
        }

        if (v40)
        {
          v26 = v38;
        }

        if (v40)
        {
          v24 = v39;
        }

        ++v27;
      }

      while (v27 < [v53 count]);
    }

    v41 = PXStoryAutoEditModuleTypes[v24];
    if (v41)
    {
      v42 = [[PXStoryAutoEditModule alloc] initWithModuleType:v41 range:v22, v25];
      [v52 addObject:v42];
      v43 = MEMORY[0x1E696AD98];
      v44 = [k objectAtIndexedSubscript:v24];
      v45 = [v43 numberWithUnsignedInteger:{objc_msgSend(v44, "unsignedIntegerValue") + 1}];
      [k setObject:v45 atIndexedSubscript:v24];
    }

    else
    {
      v25 = 1;
    }

    v6 = v53;
  }

  v46 = v6;
  v47 = [v52 copy];

  return v47;
}

- (id)computeRunsForModuleType:(int64_t)a3 momentClipRange:(_NSRange)a4 withClipCatalog:(id)a5 maxModuleLength:(unint64_t)a6
{
  length = a4.length;
  location = a4.location;
  v40 = *MEMORY[0x1E69E9840];
  v9 = a5;
  if (a3)
  {
    v33 = objc_opt_new();
    v11 = length - 1 + location;
    if (!__CFADD__(length - 1, location))
    {
      v14 = 0;
      v35 = 0;
      *&v10 = 138412546;
      v32 = v10;
      v15 = location;
      v34 = location;
      while (1)
      {
        v16 = v15;
        if (v15 <= location)
        {
          v18 = 1;
        }

        else
        {
          v17 = [v9 clipAtIndex:v15 - 1];
          v18 = !clipIsModuleType(v17, a3);
        }

        v19 = [v9 clipAtIndex:{v15, v32}];
        IsModuleType = clipIsModuleType(v19, a3);

        v15 = v16 + 1;
        if (v16 + 1 > v11)
        {
          break;
        }

        v22 = [v9 clipAtIndex:v16 + 1];
        v23 = clipIsModuleType(v22, a3);

        v21 = v18 && IsModuleType && v23;
        if (v18 || !IsModuleType || !v23)
        {
          if (v14)
          {
            goto LABEL_20;
          }

          v24 = 0;
          if (v21)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v24 = ++v14;
          if (v21)
          {
            goto LABEL_25;
          }
        }

LABEL_30:
        location = v34;
        if (v15 > v11)
        {
          goto LABEL_4;
        }
      }

      if (!v14)
      {
        goto LABEL_4;
      }

      LOBYTE(v21) = 0;
LABEL_20:
      v25 = PLStoryGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = @"??";
        if (a3 <= 3)
        {
          v26 = off_1E7731FC0[a3];
        }

        v27 = v26;
        *buf = v32;
        v37 = v27;
        v38 = 1024;
        LODWORD(v39) = v14 + 1;
        _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_DEBUG, "%@ run ended after %d assets", buf, 0x12u);
      }

      v28 = [MEMORY[0x1E696B098] valueWithRange:{v35, v14 + 1}];
      [v33 addObject:v28];

      v24 = 0;
      v14 = 0;
      if ((v21 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_25:
      v29 = PLStoryGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = @"??";
        if (a3 <= 3)
        {
          v30 = off_1E7731FC0[a3];
        }

        v31 = v30;
        *buf = v32;
        v37 = v31;
        v38 = 2048;
        v39 = v16;
        _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_DEBUG, "Starting a run of %@ assets at clip index %ld", buf, 0x16u);
      }

      v14 = v24 + 1;
      v35 = v16;
      goto LABEL_30;
    }

LABEL_4:
    v12 = [v33 copy];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)splitRanges:(id)a3 maxLength:(unint64_t)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 rangeValue];
        if (v12 <= a4)
        {
          [v5 addObject:v10];
        }

        else
        {
          v13 = v12;
          v14 = v12;
          v15 = vcvtpd_u64_f64(v12 / a4);
          if (v15)
          {
            v16 = v11;
            v17 = 0;
            v18 = v15;
            do
            {
              v19 = (v17 / v18 * v14);
              v20 = ((v17 + 1.0) / v18 * v14);
              if (!v17)
              {
                v19 = 0;
              }

              ++v17;
              if (!--v15)
              {
                v20 = v13;
              }

              v21 = [MEMORY[0x1E696B098] valueWithRange:{v19 + v16, v20 - v19}];
              [v5 addObject:v21];
            }

            while (v15);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v22 = [v5 copy];

  return v22;
}

- (PXStoryRecipeClipModuleProvider)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryRecipeClipModuleProvider;
  v6 = [(PXStoryRecipeClipModuleProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

- (PXStoryRecipeClipModuleProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryRecipeClipModuleProvider.m" lineNumber:36 description:{@"%s is not available as initializer", "-[PXStoryRecipeClipModuleProvider init]"}];

  abort();
}

@end