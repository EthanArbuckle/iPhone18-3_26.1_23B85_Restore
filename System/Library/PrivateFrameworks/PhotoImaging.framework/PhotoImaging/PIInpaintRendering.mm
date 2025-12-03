@interface PIInpaintRendering
+ ($721907E0E1CDE8B6CD3FA271A8B25860)sourceExtentForMaskExtent:(SEL)extent exclusionMaskExtent:(id *)maskExtent imageExtent:(id *)imageExtent operation:(id *)operation;
+ (BOOL)renderImage:(id)image intoMutableBuffer:(id)buffer destinationBounds:(id *)bounds renderer:(id)renderer error:(id *)error;
+ (BOOL)shouldDilateMaskForOperation:(id)operation;
+ (double)dilationAmountForMaskSize:(CGSize)size fullSize:(CGSize)fullSize;
+ (float)computeLocalHeadroomForHDRImage:(id)image inRect:(CGRect)rect context:(id)context;
+ (id)_imageByOverlayingForegroundImage:(id)image onImage:(id)onImage withOpacity:(double)opacity;
+ (id)imageByOverlayingBoundsRect:(CGRect)rect onImage:(id)image;
+ (id)imageByOverlayingMaskImage:(id)image onImage:(id)onImage withOpacity:(double)opacity;
+ (id)inpaintedImageWithInputImage:(id)image maskImage:(id)maskImage exclusionMaskImage:(id)exclusionMaskImage headroom:(float)headroom operation:(id)operation;
+ (id)maskByAddingMask:(id)mask toMask:(id)toMask;
+ (id)maskByDilatingMask:(id)mask fullExtent:(CGRect)extent;
+ (id)maskByFillingHolesInMask:(id)mask;
+ (id)maskByRemovingMask:(id)mask fromMask:(id)fromMask;
+ (id)maskByUpscalingMask:(id)mask withGuideImage:(id)image;
+ (id)redactedImageWithInputImage:(id)image maskImage:(id)maskImage;
+ (void)addModelsToInpaintFilter:(id)filter;
+ (void)initialize;
@end

@implementation PIInpaintRendering

+ (BOOL)renderImage:(id)image intoMutableBuffer:(id)buffer destinationBounds:(id *)bounds renderer:(id)renderer error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  bufferCopy = buffer;
  rendererCopy = renderer;
  if (!rendererCopy)
  {
    v33 = NUAssertLogger_26053();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "renderer != nil"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v37 = NUAssertLogger_26053();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v38)
      {
        v46 = dispatch_get_specific(*v35);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        callStackSymbols = [v47 callStackSymbols];
        v50 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v46;
        *&buf[12] = 2114;
        *&buf[14] = v50;
        _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
LABEL_22:
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v45;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_28:

    _NUAssertFailHandler();
    __break(1u);
  }

  if (!error)
  {
    v39 = NUAssertLogger_26053();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v40;
      _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v41 = MEMORY[0x1E69B38E8];
    v42 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v37 = NUAssertLogger_26053();
    v43 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (!v42)
    {
      if (!v43)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    if (v43)
    {
      v51 = dispatch_get_specific(*v41);
      v52 = MEMORY[0x1E696AF00];
      v53 = v51;
      callStackSymbols3 = [v52 callStackSymbols];
      v55 = [callStackSymbols3 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v51;
      *&buf[12] = 2114;
      *&buf[14] = v55;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_28;
  }

  v14 = rendererCopy;
  var1 = bounds->var1;
  *buf = bounds->var0;
  *&buf[16] = var1;
  if (NUPixelRectIsEmpty())
  {
    [MEMORY[0x1E69B3A48] invalidError:@"empty stroke bounds" object:imageCopy];
    *error = v16 = 0;
  }

  else
  {
    v17 = [PIPerfPowerService alloc];
    v18 = +[PIPerfPowerServiceIdentifier genEditIdentifier];
    v19 = [(PIPerfPowerService *)v17 initWithIdentifier:v18 operation:1];

    v20 = s_log_26071;
    v21 = v20;
    v22 = s_signpost_26072;
    if ((s_signpost_26072 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7694000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v22, "PIInpaintRendering.renderImage", "", buf, 2u);
    }

    format = [bufferCopy format];
    mEMORY[0x1E69B3A58] = [MEMORY[0x1E69B3A58] sharedFactory];
    bufferStoragePool = [mEMORY[0x1E69B3A58] bufferStoragePool];

    v26 = [bufferStoragePool newStorageWithMinimumSize:bounds->var1.var0 format:{bounds->var1.var1, format}];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 1;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v27 = bounds->var1;
    var0 = bounds->var0;
    v57[2] = __85__PIInpaintRendering_renderImage_intoMutableBuffer_destinationBounds_renderer_error___block_invoke;
    v57[3] = &unk_1E82AC5B0;
    v64 = v27;
    v28 = v26;
    v58 = v28;
    v59 = v14;
    v60 = bufferCopy;
    errorCopy = error;
    v61 = imageCopy;
    v62 = buf;
    [(PIPerfPowerService *)v19 measureBlock:v57];
    v29 = s_log_26071;
    v30 = v29;
    v31 = s_signpost_26072;
    if ((s_signpost_26072 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *v56 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7694000, v30, OS_SIGNPOST_INTERVAL_END, v31, "PIInpaintRendering.renderImage", "", v56, 2u);
    }

    [bufferStoragePool returnStorage:v28];
    v16 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  return v16 & 1;
}

void __85__PIInpaintRendering_renderImage_intoMutableBuffer_destinationBounds_renderer_error___block_invoke(uint64_t a1)
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__26079;
  v44 = __Block_byref_object_dispose__26080;
  v45 = 0;
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __85__PIInpaintRendering_renderImage_intoMutableBuffer_destinationBounds_renderer_error___block_invoke_138;
  v29[3] = &unk_1E82AC560;
  v30 = *(a1 + 48);
  v31 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v34 = *(a1 + 72);
  v35 = v7;
  v36 = 0;
  v37 = 0;
  v38 = v2;
  v39 = v3;
  v32 = v6;
  v33 = &v40;
  if ([v4 useAsCIRenderDestinationWithRenderer:v5 block:v29] == 1)
  {
    v27 = 0u;
    v28 = 0u;
    v8 = [*(a1 + 48) size];
    v25 = 0uLL;
    *&v26 = v8;
    *(&v26 + 1) = v9;
    v10 = *(a1 + 88);
    v23 = *(a1 + 72);
    v24 = v10;
    NUPixelRectFlipYOrigin();
    v25 = 0u;
    v26 = 0u;
    [*(a1 + 32) size];
    v19 = 0;
    v20 = 0;
    v21 = v2;
    v22 = v3;
    NUPixelRectFlipYOrigin();
    v23 = 0u;
    v24 = 0u;
    v11 = [objc_alloc(MEMORY[0x1E69B3C10]) initWithRect:&v23];
    v12 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__PIInpaintRendering_renderImage_intoMutableBuffer_destinationBounds_renderer_error___block_invoke_2;
    v13[3] = &unk_1E82AC588;
    v14 = *(a1 + 48);
    v15 = v27;
    v16 = v28;
    v17 = v25;
    v18 = v26;
    if ([v12 readBufferInRegion:v11 block:v13] != 1)
    {
      **(a1 + 104) = [MEMORY[0x1E69B3A48] failureError:@"Failed to read buffer" object:0];
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  else
  {
    **(a1 + 104) = v41[5];
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  _Block_object_dispose(&v40, 8);
}

BOOL __85__PIInpaintRendering_renderImage_intoMutableBuffer_destinationBounds_renderer_error___block_invoke_138(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 colorSpace];
  [v4 setColorSpace:{objc_msgSend(v5, "CGColorSpace")}];

  [v4 setLabel:@"PIInpaintRendering"];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(a1 + 56) + 8);
  v16 = 0;
  v9 = *(a1 + 80);
  v15[0] = *(a1 + 64);
  v15[1] = v9;
  v10 = [v6 renderImage:v7 rect:v15 toDestination:v4 atPoint:*(a1 + 96) error:{*(a1 + 104), &v16}];

  objc_storeStrong((v8 + 40), v16);
  v11 = *(*(a1 + 56) + 8);
  obj = *(v11 + 40);
  v12 = [v10 waitUntilCompletedAndReturnError:&obj];
  objc_storeStrong((v11 + 40), obj);

  return v12 != 0;
}

uint64_t __85__PIInpaintRendering_renderImage_intoMutableBuffer_destinationBounds_renderer_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 88);
  v7[0] = *(a1 + 72);
  v7[1] = v5;
  return [MEMORY[0x1E69B3B38] copyPixelsToImage:v2 atPoint:v3 fromBuffer:v4 inRect:{a2, v7}];
}

+ (id)_imageByOverlayingForegroundImage:(id)image onImage:(id)onImage withOpacity:(double)opacity
{
  v53 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  onImageCopy = onImage;
  if (!imageCopy)
  {
    v18 = NUAssertLogger_26053();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "foregroundImage != nil"];
      *buf = 138543362;
      v50 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_26053();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v36 = dispatch_get_specific(*callStackSymbols);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols = [v37 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v36;
        v51 = 2114;
        v52 = v39;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v28 = _NUAssertFailHandler();
    goto LABEL_26;
  }

  v9 = onImageCopy;
  if (!onImageCopy)
  {
    v25 = NUAssertLogger_26053();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "backgroundImage != nil"];
      *buf = 138543362;
      v50 = v26;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v27 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_26053();
    v28 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (!v27)
    {
      if (v28)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v50 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_28:

      v33 = _NUAssertFailHandler();
      goto LABEL_29;
    }

LABEL_26:
    if (v28)
    {
      v40 = dispatch_get_specific(*callStackSymbols);
      v41 = MEMORY[0x1E696AF00];
      v42 = v40;
      callStackSymbols = [v41 callStackSymbols];
      v43 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v50 = v40;
      v51 = 2114;
      v52 = v43;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_28;
  }

  if (opacity < 0.0 || opacity > 1.0)
  {
    v30 = NUAssertLogger_26053();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "0.0 <= strength && strength <= 1.0"];
      *buf = 138543362;
      v50 = v31;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v32 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_26053();
    v33 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (!v32)
    {
      if (v33)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v35 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v50 = v35;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_31;
    }

LABEL_29:
    if (v33)
    {
      v44 = dispatch_get_specific(*callStackSymbols);
      v45 = MEMORY[0x1E696AF00];
      v46 = v44;
      callStackSymbols5 = [v45 callStackSymbols];
      v48 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v50 = v44;
      v51 = 2114;
      v52 = v48;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_31:

    _NUAssertFailHandler();
  }

  colorMatrixFilter = [MEMORY[0x1E695F648] colorMatrixFilter];
  [colorMatrixFilter setInputImage:imageCopy];
  v11 = [MEMORY[0x1E695F688] vectorWithX:1.0 Y:0.0 Z:0.0 W:1.0];
  [colorMatrixFilter setRVector:v11];

  v12 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:opacity];
  [colorMatrixFilter setAVector:v12];

  outputImage = [colorMatrixFilter outputImage];
  sourceOverCompositingFilter = [MEMORY[0x1E695F648] sourceOverCompositingFilter];
  [sourceOverCompositingFilter setInputImage:outputImage];
  [sourceOverCompositingFilter setBackgroundImage:v9];
  outputImage2 = [sourceOverCompositingFilter outputImage];
  [v9 extent];
  v16 = [outputImage2 imageByCroppingToRect:?];

  return v16;
}

+ (id)imageByOverlayingBoundsRect:(CGRect)rect onImage:(id)image
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v41 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  if (CGRectIsEmpty(v43))
  {
    v24 = NUAssertLogger_26053();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CGRectIsEmpty(bounds) == false"];
      *buf = 138543362;
      v38 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_26053();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v32 = dispatch_get_specific(*v26);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        callStackSymbols = [v33 callStackSymbols];
        v36 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v32;
        v39 = 2114;
        v40 = v36;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v31;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  [imageCopy extent];
  v11 = v10;
  [imageCopy extent];
  if (v11 >= v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = fmax(v13 * 0.001, 1.0);
  roundedRectangleStrokeGeneratorFilter = [MEMORY[0x1E695F648] roundedRectangleStrokeGeneratorFilter];
  [roundedRectangleStrokeGeneratorFilter setExtent:{x, y, width, height}];
  [roundedRectangleStrokeGeneratorFilter setRadius:0.0];
  *&v16 = v14;
  [roundedRectangleStrokeGeneratorFilter setWidth:v16];
  whiteColor = [MEMORY[0x1E695F610] whiteColor];
  [roundedRectangleStrokeGeneratorFilter setColor:whiteColor];

  outputImage = [roundedRectangleStrokeGeneratorFilter outputImage];
  v19 = [self _imageByOverlayingForegroundImage:outputImage onImage:imageCopy withOpacity:1.0];
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v45 = CGRectInset(v44, v14, v14);
  [roundedRectangleStrokeGeneratorFilter setExtent:{v45.origin.x, v45.origin.y, v45.size.width, v45.size.height}];
  grayColor = [MEMORY[0x1E695F610] grayColor];
  [roundedRectangleStrokeGeneratorFilter setColor:grayColor];

  outputImage2 = [roundedRectangleStrokeGeneratorFilter outputImage];

  v22 = [self _imageByOverlayingForegroundImage:outputImage2 onImage:v19 withOpacity:1.0];

  return v22;
}

+ (id)imageByOverlayingMaskImage:(id)image onImage:(id)onImage withOpacity:(double)opacity
{
  v8 = MEMORY[0x1E695F648];
  onImageCopy = onImage;
  imageCopy = image;
  maskToAlphaFilter = [v8 maskToAlphaFilter];
  [maskToAlphaFilter setInputImage:imageCopy];

  outputImage = [maskToAlphaFilter outputImage];
  v13 = [self _imageByOverlayingForegroundImage:outputImage onImage:onImageCopy withOpacity:opacity];

  return v13;
}

+ (id)redactedImageWithInputImage:(id)image maskImage:(id)maskImage
{
  maskImageCopy = maskImage;
  imageCopy = image;
  [imageCopy extent];
  if (v7 >= v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = round(v9 / 25.0);
  [maskImageCopy extent];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  if (v16 >= v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  v20 = round(v19 * 0.125);
  if (v10 >= v20)
  {
    v10 = v20;
  }

  v21 = [MEMORY[0x1E695F648] filterWithName:@"CIPixellate"];
  [v21 setValue:imageCopy forKey:@"inputImage"];
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  [v21 setValue:v22 forKey:@"inputScale"];

  outputImage = [v21 outputImage];
  v24 = [outputImage imageByCroppingToRect:{v12, v14, v16, v18}];

  sourceOverCompositingFilter = [MEMORY[0x1E695F648] sourceOverCompositingFilter];
  [sourceOverCompositingFilter setBackgroundImage:imageCopy];

  [sourceOverCompositingFilter setInputImage:v24];
  outputImage2 = [sourceOverCompositingFilter outputImage];

  return outputImage2;
}

+ (id)inpaintedImageWithInputImage:(id)image maskImage:(id)maskImage exclusionMaskImage:(id)exclusionMaskImage headroom:(float)headroom operation:(id)operation
{
  v42 = *&headroom;
  v48 = *MEMORY[0x1E69E9840];
  maskImageCopy = maskImage;
  exclusionMaskImageCopy = exclusionMaskImage;
  operationCopy = operation;
  v14 = MEMORY[0x1E69B3A10];
  imageCopy = image;
  extendedSRGBLinearColorSpace = [v14 extendedSRGBLinearColorSpace];
  v17 = [imageCopy imageByTaggingWithColorSpace:{objc_msgSend(extendedSRGBLinearColorSpace, "CGColorSpace")}];

  v18 = [MEMORY[0x1E695F648] filterWithName:@"CIInpaintFilter"];
  if (!v18)
  {
    v29 = NUAssertLogger_26053();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't find CIInpaintFilter."];
      *buf = 138543362;
      v45 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_26053();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v34)
      {
        v37 = dispatch_get_specific(*v31);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        callStackSymbols = [v38 callStackSymbols];
        v41 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v37;
        v46 = 2114;
        v47 = v41;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v36;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v19 = v18;
  [v18 setValue:v17 forKey:@"inputImage"];
  [v19 setValue:maskImageCopy forKey:@"inputMaskImage"];
  LODWORD(v20) = 1.0;
  v21 = v42;
  if (*&v42 > 1.0)
  {
    LODWORD(v22) = 0;
    *(&v22 + 1) = 1.0 / *&v42;
    v23 = [v17 _imageByApplyingColorMatrixRed:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0 / *&v42)) green:v22 blue:0.0 bias:0.0];

    v17 = [v23 _imageByApplyingGamma:0.833333313];

    [v19 setValue:v17 forKey:@"inputImage"];
  }

  [self addModelsToInpaintFilter:{v19, v20, v21, *&v42}];
  [self configureFilter:v19 withOptions:{objc_msgSend(operationCopy, "options")}];
  if (exclusionMaskImageCopy)
  {
    [v19 setValue:exclusionMaskImageCopy forKey:@"inputExcludeMask"];
  }

  outputImage = [v19 outputImage];
  v25 = outputImage;
  if (*&v43 > 1.0)
  {
    v26 = [outputImage _imageByApplyingGamma:{1.20000005, v43}];

    LODWORD(v27) = 0;
    HIDWORD(v27) = LODWORD(v43);
    v25 = [v26 _imageByApplyingColorMatrixRed:COERCE_DOUBLE(LODWORD(v43)) green:v27 blue:0.0 bias:0.0];
  }

  return v25;
}

+ (float)computeLocalHeadroomForHDRImage:(id)image inRect:(CGRect)rect context:(id)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v44 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  contextCopy = context;
  if (!contextCopy)
  {
    v22 = &v43;
    v32 = NUAssertLogger_26053();
    v23 = "context != nil";
    v20 = &qword_1C7845000;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "context != nil"];
      LODWORD(v43.a) = 138543362;
      *(&v43.a + 4) = v33;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v43, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    imageCopy = NUAssertLogger_26053();
    v34 = os_log_type_enabled(imageCopy, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v34)
      {
        specific = dispatch_get_specific(*callStackSymbols);
        v35 = MEMORY[0x1E696AF00];
        v20 = specific;
        callStackSymbols = [v35 callStackSymbols];
        v5 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(v43.a) = 138543618;
        *(&v43.a + 4) = specific;
        WORD2(v43.b) = 2114;
        *(&v43.b + 6) = v5;
        _os_log_error_impl(&dword_1C7694000, imageCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v43, 0x16u);
      }
    }

    else if (v34)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [specific componentsJoinedByString:@"\n"];
      LODWORD(v43.a) = 138543362;
      *(&v43.a + 4) = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, imageCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v43, 0xCu);
    }

    _NUAssertFailHandler();
LABEL_19:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26152);
    goto LABEL_8;
  }

  specific = contextCopy;
  v14 = [imageCopy imageByApplyingFilter:@"CIMaximumComponent"];
  memset(&v43, 0, sizeof(v43));
  CGAffineTransformMakeScale(&v43, 0.125, 0.125);
  v42 = v43;
  v15 = [v14 imageByApplyingTransform:&v42 highQualityDownsample:1];

  v42 = v43;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v46 = CGRectApplyAffineTransform(v45, &v42);
  v40 = *MEMORY[0x1E695FAA8];
  v16 = [MEMORY[0x1E695F688] vectorWithCGRect:{v46.origin.x, v46.origin.y, v46.size.width, v46.size.height}];
  v41 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  callStackSymbols = [v15 imageByApplyingFilter:@"CIAreaMaximum" withInputParameters:v17];

  v39[0] = 0;
  v39[1] = 0;
  v19 = objc_alloc(MEMORY[0x1E695F678]);
  v20 = [v19 initWithBitmapData:v39 width:1 height:1 bytesPerRow:16 format:*MEMORY[0x1E695F928]];
  [v20 setColorSpace:0];
  v38 = 0;
  v5 = [specific startTaskToRender:callStackSymbols fromRect:v20 toDestination:&v38 atPoint:0.0 error:{0.0, 1.0, 1.0, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v21 = v38;
  v37 = v21;
  v22 = [v5 waitUntilCompletedAndReturnError:&v37];
  v23 = v37;

  if (v22)
  {
    v24 = *v39;
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26152);
    }

    v25 = fmaxf(v24, 1.0);
    v26 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v42.a) = 134218242;
      *(&v42.a + 4) = v25;
      WORD2(v42.b) = 2114;
      *(&v42.b + 6) = callStackSymbols;
      _os_log_debug_impl(&dword_1C7694000, v26, OS_LOG_TYPE_DEBUG, "local headroom for image: %f, maxImg=%{public}@", &v42, 0x16u);
    }

    goto LABEL_10;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_19;
  }

LABEL_8:
  v27 = *MEMORY[0x1E69B3D80];
  v25 = 0.0;
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    v29 = MEMORY[0x1E696B098];
    *v36 = x;
    *&v36[1] = y;
    *&v36[2] = width;
    *&v36[3] = height;
    v30 = v27;
    v31 = [v29 valueWithBytes:v36 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    LODWORD(v42.a) = 138543874;
    *(&v42.a + 4) = imageCopy;
    WORD2(v42.b) = 2114;
    *(&v42.b + 6) = v31;
    HIWORD(v42.c) = 2114;
    *&v42.d = v23;
    _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Failed to compute local headroom for image: %{public}@ in rect: %{public}@, error: %{public}@", &v42, 0x20u);
  }

LABEL_10:

  return v25;
}

+ (id)maskByFillingHolesInMask:(id)mask
{
  maskCopy = mask;
  v4 = [MEMORY[0x1E695F648] filterWithName:@"CIFillHolesInRedMask"];

  if (v4)
  {
    v5 = [maskCopy imageByApplyingFilter:@"CIFillHolesInRedMask" withInputParameters:&unk_1F4724528];
  }

  else
  {
    v5 = maskCopy;
  }

  v6 = v5;

  return v6;
}

+ (id)maskByRemovingMask:(id)mask fromMask:(id)fromMask
{
  maskCopy = mask;
  fromMaskCopy = fromMask;
  [maskCopy extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [fromMaskCopy extent];
  v27.origin.x = v15;
  v27.origin.y = v16;
  v27.size.width = v17;
  v27.size.height = v18;
  v26.origin.x = v8;
  v26.origin.y = v10;
  v26.size.width = v12;
  v26.size.height = v14;
  if (CGRectIntersectsRect(v26, v27))
  {
    blackImage = [MEMORY[0x1E695F658] blackImage];
    v20 = [maskCopy imageByCompositingOverImage:blackImage];
    [fromMaskCopy extent];
    v21 = [v20 imageByCroppingToRect:?];

    maskCopy = [v21 imageByApplyingFilter:@"CIColorInvert"];

    componentMin = [MEMORY[0x1E695F608] componentMin];
    v23 = [componentMin applyWithForeground:maskCopy background:fromMaskCopy];
  }

  else
  {
    v23 = fromMaskCopy;
  }

  return v23;
}

+ (id)maskByAddingMask:(id)mask toMask:(id)toMask
{
  maskCopy = mask;
  v6 = maskCopy;
  if (toMask)
  {
    v7 = MEMORY[0x1E695F608];
    toMaskCopy = toMask;
    componentMax = [v7 componentMax];
    v10 = [componentMax applyWithForeground:v6 background:toMaskCopy];
  }

  else
  {
    v10 = maskCopy;
  }

  return v10;
}

+ (id)maskByUpscalingMask:(id)mask withGuideImage:(id)image
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"inputSmallImage";
  v13[1] = @"inputSpatialSigma";
  v14[0] = mask;
  v14[1] = &unk_1F471FB60;
  v13[2] = @"inputLumaSigma";
  v14[2] = &unk_1F471FB70;
  v5 = MEMORY[0x1E695DF20];
  imageCopy = image;
  maskCopy = mask;
  v8 = [v5 dictionaryWithObjects:v14 forKeys:v13 count:3];

  v9 = [imageCopy imageByApplyingFilter:@"CIEdgePreserveUpsampleFilter" withInputParameters:v8];

  imageByClampingToExtent = [v9 imageByClampingToExtent];
  [v9 extent];
  v11 = [imageByClampingToExtent imageByCroppingToRect:?];

  return v11;
}

+ (id)maskByDilatingMask:(id)mask fullExtent:(CGRect)extent
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  maskCopy = mask;
  [maskCopy extent];
  [self dilationAmountForMaskSize:v10 fullSize:{v11, width, height}];
  v13 = v12;
  morphologyMaximumFilter = [MEMORY[0x1E695F648] morphologyMaximumFilter];
  *&v15 = v13;
  [morphologyMaximumFilter setRadius:v15];
  [morphologyMaximumFilter setInputImage:maskCopy];

  outputImage = [morphologyMaximumFilter outputImage];
  [outputImage extent];
  v21 = CGRectIntegral(v20);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v22 = CGRectIntersection(v21, v23);
  v17 = [outputImage imageByCroppingToRect:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];

  return v17;
}

+ (double)dilationAmountForMaskSize:(CGSize)size fullSize:(CGSize)fullSize
{
  if (fullSize.width >= fullSize.height)
  {
    width = fullSize.width;
  }

  else
  {
    width = fullSize.height;
  }

  return width * 0.01;
}

+ (BOOL)shouldDilateMaskForOperation:(id)operation
{
  operationCopy = operation;
  if ([operationCopy mode] == 2)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [operationCopy isFilledBrushStroke] ^ 1;
  }

  return v4;
}

+ ($721907E0E1CDE8B6CD3FA271A8B25860)sourceExtentForMaskExtent:(SEL)extent exclusionMaskExtent:(id *)maskExtent imageExtent:(id *)imageExtent operation:(id *)operation
{
  v11 = MEMORY[0x1E695F658];
  v12 = a7;
  blackImage = [v11 blackImage];
  v22 = *operation;
  NUPixelRectToCGRect();
  v14 = [blackImage imageByCroppingToRect:{*&v22.var0, *&v22.var1}];

  whiteImage = [MEMORY[0x1E695F658] whiteImage];
  v23 = *maskExtent;
  NUPixelRectToCGRect();
  v16 = [whiteImage imageByCroppingToRect:{*&v23.var0, *&v23.var1}];

  v17 = [MEMORY[0x1E695F648] filterWithName:@"CIInpaintFilter"];
  [v17 setValue:v14 forKey:@"inputImage"];
  [v17 setValue:v16 forKey:@"inputMaskImage"];
  v24 = *imageExtent;
  if ((NUPixelRectIsNull() & 1) == 0)
  {
    whiteImage2 = [MEMORY[0x1E695F658] whiteImage];
    var0 = imageExtent->var0;
    var1 = imageExtent->var1;
    NUPixelRectToCGRect();
    v19 = [whiteImage2 imageByCroppingToRect:{var0, var1}];

    [v17 setValue:v19 forKey:@"inputExcludeMask"];
  }

  [a2 addModelsToInpaintFilter:{v17, *&v24.var0, *&v24.var1}];
  options = [v12 options];

  [a2 configureFilter:v17 withOptions:options];
  [v17 outputMaskSurroundExtent];
  NUPixelRectFromCGRect();

  return result;
}

+ (void)addModelsToInpaintFilter:(id)filter
{
  filterCopy = filter;
  mEMORY[0x1E69B3A58] = [MEMORY[0x1E69B3A58] sharedFactory];
  modelRegistry = [mEMORY[0x1E69B3A58] modelRegistry];

  v6 = [modelRegistry modelForKey:PIModelKeyInpaint];
  if (!v6)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26152);
    }

    v7 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Unable to find registered inpaint model", v9, 2u);
    }
  }

  [filterCopy setValue:v6 forKey:@"inputModel"];
  v8 = [modelRegistry modelForKey:PIModelKeyRefinement];
  if (v8)
  {
    [filterCopy setValue:v8 forKey:@"inputRefinementModel"];
  }
}

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__PIInpaintRendering_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken_26203 != -1)
  {
    dispatch_once(&initialize_onceToken_26203, block);
  }
}

os_signpost_id_t __32__PIInpaintRendering_initialize__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.photos.PhotoImaging", "inpaint");
  v3 = s_log_26071;
  s_log_26071 = v2;

  result = os_signpost_id_make_with_pointer(s_log_26071, *(a1 + 32));
  s_signpost_26072 = result;
  return result;
}

@end