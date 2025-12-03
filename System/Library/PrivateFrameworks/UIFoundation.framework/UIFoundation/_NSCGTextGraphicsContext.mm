@interface _NSCGTextGraphicsContext
+ (id)graphicsContextForApplicationFrameworkContext:(int64_t)context;
- (_NSCGTextGraphicsContext)initWithCGContext:(CGContext *)context;
- (void)becomeCurrentGraphicsContextDuringBlock:(id)block;
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

+ (id)graphicsContextForApplicationFrameworkContext:(int64_t)context
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromClass(self);
  [v4 raise:v5 format:{@"+[%@ %@] should not be invoked.", v6, NSStringFromSelector(a2)}];
  return 0;
}

- (_NSCGTextGraphicsContext)initWithCGContext:(CGContext *)context
{
  v7.receiver = self;
  v7.super_class = _NSCGTextGraphicsContext;
  v4 = [(_NSCGTextGraphicsContext *)&v7 init];
  v5 = v4;
  if (context && v4)
  {
    v4->_context = CGContextRetain(context);
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

- (void)becomeCurrentGraphicsContextDuringBlock:(id)block
{
  context = self->_context;
  isFlipped = [(_NSCGTextGraphicsContext *)self isFlipped];

  setCurrentCGContextDuringBlock_iOS(context, isFlipped, block);
}

@end