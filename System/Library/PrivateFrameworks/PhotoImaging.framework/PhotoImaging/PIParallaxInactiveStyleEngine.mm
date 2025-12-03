@interface PIParallaxInactiveStyleEngine
+ (void)learnStyleFromPixelBuffer:(__CVBuffer *)buffer rect:(CGRect)rect toPixelBuffer:(__CVBuffer *)pixelBuffer rect:(CGRect)a6 completion:(id)completion;
+ (void)learnStyleFromPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer completion:(id)completion;
- (BOOL)beginPartialApplyStyleWithPixelBuffer:(__CVBuffer *)buffer intensity:(float)intensity error:(id *)error;
- (BOOL)beginPartialApplyStyleWithPixelBuffer:(__CVBuffer *)buffer rect:(CGRect)rect intensity:(float)intensity error:(id *)error;
- (BOOL)beginPartialApplyStyleWithTexture:(id)texture intensity:(float)intensity error:(id *)error;
- (BOOL)beginPartialApplyStyleWithTexture:(id)texture rect:(CGRect)rect intensity:(float)intensity error:(id *)specific;
- (BOOL)partialApplyStyleToPixelBuffer:(__CVBuffer *)buffer at:(CGPoint)at error:(id *)error;
- (BOOL)partialApplyStyleToPixelBuffer:(__CVBuffer *)buffer at:(CGPoint)at subrect:(CGRect)subrect error:(id *)error;
- (BOOL)partialApplyStyleToTexture:(id)texture at:(CGPoint)at error:(id *)error;
- (BOOL)partialApplyStyleToTexture:(id)texture at:(CGPoint)at subrect:(CGRect)subrect error:(id *)specific;
- (BOOL)prepareForApplyingStyle:(id)style error:(id *)error;
- (BOOL)prepareForLearningWithImageSize:(CGSize)size error:(id *)error;
- (PIParallaxInactiveStyleEngine)initWithMetalDevice:(id)device commandQueue:(id)queue;
- (id)cachedTextureForPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (void)_beginPartialApplyStyleWithIntensity:(float)intensity;
- (void)applyStyleToPixelBuffer:(__CVBuffer *)buffer intensity:(float)intensity completion:(id)completion;
- (void)applyStyleToPixelBuffer:(__CVBuffer *)buffer rect:(CGRect)rect intensity:(float)intensity completion:(id)completion;
- (void)applyStyleToTexture:(id)texture intensity:(float)intensity completion:(id)completion;
- (void)applyStyleToTexture:(id)texture rect:(CGRect)rect intensity:(float)intensity completion:(id)completion;
- (void)endPartialApplyStyleWithCompletion:(id)completion;
- (void)generateStyleDataFromStyleBuffer:(id)buffer completion:(id)completion;
- (void)learnStyleFromPixelBuffer:(__CVBuffer *)buffer rect:(CGRect)rect toPixelBuffer:(__CVBuffer *)pixelBuffer rect:(CGRect)a6 completion:(id)completion;
- (void)learnStyleFromPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer completion:(id)completion;
- (void)learnStyleFromTexture:(id)texture rect:(CGRect)rect toTexture:(id)toTexture rect:(CGRect)a6 completion:(id)completion;
- (void)learnStyleFromTexture:(id)texture toTexture:(id)toTexture completion:(id)completion;
@end

@implementation PIParallaxInactiveStyleEngine

- (void)endPartialApplyStyleWithCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!self->_isApplyingStyle)
  {
    v8 = NUAssertLogger_4909();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not applying style"];
      *buf = 138543362;
      v24 = v9;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v10 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v12 = NUAssertLogger_4909();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(*v10);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        callStackSymbols = [v17 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v16;
        v25 = 2114;
        v26 = v20;
        _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v15;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = completionCopy;
  if (completionCopy)
  {
    commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__PIParallaxInactiveStyleEngine_endPartialApplyStyleWithCompletion___block_invoke;
    v21[3] = &unk_1E82AA218;
    v22 = v5;
    [commandBuffer addCompletedHandler:v21];
    [commandBuffer commit];
  }

  thumbnailBuffer = self->_thumbnailBuffer;
  self->_thumbnailBuffer = 0;

  self->_isApplyingStyle = 0;
}

- (BOOL)partialApplyStyleToTexture:(id)texture at:(CGPoint)at subrect:(CGRect)subrect error:(id *)specific
{
  height = subrect.size.height;
  width = subrect.size.width;
  y = subrect.origin.y;
  x = subrect.origin.x;
  v13 = at.y;
  v14 = at.x;
  v82 = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  if (!textureCopy)
  {
    v35 = NUAssertLogger_4909();
    v36 = "texture != nil";
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "texture != nil"];
      *buf = 138543362;
      selfCopy6 = v37;
      _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    self = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_4909();
    v38 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v38)
      {
        specific = dispatch_get_specific(self->super.isa);
        v54 = MEMORY[0x1E696AF00];
        v55 = specific;
        self = [v54 callStackSymbols];
        v56 = [(PIParallaxInactiveStyleEngine *)self componentsJoinedByString:@"\n"];
        *buf = 138543618;
        selfCopy6 = specific;
        v80 = 2114;
        v81 = v56;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      self = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      selfCopy6 = self;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v41 = _NUAssertFailHandler();
    goto LABEL_52;
  }

  if (!specific)
  {
    v39 = NUAssertLogger_4909();
    v36 = "error != NULL";
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      selfCopy6 = v40;
      _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    self = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_4909();
    v41 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v41)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        self = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        selfCopy6 = self;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_54:

      v72 = v36;
      v44 = _NUAssertFailHandler();
      goto LABEL_55;
    }

LABEL_52:
    if (v41)
    {
      specific = dispatch_get_specific(self->super.isa);
      v57 = MEMORY[0x1E696AF00];
      v58 = specific;
      self = [v57 callStackSymbols];
      v59 = [(PIParallaxInactiveStyleEngine *)self componentsJoinedByString:@"\n"];
      *buf = 138543618;
      selfCopy6 = specific;
      v80 = 2114;
      v81 = v59;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if (!self->_styleEngine)
  {
    v42 = NUAssertLogger_4909();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not prepared"];
      *buf = 138543362;
      selfCopy6 = v43;
      _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    self = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_4909();
    v44 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v44)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        self = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        selfCopy6 = self;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_57:

      v47 = _NUAssertFailHandler();
      goto LABEL_58;
    }

LABEL_55:
    if (v44)
    {
      specific = dispatch_get_specific(self->super.isa);
      v60 = MEMORY[0x1E696AF00];
      v61 = specific;
      self = [v60 callStackSymbols];
      v62 = [(PIParallaxInactiveStyleEngine *)self componentsJoinedByString:@"\n"];
      *buf = 138543618;
      selfCopy6 = specific;
      v80 = 2114;
      v81 = v62;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_57;
  }

  if (!self->_styleBuffer)
  {
    v45 = NUAssertLogger_4909();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing style buffer"];
      *buf = 138543362;
      selfCopy6 = v46;
      _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    self = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_4909();
    v47 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v47)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        self = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        selfCopy6 = self;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_60:

      v50 = _NUAssertFailHandler();
      goto LABEL_61;
    }

LABEL_58:
    if (v47)
    {
      specific = dispatch_get_specific(self->super.isa);
      v63 = MEMORY[0x1E696AF00];
      v64 = specific;
      self = [v63 callStackSymbols];
      v65 = [(PIParallaxInactiveStyleEngine *)self componentsJoinedByString:@"\n"];
      *buf = 138543618;
      selfCopy6 = specific;
      v80 = 2114;
      v81 = v65;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_60;
  }

  if (!self->_isApplyingStyle)
  {
    v48 = NUAssertLogger_4909();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not applying style"];
      *buf = 138543362;
      selfCopy6 = v49;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    self = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_4909();
    v50 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v50)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        self = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        selfCopy6 = self;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_63:

      v53 = _NUAssertFailHandler();
      goto LABEL_64;
    }

LABEL_61:
    if (v50)
    {
      specific = dispatch_get_specific(self->super.isa);
      v66 = MEMORY[0x1E696AF00];
      v67 = specific;
      self = [v66 callStackSymbols];
      v68 = [(PIParallaxInactiveStyleEngine *)self componentsJoinedByString:@"\n"];
      *buf = 138543618;
      selfCopy6 = specific;
      v80 = 2114;
      v81 = v68;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_63;
  }

  if (!self->_thumbnailTexture)
  {
    v51 = NUAssertLogger_4909();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing thumbnail texture"];
      *buf = 138543362;
      selfCopy6 = v52;
      _os_log_error_impl(&dword_1C7694000, v51, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    self = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_4909();
    v53 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v53)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        self = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        selfCopy6 = self;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_66:

      _NUAssertFailHandler();
LABEL_67:
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_271_4930);
      goto LABEL_9;
    }

LABEL_64:
    if (v53)
    {
      specific = dispatch_get_specific(self->super.isa);
      v69 = MEMORY[0x1E696AF00];
      v70 = specific;
      self = [v69 callStackSymbols];
      v71 = [(PIParallaxInactiveStyleEngine *)self componentsJoinedByString:@"\n"];
      *buf = 138543618;
      selfCopy6 = specific;
      v80 = 2114;
      v81 = v71;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_66;
  }

  v17 = textureCopy;
  v7 = -v14;
  v6 = -v13;
  v14 = self->_actualImageSize.width;
  v13 = self->_actualImageSize.height;
  v83.origin.x = v7;
  v83.origin.y = v6;
  v83.size.width = v14;
  v83.size.height = v13;
  v86.origin.x = x;
  v86.origin.y = y;
  v86.size.width = width;
  v86.size.height = height;
  if (CGRectContainsRect(v83, v86))
  {
    goto LABEL_12;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_67;
  }

LABEL_9:
  v18 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    v31 = MEMORY[0x1E696B098];
    *v77 = x;
    *&v77[1] = y;
    *&v77[2] = width;
    *&v77[3] = height;
    v32 = v18;
    v33 = [v31 valueWithBytes:v77 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    *v76 = v7;
    *&v76[1] = v6;
    *&v76[2] = v14;
    *&v76[3] = v13;
    v34 = [MEMORY[0x1E696B098] valueWithBytes:v76 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    *buf = 138412546;
    selfCopy6 = v33;
    v80 = 2112;
    v81 = v34;
    _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Invalid image rect: %@, extent: %@", buf, 0x16u);
  }

  v84.origin.x = x;
  v84.origin.y = y;
  v84.size.width = width;
  v84.size.height = height;
  v87.origin.x = v7;
  v87.origin.y = v6;
  v87.size.width = v14;
  v87.size.height = v13;
  v85 = CGRectIntersection(v84, v87);
  x = v85.origin.x;
  y = v85.origin.y;
  width = v85.size.width;
  height = v85.size.height;
LABEL_12:
  supportsIntensity = [MEMORY[0x1E69B3CD0] supportsIntensity];
  styleEngine = self->_styleEngine;
  if (supportsIntensity)
  {
    styleBuffer = self->_styleBuffer;
    thumbnailTexture = self->_thumbnailTexture;
    styleIntensity = self->_styleIntensity;
    v75 = 0;
    *&v73 = styleIntensity;
    v24 = [(NUStyleEngine *)styleEngine applyStyle:styleBuffer thumbnail:thumbnailTexture toTexture:v17 rect:&v75 imageExtent:x intensity:y error:width, height, v7, v6, v14, v13, v73];
    v25 = v75;
  }

  else
  {
    mixedBuffer = self->_mixedBuffer;
    v27 = self->_thumbnailTexture;
    v74 = 0;
    v24 = [(NUStyleEngine *)styleEngine applyStyle:mixedBuffer thumbnail:v27 toTexture:v17 rect:&v74 imageExtent:x error:y, width, height, v7, v6, v14, v13];
    v25 = v74;
  }

  v28 = v25;
  if (v24)
  {
    v29 = 1;
  }

  else
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to apply style with intensity" object:self underlyingError:v28];
    *specific = v29 = 0;
  }

  return v29;
}

- (BOOL)partialApplyStyleToPixelBuffer:(__CVBuffer *)buffer at:(CGPoint)at subrect:(CGRect)subrect error:(id *)error
{
  v81 = *MEMORY[0x1E69E9840];
  if (!buffer)
  {
    v35 = NUAssertLogger_4909();
    v36 = "inoutBuffer != nil";
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inoutBuffer != nil"];
      *buf = 138543362;
      v78 = v37;
      _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    bufferCopy = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    errorCopy = NUAssertLogger_4909();
    v38 = os_log_type_enabled(errorCopy, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v38)
      {
        specific = dispatch_get_specific(*bufferCopy);
        v54 = MEMORY[0x1E696AF00];
        v55 = specific;
        bufferCopy = [v54 callStackSymbols];
        v56 = [bufferCopy componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = specific;
        v79 = 2114;
        v80 = v56;
        _os_log_error_impl(&dword_1C7694000, errorCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      bufferCopy = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = bufferCopy;
      _os_log_error_impl(&dword_1C7694000, errorCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v41 = _NUAssertFailHandler();
    goto LABEL_52;
  }

  errorCopy = error;
  if (!error)
  {
    v39 = NUAssertLogger_4909();
    v36 = "error != NULL";
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v78 = v40;
      _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    bufferCopy = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    errorCopy = NUAssertLogger_4909();
    v41 = os_log_type_enabled(errorCopy, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v41)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        bufferCopy = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v78 = bufferCopy;
        _os_log_error_impl(&dword_1C7694000, errorCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_54:

      HIDWORD(v72) = HIDWORD(v36);
      v44 = _NUAssertFailHandler();
      goto LABEL_55;
    }

LABEL_52:
    if (v41)
    {
      specific = dispatch_get_specific(*bufferCopy);
      v57 = MEMORY[0x1E696AF00];
      v58 = specific;
      bufferCopy = [v57 callStackSymbols];
      v59 = [bufferCopy componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v78 = specific;
      v79 = 2114;
      v80 = v59;
      _os_log_error_impl(&dword_1C7694000, errorCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_54;
  }

  specific = self;
  if (!self->_styleEngine)
  {
    v42 = NUAssertLogger_4909();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not prepared"];
      *buf = 138543362;
      v78 = v43;
      _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    bufferCopy = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    errorCopy = NUAssertLogger_4909();
    v44 = os_log_type_enabled(errorCopy, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v44)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        bufferCopy = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v78 = bufferCopy;
        _os_log_error_impl(&dword_1C7694000, errorCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_57:

      v47 = _NUAssertFailHandler();
      goto LABEL_58;
    }

LABEL_55:
    if (v44)
    {
      specific = dispatch_get_specific(*bufferCopy);
      v60 = MEMORY[0x1E696AF00];
      v61 = specific;
      bufferCopy = [v60 callStackSymbols];
      v62 = [bufferCopy componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v78 = specific;
      v79 = 2114;
      v80 = v62;
      _os_log_error_impl(&dword_1C7694000, errorCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_57;
  }

  if (!self->_styleBuffer)
  {
    v45 = NUAssertLogger_4909();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing style buffer"];
      *buf = 138543362;
      v78 = v46;
      _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    bufferCopy = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    errorCopy = NUAssertLogger_4909();
    v47 = os_log_type_enabled(errorCopy, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v47)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        bufferCopy = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v78 = bufferCopy;
        _os_log_error_impl(&dword_1C7694000, errorCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_60:

      v50 = _NUAssertFailHandler();
      goto LABEL_61;
    }

LABEL_58:
    if (v47)
    {
      specific = dispatch_get_specific(*bufferCopy);
      v63 = MEMORY[0x1E696AF00];
      v64 = specific;
      bufferCopy = [v63 callStackSymbols];
      v65 = [bufferCopy componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v78 = specific;
      v79 = 2114;
      v80 = v65;
      _os_log_error_impl(&dword_1C7694000, errorCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_60;
  }

  if (!self->_isApplyingStyle)
  {
    v48 = NUAssertLogger_4909();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not applying style"];
      *buf = 138543362;
      v78 = v49;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    bufferCopy = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    errorCopy = NUAssertLogger_4909();
    v50 = os_log_type_enabled(errorCopy, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v50)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        bufferCopy = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v78 = bufferCopy;
        _os_log_error_impl(&dword_1C7694000, errorCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_63:

      v53 = _NUAssertFailHandler();
      goto LABEL_64;
    }

LABEL_61:
    if (v50)
    {
      specific = dispatch_get_specific(*bufferCopy);
      v66 = MEMORY[0x1E696AF00];
      v67 = specific;
      bufferCopy = [v66 callStackSymbols];
      v68 = [bufferCopy componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v78 = specific;
      v79 = 2114;
      v80 = v68;
      _os_log_error_impl(&dword_1C7694000, errorCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_63;
  }

  if (!self->_thumbnailBuffer)
  {
    v51 = NUAssertLogger_4909();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing thumbnail buffer"];
      *buf = 138543362;
      v78 = v52;
      _os_log_error_impl(&dword_1C7694000, v51, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    bufferCopy = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    errorCopy = NUAssertLogger_4909();
    v53 = os_log_type_enabled(errorCopy, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v53)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        bufferCopy = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v78 = bufferCopy;
        _os_log_error_impl(&dword_1C7694000, errorCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_66:

      _NUAssertFailHandler();
LABEL_67:
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_271_4930);
      goto LABEL_9;
    }

LABEL_64:
    if (v53)
    {
      specific = dispatch_get_specific(*bufferCopy);
      v69 = MEMORY[0x1E696AF00];
      v70 = specific;
      bufferCopy = [v69 callStackSymbols];
      v71 = [bufferCopy componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v78 = specific;
      v79 = 2114;
      v80 = v71;
      _os_log_error_impl(&dword_1C7694000, errorCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_66;
  }

  height = subrect.size.height;
  width = subrect.size.width;
  y = subrect.origin.y;
  x = subrect.origin.x;
  bufferCopy = buffer;
  v13 = -at.x;
  v12 = -at.y;
  v11 = self->_actualImageSize.width;
  v10 = self->_actualImageSize.height;
  v82.origin.x = -at.x;
  v82.origin.y = -at.y;
  v82.size.width = v11;
  v82.size.height = v10;
  v85.origin.x = x;
  v85.origin.y = y;
  v85.size.width = width;
  v85.size.height = height;
  if (CGRectContainsRect(v82, v85))
  {
    goto LABEL_12;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_67;
  }

LABEL_9:
  v17 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    v31 = MEMORY[0x1E696B098];
    *v76 = x;
    *&v76[1] = y;
    *&v76[2] = width;
    *&v76[3] = height;
    v32 = v17;
    v33 = [v31 valueWithBytes:v76 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    *v75 = v13;
    *&v75[1] = v12;
    *&v75[2] = v11;
    *&v75[3] = v10;
    v34 = [MEMORY[0x1E696B098] valueWithBytes:v75 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    *buf = 138412546;
    v78 = v33;
    v79 = 2112;
    v80 = v34;
    _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Invalid image rect: %@, extent: %@", buf, 0x16u);
  }

  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = height;
  v86.origin.x = v13;
  v86.origin.y = v12;
  v86.size.width = v11;
  v86.size.height = v10;
  v84 = CGRectIntersection(v83, v86);
  x = v84.origin.x;
  y = v84.origin.y;
  width = v84.size.width;
  height = v84.size.height;
LABEL_12:
  v18 = [objc_alloc(MEMORY[0x1E69B39C0]) initWithCVPixelBuffer:bufferCopy];
  supportsIntensity = [MEMORY[0x1E69B3CD0] supportsIntensity];
  v20 = *(specific + 8);
  if (supportsIntensity)
  {
    v21 = *(specific + 40);
    v22 = *(specific + 96);
    v23 = *(specific + 108);
    v74 = 0;
    LODWORD(v72) = v23;
    v24 = [v20 applyStyle:v21 thumbnail:v22 toBuffer:v18 rect:&v74 imageExtent:x intensity:y error:{width, height, v13, v12, v11, v10, v72}];
    v25 = v74;
  }

  else
  {
    v26 = *(specific + 56);
    v27 = *(specific + 96);
    v73 = 0;
    v24 = [v20 applyStyle:v26 thumbnail:v27 toBuffer:v18 rect:&v73 imageExtent:x error:{y, width, height, v13, v12, v11, v10}];
    v25 = v73;
  }

  v28 = v25;
  if (v24)
  {
    v29 = 1;
  }

  else
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to apply style with intensity" object:specific underlyingError:v28];
    errorCopy->isa = v29 = 0;
  }

  return v29;
}

- (BOOL)partialApplyStyleToTexture:(id)texture at:(CGPoint)at error:(id *)error
{
  y = at.y;
  x = at.x;
  textureCopy = texture;
  LOBYTE(error) = -[PIParallaxInactiveStyleEngine partialApplyStyleToTexture:at:subrect:error:](self, "partialApplyStyleToTexture:at:subrect:error:", textureCopy, error, x, y, 0.0, 0.0, [textureCopy width], objc_msgSend(textureCopy, "height"));

  return error;
}

- (BOOL)partialApplyStyleToPixelBuffer:(__CVBuffer *)buffer at:(CGPoint)at error:(id *)error
{
  y = at.y;
  x = at.x;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);

  return [(PIParallaxInactiveStyleEngine *)self partialApplyStyleToPixelBuffer:buffer at:error subrect:x error:y, 0.0, 0.0, Width, Height];
}

- (void)_beginPartialApplyStyleWithIntensity:(float)intensity
{
  if (([MEMORY[0x1E69B3CD0] supportsIntensity] & 1) == 0)
  {
    commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    *&v6 = intensity;
    [MEMORY[0x1E69B3B80] mixTexture:self->_identityTexture withTexture:self->_styleTexture factor:self->_mixedTexture intoTexture:commandBuffer withCommandBuffer:v6];
    [commandBuffer commit];
  }

  self->_styleIntensity = intensity;
  self->_isApplyingStyle = 1;
}

- (BOOL)beginPartialApplyStyleWithTexture:(id)texture rect:(CGRect)rect intensity:(float)intensity error:(id *)specific
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v64 = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  if (!textureCopy)
  {
    v30 = NUAssertLogger_4909();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "texture != nil"];
      *buf = 138543362;
      selfCopy4 = v31;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    self = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_4909();
    v32 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v32)
      {
        specific = dispatch_get_specific(self->super.isa);
        v42 = MEMORY[0x1E696AF00];
        v43 = specific;
        self = [v42 callStackSymbols];
        v44 = [(PIParallaxInactiveStyleEngine *)self componentsJoinedByString:@"\n"];
        *buf = 138543618;
        selfCopy4 = specific;
        v58 = 2114;
        v59 = *&v44;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      self = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      selfCopy4 = self;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v54 = "texture != nil";
    v35 = _NUAssertFailHandler();
    goto LABEL_37;
  }

  v14 = textureCopy;
  styleEngine = self->_styleEngine;
  if (!styleEngine)
  {
    v33 = NUAssertLogger_4909();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not prepared"];
      *buf = 138543362;
      selfCopy4 = v34;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    self = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_4909();
    v35 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v35)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        self = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        selfCopy4 = self;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_39:

      v38 = _NUAssertFailHandler();
      goto LABEL_40;
    }

LABEL_37:
    if (v35)
    {
      specific = dispatch_get_specific(self->super.isa);
      v45 = MEMORY[0x1E696AF00];
      v46 = specific;
      self = [v45 callStackSymbols];
      v47 = [(PIParallaxInactiveStyleEngine *)self componentsJoinedByString:@"\n"];
      *buf = 138543618;
      selfCopy4 = specific;
      v58 = 2114;
      v59 = *&v47;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_39;
  }

  if (!self->_styleBuffer)
  {
    v36 = NUAssertLogger_4909();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing style buffer"];
      *buf = 138543362;
      selfCopy4 = v37;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    self = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_4909();
    v38 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v38)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        self = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        selfCopy4 = self;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_42:

      v41 = _NUAssertFailHandler();
      goto LABEL_43;
    }

LABEL_40:
    if (v38)
    {
      specific = dispatch_get_specific(self->super.isa);
      v48 = MEMORY[0x1E696AF00];
      v49 = specific;
      self = [v48 callStackSymbols];
      v50 = [(PIParallaxInactiveStyleEngine *)self componentsJoinedByString:@"\n"];
      *buf = 138543618;
      selfCopy4 = specific;
      v58 = 2114;
      v59 = *&v50;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_42;
  }

  if (self->_isApplyingStyle)
  {
    v39 = NUAssertLogger_4909();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Already partial applying style"];
      *buf = 138543362;
      selfCopy4 = v40;
      _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    self = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_4909();
    v41 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v41)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        self = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        selfCopy4 = self;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_45:

      _NUAssertFailHandler();
LABEL_46:
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_271_4930);
      goto LABEL_7;
    }

LABEL_43:
    if (v41)
    {
      specific = dispatch_get_specific(self->super.isa);
      v51 = MEMORY[0x1E696AF00];
      v52 = specific;
      self = [v51 callStackSymbols];
      v53 = [(PIParallaxInactiveStyleEngine *)self componentsJoinedByString:@"\n"];
      *buf = 138543618;
      selfCopy4 = specific;
      v58 = 2114;
      v59 = *&v53;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_45;
  }

  self->_actualImageSize.width = width;
  self->_actualImageSize.height = height;
  if (fabs(width * self->_expectedImageSize.height / (height * self->_expectedImageSize.width) + -1.0) <= 0.001)
  {
    goto LABEL_10;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_46;
  }

LABEL_7:
  v16 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    v26 = self->_actualImageSize.width;
    v27 = self->_actualImageSize.height;
    v28 = self->_expectedImageSize.width;
    v29 = self->_expectedImageSize.height;
    *buf = 134218752;
    selfCopy4 = *&v26;
    v58 = 2048;
    v59 = v27;
    v60 = 2048;
    v61 = v28;
    v62 = 2048;
    v63 = v29;
    _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Aspect ratio mismatch: %fx%f, expected: %fx%f", buf, 0x2Au);
  }

  styleEngine = self->_styleEngine;
LABEL_10:
  thumbnailTexture = self->_thumbnailTexture;
  v55 = 0;
  v18 = [(NUStyleEngine *)styleEngine generateThumbnailTexture:thumbnailTexture fromTexture:v14 rect:&v55 error:x, y, width, height, v54];
  if (v18)
  {
    v19 = v55;
    *&v20 = intensity;
    [(PIParallaxInactiveStyleEngine *)self _beginPartialApplyStyleWithIntensity:v20];
  }

  else
  {
    v21 = MEMORY[0x1E69B3A48];
    v22 = v55;
    v23 = [v21 errorWithCode:1 reason:@"Failed to generate thumbnail" object:self underlyingError:v22];
    v24 = v23;

    *specific = v23;
  }

  return v18;
}

- (BOOL)beginPartialApplyStyleWithPixelBuffer:(__CVBuffer *)buffer rect:(CGRect)rect intensity:(float)intensity error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  if (!buffer)
  {
    v28 = NUAssertLogger_4909();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceBuffer != nil"];
      *buf = 138543362;
      v60 = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    bufferCopy = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    error = NUAssertLogger_4909();
    v30 = os_log_type_enabled(error, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        specific = dispatch_get_specific(*bufferCopy);
        v43 = MEMORY[0x1E696AF00];
        v44 = specific;
        bufferCopy = [v43 callStackSymbols];
        v45 = [bufferCopy componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v60 = specific;
        v61 = 2114;
        v62 = v45;
        _os_log_error_impl(&dword_1C7694000, error, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      bufferCopy = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = bufferCopy;
      _os_log_error_impl(&dword_1C7694000, error, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v33 = _NUAssertFailHandler();
    goto LABEL_45;
  }

  intensityCopy = intensity;
  x = rect.origin.x;
  if (intensity < 0.0 || intensity > 1.0)
  {
    v31 = NUAssertLogger_4909();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "intensity >= 0.0 && intensity <= 1.0"];
      *buf = 138543362;
      v60 = v32;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    bufferCopy = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    error = NUAssertLogger_4909();
    v33 = os_log_type_enabled(error, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v33)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        bufferCopy = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v60 = bufferCopy;
        _os_log_error_impl(&dword_1C7694000, error, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_47:

      v36 = _NUAssertFailHandler();
      goto LABEL_48;
    }

LABEL_45:
    if (v33)
    {
      specific = dispatch_get_specific(*bufferCopy);
      v46 = MEMORY[0x1E696AF00];
      v47 = specific;
      bufferCopy = [v46 callStackSymbols];
      v48 = [bufferCopy componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v60 = specific;
      v61 = 2114;
      v62 = v48;
      _os_log_error_impl(&dword_1C7694000, error, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_47;
  }

  specific = &self->super.isa;
  if (!self->_styleEngine)
  {
    v34 = NUAssertLogger_4909();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not prepared"];
      *buf = 138543362;
      v60 = v35;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    bufferCopy = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    error = NUAssertLogger_4909();
    v36 = os_log_type_enabled(error, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v36)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        bufferCopy = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v60 = bufferCopy;
        _os_log_error_impl(&dword_1C7694000, error, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_50:

      v39 = _NUAssertFailHandler();
      goto LABEL_51;
    }

LABEL_48:
    if (v36)
    {
      specific = dispatch_get_specific(*bufferCopy);
      v49 = MEMORY[0x1E696AF00];
      v50 = specific;
      bufferCopy = [v49 callStackSymbols];
      v51 = [bufferCopy componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v60 = specific;
      v61 = 2114;
      v62 = v51;
      _os_log_error_impl(&dword_1C7694000, error, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_50;
  }

  if (!self->_styleBuffer)
  {
    v37 = NUAssertLogger_4909();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing style buffer"];
      *buf = 138543362;
      v60 = v38;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    bufferCopy = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    error = NUAssertLogger_4909();
    v39 = os_log_type_enabled(error, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v39)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        bufferCopy = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v60 = bufferCopy;
        _os_log_error_impl(&dword_1C7694000, error, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_53:

      v42 = _NUAssertFailHandler();
      goto LABEL_54;
    }

LABEL_51:
    if (v39)
    {
      specific = dispatch_get_specific(*bufferCopy);
      v52 = MEMORY[0x1E696AF00];
      v53 = specific;
      bufferCopy = [v52 callStackSymbols];
      v54 = [bufferCopy componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v60 = specific;
      v61 = 2114;
      v62 = v54;
      _os_log_error_impl(&dword_1C7694000, error, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_53;
  }

  if (self->_isApplyingStyle)
  {
    v40 = NUAssertLogger_4909();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Already partial applying style"];
      *buf = 138543362;
      v60 = v41;
      _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    bufferCopy = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    error = NUAssertLogger_4909();
    v42 = os_log_type_enabled(error, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v42)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        bufferCopy = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v60 = bufferCopy;
        _os_log_error_impl(&dword_1C7694000, error, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_56:

      _NUAssertFailHandler();
LABEL_57:
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_271_4930);
      goto LABEL_11;
    }

LABEL_54:
    if (v42)
    {
      specific = dispatch_get_specific(*bufferCopy);
      v55 = MEMORY[0x1E696AF00];
      v56 = specific;
      bufferCopy = [v55 callStackSymbols];
      v57 = [bufferCopy componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v60 = specific;
      v61 = 2114;
      v62 = v57;
      _os_log_error_impl(&dword_1C7694000, error, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_56;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  bufferCopy = buffer;
  self->_actualImageSize.width = rect.size.width;
  self->_actualImageSize.height = rect.size.height;
  if (fabs(rect.size.width * self->_expectedImageSize.height / (rect.size.height * self->_expectedImageSize.width) + -1.0) <= 0.001)
  {
    goto LABEL_13;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_57;
  }

LABEL_11:
  v15 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    v24 = specific[14];
    v25 = specific[15];
    v26 = specific[2];
    v27 = specific[3];
    *buf = 134218752;
    v60 = v24;
    v61 = 2048;
    v62 = v25;
    v63 = 2048;
    v64 = v26;
    v65 = 2048;
    v66 = v27;
    _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Aspect ratio mismatch: %fx%f, expected: %fx%f", buf, 0x2Au);
  }

LABEL_13:
  v16 = [objc_alloc(MEMORY[0x1E69B39C0]) initWithCVPixelBuffer:bufferCopy];
  v17 = specific[1];
  v58 = 0;
  v18 = [v17 generateThumbnailFromBuffer:v16 rect:&v58 error:{x, y, width, height}];
  v19 = v58;
  v20 = specific[12];
  specific[12] = v18;

  v22 = specific[12];
  if (v22)
  {
    *&v21 = intensityCopy;
    [specific _beginPartialApplyStyleWithIntensity:v21];
  }

  else
  {
    *error = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to generate thumbnail" object:specific underlyingError:v19];
  }

  return v22 != 0;
}

- (BOOL)beginPartialApplyStyleWithTexture:(id)texture intensity:(float)intensity error:(id *)error
{
  textureCopy = texture;
  width = [textureCopy width];
  height = [textureCopy height];
  *&v11 = intensity;
  LOBYTE(error) = [(PIParallaxInactiveStyleEngine *)self beginPartialApplyStyleWithTexture:textureCopy rect:error intensity:0.0 error:0.0, width, height, v11];

  return error;
}

- (BOOL)beginPartialApplyStyleWithPixelBuffer:(__CVBuffer *)buffer intensity:(float)intensity error:(id *)error
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  *&v11 = intensity;

  return [(PIParallaxInactiveStyleEngine *)self beginPartialApplyStyleWithPixelBuffer:buffer rect:error intensity:0.0 error:0.0, Width, Height, v11];
}

- (void)applyStyleToTexture:(id)texture rect:(CGRect)rect intensity:(float)intensity completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  textureCopy = texture;
  completionCopy = completion;
  v21 = 0;
  *&v15 = intensity;
  v16 = [(PIParallaxInactiveStyleEngine *)self beginPartialApplyStyleWithTexture:textureCopy rect:&v21 intensity:x error:y, width, height, v15];
  v17 = v21;
  if (v16)
  {
    v20 = 0;
    height = [(PIParallaxInactiveStyleEngine *)self partialApplyStyleToTexture:textureCopy at:&v20 subrect:-x error:-y, x, y, width, height];
    v19 = v20;

    if (height)
    {
      [(PIParallaxInactiveStyleEngine *)self endPartialApplyStyleWithCompletion:completionCopy];
    }

    else
    {
      [(PIParallaxInactiveStyleEngine *)self endPartialApplyStyleWithCompletion:0];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0, v19);
      }
    }

    v17 = v19;
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v17);
  }
}

- (void)applyStyleToTexture:(id)texture intensity:(float)intensity completion:(id)completion
{
  completionCopy = completion;
  textureCopy = texture;
  width = [textureCopy width];
  height = [textureCopy height];
  *&v11 = intensity;
  [(PIParallaxInactiveStyleEngine *)self applyStyleToTexture:textureCopy rect:completionCopy intensity:0.0 completion:0.0, width, height, v11];
}

- (void)applyStyleToPixelBuffer:(__CVBuffer *)buffer rect:(CGRect)rect intensity:(float)intensity completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v39 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!buffer)
  {
    v20 = NUAssertLogger_4909();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "buffer != nil"];
      *buf = 138543362;
      v36 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_4909();
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
        v36 = v28;
        v37 = 2114;
        v38 = v32;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v27;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v15 = completionCopy;
  v34 = 0;
  *&v14 = intensity;
  v16 = [(PIParallaxInactiveStyleEngine *)self beginPartialApplyStyleWithPixelBuffer:buffer rect:&v34 intensity:x error:y, width, height, v14];
  v17 = v34;
  if (v16)
  {
    v33 = 0;
    height = [(PIParallaxInactiveStyleEngine *)self partialApplyStyleToPixelBuffer:buffer at:&v33 subrect:-x error:-y, x, y, width, height];
    v19 = v33;

    if (height)
    {
      [(PIParallaxInactiveStyleEngine *)self endPartialApplyStyleWithCompletion:v15];
    }

    else
    {
      [(PIParallaxInactiveStyleEngine *)self endPartialApplyStyleWithCompletion:0];
      if (v15)
      {
        (v15)[2](v15, 0, v19);
      }
    }

    v17 = v19;
  }

  else if (v15)
  {
    (v15)[2](v15, 0, v17);
  }
}

- (void)applyStyleToPixelBuffer:(__CVBuffer *)buffer intensity:(float)intensity completion:(id)completion
{
  completionCopy = completion;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  *&v10 = intensity;
  [(PIParallaxInactiveStyleEngine *)self applyStyleToPixelBuffer:buffer rect:completionCopy intensity:0.0 completion:0.0, Width, Height, v10];
}

- (BOOL)prepareForApplyingStyle:(id)style error:(id *)error
{
  v85 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  if (!styleCopy)
  {
    v48 = NUAssertLogger_4909();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "styleData != nil"];
      *buf = 138543362;
      v82 = v49;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v52 = NUAssertLogger_4909();
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v53)
      {
        v66 = dispatch_get_specific(*callStackSymbols);
        v67 = MEMORY[0x1E696AF00];
        v68 = v66;
        callStackSymbols = [v67 callStackSymbols];
        v69 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v82 = v66;
        v83 = 2114;
        v84 = v69;
        _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v53)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v82 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v58 = _NUAssertFailHandler();
    goto LABEL_49;
  }

  if (!error)
  {
    v55 = NUAssertLogger_4909();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v82 = v56;
      _os_log_error_impl(&dword_1C7694000, v55, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v57 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v52 = NUAssertLogger_4909();
    v58 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
    if (!v57)
    {
      if (v58)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v82 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_51:

      v63 = _NUAssertFailHandler();
      goto LABEL_52;
    }

LABEL_49:
    if (v58)
    {
      v70 = dispatch_get_specific(*callStackSymbols);
      v71 = MEMORY[0x1E696AF00];
      v72 = v70;
      callStackSymbols = [v71 callStackSymbols];
      v73 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v82 = v70;
      v83 = 2114;
      v84 = v73;
      _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_51;
  }

  if (self->_styleEngine)
  {
    v60 = NUAssertLogger_4909();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Already prepared!"];
      *buf = 138543362;
      v82 = v61;
      _os_log_error_impl(&dword_1C7694000, v60, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v62 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v52 = NUAssertLogger_4909();
    v63 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
    if (!v62)
    {
      if (v63)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v65 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v82 = v65;
        _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_54;
    }

LABEL_52:
    if (v63)
    {
      v74 = dispatch_get_specific(*callStackSymbols);
      v75 = MEMORY[0x1E696AF00];
      v76 = v74;
      callStackSymbols5 = [v75 callStackSymbols];
      v78 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v82 = v74;
      v83 = 2114;
      v84 = v78;
      _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_54:

    _NUAssertFailHandler();
  }

  v7 = styleCopy;
  data = [styleCopy data];
  v9 = -[MTLDevice newBufferWithBytes:length:options:](self->_device, "newBufferWithBytes:length:options:", [data bytes], objc_msgSend(data, "length"), 0);
  styleBuffer = self->_styleBuffer;
  self->_styleBuffer = v9;

  if (self->_styleBuffer)
  {
    [v7 imageSize];
    self->_expectedImageSize.width = v11;
    self->_expectedImageSize.height = v12;
    configuration = [v7 configuration];
    tuningParameters = [v7 tuningParameters];
    v15 = [MEMORY[0x1E69B3CD0] styleEngineForUsage:1 withMetalCommandQueue:self->_commandQueue configuration:configuration tuningParams:tuningParameters];
    styleEngine = self->_styleEngine;
    self->_styleEngine = v15;

    v17 = self->_styleEngine;
    v80 = 0;
    v18 = [(NUStyleEngine *)v17 prepare:&v80];
    v19 = v80;
    v20 = self->_styleEngine;
    if ((v18 & 1) == 0)
    {
      self->_styleEngine = 0;

      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to prepare engine" object:self underlyingError:v19];
      *error = v26 = 0;
LABEL_29:

      goto LABEL_30;
    }

    thumbnailTextureSize = [(NUStyleEngine *)v20 thumbnailTextureSize];
    v23 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:115 width:thumbnailTextureSize height:v22 mipmapped:0];
    [v23 setUsage:3];
    [v23 setStorageMode:2];
    v24 = [(MTLDevice *)self->_device newTextureWithDescriptor:v23];
    thumbnailTexture = self->_thumbnailTexture;
    self->_thumbnailTexture = v24;

    if (self->_thumbnailTexture)
    {
      if (([MEMORY[0x1E69B3CD0] supportsIntensity] & 1) == 0)
      {
        v28 = self->_styleEngine;
        v79 = 0;
        v29 = [(NUStyleEngine *)v28 generateIdentityStyle:&v79];
        v27 = v79;

        identityBuffer = self->_identityBuffer;
        self->_identityBuffer = v29;

        if (self->_identityBuffer)
        {
          v31 = [(MTLDevice *)self->_device newBufferWithLength:[(MTLBuffer *)self->_styleBuffer length] options:32];
          mixedBuffer = self->_mixedBuffer;
          self->_mixedBuffer = v31;

          if (self->_mixedBuffer)
          {
            v33 = [configuration objectForKeyedSubscript:@"useFloat16"];
            bOOLValue = [v33 BOOLValue];

            v35 = MEMORY[0x1E69741C0];
            v36 = [data length];
            if (bOOLValue)
            {
              v37 = 25;
            }

            else
            {
              v37 = 55;
            }

            v38 = 1;
            if (!bOOLValue)
            {
              v38 = 2;
            }

            v39 = [v35 texture2DDescriptorWithPixelFormat:v37 width:v36 >> v38 height:1 mipmapped:0];
            v40 = -[MTLBuffer newTextureWithDescriptor:offset:bytesPerRow:](self->_styleBuffer, "newTextureWithDescriptor:offset:bytesPerRow:", v39, 0, [data length]);
            styleTexture = self->_styleTexture;
            self->_styleTexture = v40;

            v42 = -[MTLBuffer newTextureWithDescriptor:offset:bytesPerRow:](self->_identityBuffer, "newTextureWithDescriptor:offset:bytesPerRow:", v39, 0, [data length]);
            identityTexture = self->_identityTexture;
            self->_identityTexture = v42;

            v44 = -[MTLBuffer newTextureWithDescriptor:offset:bytesPerRow:](self->_mixedBuffer, "newTextureWithDescriptor:offset:bytesPerRow:", v39, 0, [data length]);
            mixedTexture = self->_mixedTexture;
            self->_mixedTexture = v44;

            if (self->_styleTexture && self->_identityTexture && self->_mixedTexture)
            {

              v26 = 1;
            }

            else
            {
              *error = [MEMORY[0x1E69B3A48] failureError:@"Failed to allocate style textures" object:self];

              v26 = 0;
            }

            goto LABEL_28;
          }

          v46 = [MEMORY[0x1E69B3A48] failureError:@"Failed to allocate style buffer" object:self];
        }

        else
        {
          v46 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to prepare identity style" object:self underlyingError:v27];
        }

        v26 = 0;
        *error = v46;
LABEL_28:

        v19 = v27;
        goto LABEL_29;
      }

      v26 = 1;
    }

    else
    {
      [MEMORY[0x1E69B3A48] failureError:@"Failed to allocate thumbnail texture" object:self];
      *error = v26 = 0;
    }

    v27 = v19;
    goto LABEL_28;
  }

  [MEMORY[0x1E69B3A48] failureError:@"Failed to allocate style buffer" object:self];
  *error = v26 = 0;
LABEL_30:

  return v26;
}

- (void)learnStyleFromTexture:(id)texture rect:(CGRect)rect toTexture:(id)toTexture rect:(CGRect)a6 completion:(id)completion
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = rect.size.height;
  v14 = rect.size.width;
  v15 = rect.origin.y;
  v16 = rect.origin.x;
  v76 = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  toTextureCopy = toTexture;
  completionCopy = completion;
  if (!textureCopy)
  {
    v29 = NUAssertLogger_4909();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceTexture != nil"];
      *buf = 138543362;
      v73 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_4909();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v34)
      {
        v52 = dispatch_get_specific(*callStackSymbols);
        v53 = MEMORY[0x1E696AF00];
        v54 = v52;
        callStackSymbols = [v53 callStackSymbols];
        v55 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v73 = v52;
        v74 = 2114;
        v75 = v55;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v73 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v39 = _NUAssertFailHandler();
    goto LABEL_37;
  }

  if (!toTextureCopy)
  {
    v36 = NUAssertLogger_4909();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "targetTexture != nil"];
      *buf = 138543362;
      v73 = v37;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v38 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_4909();
    v39 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!v38)
    {
      if (v39)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v73 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_39:

      v44 = _NUAssertFailHandler();
      goto LABEL_40;
    }

LABEL_37:
    if (v39)
    {
      v56 = dispatch_get_specific(*callStackSymbols);
      v57 = MEMORY[0x1E696AF00];
      v58 = v56;
      callStackSymbols = [v57 callStackSymbols];
      v59 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v73 = v56;
      v74 = 2114;
      v75 = v59;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_39;
  }

  v21 = completionCopy;
  if (!completionCopy)
  {
    v41 = NUAssertLogger_4909();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v73 = v42;
      _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v43 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_4909();
    v44 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!v43)
    {
      if (v44)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v73 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_42:

      v49 = _NUAssertFailHandler();
      goto LABEL_43;
    }

LABEL_40:
    if (v44)
    {
      v60 = dispatch_get_specific(*callStackSymbols);
      v61 = MEMORY[0x1E696AF00];
      v62 = v60;
      callStackSymbols = [v61 callStackSymbols];
      v63 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v73 = v60;
      v74 = 2114;
      v75 = v63;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_42;
  }

  styleEngine = self->_styleEngine;
  if (!styleEngine)
  {
    v46 = NUAssertLogger_4909();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not prepared"];
      *buf = 138543362;
      v73 = v47;
      _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v48 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_4909();
    v49 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!v48)
    {
      if (v49)
      {
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v51 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v73 = v51;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_45;
    }

LABEL_43:
    if (v49)
    {
      v64 = dispatch_get_specific(*callStackSymbols);
      v65 = MEMORY[0x1E696AF00];
      v66 = v64;
      callStackSymbols6 = [v65 callStackSymbols];
      v68 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v73 = v64;
      v74 = 2114;
      v75 = v68;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_45:

    _NUAssertFailHandler();
  }

  v23 = self->_expectedImageSize.width / self->_expectedImageSize.height;
  if (fabs(v14 / v13 / v23 + -1.0) > 0.001)
  {
    v24 = MEMORY[0x1E69B3A48];
    *v71 = v16;
    *&v71[1] = v15;
    *&v71[2] = v14;
    *&v71[3] = v13;
    v25 = [MEMORY[0x1E696B098] valueWithBytes:v71 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v26 = @"Source aspect ratio mismatch";
LABEL_9:
    height = [v24 mismatchError:v26 object:v25];

    (v21)[2](v21, 0, height);
    goto LABEL_10;
  }

  if (fabs(width / height / v23 + -1.0) > 0.001)
  {
    v24 = MEMORY[0x1E69B3A48];
    *v70 = x;
    *&v70[1] = y;
    *&v70[2] = width;
    *&v70[3] = height;
    v25 = [MEMORY[0x1E696B098] valueWithBytes:v70 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v26 = @"Target aspect ratio mismatch";
    goto LABEL_9;
  }

  v69 = 0;
  height = [(NUStyleEngine *)styleEngine learnStyleFromTexture:textureCopy rect:toTextureCopy toTexture:&v69 rect:v16 error:v15, v14, v13, x, y, width, height];
  if (height)
  {
    [(PIParallaxInactiveStyleEngine *)self generateStyleDataFromStyleBuffer:height completion:v21];
  }

  else
  {
    v28 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to learn style" object:self underlyingError:v69];
    (v21)[2](v21, 0, v28);
  }

LABEL_10:
}

- (void)learnStyleFromTexture:(id)texture toTexture:(id)toTexture completion:(id)completion
{
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  completionCopy = completion;
  toTextureCopy = toTexture;
  textureCopy = texture;
  -[PIParallaxInactiveStyleEngine learnStyleFromTexture:rect:toTexture:rect:completion:](self, "learnStyleFromTexture:rect:toTexture:rect:completion:", textureCopy, toTextureCopy, completionCopy, v8, v9, [textureCopy width], objc_msgSend(textureCopy, "height"), v8, v9, objc_msgSend(toTextureCopy, "width"), objc_msgSend(toTextureCopy, "height"));
}

- (void)generateStyleDataFromStyleBuffer:(id)buffer completion:(id)completion
{
  bufferCopy = buffer;
  completionCopy = completion;
  expectedImageSize = self->_expectedImageSize;
  configuration = [(NUStyleEngine *)self->_styleEngine configuration];
  tuningParameters = [(NUStyleEngine *)self->_styleEngine tuningParameters];
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __77__PIParallaxInactiveStyleEngine_generateStyleDataFromStyleBuffer_completion___block_invoke;
  v18 = &unk_1E82AA1F0;
  v19 = bufferCopy;
  v20 = configuration;
  v21 = tuningParameters;
  v22 = completionCopy;
  v11 = completionCopy;
  v12 = tuningParameters;
  v13 = configuration;
  v14 = bufferCopy;
  [commandBuffer addCompletedHandler:&v15];
  [commandBuffer commit];
}

void __77__PIParallaxInactiveStyleEngine_generateStyleDataFromStyleBuffer_completion___block_invoke(uint64_t a1)
{
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(*(a1 + 32), "allocatedSize")}];
  [v4 setLength:{objc_msgSend(*(a1 + 32), "length")}];
  v2 = v4;
  memcpy([v4 mutableBytes], objc_msgSend(*(a1 + 32), "contents"), objc_msgSend(*(a1 + 32), "length"));
  v3 = [[PIParallaxInactiveStyleData alloc] initWithData:v4 imageSize:*(a1 + 40) configuration:*(a1 + 48) tuningParameters:*(a1 + 64), *(a1 + 72)];
  (*(*(a1 + 56) + 16))();
}

- (void)learnStyleFromPixelBuffer:(__CVBuffer *)buffer rect:(CGRect)rect toPixelBuffer:(__CVBuffer *)pixelBuffer rect:(CGRect)a6 completion:(id)completion
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = rect.size.height;
  v13 = rect.size.width;
  v14 = rect.origin.y;
  v15 = rect.origin.x;
  v94 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!buffer)
  {
    v29 = NUAssertLogger_4909();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceBuffer != NULL"];
      *buf = 138543362;
      v91 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_4909();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v34)
      {
        v62 = dispatch_get_specific(*callStackSymbols);
        v63 = MEMORY[0x1E696AF00];
        v64 = v62;
        callStackSymbols = [v63 callStackSymbols];
        v65 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v91 = v62;
        v92 = 2114;
        v93 = v65;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v91 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v39 = _NUAssertFailHandler();
    goto LABEL_49;
  }

  if (!pixelBuffer)
  {
    v36 = NUAssertLogger_4909();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "targetBuffer != NULL"];
      *buf = 138543362;
      v91 = v37;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v38 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_4909();
    v39 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!v38)
    {
      if (v39)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v91 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_51:

      v44 = _NUAssertFailHandler();
      goto LABEL_52;
    }

LABEL_49:
    if (v39)
    {
      v66 = dispatch_get_specific(*callStackSymbols);
      v67 = MEMORY[0x1E696AF00];
      v68 = v66;
      callStackSymbols = [v67 callStackSymbols];
      v69 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v91 = v66;
      v92 = 2114;
      v93 = v69;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_51;
  }

  v19 = completionCopy;
  if (!completionCopy)
  {
    v41 = NUAssertLogger_4909();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != NULL"];
      *buf = 138543362;
      v91 = v42;
      _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v43 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_4909();
    v44 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!v43)
    {
      if (v44)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v91 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_54:

      v49 = _NUAssertFailHandler();
      goto LABEL_55;
    }

LABEL_52:
    if (v44)
    {
      v70 = dispatch_get_specific(*callStackSymbols);
      v71 = MEMORY[0x1E696AF00];
      v72 = v70;
      callStackSymbols = [v71 callStackSymbols];
      v73 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v91 = v70;
      v92 = 2114;
      v93 = v73;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_54;
  }

  v95.origin.x = v15;
  v95.origin.y = v14;
  v95.size.width = v13;
  v95.size.height = v12;
  if (CGRectIsEmpty(v95))
  {
    v46 = NUAssertLogger_4909();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CGRectIsEmpty(sourceRect) == NO"];
      *buf = 138543362;
      v91 = v47;
      _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v48 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_4909();
    v49 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!v48)
    {
      if (v49)
      {
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v91 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_57:

      v54 = _NUAssertFailHandler();
      goto LABEL_58;
    }

LABEL_55:
    if (v49)
    {
      v74 = dispatch_get_specific(*callStackSymbols);
      v75 = MEMORY[0x1E696AF00];
      v76 = v74;
      callStackSymbols = [v75 callStackSymbols];
      v77 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v91 = v74;
      v92 = 2114;
      v93 = v77;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_57;
  }

  v96.origin.x = x;
  v96.origin.y = y;
  v96.size.width = width;
  v96.size.height = height;
  if (CGRectIsEmpty(v96))
  {
    v51 = NUAssertLogger_4909();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CGRectIsEmpty(targetRect) == NO"];
      *buf = 138543362;
      v91 = v52;
      _os_log_error_impl(&dword_1C7694000, v51, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v53 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_4909();
    v54 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!v53)
    {
      if (v54)
      {
        callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols6 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v91 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_60:

      v59 = _NUAssertFailHandler();
      goto LABEL_61;
    }

LABEL_58:
    if (v54)
    {
      v78 = dispatch_get_specific(*callStackSymbols);
      v79 = MEMORY[0x1E696AF00];
      v80 = v78;
      callStackSymbols = [v79 callStackSymbols];
      v81 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v91 = v78;
      v92 = 2114;
      v93 = v81;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_60;
  }

  if (!self->_styleEngine)
  {
    v56 = NUAssertLogger_4909();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not prepared"];
      *buf = 138543362;
      v91 = v57;
      _os_log_error_impl(&dword_1C7694000, v56, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v58 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_4909();
    v59 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!v58)
    {
      if (v59)
      {
        callStackSymbols7 = [MEMORY[0x1E696AF00] callStackSymbols];
        v61 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v91 = v61;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_63;
    }

LABEL_61:
    if (v59)
    {
      v82 = dispatch_get_specific(*callStackSymbols);
      v83 = MEMORY[0x1E696AF00];
      v84 = v82;
      callStackSymbols8 = [v83 callStackSymbols];
      v86 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v91 = v82;
      v92 = 2114;
      v93 = v86;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_63:

    _NUAssertFailHandler();
  }

  v20 = [objc_alloc(MEMORY[0x1E69B39C0]) initWithCVPixelBuffer:buffer];
  v21 = [objc_alloc(MEMORY[0x1E69B39C0]) initWithCVPixelBuffer:pixelBuffer];
  v22 = self->_expectedImageSize.width / self->_expectedImageSize.height;
  if (fabs(v13 / v12 / v22 + -1.0) > 0.001)
  {
    v23 = MEMORY[0x1E69B3A48];
    *v89 = v15;
    *&v89[1] = v14;
    *&v89[2] = v13;
    *&v89[3] = v12;
    v24 = [MEMORY[0x1E696B098] valueWithBytes:v89 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v25 = @"Source aspect ratio mismatch";
LABEL_11:
    height = [v23 mismatchError:v25 object:v24];

    (v19)[2](v19, 0, height);
    goto LABEL_12;
  }

  if (fabs(width / height / v22 + -1.0) > 0.001)
  {
    v23 = MEMORY[0x1E69B3A48];
    *v88 = x;
    *&v88[1] = y;
    *&v88[2] = width;
    *&v88[3] = height;
    v24 = [MEMORY[0x1E696B098] valueWithBytes:v88 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v25 = @"Target aspect ratio mismatch";
    goto LABEL_11;
  }

  styleEngine = self->_styleEngine;
  v87 = 0;
  height = [(NUStyleEngine *)styleEngine learnStyleFromBuffer:v20 rect:v21 toBuffer:&v87 rect:v15 error:v14, v13, v12, x, y, width, height];
  if (height)
  {
    [(PIParallaxInactiveStyleEngine *)self generateStyleDataFromStyleBuffer:height completion:v19];
  }

  else
  {
    v28 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to learn style" object:self underlyingError:v87];
    (v19)[2](v19, 0, v28);
  }

LABEL_12:
}

- (void)learnStyleFromPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer completion:(id)completion
{
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  completionCopy = completion;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  v12 = CVPixelBufferGetWidth(pixelBuffer);
  [(PIParallaxInactiveStyleEngine *)self learnStyleFromPixelBuffer:buffer rect:pixelBuffer toPixelBuffer:completionCopy rect:v8 completion:v9, Width, Height, v8, v9, v12, CVPixelBufferGetHeight(pixelBuffer)];
}

- (id)cachedTextureForPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  if (!buffer)
  {
    v17 = NUAssertLogger_4909();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "buffer != nil"];
      *image = 138543362;
      *&image[4] = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", image, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_4909();
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
        *image = 138543618;
        *&image[4] = v25;
        v31 = 2114;
        v32 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", image, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *image = 138543362;
      *&image[4] = v24;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", image, 0xCu);
    }

    _NUAssertFailHandler();
  }

  p_textureCache = &self->_textureCache;
  textureCache = self->_textureCache;
  if (!textureCache)
  {
    if (CVMetalTextureCacheCreate(0, 0, self->_device, 0, p_textureCache))
    {
      v10 = MEMORY[0x1E69B3A48];
      v11 = @"Failed to create texture cache";
      bufferCopy = 0;
      goto LABEL_7;
    }

    textureCache = *p_textureCache;
  }

  *image = 0;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  if (CVMetalTextureCacheCreateTextureFromImage(0, textureCache, buffer, 0, MTLPixelFormatBGRA8Unorm, Width, Height, 0, image))
  {
    v10 = MEMORY[0x1E69B3A48];
    v11 = @"Failed to create texture";
    bufferCopy = buffer;
LABEL_7:
    v13 = [v10 failureError:v11 object:bufferCopy];
    v14 = v13;
    v15 = 0;
    *error = v13;
    goto LABEL_9;
  }

  v15 = CVMetalTextureGetTexture(*image);
LABEL_9:

  return v15;
}

- (BOOL)prepareForLearningWithImageSize:(CGSize)size error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  if (size.width <= 0.0 || size.height <= 0.0)
  {
    v19 = NUAssertLogger_4909();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "size.width > 0.0 && size.height > 0.0"];
      *buf = 138543362;
      v52 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_4909();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v37 = dispatch_get_specific(*callStackSymbols);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        callStackSymbols = [v38 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v37;
        v53 = 2114;
        v54 = v40;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v29 = _NUAssertFailHandler();
    goto LABEL_26;
  }

  if (!error)
  {
    v26 = NUAssertLogger_4909();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v52 = v27;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v28 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_4909();
    v29 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!v28)
    {
      if (v29)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v52 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_28:

      v34 = _NUAssertFailHandler();
      goto LABEL_29;
    }

LABEL_26:
    if (v29)
    {
      v41 = dispatch_get_specific(*callStackSymbols);
      v42 = MEMORY[0x1E696AF00];
      v43 = v41;
      callStackSymbols = [v42 callStackSymbols];
      v44 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v52 = v41;
      v53 = 2114;
      v54 = v44;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_28;
  }

  if (self->_styleEngine)
  {
    v31 = NUAssertLogger_4909();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Already prepared!"];
      *buf = 138543362;
      v52 = v32;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v33 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_4909();
    v34 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!v33)
    {
      if (v34)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v36 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v52 = v36;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_31;
    }

LABEL_29:
    if (v34)
    {
      v45 = dispatch_get_specific(*callStackSymbols);
      v46 = MEMORY[0x1E696AF00];
      v47 = v45;
      callStackSymbols5 = [v46 callStackSymbols];
      v49 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v52 = v45;
      v53 = 2114;
      v54 = v49;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_31:

    _NUAssertFailHandler();
  }

  self->_expectedImageSize = size;
  v6 = [MEMORY[0x1E69B3CD8] semanticStyleVideoSettingsForScale:*MEMORY[0x1E69B3918] aspectRatio:{*(MEMORY[0x1E69B3918] + 8), size.width, size.height}];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B3930]];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B3940]];
  v9 = [MEMORY[0x1E69B3CD0] styleEngineForUsage:0 withMetalCommandQueue:self->_commandQueue configuration:v7 tuningParams:v8];
  styleEngine = self->_styleEngine;
  self->_styleEngine = v9;

  v11 = self->_styleEngine;
  v50 = 0;
  v12 = [(NUStyleEngine *)v11 prepare:&v50];
  if ((v12 & 1) == 0)
  {
    v13 = v50;
    v14 = self->_styleEngine;
    self->_styleEngine = 0;
    v15 = v13;

    v16 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to prepare engine" object:self underlyingError:v15];
    v17 = v16;

    *error = v16;
  }

  return v12;
}

- (PIParallaxInactiveStyleEngine)initWithMetalDevice:(id)device commandQueue:(id)queue
{
  v32 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  queueCopy = queue;
  if (!deviceCopy)
  {
    v14 = NUAssertLogger_4909();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "device != nil"];
      *buf = 138543362;
      v29 = v15;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v16 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_4909();
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
        v29 = v22;
        v30 = 2114;
        v31 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v21;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v9 = queueCopy;
  v27.receiver = self;
  v27.super_class = PIParallaxInactiveStyleEngine;
  v10 = [(PIParallaxInactiveStyleEngine *)&v27 init];
  objc_storeStrong(&v10->_device, device);
  if (v9)
  {
    newCommandQueue = v9;
  }

  else
  {
    newCommandQueue = [deviceCopy newCommandQueue];
  }

  commandQueue = v10->_commandQueue;
  v10->_commandQueue = newCommandQueue;

  return v10;
}

+ (void)learnStyleFromPixelBuffer:(__CVBuffer *)buffer rect:(CGRect)rect toPixelBuffer:(__CVBuffer *)pixelBuffer rect:(CGRect)a6 completion:(id)completion
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = rect.size.height;
  v13 = rect.size.width;
  v14 = rect.origin.y;
  v15 = rect.origin.x;
  v84 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!buffer)
  {
    v21 = NUAssertLogger_4909();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceBuffer != NULL"];
      *buf = 138543362;
      v81 = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_4909();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v54 = dispatch_get_specific(*callStackSymbols);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        callStackSymbols = [v55 callStackSymbols];
        v57 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v81 = v54;
        v82 = 2114;
        v83 = v57;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v81 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v31 = _NUAssertFailHandler();
    goto LABEL_44;
  }

  if (!pixelBuffer)
  {
    v28 = NUAssertLogger_4909();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "targetBuffer != NULL"];
      *buf = 138543362;
      v81 = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v30 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_4909();
    v31 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!v30)
    {
      if (v31)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v81 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_46:

      v36 = _NUAssertFailHandler();
      goto LABEL_47;
    }

LABEL_44:
    if (v31)
    {
      v58 = dispatch_get_specific(*callStackSymbols);
      v59 = MEMORY[0x1E696AF00];
      v60 = v58;
      callStackSymbols = [v59 callStackSymbols];
      v61 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v81 = v58;
      v82 = 2114;
      v83 = v61;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_46;
  }

  v18 = completionCopy;
  if (!completionCopy)
  {
    v33 = NUAssertLogger_4909();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != NULL"];
      *buf = 138543362;
      v81 = v34;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v35 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_4909();
    v36 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!v35)
    {
      if (v36)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v81 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_49:

      v41 = _NUAssertFailHandler();
      goto LABEL_50;
    }

LABEL_47:
    if (v36)
    {
      v62 = dispatch_get_specific(*callStackSymbols);
      v63 = MEMORY[0x1E696AF00];
      v64 = v62;
      callStackSymbols = [v63 callStackSymbols];
      v65 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v81 = v62;
      v82 = 2114;
      v83 = v65;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_49;
  }

  v85.origin.x = v15;
  v85.origin.y = v14;
  v85.size.width = v13;
  v85.size.height = v12;
  if (CGRectIsEmpty(v85))
  {
    v38 = NUAssertLogger_4909();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CGRectIsEmpty(sourceRect) == NO"];
      *buf = 138543362;
      v81 = v39;
      _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v40 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_4909();
    v41 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!v40)
    {
      if (v41)
      {
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v81 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_52:

      v46 = _NUAssertFailHandler();
      goto LABEL_53;
    }

LABEL_50:
    if (v41)
    {
      v66 = dispatch_get_specific(*callStackSymbols);
      v67 = MEMORY[0x1E696AF00];
      v68 = v66;
      callStackSymbols = [v67 callStackSymbols];
      v69 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v81 = v66;
      v82 = 2114;
      v83 = v69;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_52;
  }

  v86.origin.x = x;
  v86.origin.y = y;
  v86.size.width = width;
  v86.size.height = height;
  if (CGRectIsEmpty(v86))
  {
    v43 = NUAssertLogger_4909();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "CGRectIsEmpty(targetRect) == NO"];
      *buf = 138543362;
      v81 = v44;
      _os_log_error_impl(&dword_1C7694000, v43, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v45 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_4909();
    v46 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!v45)
    {
      if (v46)
      {
        callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols6 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v81 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_55:

      v51 = _NUAssertFailHandler();
      goto LABEL_56;
    }

LABEL_53:
    if (v46)
    {
      v70 = dispatch_get_specific(*callStackSymbols);
      v71 = MEMORY[0x1E696AF00];
      v72 = v70;
      callStackSymbols = [v71 callStackSymbols];
      v73 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v81 = v70;
      v82 = 2114;
      v83 = v73;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_55;
  }

  if (fabs(v13 / v12 / (width / height) + -1.0) >= 0.001)
  {
    v48 = NUAssertLogger_4909();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"source buffer (%fx%f) and target buffer (%fx%f) must be the same aspect ratio", *&v13, *&v12, *&width, *&height];
      *buf = 138543362;
      v81 = v49;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v50 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_4909();
    v51 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!v50)
    {
      if (v51)
      {
        callStackSymbols7 = [MEMORY[0x1E696AF00] callStackSymbols];
        v53 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v81 = v53;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_58;
    }

LABEL_56:
    if (v51)
    {
      v74 = dispatch_get_specific(*callStackSymbols);
      v75 = MEMORY[0x1E696AF00];
      v76 = v74;
      callStackSymbols8 = [v75 callStackSymbols];
      v78 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v81 = v74;
      v82 = 2114;
      v83 = v78;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_58:

    _NUAssertFailHandler();
  }

  v19 = MTLCreateSystemDefaultDevice();
  v20 = [[PIParallaxInactiveStyleEngine alloc] initWithMetalDevice:v19 commandQueue:0];
  v79 = 0;
  if ([(PIParallaxInactiveStyleEngine *)v20 prepareForLearningWithImageSize:&v79 error:v13, v12])
  {
    [(PIParallaxInactiveStyleEngine *)v20 learnStyleFromPixelBuffer:buffer rect:pixelBuffer toPixelBuffer:v18 rect:v15 completion:v14, v13, v12, x, y, width, height];
  }

  else
  {
    v18[2](v18, 0, v79);
  }
}

+ (void)learnStyleFromPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!buffer)
  {
    v14 = NUAssertLogger_4909();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "sourceBuffer != NULL"];
      *buf = 138543362;
      v38 = v15;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_4909();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v27 = dispatch_get_specific(*callStackSymbols);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v27;
        v39 = 2114;
        v40 = v30;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v24 = _NUAssertFailHandler();
    goto LABEL_19;
  }

  if (!pixelBuffer)
  {
    v21 = NUAssertLogger_4909();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "targetBuffer != NULL"];
      *buf = 138543362;
      v38 = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v23 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_4909();
    v24 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (!v23)
    {
      if (v24)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v26 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v38 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v24)
    {
      v31 = dispatch_get_specific(*callStackSymbols);
      v32 = MEMORY[0x1E696AF00];
      v33 = v31;
      callStackSymbols4 = [v32 callStackSymbols];
      v35 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v38 = v31;
      v39 = 2114;
      v40 = v35;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_21:

    _NUAssertFailHandler();
  }

  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  v36 = completionCopy;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  v13 = CVPixelBufferGetWidth(pixelBuffer);
  [self learnStyleFromPixelBuffer:buffer rect:pixelBuffer toPixelBuffer:v36 rect:v9 completion:{v10, Width, Height, v9, v10, v13, CVPixelBufferGetHeight(pixelBuffer)}];
}

@end