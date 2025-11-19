@interface _NSUIKitTextGraphicsContext
+ (_NSUIKitTextGraphicsContext)sharedContext;
+ (id)graphicsContextForApplicationFrameworkContext:(int64_t)a3;
- (void)restoreGraphicsState;
- (void)saveGraphicsState;
@end

@implementation _NSUIKitTextGraphicsContext

+ (_NSUIKitTextGraphicsContext)sharedContext
{
  if (sharedContext_once != -1)
  {
    +[_NSUIKitTextGraphicsContext sharedContext];
  }

  return sharedContext_sharedContext;
}

+ (id)graphicsContextForApplicationFrameworkContext:(int64_t)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromClass(a1);
  [v4 raise:v5 format:{@"+[%@ %@] should not be invoked.", v6, NSStringFromSelector(a2)}];
  return 0;
}

- (void)saveGraphicsState
{
  if (softLinkUIGraphicsGetCurrentContext[0]())
  {
    v2 = softLinkUIGraphicsGetCurrentContext[0]();

    CGContextSaveGState(v2);
  }
}

- (void)restoreGraphicsState
{
  if (softLinkUIGraphicsGetCurrentContext[0]())
  {
    v2 = softLinkUIGraphicsGetCurrentContext[0]();

    CGContextRestoreGState(v2);
  }
}

@end