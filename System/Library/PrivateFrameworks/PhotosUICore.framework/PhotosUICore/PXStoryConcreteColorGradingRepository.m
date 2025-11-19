@interface PXStoryConcreteColorGradingRepository
- (PXStoryConcreteColorGradingRepository)initWithOptions:(unint64_t)a3;
- (id)_cachedColorLookupCubeForColorGradeKind:(int64_t)a3;
- (id)_createColorLookupCubeForColorGradeKind:(int64_t)a3;
- (id)_createCustomColorLookupCubeForResourceName:(id)a3;
- (id)_cubeResourceNameForColorGradeKind:(int64_t)a3;
- (id)_loadCustomColorLookupCubeForResourceName:(id)a3;
- (id)colorLookupCubeForColorGradeKind:(int64_t)a3;
- (id)localizedTitleForColorGradeKind:(int64_t)a3;
- (id)supportedColorGradeKinds;
- (id)supportedUserPickableColorGradeKinds;
- (int64_t)colorGradeKindForColorGradeCategory:(id)a3 excludingKinds:(id)a4;
- (void)_enumerateSupporedColorGradeCategoriesUsingBlock:(id)a3;
- (void)_writeTemporaryFileWithCompressedColorCube:(id)a3 forResourceName:(id)a4;
- (void)startPreloadingWithCompletionHandler:(id)a3;
@end

@implementation PXStoryConcreteColorGradingRepository

- (id)colorLookupCubeForColorGradeKind:(int64_t)a3
{
  v5 = [(PXStoryConcreteColorGradingRepository *)self log];
  v6 = os_signpost_id_make_with_pointer(v5, self);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "StoryColorLookupCubeForKind", "", buf, 2u);
  }

  v9 = [(PXStoryConcreteColorGradingRepository *)self _cachedColorLookupCubeForColorGradeKind:a3];
  v10 = v8;
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_END, v6, "StoryColorLookupCubeForKind", "", v13, 2u);
  }

  return v9;
}

- (id)supportedUserPickableColorGradeKinds
{
  v3 = objc_opt_new();
  v4 = [(PXStoryConcreteColorGradingRepository *)self configuration];
  if ([v4 count] >= 2)
  {
    v5 = 1;
    do
    {
      v6 = [v4 objectAtIndexedSubscript:v5];
      if ([v6 isUserSelectable])
      {
        v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
        [v3 addObject:v7];
      }

      ++v5;
    }

    while (v5 < [v4 count]);
  }

  v8 = [v3 copy];

  return v8;
}

- (id)supportedColorGradeKinds
{
  v3 = objc_opt_new();
  v4 = [(PXStoryConcreteColorGradingRepository *)self configuration];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    v6 = 1;
    do
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      [v3 addObject:v7];

      ++v6;
      v8 = [(PXStoryConcreteColorGradingRepository *)self configuration];
      v9 = [v8 count];
    }

    while (v6 < v9);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)localizedTitleForColorGradeKind:(int64_t)a3
{
  if (a3 >= 2 && (-[PXStoryConcreteColorGradingRepository configuration](self, "configuration"), v4 = objc_claimAutoreleasedReturnValue(), [v4 objectAtIndexedSubscript:a3], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = [v5 resource];
  }

  else
  {
    v6 = @"None";
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"InteractiveMemoryFilter_%@", v6];
  v8 = PXLocalizedStringFromTable(v7, @"PhotosUICore");

  return v8;
}

- (int64_t)colorGradeKindForColorGradeCategory:(id)a3 excludingKinds:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v23 = self;
    v8 = [(PXStoryConcreteColorGradingRepository *)self configuration];
    if ([v8 count] >= 2)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = [v8 objectAtIndexedSubscript:v10];
        if ([v11 isAutoSelectable])
        {
          v12 = [v11 categories];
          v13 = [v12 count];

          if (v9 <= v13)
          {
            v9 = v13;
          }
        }

        ++v10;
      }

      while (v10 < [v8 count]);
      if (v9 >= 1)
      {
        for (i = 0; i != v9; ++i)
        {
          if ([v8 count] >= 2)
          {
            for (j = 1; j < [v8 count]; ++j)
            {
              v16 = [v8 objectAtIndexedSubscript:j];
              if ([v16 isAutoSelectable])
              {
                v17 = [v16 categories];
                if ([v17 count] > i)
                {
                  v18 = [v17 objectAtIndexedSubscript:i];
                  v19 = [v6 isEqualToString:v18];

                  if (v19)
                  {
                    if (![v7 containsIndex:j])
                    {

                      goto LABEL_28;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v20 = PLStoryGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = v6;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "no color grade kind found for '%@' excluding %@", buf, 0x16u);
    }

    if ([v7 count])
    {
      v21 = PLStoryGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v6;
        _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_DEFAULT, "trying to find color grade kind for '%@', ignoring exclusion list", buf, 0xCu);
      }

      j = [(PXStoryConcreteColorGradingRepository *)v23 colorGradeKindForColorGradeCategory:v6 excludingKinds:0];
    }

    else
    {
      j = 1;
    }

LABEL_28:
  }

  else
  {
    j = 1;
  }

  return j;
}

- (void)_writeTemporaryFileWithCompressedColorCube:(id)a3 forResourceName:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 textureData];
  if (!v6)
  {
    PXAssertGetLog();
  }

  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingString:v5];
  v9 = [v8 stringByAppendingPathExtension:@"scube"];

  v21 = 0;
  LOBYTE(v7) = [v6 writeToFile:v9 options:1 error:&v21];
  v10 = v21;
  if ((v7 & 1) == 0)
  {
    PXAssertGetLog();
  }

  v11 = PLStoryGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v9;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_INFO, "uncompressed color cube written to %@", buf, 0xCu);
  }

  v20 = v10;
  v12 = [MEMORY[0x1E69C0948] compressData:v6 options:0 error:&v20];
  v13 = v20;

  if (!v12)
  {
    PXAssertGetLog();
  }

  v14 = NSTemporaryDirectory();
  v15 = [v14 stringByAppendingString:v5];
  v16 = [v15 stringByAppendingPathExtension:@"zcube"];

  v19 = v13;
  LOBYTE(v15) = [v12 writeToFile:v16 options:1 error:&v19];
  v17 = v19;

  if ((v15 & 1) == 0)
  {
    PXAssertGetLog();
  }

  v18 = PLStoryGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v16;
    _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_INFO, "compressed color cube written to %@", buf, 0xCu);
  }
}

- (id)_loadCustomColorLookupCubeForResourceName:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E69BF238] defaultSystemPhotoDataDirectory];
  v6 = [v4 fileURLWithPath:v5];
  v7 = [v6 URLByAppendingPathComponent:@"Configuration"];
  v8 = [v7 URLByAppendingPathComponent:@"Grades"];

  v9 = [v8 URLByAppendingPathComponent:v3];
  v10 = [v9 URLByAppendingPathExtension:@"cube"];

  v26 = 0;
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v10 options:1 error:&v26];
  v12 = v26;
  if (!v11)
  {
    v17 = [v8 URLByAppendingPathComponent:v3];
    v15 = [v17 URLByAppendingPathExtension:@"cube.zz"];

    v24 = v12;
    v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v15 options:1 error:&v24];
    v14 = v24;

    if (v16)
    {
      v23 = v14;
      v11 = [MEMORY[0x1E69C0948] decompressData:v16 options:0 error:&v23];
      v18 = v23;

      if (v11)
      {
        v22 = v18;
        v13 = [[off_1E77215F0 alloc] initWithData:v11 format:1 error:&v22];
        v14 = v22;

        if (!v13)
        {
          PXAssertGetLog();
        }

        v19 = PLStoryGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v15 path];
          *buf = 138543618;
          v28 = v3;
          v29 = 2114;
          v30 = v20;
          _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_INFO, "Color cube for grade '%{public}@' loaded from on-device file at %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v13 = 0;
        v14 = v18;
      }
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    goto LABEL_15;
  }

  v25 = v12;
  v13 = [[off_1E77215F0 alloc] initWithData:v11 format:1 error:&v25];
  v14 = v25;

  if (!v13)
  {
    PXAssertGetLog();
  }

  v15 = PLStoryGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v10 path];
    *buf = 138543618;
    v28 = v3;
    v29 = 2114;
    v30 = v16;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_INFO, "Color cube for grade '%{public}@' loaded from uncompressed on-device file at %{public}@", buf, 0x16u);
LABEL_15:
  }

  return v13;
}

- (id)_createCustomColorLookupCubeForResourceName:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXStoryConcreteColorGradingRepository *)self _loadCustomColorLookupCubeForResourceName:v4];
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = +[PXStorySettings sharedInstance];
  [v6 colorGradeBlendingFactor];
  if (v7 != 0.0)
  {
    v8 = v7;
    v9 = [(PXStoryConcreteColorGradingRepository *)self _loadCustomColorLookupCubeForResourceName:@"neutral"];
    if (v9)
    {
      *&v10 = v8;
      v11 = [v5 blendWithCube:v9 factor:v10];
      v12 = PLStoryGetLog();
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *v26 = 138543618;
          *&v26[4] = v4;
          *&v26[12] = 2048;
          *&v26[14] = v8;
          v14 = "Blended color cube '%{public}@' with neutral LUT with factor: %0.01f";
          v15 = v13;
          v16 = OS_LOG_TYPE_INFO;
          v17 = 22;
LABEL_12:
          _os_log_impl(&dword_1A3C1C000, v15, v16, v14, v26, v17);
        }

LABEL_13:

        goto LABEL_14;
      }

      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *v26 = 138543362;
      *&v26[4] = v4;
      v14 = "Failed to blend color cube '%{public}@' with neutral LUT: size mismatch";
    }

    else
    {
      v13 = PLStoryGetLog();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *v26 = 138543362;
      *&v26[4] = v4;
      v14 = "Failed to blend color cube '%{public}@' with neutral LUT: failed to load neutral LUT";
    }

    v15 = v13;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 12;
    goto LABEL_12;
  }

LABEL_14:
  [v6 colorGradeSmoothingFactor];
  v19 = v18;
  v20 = [v6 colorGradeSmoothingPasses];
  if (v19 != 0.0 && v20 >= 1)
  {
    v22 = v20;
    v23 = PLStoryGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *v26 = 138543874;
      *&v26[4] = v4;
      *&v26[12] = 2048;
      *&v26[14] = v19;
      *&v26[22] = 2048;
      v27 = v22;
      _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_INFO, "Smoothing color cube '%{public}@' with factor: %0.2f, %ld passes", v26, 0x20u);
    }

    do
    {
      *&v24 = v19;
      [v5 smoothWithFactor:v24];
      --v22;
    }

    while (v22);
  }

  [(PXStoryConcreteColorGradingRepository *)self _writeTemporaryFileWithCompressedColorCube:v5 forResourceName:v4];

LABEL_23:

  return v5;
}

- (id)_createColorLookupCubeForColorGradeKind:(int64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [(PXStoryConcreteColorGradingRepository *)self _cubeResourceNameForColorGradeKind:?];
  if (v5)
  {
    v6 = [(PXStoryConcreteColorGradingRepository *)self _createCustomColorLookupCubeForResourceName:v5];
    if (!v6)
    {
      v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v8 = [v7 URLForResource:v5 withExtension:@"zcube" subdirectory:@"Grades"];

      if (v8)
      {
        v17 = 0;
        v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v8 options:1 error:&v17];
        v10 = v17;
        if (!v9)
        {
          PXAssertGetLog();
        }

        v16 = v10;
        v11 = [MEMORY[0x1E69C0948] decompressData:v9 options:0 error:&v16];
        v12 = v16;

        if (!v11)
        {
          PXAssertGetLog();
        }

        v6 = [[off_1E77216F8 alloc] initWithData:v11 edgeSize:llround(cbrt((objc_msgSend(v11 pixelFormat:"length") >> 2))), 70];
        if (!v6)
        {
          PXAssertGetLog();
        }

        v13 = PLStoryGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v8 lastPathComponent];
          *buf = 138543618;
          v19 = v5;
          v20 = 2114;
          v21 = v14;
          _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_INFO, "Color cube for grade '%{public}@' loaded from resource: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        if (a3 >= 2)
        {
          PXAssertGetLog();
        }

        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_cachedColorLookupCubeForColorGradeKind:(int64_t)a3
{
  v5 = [(PXStoryConcreteColorGradingRepository *)self colorLookupCubeCache];
  if (a3 < 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  }

  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = [v5 objectForKey:v6];
  if (!v8)
  {
    v9 = [(PXStoryConcreteColorGradingRepository *)self _createColorLookupCubeForColorGradeKind:a3];
    v8 = v9;
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    [v5 setObject:v10 forKey:v6];
  }

  if (v8 == v7)
  {

    v8 = 0;
  }

  return v8;
}

- (id)_cubeResourceNameForColorGradeKind:(int64_t)a3
{
  v4 = [(PXStoryConcreteColorGradingRepository *)self configuration];
  v5 = [v4 objectAtIndexedSubscript:a3];

  v6 = [v5 resource];

  return v6;
}

- (void)_enumerateSupporedColorGradeCategoriesUsingBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v3[2](v3, 0);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = PFStoryColorGradeSupportedCategories();
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3[2](v3, *(*(&v9 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)startPreloadingWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryConcreteColorGradingRepository *)self log];
  v6 = os_signpost_id_make_with_pointer(v5, self);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "StoryColorLookupCubePreloading", "", buf, 2u);
  }

  v9 = dispatch_group_create();
  v10 = [off_1E7721858 sharedScheduler];
  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78__PXStoryConcreteColorGradingRepository_startPreloadingWithCompletionHandler___block_invoke;
  v19[3] = &unk_1E7745F98;
  v11 = v9;
  v20 = v11;
  v12 = v10;
  v21 = v12;
  objc_copyWeak(&v22, buf);
  [(PXStoryConcreteColorGradingRepository *)self _enumerateSupporedColorGradeCategoriesUsingBlock:v19];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__PXStoryConcreteColorGradingRepository_startPreloadingWithCompletionHandler___block_invoke_3;
  v15[3] = &unk_1E774C508;
  v17 = v4;
  v18 = v6;
  v16 = v8;
  v13 = v4;
  v14 = v8;
  dispatch_group_notify(v11, MEMORY[0x1E69E96A0], v15);

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

void __78__PXStoryConcreteColorGradingRepository_startPreloadingWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__PXStoryConcreteColorGradingRepository_startPreloadingWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E774B708;
  objc_copyWeak(&v9, (a1 + 48));
  v5 = v3;
  v7 = v5;
  v8 = *(a1 + 32);
  [v4 scheduleTaskWithQoS:1 block:v6];

  objc_destroyWeak(&v9);
}

uint64_t __78__PXStoryConcreteColorGradingRepository_startPreloadingWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "StoryColorLookupCubePreloading", "", v6, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __78__PXStoryConcreteColorGradingRepository_startPreloadingWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained colorGradeKindForColorGradeCategory:*(a1 + 32)];

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 colorLookupCubeForColorGradeKind:v3];

  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

- (PXStoryConcreteColorGradingRepository)initWithOptions:(unint64_t)a3
{
  v3 = a3;
  v13.receiver = self;
  v13.super_class = PXStoryConcreteColorGradingRepository;
  v4 = [(PXStoryConcreteColorGradingRepository *)&v13 init];
  if (v4)
  {
    v5 = *MEMORY[0x1E69BFF60];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = os_log_create(v5, [v7 UTF8String]);
    log = v4->_log;
    v4->_log = v8;

    if ((v3 & 1) == 0)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      colorLookupCubeCache = v4->_colorLookupCubeCache;
      v4->_colorLookupCubeCache = v10;
    }
  }

  return v4;
}

@end