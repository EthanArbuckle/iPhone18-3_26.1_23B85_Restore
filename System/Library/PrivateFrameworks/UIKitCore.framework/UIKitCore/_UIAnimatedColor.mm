@interface _UIAnimatedColor
+ (CGPatternCallbacks)_patternCallbacks;
+ (id)animatedColorForParentView:(id)view;
- (CGColor)_patternColorForSize:(CGSize)size;
- (UIView)parentView;
- (_UIAnimatedColor)initWithBounds:(CGRect)bounds invalidationHandler:(id)handler;
- (_UIAnimatedColor)initWithParentView:(id)view;
- (void)_drawPatternWithContext:(CGContext *)context;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_recreatePatternColorForBounds:(CGRect)bounds;
- (void)dealloc;
- (void)setAnimating:(BOOL)animating;
- (void)setProgress:(double)progress;
@end

@implementation _UIAnimatedColor

+ (CGPatternCallbacks)_patternCallbacks
{
  if (_MergedGlobals_3_11 != -1)
  {
    dispatch_once(&_MergedGlobals_3_11, &__block_literal_global_283);
  }

  *&retstr->version = xmmword_1ED49A2A0;
  retstr->releaseInfo = qword_1ED49A2B0;
  return result;
}

+ (id)animatedColorForParentView:(id)view
{
  viewCopy = view;
  v5 = [[self alloc] initWithParentView:viewCopy];

  return v5;
}

- (_UIAnimatedColor)initWithParentView:(id)view
{
  viewCopy = view;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39___UIAnimatedColor_initWithParentView___block_invoke;
  aBlock[3] = &unk_1E710AF98;
  v5 = viewCopy;
  v11 = v5;
  v6 = _Block_copy(aBlock);
  [v5 bounds];
  v7 = [(_UIAnimatedColor *)self initWithBounds:v6 invalidationHandler:?];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_parentView, v5);
    [(UIView *)v5 _addGeometryChangeObserver:v8];
  }

  return v8;
}

- (_UIAnimatedColor)initWithBounds:(CGRect)bounds invalidationHandler:(id)handler
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v25[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v24.receiver = self;
  v24.super_class = _UIAnimatedColor;
  v10 = [(_UIAnimatedColor *)&v24 init];
  v11 = v10;
  if (v10)
  {
    v10->_bounds.origin.x = x;
    v10->_bounds.origin.y = y;
    v10->_bounds.size.width = width;
    v10->_bounds.size.height = height;
    v12 = [handlerCopy copy];
    invalidationHandler = v11->_invalidationHandler;
    v11->_invalidationHandler = v12;

    v14 = objc_alloc_init(UIViewFloatAnimatableProperty);
    progressAnimatableProperty = v11->_progressAnimatableProperty;
    v11->_progressAnimatableProperty = v14;

    [(UIViewFloatAnimatableProperty *)v11->_progressAnimatableProperty setValue:0.0];
    objc_initWeak(&location, v11);
    v25[0] = v11->_progressAnimatableProperty;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __55___UIAnimatedColor_initWithBounds_invalidationHandler___block_invoke;
    v21 = &unk_1E70F5A28;
    objc_copyWeak(&v22, &location);
    [UIView _createTransformerWithInputAnimatableProperties:v16 presentationValueChangedCallback:&v18];

    [(_UIAnimatedColor *)v11 _recreatePatternColorForBounds:x, y, width, height, v18, v19, v20, v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_parentView);
  [(UIView *)WeakRetained _removeGeometryChangeObserver:?];

  displayLink = self->_displayLink;
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [(CADisplayLink *)displayLink removeFromRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

  v6.receiver = self;
  v6.super_class = _UIAnimatedColor;
  [(_UIAnimatedColor *)&v6 dealloc];
}

- (void)setProgress:(double)progress
{
  if (vabdd_f64(self->_progress, progress) > 2.22044605e-16)
  {
    self->_progress = progress;
    [(UIViewFloatAnimatableProperty *)self->_progressAnimatableProperty setValue:?];
  }
}

- (CGColor)_patternColorForSize:(CGSize)size
{
  width = size.width;
  if (size.width < 2.22044605e-16 || size.height < 2.22044605e-16)
  {
    return 0;
  }

  height = size.height;
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = width;
  v23.size.height = height;
  v24 = CGRectIntegral(v23);
  x = v24.origin.x;
  y = v24.origin.y;
  v10 = v24.size.width;
  v11 = v24.size.height;
  memset(&callbacks, 0, sizeof(callbacks));
  v12 = objc_opt_class();
  if (v12)
  {
    [v12 _patternCallbacks];
  }

  else
  {
    memset(&callbacks, 0, sizeof(callbacks));
  }

  selfCopy = self;
  v14 = *(MEMORY[0x1E695EFD0] + 16);
  *&v21.a = *MEMORY[0x1E695EFD0];
  *&v21.c = v14;
  *&v21.tx = *(MEMORY[0x1E695EFD0] + 32);
  v15 = x;
  *&v14 = y;
  v16 = v10;
  v17 = v11;
  v18 = CGPatternCreate(selfCopy, *(&v14 - 8), &v21, width, height, kCGPatternTilingConstantSpacing, 1, &callbacks);
  Pattern = CGColorSpaceCreatePattern(0);
  v20 = CGColorCreateWithPattern(Pattern, v18, &_patternColorForSize__alpha);
  CGColorSpaceRelease(Pattern);
  CGPatternRelease(v18);
  return CFAutorelease(v20);
}

- (void)_recreatePatternColorForBounds:(CGRect)bounds
{
  if ([(_UIAnimatedColor *)self _patternColorForSize:bounds.size.width, bounds.size.height])
  {
    [UIColor colorWithCGColor:?];
  }

  else
  {
    +[UIColor yellowColor];
  }
  v4 = ;
  wrappedColor = self->_wrappedColor;
  self->_wrappedColor = v4;
}

- (void)_drawPatternWithContext:(CGContext *)context
{
  CGContextSaveGState(context);
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  [(UIViewFloatAnimatableProperty *)self->_progressAnimatableProperty presentationValue];
  [(_UIAnimatedColor *)self drawRect:context usingContext:x progress:y, width, height, v9];

  CGContextRestoreGState(context);
}

- (void)setAnimating:(BOOL)animating
{
  self->_animating = animating;
  if (animating)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentView);
    window = [WeakRetained window];
    screen = [window screen];
    v7 = [screen displayLinkWithTarget:self selector:sel__didFireDisplayLink_];

    if (!v7)
    {
      v7 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__didFireDisplayLink_];
    }

    displayLink = self->_displayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    v10 = *MEMORY[0x1E695DA28];
    [(CADisplayLink *)displayLink removeFromRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    v11 = self->_displayLink;
    self->_displayLink = v7;
    v12 = v7;

    mainRunLoop2 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v12 addToRunLoop:mainRunLoop2 forMode:v10];

    v13 = mainRunLoop2;
  }

  else
  {
    v14 = self->_displayLink;
    mainRunLoop3 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v14 removeFromRunLoop:mainRunLoop3 forMode:*MEMORY[0x1E695DA28]];

    v13 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  if ((changed->var0 & 0x108) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentView);
    [WeakRetained bounds];
    [(_UIAnimatedColor *)self _recreatePatternColorForBounds:?];

    v8 = objc_loadWeakRetained(&self->_parentView);
    window = [v8 window];
    [(CADisplayLink *)self->_displayLink setPaused:window == 0];
  }
}

- (UIView)parentView
{
  WeakRetained = objc_loadWeakRetained(&self->_parentView);

  return WeakRetained;
}

@end