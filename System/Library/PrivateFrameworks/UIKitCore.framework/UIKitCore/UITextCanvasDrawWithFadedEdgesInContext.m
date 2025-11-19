@interface UITextCanvasDrawWithFadedEdgesInContext
@end

@implementation UITextCanvasDrawWithFadedEdgesInContext

void ___UITextCanvasDrawWithFadedEdgesInContext_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C8]);
  *components = xmmword_18A680368;
  v3 = unk_18A680378;
  v1 = xmmword_18A64B720;
  _UITextCanvasDrawWithFadedEdgesInContext_leftFadeGradient = CGGradientCreateWithColorComponents(v0, components, &v1, 2uLL);
  CGColorSpaceRelease(v0);
}

@end