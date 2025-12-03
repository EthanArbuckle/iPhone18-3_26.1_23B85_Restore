@interface WFBitmapContext
+ (id)HDRCapableContextWithSize:(CGSize)size scale:(double)scale;
+ (id)contextWithSize:(CGSize)size scale:(double)scale;
+ (id)currentContextWithScale:(double)scale;
- (CGSize)size;
- (WFBitmapContext)initWithCGContext:(CGContext *)context scale:(double)scale;
- (WFBitmapContext)initWithSize:(CGSize)size opaque:(BOOL)opaque scale:(double)scale colorspace:(CGColorSpace *)colorspace flipped:(BOOL)flipped hdrCapable:(BOOL)capable;
- (void)becomeCurrent;
- (void)dealloc;
- (void)resignCurrent;
@end

@implementation WFBitmapContext

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)resignCurrent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getUIGraphicsPopContextSymbolLoc_ptr;
  v9 = getUIGraphicsPopContextSymbolLoc_ptr;
  if (!getUIGraphicsPopContextSymbolLoc_ptr)
  {
    v3 = UIKitLibrary_19507();
    v7[3] = dlsym(v3, "UIGraphicsPopContext");
    getUIGraphicsPopContextSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2();
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void soft_UIGraphicsPopContext(void)"];
    [currentHandler handleFailureInFunction:v5 file:@"WFBitmapContext.m" lineNumber:24 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)becomeCurrent
{
  cGContext = [(WFBitmapContext *)self CGContext];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getUIGraphicsPushContextSymbolLoc_ptr;
  v10 = getUIGraphicsPushContextSymbolLoc_ptr;
  if (!getUIGraphicsPushContextSymbolLoc_ptr)
  {
    v4 = UIKitLibrary_19507();
    v8[3] = dlsym(v4, "UIGraphicsPushContext");
    getUIGraphicsPushContextSymbolLoc_ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (v3)
  {
    v3(cGContext);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void soft_UIGraphicsPushContext(CGContextRef)"];
    [currentHandler handleFailureInFunction:v6 file:@"WFBitmapContext.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)dealloc
{
  CGContextRelease(self->_CGContext);
  v3.receiver = self;
  v3.super_class = WFBitmapContext;
  [(WFBitmapContext *)&v3 dealloc];
}

- (WFBitmapContext)initWithSize:(CGSize)size opaque:(BOOL)opaque scale:(double)scale colorspace:(CGColorSpace *)colorspace flipped:(BOOL)flipped hdrCapable:(BOOL)capable
{
  capableCopy = capable;
  flippedCopy = flipped;
  height = size.height;
  width = size.width;
  v36[1] = *MEMORY[0x1E69E9840];
  v16 = WFEffectiveScaleForScale(scale);
  if (width <= 0.0 || height <= 0.0)
  {
    goto LABEL_11;
  }

  v17 = v16;
  if (v16 == 0.0)
  {
    v18 = +[WFDevice currentDevice];
    [v18 screenScale];
    v17 = v19;
  }

  v20 = vcvtpd_u64_f64(width * v17);
  v21 = vcvtpd_u64_f64(height * v17);
  if (!capableCopy)
  {
    v29 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    v25 = CGBitmapContextCreate(0, v20, v21, 8uLL, 4 * v20, v29, 1u);
    CGColorSpaceRelease(v29);
    if (v25)
    {
      goto LABEL_7;
    }

LABEL_11:
    selfCopy = 0;
    goto LABEL_12;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __WFCreateBitmapContext_block_invoke;
  aBlock[3] = &__block_descriptor_41_e93_B36__0_CGBitmapContextContentInfo_IiIBBf_8__CGBitmapContextInfo_IQQQQiII__CGColorSpace_BIf_28l;
  opaqueCopy = opaque;
  aBlock[4] = colorspace;
  v22 = _Block_copy(aBlock);
  v35 = *MEMORY[0x1E695F080];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:5];
  v36[0] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];

  v25 = CGBitmapContextCreateWithCallbacks();
  if (!v25)
  {
    goto LABEL_11;
  }

LABEL_7:
  v37.size.width = v20;
  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v37.size.height = v21;
  CGContextClearRect(v25, v37);
  v26 = v17;
  if (flippedCopy)
  {
    CGContextTranslateCTM(v25, 0.0, v21);
    v26 = -v17;
  }

  CGContextScaleCTM(v25, v17, v26);
  CGContextGetCTM(&v32, v25);
  CGContextSetBaseCTM();
  v27 = [(WFBitmapContext *)self initWithCGContext:v25 scale:scale];
  CGContextRelease(v25);
  self = v27;
  selfCopy = self;
LABEL_12:

  v30 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (WFBitmapContext)initWithCGContext:(CGContext *)context scale:(double)scale
{
  if (!context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFBitmapContext.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"CGContext"}];
  }

  v12.receiver = self;
  v12.super_class = WFBitmapContext;
  v7 = [(WFBitmapContext *)&v12 init];
  if (v7)
  {
    v7->_scale = WFEffectiveScaleForScale(scale);
    v7->_CGContext = CGContextRetain(context);
    v8 = v7;
  }

  return v7;
}

+ (id)currentContextWithScale:(double)scale
{
  v4 = [WFBitmapContext alloc];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getUIGraphicsGetCurrentContextSymbolLoc_ptr;
  v14 = getUIGraphicsGetCurrentContextSymbolLoc_ptr;
  if (!getUIGraphicsGetCurrentContextSymbolLoc_ptr)
  {
    v6 = UIKitLibrary_19507();
    v12[3] = dlsym(v6, "UIGraphicsGetCurrentContext");
    getUIGraphicsGetCurrentContextSymbolLoc_ptr = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v5)
  {
    v7 = [(WFBitmapContext *)v4 initWithCGContext:v5() scale:scale];

    return v7;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGContextRef  _Nullable soft_UIGraphicsGetCurrentContext(void)"];
    [currentHandler handleFailureInFunction:v10 file:@"WFBitmapContext.m" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)HDRCapableContextWithSize:(CGSize)size scale:(double)scale
{
  scale = [[WFBitmapContext alloc] initWithSize:0 opaque:0 scale:1 colorspace:1 flipped:size.width hdrCapable:size.height, scale];

  return scale;
}

+ (id)contextWithSize:(CGSize)size scale:(double)scale
{
  scale = [[WFBitmapContext alloc] initWithSize:0 opaque:size.width scale:size.height, scale];

  return scale;
}

@end