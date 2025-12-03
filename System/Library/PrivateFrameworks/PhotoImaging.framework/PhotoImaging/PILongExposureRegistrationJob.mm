@interface PILongExposureRegistrationJob
- ($721907E0E1CDE8B6CD3FA271A8B25860)guideExtent;
- (BOOL)prepare:(id *)prepare;
- (BOOL)render:(id *)render;
- (id)newRenderPipelineStateForEvaluationMode:(int64_t)mode;
- (id)result;
- (void)setGuideExtent:(id *)extent;
@end

@implementation PILongExposureRegistrationJob

- (void)setGuideExtent:(id *)extent
{
  var1 = extent->var1;
  self->_guideExtent.origin = extent->var0;
  self->_guideExtent.size = var1;
}

- ($721907E0E1CDE8B6CD3FA271A8B25860)guideExtent
{
  var1 = self[8].var1;
  retstr->var0 = self[8].var0;
  retstr->var1 = var1;
  return self;
}

- (id)result
{
  v3 = objc_alloc_init(_PILongExposureRegistrationResult);
  observation = [(PILongExposureRegistrationJob *)self observation];
  [(_PILongExposureRegistrationResult *)v3 setObservation:observation];

  [(PILongExposureRegistrationJob *)self guideExtent];
  v6[0] = v6[2];
  v6[1] = v6[3];
  [(_PILongExposureRegistrationResult *)v3 setExtent:v6];

  return v3;
}

- (BOOL)render:(id *)render
{
  v4 = &v107;
  v108 = *MEMORY[0x1E69E9840];
  if (!render)
  {
    v73 = NUAssertLogger_15869();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      LODWORD(v107.a) = 138543362;
      *(&v107.a + 4) = v74;
      _os_log_error_impl(&dword_1C7694000, v73, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v107, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v76 = NUAssertLogger_15869();
    v77 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v77)
      {
        v79 = dispatch_get_specific(*callStackSymbols);
        v80 = MEMORY[0x1E696AF00];
        v81 = v79;
        callStackSymbols = [v80 callStackSymbols];
        v82 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(v107.a) = 138543618;
        *(&v107.a + 4) = v79;
        WORD2(v107.b) = 2114;
        *(&v107.b + 6) = v82;
        _os_log_error_impl(&dword_1C7694000, v76, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v107, 0x16u);
      }
    }

    else if (v77)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(v107.a) = 138543362;
      *(&v107.a + 4) = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v76, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v107, 0xCu);
    }

    _NUAssertFailHandler();
    goto LABEL_30;
  }

  v7 = [(NURenderJob *)self renderer:?];
  if (v7)
  {
    renderCopy = render;
    v99 = v7;
    stillImage = [(PILongExposureRegistrationJob *)self stillImage];
    outputImage = [(NURenderJob *)self outputImage];
    outputGeometry = [(NURenderJob *)self outputGeometry];
    [outputGeometry renderScale];

    NUScaleInvert();
    NUScaleToDouble();
    memset(&v107, 0, sizeof(v107));
    CGAffineTransformMakeScale(&v107, v11, v11);
    v95 = outputImage;
    imageByClampingToExtent = [outputImage imageByClampingToExtent];
    v106 = v107;
    v13 = [imageByClampingToExtent imageByApplyingTransform:&v106];

    v101 = 0u;
    v102 = 0u;
    [(PILongExposureRegistrationJob *)self guideExtent];
    v14 = +[PIAutoLoopKernels rgbToLumaKernel];
    sRGBColorSpace = [MEMORY[0x1E69B3A10] sRGBColorSpace];
    memset(&v106, 0, 32);
    NUPixelRectToCGRect();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v96 = stillImage;
    v24 = [stillImage imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(sRGBColorSpace, "CGColorSpace")}];
    v105 = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
    v26 = [v14 applyWithExtent:v25 arguments:{v17, v19, v21, v23}];

    memset(&v106, 0, 32);
    NUPixelRectToCGRect();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v92 = sRGBColorSpace;
    v94 = v13;
    v35 = [v13 imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(sRGBColorSpace, "CGColorSpace")}];
    v104 = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
    v93 = v14;
    v98 = [v14 applyWithExtent:v36 arguments:{v28, v30, v32, v34}];

    memset(&v106, 0, 32);
    NUPixelRectToCGRect();
    v37 = [v26 imageByCroppingToRect:?];
    memset(&v106, 0, 32);
    v38 = -NUMinX();
    memset(&v106, 0, 32);
    v39 = NUMinY();
    CGAffineTransformMakeTranslation(&v106, v38, -v39);
    v97 = [v37 imageByApplyingTransform:&v106];

    v40 = [MEMORY[0x1E69B3D40] newPixelBufferOfSize:0 format:1278226488];
    v41 = [MEMORY[0x1E69B3D40] newPixelBufferOfSize:0 format:{0, 1278226488}];
    callStackSymbols = v41;
    if (!v40 || !v41)
    {
      [MEMORY[0x1E69B3A48] failureError:@"Failed to allocate intermediate pixel buffer" object:self];
      *renderCopy = v66 = 0;
      v68 = v95;
      v3 = v96;
      v69 = v13;
LABEL_20:

      v7 = v99;
      goto LABEL_21;
    }

    v89 = v40;
    v43 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{objc_msgSend(v40, "CVPixelBuffer")}];
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PILongExposureRegistrationJob-render-j%lld", -[NURenderJob jobNumber](self, "jobNumber")];
    [v43 setLabel:v44];

    v88 = callStackSymbols;
    v45 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{objc_msgSend(callStackSymbols, "CVPixelBuffer")}];
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PILongExposureRegistrationJob-reference-j%lld", -[NURenderJob jobNumber](self, "jobNumber")];
    [v43 setLabel:v46];

    v106.a = 0.0;
    v106.b = 0.0;
    *&v106.c = v102;
    v47 = *MEMORY[0x1E69B38F8];
    v48 = *(MEMORY[0x1E69B38F8] + 8);
    v87 = v43;
    v49 = [v99 renderImage:v97 rect:&v106 toDestination:v43 atPoint:*MEMORY[0x1E69B38F8] error:{v48, renderCopy}];
    memset(&v106, 0, 32);
    v90 = v45;
    v50 = [v99 renderImage:v98 rect:&v106 toDestination:v45 atPoint:v47 error:{v48, renderCopy}];
    v51 = [(CGAffineTransform *)v49 waitUntilCompletedAndReturnError:renderCopy];
    if (!v51 || (v52 = v51, [v50 waitUntilCompletedAndReturnError:renderCopy], v53 = objc_claimAutoreleasedReturnValue(), v53, v52, !v53))
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to render luma" object:self underlyingError:*renderCopy];
      *renderCopy = v66 = 0;
      v68 = v95;
      v3 = v96;
      v69 = v94;
      sRGBColorSpace = v92;
      v70 = v87;
      callStackSymbols = v88;
LABEL_19:

      v40 = v89;
      goto LABEL_20;
    }

    v85 = v50;
    v54 = objc_alloc(MEMORY[0x1E6984580]);
    cVPixelBuffer = [v89 CVPixelBuffer];
    v56 = MEMORY[0x1E695E0F8];
    v57 = [v54 initWithTargetedCVPixelBuffer:cVPixelBuffer options:MEMORY[0x1E695E0F8]];
    v58 = objc_alloc(MEMORY[0x1E69845B8]);
    callStackSymbols = v88;
    cVPixelBuffer2 = [v88 CVPixelBuffer];
    mEMORY[0x1E69B3A58] = [MEMORY[0x1E69B3A58] sharedFactory];
    visionSession = [mEMORY[0x1E69B3A58] visionSession];
    v62 = [v58 initWithCVPixelBuffer:cVPixelBuffer2 options:v56 session:visionSession];

    v103 = v57;
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
    v100 = 0;
    LOBYTE(visionSession) = [v62 performRequests:v63 error:&v100];
    v86 = v100;

    v83 = v62;
    v84 = v57;
    if (visionSession)
    {
      results = [v57 results];
      v65 = [results count];
      v66 = v65 == 1;
      v4 = v49;
      if (v65 == 1)
      {
        v67 = [results objectAtIndexedSubscript:0];
        [(PILongExposureRegistrationJob *)self setObservation:v67];
      }

      else
      {
        *renderCopy = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Image registration failure (expected 1 observation)" object:self];
      }

      v68 = v95;
      v3 = v96;
      v69 = v94;

      sRGBColorSpace = v92;
      v14 = v93;
      v70 = v87;
LABEL_18:

      v49 = v4;
      v50 = v85;
      goto LABEL_19;
    }

    v3 = v96;
    v4 = v49;
    if (*MEMORY[0x1E69B3D78] == -1)
    {
LABEL_15:
      v69 = v94;
      v68 = v95;
      sRGBColorSpace = v92;
      v14 = v93;
      v70 = v87;
      v71 = *MEMORY[0x1E69B3D88];
      v66 = 1;
      if (os_log_type_enabled(*MEMORY[0x1E69B3D88], OS_LOG_TYPE_INFO))
      {
        LODWORD(v106.a) = 138412290;
        *(&v106.a + 4) = v86;
        _os_log_impl(&dword_1C7694000, v71, OS_LOG_TYPE_INFO, "High-resolution image registration failure : %@", &v106, 0xCu);
      }

      goto LABEL_18;
    }

LABEL_30:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_290);
    goto LABEL_15;
  }

  v66 = 0;
LABEL_21:

  return v66;
}

- (BOOL)prepare:(id *)prepare
{
  v75[1] = *MEMORY[0x1E69E9840];
  if (!prepare)
  {
    v57 = NUAssertLogger_15869();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v58;
      _os_log_error_impl(&dword_1C7694000, v57, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    p_isa = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v8 = NUAssertLogger_15869();
    v59 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v59)
      {
        v60 = dispatch_get_specific(*p_isa);
        v61 = MEMORY[0x1E696AF00];
        specific = v60;
        p_isa = [v61 callStackSymbols];
        v3 = [p_isa componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v60;
        *&buf[12] = 2114;
        *&buf[14] = v3;
        _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v59)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      p_isa = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = p_isa;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v63 = "error != nil";
    _NUAssertFailHandler();
    __break(1u);
    goto LABEL_39;
  }

  prepareCopy = prepare;
  p_isa = &self->super.super.isa;
  v69.receiver = self;
  v69.super_class = PILongExposureRegistrationJob;
  if (![(NURenderJob *)&v69 prepare:?])
  {
    return 0;
  }

  if (([p_isa _shouldWaitForDependentJobs] & 1) == 0)
  {
    v7 = [p_isa newRenderPipelineStateForEvaluationMode:0];
    v8 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_229];
    v75[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
    [v7 setPipelineFilters:v9];

    v10 = [p_isa prepareNodeWithPipelineState:v7 error:prepareCopy];
    specific = [p_isa newRenderPipelineStateForEvaluationMode:1];

    [specific setScale:{*MEMORY[0x1E69B3918], *(MEMORY[0x1E69B3918] + 8)}];
    v3 = [v10 nodeByReplayingAgainstCache:specific error:prepareCopy];

    if (!v3)
    {
      v6 = 0;
LABEL_43:

      return v6;
    }

    if (*MEMORY[0x1E69B3D78] == -1)
    {
LABEL_8:
      v12 = MEMORY[0x1E69B3D88];
      v13 = *MEMORY[0x1E69B3D88];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D88], OS_LOG_TYPE_DEBUG))
      {
        v45 = v13;
        v46 = [v3 debugDescription];
        *buf = 138412290;
        *&buf[4] = v46;
        _os_log_debug_impl(&dword_1C7694000, v45, OS_LOG_TYPE_DEBUG, "Still image node:\n%@", buf, 0xCu);
      }

      v14 = [v3 outputImageGeometry:{prepareCopy, v63}];
      if (!v14)
      {
        goto LABEL_23;
      }

      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_290);
      }

      v15 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
      {
        v47 = v15;
        v48 = [v14 debugDescription];
        *buf = 138412290;
        *&buf[4] = v48;
        _os_log_debug_impl(&dword_1C7694000, v47, OS_LOG_TYPE_DEBUG, "Still image geometry:\n%@", buf, 0xCu);
      }

      v16 = [v3 outputImage:prepareCopy];
      [p_isa setStillImage:v16];

      stillImage = [p_isa stillImage];
      LOBYTE(v16) = stillImage == 0;

      if (v16)
      {
LABEL_23:
        v6 = 0;
      }

      else
      {
        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_290);
        }

        v18 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
        {
          v49 = v18;
          stillImage2 = [p_isa stillImage];
          v51 = [stillImage2 debugDescription];
          *buf = 138412290;
          *&buf[4] = v51;
          _os_log_debug_impl(&dword_1C7694000, v49, OS_LOG_TYPE_DEBUG, "Still image:\n%@", buf, 0xCu);
        }

        prepareNode = [p_isa prepareNode];
        v67 = [prepareNode videoProperties:prepareCopy];

        if (v67)
        {
          registrationRequest = [p_isa registrationRequest];
          v21 = registrationRequest;
          if (registrationRequest)
          {
            [registrationRequest cleanAperture];
          }

          else
          {
            memset(buf, 0, sizeof(buf));
          }

          NUPixelRectToCGRect();
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;

          outputGeometry = [p_isa outputGeometry];
          [outputGeometry renderScale];

          outputGeometry2 = [p_isa outputGeometry];
          v32 = [outputGeometry2 size];
          v65 = v33;
          v66 = v32;

          registrationRequest2 = [p_isa registrationRequest];
          recipe = [registrationRequest2 recipe];
          v36 = PIAutoLoopRecipeForFlavor(recipe, 3);

          CropRect = PIAutoLoopRecipeGetCropRect(v36);
          v39 = v38;
          v41 = v40;
          v43 = v42;

          NUScaleInvert();
          NUScaleToDouble();
          NUScaleRect();
          NUPixelRectFromCGRect();
          *&v68 = v66;
          *(&v68 + 1) = v65;
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_290);
          }

          v44 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
          {
            v52 = v44;
            v76.origin.x = v23;
            v76.origin.y = v25;
            v76.size.width = v27;
            v76.size.height = v29;
            v64 = NSStringFromRect(v76);
            v77.origin.x = CropRect;
            v77.origin.y = v39;
            v77.size.width = v41;
            v77.size.height = v43;
            v53 = NSStringFromRect(v77);
            v54 = NSStringFromNUPixelSize();
            v55 = NUScaleToString();
            *buf = 0u;
            *&buf[16] = v68;
            v56 = NSStringFromNUPixelRect();
            *buf = 138413314;
            *&buf[4] = v64;
            *&buf[12] = 2112;
            *&buf[14] = v53;
            *&buf[22] = 2112;
            *&buf[24] = v54;
            v71 = 2112;
            v72 = v55;
            v73 = 2112;
            v74 = v56;
            _os_log_debug_impl(&dword_1C7694000, v52, OS_LOG_TYPE_DEBUG, "clap=%@, crop=%@, fullSize=%@, videoScale=%@ => guide rect: %@", buf, 0x34u);
          }

          *buf = 0u;
          *&buf[16] = v68;
          [p_isa setGuideExtent:buf];
          v6 = 1;
        }

        else
        {
          v6 = 0;
        }
      }

      goto LABEL_43;
    }

LABEL_39:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_290);
    goto LABEL_8;
  }

  return 1;
}

id __41__PILongExposureRegistrationJob_prepare___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v8 = [a3 objectForKeyedSubscript:@"source"];
  v9 = [v7 renderNodeFromSource:v8 settings:&unk_1F4720180 error:a5];

  return v9;
}

- (id)newRenderPipelineStateForEvaluationMode:(int64_t)mode
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PILongExposureRegistrationJob;
  v4 = [(NURenderJob *)&v8 newRenderPipelineStateForEvaluationMode:?];
  if (!mode)
  {
    v5 = [MEMORY[0x1E69B3C30] stopAtTagFilter:@"/AutoLoop/LongExposure"];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v4 setPipelineFilters:v6];
  }

  return v4;
}

@end