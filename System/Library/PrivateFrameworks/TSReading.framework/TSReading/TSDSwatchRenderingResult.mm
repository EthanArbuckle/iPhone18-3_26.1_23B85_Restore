@interface TSDSwatchRenderingResult
+ (id)renderingResultWithForeground:(CGImage *)a3 background:(CGImage *)a4;
- (void)dealloc;
@end

@implementation TSDSwatchRenderingResult

+ (id)renderingResultWithForeground:(CGImage *)a3 background:(CGImage *)a4
{
  v6 = objc_alloc_init(TSDSwatchRenderingResult);
  v6->foreground = CGImageRetain(a3);
  v6->background = CGImageRetain(a4);
  return v6;
}

- (void)dealloc
{
  CGImageRelease(self->foreground);
  CGImageRelease(self->background);
  v3.receiver = self;
  v3.super_class = TSDSwatchRenderingResult;
  [(TSDSwatchRenderingResult *)&v3 dealloc];
}

@end