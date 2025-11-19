@interface _NSCGTextGraphicsContext
+ (id)graphicsContextForApplicationFrameworkContext:(int64_t)a3;
- (_NSCGTextGraphicsContext)initWithCGContext:(CGContext *)a3;
- (void)becomeCurrentGraphicsContextDuringBlock:(id)a3;
- (void)dealloc;
- (void)restoreGraphicsState;
- (void)saveGraphicsState;
@end

@implementation _NSCGTextGraphicsContext

- (void)dealloc
{
  context = self->_context;
  if (context)
  {
    CGContextRelease(context);
  }

  v4.receiver = self;
  v4.super_class = _NSCGTextGraphicsContext;
  [(_NSCGTextGraphicsContext *)&v4 dealloc];
}

+ (id)graphicsContextForApplicationFrameworkContext:(int64_t)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromClass(a1);
  [v4 raise:v5 format:{@"+[%@ %@] should not be invoked.", v6, NSStringFromSelector(a2)}];
  return 0;
}

- (_NSCGTextGraphicsContext)initWithCGContext:(CGContext *)a3
{
  v7.receiver = self;
  v7.super_class = _NSCGTextGraphicsContext;
  v4 = [(_NSCGTextGraphicsContext *)&v7 init];
  v5 = v4;
  if (a3 && v4)
  {
    v4->_context = CGContextRetain(a3);
  }

  return v5;
}

- (void)saveGraphicsState
{
  context = self->_context;
  if (context)
  {
    CGContextSaveGState(context);
  }
}

- (void)restoreGraphicsState
{
  context = self->_context;
  if (context)
  {
    CGContextRestoreGState(context);
  }
}

- (void)becomeCurrentGraphicsContextDuringBlock:(id)a3
{
  context = self->_context;
  v5 = [(_NSCGTextGraphicsContext *)self isFlipped];

  setCurrentCGContextDuringBlock_iOS(context, v5, a3);
}

@end