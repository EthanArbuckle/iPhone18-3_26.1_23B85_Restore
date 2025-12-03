@interface TSDSwatchRenderingResult
+ (id)renderingResultWithForeground:(CGImage *)foreground background:(CGImage *)background;
- (void)dealloc;
@end

@implementation TSDSwatchRenderingResult

+ (id)renderingResultWithForeground:(CGImage *)foreground background:(CGImage *)background
{
  v6 = objc_alloc_init(TSDSwatchRenderingResult);
  v6->foreground = CGImageRetain(foreground);
  v6->background = CGImageRetain(background);
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