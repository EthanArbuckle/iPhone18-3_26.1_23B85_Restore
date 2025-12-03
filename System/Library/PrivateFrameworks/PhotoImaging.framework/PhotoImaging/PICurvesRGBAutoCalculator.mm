@interface PICurvesRGBAutoCalculator
- (id)computeCurvesForImageHistogram:(id)histogram;
@end

@implementation PICurvesRGBAutoCalculator

- (id)computeCurvesForImageHistogram:(id)histogram
{
  v43 = *MEMORY[0x1E69E9840];
  histogramCopy = histogram;
  v4 = [histogramCopy red];
  [v4 percentile:0.001];
  v6 = v5;

  v7 = [histogramCopy red];
  [v7 percentile:0.999];
  v9 = v8;

  v10 = [PICurvesAutoCalculator autoValuesForBlackPoint:v6 whitePoint:v9];
  v11 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_114);
  }

  v12 = MEMORY[0x1E69B3D80];
  v13 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v40 = v6;
    v41 = 2048;
    v42 = v9;
    _os_log_debug_impl(&dword_1C7694000, v13, OS_LOG_TYPE_DEBUG, "red curve: blackPoint = %f, whitePoint = %f", buf, 0x16u);
  }

  green = [histogramCopy green];
  [green percentile:0.001];
  v16 = v15;

  green2 = [histogramCopy green];
  [green2 percentile:0.999];
  v19 = v18;

  v20 = [PICurvesAutoCalculator autoValuesForBlackPoint:v16 whitePoint:v19];
  if (*v11 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_114);
  }

  v21 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v40 = v16;
    v41 = 2048;
    v42 = v19;
    _os_log_debug_impl(&dword_1C7694000, v21, OS_LOG_TYPE_DEBUG, "green curve: blackPoint = %f, whitePoint = %f", buf, 0x16u);
  }

  blue = [histogramCopy blue];
  [blue percentile:0.001];
  v24 = v23;

  blue2 = [histogramCopy blue];
  [blue2 percentile:0.999];
  v27 = v26;

  v28 = [PICurvesAutoCalculator autoValuesForBlackPoint:v24 whitePoint:v27];
  if (*v11 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_114);
  }

  v29 = *v12;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v40 = v24;
    v41 = 2048;
    v42 = v27;
    _os_log_debug_impl(&dword_1C7694000, v29, OS_LOG_TYPE_DEBUG, "blue curve: blackPoint = %f, whitePoint = %f", buf, 0x16u);
  }

  v30 = +[PICurvesAutoCalculator _defaultCurveArray];
  v31 = [PICurvesAutoCalculator dictionariesFromPoints:v30, @"RGBCurvePoints"];
  v38[0] = v31;
  v37[1] = @"redCurvePoints";
  v32 = [PICurvesAutoCalculator dictionariesFromPoints:v10];
  v38[1] = v32;
  v37[2] = @"greenCurvePoints";
  v33 = [PICurvesAutoCalculator dictionariesFromPoints:v20];
  v38[2] = v33;
  v37[3] = @"blueCurvePoints";
  v34 = [PICurvesAutoCalculator dictionariesFromPoints:v28];
  v38[3] = v34;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:4];

  return v35;
}

@end