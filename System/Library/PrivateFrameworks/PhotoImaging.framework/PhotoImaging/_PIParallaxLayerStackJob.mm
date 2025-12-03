@interface _PIParallaxLayerStackJob
- (BOOL)complete:(id *)complete;
- (BOOL)prepare:(id *)prepare;
- (BOOL)render:(id *)render;
- (BOOL)shouldUseVideoFrame;
- (CGRect)spatialPhotoFrame;
- (PFPosterOrientedLayout)requestLayout;
- (PIParallaxStyle)style;
- (PISegmentationItem)segmentationItem;
- (_PIParallaxLayerStackJob)initWithParallaxLayerStackRequest:(id)request;
- (_PIParallaxLayerStackJob)initWithRequest:(id)request;
- (id)backfillScalePolicy;
- (id)cacheImage:(id)image key:(id)key format:(id)format colorSpace:(id)space;
- (id)cachedImage:(id)image forKey:(id)key;
- (id)debugTintedImage:(id)image isBackfill:(BOOL)backfill;
- (id)deviceScalePolicy;
- (id)effectiveLayout;
- (id)imageByCachingImage:(id)image format:(id)format colorSpace:(id)space key:(id)key;
- (id)layerForBuffer:(id)buffer image:(id)image zPosition:(double)position identifier:(id)identifier;
- (id)layerForSpatialPhotoScene:(id)scene isOcclusion:(BOOL)occlusion layerFrame:(CGRect)frame zPosition:(double)position identifier:(id)identifier;
- (id)layerForVideoData:(id)data zPosition:(double)position identifier:(id)identifier;
- (id)newRenderPipelineStateForEvaluationMode:(int64_t)mode;
- (id)newRenderedPixelBufferFromImage:(id)image hasAlpha:(BOOL)alpha error:(id *)error;
- (id)result;
- (id)scalePolicy;
- (id)targetColorSpace;
- (int64_t)mode;
@end

@implementation _PIParallaxLayerStackJob

- (CGRect)spatialPhotoFrame
{
  x = self->_spatialPhotoFrame.origin.x;
  y = self->_spatialPhotoFrame.origin.y;
  width = self->_spatialPhotoFrame.size.width;
  height = self->_spatialPhotoFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)cacheImage:(id)image key:(id)key format:(id)format colorSpace:(id)space
{
  v73 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  keyCopy = key;
  formatCopy = format;
  spaceCopy = space;
  if (!imageCopy)
  {
    v27 = NUAssertLogger_21137();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v68 = v28;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v31 = NUAssertLogger_21137();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v32)
      {
        v50 = dispatch_get_specific(*callStackSymbols);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        callStackSymbols = [v51 callStackSymbols];
        v53 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = v50;
        v69 = 2114;
        sizeInBytes = v53;
        _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v37 = _NUAssertFailHandler();
    goto LABEL_39;
  }

  if (!formatCopy)
  {
    v34 = NUAssertLogger_21137();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "format != nil"];
      *buf = 138543362;
      v68 = v35;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v36 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v31 = NUAssertLogger_21137();
    v37 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (!v36)
    {
      if (v37)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v68 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_41:

      v42 = _NUAssertFailHandler();
      goto LABEL_42;
    }

LABEL_39:
    if (v37)
    {
      v54 = dispatch_get_specific(*callStackSymbols);
      v55 = MEMORY[0x1E696AF00];
      v56 = v54;
      callStackSymbols = [v55 callStackSymbols];
      v57 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v68 = v54;
      v69 = 2114;
      sizeInBytes = v57;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_41;
  }

  if (!keyCopy)
  {
    v39 = NUAssertLogger_21137();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "key != nil"];
      *buf = 138543362;
      v68 = v40;
      _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v41 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v31 = NUAssertLogger_21137();
    v42 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (!v41)
    {
      if (v42)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v68 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_44:

      v47 = _NUAssertFailHandler();
      goto LABEL_45;
    }

LABEL_42:
    if (v42)
    {
      v58 = dispatch_get_specific(*callStackSymbols);
      v59 = MEMORY[0x1E696AF00];
      v60 = v58;
      callStackSymbols = [v59 callStackSymbols];
      v61 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v68 = v58;
      v69 = 2114;
      sizeInBytes = v61;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_44;
  }

  v14 = spaceCopy;
  [imageCopy extent];
  if (CGRectIsInfinite(v75))
  {
    v44 = NUAssertLogger_21137();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid image extent"];
      *buf = 138543362;
      v68 = v45;
      _os_log_error_impl(&dword_1C7694000, v44, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v46 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v31 = NUAssertLogger_21137();
    v47 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (!v46)
    {
      if (v47)
      {
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v49 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v68 = v49;
        _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_47;
    }

LABEL_45:
    if (v47)
    {
      v62 = dispatch_get_specific(*callStackSymbols);
      v63 = MEMORY[0x1E696AF00];
      v64 = v62;
      callStackSymbols6 = [v63 callStackSymbols];
      v66 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v68 = v62;
      v69 = 2114;
      sizeInBytes = v66;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_47:

    _NUAssertFailHandler();
  }

  layerStackRequest = [(_PIParallaxLayerStackJob *)self layerStackRequest];
  cache = [layerStackRequest cache];
  v17 = [cache objectForKey:keyCopy];

  if (v17 && (-[_PIParallaxRenderCacheEntry image](v17, "image"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 digest], v20 = objc_msgSend(imageCopy, "digest"), v18, v19 == v20))
  {
    v21 = v17;
  }

  else
  {
    v21 = [[_PIParallaxRenderCacheEntry alloc] initWithImage:imageCopy format:formatCopy colorSpace:v14];

    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_642);
    }

    v22 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v23 = v22;
      *buf = 138543874;
      v68 = keyCopy;
      v69 = 2048;
      sizeInBytes = [(_PIParallaxRenderCacheEntry *)v21 sizeInBytes];
      v71 = 2048;
      digest = [imageCopy digest];
      _os_log_impl(&dword_1C7694000, v23, OS_LOG_TYPE_INFO, "Cache miss for image: %{public}@ cost: %lu digest: %llx", buf, 0x20u);
    }

    layerStackRequest2 = [(_PIParallaxLayerStackJob *)self layerStackRequest];
    cache2 = [layerStackRequest2 cache];
    [cache2 setObject:v21 forKey:keyCopy cost:{-[_PIParallaxRenderCacheEntry sizeInBytes](v21, "sizeInBytes")}];
  }

  return v21;
}

- (id)imageByCachingImage:(id)image format:(id)format colorSpace:(id)space key:(id)key
{
  v7 = [(_PIParallaxLayerStackJob *)self cacheImage:image key:key format:format colorSpace:space];
  [(NSMutableArray *)self->_cachedImageEntries addObject:v7];
  cachedImage = [v7 cachedImage];

  return cachedImage;
}

- (id)cachedImage:(id)image forKey:(id)key
{
  v6 = MEMORY[0x1E69B3BF0];
  keyCopy = key;
  imageCopy = image;
  rGBAh = [v6 RGBAh];
  sRGBLinearColorSpace = [MEMORY[0x1E69B3A10] sRGBLinearColorSpace];
  v11 = [(_PIParallaxLayerStackJob *)self imageByCachingImage:imageCopy format:rGBAh colorSpace:sRGBLinearColorSpace key:keyCopy];

  return v11;
}

- (id)debugTintedImage:(id)image isBackfill:(BOOL)backfill
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (backfill)
  {
    v18 = @"inputBiasVector";
    v5 = MEMORY[0x1E695F688];
    imageCopy = image;
    v7 = [v5 vectorWithX:0.1 Y:0.0 Z:-0.1 W:0.0];
    v19[0] = v7;
    v8 = MEMORY[0x1E695DF20];
    v9 = v19;
    v10 = &v18;
  }

  else
  {
    v16 = @"inputBiasVector";
    v11 = MEMORY[0x1E695F688];
    imageCopy2 = image;
    v7 = [v11 vectorWithX:-0.1 Y:0.0 Z:0.1 W:0.0];
    v17 = v7;
    v8 = MEMORY[0x1E695DF20];
    v9 = &v17;
    v10 = &v16;
  }

  v13 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
  v14 = [image imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v13];

  return v14;
}

- (id)newRenderedPixelBufferFromImage:(id)image hasAlpha:(BOOL)alpha error:(id *)error
{
  alphaCopy = alpha;
  imageCopy = image;
  v9 = [(NURenderJob *)self renderer:error];
  if (v9)
  {
    if (alphaCopy)
    {
      v10 = 1111970369;
    }

    else
    {
      v10 = 875704422;
    }

    v11 = MEMORY[0x1E69B3D40];
    [imageCopy extent];
    NUPixelRectFromCGRect();
    v12 = [v11 newPixelBufferOfSize:v23[6] format:{v23[7], v10}];
    if (v12)
    {
      v13 = v12;
      if (alphaCopy)
      {
        cVPixelBuffer = [v12 CVPixelBuffer];
        CVBufferSetAttachment(cVPixelBuffer, *MEMORY[0x1E6965CB8], *MEMORY[0x1E695E4C0], kCVAttachmentMode_ShouldPropagate);
        cVPixelBuffer2 = [v13 CVPixelBuffer];
        CVBufferSetAttachment(cVPixelBuffer2, *MEMORY[0x1E6965CC0], *MEMORY[0x1E6965CD0], kCVAttachmentMode_ShouldPropagate);
      }

      targetColorSpace = [(_PIParallaxLayerStackJob *)self targetColorSpace];
      [targetColorSpace applyAttachmentsToCVPixelBuffer:{objc_msgSend(v13, "CVPixelBuffer")}];

      v17 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{objc_msgSend(v13, "CVPixelBuffer")}];
      v18 = v17;
      if (v17)
      {
        if (alphaCopy)
        {
          v19 = 2;
        }

        else
        {
          v19 = 0;
        }

        [v17 setAlphaMode:v19];
        [imageCopy extent];
        NUPixelRectFromCGRect();
        v20 = [v9 renderImage:imageCopy rect:v23 toDestination:v18 atPoint:*MEMORY[0x1E69B38F8] error:{*(MEMORY[0x1E69B38F8] + 8), error}];
        if (v20)
        {
          v21 = [[_PIParallaxRenderBuffer alloc] initWithPixelBuffer:v13 renderTask:v20];
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        [MEMORY[0x1E69B3A48] failureError:@"Failed to create renderDestination" object:0];
        *error = v21 = 0;
      }
    }

    else
    {
      [MEMORY[0x1E69B3A48] failureError:@"Failed to create pixel buffer" object:0];
      *error = v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)layerForSpatialPhotoScene:(id)scene isOcclusion:(BOOL)occlusion layerFrame:(CGRect)frame zPosition:(double)position identifier:(id)identifier
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  occlusionCopy = occlusion;
  v59 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  identifierCopy = identifier;
  if (!sceneCopy)
  {
    v27 = NUAssertLogger_21137();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "spatialPhotoScene != nil"];
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v31 = NUAssertLogger_21137();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v32)
      {
        v45 = dispatch_get_specific(*callStackSymbols);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        callStackSymbols = [v46 callStackSymbols];
        v48 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v45;
        *&buf[12] = 2114;
        *&buf[14] = v48;
        _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v37 = _NUAssertFailHandler();
    goto LABEL_31;
  }

  v17 = identifierCopy;
  if (!identifierCopy)
  {
    v34 = NUAssertLogger_21137();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v36 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v31 = NUAssertLogger_21137();
    v37 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (!v36)
    {
      if (v37)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_33:

      v42 = _NUAssertFailHandler();
      goto LABEL_34;
    }

LABEL_31:
    if (v37)
    {
      v49 = dispatch_get_specific(*callStackSymbols);
      v50 = MEMORY[0x1E696AF00];
      v51 = v49;
      callStackSymbols = [v50 callStackSymbols];
      v52 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v49;
      *&buf[12] = 2114;
      *&buf[14] = v52;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_33;
  }

  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  if (CGRectIsNull(v61))
  {
    v39 = NUAssertLogger_21137();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "!CGRectIsNull(layerFrame)"];
      *buf = 138543362;
      *&buf[4] = v40;
      _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v41 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v31 = NUAssertLogger_21137();
    v42 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (!v41)
    {
      if (v42)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v44 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v44;
        _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_36;
    }

LABEL_34:
    if (v42)
    {
      v53 = dispatch_get_specific(*callStackSymbols);
      v54 = MEMORY[0x1E696AF00];
      v55 = v53;
      callStackSymbols5 = [v54 callStackSymbols];
      v57 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v53;
      *&buf[12] = 2114;
      *&buf[14] = v57;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_36:

    _NUAssertFailHandler();
  }

  fullSizeGeometry = [(NURenderJob *)self fullSizeGeometry];
  v19 = fullSizeGeometry;
  if (fullSizeGeometry)
  {
    [fullSizeGeometry extent];
  }

  else
  {
    memset(buf, 0, 32);
  }

  NUPixelRectToCGRect();

  NURectFlipYOrigin();
  if (occlusionCopy)
  {
    v24 = [objc_alloc(MEMORY[0x1E69C07C0]) initWithFrame:v17 zPosition:v20 identifier:{v21, v22, v23, position}];
  }

  else
  {
    v24 = [objc_alloc(MEMORY[0x1E69C07B8]) initWithSceneData:0 scene:sceneCopy frame:v17 zPosition:v20 identifier:{v21, v22, v23, position}];
  }

  v25 = v24;

  return v25;
}

- (id)layerForVideoData:(id)data zPosition:(double)position identifier:(id)identifier
{
  v43 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  identifierCopy = identifier;
  if (!dataCopy)
  {
    v20 = NUAssertLogger_21137();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "videoData != nil"];
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_21137();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v33 = dispatch_get_specific(*callStackSymbols);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols = [v34 callStackSymbols];
        v36 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v33;
        *&buf[12] = 2114;
        *&buf[14] = v36;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v30 = _NUAssertFailHandler();
    goto LABEL_22;
  }

  v10 = identifierCopy;
  if (!identifierCopy)
  {
    v27 = NUAssertLogger_21137();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v29 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_21137();
    v30 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (!v29)
    {
      if (v30)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v32 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v32;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_24;
    }

LABEL_22:
    if (v30)
    {
      v37 = dispatch_get_specific(*callStackSymbols);
      v38 = MEMORY[0x1E696AF00];
      v39 = v37;
      callStackSymbols4 = [v38 callStackSymbols];
      v41 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v37;
      *&buf[12] = 2114;
      *&buf[14] = v41;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_24:

    _NUAssertFailHandler();
  }

  segmentationItem = [(_PIParallaxLayerStackJob *)self segmentationItem];
  [segmentationItem settlingEffectNormalizedBounds];

  fullSizeGeometry = [(NURenderJob *)self fullSizeGeometry];
  v13 = fullSizeGeometry;
  if (fullSizeGeometry)
  {
    [fullSizeGeometry extent];
  }

  else
  {
    memset(buf, 0, 32);
  }

  NUPixelRectToCGRect();

  NURectDenormalize();
  NURectFlipYOrigin();
  v18 = [objc_alloc(MEMORY[0x1E69C07C8]) initWithVideoData:dataCopy frame:v10 zPosition:v14 identifier:{v15, v16, v17, position}];

  return v18;
}

- (id)layerForBuffer:(id)buffer image:(id)image zPosition:(double)position identifier:(id)identifier
{
  v58 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  imageCopy = image;
  identifierCopy = identifier;
  if (!bufferCopy)
  {
    v26 = NUAssertLogger_21137();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "buffer != nil"];
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v30 = NUAssertLogger_21137();
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
        *&buf[4] = v44;
        *&buf[12] = 2114;
        *&buf[14] = v47;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v36 = _NUAssertFailHandler();
    goto LABEL_29;
  }

  if (!imageCopy)
  {
    v33 = NUAssertLogger_21137();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v35 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v30 = NUAssertLogger_21137();
    v36 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (!v35)
    {
      if (v36)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_31:

      v41 = _NUAssertFailHandler();
      goto LABEL_32;
    }

LABEL_29:
    if (v36)
    {
      v48 = dispatch_get_specific(*callStackSymbols);
      v49 = MEMORY[0x1E696AF00];
      v50 = v48;
      callStackSymbols = [v49 callStackSymbols];
      v51 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v48;
      *&buf[12] = 2114;
      *&buf[14] = v51;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  v13 = identifierCopy;
  if (!identifierCopy)
  {
    v38 = NUAssertLogger_21137();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      *&buf[4] = v39;
      _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v40 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v30 = NUAssertLogger_21137();
    v41 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (!v40)
    {
      if (v41)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v43 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v43;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_34;
    }

LABEL_32:
    if (v41)
    {
      v52 = dispatch_get_specific(*callStackSymbols);
      v53 = MEMORY[0x1E696AF00];
      v54 = v52;
      callStackSymbols5 = [v53 callStackSymbols];
      v56 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v52;
      *&buf[12] = 2114;
      *&buf[14] = v56;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_34:

    _NUAssertFailHandler();
  }

  memset(buf, 0, 32);
  [imageCopy extent];
  NUPixelRectFromCGRect();
  [(NURenderJob *)self renderScale];
  NUPixelRectToCGRect();
  NUScaleInvert();
  NUScaleToDouble();
  NUScaleRect();
  fullSizeGeometry = [(NURenderJob *)self fullSizeGeometry];
  v15 = fullSizeGeometry;
  if (fullSizeGeometry)
  {
    [fullSizeGeometry extent];
  }

  NUPixelRectToCGRect();

  NURectFlipYOrigin();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  cVPixelBuffer = [bufferCopy CVPixelBuffer];
  if (cVPixelBuffer)
  {
    cVPixelBuffer = [objc_alloc(MEMORY[0x1E69C0760]) initWithImage:cVPixelBuffer frame:v13 zPosition:v17 identifier:{v19, v21, v23, position}];
  }

  return cVPixelBuffer;
}

- (id)result
{
  v3 = objc_alloc_init(_PIParallaxLayerStackResult);
  layout = [(_PIParallaxLayerStackJob *)self layout];
  clockLayerOrder = [layout clockLayerOrder];
  v6 = [clockLayerOrder isEqualToString:*MEMORY[0x1E69C0B98]];

  layerStackRequest = [(_PIParallaxLayerStackJob *)self layerStackRequest];
  isSettlingEffectEnabled = [layerStackRequest isSettlingEffectEnabled];

  layerStackRequest2 = [(_PIParallaxLayerStackJob *)self layerStackRequest];
  isSpatialPhotoEnabled = [layerStackRequest2 isSpatialPhotoEnabled];

  layerStackRequest3 = [(_PIParallaxLayerStackJob *)self layerStackRequest];
  userAdjustedVisibleFrame = [layerStackRequest3 userAdjustedVisibleFrame];

  v13 = objc_alloc(MEMORY[0x1E69C0778]);
  layers = [(_PIParallaxLayerStackJob *)self layers];
  layout2 = [(_PIParallaxLayerStackJob *)self layout];
  LOBYTE(v19) = userAdjustedVisibleFrame;
  v16 = [v13 initWithLayers:layers layout:layout2 depthEnabled:v6 parallaxDisabled:0 clockAreaLuminance:isSettlingEffectEnabled settlingEffectEnabled:isSpatialPhotoEnabled spatialPhotoEnabled:*MEMORY[0x1E69C0AD0] userAdjustedVisibleFrame:v19];

  layerStackRequest4 = [(_PIParallaxLayerStackJob *)self layerStackRequest];
  LODWORD(isSettlingEffectEnabled) = [layerStackRequest4 headroomBlurEnabled];

  if (isSettlingEffectEnabled)
  {
    [v16 markMayContainBakedHeadroom];
  }

  [(_PIParallaxLayerStackResult *)v3 setLayerStack:v16];

  return v3;
}

- (BOOL)complete:(id *)complete
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v6 = self->_cachedImageEntries;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v62;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v62 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![*(*(&v61 + 1) + 8 * i) waitForRender:complete])
        {
          v14 = 0;
          goto LABEL_51;
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  segmentationItem = [(_PIParallaxLayerStackJob *)self segmentationItem];
  classification = [segmentationItem classification];

  if (classification == 1)
  {
    v13 = MEMORY[0x1E69C0C18];
  }

  else
  {
    v13 = MEMORY[0x1E69C0C20];
    if (classification != 2)
    {
      v13 = MEMORY[0x1E69C0C10];
    }
  }

  v15 = *v13;
  foregroundImage = [(_PIParallaxLayerStackJob *)self foregroundImage];
  v17 = MEMORY[0x1E69C0BF8];
  if (!foregroundImage)
  {
    v17 = MEMORY[0x1E69C0C28];
  }

  v18 = *v17;

  v6 = *MEMORY[0x1E69C0A80];
  v19 = *MEMORY[0x1E69C0A70];
  mode = [(_PIParallaxLayerStackJob *)self mode];
  v21 = mode;
  switch(mode)
  {
    case 9:
      goto LABEL_19;
    case 3:
      v15 = -10.0;
      v22 = -20.0;
      v23 = MEMORY[0x1E69C0A90];
      v24 = MEMORY[0x1E69C0A98];
      goto LABEL_21;
    case 2:
LABEL_19:
      v22 = v18 + -0.5;
      v15 = v15 + -0.5;
      v23 = MEMORY[0x1E69C0A78];
      v24 = MEMORY[0x1E69C0A88];
LABEL_21:
      v25 = *v24;

      v26 = *v23;
      v19 = v26;
      v6 = v25;
      goto LABEL_23;
  }

  v22 = v18;
LABEL_23:
  backgroundBuffer = [(_PIParallaxLayerStackJob *)self backgroundBuffer];

  if (backgroundBuffer)
  {
    backgroundBuffer2 = [(_PIParallaxLayerStackJob *)self backgroundBuffer];
    backgroundImage = [(_PIParallaxLayerStackJob *)self backgroundImage];
    v30 = [(_PIParallaxLayerStackJob *)self layerForBuffer:backgroundBuffer2 image:backgroundImage zPosition:v19 identifier:v22];

    if (!v30)
    {
      v53 = MEMORY[0x1E69B3A48];
      backgroundImage2 = [(_PIParallaxLayerStackJob *)self backgroundImage];
      v55 = @"Failed to render background layer";
      goto LABEL_45;
    }

    [v5 addObject:v30];
  }

  foregroundBuffer = [(_PIParallaxLayerStackJob *)self foregroundBuffer];

  if (foregroundBuffer)
  {
    foregroundBuffer2 = [(_PIParallaxLayerStackJob *)self foregroundBuffer];
    foregroundImage2 = [(_PIParallaxLayerStackJob *)self foregroundImage];
    v34 = [(_PIParallaxLayerStackJob *)self layerForBuffer:foregroundBuffer2 image:foregroundImage2 zPosition:v6 identifier:v15];

    if (v34)
    {
      [v5 addObject:v34];

      goto LABEL_29;
    }

    v53 = MEMORY[0x1E69B3A48];
    backgroundImage2 = [(_PIParallaxLayerStackJob *)self backgroundImage];
    v55 = @"Failed to render foreground layer";
LABEL_45:
    *complete = [v53 failureError:v55 object:backgroundImage2];

    goto LABEL_49;
  }

LABEL_29:
  spatialPhotoScene = [(_PIParallaxLayerStackJob *)self spatialPhotoScene];

  if (!spatialPhotoScene)
  {
LABEL_37:
    debugImageCollector = [(_PIParallaxLayerStackJob *)self debugImageCollector];

    if (debugImageCollector)
    {
      debugImageCollector2 = [(_PIParallaxLayerStackJob *)self debugImageCollector];
      v47 = [debugImageCollector2 resultLayersWithRenderer:self];
      [v5 addObjectsFromArray:v47];
    }

    if (v21 == 7)
    {
      segmentationItem2 = [(_PIParallaxLayerStackJob *)self segmentationItem];
      isSettlingEffectAvailable = [segmentationItem2 isSettlingEffectAvailable];

      if (isSettlingEffectAvailable)
      {
        segmentationItem3 = [(_PIParallaxLayerStackJob *)self segmentationItem];
        settlingEffectVideoData = [segmentationItem3 settlingEffectVideoData];

        v52 = [(_PIParallaxLayerStackJob *)self layerForVideoData:settlingEffectVideoData zPosition:*MEMORY[0x1E69C0AA0] identifier:v18];
        [v5 addObject:v52];
      }
    }

    [(_PIParallaxLayerStackJob *)self setLayers:v5];
    v14 = 1;
    goto LABEL_50;
  }

  v36 = *MEMORY[0x1E69C0AA8];
  v37 = *MEMORY[0x1E69C0AB8];
  if (v21 == 9)
  {
    v38 = *MEMORY[0x1E69C0AB0];

    v39 = *MEMORY[0x1E69C0AC0];
    v37 = v39;
    v36 = v38;
  }

  spatialPhotoScene2 = [(_PIParallaxLayerStackJob *)self spatialPhotoScene];
  [(_PIParallaxLayerStackJob *)self spatialPhotoFrame];
  v41 = [_PIParallaxLayerStackJob layerForSpatialPhotoScene:"layerForSpatialPhotoScene:isOcclusion:layerFrame:zPosition:identifier:" isOcclusion:spatialPhotoScene2 layerFrame:0 zPosition:v36 identifier:?];

  if (v41)
  {
    [v5 addObject:v41];
    if (!PFPosterIsSpatialPhotoOcclusionEnabled())
    {
LABEL_36:

      goto LABEL_37;
    }

    [(_PIParallaxLayerStackJob *)self spatialPhotoScene];
    v43 = v42 = v37;
    [(_PIParallaxLayerStackJob *)self spatialPhotoFrame];
    v60 = v42;
    v44 = [_PIParallaxLayerStackJob layerForSpatialPhotoScene:"layerForSpatialPhotoScene:isOcclusion:layerFrame:zPosition:identifier:" isOcclusion:v43 layerFrame:1 zPosition:v42 identifier:?];

    if (v44)
    {
      [v5 addObject:v44];

      v37 = v60;
      goto LABEL_36;
    }

    v56 = @"Failed to render spatial photo foreground layer";
  }

  else
  {
    v60 = v37;
    v56 = @"Failed to render spatial photo background layer";
  }

  v57 = MEMORY[0x1E69B3A48];
  spatialPhotoScene3 = [(_PIParallaxLayerStackJob *)self spatialPhotoScene];
  *complete = [v57 failureError:v56 object:spatialPhotoScene3];

LABEL_49:
  v14 = 0;
LABEL_50:

LABEL_51:
  return v14;
}

- (BOOL)render:(id *)render
{
  v120 = *MEMORY[0x1E69E9840];
  if ([(_PIParallaxLayerStackJob *)self mode]!= 7)
  {
    v6 = [(NURenderJob *)self renderer:render];
    if (!v6)
    {
      goto LABEL_50;
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    debugImageCollector2 = self->_cachedImageEntries;
    v8 = [(NSMutableArray *)debugImageCollector2 countByEnumeratingWithState:&v115 objects:v119 count:16];
    if (v8)
    {
      v9 = *v116;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v116 != v9)
          {
            objc_enumerationMutation(debugImageCollector2);
          }

          if (![*(*(&v115 + 1) + 8 * i) render:v6 error:render])
          {
            v5 = 0;
            goto LABEL_49;
          }
        }

        v8 = [(NSMutableArray *)debugImageCollector2 countByEnumeratingWithState:&v115 objects:v119 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    layerStackRequest = [(_PIParallaxLayerStackJob *)self layerStackRequest];
    isForegroundLayerEnabled = [layerStackRequest isForegroundLayerEnabled];

    foregroundImage = [(_PIParallaxLayerStackJob *)self foregroundImage];
    LODWORD(layerStackRequest) = foregroundImage != 0;

    if ((layerStackRequest & isForegroundLayerEnabled) != 0)
    {
      foregroundImage2 = [(_PIParallaxLayerStackJob *)self foregroundImage];
      v15 = [(_PIParallaxLayerStackJob *)self newRenderedPixelBufferFromImage:foregroundImage2 hasAlpha:1 error:render];
      [(_PIParallaxLayerStackJob *)self setForegroundBuffer:v15];
    }

    backgroundImage = [(_PIParallaxLayerStackJob *)self backgroundImage];
    v17 = backgroundImage == 0;

    if (!v17)
    {
      if ((isForegroundLayerEnabled & 1) == 0)
      {
        foregroundImage3 = [(_PIParallaxLayerStackJob *)self foregroundImage];
        v19 = foregroundImage3 == 0;

        if (!v19)
        {
          foregroundImage4 = [(_PIParallaxLayerStackJob *)self foregroundImage];
          backgroundImage2 = [(_PIParallaxLayerStackJob *)self backgroundImage];
          v22 = [foregroundImage4 imageByCompositingOverImage:backgroundImage2];
          [(_PIParallaxLayerStackJob *)self setBackgroundImage:v22];
        }
      }

      backgroundImage3 = [(_PIParallaxLayerStackJob *)self backgroundImage];
      v24 = [(_PIParallaxLayerStackJob *)self newRenderedPixelBufferFromImage:backgroundImage3 hasAlpha:0 error:render];
      [(_PIParallaxLayerStackJob *)self setBackgroundBuffer:v24];
    }

    if ([(_PIParallaxLayerStackJob *)self mode]!= 8 && [(_PIParallaxLayerStackJob *)self mode]!= 9)
    {
      goto LABEL_47;
    }

    debugImageCollector2 = PIParallaxDefaultSpatialPhotoProducer();
    if (debugImageCollector2)
    {
      backgroundBuffer = [(_PIParallaxLayerStackJob *)self backgroundBuffer];
      pixelBuffer = [backgroundBuffer CVPixelBuffer];

      if (pixelBuffer)
      {
        segmentationItem = [(_PIParallaxLayerStackJob *)self segmentationItem];
        [segmentationItem focalLengthIn35mm];
        v28 = v27;

        Width = CVPixelBufferGetWidth(pixelBuffer);
        [(NSMutableArray *)debugImageCollector2 focalLengthPxForFocalLengthIn35mm:v28 pixelSize:Width, CVPixelBufferGetHeight(pixelBuffer)];
        v105 = v30;
        layerStackRequest2 = [(_PIParallaxLayerStackJob *)self layerStackRequest];
        auxiliaryLayout = [layerStackRequest2 auxiliaryLayout];

        layout = [(_PIParallaxLayerStackJob *)self layout];
        [layout adaptiveTimeFrame];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;
        [(_PIParallaxLayerStackJob *)self spatialPhotoFrame];
        v45 = v34 - v44;
        v46 = 0.0;
        v47 = 0.0;
        if (v42 != 0.0)
        {
          v45 = v45 / v42;
          v47 = v38 / v42;
        }

        v103 = v47;
        v48 = v36 - v41;
        if (v43 != 0.0)
        {
          v48 = v48 / v43;
          v46 = v40 / v43;
        }

        v104 = v46;

        if (auxiliaryLayout)
        {
          [auxiliaryLayout adaptiveTimeFrame];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;
          [(_PIParallaxLayerStackJob *)self spatialPhotoFrame];
          v61 = v50 - v60;
          v62 = 0.0;
          v63 = 0.0;
          if (v58 != 0.0)
          {
            v61 = v61 / v58;
            v63 = v54 / v58;
          }

          v101 = v63;
          v64 = v52 - v57;
          if (v59 != 0.0)
          {
            v64 = v64 / v59;
            v62 = v56 / v59;
          }
        }

        else
        {
          v61 = *MEMORY[0x1E695F050];
          v64 = *(MEMORY[0x1E695F050] + 8);
          v62 = *(MEMORY[0x1E695F050] + 24);
          v101 = *(MEMORY[0x1E695F050] + 16);
        }

        v102 = v62;
        layerStackRequest3 = [(_PIParallaxLayerStackJob *)self layerStackRequest];
        spatialPhotoProgressHandler = [layerStackRequest3 spatialPhotoProgressHandler];
        v68 = spatialPhotoProgressHandler;
        if (!spatialPhotoProgressHandler)
        {
          spatialPhotoProgressHandler = &__block_literal_global_21394;
        }

        v108 = MEMORY[0x1CCA61740](spatialPhotoProgressHandler);

        objc_initWeak(&location, self);
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v112[2] = __35___PIParallaxLayerStackJob_render___block_invoke_2;
        v112[3] = &unk_1E82ABB80;
        objc_copyWeak(&v113, &location);
        v107 = MEMORY[0x1CCA61740](v112);
        segmentationItem2 = [(_PIParallaxLayerStackJob *)self segmentationItem];
        composition = [segmentationItem2 composition];
        v109 = [composition objectForKeyedSubscript:@"source"];

        assetIdentifier = [v109 assetIdentifier];
        v71 = [assetIdentifier componentsSeparatedByString:@" "];
        lastObject = [v71 lastObject];

        if (![lastObject length])
        {
          resource = [segmentationItem2 resource];
          imageFileURL = [resource imageFileURL];
          lastPathComponent = [imageFileURL lastPathComponent];

          lastObject = lastPathComponent;
        }

        if (![lastObject length])
        {
          v76 = MEMORY[0x1E696AEC0];
          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID UUIDString];
          v79 = [v76 stringWithFormat:@"unknown-%@", uUIDString];

          lastObject = v79;
        }

        v80 = MEMORY[0x1E696AEC0];
        effectiveLayout = [(_PIParallaxLayerStackJob *)self effectiveLayout];
        [effectiveLayout imageSize];
        v84 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{%.2f, %.2f}", v82, v83];
        backgroundImage4 = [(_PIParallaxLayerStackJob *)self backgroundImage];
        [backgroundImage4 extent];
        v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v86, v87, v88, v89];
        v91 = [v80 stringWithFormat:@"id:%@, is:%@, be:%@", lastObject, v84, v90];

        if (objc_opt_respondsToSelector())
        {
          layerStackRequest4 = [(_PIParallaxLayerStackJob *)self layerStackRequest];
          userAdjustedVisibleFrame = [layerStackRequest4 userAdjustedVisibleFrame];

          v94 = *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24);
          v95 = [(NSMutableArray *)debugImageCollector2 generateSpatialPhotoSceneForPixelBuffer:pixelBuffer cacheKey:v91 focalLengthPx:userAdjustedVisibleFrame portraitNormalizedTimeRect:v108 landscapeNormalizedTimeRect:v107 isInteractive:render progressHandler:v105 isCanceledHandler:v45 error:v94 - (v104 + v48), v103, *&v61, v94 - (v102 + v64), *&v101, *&v102];
          [(_PIParallaxLayerStackJob *)self setSpatialPhotoScene:v95];

          spatialPhotoScene = [(_PIParallaxLayerStackJob *)self spatialPhotoScene];
          v97 = spatialPhotoScene != 0;
        }

        else
        {
          [MEMORY[0x1E69B3A48] invalidError:@"Invalid spatial photo producer" object:debugImageCollector2];
          *render = v97 = 0;
        }

        objc_destroyWeak(&v113);
        objc_destroyWeak(&location);

        if (v97)
        {
LABEL_47:
          debugImageCollector = [(_PIParallaxLayerStackJob *)self debugImageCollector];
          v99 = debugImageCollector == 0;

          if (v99)
          {
            v5 = 1;
            goto LABEL_51;
          }

          debugImageCollector2 = [(_PIParallaxLayerStackJob *)self debugImageCollector];
          [(NSMutableArray *)debugImageCollector2 renderImagesWithRenderer:self];
          v5 = 1;
          goto LABEL_49;
        }

LABEL_50:
        v5 = 0;
        goto LABEL_51;
      }

      v65 = @"Failed to render spatial photo, backgroundBuffer.CVPixelBuffer nil";
    }

    else
    {
      v65 = @"Failed to render spatial photo, PIParallaxDefaultSpatialPhotoProducer is nil";
    }

    [MEMORY[0x1E69B3A48] failureError:v65 object:0];
    *render = v5 = 0;
LABEL_49:

LABEL_51:
    return v5;
  }

  return 1;
}

- (BOOL)prepare:(id *)prepare
{
  selfCopy = self;
  v219 = *MEMORY[0x1E69E9840];
  v215.receiver = self;
  v215.super_class = _PIParallaxLayerStackJob;
  if ([(NURenderJob *)&v215 prepare:?])
  {
    v16 = v216;
    segmentationItem = [(_PIParallaxLayerStackJob *)selfCopy segmentationItem];
    if (segmentationItem)
    {
      v4 = segmentationItem;
      effectiveLayout = [(_PIParallaxLayerStackJob *)selfCopy effectiveLayout];
      layerStackRequest = [(_PIParallaxLayerStackJob *)selfCopy layerStackRequest];
      auxiliaryLayout = [layerStackRequest auxiliaryLayout];

      style = [(_PIParallaxLayerStackJob *)selfCopy style];
      v21 = style;
      v199 = v4;
      if (style)
      {
        v205 = style;
      }

      else
      {
        originalStyle = [v4 originalStyle];
        v205 = [PIParallaxStyle styleWithBakedStyle:originalStyle];
      }

      classification = [v4 classification];
      isMainRequest = [(_PIParallaxLayerStackJob *)selfCopy isMainRequest];
      isBackfillRequest = [(_PIParallaxLayerStackJob *)selfCopy isBackfillRequest];
      isInactiveRequest = [(_PIParallaxLayerStackJob *)selfCopy isInactiveRequest];
      LODWORD(v5) = [(_PIParallaxLayerStackJob *)selfCopy isDebugRequest];
      isPreviewRequest = [(_PIParallaxLayerStackJob *)selfCopy isPreviewRequest];
      v26 = +[PIGlobalSettings globalSettings];
      segmentationDebugTintLayers = [v26 segmentationDebugTintLayers];

      outputGeometry = [(NURenderJob *)selfCopy outputGeometry];
      [outputGeometry size];
      NUPixelSizeToCGSize();
      width = v27;
      height = v28;

      v206 = [effectiveLayout layoutByUpdatingImageSize:{width, height}];

      outputImage = [(NURenderJob *)selfCopy outputImage];
      if (outputImage)
      {
        v193 = v5;
        v5 = outputImage;
        segmentationMatte = [v4 segmentationMatte];
        outputGeometry = v4;
        v201 = auxiliaryLayout;
        v204 = v5;
        if (!segmentationMatte)
        {
          v196 = 0;
          auxiliaryLayout = 0;
          goto LABEL_26;
        }

        v31 = segmentationMatte;
        layerStackRequest2 = [(_PIParallaxLayerStackJob *)selfCopy layerStackRequest];
        if ([layerStackRequest2 isSettlingEffectEnabled])
        {
          v196 = 0;
          auxiliaryLayout = 0;
LABEL_11:

          goto LABEL_26;
        }

        layerStackRequest3 = [(_PIParallaxLayerStackJob *)selfCopy layerStackRequest];
        isSpatialPhotoEnabled = [layerStackRequest3 isSpatialPhotoEnabled];

        if (isSpatialPhotoEnabled)
        {
          v196 = 0;
          auxiliaryLayout = 0;
          v5 = v204;
          goto LABEL_26;
        }

        v35 = MEMORY[0x1E695F658];
        segmentationMatte2 = [outputGeometry segmentationMatte];
        v37 = [v35 imageWithNUImageBuffer:segmentationMatte2];

        if ((classification - 3) <= 1)
        {
          v38 = [PISegmentationHelper invertImage:v37];

          v37 = v38;
        }

        if (v37)
        {
          segmentationBackground = [v199 segmentationBackground];

          if (segmentationBackground)
          {
            v40 = MEMORY[0x1E695F658];
            segmentationBackground2 = [v199 segmentationBackground];
            v42 = [v40 imageWithNUImageBuffer:segmentationBackground2];

            v43 = v204;
            v196 = v42;
            v5 = [PISegmentationHelper backgroundForImage:v204 matte:v37 infill:v42];
          }

          else
          {
            v196 = 0;
            v43 = v204;
            v5 = v204;
          }

          auxiliaryLayout = [PISegmentationHelper upsampleMatteImage:v37 guideImage:v43];

          if (isMainRequest)
          {
            layerStackRequest4 = [(_PIParallaxLayerStackJob *)selfCopy layerStackRequest];
            cache = [layerStackRequest4 cache];

            outputGeometry = v199;
            if (cache)
            {
              v31 = [MEMORY[0x1E69B3BF0] R8];
              layerStackRequest2 = [MEMORY[0x1E69B3A10] linearGrayColorSpace];
              v46 = [(_PIParallaxLayerStackJob *)selfCopy imageByCachingImage:auxiliaryLayout format:v31 colorSpace:layerStackRequest2 key:@"MatteImage"];

              auxiliaryLayout = v46;
              goto LABEL_11;
            }

LABEL_26:
            if (isInactiveRequest)
            {
              [v205 inactiveFilter];
            }

            else
            {
              [v205 filter];
            }
            v4 = ;
            kind = [v205 kind];
            if ([kind isEqualToString:*MEMORY[0x1E69C0B08]] & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0B20]) & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", *MEMORY[0x1E69C0B10]))
            {
              v48 = 0;
              if (v4)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v48 = [kind isEqualToString:*MEMORY[0x1E69C0B18]] ^ 1;
              if (v4)
              {
LABEL_33:
                v191 = v48;
                [v206 visibleFrame];
                x = v49;
                y = v51;
                width = v53;
                height = v54;
                v195 = kind;
                if (PFPosterIsAdaptiveLayoutEnabled())
                {
                  [v206 adaptiveVisibleFrame];
                  v236.origin.x = v55;
                  v236.origin.y = v56;
                  v236.size.width = v57;
                  v236.size.height = v58;
                  v220.origin.x = x;
                  v220.origin.y = y;
                  v220.size.width = width;
                  v220.size.height = height;
                  v221 = CGRectUnion(v220, v236);
                  x = v221.origin.x;
                  y = v221.origin.y;
                  width = v221.size.width;
                  height = v221.size.height;
                }

                [(NURenderJob *)selfCopy renderScale];
                NUScaleToDouble();
                NUScaleRect();
                v60 = v59;
                [v4 setVisibleFrame:?];
                [v206 deviceResolution];
                [v4 setRenderScale:{fmin(v60 / v61, 1.0)}];
                localLightData = [outputGeometry localLightData];
                [v4 setLocalLightData:localLightData];

                [v4 setInputGuideImage:v204];
                [v4 setInputBackgroundImage:v5];
                if (auxiliaryLayout)
                {
                  [v4 setInputMatteImage:auxiliaryLayout];
                  [v4 setInputForegroundImage:v204];
                }

                layerStackRequest5 = [(_PIParallaxLayerStackJob *)selfCopy layerStackRequest];
                cache2 = [layerStackRequest5 cache];

                if (cache2)
                {
                  [v4 setCache:selfCopy];
                }

                outputBackgroundImage = [v4 outputBackgroundImage];

                outputForegroundImage = [v4 outputForegroundImage];
                outputMatteImage = [v4 outputMatteImage];

                memset(buf, 0, 32);
                [v206 visibleFrame];
                NUScaleToDouble();
                NUScaleRect();
                NUPixelRectFromCGRect();
                v213 = 0u;
                v214 = 0u;
                [v206 adaptiveVisibleFrame];
                NUScaleToDouble();
                NUScaleRect();
                NUPixelRectFromCGRect();
                v66 = *(MEMORY[0x1E69B3908] + 16);
                v211 = *MEMORY[0x1E69B3908];
                v212 = v66;
                if (v201)
                {
                  [v201 visibleFrame];
                  v68 = v67;
                  v70 = v69;
                  v72 = v71;
                  v74 = v73;
                  if (PFPosterIsAdaptiveLayoutEnabled())
                  {
                    [v201 adaptiveVisibleFrame];
                    v237.origin.x = v75;
                    v237.origin.y = v76;
                    v237.size.width = v77;
                    v237.size.height = v78;
                    v222.origin.x = v68;
                    v222.origin.y = v70;
                    v222.size.width = v72;
                    v222.size.height = v74;
                    CGRectUnion(v222, v237);
                  }

                  NUScaleToDouble();
                  NUScaleRect();
                  NUPixelRectFromCGRect();
                }

                v209[0] = MEMORY[0x1E69E9820];
                v209[1] = 3221225472;
                v209[2] = __36___PIParallaxLayerStackJob_prepare___block_invoke;
                v209[3] = &unk_1E82ABB38;
                auxiliaryLayout = outputBackgroundImage;
                v210 = auxiliaryLayout;
                v16 = MEMORY[0x1CCA61740](v209);
                v79 = *(v16 + 2);
                *v217 = v213;
                *&v217[16] = v214;
                if (v79(v16, v217) & 1) != 0 || (v80 = *(v16 + 2), *v217 = *buf, *&v217[16] = *&buf[16], (v80(v16, v217)))
                {
                  LODWORD(v5) = 1;
                }

                else
                {
                  v81 = *(v16 + 2);
                  *v217 = v211;
                  *&v217[16] = v212;
                  LODWORD(v5) = v81(v16, v217);
                }

                if ([(_PIParallaxLayerStackJob *)selfCopy mode]== 8)
                {
                  if (v201)
                  {
                    [v201 visibleFrame];
                    v238.origin.x = v82;
                    v238.origin.y = v83;
                    v238.size.width = v84;
                    v238.size.height = v85;
                    v223.origin.x = x;
                    v223.origin.y = y;
                    v223.size.width = width;
                    v223.size.height = height;
                    v224 = CGRectUnion(v223, v238);
                    x = v224.origin.x;
                    y = v224.origin.y;
                    width = v224.size.width;
                    height = v224.size.height;
                    if (PFPosterIsAdaptiveLayoutEnabled())
                    {
                      [v201 adaptiveVisibleFrame];
                      v239.origin.x = v86;
                      v239.origin.y = v87;
                      v239.size.width = v88;
                      v239.size.height = v89;
                      v225.origin.x = x;
                      v225.origin.y = y;
                      v225.size.width = width;
                      v225.size.height = height;
                      v226 = CGRectUnion(v225, v239);
                      x = v226.origin.x;
                      y = v226.origin.y;
                      width = v226.size.width;
                      height = v226.size.height;
                    }
                  }

                  [(_PIParallaxLayerStackJob *)selfCopy setSpatialPhotoFrame:x, y, width, height];
                  [outputGeometry spatialPhotoNormalizedBounds];
                  if (CGRectIsEmpty(v227))
                  {
                    v90 = MEMORY[0x1E69B3A48];
                    v91 = @"Failed to render spatial photo, item.spatialPhotoNormalizedBounds is empty";
LABEL_56:
                    [v90 failureError:v91 object:0];
                    *prepare = v22 = 0;
                    v92 = v201;
                    v93 = v206;
                    v95 = v195;
                    v94 = v196;
LABEL_122:

                    return v22;
                  }

                  [outputGeometry spatialPhotoNormalizedBounds];
                  v97 = 1.0 - v96;
                  v98 = -(width / v97 - width);
                  v99 = -(height / v97 - height);
                  v229.origin.x = x;
                  v229.origin.y = y;
                  v229.size.width = width;
                  v229.size.height = height;
                  v230 = CGRectInset(v229, v98, v99);
                  x = v230.origin.x;
                  y = v230.origin.y;
                  width = v230.size.width;
                  height = v230.size.height;
LABEL_73:
                  layerStackRequest6 = [(_PIParallaxLayerStackJob *)selfCopy layerStackRequest];
                  useLegacyHeadroom = [layerStackRequest6 useLegacyHeadroom];

                  if ([v205 hasTonalityMode])
                  {
                    v119 = [v205 tonality] == 3;
                  }

                  else
                  {
                    v119 = 0;
                  }

                  if ([v205 hasBackgroundParameter])
                  {
                    useLegacyHeadroom |= [v205 showsBackground] ^ 1;
                  }

                  if ((v5 | isBackfillRequest) & 1) == 0 || (-[_PIParallaxLayerStackJob layerStackRequest](selfCopy, "layerStackRequest"), v120 = objc_claimAutoreleasedReturnValue(), v121 = [v120 headroomDisabled], v120, (v121))
                  {
                    v92 = v201;
                    goto LABEL_93;
                  }

                  memset(v217, 0, sizeof(v217));
                  [v206 extendedImageExtent];
                  NUScaleToDouble();
                  NUScaleRect();
                  NUPixelRectFromCGRect();
                  if (useLegacyHeadroom & 1 | ((PFPosterIsPortraitHeadroomEnabled() & 1) == 0))
                  {
                    v122 = objc_alloc_init(PIHeadroomFilter);
                    [(PIHeadroomFilter *)v122 setInputImage:auxiliaryLayout];
                    v207 = *v217;
                    v208 = *&v217[16];
                    NUPixelRectToCGRect();
                    [(PIHeadroomFilter *)v122 setExtendedRect:?];
                    configuration = [v206 configuration];
                    [configuration screenScale];
                    [(PIHeadroomFilter *)v122 setRenderScale:?];

                    layerStackRequest7 = [(_PIParallaxLayerStackJob *)selfCopy layerStackRequest];
                    -[PIHeadroomFilter setUseBlur:](v122, "setUseBlur:", [layerStackRequest7 headroomBlurEnabled] & v191);

                    [(PIHeadroomFilter *)v122 setIsInactive:isInactiveRequest];
                    if ([v205 hasTonalityMode])
                    {
                      -[PIHeadroomFilter setUseHighKeyStyle:](v122, "setUseHighKeyStyle:", [v205 tonality] == 3);
                    }

                    v92 = v201;
                    if ([v205 hasHeadroomLook])
                    {
                      -[PIHeadroomFilter setUseHighKeyStyle:](v122, "setUseHighKeyStyle:", [v205 headroomLook] == 2);
                    }

                    if (![v205 hasColorParameter])
                    {
                      goto LABEL_92;
                    }

                    color = [v205 color];
                    [(PIHeadroomFilter *)v122 setPrimaryGradientColor:color];
                  }

                  else
                  {
                    v122 = objc_alloc_init(PIPortraitHeadroomFilter);
                    [(PIHeadroomFilter *)v122 setInputImage:auxiliaryLayout];
                    v207 = *v217;
                    v208 = *&v217[16];
                    NUPixelRectToCGRect();
                    [(PIHeadroomFilter *)v122 setExtendedRect:?];
                    [(PIHeadroomFilter *)v122 setIsInactive:isInactiveRequest];
                    -[PIHeadroomFilter setClassification:](v122, "setClassification:", [v199 classification]);
                    [(PIHeadroomFilter *)v122 setSkipInpaint:v119];
                    v126 = MEMORY[0x1E695F658];
                    segmentationMatte3 = [v199 segmentationMatte];
                    v128 = [v126 imageWithCVPixelBuffer:{objc_msgSend(segmentationMatte3, "CVPixelBuffer")}];
                    [(PIHeadroomFilter *)v122 setMatteImage:v128];

                    hDRGainMap = [v199 HDRGainMap];

                    if (!hDRGainMap)
                    {
                      v92 = v201;
                      goto LABEL_92;
                    }

                    v130 = MEMORY[0x1E695F658];
                    color = [v199 HDRGainMap];
                    v131 = [v130 imageWithCVPixelBuffer:{objc_msgSend(color, "CVPixelBuffer")}];
                    [(PIHeadroomFilter *)v122 setHdrGainMap:v131];

                    v92 = v201;
                  }

LABEL_92:
                  outputImage2 = [(PIHeadroomFilter *)v122 outputImage];

                  auxiliaryLayout = outputImage2;
LABEL_93:
                  v94 = v196;
                  v133 = outputForegroundImage;
                  if (outputMatteImage)
                  {
                    outputGeometry = v199;
                    if (outputForegroundImage)
                    {
                      v133 = [PISegmentationHelper foregroundForImage:outputForegroundImage matte:outputMatteImage];
                    }
                  }

                  else
                  {
                    outputGeometry = v199;
                  }

                  if (isBackfillRequest)
                  {
                    if (!segmentationDebugTintLayers)
                    {
                      goto LABEL_118;
                    }
                  }

                  else
                  {
                    v203 = v133;
                    if (!isPreviewRequest)
                    {
                      if ([(_PIParallaxLayerStackJob *)selfCopy mode]!= 8 && [(_PIParallaxLayerStackJob *)selfCopy mode]!= 9)
                      {
                        [v206 inactiveFrame];
                        v240.origin.x = v134;
                        v240.origin.y = v135;
                        v240.size.width = v136;
                        v240.size.height = v137;
                        v233.origin.x = x;
                        v233.origin.y = y;
                        v233.size.width = width;
                        v233.size.height = height;
                        v234 = CGRectUnion(v233, v240);
                        x = v234.origin.x;
                        y = v234.origin.y;
                        width = v234.size.width;
                        height = v234.size.height;
                      }

                      if ([(_PIParallaxLayerStackJob *)selfCopy shouldUseVideoFrame])
                      {
                        [outputGeometry settlingEffectNormalizedBounds];
                        outputGeometry2 = [(NURenderJob *)selfCopy outputGeometry];
                        v139 = outputGeometry2;
                        if (outputGeometry2)
                        {
                          [outputGeometry2 extent];
                        }

                        else
                        {
                          memset(v217, 0, sizeof(v217));
                        }

                        NUPixelRectToCGRect();
                        NURectDenormalize();
                        v141 = v140;
                        v143 = v142;
                        v145 = v144;
                        v147 = v146;

                        v235.origin.x = x;
                        v235.origin.y = y;
                        v235.size.width = width;
                        v235.size.height = height;
                        v241.origin.x = v141;
                        v241.origin.y = v143;
                        v241.size.width = v145;
                        v241.size.height = v147;
                        CGRectIntersection(v235, v241);
                      }
                    }

                    memset(v217, 0, sizeof(v217));
                    NUScaleToDouble();
                    NUScaleRect();
                    NUPixelRectFromCGRect();
                    NUAlignPixelRectToPixelGrid();
                    *v217 = v207;
                    *&v217[16] = v208;
                    [v206 extendedImageExtent];
                    NUScaleToDouble();
                    NUScaleRect();
                    NUPixelRectFromCGRect();
                    NUPixelRectIntersection();
                    *v217 = *v216;
                    *&v217[16] = *&v216[16];
                    if ([(_PIParallaxLayerStackJob *)selfCopy isSpatialPhotoRequest])
                    {
                      *v216 = v207;
                      *&v216[16] = v208;
                      if ((NUPixelRectEqualToRect() & 1) == 0)
                      {
                        if (*MEMORY[0x1E69B3D78] != -1)
                        {
                          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_642);
                        }

                        v148 = *MEMORY[0x1E69B3D80];
                        if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
                        {
                          *v216 = v207;
                          *&v216[16] = v208;
                          v167 = NSStringFromNUPixelRect();
                          *v216 = *v217;
                          *&v216[16] = *&v217[16];
                          v168 = NSStringFromNUPixelRect();
                          memset(v216, 0, sizeof(v216));
                          v169 = NSStringFromNUPixelRect();
                          *v216 = 138412802;
                          *&v216[4] = v167;
                          *&v216[12] = 2112;
                          *&v216[14] = v168;
                          *&v216[22] = 2112;
                          *&v216[24] = v169;
                          _os_log_error_impl(&dword_1C7694000, v148, OS_LOG_TYPE_ERROR, "Spatial Photo is enabled, and had to clamp visibleFrameRect: %@ -> %@ due to scaledExtendedImageFrame:%@. This will lead to mis-matched spatial scene geometry.", v216, 0x20u);

                          outputGeometry = v199;
                          v94 = v196;
                        }
                      }
                    }

                    *v216 = *v217;
                    *&v216[16] = *&v217[16];
                    NUPixelRectToCGRect();
                    v150 = v149;
                    v152 = v151;
                    v154 = v153;
                    v156 = v155;
                    v157 = [auxiliaryLayout imageByCroppingToRect:?];

                    v158 = [v203 imageByCroppingToRect:{v150, v152, v154, v156}];

                    auxiliaryLayout = v157;
                    v133 = v158;
                    if (!segmentationDebugTintLayers)
                    {
                      goto LABEL_118;
                    }
                  }

                  v159 = [(_PIParallaxLayerStackJob *)selfCopy debugTintedImage:v133 isBackfill:isBackfillRequest];
                  v160 = v133;
                  v133 = v159;

                  v161 = [(_PIParallaxLayerStackJob *)selfCopy debugTintedImage:auxiliaryLayout isBackfill:isBackfillRequest];

                  auxiliaryLayout = v161;
LABEL_118:
                  v95 = v195;
                  outputForegroundImage = v133;
                  if (v193)
                  {
                    v162 = v133;
                    v163 = objc_alloc_init(_PIParallaxLayerStackDebugImageCollector);
                    [(_PIParallaxLayerStackJob *)selfCopy setDebugImageCollector:v163];

                    debugImageCollector = [(_PIParallaxLayerStackJob *)selfCopy debugImageCollector];
                    v187 = v162;
                    v93 = v206;
                    [debugImageCollector prepareImagesForItem:outputGeometry renderer:selfCopy layout:v206 style:v205 inputImage:v204 matteImage:outputMatteImage infillImage:v94 foregroundImage:v187 backgroundImage:auxiliaryLayout];
                  }

                  else
                  {
                    [(_PIParallaxLayerStackJob *)selfCopy setBackgroundImage:auxiliaryLayout];
                    [(_PIParallaxLayerStackJob *)selfCopy setForegroundImage:v133];
                    v93 = v206;
                  }

                  [(_PIParallaxLayerStackJob *)selfCopy setLayout:v93];
                  v22 = 1;
                  goto LABEL_122;
                }

                if ([(_PIParallaxLayerStackJob *)selfCopy mode]!= 9)
                {
                  goto LABEL_73;
                }

                [outputGeometry spatialPhotoNormalizedBounds];
                if (CGRectIsEmpty(v228))
                {
                  v90 = MEMORY[0x1E69B3A48];
                  v91 = @"Failed to render spatial photo backfill, item.spatialPhotoNormalizedBounds is empty";
                  goto LABEL_56;
                }

                [outputGeometry spatialPhotoNormalizedBounds];
                v9 = v108;
                effectiveLayout2 = [(_PIParallaxLayerStackJob *)selfCopy effectiveLayout];
                if ([effectiveLayout2 isUsingHeadroom])
                {
                }

                else
                {
                  isUsingHeadroom = [v201 isUsingHeadroom];

                  if ((isUsingHeadroom & 1) == 0)
                  {
                    effectiveLayout3 = [(_PIParallaxLayerStackJob *)selfCopy effectiveLayout];
                    [effectiveLayout3 imageSize];
                    width = v114;
                    height = v115;
                    LODWORD(outputGeometry) = 0;
LABEL_69:

                    v231.origin.x = 0.0;
                    v231.origin.y = 0.0;
                    v231.size.width = width;
                    v231.size.height = height;
                    v232 = CGRectInset(v231, v9 * width, v9 * height);
                    v10 = v232.origin.x;
                    v11 = v232.origin.y;
                    v12 = v232.size.width;
                    v13 = v232.size.height;
                    if (*MEMORY[0x1E69B3D78] == -1)
                    {
LABEL_70:
                      v116 = *MEMORY[0x1E69B3D80];
                      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
                      {
                        v166 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", 0, 0, *&width, *&height];
                        v188 = MEMORY[0x1E696AEC0];
                        v190 = v166;
                        v189 = [[v188 alloc] initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v10, *&v11, *&v12, *&v13];
                        *v217 = 134218498;
                        *&v217[4] = v9;
                        *&v217[12] = 2112;
                        *&v217[14] = v166;
                        *&v217[22] = 2112;
                        *&v217[24] = v189;
                        _os_log_debug_impl(&dword_1C7694000, v116, OS_LOG_TYPE_DEBUG, "SpatialPhotoBackfill paddingPercentage:%.2f imageBounds:%@ spatialPhotoFrame:%@", v217, 0x20u);
                      }

                      [(_PIParallaxLayerStackJob *)selfCopy setSpatialPhotoFrame:v10, v11, v12, v13];
                      LODWORD(v5) = outputGeometry | v5;
                      y = 0.0;
                      x = 0.0;
                      goto LABEL_73;
                    }

LABEL_143:
                    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_642);
                    goto LABEL_70;
                  }
                }

                effectiveLayout3 = [(_PIParallaxLayerStackJob *)selfCopy effectiveLayout];
                [effectiveLayout3 extendedImageSize];
                width = v112;
                height = v113;
                LODWORD(outputGeometry) = 1;
                goto LABEL_69;
              }
            }

            v100 = NUAssertLogger_21137();
            selfCopy = &qword_1C7845000;
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing style filter"];
              *buf = 138543362;
              *&buf[4] = v101;
              _os_log_error_impl(&dword_1C7694000, v100, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
            }

            callStackSymbols4 = MEMORY[0x1E69B38E8];
            specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
            v104 = NUAssertLogger_21137();
            v105 = os_log_type_enabled(v104, OS_LOG_TYPE_ERROR);
            if (!specific)
            {
              if (v105)
              {
                callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
                v107 = [callStackSymbols componentsJoinedByString:@"\n"];
                *buf = 138543362;
                *&buf[4] = v107;
                _os_log_error_impl(&dword_1C7694000, v104, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
              }

LABEL_142:

              _NUAssertFailHandler();
              goto LABEL_143;
            }

LABEL_140:
            if (v105)
            {
              v184 = dispatch_get_specific(*callStackSymbols4);
              v185 = MEMORY[0x1E696AF00];
              selfCopy = v184;
              callStackSymbols2 = [v185 callStackSymbols];
              outputGeometry = [callStackSymbols2 componentsJoinedByString:@"\n"];
              *buf = 138543618;
              *&buf[4] = v184;
              *&buf[12] = 2114;
              *&buf[14] = outputGeometry;
              _os_log_error_impl(&dword_1C7694000, v104, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
            }

            goto LABEL_142;
          }
        }

        else
        {
          v196 = 0;
          auxiliaryLayout = 0;
          v5 = v204;
        }

        outputGeometry = v199;
        goto LABEL_26;
      }

      v175 = NUAssertLogger_21137();
      if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
      {
        v176 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing output image"];
        *buf = 138543362;
        *&buf[4] = v176;
        _os_log_error_impl(&dword_1C7694000, v175, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      callStackSymbols4 = MEMORY[0x1E69B38E8];
      v177 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v104 = NUAssertLogger_21137();
      v178 = os_log_type_enabled(v104, OS_LOG_TYPE_ERROR);
      if (!v177)
      {
        if (v178)
        {
          callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
          callStackSymbols4 = [callStackSymbols3 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          *&buf[4] = callStackSymbols4;
          _os_log_error_impl(&dword_1C7694000, v104, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

LABEL_139:

        v105 = _NUAssertFailHandler();
        goto LABEL_140;
      }
    }

    else
    {
      v170 = NUAssertLogger_21137();
      if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
      {
        v171 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing segmentation item"];
        *buf = 138543362;
        *&buf[4] = v171;
        _os_log_error_impl(&dword_1C7694000, v170, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      callStackSymbols4 = MEMORY[0x1E69B38E8];
      v172 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v104 = NUAssertLogger_21137();
      v173 = os_log_type_enabled(v104, OS_LOG_TYPE_ERROR);
      if (v172)
      {
        if (v173)
        {
          v180 = dispatch_get_specific(*callStackSymbols4);
          v181 = MEMORY[0x1E696AF00];
          selfCopy = v180;
          callStackSymbols4 = [v181 callStackSymbols];
          outputGeometry = [callStackSymbols4 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          *&buf[4] = v180;
          *&buf[12] = 2114;
          *&buf[14] = outputGeometry;
          _os_log_error_impl(&dword_1C7694000, v104, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v173)
      {
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols4 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = callStackSymbols4;
        _os_log_error_impl(&dword_1C7694000, v104, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v178 = _NUAssertFailHandler();
    }

    if (v178)
    {
      v182 = dispatch_get_specific(*callStackSymbols4);
      v183 = MEMORY[0x1E696AF00];
      selfCopy = v182;
      callStackSymbols4 = [v183 callStackSymbols];
      outputGeometry = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v182;
      *&buf[12] = 2114;
      *&buf[14] = outputGeometry;
      _os_log_error_impl(&dword_1C7694000, v104, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_139;
  }

  return 0;
}

- (id)newRenderPipelineStateForEvaluationMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = _PIParallaxLayerStackJob;
  v3 = [(NURenderJob *)&v5 newRenderPipelineStateForEvaluationMode:mode];
  [v3 setSampleMode:2];
  [v3 setDisableIntermediateCaching:1];
  return v3;
}

- (id)scalePolicy
{
  mode = [(_PIParallaxLayerStackJob *)self mode];
  if (mode > 9)
  {
    deviceScalePolicy = 0;
  }

  else if ((1 << mode) & 0x38B) != 0 || ((1 << mode) & 0x34) == 0 && (+[PIGlobalSettings globalSettings](PIGlobalSettings, "globalSettings"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 segmentationDebugPreviewHighQuality], v5, (v6))
  {
    deviceScalePolicy = [(_PIParallaxLayerStackJob *)self deviceScalePolicy];
  }

  else
  {
    deviceScalePolicy = [(_PIParallaxLayerStackJob *)self backfillScalePolicy];
  }

  return deviceScalePolicy;
}

- (id)deviceScalePolicy
{
  effectiveLayout = [(_PIParallaxLayerStackJob *)self effectiveLayout];
  v3 = [[_PIParallaxLayerStackScalePolicy alloc] initWithLayout:effectiveLayout];

  return v3;
}

- (id)backfillScalePolicy
{
  v28 = *MEMORY[0x1E69E9840];
  segmentationItem = [(_PIParallaxLayerStackJob *)self segmentationItem];
  if (!segmentationItem)
  {
    v11 = NUAssertLogger_21137();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing segmentation item"];
      v24 = 138543362;
      v25 = v12;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v24, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_21137();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(*v13);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        v24 = 138543618;
        v25 = v19;
        v26 = 2114;
        v27 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v24, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      v24 = 138543362;
      v25 = v18;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v24, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v3 = segmentationItem;
  segmentationMatte = [segmentationItem segmentationMatte];
  v5 = segmentationMatte;
  if (segmentationMatte)
  {
    v6 = [segmentationMatte size];
    v8 = v7;
  }

  else
  {
    v8 = 1512;
    v6 = 2016;
  }

  v9 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:v6 * v8];

  return v9;
}

- (id)effectiveLayout
{
  v31 = *MEMORY[0x1E69E9840];
  requestLayout = [(_PIParallaxLayerStackJob *)self requestLayout];
  if (requestLayout)
  {
    goto LABEL_19;
  }

  segmentationItem = [(_PIParallaxLayerStackJob *)self segmentationItem];
  layerStackRequest = [(_PIParallaxLayerStackJob *)self layerStackRequest];
  if (([layerStackRequest isSpatialPhotoEnabled] & 1) == 0)
  {

LABEL_6:
    layerStackRequest2 = [(_PIParallaxLayerStackJob *)self layerStackRequest];
    if ([layerStackRequest2 isSettlingEffectEnabled])
    {
      settlingEffectLayout = [segmentationItem settlingEffectLayout];

      if (settlingEffectLayout)
      {
        settlingEffectLayout2 = [segmentationItem settlingEffectLayout];
        goto LABEL_14;
      }
    }

    else
    {
    }

    originalLayout = [segmentationItem originalLayout];

    if (originalLayout)
    {
      [segmentationItem originalLayout];
    }

    else
    {
      [segmentationItem defaultLayout];
    }
    settlingEffectLayout2 = ;
    goto LABEL_14;
  }

  spatialPhotoLayout = [segmentationItem spatialPhotoLayout];

  if (!spatialPhotoLayout)
  {
    goto LABEL_6;
  }

  settlingEffectLayout2 = [segmentationItem spatialPhotoLayout];
LABEL_14:
  v11 = settlingEffectLayout2;
  if ([(_PIParallaxLayerStackJob *)self mode]== 1 || [(_PIParallaxLayerStackJob *)self mode]== 5)
  {
    landscapeLayout = [v11 landscapeLayout];
  }

  else
  {
    landscapeLayout = [v11 portraitLayout];
  }

  requestLayout = landscapeLayout;

  if (!requestLayout)
  {
    v14 = NUAssertLogger_21137();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing parallax layout"];
      v27 = 138543362;
      v28 = v15;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v27, 0xCu);
    }

    v16 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_21137();
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
        v27 = 138543618;
        v28 = v22;
        v29 = 2114;
        v30 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v27, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      v27 = 138543362;
      v28 = v21;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v27, 0xCu);
    }

    _NUAssertFailHandler();
  }

LABEL_19:

  return requestLayout;
}

- (BOOL)shouldUseVideoFrame
{
  layerStackRequest = [(_PIParallaxLayerStackJob *)self layerStackRequest];
  shouldUseVideoFrame = [layerStackRequest shouldUseVideoFrame];

  return shouldUseVideoFrame;
}

- (id)targetColorSpace
{
  if ([(_PIParallaxLayerStackJob *)self isInactiveRequest])
  {
    [MEMORY[0x1E69B3A10] sRGBColorSpace];
  }

  else
  {
    [MEMORY[0x1E69B3A10] displayP3ColorSpace];
  }
  v2 = ;

  return v2;
}

- (int64_t)mode
{
  layerStackRequest = [(_PIParallaxLayerStackJob *)self layerStackRequest];
  layerStackMode = [layerStackRequest layerStackMode];

  return layerStackMode;
}

- (PFPosterOrientedLayout)requestLayout
{
  layerStackRequest = [(_PIParallaxLayerStackJob *)self layerStackRequest];
  layout = [layerStackRequest layout];

  return layout;
}

- (PIParallaxStyle)style
{
  layerStackRequest = [(_PIParallaxLayerStackJob *)self layerStackRequest];
  style = [layerStackRequest style];

  return style;
}

- (PISegmentationItem)segmentationItem
{
  layerStackRequest = [(_PIParallaxLayerStackJob *)self layerStackRequest];
  segmentationItem = [layerStackRequest segmentationItem];

  return segmentationItem;
}

- (_PIParallaxLayerStackJob)initWithRequest:(id)request
{
  v32 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = MEMORY[0x1E69B3D70];
    v7 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = [v8 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v11, v12];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v14 = *v5;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v14 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_644);
        }

LABEL_11:
        v20 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v22 = MEMORY[0x1E696AF00];
          v23 = specific;
          v24 = v20;
          callStackSymbols = [v22 callStackSymbols];
          v26 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = specific;
          v30 = 2114;
          v31 = v26;
          _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_644);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v15 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AF00];
      v17 = v15;
      callStackSymbols2 = [v16 callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v19;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v27 = objc_opt_class();
    NSStringFromClass(v27);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_644);
  }
}

- (_PIParallaxLayerStackJob)initWithParallaxLayerStackRequest:(id)request
{
  v8.receiver = self;
  v8.super_class = _PIParallaxLayerStackJob;
  v3 = [(NURenderJob *)&v8 initWithRequest:request];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = *(v3 + 30);
    *(v3 + 30) = v4;

    v6 = *(MEMORY[0x1E695F050] + 16);
    *(v3 + 312) = *MEMORY[0x1E695F050];
    *(v3 + 328) = v6;
  }

  return v3;
}

@end