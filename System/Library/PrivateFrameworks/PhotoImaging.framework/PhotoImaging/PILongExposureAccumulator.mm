@interface PILongExposureAccumulator
- (BOOL)_accumulate:(id)_accumulate error:(id *)error;
- (BOOL)_exportOutputImage:(id)image format:(int)format colorSpace:(CGColorSpace *)space toURL:(id)l uti:(id)uti error:(id *)error;
- (BOOL)_initializeAccumulation:(id *)accumulation;
- (BOOL)_initializeStorage:(id)storage image:(id)image error:(id *)error;
- (BOOL)accumulate:(id)accumulate error:(id *)error;
- (BOOL)isReadyForMoreData;
- (BOOL)start:(id *)start;
- (BOOL)writeLongExposureImage:(id)image UTI:(id)i colorSpace:(id)space error:(id *)error;
- (BOOL)writeMaskImage:(id)image UTI:(id)i error:(id *)error;
- (PILongExposureAccumulator)initWithSize:(id)size renderer:(id)renderer jobNumber:(unint64_t)number;
- (id)_dynamismMapWithMinImage:(id)image maxImage:(id)maxImage extent:(id *)extent;
- (id)_nextInputFrame;
- (id)nextInputFrame;
- (void)_accumulate:(id)_accumulate;
- (void)_appendInputFrame:(id)frame;
- (void)_initializeAccumulation;
- (void)_markAsFinished;
- (void)_start;
- (void)cancel;
- (void)dealloc;
- (void)markAsFinished;
- (void)waitUntilDone;
@end

@implementation PILongExposureAccumulator

- (BOOL)_exportOutputImage:(id)image format:(int)format colorSpace:(CGColorSpace *)space toURL:(id)l uti:(id)uti error:(id *)error
{
  v12 = *&format;
  v63 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  lCopy = l;
  utiCopy = uti;
  if (!imageCopy)
  {
    v26 = NUAssertLogger_15869();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v60 = v27;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v30 = NUAssertLogger_15869();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v31)
      {
        v44 = dispatch_get_specific(*callStackSymbols);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        callStackSymbols = [v45 callStackSymbols];
        v47 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v60 = v44;
        v61 = 2114;
        v62 = v47;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v36 = _NUAssertFailHandler();
    goto LABEL_31;
  }

  if (!lCopy)
  {
    v33 = NUAssertLogger_15869();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "destinationURL != nil"];
      *buf = 138543362;
      v60 = v34;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v35 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v30 = NUAssertLogger_15869();
    v36 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (!v35)
    {
      if (v36)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v60 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_33:

      v41 = _NUAssertFailHandler();
      goto LABEL_34;
    }

LABEL_31:
    if (v36)
    {
      v48 = dispatch_get_specific(*callStackSymbols);
      v49 = MEMORY[0x1E696AF00];
      v50 = v48;
      callStackSymbols = [v49 callStackSymbols];
      v51 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v60 = v48;
      v61 = 2114;
      v62 = v51;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_33;
  }

  if (!error)
  {
    v38 = NUAssertLogger_15869();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v60 = v39;
      _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v40 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v30 = NUAssertLogger_15869();
    v41 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (!v40)
    {
      if (v41)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v43 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v60 = v43;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_36;
    }

LABEL_34:
    if (v41)
    {
      v52 = dispatch_get_specific(*callStackSymbols);
      v53 = MEMORY[0x1E696AF00];
      v54 = v52;
      callStackSymbols5 = [v53 callStackSymbols];
      v56 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v60 = v52;
      v61 = 2114;
      v62 = v56;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_36:

    _NUAssertFailHandler();
  }

  v17 = utiCopy;
  context = [(NURenderer *)self->_renderer context];
  [imageCopy extent];
  v19 = [context createCGImage:imageCopy fromRect:v12 format:space colorSpace:0 deferred:?];
  if (v19)
  {
    v20 = v19;
    v21 = CGImageDestinationCreateWithURL(lCopy, v17, 1uLL, 0);
    if (v21)
    {
      v22 = v21;
      v57 = *MEMORY[0x1E696D338];
      v58 = &unk_1F471F750;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      CGImageDestinationAddImage(v22, v20, v23);
      v24 = CGImageDestinationFinalize(v22);
      if (!v24)
      {
        *error = [MEMORY[0x1E69B3A48] failureError:@"Failed to finalize image destination" object:self];
      }

      CFRelease(v22);
    }

    else
    {
      [MEMORY[0x1E69B3A48] failureError:@"Failed to create CGImageDestinationRef" object:self];
      *error = v24 = 0;
    }

    CFRelease(v20);
  }

  else
  {
    [MEMORY[0x1E69B3A48] failureError:@"Failed to create CGImageRef" object:self];
    *error = v24 = 0;
  }

  return v24;
}

- (id)_dynamismMapWithMinImage:(id)image maxImage:(id)maxImage extent:(id *)extent
{
  v24[4] = *MEMORY[0x1E69E9840];
  maxImageCopy = maxImage;
  imageCopy = image;
  v9 = +[PIAutoLoopKernels dynamismMapKernel];
  imageByClampingToExtent = [imageCopy imageByClampingToExtent];

  imageByClampingToExtent2 = [maxImageCopy imageByClampingToExtent];

  v23 = *extent;
  NUPixelRectToCGRect();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v24[0] = imageByClampingToExtent2;
  v24[1] = imageByClampingToExtent;
  v24[2] = &unk_1F47245D8;
  v24[3] = &unk_1F47245E8;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:{4, *&v23.var0, *&v23.var1}];
  v21 = [v9 applyWithExtent:&__block_literal_global_15908 roiCallback:v20 arguments:{v13, v15, v17, v19}];

  return v21;
}

- (BOOL)writeMaskImage:(id)image UTI:(id)i error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  iCopy = i;
  if (!error)
  {
    v17 = NUAssertLogger_15869();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_15869();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(*v19);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v10 = iCopy;
  [(PILongExposureAccumulator *)self waitUntilDone];
  _accumError = [(PILongExposureAccumulator *)self _accumError];

  if (_accumError)
  {
    [(PILongExposureAccumulator *)self _accumError];
    *error = v12 = 0;
  }

  else
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v43 = __Block_byref_object_copy__15914;
    v44 = __Block_byref_object_dispose__15915;
    v45 = 0;
    minimumAccumulationStorage = self->_minimumAccumulationStorage;
    imageOptions = self->_imageOptions;
    renderer = self->_renderer;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __54__PILongExposureAccumulator_writeMaskImage_UTI_error___block_invoke;
    v30[3] = &unk_1E82AB4E8;
    v35 = 0;
    v36 = 0;
    v30[4] = self;
    pixelSize = self->_pixelSize;
    v31 = imageCopy;
    v33 = &v38;
    v32 = v10;
    v34 = buf;
    [(NUSurfaceStorage *)minimumAccumulationStorage useAsCIImageWithOptions:imageOptions renderer:renderer block:v30];
    if (v39[3])
    {
      v12 = 1;
    }

    else
    {
      *error = *(*&buf[8] + 40);
      v12 = *(v39 + 24);
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v38, 8);
  }

  return v12 & 1;
}

void __54__PILongExposureAccumulator_writeMaskImage_UTI_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[7];
  v6 = v4[17];
  v7 = v4[3];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PILongExposureAccumulator_writeMaskImage_UTI_error___block_invoke_2;
  v12[3] = &unk_1E82AB4C0;
  v12[4] = v4;
  v13 = v3;
  v8 = *(a1 + 88);
  v17 = *(a1 + 72);
  v18 = v8;
  v14 = *(a1 + 40);
  v11 = *(a1 + 48);
  v9 = v11;
  v15 = v11;
  v16 = *(a1 + 64);
  v10 = v3;
  [v5 useAsCIImageWithOptions:v6 renderer:v7 block:v12];
}

void __54__PILongExposureAccumulator_writeMaskImage_UTI_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 96);
  *buf = *(a1 + 80);
  v18 = v5;
  v6 = [v3 _dynamismMapWithMinImage:v4 maxImage:a2 extent:buf];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_290);
  }

  v7 = *MEMORY[0x1E69B3D88];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D88], OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 48);
    *buf = 138543362;
    *&buf[4] = v15;
    _os_log_debug_impl(&dword_1C7694000, v7, OS_LOG_TYPE_DEBUG, "Writing long-exposure motion mask to %{public}@", buf, 0xCu);
  }

  v8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  v9 = *(a1 + 32);
  v10 = *MEMORY[0x1E695F8B8];
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(*(a1 + 72) + 8);
  obj = 0;
  v14 = [v9 _exportOutputImage:v6 format:v10 colorSpace:v8 toURL:v11 uti:v12 error:&obj];
  objc_storeStrong((v13 + 40), obj);
  *(*(*(a1 + 64) + 8) + 24) = v14;
  CGColorSpaceRelease(v8);
}

- (BOOL)writeLongExposureImage:(id)image UTI:(id)i colorSpace:(id)space error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  iCopy = i;
  spaceCopy = space;
  if (!error)
  {
    v20 = NUAssertLogger_15869();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_15869();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v28 = dispatch_get_specific(*v22);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols = [v29 callStackSymbols];
        v32 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v28;
        *&buf[12] = 2114;
        *&buf[14] = v32;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v13 = spaceCopy;
  [(PILongExposureAccumulator *)self waitUntilDone];
  _accumError = [(PILongExposureAccumulator *)self _accumError];

  if (_accumError)
  {
    [(PILongExposureAccumulator *)self _accumError];
    *error = v15 = 0;
  }

  else
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v45 = __Block_byref_object_copy__15914;
    v46 = __Block_byref_object_dispose__15915;
    v47 = 0;
    averageAccumulationStorage = self->_averageAccumulationStorage;
    imageOptions = self->_imageOptions;
    renderer = self->_renderer;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __73__PILongExposureAccumulator_writeLongExposureImage_UTI_colorSpace_error___block_invoke;
    v33[3] = &unk_1E82AB498;
    v38 = &v40;
    v34 = imageCopy;
    selfCopy = self;
    v36 = v13;
    v37 = iCopy;
    v39 = buf;
    [(NUSurfaceStorage *)averageAccumulationStorage useAsCIImageWithOptions:imageOptions renderer:renderer block:v33];
    if (v41[3])
    {
      v15 = 1;
    }

    else
    {
      *error = *(*&buf[8] + 40);
      v15 = *(v41 + 24);
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v40, 8);
  }

  return v15 & 1;
}

void __73__PILongExposureAccumulator_writeLongExposureImage_UTI_colorSpace_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_290);
  }

  v4 = *MEMORY[0x1E69B3D88];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D88], OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    *buf = 138543362;
    v14 = v11;
    _os_log_debug_impl(&dword_1C7694000, v4, OS_LOG_TYPE_DEBUG, "Writing long-exposure image to %{public}@", buf, 0xCu);
  }

  v5 = *MEMORY[0x1E695F910];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) CGColorSpace];
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v10 = *(*(a1 + 72) + 8);
  obj = 0;
  LOBYTE(v5) = [v6 _exportOutputImage:v3 format:v5 colorSpace:v7 toURL:v8 uti:v9 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  *(*(*(a1 + 64) + 8) + 24) = v5;
}

- (BOOL)_accumulate:(id)_accumulate error:(id *)error
{
  v105[1] = *MEMORY[0x1E69E9840];
  _accumulateCopy = _accumulate;
  errorCopy = error;
  if (!error)
  {
    v45 = NUAssertLogger_15869();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v46;
      _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v47 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v49 = NUAssertLogger_15869();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v50)
      {
        v53 = dispatch_get_specific(*v47);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        callStackSymbols = [v54 callStackSymbols];
        v57 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v53;
        *&buf[12] = 2114;
        *&buf[14] = v57;
        _os_log_error_impl(&dword_1C7694000, v49, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v50)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v52 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v52;
      _os_log_error_impl(&dword_1C7694000, v49, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v7 = MEMORY[0x1E695F658];
  v59 = _accumulateCopy;
  cVPixelBuffer = [_accumulateCopy CVPixelBuffer];
  v104 = *MEMORY[0x1E695F990];
  v105[0] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:&v104 count:1];
  v10 = [v7 imageWithCVPixelBuffer:cVPixelBuffer options:v9];

  workingColorSpace = [(PILongExposureAccumulator *)self workingColorSpace];
  height = self->_pixelSize.height;
  width = self->_pixelSize.width;
  v12 = +[PIAutoLoopKernels alphaCompositingKernel];
  componentMax = [MEMORY[0x1E695F608] componentMax];
  componentMin = [MEMORY[0x1E695F608] componentMin];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v103 = 0;
  v13 = self->_frameCount + 1;
  self->_frameCount = v13;
  v14 = 1.0 / v13;
  averageAccumulationStorage = self->_averageAccumulationStorage;
  imageOptions = self->_imageOptions;
  renderer = self->_renderer;
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __47__PILongExposureAccumulator__accumulate_error___block_invoke;
  v90[3] = &unk_1E82AB448;
  v58 = v12;
  v91 = v58;
  v18 = v10;
  v101 = v14;
  v92 = v18;
  selfCopy = self;
  v19 = workingColorSpace;
  v96 = 0;
  v97 = 0;
  v98 = width;
  v99 = height;
  v100 = errorCopy;
  v94 = v19;
  v95 = buf;
  [(NUSurfaceStorage *)averageAccumulationStorage useAsCIImageWithOptions:imageOptions renderer:renderer block:v90];
  v20 = self->_averageAccumulationStorage;
  objc_storeStrong(&self->_averageAccumulationStorage, self->_temporaryDestinationStorage);
  temporaryDestinationStorage = self->_temporaryDestinationStorage;
  self->_temporaryDestinationStorage = v20;

  imageByClampingToExtent = [v18 imageByClampingToExtent];
  v23 = [imageByClampingToExtent imageByApplyingFilter:@"CIBoxBlur" withInputParameters:&unk_1F4720158];

  minimumAccumulationStorage = self->_minimumAccumulationStorage;
  v25 = self->_imageOptions;
  v26 = self->_renderer;
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __47__PILongExposureAccumulator__accumulate_error___block_invoke_50;
  v78[3] = &unk_1E82AB470;
  v62 = componentMin;
  v79 = v62;
  v27 = v18;
  v80 = v27;
  v28 = v23;
  v81 = v28;
  selfCopy2 = self;
  v29 = v19;
  v85 = 0;
  v86 = 0;
  v87 = width;
  v88 = height;
  v89 = errorCopy;
  v83 = v29;
  v84 = buf;
  [(NUSurfaceStorage *)minimumAccumulationStorage useAsCIImageWithOptions:v25 renderer:v26 block:v78];
  v30 = self->_minimumAccumulationStorage;
  objc_storeStrong(&self->_minimumAccumulationStorage, self->_temporaryDestinationStorage);
  v31 = self->_temporaryDestinationStorage;
  self->_temporaryDestinationStorage = v30;

  p_maximumAccumulationStorage = &self->_maximumAccumulationStorage;
  maximumAccumulationStorage = self->_maximumAccumulationStorage;
  v34 = self->_imageOptions;
  v35 = self->_renderer;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __47__PILongExposureAccumulator__accumulate_error___block_invoke_3;
  v66[3] = &unk_1E82AB470;
  v36 = componentMax;
  v67 = v36;
  v37 = v27;
  v68 = v37;
  v38 = v28;
  v69 = v38;
  selfCopy3 = self;
  v39 = v29;
  v73 = 0;
  v74 = 0;
  v75 = width;
  v76 = height;
  v77 = errorCopy;
  v71 = v39;
  v72 = buf;
  [(NUSurfaceStorage *)maximumAccumulationStorage useAsCIImageWithOptions:v34 renderer:v35 block:v66];
  v40 = self->_maximumAccumulationStorage;
  v42 = self->_temporaryDestinationStorage;
  p_temporaryDestinationStorage = &self->_temporaryDestinationStorage;
  objc_storeStrong(p_maximumAccumulationStorage, v42);
  v43 = *p_temporaryDestinationStorage;
  *p_temporaryDestinationStorage = v40;

  LOBYTE(p_maximumAccumulationStorage) = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  return (p_maximumAccumulationStorage ^ 1) & 1;
}

void __47__PILongExposureAccumulator__accumulate_error___block_invoke(uint64_t a1, void *a2)
{
  v33[3] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v4 extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v33[0] = *(a1 + 40);
  v33[1] = v5;
  LODWORD(v6) = *(a1 + 112);
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v33[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  v16 = [v3 applyWithExtent:v15 arguments:{v7, v9, v11, v13}];

  v17 = *(a1 + 48);
  v19 = *(v17 + 24);
  v18 = *(v17 + 32);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __47__PILongExposureAccumulator__accumulate_error___block_invoke_2;
  v25[3] = &unk_1E82AB420;
  v20 = *(a1 + 56);
  v21 = *(a1 + 48);
  v26 = v20;
  v27 = v21;
  v22 = *(a1 + 88);
  v30 = *(a1 + 72);
  v31 = v22;
  v32 = *(a1 + 104);
  v23 = *(a1 + 64);
  v28 = v16;
  v29 = v23;
  v24 = v16;
  [v18 useAsCIRenderDestinationWithRenderer:v19 block:v25];
}

void __47__PILongExposureAccumulator__accumulate_error___block_invoke_50(uint64_t a1, void *a2)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v4 extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v32[0] = *(a1 + 48);
  v32[1] = v5;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v15 = [v3 applyWithExtent:v14 arguments:{v7, v9, v11, v13}];

  v16 = *(a1 + 56);
  v18 = *(v16 + 24);
  v17 = *(v16 + 32);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __47__PILongExposureAccumulator__accumulate_error___block_invoke_2_51;
  v24[3] = &unk_1E82AB420;
  v19 = *(a1 + 64);
  v20 = *(a1 + 56);
  v25 = v19;
  v26 = v20;
  v21 = *(a1 + 96);
  v29 = *(a1 + 80);
  v30 = v21;
  v31 = *(a1 + 112);
  v22 = *(a1 + 72);
  v27 = v15;
  v28 = v22;
  v23 = v15;
  [v17 useAsCIRenderDestinationWithRenderer:v18 block:v24];
}

void __47__PILongExposureAccumulator__accumulate_error___block_invoke_3(uint64_t a1, void *a2)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v4 extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v32[0] = *(a1 + 48);
  v32[1] = v5;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v15 = [v3 applyWithExtent:v14 arguments:{v7, v9, v11, v13}];

  v16 = *(a1 + 56);
  v18 = *(v16 + 24);
  v17 = *(v16 + 32);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __47__PILongExposureAccumulator__accumulate_error___block_invoke_4;
  v24[3] = &unk_1E82AB420;
  v19 = *(a1 + 64);
  v20 = *(a1 + 56);
  v25 = v19;
  v26 = v20;
  v21 = *(a1 + 96);
  v29 = *(a1 + 80);
  v30 = v21;
  v31 = *(a1 + 112);
  v22 = *(a1 + 72);
  v27 = v15;
  v28 = v22;
  v23 = v15;
  [v17 useAsCIRenderDestinationWithRenderer:v18 block:v24];
}

BOOL __47__PILongExposureAccumulator__accumulate_error___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setColorSpace:{objc_msgSend(v3, "CGColorSpace")}];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PILongExposureAccumulator-maximum-j%lld", *(*(a1 + 40) + 72)];
  [v4 setLabel:v5];

  v6 = *(a1 + 48);
  v7 = *(*(a1 + 40) + 24);
  v8 = *(a1 + 96);
  v9 = *(a1 + 80);
  v12[0] = *(a1 + 64);
  v12[1] = v9;
  v10 = [v7 renderImage:v6 rect:v12 toDestination:v4 atPoint:*MEMORY[0x1E69B38F8] error:{*(MEMORY[0x1E69B38F8] + 8), v8}];

  if (!v10)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    **(a1 + 96) = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"failed to render maximum image" object:*(a1 + 40) underlyingError:**(a1 + 96)];
  }

  return v10 != 0;
}

BOOL __47__PILongExposureAccumulator__accumulate_error___block_invoke_2_51(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setColorSpace:{objc_msgSend(v3, "CGColorSpace")}];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PILongExposureAccumulator-minimum-j%lld", *(*(a1 + 40) + 72)];
  [v4 setLabel:v5];

  v6 = *(a1 + 48);
  v7 = *(*(a1 + 40) + 24);
  v8 = *(a1 + 96);
  v9 = *(a1 + 80);
  v12[0] = *(a1 + 64);
  v12[1] = v9;
  v10 = [v7 renderImage:v6 rect:v12 toDestination:v4 atPoint:*MEMORY[0x1E69B38F8] error:{*(MEMORY[0x1E69B38F8] + 8), v8}];

  if (!v10)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    **(a1 + 96) = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"failed to render minimum image" object:*(a1 + 40) underlyingError:**(a1 + 96)];
  }

  return v10 != 0;
}

BOOL __47__PILongExposureAccumulator__accumulate_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setColorSpace:{objc_msgSend(v3, "CGColorSpace")}];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PILongExposureAccumulator-average-j%lld", *(*(a1 + 40) + 72)];
  [v4 setLabel:v5];

  v6 = *(a1 + 48);
  v7 = *(*(a1 + 40) + 24);
  v8 = *(a1 + 96);
  v9 = *(a1 + 80);
  v12[0] = *(a1 + 64);
  v12[1] = v9;
  v10 = [v7 renderImage:v6 rect:v12 toDestination:v4 atPoint:*MEMORY[0x1E69B38F8] error:{*(MEMORY[0x1E69B38F8] + 8), v8}];

  if (!v10)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    **(a1 + 96) = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"failed to render average image" object:*(a1 + 40) underlyingError:**(a1 + 96)];
  }

  return v10 != 0;
}

- (void)_accumulate:(id)_accumulate
{
  _accumulateCopy = _accumulate;
  _accumError = [(PILongExposureAccumulator *)self _accumError];
  if (_accumError)
  {

    v6 = 0;
  }

  else
  {
    v8 = 0;
    v7 = [(PILongExposureAccumulator *)self _accumulate:_accumulateCopy error:&v8];
    v6 = v8;
    if (!v7)
    {
      [(PILongExposureAccumulator *)self set_accumError:v6];
    }
  }
}

- (BOOL)_initializeAccumulation:(id *)accumulation
{
  workingColorSpace = [(PILongExposureAccumulator *)self workingColorSpace];
  v6 = MEMORY[0x1E695F658];
  v7 = [MEMORY[0x1E695F610] colorWithRed:objc_msgSend(workingColorSpace green:"CGColorSpace") blue:0.0 colorSpace:{0.0, 0.0}];
  v8 = [v6 imageWithColor:v7];

  v9 = MEMORY[0x1E695F658];
  v10 = [MEMORY[0x1E695F610] colorWithRed:objc_msgSend(workingColorSpace green:"CGColorSpace") blue:1.0 colorSpace:{1.0, 1.0}];
  v11 = [v9 imageWithColor:v10];

  v12 = [(PILongExposureAccumulator *)self _initializeStorage:self->_averageAccumulationStorage image:v8 error:accumulation]&& [(PILongExposureAccumulator *)self _initializeStorage:self->_minimumAccumulationStorage image:v11 error:accumulation]&& [(PILongExposureAccumulator *)self _initializeStorage:self->_maximumAccumulationStorage image:v8 error:accumulation];
  return v12;
}

- (void)_initializeAccumulation
{
  v6 = 0;
  v3 = [(PILongExposureAccumulator *)self _initializeAccumulation:&v6];
  v4 = v6;
  if (!v3)
  {
    _accumError = [(PILongExposureAccumulator *)self _accumError];

    if (!_accumError)
    {
      [(PILongExposureAccumulator *)self set_accumError:v4];
    }
  }
}

- (void)_start
{
  [(PILongExposureAccumulator *)self _initializeAccumulation];
  while (1)
  {
    dispatch_semaphore_wait(self->_accumSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v3 = objc_autoreleasePoolPush();
    nextInputFrame = [(PILongExposureAccumulator *)self nextInputFrame];
    if (!nextInputFrame)
    {
      break;
    }

    v5 = nextInputFrame;
    [(PILongExposureAccumulator *)self _accumulate:nextInputFrame];

    objc_autoreleasePoolPop(v3);
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_nextInputFrame
{
  if (self->_finished && ![(NSMutableArray *)self->_inputFrames count])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_inputFrames objectAtIndex:0];
    [(NSMutableArray *)self->_inputFrames removeObjectAtIndex:0];
    dispatch_semaphore_signal(self->_readySemaphore);
  }

  return v3;
}

- (id)nextInputFrame
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__15914;
  v10 = __Block_byref_object_dispose__15915;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__PILongExposureAccumulator_nextInputFrame__block_invoke;
  v5[3] = &unk_1E82AB580;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __43__PILongExposureAccumulator_nextInputFrame__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nextInputFrame];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)_appendInputFrame:(id)frame
{
  [(NSMutableArray *)self->_inputFrames addObject:frame];
  accumSemaphore = self->_accumSemaphore;

  dispatch_semaphore_signal(accumSemaphore);
}

- (BOOL)accumulate:(id)accumulate error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  accumulateCopy = accumulate;
  if (!accumulateCopy)
  {
    v16 = NUAssertLogger_15869();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "frame != nil"];
      v17 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138543362;
      v31 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    *&self = MEMORY[0x1E69B38E8];
    v10 = COERCE_DOUBLE(dispatch_get_specific(*MEMORY[0x1E69B38E8]));
    v9 = NUAssertLogger_15869();
    v18 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v10 == 0.0)
    {
      if (v18)
      {
        [MEMORY[0x1E696AF00] callStackSymbols];
        v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [*&v10 componentsJoinedByString:@"\n"];
        *&self = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138543362;
        v31 = *&self;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }
    }

    else if (v18)
    {
      v10 = COERCE_DOUBLE(dispatch_get_specific(self->super.isa));
      v22 = MEMORY[0x1E696AF00];
      v23 = *&v10;
      [v22 callStackSymbols];
      *&self = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v24 = [(PILongExposureAccumulator *)self componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v31 = v10;
      v32 = 2114;
      v33 = v24;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    v21 = _NUAssertFailHandler();
    goto LABEL_23;
  }

  if (!error)
  {
    v19 = NUAssertLogger_15869();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      v20 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138543362;
      v31 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    *&self = MEMORY[0x1E69B38E8];
    v10 = COERCE_DOUBLE(dispatch_get_specific(*MEMORY[0x1E69B38E8]));
    v9 = NUAssertLogger_15869();
    v21 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v10 == 0.0)
    {
      if (v21)
      {
        [MEMORY[0x1E696AF00] callStackSymbols];
        v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [*&v10 componentsJoinedByString:@"\n"];
        *&self = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138543362;
        v31 = *&self;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_25:

      _NUAssertFailHandler();
LABEL_26:
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_290);
      goto LABEL_6;
    }

LABEL_23:
    if (v21)
    {
      v10 = COERCE_DOUBLE(dispatch_get_specific(self->super.isa));
      v25 = MEMORY[0x1E696AF00];
      v26 = *&v10;
      [v25 callStackSymbols];
      *&self = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v27 = [(PILongExposureAccumulator *)self componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v31 = v10;
      v32 = 2114;
      v33 = v27;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v9 = accumulateCopy;
  [(PILongExposureAccumulator *)self _accumError];
  v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  if (v10 != 0.0)
  {
    *error = [(PILongExposureAccumulator *)self _accumError];
    goto LABEL_9;
  }

  NUAbsoluteTime();
  v4 = v11;
  dispatch_semaphore_wait(self->_readySemaphore, 0xFFFFFFFFFFFFFFFFLL);
  NUAbsoluteTime();
  v5 = v12;
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_26;
  }

LABEL_6:
  v13 = *MEMORY[0x1E69B3D88];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D88], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v31 = (v5 - v4) * 1000.0;
    _os_log_debug_impl(&dword_1C7694000, v13, OS_LOG_TYPE_DEBUG, "waitUntilReadyForMoreData: waited for %0.1fms", buf, 0xCu);
  }

  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PILongExposureAccumulator_accumulate_error___block_invoke;
  block[3] = &unk_1E82AC4E8;
  block[4] = self;
  v29 = v9;
  dispatch_sync(stateQueue, block);

LABEL_9:
  return *&v10 == 0;
}

- (void)waitUntilDone
{
  [(PILongExposureAccumulator *)self markAsFinished];
  doneGroup = self->_doneGroup;

  dispatch_group_wait(doneGroup, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_markAsFinished
{
  if (!self->_finished)
  {
    self->_finished = 1;
    dispatch_semaphore_signal(self->_accumSemaphore);
  }
}

- (void)markAsFinished
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PILongExposureAccumulator_markAsFinished__block_invoke;
  block[3] = &unk_1E82AC670;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (BOOL)isReadyForMoreData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PILongExposureAccumulator_isReadyForMoreData__block_invoke;
  v5[3] = &unk_1E82AB580;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __47__PILongExposureAccumulator_isReadyForMoreData__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isReadyForMoreData];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_initializeStorage:(id)storage image:(id)image error:(id *)error
{
  storageCopy = storage;
  imageCopy = image;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  workingColorSpace = [(PILongExposureAccumulator *)self workingColorSpace];
  renderer = self->_renderer;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__PILongExposureAccumulator__initializeStorage_image_error___block_invoke;
  v16[3] = &unk_1E82AB420;
  pixelSize = self->_pixelSize;
  v12 = workingColorSpace;
  v17 = v12;
  selfCopy = self;
  v13 = imageCopy;
  v21 = 0;
  v22 = 0;
  v23 = pixelSize;
  errorCopy = error;
  v19 = v13;
  v20 = &v25;
  [storageCopy useAsCIRenderDestinationWithRenderer:renderer block:v16];
  LOBYTE(error) = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  return (error & 1) == 0;
}

BOOL __60__PILongExposureAccumulator__initializeStorage_image_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setColorSpace:{objc_msgSend(v3, "CGColorSpace")}];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PILongExposureAccumulator-main-j%lld", *(*(a1 + 40) + 72)];
  [v4 setLabel:v5];

  v6 = *(a1 + 48);
  v7 = *(*(a1 + 40) + 24);
  v8 = *(a1 + 96);
  v9 = *(a1 + 80);
  v12[0] = *(a1 + 64);
  v12[1] = v9;
  v10 = [v7 renderImage:v6 rect:v12 toDestination:v4 atPoint:*MEMORY[0x1E69B38F8] error:{*(MEMORY[0x1E69B38F8] + 8), v8}];

  if (!v10)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    **(a1 + 96) = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"failed to init accumulator" object:*(a1 + 40) underlyingError:**(a1 + 96)];
  }

  return v10 != 0;
}

- (BOOL)start:(id *)start
{
  doneGroup = self->_doneGroup;
  accumQueue = self->_accumQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PILongExposureAccumulator_start___block_invoke;
  block[3] = &unk_1E82AC670;
  block[4] = self;
  dispatch_group_async(doneGroup, accumQueue, block);
  return 1;
}

- (void)cancel
{
  v3 = [MEMORY[0x1E69B3A48] canceledError:@"Accumulation was cancelled" object:0];
  [(PILongExposureAccumulator *)self set_accumError:v3];
}

- (void)dealloc
{
  mEMORY[0x1E69B3A58] = [MEMORY[0x1E69B3A58] sharedFactory];
  surfaceStoragePool = [mEMORY[0x1E69B3A58] surfaceStoragePool];

  [surfaceStoragePool returnStorage:self->_temporaryDestinationStorage];
  [surfaceStoragePool returnStorage:self->_averageAccumulationStorage];
  [surfaceStoragePool returnStorage:self->_minimumAccumulationStorage];
  [surfaceStoragePool returnStorage:self->_maximumAccumulationStorage];
  accumSemaphore = self->_accumSemaphore;
  self->_accumSemaphore = 0;

  readySemaphore = self->_readySemaphore;
  self->_readySemaphore = 0;

  v7.receiver = self;
  v7.super_class = PILongExposureAccumulator;
  [(PILongExposureAccumulator *)&v7 dealloc];
}

- (PILongExposureAccumulator)initWithSize:(id)size renderer:(id)renderer jobNumber:(unint64_t)number
{
  var1 = size.var1;
  var0 = size.var0;
  v48[3] = *MEMORY[0x1E69E9840];
  rendererCopy = renderer;
  v46.receiver = self;
  v46.super_class = PILongExposureAccumulator;
  v10 = [(PILongExposureAccumulator *)&v46 init];
  v10->_pixelSize.width = var0;
  v10->_pixelSize.height = var1;
  renderer = v10->_renderer;
  v10->_renderer = rendererCopy;
  v12 = rendererCopy;

  v10->_jobNumber = number;
  mEMORY[0x1E69B3A58] = [MEMORY[0x1E69B3A58] sharedFactory];
  surfaceStoragePool = [mEMORY[0x1E69B3A58] surfaceStoragePool];

  rGBAh = [MEMORY[0x1E69B3BF0] RGBAh];
  v16 = [surfaceStoragePool newStorageWithSize:v10->_pixelSize.width format:{v10->_pixelSize.height, rGBAh}];
  temporaryDestinationStorage = v10->_temporaryDestinationStorage;
  v10->_temporaryDestinationStorage = v16;

  rGBAh2 = [MEMORY[0x1E69B3BF0] RGBAh];
  v19 = [surfaceStoragePool newStorageWithSize:v10->_pixelSize.width format:{v10->_pixelSize.height, rGBAh2}];
  averageAccumulationStorage = v10->_averageAccumulationStorage;
  v10->_averageAccumulationStorage = v19;

  rGBAh3 = [MEMORY[0x1E69B3BF0] RGBAh];
  v22 = [surfaceStoragePool newStorageWithSize:v10->_pixelSize.width format:{v10->_pixelSize.height, rGBAh3}];
  minimumAccumulationStorage = v10->_minimumAccumulationStorage;
  v10->_minimumAccumulationStorage = v22;

  rGBAh4 = [MEMORY[0x1E69B3BF0] RGBAh];
  v25 = [surfaceStoragePool newStorageWithSize:v10->_pixelSize.width format:{v10->_pixelSize.height, rGBAh4}];
  maximumAccumulationStorage = v10->_maximumAccumulationStorage;
  v10->_maximumAccumulationStorage = v25;

  v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  inputFrames = v10->_inputFrames;
  v10->_inputFrames = v27;

  v29 = dispatch_queue_create("PILongExposureAccumulator.state", 0);
  stateQueue = v10->_stateQueue;
  v10->_stateQueue = v29;

  v31 = dispatch_queue_create("PILongExposureAccumulator.accum", 0);
  accumQueue = v10->_accumQueue;
  v10->_accumQueue = v31;

  v33 = dispatch_semaphore_create(0);
  accumSemaphore = v10->_accumSemaphore;
  v10->_accumSemaphore = v33;

  v35 = dispatch_semaphore_create(3);
  readySemaphore = v10->_readySemaphore;
  v10->_readySemaphore = v35;

  v37 = dispatch_group_create();
  doneGroup = v10->_doneGroup;
  v10->_doneGroup = v37;

  workingColorSpace = [(PILongExposureAccumulator *)v10 workingColorSpace];
  v47[0] = *MEMORY[0x1E695F9A8];
  cGColorSpace = [workingColorSpace CGColorSpace];
  v41 = *MEMORY[0x1E695F940];
  v48[0] = cGColorSpace;
  v48[1] = MEMORY[0x1E695E118];
  v42 = *MEMORY[0x1E695F990];
  v47[1] = v41;
  v47[2] = v42;
  v48[2] = MEMORY[0x1E695E118];
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];
  imageOptions = v10->_imageOptions;
  v10->_imageOptions = v43;

  return v10;
}

@end