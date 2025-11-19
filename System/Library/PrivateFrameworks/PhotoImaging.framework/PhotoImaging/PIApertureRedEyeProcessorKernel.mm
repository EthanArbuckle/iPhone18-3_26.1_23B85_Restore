@interface PIApertureRedEyeProcessorKernel
+ ($721907E0E1CDE8B6CD3FA271A8B25860)ROIForCenterPoint:(SEL)a3 radius:(CGPoint)a4;
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (void)convertFixed16:(const unsigned __int16 *)a3 toFloat:(float *)a4 count:(unint64_t)a5;
+ (void)convertFloat:(const float *)a3 toFixed16:(unsigned __int16 *)a4 count:(unint64_t)a5;
@end

@implementation PIApertureRedEyeProcessorKernel

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  v5 = [a4 objectForKeyedSubscript:{@"ROI", a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 format];
  if (v11 != *MEMORY[0x1E695F918])
  {
    __assert_rtn("+[PIApertureRedEyeProcessorKernel processWithInputs:arguments:output:error:]", "PIApertureRedEyeFilter.mm", 88, "output.format == kCIFormatRGBAf");
  }

  v12 = [v10 baseAddress];
  v13 = [v10 bytesPerRow];
  [v10 region];
  v15 = v14;
  [v10 region];
  bzero(v12, (v16 * 16.0 + v13 * (v15 + -1.0)));
  v66 = [MEMORY[0x1E69B3BF0] RGBAf];
  v63 = v8;
  v64 = v10;
  v62 = v9;
  v17 = [v9 objectForKeyedSubscript:@"Sensitivity"];
  [v17 doubleValue];
  v19 = v18;

  v72 = 0u;
  v73 = 0u;
  v20 = [v9 objectForKeyedSubscript:@"ROI"];
  [v20 CGRectValue];
  NUPixelRectFromCGRect();

  v61 = [v8 objectAtIndexedSubscript:0];
  v21 = [v61 bytesPerRow];
  v70 = 0u;
  v71 = 0u;
  [v61 region];
  NUPixelRectFromCGRect();
  v22 = [v61 baseAddress];
  v23 = NUMaxY();
  v24 = NUMaxY();
  v25 = NUMinX();
  v26 = NUMinX();
  v74 = 0u;
  v75 = 0u;
  [v10 region];
  NUPixelRectFromCGRect();
  v57 = v26;
  v58 = v25;
  v27 = 16 * NUWidth();
  [MEMORY[0x1E695DF88] dataWithLength:NUHeight() * v27];
  v60 = v28 = v24;
  v29 = [v60 mutableBytes];
  v30 = v23;
  v31 = v22;
  v32 = 8 * NUWidth();
  v59 = [MEMORY[0x1E695DF88] dataWithLength:NUHeight() * v32];
  v33 = [v59 mutableBytes];
  v34 = NUWidth();
  v68 = 0u;
  v69 = 0u;
  v35 = NUHeight();
  if (v34)
  {
    v36 = v35;
    if (v35)
    {
      v37 = (v31 + (v30 - v28) * v21 + 16 * (v58 - v57));
      v38 = 16 * v34;
      v39 = v29;
      do
      {
        memcpy(v39, v37, v38);
        v37 += v21;
        v39 += v27;
        --v36;
      }

      while (v36);
    }
  }

  v40 = NUWidth();
  v41 = 4 * v40 * NUHeight();
  [a1 convertFloat:v29 toFixed16:v33 count:v41];
  v42 = objc_alloc(MEMORY[0x1E69B3B98]);
  v43 = [MEMORY[0x1E69B3BF0] RGBA16];
  v44 = [v42 initWithSize:v73 format:v43 rowBytes:v32 mutableBytes:v33];

  fixRedeye(v44, fmax(fmin(v19, 1.0), 0.01));
  [a1 convertFixed16:v33 toFloat:v29 count:v41];
  v45 = [MEMORY[0x1E69B3A10] genericRGBLinearColorSpace];
  v46 = objc_alloc(MEMORY[0x1E69B3990]);
  v47 = [objc_alloc(MEMORY[0x1E69B3988]) initWithSize:v73 format:v66 rowBytes:v27 bytes:v29];
  v68 = 0uLL;
  v69 = v73;
  v48 = [MEMORY[0x1E69B3C10] regionWithRect:&v68];
  v49 = [v46 initWithBuffer:v47 colorSpace:v45 validRegion:v48];

  v50 = objc_alloc(MEMORY[0x1E69B3BA0]);
  v51 = objc_alloc(MEMORY[0x1E69B3B98]);
  v52 = [v51 initWithSize:v75 format:v66 rowBytes:objc_msgSend(v64 mutableBytes:{"bytesPerRow"), objc_msgSend(v64, "baseAddress")}];
  v68 = 0uLL;
  v69 = v75;
  v53 = [MEMORY[0x1E69B3C10] regionWithRect:&v68];
  v54 = [v50 initWithMutableBuffer:v52 colorSpace:v45 validRegion:v53];

  v68 = 0u;
  v69 = 0u;
  NUPixelRectIntersection();
  v67[0] = v68;
  NUMinX();
  NUMinX();
  NUMaxY();
  NUMaxY();
  NUPixelRectSetOrigin();
  NUMinX();
  NUMinX();
  NUMaxY();
  NUMaxY();
  NUPixelRectSetOrigin();
  v55 = v67[0];
  memset(v67, 0, sizeof(v67));
  [MEMORY[0x1E69B3B38] copyPixelsFromImage:v49 srcRect:v67 destImage:v54 destOrigin:v55];

  return 1;
}

+ (void)convertFixed16:(const unsigned __int16 *)a3 toFloat:(float *)a4 count:(unint64_t)a5
{
  v22 = *MEMORY[0x1E69E9840];
  src.data = a3;
  src.height = 1;
  src.width = a5;
  src.rowBytes = 2 * a5;
  dest.data = a4;
  dest.height = 1;
  dest.width = a5;
  dest.rowBytes = 4 * a5;
  if (vImageConvert_16UToF(&src, &dest, 0.0, 0.000015259, 0))
  {
    v5 = NUAssertLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad fixed 16 to float conversion"];
      *buf = 138543362;
      v19 = v6;
      _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v7 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(*v7);
        v14 = [MEMORY[0x1E696AF00] callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v19 = v13;
        v20 = 2114;
        v21 = v15;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v19 = v12;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }
}

+ (void)convertFloat:(const float *)a3 toFixed16:(unsigned __int16 *)a4 count:(unint64_t)a5
{
  v22 = *MEMORY[0x1E69E9840];
  src.data = a3;
  src.height = 1;
  src.width = a5;
  src.rowBytes = 4 * a5;
  dest.data = a4;
  dest.height = 1;
  dest.width = a5;
  dest.rowBytes = 2 * a5;
  if (vImageConvert_FTo16U(&src, &dest, 0.0, 0.000015259, 0))
  {
    v5 = NUAssertLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad float to fixed 16 conversion"];
      *buf = 138543362;
      v19 = v6;
      _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v7 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(*v7);
        v14 = [MEMORY[0x1E696AF00] callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v19 = v13;
        v20 = 2114;
        v21 = v15;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v19 = v12;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }
}

+ ($721907E0E1CDE8B6CD3FA271A8B25860)ROIForCenterPoint:(SEL)a3 radius:(CGPoint)a4
{
  retstr->var0 = 0u;
  retstr->var1 = 0u;
  return NUPixelRectFromCGRect();
}

@end