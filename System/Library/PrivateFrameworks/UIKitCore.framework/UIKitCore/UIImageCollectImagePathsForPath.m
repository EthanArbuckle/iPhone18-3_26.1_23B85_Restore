@interface UIImageCollectImagePathsForPath
@end

@implementation UIImageCollectImagePathsForPath

void ___UIImageCollectImagePathsForPath_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___UIImageCollectImagePathsForPath_block_invoke_2;
  aBlock[3] = &unk_1E71151F0;
  v7 = v5;
  v35 = v7;
  v8 = v6;
  v36 = v8;
  v37 = *(a1 + 32);
  v38 = *(a1 + 40);
  v39 = *(a1 + 48);
  v9 = _Block_copy(aBlock);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = ___UIImageCollectImagePathsForPath_block_invoke_3;
  v28[3] = &unk_1E71151F0;
  v10 = v7;
  v29 = v10;
  v11 = v8;
  v30 = v11;
  v31 = *(a1 + 32);
  v32 = *(a1 + 40);
  v33 = *(a1 + 48);
  v12 = _Block_copy(v28);
  if (dyld_program_sdk_at_least())
  {
    if (*(a1 + 64) == 1)
    {
      if ([UIImage _scaleDefinedByPath:*(a1 + 56)]== 0x7FFFFFFFFFFFFFFFLL)
      {
        if (+[UIDevice _isWatch](UIDevice, "_isWatch") || +[UIDevice _isWatchCompanion])
        {
          +[_UIAssetManager _watchScreenScale];
          v14 = v13;
        }

        else
        {
          v16 = [objc_opt_self() mainScreen];
          [v16 scale];
          v14 = v17;
        }

        v18 = *(a1 + 40);
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@%.0fx.%@", *(a1 + 56), v14, v11];
        v20 = [v18 stringByAppendingPathComponent:v19];

        if (([v20 getCString:v40 maxLength:1024 encoding:4] & 1) != 0 && !faccessat(-2, v40, 0, 48))
        {
          [*(a1 + 48) addObject:v20];
        }
      }

      if (![*(a1 + 48) count])
      {
        v21 = *(a1 + 40);
        v22 = [*(a1 + 56) stringByAppendingPathExtension:v11];
        v23 = [v21 stringByAppendingPathComponent:v22];

        if (([v23 getCString:v40 maxLength:1024 encoding:4] & 1) != 0 && !faccessat(-2, v40, 0, 48))
        {
          [*(a1 + 48) addObject:v23];
        }
      }
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = ___UIImageCollectImagePathsForPath_block_invoke_4;
      v24[3] = &unk_1E712D0F0;
      v27 = *(a1 + 65);
      v25 = v9;
      v26 = v12;
      v15 = _Block_copy(v24);
      v15[2](v15, 0);
      if (![*(a1 + 48) count])
      {
        v15[2](v15, 1);
      }
    }
  }

  else
  {
    if (*(a1 + 65) == 1)
    {
      (*(v9 + 2))(v9, 0);
    }

    if (![*(a1 + 48) count])
    {
      (*(v12 + 2))(v12, 0);
    }

    if ((*(a1 + 65) & 1) == 0 && ![*(a1 + 48) count])
    {
      (*(v9 + 2))(v9, 0);
    }

    if (![*(a1 + 48) count])
    {
      if (*(a1 + 32))
      {
        (*(v12 + 2))(v12, 1);
        if (![*(a1 + 48) count])
        {
          (*(v9 + 2))(v9, 1);
        }
      }
    }
  }
}

void ___UIImageCollectImagePathsForPath_block_invoke_3(uint64_t a1, int a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  do
  {
    if (dyld_program_sdk_at_least())
    {
      v5 = ProductSuffix();
      v6 = [v5 isEqualToString:@"~iphone"];
      v7 = @"~ipad";
      if (!v6)
      {
        v7 = @"~iphone";
      }

      v8 = MEMORY[0x1E696AEC0];
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = v7;
      v12 = [v8 stringWithFormat:@"%@@%lux%@.%@", v9, v4, v5, v10];
      v36[0] = v12;
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@%lux%@.%@", *(a1 + 32), v4, v11, *(a1 + 40)];
      v36[1] = v13;
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@%lux.%@", *(a1 + 32), v4, *(a1 + 40)];
      v36[2] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = *(a1 + 32);
      v5 = ProductSuffix();
      v12 = [v16 stringWithFormat:@"%@@%lux%@.%@", v17, v4, v5, *(a1 + 40)];
      v35[0] = v12;
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@%lux.%@", *(a1 + 32), v4, *(a1 + 40)];
      v35[1] = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    }

    if (a2)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@%lux.%@", *(a1 + 32), v4, *(a1 + 40)];
      v34 = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];

      v15 = v19;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = v15;
    v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          if (a2)
          {
            v25 = *(a1 + 48);
            v26 = [*(*(&v29 + 1) + 8 * i) stringByDeletingPathExtension];
            v27 = [v25 pathForResource:v26 ofType:*(a1 + 40)];
          }

          else
          {
            v27 = [*(a1 + 56) stringByAppendingPathComponent:*(*(&v29 + 1) + 8 * i)];
          }

          if (([v27 getCString:v37 maxLength:1024 encoding:4] & 1) != 0 && !faccessat(-2, v37, 0, 48))
          {
            [*(a1 + 64) addObject:v27];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v22);
    }

    v28 = v4 - 3;
    v4 = 2;
  }

  while (v28 < 0xFFFFFFFFFFFFFFFELL);
}

void ___UIImageCollectImagePathsForPath_block_invoke_2(uint64_t a1, int a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) stringByAppendingString:@"@1x"];
  v5 = *(a1 + 32);
  v6 = ProductSuffix();
  v7 = [v5 stringByAppendingString:v6];

  v8 = ProductSuffix();
  v9 = [v4 stringByAppendingString:v8];

  v10 = [v7 stringByAppendingPathExtension:*(a1 + 40)];
  v33[0] = v10;
  v11 = [*(a1 + 32) stringByAppendingPathExtension:*(a1 + 40)];
  v33[1] = v11;
  v26 = v9;
  v12 = [v9 stringByAppendingPathExtension:*(a1 + 40)];
  v33[2] = v12;
  v13 = [v4 stringByAppendingPathExtension:*(a1 + 40)];
  v33[3] = v13;
  v33[4] = v7;
  v33[5] = *(a1 + 32);
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:6];

  if (a2)
  {
    v15 = [*(a1 + 32) stringByAppendingPathExtension:*(a1 + 40)];
    v32[0] = v15;
    v16 = [v4 stringByAppendingPathExtension:*(a1 + 40)];
    v32[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];

    v14 = v17;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v14;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        if (a2)
        {
          v23 = *(a1 + 48);
          v24 = [*(*(&v27 + 1) + 8 * i) stringByDeletingPathExtension];
          v25 = [v23 pathForResource:v24 ofType:*(a1 + 40)];
        }

        else
        {
          v25 = [*(a1 + 56) stringByAppendingPathComponent:*(*(&v27 + 1) + 8 * i)];
        }

        if (([v25 getCString:v34 maxLength:1024 encoding:4] & 1) != 0 && !faccessat(-2, v34, 0, 48))
        {
          [*(a1 + 64) addObject:v25];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }
}

uint64_t ___UIImageCollectImagePathsForPath_block_invoke_4(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    (*(*(a1 + 32) + 16))();
  }

  result = (*(*(a1 + 40) + 16))();
  if ((*(a1 + 48) & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

@end