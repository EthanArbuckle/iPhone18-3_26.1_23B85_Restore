@interface TSCH3DRetargetRenderProcessor
+ (id)processorWithOriginal:(id)a3;
- (BOOL)canRenderPrefilteredLines;
- (RenderHints)renderHints;
- (RenderState)renderState;
- (TSCH3DRetargetRenderProcessor)initWithOriginal:(id)a3;
@end

@implementation TSCH3DRetargetRenderProcessor

+ (id)processorWithOriginal:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithOriginal_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCH3DRetargetRenderProcessor)initWithOriginal:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCH3DRetargetRenderProcessor;
  v6 = [(TSCH3DRetargetRenderProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_original, a3);
  }

  return v7;
}

- (RenderState)renderState
{
  result = self->_original;
  if (result)
  {
    return objc_msgSend_renderState(result, a3, v3, v4, v5);
  }

  retstr->blendState = 0;
  *&retstr->depthState.depthTest = 16843008;
  retstr->polygonOffset = 0;
  *&retstr->polygonOffsetFactor = 0;
  retstr->enableClipDistances = 0;
  return result;
}

- (RenderHints)renderHints
{
  original = self->_original;
  if (original)
  {
    original = (MEMORY[0x2821F9670])(original, sel_renderHints);
  }

  else
  {
    *(v2 + 8) = 0;
    *v2 = 0;
  }

  result.var0.var1.var1.var0 = a2;
  *&result.var0.var0 = original;
  return result;
}

- (BOOL)canRenderPrefilteredLines
{
  v5 = objc_msgSend_original(self, a2, v2, v3, v4);
  canRenderPrefilteredLines = objc_msgSend_canRenderPrefilteredLines(v5, v6, v7, v8, v9);

  return canRenderPrefilteredLines;
}

@end