@interface TSCH3DRenderProcessor
+ (id)processor;
+ (void)initialize;
- (RenderHints)renderHints;
- (RenderState)renderState;
@end

@implementation TSCH3DRenderProcessor

+ (void)initialize
{
  if (qword_280A46810 != -1)
  {
    sub_2764A6A34();
  }
}

+ (id)processor
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (RenderState)renderState
{
  retstr->blendState = 0;
  *&retstr->depthState.depthTest = 16843008;
  retstr->polygonOffset = 0;
  *&retstr->polygonOffsetFactor = 0;
  retstr->enableClipDistances = 0;
  return self;
}

- (RenderHints)renderHints
{
  *(v2 + 8) = 0;
  *v2 = 0;
  result.var0.var1.var1.var0 = a2;
  *&result.var0.var0 = self;
  return result;
}

@end