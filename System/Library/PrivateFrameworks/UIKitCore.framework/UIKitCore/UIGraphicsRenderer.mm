@interface UIGraphicsRenderer
+ (CGContext)_contextWithFormat:(id)format renderer:(id)renderer;
+ (void)_destroyCGContext:(CGContext *)context withRenderer:(id)renderer;
- (BOOL)runDrawingActions:(UIGraphicsDrawingActions)drawingActions completionActions:(UIGraphicsDrawingActions)completionActions error:(NSError *)error;
- (BOOL)runDrawingActions:(id)actions completionActions:(id)completionActions format:(id)format error:(id *)error;
- (UIGraphicsRenderer)initWithBounds:(CGRect)bounds;
- (UIGraphicsRenderer)initWithBounds:(CGRect)bounds format:(UIGraphicsRendererFormat *)format;
- (void)_configureReuseState;
- (void)_enqueueContextForReuse:(CGContext *)reuse;
- (void)popContext:(id)context;
- (void)pushContext:(id)context;
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

- (void)pushContext:(id)context
{
  contextCopy = context;
  __createsImages = [contextCopy __createsImages];
  cGContext = [contextCopy CGContext];

  ContextStack = GetContextStack(1);
  v7 = CGContextRetain(cGContext);
  v8 = *ContextStack;
  v9 = &ContextStack[6 * *ContextStack];
  *(v9 + 1) = v7;
  v9[4] = __createsImages;
  *(v9 + 3) = 0;
  *ContextStack = v8 + 1;
}

- (void)popContext:(id)context
{
  ContextStack = GetContextStack(0);

  PopContextFromStack(ContextStack);
}

+ (CGContext)_contextWithFormat:(id)format renderer:(id)renderer
{
  formatCopy = format;
  _dequeueContextForReuse = [renderer _dequeueContextForReuse];
  if (_dequeueContextForReuse)
  {
    v8 = _dequeueContextForReuse;
    CGContextResetState();
    CGContextClear();
  }

  else
  {
    v8 = [self contextWithFormat:formatCopy];
  }

  return v8;
}

+ (void)_destroyCGContext:(CGContext *)context withRenderer:(id)renderer
{
  rendererCopy = renderer;
  if (rendererCopy[2])
  {
    v6 = rendererCopy;
    [rendererCopy _prepareContextForReuse:context];
    [v6 _enqueueContextForReuse:context];
  }

  else
  {
    if (!context)
    {
      goto LABEL_6;
    }

    v6 = rendererCopy;
    CGContextRelease(context);
  }

  rendererCopy = v6;
LABEL_6:
}

- (UIGraphicsRenderer)initWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = +[UIGraphicsRendererFormat preferredFormat];
  height = [(UIGraphicsRenderer *)self initWithBounds:v8 format:x, y, width, height];

  return height;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIGraphicsRenderer.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"format != nil"}];
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
  format = [(UIGraphicsRenderer *)self format];
  LOBYTE(error) = [(UIGraphicsRenderer *)self runDrawingActions:v9 completionActions:v8 format:format error:error];

  return error;
}

- (BOOL)runDrawingActions:(id)actions completionActions:(id)completionActions format:(id)format error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  completionActionsCopy = completionActions;
  formatCopy = format;
  rendererContextClass = [objc_opt_class() rendererContextClass];
  if (([rendererContextClass isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"*** Attempting to use a Class (%@) that is not a UIGraphicsRendererContext subclass as a UIGraphicsRenderer context.", rendererContextClass}];
  }

  v14 = objc_opt_class();
  format = [(UIGraphicsRenderer *)self format];
  v16 = [v14 _contextWithFormat:format renderer:self];

  if (v16)
  {
    v17 = [[rendererContextClass alloc] initWithCGContext:v16 format:formatCopy];
    [v17 set__createsImages:{-[UIGraphicsRenderer allowsImageOutput](self, "allowsImageOutput")}];
    [objc_opt_class() prepareCGContext:v16 withRendererContext:v17];
    if (actionsCopy)
    {
      [(UIGraphicsRenderer *)self pushContext:v17];
      actionsCopy[2](actionsCopy, v17);
      [(UIGraphicsRenderer *)self popContext:v17];
    }

    if (completionActionsCopy)
    {
      completionActionsCopy[2](completionActionsCopy, v17);
    }

    [objc_opt_class() _destroyCGContext:v16 withRenderer:self];
  }

  else if (error)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A250];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = @"Could not create CGContextRef";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v21 = [v18 errorWithDomain:v19 code:0 userInfo:v20];

    v22 = v21;
    *error = v21;
  }

  return v16 != 0;
}

- (void)_enqueueContextForReuse:(CGContext *)reuse
{
  [(_UIReusePool *)self->_reusePool addObject:?];
}

@end