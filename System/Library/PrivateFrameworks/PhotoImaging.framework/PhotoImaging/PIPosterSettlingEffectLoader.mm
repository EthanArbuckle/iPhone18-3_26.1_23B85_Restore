@interface PIPosterSettlingEffectLoader
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_livePhotoKeyFrameTimeForResource:(SEL)resource;
+ (BOOL)_canLoadVideoAtURL:(id)l;
+ (BOOL)adjustCropRect:(CGRect *)rect forEditedLivePhotoResource:(id)resource error:(id *)error;
+ (BOOL)adjustCropRect:(CGRect)rect outputRect:(CGRect *)outputRect outputExtent:(CGRect *)extent forComposition:(id)composition applyOrientation:(BOOL)orientation error:(id *)error;
+ (BOOL)canHandleEditedLivePhotoResource:(id)resource error:(id *)error;
+ (BOOL)extractCropRect:(CGRect *)rect fromStabilizationResultAttributes:(id)attributes error:(id *)error;
+ (CGRect)effectiveCropRect:(CGRect)rect forResource:(id)resource error:(id *)error;
+ (id)_resolveOptions:(id)options forResource:(id)resource;
+ (id)adjustedCompositionForResource:(id)resource videoURL:(id)l cropRect:(CGRect)rect error:(id *)error;
+ (id)originalCompositionForResource:(id)resource error:(id *)error;
+ (id)temporaryAdjustedVideoURLForURL:(id)l;
+ (id)temporaryDirectory;
+ (int)loadCropRectWithResource:(id)resource options:(id)options completion:(id)completion;
+ (int)loadVideoWithResource:(id)resource options:(id)options completion:(id)completion;
+ (unint64_t)_gatingFlagsFromMADStatus:(id)status;
+ (void)adjustVideo:(id)video cropRect:(CGRect)rect forResource:(id)resource completion:(id)completion;
+ (void)cancelRequest:(int)request;
@end

@implementation PIPosterSettlingEffectLoader

+ (id)adjustedCompositionForResource:(id)resource videoURL:(id)l cropRect:(CGRect)rect error:(id *)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v67 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  lCopy = l;
  if (!resourceCopy)
  {
    v29 = NUAssertLogger_9605();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "resource != nil"];
      *buf = 138543362;
      v64 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_9605();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v34)
      {
        v47 = dispatch_get_specific(*callStackSymbols);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        callStackSymbols = [v48 callStackSymbols];
        v50 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v47;
        v65 = 2114;
        v66 = v50;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v39 = _NUAssertFailHandler();
    goto LABEL_27;
  }

  v14 = lCopy;
  if (!lCopy)
  {
    v36 = NUAssertLogger_9605();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "videoURL != nil"];
      *buf = 138543362;
      v64 = v37;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v38 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_9605();
    v39 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!v38)
    {
      if (v39)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v64 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_29:

      v44 = _NUAssertFailHandler();
      goto LABEL_30;
    }

LABEL_27:
    if (v39)
    {
      v51 = dispatch_get_specific(*callStackSymbols);
      v52 = MEMORY[0x1E696AF00];
      v53 = v51;
      callStackSymbols = [v52 callStackSymbols];
      v54 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v64 = v51;
      v65 = 2114;
      v66 = v54;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_29;
  }

  adjustmentData = [resourceCopy adjustmentData];

  if (!adjustmentData)
  {
    v41 = NUAssertLogger_9605();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "resource.adjustmentData != nil"];
      *buf = 138543362;
      v64 = v42;
      _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v43 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_9605();
    v44 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!v43)
    {
      if (v44)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v46 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v64 = v46;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_32;
    }

LABEL_30:
    if (v44)
    {
      v55 = dispatch_get_specific(*callStackSymbols);
      v56 = MEMORY[0x1E696AF00];
      v57 = v55;
      callStackSymbols5 = [v56 callStackSymbols];
      v59 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v64 = v55;
      v65 = 2114;
      v66 = v59;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_32:

    _NUAssertFailHandler();
  }

  adjustmentData2 = [resourceCopy adjustmentData];
  adjustmentFormat = [resourceCopy adjustmentFormat];
  adjustmentVersion = [resourceCopy adjustmentVersion];
  v19 = [PICompositionSerializer deserializeCompositionFromData:adjustmentData2 formatIdentifier:adjustmentFormat formatVersion:adjustmentVersion error:error];

  if (v19)
  {
    imageFileURL = [resourceCopy imageFileURL];
    fileType = [resourceCopy fileType];
    v22 = [PIPhotoEditHelper imageSourceWithURL:imageFileURL type:fileType useEmbeddedPreview:0];

    v23 = [PIPhotoEditHelper videoSourceWithURL:v14];
    v61 = @"appliedCropRect";
    *v60 = x;
    *&v60[1] = y;
    *&v60[2] = width;
    *&v60[3] = height;
    v24 = [MEMORY[0x1E696B098] valueWithBytes:v60 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v62 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    definition = [v23 definition];
    [definition setSourceOptions:v25];

    v27 = [PIPhotoEditHelper livePhotoSourceWithPhotoSource:v22 videoSource:v23];
    [v19 setObject:v27 forKeyedSubscript:@"source"];
    [v19 setMediaType:3];
  }

  return v19;
}

+ (id)originalCompositionForResource:(id)resource error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  if (!resourceCopy)
  {
    v18 = NUAssertLogger_9605();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "resource != nil"];
      *buf = 138543362;
      v41 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_9605();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v31 = dispatch_get_specific(*callStackSymbols);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v31;
        v42 = 2114;
        v43 = v34;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v28 = _NUAssertFailHandler();
    goto LABEL_21;
  }

  v6 = resourceCopy;
  if ([resourceCopy type] != 6)
  {
    v25 = NUAssertLogger_9605();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "resource.type == PFParallaxAssetResourceTypeLiveOriginal"];
      *buf = 138543362;
      v41 = v26;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v27 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_9605();
    v28 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (!v27)
    {
      if (v28)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v30 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v41 = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_23;
    }

LABEL_21:
    if (v28)
    {
      v35 = dispatch_get_specific(*callStackSymbols);
      v36 = MEMORY[0x1E696AF00];
      v37 = v35;
      callStackSymbols4 = [v36 callStackSymbols];
      v39 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v41 = v35;
      v42 = 2114;
      v43 = v39;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_23:

    _NUAssertFailHandler();
  }

  adjustmentData = [v6 adjustmentData];
  adjustmentFormat = [v6 adjustmentFormat];
  adjustmentVersion = [v6 adjustmentVersion];
  v10 = [PICompositionSerializer deserializeCompositionFromData:adjustmentData formatIdentifier:adjustmentFormat formatVersion:adjustmentVersion error:error];

  if (v10)
  {
    imageFileURL = [v6 imageFileURL];
    fileType = [v6 fileType];
    v13 = [PIPhotoEditHelper imageSourceWithURL:imageFileURL type:fileType useEmbeddedPreview:0];

    videoFileURL = [v6 videoFileURL];
    v15 = [PIPhotoEditHelper videoSourceWithURL:videoFileURL];

    v16 = [PIPhotoEditHelper livePhotoSourceWithPhotoSource:v13 videoSource:v15];
    [v10 setObject:v16 forKeyedSubscript:@"source"];
    [v10 setMediaType:3];
  }

  return v10;
}

+ (id)temporaryAdjustedVideoURLForURL:(id)l
{
  lastPathComponent = [l lastPathComponent];
  v5 = [@"adj-" stringByAppendingString:lastPathComponent];

  temporaryDirectory = [self temporaryDirectory];
  v7 = [temporaryDirectory URLByAppendingPathComponent:v5];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager removeItemAtURL:v7 error:0];

  return v7;
}

+ (id)temporaryDirectory
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:self];
  bundleIdentifier = [v4 bundleIdentifier];

  temporaryDirectory = [defaultManager temporaryDirectory];
  v7 = [temporaryDirectory URLByAppendingPathComponent:bundleIdentifier];

  [defaultManager createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:0];

  return v7;
}

+ (void)adjustVideo:(id)video cropRect:(CGRect)rect forResource:(id)resource completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  videoCopy = video;
  resourceCopy = resource;
  completionCopy = completion;
  v55 = 0;
  [self effectiveCropRect:resourceCopy forResource:&v55 error:{x, y, width, height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v55;
  v56.origin.x = v17;
  v56.origin.y = v19;
  v56.size.width = v21;
  v56.size.height = v23;
  if (CGRectIsNull(v56))
  {
    completionCopy[2](completionCopy, 0, v24);
  }

  else
  {
    v54 = 0;
    v25 = [self adjustedCompositionForResource:resourceCopy videoURL:videoCopy cropRect:&v54 error:{v17, v19, v21, v23}];
    v26 = v54;

    if (v25)
    {
      v52 = 0u;
      v53 = 0u;
      memset(v51, 0, sizeof(v51));
      v50 = 0;
      v27 = [self adjustCropRect:v51 outputRect:&v52 outputExtent:v25 forComposition:0 applyOrientation:&v50 error:{x, y, width, height}];
      v28 = v50;

      if (v27)
      {
        v48 = 0u;
        v49 = 0u;
        NURectDenormalize();
        NUPixelRectFromCGRect();
        v46 = 0u;
        v47 = 0u;
        NUPixelRectFromCGRect();
        v29 = [PIPhotoEditHelper newCompositionControllerWithComposition:v25];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __76__PIPosterSettlingEffectLoader_adjustVideo_cropRect_forResource_completion___block_invoke;
        v39[3] = &__block_descriptor_128_e36_v16__0__PICropAdjustmentController_8l;
        v40 = 0u;
        v41 = 0u;
        v42 = v52;
        v43 = v53;
        v44 = 0u;
        v45 = 0u;
        [v29 modifyAdjustmentWithKey:@"cropStraighten" modificationBlock:v39];
        v30 = [self temporaryAdjustedVideoURLForURL:videoCopy];
        v31 = objc_alloc(MEMORY[0x1E69B3D10]);
        composition = [v29 composition];
        v33 = [v31 initWithComposition:composition destinationURL:v30];

        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __76__PIPosterSettlingEffectLoader_adjustVideo_cropRect_forResource_completion___block_invoke_2;
        v36[3] = &unk_1E82ACC00;
        v37 = v30;
        v38 = completionCopy;
        v34 = v30;
        [v33 submit:v36];
      }

      else
      {
        v35 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to adjust stabilization crop rect" object:resourceCopy underlyingError:v28];

        completionCopy[2](completionCopy, 0, v35);
        v28 = v35;
      }

      v26 = v28;
    }

    else
    {
      completionCopy[2](completionCopy, 0, v26);
    }

    v24 = v26;
  }
}

void __76__PIPosterSettlingEffectLoader_adjustVideo_cropRect_forResource_completion___block_invoke(uint64_t a1, void *a2)
{
  v80 = *MEMORY[0x1E69E9840];
  v4 = a2;
  [v4 cropRect];
  v6 = v5;
  [v4 cropRect];
  v8 = v7;
  [v4 cropRect];
  v10 = v9;
  [v4 cropRect];
  specific = v11;
  *buf = v6;
  *&buf[8] = v8;
  *&buf[16] = v10;
  *&buf[24] = v11;
  if (NUPixelRectIsEmpty())
  {
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 48);
    specific = *(a1 + 56);
  }

  if ((NUPixelSizeEqualToSize() & 1) == 0)
  {
    v14 = NUAssertLogger_9605();
    v6 = 0x1E696B000uLL;
    v13 = &qword_1C7845000;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = MEMORY[0x1E696B098];
      [v4 cropRect];
      v78[0] = v17;
      v78[1] = v18;
      v78[2] = v19;
      v78[3] = v20;
      v21 = [v16 valueWithBytes:v78 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v22 = *(a1 + 80);
      v77[0] = *(a1 + 64);
      v77[1] = v22;
      v2 = [MEMORY[0x1E696B098] valueWithBytes:v77 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v23 = [v15 stringWithFormat:@"Invalid current crop rect: %@ extent: %@", v21, v2];
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_9605();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        specific = dispatch_get_specific(*v24);
        v45 = MEMORY[0x1E696AF00];
        v2 = specific;
        v24 = [v45 callStackSymbols];
        v13 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = specific;
        *&buf[12] = 2114;
        *&buf[14] = v13;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v46 = MEMORY[0x1E696B098];
    [v4 cropRect];
    v76[0] = v47;
    v76[1] = v48;
    v76[2] = v49;
    v76[3] = v50;
    v41 = "{CGRect={CGPoint=dd}{CGSize=dd}}";
    v10 = [v46 valueWithBytes:v76 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v51 = *(a1 + 80);
    v75[0] = *(a1 + 64);
    v75[1] = v51;
    [MEMORY[0x1E696B098] valueWithBytes:v75 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    objc_claimAutoreleasedReturnValue();
    v42 = _NUAssertFailHandler();
    goto LABEL_19;
  }

  v13 = (*(a1 + 96) + v6);
  v2 = (*(a1 + 104) + v8);
  v74 = *(a1 + 112);
  v72[4] = v6;
  v72[5] = v8;
  v72[6] = v10;
  v72[7] = specific;
  NUPixelRectIntersection();
  v72[8] = v13;
  v72[9] = v2;
  v73 = v74;
  if ((NUPixelRectEqualToRect() & 1) == 0)
  {
    log = NUAssertLogger_9605();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v65 = MEMORY[0x1E696AEC0];
      v27 = MEMORY[0x1E696B098];
      *buf = v13;
      *&buf[8] = v2;
      *&buf[16] = v74;
      NUPixelRectToCGRect();
      v72[0] = v28;
      v72[1] = v29;
      v72[2] = v30;
      v72[3] = v31;
      v32 = [v27 valueWithBytes:v72 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v33 = MEMORY[0x1E696B098];
      *buf = v6;
      *&buf[8] = v8;
      *&buf[16] = v10;
      *&buf[24] = specific;
      NUPixelRectToCGRect();
      v71[0] = v34;
      v71[1] = v35;
      v71[2] = v36;
      v71[3] = v37;
      v38 = [v33 valueWithBytes:v71 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v39 = [v65 stringWithFormat:@"Invalid adjusted crop rect: %@, current: %@", v32, v38];
      *buf = 138543362;
      *&buf[4] = v39;
      _os_log_error_impl(&dword_1C7694000, log, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    v40 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v41 = NUAssertLogger_9605();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (!v40)
    {
      if (v42)
      {
        v43 = [MEMORY[0x1E696AF00] callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v44;
        _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v42)
    {
      v52 = dispatch_get_specific(*v24);
      v53 = MEMORY[0x1E696AF00];
      loga = v52;
      v66 = [v53 callStackSymbols];
      v54 = [v66 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v52;
      *&buf[12] = 2114;
      *&buf[14] = v54;
      _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_21:

    v55 = MEMORY[0x1E696B098];
    *buf = v13;
    *&buf[8] = v2;
    *&buf[16] = v74;
    NUPixelRectToCGRect();
    v70[0] = v56;
    v70[1] = v57;
    v70[2] = v58;
    v70[3] = v59;
    [v55 valueWithBytes:v70 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    objc_claimAutoreleasedReturnValue();
    v60 = MEMORY[0x1E696B098];
    *buf = v6;
    *&buf[8] = v8;
    *&buf[16] = v10;
    *&buf[24] = specific;
    NUPixelRectToCGRect();
    v69[0] = v61;
    v69[1] = v62;
    v69[2] = v63;
    v69[3] = v64;
    [v60 valueWithBytes:v69 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
  }

  *buf = v13;
  *&buf[8] = v2;
  *&buf[16] = v74;
  NUPixelRectToCGRect();
  [v4 setCropRect:?];
  [v4 setEnabled:1];
}

void __76__PIPosterSettlingEffectLoader_adjustVideo_cropRect_forResource_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = [a2 result:&v7];
  v4 = v7;
  if (v3)
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v4);
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  [v6 removeItemAtURL:*(a1 + 32) error:0];
}

+ (CGRect)effectiveCropRect:(CGRect)rect forResource:(id)resource error:(id *)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v49[1] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  if (!error)
  {
    v33 = NUAssertLogger_9605();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v37 = NUAssertLogger_9605();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v38)
      {
        v41 = dispatch_get_specific(*v35);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        callStackSymbols = [v42 callStackSymbols];
        v45 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v41;
        *&buf[12] = 2114;
        *&buf[14] = v45;
        _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v40;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v12 = resourceCopy;
  v47 = 0;
  v13 = [self originalCompositionForResource:resourceCopy error:&v47];
  v14 = v47;
  if (v13)
  {
    v15 = [PIPhotoEditHelper newCompositionControllerWithComposition:v13];
    livePhotoKeyFrameAdjustmentController = [v15 livePhotoKeyFrameAdjustmentController];
    if (livePhotoKeyFrameAdjustmentController)
    {
      v17 = [objc_alloc(MEMORY[0x1E69B3D28]) initWithComposition:v13];
      v18 = +[PIPipelineFilters noGeometryFilter];
      v49[0] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
      [v17 setPipelineFilters:v19];

      v46 = 0;
      v20 = [v17 submitSynchronous:&v46];
      v21 = v46;

      properties = [v20 properties];

      if (properties)
      {
        memset(buf, 0, sizeof(buf));
        [properties cleanAperture];
        [properties size];
        NUPixelRectNormalize();
        x = x - v26;
        v27 = 0.0;
        v28 = 0.0;
        if (v24 != 0.0)
        {
          x = x / v24;
          v28 = width / v24;
        }

        y = y - v23;
        if (v25 != 0.0)
        {
          y = y / v25;
          v27 = height / v25;
        }
      }

      else
      {
        *error = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to get video properties" object:v13 underlyingError:v21];
        x = *MEMORY[0x1E695F050];
        y = *(MEMORY[0x1E695F050] + 8);
        v28 = *(MEMORY[0x1E695F050] + 16);
        v27 = *(MEMORY[0x1E695F050] + 24);
      }

      v14 = v21;
    }

    else
    {
      v28 = width;
      v27 = height;
    }
  }

  else
  {
    *error = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load original composition for resource" object:v12 underlyingError:v14];
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    v28 = *(MEMORY[0x1E695F050] + 16);
    v27 = *(MEMORY[0x1E695F050] + 24);
  }

  v29 = x;
  v30 = y;
  v31 = v28;
  v32 = v27;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

+ (BOOL)adjustCropRect:(CGRect)rect outputRect:(CGRect *)outputRect outputExtent:(CGRect *)extent forComposition:(id)composition applyOrientation:(BOOL)orientation error:(id *)error
{
  orientationCopy = orientation;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v20 = buf;
  v115[1] = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (!outputRect)
  {
    v70 = NUAssertLogger_9605();
    v27 = "outCropRect != NULL";
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outCropRect != NULL"];
      *buf = 138543362;
      v107 = v71;
      _os_log_error_impl(&dword_1C7694000, v70, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_9605();
    v72 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v72)
      {
        specific = dispatch_get_specific(*callStackSymbols);
        v76 = MEMORY[0x1E696AF00];
        v77 = specific;
        callStackSymbols = [v76 callStackSymbols];
        outputRect = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v107 = specific;
        v108 = 2114;
        outputRectCopy2 = outputRect;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v72)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v107 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v75 = _NUAssertFailHandler();
    goto LABEL_36;
  }

  v22 = compositionCopy;
  if (!compositionCopy)
  {
    v73 = NUAssertLogger_9605();
    v27 = "composition != nil";
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v107 = v74;
      _os_log_error_impl(&dword_1C7694000, v73, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_9605();
    v75 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v75)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v107 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_38:

      _NUAssertFailHandler();
      goto LABEL_39;
    }

LABEL_36:
    if (v75)
    {
      specific = dispatch_get_specific(*callStackSymbols);
      v78 = MEMORY[0x1E696AF00];
      v79 = specific;
      callStackSymbols = [v78 callStackSymbols];
      outputRect = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v107 = specific;
      v108 = 2114;
      outputRectCopy2 = outputRect;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_38;
  }

  v98 = orientationCopy;
  specific = [objc_alloc(MEMORY[0x1E69B3AA8]) initWithComposition:compositionCopy];
  v24 = +[PIPipelineFilters noOrientationFilter];
  v115[0] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:1];
  [specific setPipelineFilters:v25];

  v105 = 0;
  v26 = [specific submitSynchronous:&v105];
  v27 = v105;
  callStackSymbols = [v26 geometry];

  if (callStackSymbols)
  {
    errorCopy = error;
    v29 = +[PIPipelineFilters noGeometryFilter];
    v114 = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1];
    [specific setPipelineFilters:v30];

    v104 = 0;
    v31 = [specific submitSynchronous:&v104];
    v32 = v104;

    geometry = [v31 geometry];

    if (!geometry)
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to get input image geometry" object:v22 underlyingError:v32];
      *errorCopy = LOBYTE(v56) = 0;
      v27 = v32;
LABEL_21:

      goto LABEL_22;
    }

    v90 = x;
    v92 = y;
    v94 = width;
    v96 = height;
    [geometry extent];
    NUPixelRectToCGRect();
    v10 = v33;
    y = v34;
    x = v35;
    v11 = v36;
    [callStackSymbols extent];
    NUPixelRectToCGRect();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v103 = 0;
    v20 = [callStackSymbols transformWithSourceSpace:@"/pre-Geometry" destinationSpace:@"/pre-Orientation" error:&v103];
    v27 = v103;

    if (!v20)
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to get image geometry transform" object:callStackSymbols underlyingError:v27];
      *errorCopy = LOBYTE(v56) = 0;
      goto LABEL_20;
    }

    v84 = y + v92 * v11;
    v86 = v10 + v90 * x;
    v80 = v96 * v11;
    log = v94 * x;
    [MEMORY[0x1E69B3A28] adjustCropRect:v20 inputExtent:v38 geometryTransform:{v40, v42, v44}];
    v91 = v38;
    v93 = v44;
    v117.origin.x = v38;
    v117.origin.y = v40;
    v95 = v42;
    v117.size.width = v42;
    v117.size.height = v44;
    CGRectIntersection(v116, v117);
    NUPixelRectFromCGRect();
    NUPixelRectToCGRect();
    v89 = v45;
    v9 = v46;
    width = v47;
    height = v48;
    v88 = v40;
    if (*MEMORY[0x1E69B3D78] == -1)
    {
LABEL_7:
      v49 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
      {
        v50 = MEMORY[0x1E696B098];
        *v102 = v86;
        *&v102[1] = v84;
        *&v102[2] = log;
        *&v102[3] = v80;
        loga = v49;
        extentCopy = extent;
        v81 = [v50 valueWithBytes:v102 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        *v101 = v10;
        *&v101[1] = y;
        *&v101[2] = x;
        *&v101[3] = v11;
        v51 = [MEMORY[0x1E696B098] valueWithBytes:v101 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        v100[0] = v89;
        v100[1] = v9;
        *&v100[2] = width;
        *&v100[3] = height;
        [MEMORY[0x1E696B098] valueWithBytes:v100 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        v52 = v87 = v20;
        *v99 = v91;
        *&v99[1] = v88;
        *&v99[2] = v95;
        *&v99[3] = v93;
        v53 = [MEMORY[0x1E696B098] valueWithBytes:v99 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        *buf = 138413058;
        v107 = v81;
        v108 = 2112;
        outputRectCopy2 = v51;
        v110 = 2112;
        v111 = v52;
        v112 = 2112;
        v113 = v53;
        _os_log_impl(&dword_1C7694000, loga, OS_LOG_TYPE_DEFAULT, "Adjust FRC crop rect: %@ [%@], output rect: %@ [%@]", buf, 0x2Au);

        extent = extentCopy;
        v20 = v87;
      }

      if (!v98)
      {
        v64 = v93;
        v62 = v95;
        v58 = v91;
        v60 = v88;
LABEL_16:
        NURectNormalize();
        outputRect->origin.x = v65;
        outputRect->origin.y = v66;
        outputRect->size.width = v67;
        outputRect->size.height = v68;
        if (extent)
        {
          extent->origin.x = v58;
          extent->origin.y = v60;
          LOBYTE(v56) = 1;
          extent->size.width = v62;
          extent->size.height = v64;
        }

        else
        {
          LOBYTE(v56) = 1;
        }

        goto LABEL_20;
      }

      v54 = [PIPhotoEditHelper newCompositionControllerWithComposition:v22];
      orientationAdjustmentController = [v54 orientationAdjustmentController];
      v56 = orientationAdjustmentController;
      if (orientationAdjustmentController)
      {
        [orientationAdjustmentController orientation];
        [callStackSymbols size];
        NUOrientationTransformRect();
        [callStackSymbols size];
        NUOrientationTransformRect();
        v58 = v57;
        v60 = v59;
        v62 = v61;
        v64 = v63;

        goto LABEL_16;
      }

      *errorCopy = [MEMORY[0x1E69B3A48] failureError:@"Missing orientation adjustment" object:v22];

LABEL_20:
      goto LABEL_21;
    }

LABEL_39:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_9699);
    goto LABEL_7;
  }

  [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to get output image geometry" object:v22 underlyingError:v27];
  *error = LOBYTE(v56) = 0;
LABEL_22:

  return v56;
}

+ (BOOL)adjustCropRect:(CGRect *)rect forEditedLivePhotoResource:(id)resource error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  if (!rect)
  {
    v15 = NUAssertLogger_9605();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inoutCropRect != NULL"];
      *buf = 138543362;
      v57 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_9605();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v38 = dispatch_get_specific(*callStackSymbols);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        callStackSymbols = [v39 callStackSymbols];
        v41 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v38;
        v58 = 2114;
        v59 = v41;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v25 = _NUAssertFailHandler();
    goto LABEL_32;
  }

  v9 = resourceCopy;
  if (!resourceCopy)
  {
    v22 = NUAssertLogger_9605();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "resource != nil"];
      *buf = 138543362;
      v57 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v24 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_9605();
    v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      if (v25)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v57 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_34:

      v30 = _NUAssertFailHandler();
      goto LABEL_35;
    }

LABEL_32:
    if (v25)
    {
      v42 = dispatch_get_specific(*callStackSymbols);
      v43 = MEMORY[0x1E696AF00];
      v44 = v42;
      callStackSymbols = [v43 callStackSymbols];
      v45 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v57 = v42;
      v58 = 2114;
      v59 = v45;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_34;
  }

  if ([resourceCopy type] != 6)
  {
    v27 = NUAssertLogger_9605();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "resource.type == PFParallaxAssetResourceTypeLiveOriginal"];
      *buf = 138543362;
      v57 = v28;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v29 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_9605();
    v30 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!v29)
    {
      if (v30)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v57 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_37:

      v35 = _NUAssertFailHandler();
      goto LABEL_38;
    }

LABEL_35:
    if (v30)
    {
      v46 = dispatch_get_specific(*callStackSymbols);
      v47 = MEMORY[0x1E696AF00];
      v48 = v46;
      callStackSymbols = [v47 callStackSymbols];
      v49 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v57 = v46;
      v58 = 2114;
      v59 = v49;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_37;
  }

  adjustmentData = [v9 adjustmentData];

  if (!adjustmentData)
  {
    v32 = NUAssertLogger_9605();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "resource.adjustmentData != nil"];
      *buf = 138543362;
      v57 = v33;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v34 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_9605();
    v35 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!v34)
    {
      if (v35)
      {
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v37 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v57 = v37;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_40;
    }

LABEL_38:
    if (v35)
    {
      v50 = dispatch_get_specific(*callStackSymbols);
      v51 = MEMORY[0x1E696AF00];
      v52 = v50;
      callStackSymbols6 = [v51 callStackSymbols];
      v54 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v57 = v50;
      v58 = 2114;
      v59 = v54;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_40:

    _NUAssertFailHandler();
  }

  v55 = 0;
  v11 = [self originalCompositionForResource:v9 error:&v55];
  v12 = v55;
  if (v11)
  {
    v13 = [self adjustCropRect:rect outputRect:0 outputExtent:v11 forComposition:1 applyOrientation:error error:{rect->origin.x, rect->origin.y, rect->size.width, rect->size.height}];
  }

  else
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to get original composition for live photo resource" object:v9 underlyingError:v12];
    *error = v13 = 0;
  }

  return v13;
}

+ (BOOL)canHandleEditedLivePhotoResource:(id)resource error:(id *)error
{
  resourceCopy = resource;
  v18 = 0;
  v7 = [self originalCompositionForResource:resourceCopy error:&v18];
  v8 = v18;
  if (v7)
  {
    v9 = [[PICompositionController alloc] initWithComposition:v7];
    autoLoopAdjustmentController = [(PICompositionController *)v9 autoLoopAdjustmentController];
    enabled = [autoLoopAdjustmentController enabled];

    if (enabled)
    {
      v12 = @"AutoLoop adjustment is not supported";
    }

    else
    {
      portraitAdjustmentController = [(PICompositionController *)v9 portraitAdjustmentController];
      if ([portraitAdjustmentController enabled])
      {
      }

      else
      {
        depthAdjustmentController = [(PICompositionController *)v9 depthAdjustmentController];
        enabled2 = [depthAdjustmentController enabled];

        if (!enabled2)
        {
          v13 = 1;
          goto LABEL_10;
        }
      }

      v12 = @"Portrait and depth adjustments are not supported";
    }

    [MEMORY[0x1E69B3A48] unsupportedError:v12 object:v7];
    *error = v13 = 0;
LABEL_10:

    goto LABEL_11;
  }

  [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to get original composition for live photo resource" object:resourceCopy underlyingError:v8];
  *error = v13 = 0;
LABEL_11:

  return v13;
}

+ (void)cancelRequest:(int)request
{
  v3 = *&request;
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass() sharedAnalysisService];
  [sharedAnalysisService cancelRequest:v3];
}

+ (BOOL)_canLoadVideoAtURL:(id)l
{
  lCopy = l;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy];
  v5 = [MEMORY[0x1E6987E28] assetWithData:v4 contentType:*MEMORY[0x1E69874C0] options:MEMORY[0x1E695E0F8]];

  return 1;
}

+ (int)loadVideoWithResource:(id)resource options:(id)options completion:(id)completion
{
  v42[2] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  optionsCopy = options;
  completionCopy = completion;
  imageFileURL = [resourceCopy imageFileURL];
  if (imageFileURL && (v12 = imageFileURL, [resourceCopy videoFileURL], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    adjustmentData = [resourceCopy adjustmentData];

    if (adjustmentData)
    {
      v41 = 0;
      if (([self canHandleEditedLivePhotoResource:resourceCopy error:&v41] & 1) == 0)
      {
        completionCopy[2](completionCopy, 0, 1, 256, v41);
        goto LABEL_13;
      }
    }

    v15 = +[PIGlobalSettings globalSettings];
    disableMADForSettlingEffect = [v15 disableMADForSettlingEffect];

    if (!disableMADForSettlingEffect)
    {
      v30 = [self _resolveOptions:optionsCopy forResource:resourceCopy];
      sharedAnalysisService = [getVCPMediaAnalysisServiceClass() sharedAnalysisService];
      imageFileURL2 = [resourceCopy imageFileURL];
      v42[0] = imageFileURL2;
      videoFileURL = [resourceCopy videoFileURL];
      v42[1] = videoFileURL;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __73__PIPosterSettlingEffectLoader_loadVideoWithResource_options_completion___block_invoke;
      v35[3] = &unk_1E82AA9F8;
      v36 = resourceCopy;
      v38 = completionCopy;
      selfCopy = self;
      v37 = optionsCopy;
      v28 = [sharedAnalysisService requestAnalysisTypes:0x4000000000 forAssetWithResourceURLs:v34 withOptions:v30 progressHandler:0 andCompletionHandler:v35];

      goto LABEL_14;
    }

    v17 = objc_alloc(MEMORY[0x1E695DFF8]);
    v18 = NSTemporaryDirectory();
    v19 = [v17 initFileURLWithPath:v18 isDirectory:1];

    videoFileURL2 = [resourceCopy videoFileURL];
    lastPathComponent = [videoFileURL2 lastPathComponent];
    v22 = [v19 URLByAppendingPathComponent:lastPathComponent];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    videoFileURL3 = [resourceCopy videoFileURL];
    v40 = 0;
    v25 = [defaultManager copyItemAtURL:videoFileURL3 toURL:v22 error:&v40];
    v26 = v40;

    if (v25)
    {
      if ([optionsCopy isInteractiveRequest])
      {
        v27 = 3;
      }

      else
      {
        v27 = 5;
      }

      (completionCopy)[2](completionCopy, v22, v27, 0, 0);
    }

    else
    {
      completionCopy[2](completionCopy, 0, 1, 512, v26);
    }
  }

  else
  {
    v22 = [MEMORY[0x1E69B3A48] missingError:@"Resource is missing image and/or video URLs" object:resourceCopy];
    completionCopy[2](completionCopy, 0, 1, 128, v22);
  }

LABEL_13:
  v28 = 0;
LABEL_14:

  return v28;
}

void __73__PIPosterSettlingEffectLoader_loadVideoWithResource_options_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = getMediaAnalysisResultsKey();
    v8 = [v5 objectForKeyedSubscript:v7];

    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v9 = getMediaAnalysisSettlingEffectResultsKeySymbolLoc_ptr;
    v74 = getMediaAnalysisSettlingEffectResultsKeySymbolLoc_ptr;
    if (!getMediaAnalysisSettlingEffectResultsKeySymbolLoc_ptr)
    {
      *&v68 = MEMORY[0x1E69E9820];
      *(&v68 + 1) = 3221225472;
      *&v69 = __getMediaAnalysisSettlingEffectResultsKeySymbolLoc_block_invoke;
      *(&v69 + 1) = &unk_1E82AC930;
      v70 = &v71;
      v10 = MediaAnalysisLibrary();
      v72[3] = dlsym(v10, "MediaAnalysisSettlingEffectResultsKey");
      getMediaAnalysisSettlingEffectResultsKeySymbolLoc_ptr = *(v70[1] + 24);
      v9 = v72[3];
    }

    _Block_object_dispose(&v71, 8);
    if (!v9)
    {
      v46 = [MEMORY[0x1E696AAA8] currentHandler];
      v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisSettlingEffectResultsKey(void)"];
      [v46 handleFailureInFunction:v47 file:@"PIPosterSettlingEffectLoader.m" lineNumber:41 description:{@"%s", dlerror()}];
      goto LABEL_44;
    }

    v11 = [v8 objectForKeyedSubscript:*v9];
    v12 = [v11 firstObject];
    v13 = getMediaAnalysisResultAttributesKey();
    v14 = [v12 objectForKeyedSubscript:v13];

    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v15 = getMediaAnalysisResultSettlingEffectURLAttributeKeySymbolLoc_ptr;
    v74 = getMediaAnalysisResultSettlingEffectURLAttributeKeySymbolLoc_ptr;
    if (!getMediaAnalysisResultSettlingEffectURLAttributeKeySymbolLoc_ptr)
    {
      *&v68 = MEMORY[0x1E69E9820];
      *(&v68 + 1) = 3221225472;
      *&v69 = __getMediaAnalysisResultSettlingEffectURLAttributeKeySymbolLoc_block_invoke;
      *(&v69 + 1) = &unk_1E82AC930;
      v70 = &v71;
      v16 = MediaAnalysisLibrary();
      v72[3] = dlsym(v16, "MediaAnalysisResultSettlingEffectURLAttributeKey");
      getMediaAnalysisResultSettlingEffectURLAttributeKeySymbolLoc_ptr = *(v70[1] + 24);
      v15 = v72[3];
    }

    _Block_object_dispose(&v71, 8);
    if (!v15)
    {
      v46 = [MEMORY[0x1E696AAA8] currentHandler];
      v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultSettlingEffectURLAttributeKey(void)"];
      [v46 handleFailureInFunction:v47 file:@"PIPosterSettlingEffectLoader.m" lineNumber:40 description:{@"%s", dlerror()}];
      goto LABEL_44;
    }

    v53 = v6;
    v54 = v12;
    v17 = *v15;
    v18 = [v14 objectForKeyedSubscript:v17];

    v19 = getMediaAnalysisResultSettlingEffectStatusAttributeKey();
    v20 = [v14 objectForKeyedSubscript:v19];

    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = [a1[7] _gatingFlagsFromMADStatus:v20];
    v55 = v8;
    if (!v18)
    {
      v21 = [MEMORY[0x1E69B3A48] missingError:@"Missing settling effect video results" object:v8];
      if (!v65[3])
      {
        v65[3] = 512;
      }

      (*(a1[6] + 2))();
      goto LABEL_40;
    }

    v21 = [MEMORY[0x1E695DFF8] fileURLWithPath:v18];
    v22 = [a1[5] isInteractiveRequest];
    v23 = 5;
    if (v22)
    {
      v23 = 3;
    }

    v51 = v23;
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v24 = getMediaAnalysisResultSettlingEffectFRCRecommendationAttributeKeySymbolLoc_ptr;
    v74 = getMediaAnalysisResultSettlingEffectFRCRecommendationAttributeKeySymbolLoc_ptr;
    if (!getMediaAnalysisResultSettlingEffectFRCRecommendationAttributeKeySymbolLoc_ptr)
    {
      *&v68 = MEMORY[0x1E69E9820];
      *(&v68 + 1) = 3221225472;
      *&v69 = __getMediaAnalysisResultSettlingEffectFRCRecommendationAttributeKeySymbolLoc_block_invoke;
      *(&v69 + 1) = &unk_1E82AC930;
      v70 = &v71;
      v25 = MediaAnalysisLibrary();
      v26 = dlsym(v25, "MediaAnalysisResultSettlingEffectFRCRecommendationAttributeKey");
      *(v70[1] + 24) = v26;
      getMediaAnalysisResultSettlingEffectFRCRecommendationAttributeKeySymbolLoc_ptr = *(v70[1] + 24);
      v24 = v72[3];
    }

    _Block_object_dispose(&v71, 8);
    if (!v24)
    {
      while (1)
      {
        v46 = [MEMORY[0x1E696AAA8] currentHandler];
        v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultSettlingEffectFRCRecommendationAttributeKey(void)"];
        [v46 handleFailureInFunction:v47 file:@"PIPosterSettlingEffectLoader.m" lineNumber:44 description:{@"%s", dlerror()}];
LABEL_44:

        __break(1u);
      }
    }

    v52 = v11;
    v27 = *v24;
    v28 = [v14 objectForKeyedSubscript:v27];

    if (v28)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v33 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid FRC Recommendation value" object:v28];
        v65[3] |= 0x200uLL;
        (*(a1[6] + 2))();
        goto LABEL_38;
      }

      v29 = [v28 integerValue];
      if (v29 < 5)
      {
        v51 = qword_1C7846020[v29];
      }
    }

    v30 = [a1[4] adjustmentData];
    if (v30 && (v31 = [a1[5] loadVideoStatusOnly], v30, !v31))
    {
      v34 = getMediaAnalysisPathConstraintsStabilizationResultsKey();
      v33 = [v55 objectForKeyedSubscript:v34];

      v50 = [v33 firstObject];
      if (v50)
      {
        v35 = getMediaAnalysisResultAttributesKey();
        v36 = [v50 objectForKeyedSubscript:v35];

        v37 = v36;
        if (v36)
        {
          v38 = *(MEMORY[0x1E695F050] + 16);
          v68 = *MEMORY[0x1E695F050];
          v69 = v38;
          v39 = a1[7];
          v63 = 0;
          v49 = v36;
          v40 = [v39 extractCropRect:&v68 fromStabilizationResultAttributes:v36 error:&v63];
          v41 = v63;
          if (v40)
          {
            v48 = a1[7];
            v42 = a1[4];
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 3221225472;
            v56[2] = __73__PIPosterSettlingEffectLoader_loadVideoWithResource_options_completion___block_invoke_2;
            v56[3] = &unk_1E82AA9D0;
            v57 = v42;
            v60 = &v64;
            v43 = a1[6];
            v44 = a1[7];
            v59 = v43;
            v61 = v44;
            v58 = v21;
            v62 = v51;
            [v48 adjustVideo:v58 cropRect:v57 forResource:v56 completion:{v68, v69}];
          }

          else
          {
            v45 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to extract crop rect from stabilization result" object:v50 underlyingError:?];

            (*(a1[6] + 2))();
            v41 = v45;
          }

          v37 = v49;
        }

        else
        {
          v41 = [MEMORY[0x1E69B3A48] missingError:@"Missing stabilized crop rect attributes" object:v5];
          (*(a1[6] + 2))();
        }
      }

      else
      {
        v37 = [MEMORY[0x1E69B3A48] missingError:@"Missing stabilized crop rect results" object:v5];
        (*(a1[6] + 2))();
      }
    }

    else
    {
      if ([a1[7] _canLoadVideoAtURL:v21])
      {
        (*(a1[6] + 2))();
LABEL_39:

        v11 = v52;
LABEL_40:

        _Block_object_dispose(&v64, 8);
        v6 = v53;
        goto LABEL_41;
      }

      v65[3] |= 0x2000uLL;
      v33 = [MEMORY[0x1E69B3A48] invalidError:@"Failed to load video asset from file" object:v21];
      (*(a1[6] + 2))();
    }

LABEL_38:

    goto LABEL_39;
  }

  v32 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to analyze asset for settling effect" object:a1[4] underlyingError:v6];
  (*(a1[6] + 2))();

LABEL_41:
}

void __73__PIPosterSettlingEffectLoader_loadVideoWithResource_options_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    if ([*(a1 + 64) _canLoadVideoAtURL:*(a1 + 40)])
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) |= 0x2000uLL;
      v7 = [MEMORY[0x1E69B3A48] invalidError:@"Failed to load video asset from file" object:*(a1 + 40)];
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v6 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to adjust video for edited live photo resource" object:*(a1 + 32) underlyingError:v5];

    *(*(*(a1 + 56) + 8) + 24) |= 0x400uLL;
    (*(*(a1 + 48) + 16))();
    v5 = v6;
  }
}

+ (BOOL)extractCropRect:(CGRect *)rect fromStabilizationResultAttributes:(id)attributes error:(id *)error
{
  v63 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  if (!rect)
  {
    v30 = NUAssertLogger_9605();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outCropRect != NULL"];
      LODWORD(rect.origin.x) = 138543362;
      *(&rect.origin.x + 4) = v31;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &rect, 0xCu);
    }

    rect = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    currentHandler = NUAssertLogger_9605();
    v34 = os_log_type_enabled(currentHandler, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      goto LABEL_39;
    }

    if (v34)
    {
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      rect = [callStackSymbols componentsJoinedByString:@"\n"];
      LODWORD(rect.origin.x) = 138543362;
      *(&rect.origin.x + 4) = rect;
      _os_log_error_impl(&dword_1C7694000, currentHandler, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &rect, 0xCu);
    }

    goto LABEL_41;
  }

  v8 = attributesCopy;
  if (!attributesCopy)
  {
    v36 = NUAssertLogger_9605();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "stabResultAttributes != nil"];
      LODWORD(rect.origin.x) = 138543362;
      *(&rect.origin.x + 4) = v37;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &rect, 0xCu);
    }

    rect = MEMORY[0x1E69B38E8];
    v38 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    currentHandler = NUAssertLogger_9605();
    v39 = os_log_type_enabled(currentHandler, OS_LOG_TYPE_ERROR);
    if (v38)
    {
      if (v39)
      {
        v50 = dispatch_get_specific(*&rect->origin.x);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        rect = [v51 callStackSymbols];
        v53 = [(CGRect *)rect componentsJoinedByString:@"\n"];
        LODWORD(rect.origin.x) = 138543618;
        *(&rect.origin.x + 4) = v50;
        WORD2(rect.origin.y) = 2114;
        *(&rect.origin.y + 6) = v53;
        _os_log_error_impl(&dword_1C7694000, currentHandler, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &rect, 0x16u);
      }

      goto LABEL_44;
    }

    if (v39)
    {
LABEL_31:
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      rect = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(rect.origin.x) = 138543362;
      *(&rect.origin.x + 4) = rect;
      _os_log_error_impl(&dword_1C7694000, currentHandler, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &rect, 0xCu);
    }

LABEL_44:

    v34 = _NUAssertFailHandler();
    goto LABEL_38;
  }

  if (!error)
  {
    v41 = NUAssertLogger_9605();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(rect.origin.x) = 138543362;
      *(&rect.origin.x + 4) = v42;
      _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &rect, 0xCu);
    }

    rect = MEMORY[0x1E69B38E8];
    v43 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    currentHandler = NUAssertLogger_9605();
    v44 = os_log_type_enabled(currentHandler, OS_LOG_TYPE_ERROR);
    if (v43)
    {
      if (v44)
      {
        v54 = dispatch_get_specific(*&rect->origin.x);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        rect = [v55 callStackSymbols];
        v57 = [(CGRect *)rect componentsJoinedByString:@"\n"];
        LODWORD(rect.origin.x) = 138543618;
        *(&rect.origin.x + 4) = v54;
        WORD2(rect.origin.y) = 2114;
        *(&rect.origin.y + 6) = v57;
        _os_log_error_impl(&dword_1C7694000, currentHandler, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &rect, 0x16u);
      }

      goto LABEL_44;
    }

    if (v44)
    {
      goto LABEL_31;
    }

    goto LABEL_44;
  }

  size.width = 0.0;
  *&size.height = &size;
  v59 = 0x2020000000;
  v9 = getMediaAnalysisResultsStabilizationCropAttributeKeySymbolLoc_ptr;
  v60 = getMediaAnalysisResultsStabilizationCropAttributeKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultsStabilizationCropAttributeKeySymbolLoc_ptr)
  {
    *&rect.origin.x = MEMORY[0x1E69E9820];
    *&rect.origin.y = 3221225472;
    *&rect.size.width = __getMediaAnalysisResultsStabilizationCropAttributeKeySymbolLoc_block_invoke;
    *&rect.size.height = &unk_1E82AC930;
    p_size = &size;
    v10 = MediaAnalysisLibrary();
    v11 = dlsym(v10, "MediaAnalysisResultsStabilizationCropAttributeKey");
    *(*&p_size->height + 24) = v11;
    getMediaAnalysisResultsStabilizationCropAttributeKeySymbolLoc_ptr = *(*&p_size->height + 24);
    v9 = *(*&size.height + 24);
  }

  _Block_object_dispose(&size, 8);
  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultsStabilizationCropAttributeKey(void)"];
    [currentHandler handleFailureInFunction:v45 file:@"PIPosterSettlingEffectLoader.m" lineNumber:42 description:@"%s", dlerror()];

    while (1)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      if (v34)
      {
        v46 = dispatch_get_specific(*&rect->origin.x);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        rect = [v47 callStackSymbols];
        v49 = [(CGRect *)rect componentsJoinedByString:@"\n"];
        LODWORD(rect.origin.x) = 138543618;
        *(&rect.origin.x + 4) = v46;
        WORD2(rect.origin.y) = 2114;
        *(&rect.origin.y + 6) = v49;
        _os_log_error_impl(&dword_1C7694000, currentHandler, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &rect, 0x16u);
      }

LABEL_41:

      v34 = _NUAssertFailHandler();
    }
  }

  v12 = [v8 objectForKeyedSubscript:*v9];
  v13 = [v8 objectForKeyedSubscript:@"SourceSize"];
  v14 = *(MEMORY[0x1E695F058] + 16);
  rect.origin = *MEMORY[0x1E695F058];
  rect.size = v14;
  v15 = v12;
  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_17;
  }

  v16 = CGRectMakeWithDictionaryRepresentation(v15, &rect);

  if (!v16)
  {
LABEL_17:
    v28 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid settling effect stabilization crop rect" object:v15];
LABEL_18:
    v27 = 0;
    *error = v28;
    goto LABEL_19;
  }

  size = *MEMORY[0x1E695F060];
  v17 = v13;
  if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_21;
  }

  v18 = CGSizeMakeWithDictionaryRepresentation(v17, &size);

  if (!v18)
  {
LABEL_21:
    v28 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid settling effect stabilization source size" object:v17];
    goto LABEL_18;
  }

  height = size.height;
  if (size.width >= size.height)
  {
    height = size.width;
  }

  v20 = vdivq_f64(vdupq_lane_s64(*&height, 0), size);
  v21 = vmulq_f64(rect.size, v20);
  __asm { FMOV            V3.2D, #0.5 }

  rect->origin = vmlaq_f64(_Q3, v20, rect.origin);
  rect->size = v21;
  v27 = 1;
LABEL_19:

  return v27;
}

+ (int)loadCropRectWithResource:(id)resource options:(id)options completion:(id)completion
{
  v37[2] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  optionsCopy = options;
  completionCopy = completion;
  imageFileURL = [resourceCopy imageFileURL];
  if (imageFileURL && (v12 = imageFileURL, [resourceCopy videoFileURL], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    adjustmentData = [resourceCopy adjustmentData];

    if (adjustmentData)
    {
      v36 = 0;
      if (([self canHandleEditedLivePhotoResource:resourceCopy error:&v36] & 1) == 0)
      {
        completionCopy[2](completionCopy, 1, 256, v36, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
        goto LABEL_13;
      }
    }

    v15 = +[PIGlobalSettings globalSettings];
    disableMADForSettlingEffect = [v15 disableMADForSettlingEffect];

    if (!disableMADForSettlingEffect)
    {
      v24 = [self _resolveOptions:optionsCopy forResource:resourceCopy];
      sharedAnalysisService = [getVCPMediaAnalysisServiceClass() sharedAnalysisService];
      imageFileURL2 = [resourceCopy imageFileURL];
      v37[0] = imageFileURL2;
      videoFileURL = [resourceCopy videoFileURL];
      v37[1] = videoFileURL;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __76__PIPosterSettlingEffectLoader_loadCropRectWithResource_options_completion___block_invoke_2;
      v29[3] = &unk_1E82AA9A8;
      v30 = resourceCopy;
      v31 = completionCopy;
      selfCopy = self;
      v22 = [sharedAnalysisService requestAnalysisTypes:0x10000000000 forAssetWithResourceURLs:v28 withOptions:v24 progressHandler:0 andCompletionHandler:v29];

      goto LABEL_14;
    }

    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_9699);
    }

    v17 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7694000, v17, OS_LOG_TYPE_DEFAULT, "MAD for settling effect is disabled", buf, 2u);
    }

    v18 = +[PIPhotoEditHelper newComposition];
    videoFileURL2 = [resourceCopy videoFileURL];
    v20 = [PIPhotoEditHelper videoSourceWithURL:videoFileURL2];

    [v18 setObject:v20 forKeyedSubscript:@"source"];
    [v18 setMediaType:2];
    v21 = [objc_alloc(MEMORY[0x1E69B3D28]) initWithComposition:v18];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __76__PIPosterSettlingEffectLoader_loadCropRectWithResource_options_completion___block_invoke;
    v33[3] = &unk_1E82ACA08;
    v34 = completionCopy;
    [v21 submit:v33];
  }

  else
  {
    v18 = [MEMORY[0x1E69B3A48] missingError:@"Resource is missing image and/or video URLs" object:resourceCopy];
    (completionCopy)[2](completionCopy, 1, 128, v18, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
  }

LABEL_13:
  v22 = 0;
LABEL_14:

  return v22;
}

void __76__PIPosterSettlingEffectLoader_loadCropRectWithResource_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v30 = 0;
  v3 = [a2 result:&v30];
  v4 = v30;
  if (v3)
  {
    v28 = 0u;
    v29 = 0u;
    v9 = [v3 properties];
    v10 = v9;
    if (v9)
    {
      [v9 cleanAperture];
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    NUPixelRectToCGRect();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v3 properties];
    [v19 size];
    NUPixelSizeToCGRect();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v5.n128_f64[0] = v12 - v21;
    v8.n128_u64[0] = 0;
    v7.n128_u64[0] = 0;
    if (v25 != 0.0)
    {
      v5.n128_f64[0] = v5.n128_f64[0] / v25;
      v7.n128_f64[0] = v16 / v25;
    }

    v6.n128_f64[0] = v14 - v23;
    if (v27 != 0.0)
    {
      v6.n128_f64[0] = v6.n128_f64[0] / v27;
      v8.n128_f64[0] = v18 / v27;
    }
  }

  else
  {
    v5.n128_u64[0] = *MEMORY[0x1E695F050];
    v6.n128_u64[0] = *(MEMORY[0x1E695F050] + 8);
    v7.n128_u64[0] = *(MEMORY[0x1E695F050] + 16);
    v8.n128_u64[0] = *(MEMORY[0x1E695F050] + 24);
  }

  (*(*(a1 + 32) + 16))(v5, v6, v7, v8);
}

void __76__PIPosterSettlingEffectLoader_loadCropRectWithResource_options_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = getMediaAnalysisResultsKey();
    v7 = [v5 objectForKeyedSubscript:v6];

    v8 = getMediaAnalysisPathConstraintsStabilizationResultsKey();
    v9 = [v7 objectForKeyedSubscript:v8];

    v10 = [v9 firstObject];
    if (v10)
    {
      v11 = getMediaAnalysisResultAttributesKey();
      v12 = [v10 objectForKeyedSubscript:v11];

      if (v12)
      {
        v28 = v7;
        v13 = getMediaAnalysisResultSettlingEffectStatusAttributeKey();
        v14 = [v12 objectForKeyedSubscript:v13];

        v15 = v14;
        [*(a1 + 48) _gatingFlagsFromMADStatus:v14];
        v16 = MEMORY[0x1E695F050];
        v17 = *(MEMORY[0x1E695F050] + 16);
        v31 = *MEMORY[0x1E695F050];
        v32 = v17;
        v18 = *(a1 + 48);
        v30 = 0;
        v19 = [v18 extractCropRect:&v31 fromStabilizationResultAttributes:v12 error:&v30];
        v20 = v30;
        if (v19)
        {
          v21 = [*(a1 + 32) adjustmentData];

          if (v21)
          {
            v22 = *(a1 + 48);
            v23 = *(a1 + 32);
            v29 = 0;
            v24 = [v22 adjustCropRect:&v31 forEditedLivePhotoResource:v23 error:&v29];
            v25 = v29;

            v7 = v28;
            if (v24)
            {
              (*(*(a1 + 40) + 16))(*&v31, *(&v31 + 1), *&v32, *(&v32 + 1));
              v20 = v25;
            }

            else
            {
              v20 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to adjust stabilization crop rect" object:*(a1 + 32) underlyingError:v25];

              (*(*(a1 + 40) + 16))(*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
            }

            v15 = v14;
            goto LABEL_16;
          }

          (*(*(a1 + 40) + 16))(*&v31, *(&v31 + 1), *&v32, *(&v32 + 1));
        }

        else
        {
          v27 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to extract crop rect from stabilization result" object:v10 underlyingError:v20];

          (*(*(a1 + 40) + 16))(*v16, v16[1], v16[2], v16[3]);
          v20 = v27;
        }

        v7 = v28;
LABEL_16:

        goto LABEL_17;
      }

      v26 = [MEMORY[0x1E69B3A48] missingError:@"Missing stabilized crop rect attributes" object:v5];
      (*(*(a1 + 40) + 16))(*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    }

    else
    {
      v12 = [MEMORY[0x1E69B3A48] missingError:@"Missing stabilized crop rect results" object:v5];
      (*(*(a1 + 40) + 16))(*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    }

LABEL_17:

    goto LABEL_18;
  }

  v7 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to analyze asset for stabilization" object:*(a1 + 32) underlyingError:a3];
  (*(*(a1 + 40) + 16))(*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
LABEL_18:
}

+ (unint64_t)_gatingFlagsFromMADStatus:(id)status
{
  v55[8] = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v4 = getMediaAnalysisResultSettlingEffectMissingMetadataKeySymbolLoc_ptr;
  v50 = getMediaAnalysisResultSettlingEffectMissingMetadataKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultSettlingEffectMissingMetadataKeySymbolLoc_ptr)
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __getMediaAnalysisResultSettlingEffectMissingMetadataKeySymbolLoc_block_invoke;
    v45 = &unk_1E82AC930;
    v46 = &v47;
    v5 = MediaAnalysisLibrary();
    v48[3] = dlsym(v5, "MediaAnalysisResultSettlingEffectMissingMetadataKey");
    getMediaAnalysisResultSettlingEffectMissingMetadataKeySymbolLoc_ptr = *(v46[1] + 24);
    v4 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultSettlingEffectMissingMetadataKey(void)"];
    [currentHandler handleFailureInFunction:v28 file:@"PIPosterSettlingEffectLoader.m" lineNumber:46 description:{@"%s", dlerror()}];

    goto LABEL_26;
  }

  v6 = *v4;
  v55[0] = &unk_1F471EBE0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v7 = getMediaAnalysisResultSettlingEffectStabilizationFailureKeySymbolLoc_ptr;
  v50 = getMediaAnalysisResultSettlingEffectStabilizationFailureKeySymbolLoc_ptr;
  v51[0] = v6;
  if (!getMediaAnalysisResultSettlingEffectStabilizationFailureKeySymbolLoc_ptr)
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __getMediaAnalysisResultSettlingEffectStabilizationFailureKeySymbolLoc_block_invoke;
    v45 = &unk_1E82AC930;
    v46 = &v47;
    v8 = MediaAnalysisLibrary();
    v48[3] = dlsym(v8, "MediaAnalysisResultSettlingEffectStabilizationFailureKey");
    getMediaAnalysisResultSettlingEffectStabilizationFailureKeySymbolLoc_ptr = *(v46[1] + 24);
    v7 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v7)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultSettlingEffectStabilizationFailureKey(void)"];
    [currentHandler2 handleFailureInFunction:v30 file:@"PIPosterSettlingEffectLoader.m" lineNumber:47 description:{@"%s", dlerror()}];

    goto LABEL_26;
  }

  v9 = *v7;
  v51[1] = v9;
  v55[1] = &unk_1F471EBF8;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v10 = getMediaAnalysisResultSettlingEffectVideoQualityGatingFailureKeySymbolLoc_ptr;
  v50 = getMediaAnalysisResultSettlingEffectVideoQualityGatingFailureKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultSettlingEffectVideoQualityGatingFailureKeySymbolLoc_ptr)
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __getMediaAnalysisResultSettlingEffectVideoQualityGatingFailureKeySymbolLoc_block_invoke;
    v45 = &unk_1E82AC930;
    v46 = &v47;
    v11 = MediaAnalysisLibrary();
    v48[3] = dlsym(v11, "MediaAnalysisResultSettlingEffectVideoQualityGatingFailureKey");
    getMediaAnalysisResultSettlingEffectVideoQualityGatingFailureKeySymbolLoc_ptr = *(v46[1] + 24);
    v10 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v10)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultSettlingEffectVideoQualityGatingFailureKey(void)"];
    [currentHandler3 handleFailureInFunction:v32 file:@"PIPosterSettlingEffectLoader.m" lineNumber:48 description:{@"%s", dlerror()}];

    goto LABEL_26;
  }

  v12 = *v10;
  v51[2] = v12;
  v55[2] = &unk_1F471EC10;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v13 = getMediaAnalysisResultSettlingEffectMetadataIntegrityFailureKeySymbolLoc_ptr;
  v50 = getMediaAnalysisResultSettlingEffectMetadataIntegrityFailureKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultSettlingEffectMetadataIntegrityFailureKeySymbolLoc_ptr)
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __getMediaAnalysisResultSettlingEffectMetadataIntegrityFailureKeySymbolLoc_block_invoke;
    v45 = &unk_1E82AC930;
    v46 = &v47;
    v14 = MediaAnalysisLibrary();
    v48[3] = dlsym(v14, "MediaAnalysisResultSettlingEffectMetadataIntegrityFailureKey");
    getMediaAnalysisResultSettlingEffectMetadataIntegrityFailureKeySymbolLoc_ptr = *(v46[1] + 24);
    v13 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v13)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultSettlingEffectMetadataIntegrityFailureKey(void)"];
    [currentHandler4 handleFailureInFunction:v34 file:@"PIPosterSettlingEffectLoader.m" lineNumber:49 description:{@"%s", dlerror()}];

    goto LABEL_26;
  }

  v15 = *v13;
  v51[3] = v15;
  v55[3] = &unk_1F471EC28;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v16 = getMediaAnalysisResultSettlingEffectFRCGatingFailureKeySymbolLoc_ptr;
  v50 = getMediaAnalysisResultSettlingEffectFRCGatingFailureKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultSettlingEffectFRCGatingFailureKeySymbolLoc_ptr)
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __getMediaAnalysisResultSettlingEffectFRCGatingFailureKeySymbolLoc_block_invoke;
    v45 = &unk_1E82AC930;
    v46 = &v47;
    v17 = MediaAnalysisLibrary();
    v48[3] = dlsym(v17, "MediaAnalysisResultSettlingEffectFRCGatingFailureKey");
    getMediaAnalysisResultSettlingEffectFRCGatingFailureKeySymbolLoc_ptr = *(v46[1] + 24);
    v16 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v16)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultSettlingEffectFRCGatingFailureKey(void)"];
    [currentHandler5 handleFailureInFunction:v36 file:@"PIPosterSettlingEffectLoader.m" lineNumber:50 description:{@"%s", dlerror()}];

    goto LABEL_26;
  }

  v18 = *v16;
  v51[4] = v18;
  v55[4] = &unk_1F471EC40;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v19 = getMediaAnalysisResultSettlingEffectStillTransitionGatingFailureKeySymbolLoc_ptr;
  v50 = getMediaAnalysisResultSettlingEffectStillTransitionGatingFailureKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultSettlingEffectStillTransitionGatingFailureKeySymbolLoc_ptr)
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __getMediaAnalysisResultSettlingEffectStillTransitionGatingFailureKeySymbolLoc_block_invoke;
    v45 = &unk_1E82AC930;
    v46 = &v47;
    v20 = MediaAnalysisLibrary();
    v48[3] = dlsym(v20, "MediaAnalysisResultSettlingEffectStillTransitionGatingFailureKey");
    getMediaAnalysisResultSettlingEffectStillTransitionGatingFailureKeySymbolLoc_ptr = *(v46[1] + 24);
    v19 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  if (!v19)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultSettlingEffectStillTransitionGatingFailureKey(void)"];
    [currentHandler6 handleFailureInFunction:v38 file:@"PIPosterSettlingEffectLoader.m" lineNumber:51 description:{@"%s", dlerror()}];

LABEL_26:
    __break(1u);
  }

  v52 = *v19;
  v53 = @"settlingEffectMinSettlingDurationThresholdFailure";
  v55[5] = &unk_1F471EC58;
  v55[6] = &unk_1F471EC70;
  v54 = @"settlingEffectLivePhotoKeyFrameTimeOutOfBoundFailure";
  v55[7] = &unk_1F471EC70;
  v21 = MEMORY[0x1E695DF20];
  v22 = v52;
  v23 = [v21 dictionaryWithObjects:v55 forKeys:v51 count:8];

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __58__PIPosterSettlingEffectLoader__gatingFlagsFromMADStatus___block_invoke;
  v39[3] = &unk_1E82AA980;
  v24 = v23;
  v40 = v24;
  v41 = &v42;
  [statusCopy enumerateKeysAndObjectsUsingBlock:v39];
  v25 = *(v43 + 24);

  _Block_object_dispose(&v42, 8);
  return v25;
}

void __58__PIPosterSettlingEffectLoader__gatingFlagsFromMADStatus___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = [v5 objectForKeyedSubscript:a2];
  v7 = [v8 unsignedIntegerValue];
  LODWORD(v5) = [v6 BOOLValue];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) |= v7;
  }
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_livePhotoKeyFrameTimeForResource:(SEL)resource
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  adjustmentData = [v6 adjustmentData];

  if (adjustmentData)
  {
    v18 = 0;
    v8 = [a2 originalCompositionForResource:v6 error:&v18];
    v9 = v18;
    if (v8)
    {
      v10 = [[PICompositionController alloc] initWithComposition:v8];
      livePhotoKeyFrameAdjustmentController = [(PICompositionController *)v10 livePhotoKeyFrameAdjustmentController];
      v12 = livePhotoKeyFrameAdjustmentController;
      if (livePhotoKeyFrameAdjustmentController)
      {
        retstr->var0 = 0;
        *&retstr->var1 = 0;
        retstr->var3 = 0;
        [livePhotoKeyFrameAdjustmentController keyFrameTime];
      }

      else
      {
        v16 = MEMORY[0x1E6960C70];
        *&retstr->var0 = *MEMORY[0x1E6960C70];
        retstr->var3 = *(v16 + 16);
      }
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_9699);
      }

      v14 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = v9;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Failed to load original composition for settling effect resource, error: %{public}@", buf, 0xCu);
      }

      v15 = MEMORY[0x1E6960C70];
      *&retstr->var0 = *MEMORY[0x1E6960C70];
      retstr->var3 = *(v15 + 16);
    }
  }

  else
  {
    v13 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v13 + 16);
  }

  return result;
}

+ (id)_resolveOptions:(id)options forResource:(id)resource
{
  optionsCopy = options;
  resourceCopy = resource;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(optionsCopy, "needsInProcessHandling")}];
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x2020000000;
  v10 = getVCPMediaAnalysisService_InProcessOptionSymbolLoc_ptr;
  v26 = getVCPMediaAnalysisService_InProcessOptionSymbolLoc_ptr;
  if (!getVCPMediaAnalysisService_InProcessOptionSymbolLoc_ptr)
  {
    *&v22 = MEMORY[0x1E69E9820];
    *(&v22 + 1) = 3221225472;
    v23 = __getVCPMediaAnalysisService_InProcessOptionSymbolLoc_block_invoke;
    v24 = &unk_1E82AC930;
    v11 = MediaAnalysisLibrary();
    *(*&time.timescale + 24) = dlsym(v11, "VCPMediaAnalysisService_InProcessOption");
    getVCPMediaAnalysisService_InProcessOptionSymbolLoc_ptr = *(*&time.timescale + 24);
    v10 = *(*&time.timescale + 24);
  }

  _Block_object_dispose(&time, 8);
  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getVCPMediaAnalysisService_InProcessOption(void)"];
    [currentHandler handleFailureInFunction:v21 file:@"PIPosterSettlingEffectLoader.m" lineNumber:53 description:{@"%s", dlerror(), v22, v23, v24}];
LABEL_18:

    __break(1u);
    return result;
  }

  [v8 setObject:v9 forKeyedSubscript:*v10];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(optionsCopy, "isInteractiveRequest")}];
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x2020000000;
  v13 = getVCPMediaAnalysisService_UserInitiatedModeOptionSymbolLoc_ptr;
  v26 = getVCPMediaAnalysisService_UserInitiatedModeOptionSymbolLoc_ptr;
  if (!getVCPMediaAnalysisService_UserInitiatedModeOptionSymbolLoc_ptr)
  {
    *&v22 = MEMORY[0x1E69E9820];
    *(&v22 + 1) = 3221225472;
    v23 = __getVCPMediaAnalysisService_UserInitiatedModeOptionSymbolLoc_block_invoke;
    v24 = &unk_1E82AC930;
    v14 = MediaAnalysisLibrary();
    *(*&time.timescale + 24) = dlsym(v14, "VCPMediaAnalysisService_UserInitiatedModeOption");
    getVCPMediaAnalysisService_UserInitiatedModeOptionSymbolLoc_ptr = *(*&time.timescale + 24);
    v13 = *(*&time.timescale + 24);
  }

  _Block_object_dispose(&time, 8);
  if (!v13)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getVCPMediaAnalysisService_UserInitiatedModeOption(void)"];
    [currentHandler handleFailureInFunction:v21 file:@"PIPosterSettlingEffectLoader.m" lineNumber:54 description:{@"%s", dlerror(), v22, v23, v24}];
    goto LABEL_18;
  }

  [v8 setObject:v12 forKeyedSubscript:*v13];

  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x2020000000;
  v15 = getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_ptr;
  v26 = getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_ptr;
  if (!getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_ptr)
  {
    *&v22 = MEMORY[0x1E69E9820];
    *(&v22 + 1) = 3221225472;
    v23 = __getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_block_invoke;
    v24 = &unk_1E82AC930;
    v16 = MediaAnalysisLibrary();
    *(*&time.timescale + 24) = dlsym(v16, "VCPMediaAnalysisService_AllowOnDemandOption");
    getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_ptr = *(*&time.timescale + 24);
    v15 = *(*&time.timescale + 24);
  }

  _Block_object_dispose(&time, 8);
  if (!v15)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getVCPMediaAnalysisService_AllowOnDemandOption(void)"];
    [currentHandler handleFailureInFunction:v21 file:@"PIPosterSettlingEffectLoader.m" lineNumber:52 description:{@"%s", dlerror(), v22, v23, v24}];
    goto LABEL_18;
  }

  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v15];
  [self _livePhotoKeyFrameTimeForResource:resourceCopy];
  if (0 >> 96)
  {
    v17 = *MEMORY[0x1E695E480];
    memset(&time, 0, sizeof(time));
    v18 = CMTimeCopyAsDictionary(&time, v17);
    [v8 setObject:v18 forKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
  }

  return v8;
}

@end