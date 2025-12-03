@interface PIRetouchSourceNode
+ (id)intermediateCacheForSubsample:(BOOL)subsample;
- (PIRetouchSourceNode)initWithImage:(id)image identifier:(id)identifier orientation:(int64_t)orientation;
- (PIRetouchSourceNode)initWithImage:(id)image settings:(id)settings orientation:(int64_t)orientation;
- (PIRetouchSourceNode)initWithInputImage:(id)image retouchStrokes:(id)strokes detectedFaces:(id)faces cacheKey:(id)key;
- (void)_performRetouchIfNeeded;
- (void)applyRetouchStrokes:(id)strokes toImage:(id)image;
- (void)provideImageData:(void *)data bytesPerRow:(unint64_t)row origin:(unint64_t)origin :(unint64_t)a6 size:(unint64_t)size :(unint64_t)a8 userInfo:(id)info;
@end

@implementation PIRetouchSourceNode

- (void)applyRetouchStrokes:(id)strokes toImage:(id)image
{
  v37 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  imageCopy = image;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = strokesCopy;
  v27 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v27)
  {
    context = 0;
    v25 = *v31;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        kdebug_trace();
        v8 = objc_autoreleasePoolPush();
        v9 = [PIRepairUtilities brushStrokeFromRetouchStrokeDictionary:v7];
        v10 = [v7 objectForKeyedSubscript:@"mode"];
        v11 = PIRetouchModeFromString(v10);

        if (v11 == 2)
        {
          if (!context)
          {
            context = [MEMORY[0x1E695F620] context];
          }

          settings = [(NURenderNode *)self settings];
          v13 = [settings objectForKeyedSubscript:@"detectedFaces"];
          v29 = 0;
          v14 = v9;
          [PIRepairUtilities applyRepairMLStrokeToMutableBuffer:imageCopy brushStroke:v9 detectedFaces:v13 context:context error:&v29];
        }

        else
        {
          settings = [v7 objectForKeyedSubscript:@"repairEdges"];
          v13 = [v7 objectForKeyedSubscript:@"sourceOffset"];
          v15 = [v13 objectForKeyedSubscript:@"x"];
          v16 = [v13 objectForKeyedSubscript:@"y"];
          [v15 doubleValue];
          v18 = v17;
          [v16 doubleValue];
          v14 = v9;
          +[PIRepairUtilities applyRepairStrokeToMutableBuffer:brushStroke:sourceOffset:repairEdges:](PIRepairUtilities, "applyRepairStrokeToMutableBuffer:brushStroke:sourceOffset:repairEdges:", imageCopy, v9, [settings BOOLValue], v18, v19);
        }

        objc_autoreleasePoolPop(v8);
        kdebug_trace();
      }

      v27 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v27);
  }

  else
  {
    context = 0;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_269);
  }

  v20 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = [obj count];
    *buf = 134217984;
    v35 = v22;
    _os_log_impl(&dword_1C7694000, v21, OS_LOG_TYPE_DEFAULT, "Recomputed retouch for %ld strokes", buf, 0xCu);
  }
}

- (void)_performRetouchIfNeeded
{
  if (!self->_renderedImage)
  {
    obj = self->_cacheKey;
    objc_sync_enter(obj);
    if (!self->_renderedImage)
    {
      [(PIRetouchSourceNode *)self applyRetouchStrokes:self->_strokes toImage:self->_retouchImage];
      objc_opt_class();
      v3 = [PIRetouchSourceNode intermediateCacheForSubsample:objc_opt_isKindOfClass() & 1];
      purgeableImageCopy = [(NUMutableBufferImage *)self->_retouchImage purgeableImageCopy];
      [v3 setObject:purgeableImageCopy forKey:self->_cacheKey];

      immutableImageCopy = [(NUMutableBufferImage *)self->_retouchImage immutableImageCopy];
      renderedImage = self->_renderedImage;
      self->_renderedImage = immutableImageCopy;

      retouchImage = self->_retouchImage;
      self->_retouchImage = 0;
    }

    objc_sync_exit(obj);
  }
}

+ (id)intermediateCacheForSubsample:(BOOL)subsample
{
  subsampleCopy = subsample;
  if (intermediateCacheForSubsample__onceToken != -1)
  {
    dispatch_once(&intermediateCacheForSubsample__onceToken, &__block_literal_global_6638);
  }

  v4 = &intermediateCacheForSubsample__s_retouchCacheForSubsample;
  if (!subsampleCopy)
  {
    v4 = &intermediateCacheForSubsample__s_retouchCache;
  }

  v5 = *v4;

  return v5;
}

uint64_t __53__PIRetouchSourceNode_intermediateCacheForSubsample___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = intermediateCacheForSubsample__s_retouchCache;
  intermediateCacheForSubsample__s_retouchCache = v0;

  [intermediateCacheForSubsample__s_retouchCache setCountLimit:5];
  v2 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v3 = intermediateCacheForSubsample__s_retouchCacheForSubsample;
  intermediateCacheForSubsample__s_retouchCacheForSubsample = v2;

  v4 = intermediateCacheForSubsample__s_retouchCacheForSubsample;

  return [v4 setCountLimit:5];
}

- (void)provideImageData:(void *)data bytesPerRow:(unint64_t)row origin:(unint64_t)origin :(unint64_t)a6 size:(unint64_t)size :(unint64_t)a8 userInfo:(id)info
{
  v41 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_269);
  }

  v16 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
  {
    v26 = MEMORY[0x1E696AF00];
    v27 = v16;
    currentThread = [v26 currentThread];
    *buf = 67110144;
    *&buf[4] = origin;
    LOWORD(v39) = 1024;
    *(&v39 + 2) = a6;
    HIWORD(v39) = 1024;
    *v40 = size;
    *&v40[4] = 1024;
    *&v40[6] = a8;
    *&v40[10] = 2048;
    *&v40[12] = currentThread;
    _os_log_debug_impl(&dword_1C7694000, v27, OS_LOG_TYPE_DEBUG, "provideImageData (%d,%d,%d,%d) tid=%p", buf, 0x24u);
  }

  [(PIRetouchSourceNode *)self _performRetouchIfNeeded];
  renderedImage = self->_renderedImage;
  *buf = origin;
  v39 = a6;
  *v40 = size;
  *&v40[8] = a8;
  [MEMORY[0x1E69B3B38] copyPixelsFromImage:renderedImage rect:buf destPtr:data destPtrRowBytes:row];
  *buf = origin;
  v39 = a6;
  *v40 = size;
  *&v40[8] = a8;
  v18 = [MEMORY[0x1E69B3C10] regionWithRect:buf];
  [(NUBufferImage *)self->_renderedImage validRegion];
  originCopy = origin;
  v20 = v19 = data;
  v21 = [v18 regionByRemovingRegion:v20];

  v22 = objc_alloc(MEMORY[0x1E69B3B98]);
  format = [(NUBufferImage *)self->_renderedImage format];
  v24 = [v22 initWithSize:size format:a8 rowBytes:format mutableBytes:{row, v19}];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __75__PIRetouchSourceNode_provideImageData_bytesPerRow_origin::size::userInfo___block_invoke;
  v31[3] = &unk_1E82AB5D0;
  v34 = a6;
  sizeCopy = size;
  v32 = v24;
  v33 = originCopy;
  v36 = a8;
  v37 = buf;
  *buf = 0;
  v25 = v24;
  [v21 enumerateRects:v31];
}

uint64_t __75__PIRetouchSourceNode_provideImageData_bytesPerRow_origin::size::userInfo___block_invoke(uint64_t a1, __int128 *a2)
{
  v9 = 0u;
  v10 = 0u;
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  NUPixelRectOffset();
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v7 = 0u;
  v8 = 0u;
  return [MEMORY[0x1E69B3B38] fillPixelsInBuffer:v4 rect:&v7 srcPixel:v5];
}

- (PIRetouchSourceNode)initWithInputImage:(id)image retouchStrokes:(id)strokes detectedFaces:(id)faces cacheKey:(id)key
{
  v84 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  strokesCopy = strokes;
  facesCopy = faces;
  keyCopy = key;
  if (!imageCopy)
  {
    v36 = NUAssertLogger_6588();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputImage != nil"];
      *location = 138543362;
      *&location[4] = v37;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", location, 0xCu);
    }

    v38 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v40 = NUAssertLogger_6588();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v41)
      {
        v54 = dispatch_get_specific(*v38);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        callStackSymbols = [v55 callStackSymbols];
        v58 = [callStackSymbols componentsJoinedByString:@"\n"];
        *location = 138543618;
        *&location[4] = v54;
        v82 = 2114;
        v83 = v58;
        _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", location, 0x16u);
      }

      goto LABEL_31;
    }

    if (!v41)
    {
      goto LABEL_31;
    }

LABEL_22:
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v53 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *location = 138543362;
    *&location[4] = v53;
    _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", location, 0xCu);

    goto LABEL_31;
  }

  if (!strokesCopy)
  {
    v42 = NUAssertLogger_6588();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "strokes != nil"];
      *location = 138543362;
      *&location[4] = v43;
      _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", location, 0xCu);
    }

    v44 = MEMORY[0x1E69B38E8];
    v45 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v40 = NUAssertLogger_6588();
    v46 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (v45)
    {
      if (v46)
      {
        v59 = dispatch_get_specific(*v44);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        callStackSymbols3 = [v60 callStackSymbols];
        v63 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *location = 138543618;
        *&location[4] = v59;
        v82 = 2114;
        v83 = v63;
        _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", location, 0x16u);
      }

      goto LABEL_31;
    }

    if (!v46)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v13 = keyCopy;
  if (!keyCopy)
  {
    v47 = NUAssertLogger_6588();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "cacheKey != nil"];
      *location = 138543362;
      *&location[4] = v48;
      _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "Fail: %{public}@", location, 0xCu);
    }

    v49 = MEMORY[0x1E69B38E8];
    v50 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v40 = NUAssertLogger_6588();
    v51 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (!v50)
    {
      if (!v51)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (v51)
    {
      v64 = dispatch_get_specific(*v49);
      v65 = MEMORY[0x1E696AF00];
      v66 = v64;
      callStackSymbols4 = [v65 callStackSymbols];
      v68 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *location = 138543618;
      *&location[4] = v64;
      v82 = 2114;
      v83 = v68;
      _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", location, 0x16u);
    }

LABEL_31:

    _NUAssertFailHandler();
    __break(1u);
  }

  v14 = [imageCopy size];
  v16 = v15;
  v79 = *MEMORY[0x1E695F9F8];
  null = [MEMORY[0x1E695DFB0] null];
  v80 = null;
  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];

  objc_initWeak(location, self);
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __80__PIRetouchSourceNode_initWithInputImage_retouchStrokes_detectedFaces_cacheKey___block_invoke;
  v73[3] = &unk_1E82AA398;
  objc_copyWeak(&v74, location);
  v69 = MEMORY[0x1CCA61740](v73);
  v18 = objc_alloc(MEMORY[0x1E695F658]);
  format = [imageCopy format];
  cIFormat = [format CIFormat];
  colorSpace = [imageCopy colorSpace];
  v22 = [v18 initWithImageProvider:v69 width:v14 height:v16 format:cIFormat colorSpace:objc_msgSend(colorSpace options:{"CGColorSpace"), v70}];

  if (facesCopy)
  {
    v77[0] = @"identifier";
    v77[1] = @"strokes";
    v78[0] = v13;
    v78[1] = strokesCopy;
    v77[2] = @"detectedFaces";
    v78[2] = facesCopy;
    v23 = v77;
    v24 = v78;
    v25 = 3;
  }

  else
  {
    v75[0] = @"identifier";
    v75[1] = @"strokes";
    v76[0] = v13;
    v76[1] = strokesCopy;
    v23 = v75;
    v24 = v76;
    v25 = 2;
  }

  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:v25];
  v72.receiver = self;
  v72.super_class = PIRetouchSourceNode;
  v27 = [(NUCISourceNode *)&v72 initWithImage:v22 settings:v26 orientation:1];
  mutableImageCopy = [imageCopy mutableImageCopy];
  retouchImage = v27->_retouchImage;
  v27->_retouchImage = mutableImageCopy;

  renderedImage = v27->_renderedImage;
  v27->_renderedImage = 0;

  v31 = [strokesCopy copy];
  strokes = v27->_strokes;
  v27->_strokes = v31;

  v33 = [v13 copy];
  cacheKey = v27->_cacheKey;
  v27->_cacheKey = v33;

  objc_destroyWeak(&v74);
  objc_destroyWeak(location);

  return v27;
}

void __80__PIRetouchSourceNode_initWithInputImage_retouchStrokes_detectedFaces_cacheKey___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained provideImageData:a2 bytesPerRow:a3 origin:a4 :a5 size:a6 :a7 userInfo:0];
}

- (PIRetouchSourceNode)initWithImage:(id)image settings:(id)settings orientation:(int64_t)orientation
{
  v36 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  settingsCopy = settings;
  v9 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = MEMORY[0x1E69B3D70];
    v11 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = v11;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v17 = [v12 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v15, v16];
      *buf = 138543362;
      v33 = v17;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v18 = *v9;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v18 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267);
        }

LABEL_11:
        v24 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v26 = MEMORY[0x1E696AF00];
          v27 = specific;
          v28 = v24;
          callStackSymbols = [v26 callStackSymbols];
          v30 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v33 = specific;
          v34 = 2114;
          v35 = v30;
          _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v18 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v19 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v20 = MEMORY[0x1E696AF00];
      v21 = v19;
      callStackSymbols2 = [v20 callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v23;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v31 = objc_opt_class();
    NSStringFromClass(v31);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267);
  }
}

- (PIRetouchSourceNode)initWithImage:(id)image identifier:(id)identifier orientation:(int64_t)orientation
{
  v36 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  identifierCopy = identifier;
  v9 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = MEMORY[0x1E69B3D70];
    v11 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = v11;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v17 = [v12 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v15, v16];
      *buf = 138543362;
      v33 = v17;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v18 = *v9;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v18 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267);
        }

LABEL_11:
        v24 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v26 = MEMORY[0x1E696AF00];
          v27 = specific;
          v28 = v24;
          callStackSymbols = [v26 callStackSymbols];
          v30 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v33 = specific;
          v34 = 2114;
          v35 = v30;
          _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v18 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v19 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v20 = MEMORY[0x1E696AF00];
      v21 = v19;
      callStackSymbols2 = [v20 callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v23;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v31 = objc_opt_class();
    NSStringFromClass(v31);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267);
  }
}

@end