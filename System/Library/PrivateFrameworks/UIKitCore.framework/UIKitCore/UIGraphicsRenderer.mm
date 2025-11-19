@interface UIGraphicsRenderer
+ (CGContext)_contextWithFormat:(id)a3 renderer:(id)a4;
+ (void)_destroyCGContext:(CGContext *)a3 withRenderer:(id)a4;
- (BOOL)runDrawingActions:(UIGraphicsDrawingActions)drawingActions completionActions:(UIGraphicsDrawingActions)completionActions error:(NSError *)error;
- (BOOL)runDrawingActions:(id)a3 completionActions:(id)a4 format:(id)a5 error:(id *)a6;
- (UIGraphicsRenderer)initWithBounds:(CGRect)bounds;
- (UIGraphicsRenderer)initWithBounds:(CGRect)bounds format:(UIGraphicsRendererFormat *)format;
- (void)_configureReuseState;
- (void)_enqueueContextForReuse:(CGContext *)a3;
- (void)popContext:(id)a3;
- (void)pushContext:(id)a3;
@end

@implementation UIGraphicsRenderer

- (void)_configureReuseState
{
  if ([objc_opt_class() _supportsContextReuse])
  {
    v3 = [[_UIReusePool alloc] initWithPolicy:3];
    reusePool = self->_reusePool;
    self->_reusePool = v3;
  }
}

- (void)pushContext:(id)a3
{
  v3 = a3;
  v4 = [v3 __createsImages];
  v5 = [v3 CGContext];

  ContextStack = GetContextStack(1);
  v7 = CGContextRetain(v5);
  v8 = *ContextStack;
  v9 = &ContextStack[6 * *ContextStack];
  *(v9 + 1) = v7;
  v9[4] = v4;
  *(v9 + 3) = 0;
  *ContextStack = v8 + 1;
}

- (void)popContext:(id)a3
{
  ContextStack = GetContextStack(0);

  PopContextFromStack(ContextStack);
}

+ (CGContext)_contextWithFormat:(id)a3 renderer:(id)a4
{
  v6 = a3;
  v7 = [a4 _dequeueContextForReuse];
  if (v7)
  {
    v8 = v7;
    CGContextResetState();
    CGContextClear();
  }

  else
  {
    v8 = [a1 contextWithFormat:v6];
  }

  return v8;
}

+ (void)_destroyCGContext:(CGContext *)a3 withRenderer:(id)a4
{
  v5 = a4;
  if (v5[2])
  {
    v6 = v5;
    [v5 _prepareContextForReuse:a3];
    [v6 _enqueueContextForReuse:a3];
  }

  else
  {
    if (!a3)
    {
      goto LABEL_6;
    }

    v6 = v5;
    CGContextRelease(a3);
  }

  v5 = v6;
LABEL_6:
}

- (UIGraphicsRenderer)initWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = +[UIGraphicsRendererFormat preferredFormat];
  v9 = [(UIGraphicsRenderer *)self initWithBounds:v8 format:x, y, width, height];

  return v9;
}

- (UIGraphicsRenderer)initWithBounds:(CGRect)bounds format:(UIGraphicsRendererFormat *)format
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = format;
  if (!v10)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UIGraphicsRenderer.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"format != nil"}];
  }

  v17.receiver = self;
  v17.super_class = UIGraphicsRenderer;
  v11 = [(UIGraphicsRenderer *)&v17 init];
  if (v11)
  {
    v12 = [(UIGraphicsRendererFormat *)v10 copy];
    v13 = v11->_format;
    v11->_format = v12;

    v14 = v11->_format;
    v14->_bounds.origin.x = x;
    v14->_bounds.origin.y = y;
    v14->_bounds.size.width = width;
    v14->_bounds.size.height = height;
    [(UIGraphicsRenderer *)v11 _configureReuseState];
  }

  return v11;
}

- (BOOL)runDrawingActions:(UIGraphicsDrawingActions)drawingActions completionActions:(UIGraphicsDrawingActions)completionActions error:(NSError *)error
{
  v8 = completionActions;
  v9 = drawingActions;
  v10 = [(UIGraphicsRenderer *)self format];
  LOBYTE(error) = [(UIGraphicsRenderer *)self runDrawingActions:v9 completionActions:v8 format:v10 error:error];

  return error;
}

- (BOOL)runDrawingActions:(id)a3 completionActions:(id)a4 format:(id)a5 error:(id *)a6
{
  v25[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [objc_opt_class() rendererContextClass];
  if (([v13 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"*** Attempting to use a Class (%@) that is not a UIGraphicsRendererContext subclass as a UIGraphicsRenderer context.", v13}];
  }

  v14 = objc_opt_class();
  v15 = [(UIGraphicsRenderer *)self format];
  v16 = [v14 _contextWithFormat:v15 renderer:self];

  if (v16)
  {
    v17 = [[v13 alloc] initWithCGContext:v16 format:v12];
    [v17 set__createsImages:{-[UIGraphicsRenderer allowsImageOutput](self, "allowsImageOutput")}];
    [objc_opt_class() prepareCGContext:v16 withRendererContext:v17];
    if (v10)
    {
      [(UIGraphicsRenderer *)self pushContext:v17];
      v10[2](v10, v17);
      [(UIGraphicsRenderer *)self popContext:v17];
    }

    if (v11)
    {
      v11[2](v11, v17);
    }

    [objc_opt_class() _destroyCGContext:v16 withRenderer:self];
  }

  else if (a6)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A250];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = @"Could not create CGContextRef";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v21 = [v18 errorWithDomain:v19 code:0 userInfo:v20];

    v22 = v21;
    *a6 = v21;
  }

  return v16 != 0;
}

- (void)_enqueueContextForReuse:(CGContext *)a3
{
  [(_UIReusePool *)self->_reusePool addObject:?];
}

@end