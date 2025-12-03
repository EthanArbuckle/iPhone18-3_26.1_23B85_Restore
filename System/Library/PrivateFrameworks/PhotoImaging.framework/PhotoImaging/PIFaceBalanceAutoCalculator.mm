@interface PIFaceBalanceAutoCalculator
+ ($1AB5FA073B851C12C2339EC22442E995)faceBalanceFromFaceImage:(id)image forFaceRect:(id *)rect;
+ ($721907E0E1CDE8B6CD3FA271A8B25860)faceRectFromNormalizedFaceRet:(SEL)ret forImageExtent:(CGRect)extent scaleX:(id *)x scaleY:(double)y;
+ (id)faceBalanceResultFromFaceObservations:(id)observations request:(id)request error:(id *)error;
+ (void)calculateRAWWithRequest:(id)request completion:(id)completion;
+ (void)calculateWithRequest:(id)request completion:(id)completion;
- (PIFaceBalanceAutoCalculator)initWithRequest:(id)request isRAW:(BOOL)w;
- (void)submit:(id)submit;
@end

@implementation PIFaceBalanceAutoCalculator

- (void)submit:(id)submit
{
  submitCopy = submit;
  rawState = self->_rawState;
  if (rawState)
  {
    if (rawState == 2)
    {
      [PIFaceBalanceAutoCalculator calculateRAWWithRequest:self completion:submitCopy];
    }

    else if (rawState == 1)
    {
      [PIFaceBalanceAutoCalculator calculateWithRequest:self completion:submitCopy];
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69B3B30]) initWithRequest:self];
    [v6 setName:@"PIFaceBalanceAutoCalculator-imageProperties"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__PIFaceBalanceAutoCalculator_submit___block_invoke;
    v7[3] = &unk_1E82ACC00;
    v7[4] = self;
    v8 = submitCopy;
    [v6 submit:v7];
  }
}

void __38__PIFaceBalanceAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v11 = 0;
  v3 = [a2 result:&v11];
  v4 = v11;
  if (v3)
  {
    v5 = [v3 properties];
    v6 = [v5 rawProperties];

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (v6)
    {
      [PIFaceBalanceAutoCalculator calculateRAWWithRequest:v7 completion:v8];
    }

    else
    {
      [PIFaceBalanceAutoCalculator calculateWithRequest:v7 completion:v8];
    }
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    (*(v9 + 16))(v9, v10);
  }
}

- (PIFaceBalanceAutoCalculator)initWithRequest:(id)request isRAW:(BOOL)w
{
  wCopy = w;
  v7.receiver = self;
  v7.super_class = PIFaceBalanceAutoCalculator;
  result = [(NURenderRequest *)&v7 initWithRequest:request];
  v6 = 1;
  if (wCopy)
  {
    v6 = 2;
  }

  result->_rawState = v6;
  return result;
}

+ ($1AB5FA073B851C12C2339EC22442E995)faceBalanceFromFaceImage:(id)image forFaceRect:(id *)rect
{
  v51 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3810000000;
  v45 = &unk_1C788B126;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  format = [imageCopy format];
  aRGB8 = [MEMORY[0x1E69B3BF0] ARGB8];
  v8 = [format isEqualToPixelFormat:aRGB8];

  if (v8)
  {
    v9 = 0x200000001;
    v10 = 3;
  }

  else
  {
    format2 = [imageCopy format];
    rGBA8 = [MEMORY[0x1E69B3BF0] RGBA8];
    v13 = [format2 isEqualToPixelFormat:rGBA8];

    if (v13)
    {
      v9 = 0x100000000;
      v10 = 2;
    }

    else
    {
      format3 = [imageCopy format];
      bGRA8 = [MEMORY[0x1E69B3BF0] BGRA8];
      v16 = [format3 isEqualToPixelFormat:bGRA8];

      if ((v16 & 1) == 0)
      {
        v25 = NUAssertLogger_7479();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported format - incorrect white balance"];
          *buf = 138543362;
          *&buf[4] = v26;
          _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v27 = MEMORY[0x1E69B38E8];
        specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
        v29 = NUAssertLogger_7479();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
        if (specific)
        {
          if (v30)
          {
            v33 = dispatch_get_specific(*v27);
            callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
            v35 = [callStackSymbols componentsJoinedByString:@"\n"];
            *buf = 138543618;
            *&buf[4] = v33;
            *&buf[12] = 2114;
            *&buf[14] = v35;
            _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v30)
        {
          callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
          v32 = [callStackSymbols2 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          *&buf[4] = v32;
          _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler();
        __break(1u);
      }

      v10 = 0;
      v9 = 0x100000002;
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v50 = 0;
  validRegion = [imageCopy validRegion];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __68__PIFaceBalanceAutoCalculator_faceBalanceFromFaceImage_forFaceRect___block_invoke;
  v37[3] = &unk_1E82AA478;
  var1 = rect->var1;
  var0 = rect->var0;
  v39 = var1;
  v40 = v9;
  v41 = v10;
  v37[4] = &v42;
  v37[5] = buf;
  [imageCopy readBufferRegion:validRegion withBlock:v37];

  v19 = *(*&buf[8] + 24);
  v20 = v43;
  v21 = *(v43 + 4);
  if (v19 <= 0)
  {
    v36 = *(v43 + 5);
  }

  else
  {
    v21 = v21 / v19;
    *(v43 + 4) = v21;
    v36 = vdivq_f64(*(v20 + 5), vdupq_lane_s64(COERCE__INT64(v19), 0));
    *(v20 + 5) = v36;
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v42, 8);

  v23 = v36.f64[1];
  v22 = v36.f64[0];
  v24 = v21;
  result.var2 = v23;
  result.var1 = v22;
  result.var0 = v24;
  return result;
}

void __68__PIFaceBalanceAutoCalculator_faceBalanceFromFaceImage_forFaceRect___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 buffer];
  if (v2)
  {
    [v2 frameRect];
  }

  [v3 size];
  NUPixelRectIntersection();
}

+ ($721907E0E1CDE8B6CD3FA271A8B25860)faceRectFromNormalizedFaceRet:(SEL)ret forImageExtent:(CGRect)extent scaleX:(id *)x scaleY:(double)y
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  CGAffineTransformMakeScale(&v16, y, a7);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CGRectApplyAffineTransform(v17, &v16);
  retstr->var0 = 0u;
  retstr->var1 = 0u;
  NUPixelRectFromCGRect();
  NUPixelRectMaxCenteredInRect();
  v12 = *&v16.c;
  retstr->var0 = *&v16.a;
  retstr->var1 = v12;
  NUPixelRectInset();
  v13 = *&v16.c;
  retstr->var0 = *&v16.a;
  retstr->var1 = v13;
  result = NUPixelRectFlipYOrigin();
  v15 = *&v16.c;
  retstr->var0 = *&v16.a;
  retstr->var1 = v15;
  return result;
}

+ (id)faceBalanceResultFromFaceObservations:(id)observations request:(id)request error:(id *)error
{
  faces = v91;
  v98 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  requestCopy = request;
  if (!error)
  {
    v59 = NUAssertLogger_7479();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *v91 = 138543362;
      *&v91[4] = v60;
      _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v91, 0xCu);
    }

    v61 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    observationsCopy = NUAssertLogger_7479();
    v63 = os_log_type_enabled(observationsCopy, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v63)
      {
        v5 = dispatch_get_specific(*v61);
        v66 = MEMORY[0x1E696AF00];
        v67 = v5;
        callStackSymbols = [v66 callStackSymbols];
        faces = [callStackSymbols componentsJoinedByString:@"\n"];
        *v91 = 138543618;
        *&v91[4] = v5;
        *&v91[12] = 2114;
        *&v91[14] = faces;
        _os_log_error_impl(&dword_1C7694000, observationsCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v91, 0x16u);
      }
    }

    else if (v63)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v65 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v91 = 138543362;
      *&v91[4] = v65;
      _os_log_error_impl(&dword_1C7694000, observationsCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v91, 0xCu);
    }

    v69 = "error != nil";
    _NUAssertFailHandler();
    __break(1u);
    goto LABEL_39;
  }

  group = dispatch_group_create();
  faces = [observationsCopy faces];
  if (![faces count])
  {
    v25 = MEMORY[0x1E695E0F8];
    goto LABEL_28;
  }

  imageSize = [observationsCopy imageSize];
  v13 = v12;
  v5 = objc_alloc_init(MEMORY[0x1E69B3BB0]);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v14 = faces;
  v15 = [v14 countByEnumeratingWithState:&v84 objects:v97 count:16];
  if (v15)
  {
    v16 = *v85;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v85 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v84 + 1) + 8 * i) boundingBox];
        v101.origin.x = 0.0;
        v101.origin.y = 0.0;
        v101.size.width = 1.0;
        v101.size.height = 1.0;
        CGRectIntersection(v100, v101);
        memset(v91, 0, sizeof(v91));
        v78 = 0uLL;
        *&v79 = imageSize;
        *(&v79 + 1) = v13;
        NUPixelRectDenormalize();
        v78 = *v91;
        v79 = *&v91[16];
        [v5 addRect:&v78];
      }

      v15 = [v14 countByEnumeratingWithState:&v84 objects:v97 count:16];
    }

    while (v15);
  }

  v82 = 0u;
  v83 = 0u;
  if (v5)
  {
    [v5 bounds];
  }

  v78 = v82;
  v79 = v83;
  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = imageSize;
  v96 = v13;
  NUPixelRectFlipYOrigin();
  v82 = *v91;
  v83 = *&v91[16];
  *v91 = 0;
  *&v91[8] = v91;
  *&v91[16] = 0x3810000000;
  *&v91[24] = &unk_1C788B126;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v6 = [objc_alloc(MEMORY[0x1E69B39A0]) initWithRequest:requestCopy];
  [v6 setName:@"PIWhiteBalanceAutoCalculator-face-balance"];
  v18 = +[PIPipelineFilters rawFaceBalanceFilter];
  v90 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
  [v6 setPipelineFilters:v19];

  v20 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x400000];
  [v6 setScalePolicy:v20];

  [v6 setSampleMode:1];
  v21 = objc_alloc(MEMORY[0x1E69B3A80]);
  v78 = v82;
  v79 = v83;
  v22 = [v21 initWithRect:&v78];
  [v6 setRegionPolicy:v22];

  v23 = dispatch_queue_create("PIRAWFaceBalanceAutoCalculator.responseQueue", 0);
  [v6 setResponseQueue:v23];

  dispatch_group_enter(group);
  *&v78 = 0;
  *(&v78 + 1) = &v78;
  *&v79 = 0x3032000000;
  *(&v79 + 1) = __Block_byref_object_copy__7505;
  v80 = __Block_byref_object_dispose__7506;
  v81 = 0;
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __83__PIFaceBalanceAutoCalculator_faceBalanceResultFromFaceObservations_request_error___block_invoke;
  v73[3] = &unk_1E82AA450;
  v76 = &v78;
  v74 = v14;
  v77 = v91;
  v24 = group;
  v75 = v24;
  [v6 submit:v73];
  dispatch_group_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
  if (!*(*(&v78 + 1) + 40))
  {
    v26 = *(*&v91[8] + 32);
    v27 = *(*&v91[8] + 40);
    v28 = *(*&v91[8] + 48);
    v29 = v26 + v27 * 0.956295729 + v28 * 0.62102443;
    v30 = v26 + v27 * -0.272122115 + v28 * -0.64738059;
    *(*&v91[8] + 40) = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_1C7845D10, v30 * 0.843295753 + v29 * 0.0951450467 + (v26 + v27 * -1.10698903 + v28 * 1.704615) * 0.0615592338), xmmword_1C7845D20, v30 * 0.404303581 + v29 * 0.592828095 + (v26 + v27 * -1.10698903 + v28 * 1.704615) * 0.00286814501), xmmword_1C7845D30, v30 * 0.0696689114 + v29 * 0.0117029343 + (v26 + v27 * -1.10698903 + v28 * 1.704615) * 0.918628156);
    if (*MEMORY[0x1E69B3D78] == -1)
    {
LABEL_16:
      v31 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        v32 = *(*&v91[8] + 32);
        v33 = *(*&v91[8] + 40);
        v34 = *(*&v91[8] + 48);
        *buf = 134218496;
        *&buf[4] = v32;
        *&buf[12] = 2048;
        *&buf[14] = v33;
        *&buf[22] = 2048;
        v96 = v34;
        _os_log_impl(&dword_1C7694000, v31, OS_LOG_TYPE_INFO, "facerect yiq = %.5f, %.5f, %.5f\n", buf, 0x20u);
      }

      v36 = *(*&v91[8] + 40);
      v35 = *(*&v91[8] + 48);
      v70 = [PICompositionController settingForAdjustmentKey:@"whiteBalance" settingKey:@"warmTemp", v69];
      v37 = [PICompositionController settingForAdjustmentKey:@"whiteBalance" settingKey:@"warmTint"];
      minimumValue = [v70 minimumValue];
      [minimumValue doubleValue];
      v40 = v39;

      maximumValue = [v70 maximumValue];
      [maximumValue doubleValue];
      v43 = v42;

      v44 = 0.055 - v36;
      v45 = 0.0 - v35;
      v46 = (v44 + (0.0 - v35) * -0.2) * 4.0;
      if (v46 >= v43)
      {
        v46 = v43;
      }

      if (v40 < v46)
      {
        v40 = v46;
      }

      minimumValue2 = [v37 minimumValue];
      [minimumValue2 doubleValue];
      v49 = v48;

      maximumValue2 = [v37 maximumValue];
      [maximumValue2 doubleValue];
      v52 = v51;

      v53 = (v44 + v45 * 5.0) * 4.0;
      if (v53 >= v52)
      {
        v53 = v52;
      }

      if (v49 < v53)
      {
        v49 = v53;
      }

      v88[0] = @"OrigI";
      v54 = [MEMORY[0x1E696AD98] numberWithDouble:*(*&v91[8] + 40)];
      v89[0] = v54;
      v88[1] = @"OrigQ";
      v55 = [MEMORY[0x1E696AD98] numberWithDouble:*(*&v91[8] + 48)];
      v89[1] = v55;
      v89[2] = &unk_1F471F590;
      v88[2] = @"Warmth";
      v88[3] = @"Strength";
      v89[3] = &unk_1F471F5A0;
      v88[4] = @"WarmTemp";
      v56 = [MEMORY[0x1E696AD98] numberWithDouble:v40];
      v89[4] = v56;
      v88[5] = @"WarmTint";
      v57 = [MEMORY[0x1E696AD98] numberWithDouble:v49];
      v88[6] = @"WarmFace";
      v89[5] = v57;
      v89[6] = MEMORY[0x1E695E118];
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:7];

      goto LABEL_27;
    }

LABEL_39:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_303);
    goto LABEL_16;
  }

  [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failure in rendering image" object:v5 underlyingError:?];
  *error = v25 = 0;
LABEL_27:

  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(v91, 8);

LABEL_28:

  return v25;
}

void __83__PIFaceBalanceAutoCalculator_faceBalanceResultFromFaceObservations_request_error___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [v4 image];
    [v5 size];
    [v5 size];
    v6 = [v5 size];
    [v5 size];
    v8 = v7;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      v13 = 0.0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v30 + 1) + 8 * i) boundingBox];
          memset(buf, 0, sizeof(buf));
          v28 = 0uLL;
          *&v29 = v6;
          *(&v29 + 1) = v8;
          [PIFaceBalanceAutoCalculator faceRectFromNormalizedFaceRet:"faceRectFromNormalizedFaceRet:forImageExtent:scaleX:scaleY:" forImageExtent:&v28 scaleX:? scaleY:?];
          v28 = *buf;
          v29 = *&buf[16];
          [PIFaceBalanceAutoCalculator faceBalanceFromFaceImage:v5 forFaceRect:&v28];
          v18 = v17;
          v19 = v15;
          v20 = v16;
          v21 = fmax(((v16 + -0.00999999978) * -0.0199999996 + (v15 + -0.0399999991) * 0.0649999976) / 0.00462499967, 0.0);
          if (v21 > 1.0)
          {
            v21 = 1.0;
          }

          v22 = fmin(1.0 / fmax(pow(sqrt((v15 - ((v21 * 0.5 + 0.25) * 0.0649999976 + 0.0399999991)) * (v15 - ((v21 * 0.5 + 0.25) * 0.0649999976 + 0.0399999991)) + (v16 - ((v21 * 0.5 + 0.25) * -0.0199999996 + 0.00999999978)) * (v16 - ((v21 * 0.5 + 0.25) * -0.0199999996 + 0.00999999978))) / 0.0680073501, 3.0), 0.0001), 1.0) * (*&buf[24] * *&buf[16]);
          *(*(*(a1 + 56) + 8) + 32) = *(*(*(a1 + 56) + 8) + 32) + v22 * v18;
          *(*(*(a1 + 56) + 8) + 40) = *(*(*(a1 + 56) + 8) + 40) + v22 * v19;
          *(*(*(a1 + 56) + 8) + 48) = *(*(*(a1 + 56) + 8) + 48) + v22 * v20;
          v13 = v13 + v22;
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v11);

      if (v13 > 0.0)
      {
        *(*(*(a1 + 56) + 8) + 32) = *(*(*(a1 + 56) + 8) + 32) / v13;
        *(*(*(a1 + 56) + 8) + 40) = *(*(*(a1 + 56) + 8) + 40) / v13;
        *(*(*(a1 + 56) + 8) + 48) = *(*(*(a1 + 56) + 8) + 48) / v13;
        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_303);
        }

        v23 = *MEMORY[0x1E69B3D80];
        if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
        {
          v24 = *(*(a1 + 56) + 8);
          v25 = v24[4];
          v26 = v24[5];
          v27 = v24[6];
          *buf = 134218496;
          *&buf[4] = v25;
          *&buf[12] = 2048;
          *&buf[14] = v26;
          *&buf[22] = 2048;
          *&buf[24] = v27;
          _os_log_impl(&dword_1C7694000, v23, OS_LOG_TYPE_INFO, "facerect yiq = %.5f, %.5f, %.5f\n", buf, 0x20u);
        }
      }
    }

    else
    {
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

+ (void)calculateRAWWithRequest:(id)request completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  if (!completionCopy)
  {
    v14 = NUAssertLogger_7479();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v32 = v15;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v16 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_7479();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(*v16);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v22;
        v33 = 2114;
        v34 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v21;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = completionCopy;
  v8 = [objc_alloc(MEMORY[0x1E69B3A50]) initWithRequest:requestCopy];
  v9 = +[PIPipelineFilters rawFaceBalanceFilter];
  v30 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  [v8 setPipelineFilters:v10];

  v11 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x400000];
  [v8 setScalePolicy:v11];

  [v8 setSampleMode:1];
  [v8 setName:@"PIFaceBalanceAutoCalculator-RAW-face-request"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __66__PIFaceBalanceAutoCalculator_calculateRAWWithRequest_completion___block_invoke;
  v27[3] = &unk_1E82ACC00;
  v28 = requestCopy;
  v29 = v7;
  v12 = v7;
  v13 = requestCopy;
  [v8 submit:v27];
}

void __66__PIFaceBalanceAutoCalculator_calculateRAWWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = 0;
  v3 = [a2 result:&v12];
  v4 = v12;
  if (v3)
  {
    v5 = *(a1 + 32);
    v11 = 0;
    v6 = [PIFaceBalanceAutoCalculator faceBalanceResultFromFaceObservations:v3 request:v5 error:&v11];
    v7 = v11;
    v8 = objc_alloc(MEMORY[0x1E69B3C78]);
    if (v6)
    {
      v9 = [v8 initWithResult:v6];
    }

    else
    {
      v9 = [v8 initWithError:v7];
    }

    v10 = v9;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)calculateWithRequest:(id)request completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  if (!completionCopy)
  {
    v13 = NUAssertLogger_7479();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v30 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_7479();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(*v15);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v21;
        v31 = 2114;
        v32 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = completionCopy;
  v8 = [objc_alloc(MEMORY[0x1E69B3AE8]) initWithRequest:requestCopy dataExtractor:@"CIFaceBalance" options:0];
  [v8 setName:@"PIFaceBalanceAutoCalculator-calculate"];
  v9 = [PIPipelineFilters stopAtTagIncludeOrientationFilter:@"/Master/Source"];
  v28 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  [v8 setPipelineFilters:v10];

  v11 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x400000];
  [v8 setScalePolicy:v11];

  [v8 setSampleMode:1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __63__PIFaceBalanceAutoCalculator_calculateWithRequest_completion___block_invoke;
  v26[3] = &unk_1E82ACA08;
  v27 = v7;
  v12 = v7;
  [v8 submit:v26];
}

void __63__PIFaceBalanceAutoCalculator_calculateWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = [v3 alloc];
  v41 = 0;
  v6 = [v4 result:&v41];

  v7 = v41;
  v8 = [v6 data];
  v9 = [v5 initWithDictionary:v8];

  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:@"WarmTemp"];
    if (v10)
    {
      v11 = v10;
      v12 = [v9 objectForKeyedSubscript:@"WarmTint"];

      if (v12)
      {
        v13 = [PICompositionController settingForAdjustmentKey:@"whiteBalance" settingKey:@"warmTemp"];
        v14 = [PICompositionController settingForAdjustmentKey:@"whiteBalance" settingKey:@"warmTint"];
        v15 = MEMORY[0x1E696AD98];
        v16 = [v13 minimumValue];
        [v16 doubleValue];
        v18 = v17;

        v19 = [v9 objectForKeyedSubscript:@"WarmTemp"];
        [v19 doubleValue];
        v21 = v20;

        v22 = [v13 maximumValue];
        [v22 doubleValue];
        v24 = v23;

        if (v21 >= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v21;
        }

        if (v18 >= v25)
        {
          v25 = v18;
        }

        v26 = [v15 numberWithDouble:v25];
        [v9 setObject:v26 forKeyedSubscript:@"WarmTemp"];

        v27 = MEMORY[0x1E696AD98];
        v28 = [v14 minimumValue];
        [v28 doubleValue];
        v30 = v29;

        v31 = [v9 objectForKeyedSubscript:@"WarmTint"];
        [v31 doubleValue];
        v33 = v32;

        v34 = [v14 maximumValue];
        [v34 doubleValue];
        v36 = v35;

        if (v33 >= v36)
        {
          v37 = v36;
        }

        else
        {
          v37 = v33;
        }

        if (v30 >= v37)
        {
          v37 = v30;
        }

        v38 = [v27 numberWithDouble:v37];
        [v9 setObject:v38 forKeyedSubscript:@"WarmTint"];
      }
    }

    v39 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v9];
  }

  else
  {
    v39 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v7];
  }

  v40 = v39;
  (*(*(a1 + 32) + 16))();
}

@end