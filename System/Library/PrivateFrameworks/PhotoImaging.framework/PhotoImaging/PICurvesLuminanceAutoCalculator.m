@interface PICurvesLuminanceAutoCalculator
- (CGPoint)curvePointAtIndex:(int)a3 blackPoint:(double)a4 whitePoint:(double)a5 histogram:(id)a6;
- (id)computeCurvesForImageHistogram:(id)a3;
@end

@implementation PICurvesLuminanceAutoCalculator

- (CGPoint)curvePointAtIndex:(int)a3 blackPoint:(double)a4 whitePoint:(double)a5 histogram:(id)a6
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = 0;
  v51[2] = xmmword_1C784CDF8;
  v51[3] = unk_1C784CE08;
  v51[4] = xmmword_1C784CE18;
  v51[0] = xmmword_1C784CDD8;
  v51[1] = unk_1C784CDE8;
  v47 = 0.0;
  v48 = 0;
  v49 = xmmword_1C7845E20;
  v50 = xmmword_1C7845E30;
  v45 = 0u;
  v46 = 0u;
  v41 = a4;
  v42 = xmmword_1C7845E20;
  v43 = 0x3FE8000000000000;
  v44 = a5;
  do
  {
    [v9 percentile:*(&v41 + v10)];
    *(&v45 + v10) = v11;
    v10 += 8;
  }

  while (v10 != 40);
  v12 = 0;
  v39 = 0.0;
  v40 = 0.0;
  do
  {
    [v9 percentile:*&qword_1C7845EB0[v12]];
    *(&v39 + v12 * 8) = v13;
    ++v12;
  }

  while (v12 != 2);
  v14 = v39;
  if (v39 > 0.01 || (v14 = v40, v40 > 0.01))
  {
    v16 = fmin((v14 + -0.01) / 0.03, 1.0);
    v15 = (1.0 - v16) * *&v45 + v16 * v14;
  }

  else
  {
    v15 = *&v45;
  }

  v17 = 0;
  v18 = fmin(v15 + 1.0 - v47, 1.0);
  v19 = v15 * (sqrt(v15) * -0.65 + 1.0) * 0.75;
  v20 = (1.0 - v47) * fmin(fmax((1.0 - v47) * -0.8 + 1.0, 0.6), 1.0) * -0.5 + 1.0;
  v21 = 1.0 / (v20 - v19);
  *&v45 = v19;
  *(&v45 + 1) = (*(&v45 + 1) + (*&v46 - v19 + 1.0) * v19 + (*&v46 - v19 + 1.0) * *&v46) / ((*&v46 - v19) * 2.0 + 3.0);
  *(&v46 + 1) = (*(&v46 + 1) + (v20 - *&v46 + 1.0) * v20 + (v20 - *&v46 + 1.0) * *&v46) / ((v20 - *&v46) * 2.0 + 3.0);
  v47 = v20;
  v22 = fmax(v18 * -2.0 + 1.0, 0.0);
  v23 = (*&v46 - v19) * v21;
  v24 = (1.0 - v22) * v21;
  *&v49 = v24 * (*(&v45 + 1) - v19) + v22 * fmin((v23 + 0.0) * 0.5, v21 * (*(&v45 + 1) - v19));
  *(&v49 + 1) = v23;
  *&v50 = v24 * (*(&v46 + 1) - v19) + v22 * fmax((v23 + 1.0) * 0.5, v21 * (*(&v46 + 1) - v19));
  v25 = v51 + 1;
  do
  {
    v26 = *(&v48 + v17);
    *(v25 - 1) = *(&v45 + v17);
    *v25 = v26;
    v17 += 8;
    v25 += 2;
  }

  while (v17 != 40);
  v27 = 0;
  for (i = 0; i != 4; ++i)
  {
    v29 = *&v51[i];
    v30 = v27;
    do
    {
      v31 = (v51 + v30);
      v32 = *(&v51[1] + v30);
      if (v29 == v32)
      {
        *v31 = v29 + -0.001;
      }

      v33 = v31[1];
      if (v33 == v31[3])
      {
        v31[1] = v33 + -0.001;
      }

      v30 += 16;
      v29 = v32;
    }

    while (v30 != 64);
    v27 += 16;
  }

  v34 = &v51[a3 % 5];
  v35 = *v34;
  v36 = v34[1];

  v37 = v35;
  v38 = v36;
  result.y = v38;
  result.x = v37;
  return result;
}

- (id)computeCurvesForImageHistogram:(id)a3
{
  v5 = 0;
  v55 = *MEMORY[0x1E69E9840];
  v6 = &v53;
  do
  {
    v7 = [a3 luminance];
    [(PICurvesLuminanceAutoCalculator *)self curvePointAtIndex:v5 blackPoint:v7 whitePoint:0.001 histogram:0.999];
    *(v6 - 1) = v8;
    *v6 = v9;

    ++v5;
    v6 += 2;
  }

  while (v5 != 5);
  v10 = v52[0];
  v11 = v54;
  v12 = [PICurvesAutoCalculator autoValuesForBlackPoint:*v52 whitePoint:v54];
  v13 = [v12 mutableCopy];

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_114);
  }

  v14 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v48 = v10;
    _os_log_debug_impl(&dword_1C7694000, v14, OS_LOG_TYPE_DEBUG, "s-curve black: %f", buf, 0xCu);
  }

  v16 = 1;
  *&v15 = 67109632;
  v40 = v15;
  do
  {
    v17 = [[PICurveControlPoint alloc] initWithX:1 y:*&v52[2 * v16] editable:*&v52[2 * v16 + 1]];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = v13;
    v19 = [v18 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v42;
      while (2)
      {
        v23 = 0;
        v24 = v21;
        v21 += v20;
        do
        {
          if (*v42 != v22)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v41 + 1) + 8 * v23) x];
          v26 = v25;
          [(PICurveControlPoint *)v17 x];
          if (v26 > v27)
          {
            v21 = v24;
            goto LABEL_19;
          }

          ++v24;
          ++v23;
        }

        while (v20 != v23);
        v20 = [v18 countByEnumeratingWithState:&v41 objects:v51 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v21 = 0;
    }

LABEL_19:

    [v18 insertObject:v17 atIndex:v21];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_114);
    }

    v28 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      v29 = v28;
      [(PICurveControlPoint *)v17 x];
      v31 = v30;
      [(PICurveControlPoint *)v17 y];
      *buf = v40;
      *v48 = v16;
      *&v48[4] = 2048;
      *&v48[6] = v31;
      v49 = 2048;
      v50 = v32;
      _os_log_debug_impl(&dword_1C7694000, v29, OS_LOG_TYPE_DEBUG, "s-curve point %d: (%f, %f)", buf, 0x1Cu);
    }

    ++v16;
  }

  while (v16 != 4);
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_114);
  }

  v33 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v48 = v11;
    _os_log_debug_impl(&dword_1C7694000, v33, OS_LOG_TYPE_DEBUG, "s-curve white: %f", buf, 0xCu);
  }

  v34 = [[PICurveControlPoint alloc] initWithX:1 y:1.99 editable:1.99];
  [v18 addObject:v34];

  v35 = +[PICurvesAutoCalculator _defaultCurveArray];
  v36 = [PICurvesAutoCalculator dictionariesFromPoints:v35];
  v45[0] = @"RGBCurvePoints";
  v37 = [PICurvesAutoCalculator dictionariesFromPoints:v18];
  v46[0] = v37;
  v46[1] = v36;
  v45[1] = @"redCurvePoints";
  v45[2] = @"greenCurvePoints";
  v45[3] = @"blueCurvePoints";
  v46[2] = v36;
  v46[3] = v36;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:4];

  return v38;
}

@end