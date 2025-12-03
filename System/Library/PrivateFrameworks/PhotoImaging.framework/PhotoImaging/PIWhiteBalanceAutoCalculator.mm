@interface PIWhiteBalanceAutoCalculator
- ($7CC5A320EBB83734983E5E759578C212)_chooseNeutralGrayForNonSushi:(id *)sushi;
- ($7CC5A320EBB83734983E5E759578C212)_correctedRGBResultFromResult:(id)result;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_chooseTempTintForSushi:(id *)sushi RAWProperties:(id)properties brightness:(double)brightness;
- (BOOL)_useTempTint:(id)tint;
- (void)submit:(id)submit;
@end

@implementation PIWhiteBalanceAutoCalculator

- ($F24F406B2B787EFB06265DBA3D28CBD5)_chooseTempTintForSushi:(id *)sushi RAWProperties:(id)properties brightness:(double)brightness
{
  propertiesCopy = properties;
  v8 = [propertiesCopy inputNeutralXYFromRGB:&sushi->var1];
  v9 = [v8 objectAtIndexedSubscript:0];
  [v9 doubleValue];
  v11 = v10;
  v42 = v10;

  v12 = [v8 objectAtIndexedSubscript:1];
  [v12 doubleValue];
  v14 = v13;
  v41 = v13;

  v15 = [propertiesCopy inputNeutralXYFromRGB:sushi];

  v16 = [v15 objectAtIndexedSubscript:0];
  [v16 doubleValue];
  v18 = v17;
  v40 = v17;

  v19 = [v15 objectAtIndexedSubscript:1];
  [v19 doubleValue];
  v21 = v20;
  v39 = v20;

  v22 = sqrt(v21 * v21 + v18 * v18) * 0.466690494;
  v23 = 0.0;
  v24 = 0.0;
  if (v22 > 0.0)
  {
    v24 = acos((v21 * 0.330000013 + v18 * 0.330000013) / v22) * 180.0 / 3.14159265;
  }

  v25 = sqrt(v14 * v14 + v11 * v11) * 0.466690494;
  if (v25 > 0.0)
  {
    v23 = acos((v14 * 0.330000013 + v11 * 0.330000013) / v25) * 180.0 / 3.14159265;
  }

  if (v23 >= v24 || vabdd_f64(v23, v24) <= 0.01)
  {
    v27 = &v40;
    v28 = &v39;
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_303);
    }

    v26 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C7694000, v26, OS_LOG_TYPE_DEBUG, "Choosing gray world instead of gray edge", buf, 2u);
    }

    v27 = &v42;
    v28 = &v41;
    v21 = v14;
    v18 = v11;
  }

  v29 = sqrt((v21 + -0.358500004) * (v21 + -0.358500004) + (v18 + -0.345699996) * (v18 + -0.345699996));
  if (v29 <= 0.0)
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.112999998 / v29;
  }

  v31 = pow(fmin(v30, 1.0), 0.330000013);
  if (v31 < 0.5)
  {
    v31 = 0.5;
  }

  v32 = v31 + (1.0 - v31) * 0.125;
  *v27 = (1.0 - v32) * 0.345699996 + v32 * v18;
  *v28 = (1.0 - v32) * 0.358500004 + v32 * v21;
  *buf = 0.0;
  nu_xy_to_tempTint();
  v33 = fmax(fmin(1.0 - pow(fmax(brightness + -5.0, 0.0) / 5.0, 0.330000013), 1.0), 0.0);
  v34 = (1.0 - v33) * dbl_1C7845D40[*buf > 6500.0] + v33 * *v27;
  v35 = (1.0 - v33) * dbl_1C7845D50[*buf > 6500.0] + v33 * *v28;

  v36 = v34;
  v37 = v35;
  result.var1 = v37;
  result.var0 = v36;
  return result;
}

- ($7CC5A320EBB83734983E5E759578C212)_chooseNeutralGrayForNonSushi:(id *)sushi
{
  v3 = sushi->var0.var0[0];
  v4 = sushi->var0.var0[1];
  v5 = sushi->var0.var0[2];
  v6 = sushi->var0.var0[3];
  v7 = sushi->var1.var0[0];
  v8 = sushi->var1.var0[1];
  v9 = sushi->var1.var0[2];
  v10 = sqrt((v4 + -1.0) * (v4 + -1.0) + (sushi->var0.var0[0] + -1.0) * (sushi->var0.var0[0] + -1.0) + (v5 + -1.0) * (v5 + -1.0));
  v11 = sqrt((v8 + -1.0) * (v8 + -1.0) + (v7 + -1.0) * (v7 + -1.0) + (v9 + -1.0) * (v9 + -1.0));
  if (v11 < v10 && vabdd_f64(v11, v10) > 0.01)
  {
    v6 = sushi->var1.var0[3];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_303);
    }

    v12 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_debug_impl(&dword_1C7694000, v12, OS_LOG_TYPE_DEBUG, "Choosing gray world instead of gray edge", v14, 2u);
    }

    v5 = v9;
    v4 = v8;
    v3 = v7;
  }

  v13 = v6;
  result.var0[3] = v13;
  result.var0[2] = v5;
  result.var0[1] = v4;
  result.var0[0] = v3;
  return result;
}

- ($7CC5A320EBB83734983E5E759578C212)_correctedRGBResultFromResult:(id)result
{
  v3 = result.var0[2];
  v4 = result.var0[1];
  v5 = result.var0[0];
  result.var0[0] = result.var0[1] * -0.0276515931 + result.var0[0] * 1.02395463 + result.var0[2] * 0.0029618456;
  v19 = *result.var0;
  *v6.i64 = pow(fabs(result.var0[0]), 0.25);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vnegq_f64(v7);
  v9 = vbslq_s8(v8, v6, v19);
  v19.i64[0] = v9.i64[0];
  v20 = v8;
  *v9.i64 = v4 * 0.949478984 + v5 * 0.0207923874 + v3 * 0.0304754861;
  v18 = v9;
  *v10.i64 = pow(fabs(*v9.i64), 0.25);
  v11 = vbslq_s8(v20, v10, v18);
  v18.i64[0] = v11.i64[0];
  *v11.i64 = v4 * -0.00190263637 + v5 * -0.0020549444 + v3 * 1.00394022;
  v17 = v11;
  *v12.i64 = pow(fabs(*v11.i64), 0.25);
  *&v13 = vbslq_s8(v20, v12, v17).u64[0];
  v14 = 1.0;
  v16 = *v18.i64;
  v15 = *v19.i64;
  result.var0[3] = v14;
  result.var0[2] = v13;
  result.var0[1] = v16;
  result.var0[0] = v15;
  return result;
}

- (BOOL)_useTempTint:(id)tint
{
  tintCopy = tint;
  v4 = 0.0;
  v5 = 0.0;
  YIQFromRGB(tintCopy.var0, &v6, &v5, &v4, 0.0, 1.0, 0.0);
  return sqrt(v4 * v4 + v5 * v5) > 0.0399999991;
}

- (void)submit:(id)submit
{
  v30 = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  if (!submitCopy)
  {
    v10 = NUAssertLogger_7479();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_7479();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(*v12);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v18;
        v28 = 2114;
        v29 = v22;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v17;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = submitCopy;
  composition = [(NURenderRequest *)self composition];
  v7 = [objc_alloc(MEMORY[0x1E69B3B30]) initWithRequest:self];
  [v7 setName:@"PIWhiteBalanceAutoCalculator-imageProperties"];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __39__PIWhiteBalanceAutoCalculator_submit___block_invoke;
  v23[3] = &unk_1E82AC510;
  v24 = composition;
  v25 = v5;
  v23[4] = self;
  v8 = composition;
  v9 = v5;
  [v7 submit:v23];
}

void __39__PIWhiteBalanceAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v58[0] = 0;
  v4 = [v3 result:v58];
  v5 = v58[0];
  v6 = [v4 properties];

  if (v6)
  {
    v7 = [v6 rawProperties];
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = __Block_byref_object_copy__7505;
    v56[4] = __Block_byref_object_dispose__7506;
    v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x3032000000;
    v54[3] = __Block_byref_object_copy__7505;
    v54[4] = __Block_byref_object_dispose__7506;
    v55 = 0;
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x3032000000;
    v52[3] = __Block_byref_object_copy__7505;
    v52[4] = __Block_byref_object_dispose__7506;
    v53 = 0;
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x3032000000;
    v50[3] = __Block_byref_object_copy__7505;
    v50[4] = __Block_byref_object_dispose__7506;
    v51 = 0;
    v8 = dispatch_group_create();
    v9 = [[PIFaceBalanceAutoCalculator alloc] initWithRequest:*(a1 + 32) isRAW:v7 != 0];
    v10 = dispatch_queue_create("PIFaceBalanceAutoCalculator.responseQueue", 0);
    [(NURenderRequest *)v9 setResponseQueue:v10];

    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x3032000000;
    v48[3] = __Block_byref_object_copy__7505;
    v48[4] = __Block_byref_object_dispose__7506;
    v49 = 0;
    dispatch_group_enter(v8);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __39__PIWhiteBalanceAutoCalculator_submit___block_invoke_2;
    v43[3] = &unk_1E82AA6A0;
    v45 = v54;
    v46 = v56;
    v47 = v48;
    v11 = v8;
    v44 = v11;
    [(PIFaceBalanceAutoCalculator *)v9 submit:v43];
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x4010000000;
    v40[3] = &unk_1C788B126;
    v41 = 0u;
    v42 = 0u;
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3010000000;
    v39[4] = 0;
    v39[5] = 0;
    v39[3] = &unk_1C788B126;
    v12 = [[_PIWhiteColorCalculator alloc] initWithComposition:*(a1 + 40) useSushi:0];
    dispatch_group_enter(v11);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __39__PIWhiteBalanceAutoCalculator_submit___block_invoke_3;
    v35[3] = &unk_1E82AA450;
    v13 = *(a1 + 32);
    v37 = v40;
    v35[4] = v13;
    v38 = v52;
    v14 = v11;
    v36 = v14;
    [(_PIWhiteColorCalculator *)v12 calculateColorWithProperties:v6 completion:v35];
    if (v7)
    {
      v19 = v9;
      v15 = [[_PIWhiteColorCalculator alloc] initWithComposition:*(a1 + 40) useSushi:1];
      dispatch_group_enter(v14);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __39__PIWhiteBalanceAutoCalculator_submit___block_invoke_4;
      v30[3] = &unk_1E82AA4A0;
      v16 = *(a1 + 32);
      v33 = v39;
      v30[4] = v16;
      v31 = v6;
      v34 = v50;
      v32 = v14;
      [(_PIWhiteColorCalculator *)v15 calculateColorWithProperties:v31 completion:v30];
    }

    v17 = [*(a1 + 32) responseQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PIWhiteBalanceAutoCalculator_submit___block_invoke_5;
    block[3] = &unk_1E82AA4C8;
    v22 = v54;
    v18 = *(a1 + 48);
    v23 = v52;
    v24 = v50;
    block[4] = *(a1 + 32);
    v21 = v18;
    v25 = v40;
    v26 = v56;
    v29 = v7 != 0;
    v27 = v48;
    v28 = v39;
    dispatch_group_notify(v14, v17, block);

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(v40, 8);

    _Block_object_dispose(v48, 8);
    _Block_object_dispose(v50, 8);

    _Block_object_dispose(v52, 8);
    _Block_object_dispose(v54, 8);

    _Block_object_dispose(v56, 8);
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v5];
    (*(*(a1 + 48) + 16))();
  }
}

void __39__PIWhiteBalanceAutoCalculator_submit___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = 0;
  v3 = [a2 result:&v26];
  v4 = v26;
  if (!v3)
  {
    v24 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    v25 = *(*(a1 + 40) + 8);
    v6 = *(v25 + 40);
    *(v25 + 40) = v24;
    goto LABEL_10;
  }

  v5 = [v3 objectForKeyedSubscript:@"OrigI"];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 objectForKeyedSubscript:@"OrigQ"];
    if (!v7)
    {
LABEL_10:

      goto LABEL_11;
    }

    v8 = v7;
    v9 = [v3 objectForKeyedSubscript:@"Warmth"];
    if (!v9)
    {

      goto LABEL_10;
    }

    v10 = v9;
    v11 = [v3 objectForKeyedSubscript:@"Strength"];

    if (v11)
    {
      v12 = [v3 objectForKeyedSubscript:@"OrigI"];
      [*(*(*(a1 + 48) + 8) + 40) setObject:v12 forKeyedSubscript:@"faceI"];

      v13 = [v3 objectForKeyedSubscript:@"OrigQ"];
      [*(*(*(a1 + 48) + 8) + 40) setObject:v13 forKeyedSubscript:@"faceQ"];

      v14 = [v3 objectForKeyedSubscript:@"Warmth"];
      [*(*(*(a1 + 48) + 8) + 40) setObject:v14 forKeyedSubscript:@"faceWarmth"];

      v15 = [v3 objectForKeyedSubscript:@"Strength"];
      [*(*(*(a1 + 48) + 8) + 40) setObject:v15 forKeyedSubscript:@"faceStrength"];

      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = @"faceBalance";

      v18 = [v3 objectForKeyedSubscript:@"WarmTint"];
      if (v18)
      {
        v19 = v18;
        v20 = [v3 objectForKeyedSubscript:@"WarmTemp"];

        if (v20)
        {
          v21 = [v3 objectForKeyedSubscript:@"WarmTemp"];
          [*(*(*(a1 + 48) + 8) + 40) setObject:v21 forKeyedSubscript:@"warmTemp"];

          v22 = [v3 objectForKeyedSubscript:@"WarmTint"];
          [*(*(*(a1 + 48) + 8) + 40) setObject:v22 forKeyedSubscript:@"warmTint"];

          v23 = *(*(a1 + 56) + 8);
          v6 = *(v23 + 40);
          *(v23 + 40) = @"warmTint";
          goto LABEL_10;
        }
      }
    }
  }

LABEL_11:
  dispatch_group_leave(*(a1 + 32));
}

void __39__PIWhiteBalanceAutoCalculator_submit___block_invoke_3(uint64_t a1, void *a2)
{
  v21 = 0;
  v3 = [a2 result:&v21];
  v4 = v21;
  if (v3)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    [v3 pi_grayColorResultValue];
    v5 = *(a1 + 32);
    v14[2] = v18;
    v14[3] = v19;
    v15 = v20;
    v14[0] = v16;
    v14[1] = v17;
    [v5 _chooseNeutralGrayForNonSushi:v14];
    v6 = *(*(a1 + 48) + 8);
    v6[4] = v7;
    v6[5] = v8;
    v6[6] = v9;
    v6[7] = v10;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  dispatch_group_leave(*(a1 + 40));
}

void __39__PIWhiteBalanceAutoCalculator_submit___block_invoke_4(uint64_t a1, void *a2)
{
  v20 = 0;
  v3 = [a2 result:&v20];
  v4 = v20;
  if (v3)
  {
    v19 = 0.0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    [v3 pi_grayColorResultValue];
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) rawProperties];
    v13[2] = v17;
    v13[3] = v18;
    v14 = v19;
    v13[0] = v15;
    v13[1] = v16;
    [v5 _chooseTempTintForSushi:v13 RAWProperties:v6 brightness:v19];
    v7 = *(*(a1 + 56) + 8);
    *(v7 + 32) = v8;
    *(v7 + 40) = v9;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  dispatch_group_leave(*(a1 + 48));
}

void __39__PIWhiteBalanceAutoCalculator_submit___block_invoke_5(uint64_t a1)
{
  if (!*(*(*(a1 + 48) + 8) + 40) && !*(*(*(a1 + 56) + 8) + 40) && !*(*(*(a1 + 64) + 8) + 40))
  {
    [*(a1 + 32) _correctedRGBResultFromResult:{*(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 72) + 8) + 48), *(*(*(a1 + 72) + 8) + 56)}];
    v3 = [MEMORY[0x1E696B098] valueWithRGBResult:?];
    [*(*(*(a1 + 80) + 8) + 40) setObject:v3 forKeyedSubscript:@"grayColor"];

    nu_rgb_to_tempTint();
    v4 = *(*(a1 + 88) + 8);
    if (*(v4 + 40))
    {
LABEL_14:
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [*(*(*(a1 + 80) + 8) + 40) setObject:v8 forKeyedSubscript:@"temperature"];

      v9 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(fmin(0.0, 150.0), -150.0)}];
      [*(*(*(a1 + 80) + 8) + 40) setObject:v9 forKeyedSubscript:@"tint"];

      [*(*(*(a1 + 80) + 8) + 40) setObject:*(*(*(a1 + 88) + 8) + 40) forKeyedSubscript:@"colorType"];
      v10 = *(a1 + 40);
      v11 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:*(*(*(a1 + 80) + 8) + 40)];
      (*(v10 + 16))(v10, v11);

      return;
    }

    if (*(a1 + 104))
    {
      nu_xy_to_tempTint();
      v5 = [*(a1 + 32) _useTempTint:{*(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 72) + 8) + 48), *(*(*(a1 + 72) + 8) + 56)}];
      v4 = *(*(a1 + 88) + 8);
      v6 = *(v4 + 40);
      if (v5)
      {
        v7 = @"tempTint";
LABEL_13:
        *(v4 + 40) = v7;

        goto LABEL_14;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = @"neutralGray";
    goto LABEL_13;
  }

  v2 = *(*(a1 + 40) + 16);

  v2();
}

@end