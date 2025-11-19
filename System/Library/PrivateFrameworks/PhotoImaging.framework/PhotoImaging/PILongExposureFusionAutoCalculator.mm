@interface PILongExposureFusionAutoCalculator
- (void)_computeCleanAperture:(id)a3;
- (void)submit:(id)a3;
@end

@implementation PILongExposureFusionAutoCalculator

- (void)submit:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v27 = NUAssertLogger_5886();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v37 = v28;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v5 = NUAssertLogger_5886();
    v29 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v30 = dispatch_get_specific(*v15);
        v31 = MEMORY[0x1E696AF00];
        specific = v30;
        v15 = [v31 callStackSymbols];
        v32 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v30;
        v38 = 2114;
        v39 = v32;
        _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v15;
      _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
    goto LABEL_25;
  }

  v5 = v4;
  v6 = [(NURenderRequest *)self composition];
  v7 = [v6 mediaType];

  if (v7 == 3)
  {
    v8 = [(NURenderRequest *)self composition];
    specific = [v8 objectForKeyedSubscript:@"autoLoop"];

    v10 = [specific objectForKeyedSubscript:@"enabled"];
    v11 = [v10 BOOLValue];

    v12 = [specific objectForKeyedSubscript:@"flavor"];
    v13 = PIAutoLoopFlavorFromString(v12);

    v14 = [specific objectForKeyedSubscript:@"recipe"];
    v15 = v14;
    if (!specific || !v11 || v13 != 3 || !v14)
    {
      v20 = MEMORY[0x1E69B3A48];
      v21 = [(PILongExposureFusionAutoCalculator *)self copy];
      v22 = [v20 invalidError:@"PILongExposureFusionAutoCalculator requires a long-exposure adjustment" object:v21];

      v23 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v22];
      (*(v5 + 16))(v5, v23);

      goto LABEL_11;
    }

    if (PIAutoLoopRecipeHasGoodStabilization(v14))
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __45__PILongExposureFusionAutoCalculator_submit___block_invoke;
      v33[3] = &unk_1E82AA2D0;
      v35 = v5;
      v33[4] = self;
      v34 = v15;
      [(PILongExposureFusionAutoCalculator *)self _computeCleanAperture:v33];

LABEL_11:
      goto LABEL_12;
    }

    if (*MEMORY[0x1E69B3D78] == -1)
    {
LABEL_14:
      v24 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7694000, v24, OS_LOG_TYPE_INFO, "AL stabilization failure: not running fusion registration", buf, 2u);
      }

      v25 = objc_alloc(MEMORY[0x1E69B3C78]);
      v26 = [v25 initWithResult:MEMORY[0x1E695E0F8]];
      (*(v5 + 16))(v5, v26);

      goto LABEL_11;
    }

LABEL_25:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_57);
    goto LABEL_14;
  }

  v16 = MEMORY[0x1E69B3A48];
  v17 = [(PILongExposureFusionAutoCalculator *)self copy];
  v18 = [v16 invalidError:@"PILongExposureFusionAutoCalculator requires a live-photo composition" object:v17];

  v19 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v18];
  (*(v5 + 16))(v5, v19);

LABEL_12:
}

void __45__PILongExposureFusionAutoCalculator_submit___block_invoke(uint64_t a1, __int128 *a2, void *a3)
{
  v5 = a3;
  v6 = a2[1];
  v13 = *a2;
  v14 = v6;
  if (NUPixelRectIsNull())
  {
    v7 = [MEMORY[0x1E69B3A48] errorWithCode:2 reason:@"Failed to get clean aperture values" object:0 underlyingError:v5];
    v8 = *(a1 + 48);
    v9 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v7];
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    v7 = [(NURenderRequest *)[PILongExposureRegistrationRequest alloc] initWithRequest:*(a1 + 32)];
    [(PILongExposureRegistrationRequest *)v7 setRecipe:*(a1 + 40)];
    v10 = a2[1];
    v13 = *a2;
    v14 = v10;
    [(PILongExposureRegistrationRequest *)v7 setCleanAperture:&v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__PILongExposureFusionAutoCalculator_submit___block_invoke_2;
    v11[3] = &unk_1E82ACA08;
    v12 = *(a1 + 48);
    [(PILongExposureRegistrationRequest *)v7 submit:v11];
    v9 = v12;
  }
}

void __45__PILongExposureFusionAutoCalculator_submit___block_invoke_2(uint64_t a1, void *a2)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v24 = 0;
  v3 = [a2 result:&v24];
  v4 = v24;
  if (v3)
  {
    v5 = [v3 observation];
    v6 = v5;
    if (v5)
    {
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      [v5 warpTransform];
      v29 = __invert_f3(v28);
      DWORD2(v21) = v29.columns[0].i32[2];
      DWORD2(v22) = v29.columns[1].i32[2];
      *&v21 = v29.columns[0].i64[0];
      *&v22 = v29.columns[1].i64[0];
      DWORD2(v23) = v29.columns[2].i32[2];
      *&v23 = v29.columns[2].i64[0];
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:9];
      for (i = 0; i != 3; ++i)
      {
        for (j = 0; j != 48; j += 16)
        {
          LODWORD(v8) = *(&v21 + 4 * (i & 3) + j);
          v11 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
          [v7 addObject:v11];
        }
      }

      [v3 extent];
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:0];
      v27[0] = v12;
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:0];
      v27[1] = v13;
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:0];
      v27[2] = v14;
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:0];
      v27[3] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];

      v17 = objc_alloc(MEMORY[0x1E69B3C78]);
      v25[0] = @"transform";
      v25[1] = @"extent";
      v26[0] = v7;
      v26[1] = v16;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
      v19 = [v17 initWithResult:v18];
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x1E69B3C78]);
      v19 = [v20 initWithResult:MEMORY[0x1E695E0F8]];
    }
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_computeCleanAperture:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69B3D28]) initWithRequest:self];
  [v5 setName:@"PILongExposureFusionAutoCalculator-videoProperties"];
  v6 = [MEMORY[0x1E69B3C30] stopAtTagFilter:@"pre-AutoLoop"];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v5 setPipelineFilters:v7];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PILongExposureFusionAutoCalculator__computeCleanAperture___block_invoke;
  v9[3] = &unk_1E82ACA08;
  v10 = v4;
  v8 = v4;
  [v5 submit:v9];
}

void __60__PILongExposureFusionAutoCalculator__computeCleanAperture___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(MEMORY[0x1E69B3900] + 16);
  v14 = *MEMORY[0x1E69B3900];
  v15 = v3;
  v13 = 0;
  v4 = [a2 result:&v13];
  v6 = v13;
  if (v4)
  {
    v7 = [v4 properties];
    v8 = v7;
    if (v7)
    {
      [v7 cleanAperture];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v14 = v11;
    v15 = v12;
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  v11 = v14;
  v12 = v15;
  v10(v9, &v11, v6, v5);
}

@end