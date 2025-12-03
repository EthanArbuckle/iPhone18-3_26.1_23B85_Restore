@interface TSCH3DCombinationRenderProcessor
+ (id)processorWithOriginal:(id)original enableTypes:(id)types;
- (RenderState)renderState;
- (TSCH3DCombinationRenderProcessor)initWithOriginal:(id)original;
- (TSCH3DCombinationRenderProcessor)initWithOriginal:(id)original enableTypes:(id)types;
- (TSCH3DShaderEffectsStates)currentEffectsStates;
- (id).cxx_construct;
- (id)effects;
- (id)effectsStates;
- (void)copyProjectionInto:(void *)into;
- (void)copyTransformInto:(void *)into;
- (void)multiply:(void *)multiply;
- (void)popMatrix;
- (void)popRenderState;
- (void)popState;
- (void)projection:(void *)projection;
- (void)pushMatrix;
- (void)pushRenderState;
- (void)pushState;
- (void)replace:(void *)replace;
- (void)resetBuffers;
- (void)resetTransformChangeFlags;
- (void)scale:(void *)scale;
- (void)setRenderState:(const void *)state;
- (void)translate:(void *)translate;
@end

@implementation TSCH3DCombinationRenderProcessor

+ (id)processorWithOriginal:(id)original enableTypes:(id)types
{
  originalCopy = original;
  typesCopy = types;
  v8 = [self alloc];
  v13 = objc_msgSend_initWithOriginal_enableTypes_(v8, v9, v10, v11, v12, originalCopy, typesCopy);

  return v13;
}

- (TSCH3DCombinationRenderProcessor)initWithOriginal:(id)original
{
  originalCopy = original;
  v9 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v5, v6, v7, v8, 0, 4);
  v14 = objc_msgSend_initWithOriginal_enableTypes_(self, v10, v11, v12, v13, originalCopy, v9);

  return v14;
}

- (TSCH3DCombinationRenderProcessor)initWithOriginal:(id)original enableTypes:(id)types
{
  v35[1] = *MEMORY[0x277D85DE8];
  originalCopy = original;
  typesCopy = types;
  v34.receiver = self;
  v34.super_class = TSCH3DCombinationRenderProcessor;
  v9 = [(TSCH3DRetargetRenderProcessor *)&v34 initWithOriginal:originalCopy];
  if (v9)
  {
    v13 = objc_msgSend_copy(typesCopy, v8, v10, v11, v12);
    enabled = v9->_enabled;
    v9->_enabled = v13;

    if (objc_msgSend_containsIndex_(v9->_enabled, v15, v16, v17, v18, 2))
    {
      v19 = objc_alloc_init(TSCH3DShaderEffects);
      effects = v9->_effects;
      v9->_effects = v19;

      v21 = objc_alloc_init(TSCH3DShaderEffectsStates);
      v35[0] = v21;
      v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v23, v24, v25, v35, 1);
      v31 = objc_msgSend_mutableCopy(v26, v27, v28, v29, v30);
      effectsStatesStack = v9->_effectsStatesStack;
      v9->_effectsStatesStack = v31;
    }
  }

  return v9;
}

- (void)resetTransformChangeFlags
{
  if (objc_msgSend_matrixEnabled(self, a2, v2, v3, v4))
  {
    self->_transformChanged = 0;
    self->_projectionChanged = 0;
  }
}

- (void)copyProjectionInto:(void *)into
{
  if (objc_msgSend_matrixEnabled(self, a2, v3, v4, v5))
  {
    v12 = objc_msgSend_projectionTransform(self, v8, v9, v10, v11);
    *into = *v12;
    *(into + 1) = v12[1];
    *(into + 2) = v12[2];
    *(into + 3) = v12[3];
    *(into + 4) = v12[4];
    *(into + 5) = v12[5];
    *(into + 6) = v12[6];
    *(into + 7) = v12[7];
    *(into + 8) = v12[8];
    *(into + 9) = v12[9];
    *(into + 10) = v12[10];
    *(into + 11) = v12[11];
    *(into + 12) = v12[12];
    *(into + 13) = v12[13];
    *(into + 14) = v12[14];
    *(into + 15) = v12[15];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TSCH3DCombinationRenderProcessor;
    [(TSCH3DRetargetRenderProcessor *)&v13 copyProjectionInto:into];
  }
}

- (void)copyTransformInto:(void *)into
{
  if (objc_msgSend_matrixEnabled(self, a2, v3, v4, v5))
  {
    v12 = objc_msgSend_currentTransform(self, v8, v9, v10, v11);
    *into = *v12;
    *(into + 1) = v12[1];
    *(into + 2) = v12[2];
    *(into + 3) = v12[3];
    *(into + 4) = v12[4];
    *(into + 5) = v12[5];
    *(into + 6) = v12[6];
    *(into + 7) = v12[7];
    *(into + 8) = v12[8];
    *(into + 9) = v12[9];
    *(into + 10) = v12[10];
    *(into + 11) = v12[11];
    *(into + 12) = v12[12];
    *(into + 13) = v12[13];
    *(into + 14) = v12[14];
    *(into + 15) = v12[15];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TSCH3DCombinationRenderProcessor;
    [(TSCH3DRetargetRenderProcessor *)&v13 copyTransformInto:into];
  }
}

- (void)replace:(void *)replace
{
  if (objc_msgSend_matrixEnabled(self, a2, v3, v4, v5))
  {
    self->_transformChanged = 1;
    self->_transformStack._current.value[0].var0.var0 = *replace;
    self->_transformStack._current.value[0].var1.var0 = *(replace + 1);
    self->_transformStack._current.value[0].var2.var0 = *(replace + 2);
    self->_transformStack._current.value[0].var3.var0 = *(replace + 3);
    self->_transformStack._current.value[1].var0.var0 = *(replace + 4);
    self->_transformStack._current.value[1].var1.var0 = *(replace + 5);
    self->_transformStack._current.value[1].var2.var0 = *(replace + 6);
    self->_transformStack._current.value[1].var3.var0 = *(replace + 7);
    self->_transformStack._current.value[2].var0.var0 = *(replace + 8);
    self->_transformStack._current.value[2].var1.var0 = *(replace + 9);
    self->_transformStack._current.value[2].var2.var0 = *(replace + 10);
    self->_transformStack._current.value[2].var3.var0 = *(replace + 11);
    self->_transformStack._current.value[3].var0.var0 = *(replace + 12);
    self->_transformStack._current.value[3].var1.var0 = *(replace + 13);
    self->_transformStack._current.value[3].var2.var0 = *(replace + 14);
    self->_transformStack._current.value[3].var3.var0 = *(replace + 15);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TSCH3DCombinationRenderProcessor;
    [(TSCH3DRetargetRenderProcessor *)&v8 replace:replace];
  }
}

- (void)multiply:(void *)multiply
{
  if (objc_msgSend_matrixEnabled(self, a2, v3, v4, v5))
  {
    self->_transformChanged = 1;
    p_transformStack = &self->_transformStack;
    sub_2761558A0(&p_transformStack->_current, multiply, v12);
    v9 = v12[1];
    p_transformStack->_current.value[0] = v12[0];
    p_transformStack->_current.value[1] = v9;
    v10 = v12[3];
    p_transformStack->_current.value[2] = v12[2];
    p_transformStack->_current.value[3] = v10;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TSCH3DCombinationRenderProcessor;
    [(TSCH3DRetargetRenderProcessor *)&v11 multiply:multiply];
  }
}

- (void)scale:(void *)scale
{
  if (objc_msgSend_matrixEnabled(self, a2, v3, v4, v5))
  {
    self->_transformChanged = 1;
    *v8.i32 = *scale * 0.0;
    v13[0] = *scale;
    v13[1] = v8.i32[0];
    v13[2] = v8.i32[0];
    v13[3] = v8.i32[0];
    v9 = *(scale + 4);
    *v8.i8 = vmul_f32(v9, 0);
    v14 = vzip1_s32(*v8.i8, v9);
    v15 = vzip1q_s32(v8, v8);
    v16 = vzip2_s32(v9, *v8.i8);
    v17 = xmmword_2764D5F20;
    p_transformStack = &self->_transformStack;
    sub_2761558A0(&p_transformStack->_current, v13, v19);
    v11 = v19[1];
    p_transformStack->_current.value[0] = v19[0];
    p_transformStack->_current.value[1] = v11;
    v12 = v19[3];
    p_transformStack->_current.value[2] = v19[2];
    p_transformStack->_current.value[3] = v12;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = TSCH3DCombinationRenderProcessor;
    [(TSCH3DRetargetRenderProcessor *)&v18 scale:scale];
  }
}

- (void)translate:(void *)translate
{
  if (objc_msgSend_matrixEnabled(self, a2, v3, v4, v5))
  {
    self->_transformChanged = 1;
    v14 = 1065353216;
    v16 = 0;
    v15 = 0;
    v17 = 1065353216;
    v18 = 0;
    v19 = 0;
    v9.i64[0] = *translate;
    *&v9.u32[2] = vmul_f32(*translate, 0);
    *v8.f32 = vrev64_s32(*&v9.u32[2]);
    v8.i32[3] = 0;
    v10 = vaddq_f32(v9, vdupq_lane_s64(v8.i64[0], 0));
    v9.i32[3] = *(translate + 2);
    v10.i32[3] = vmulq_f32(v9, v8).i32[3];
    v20 = 1065353216;
    v21 = vaddq_f32(vaddq_f32(vzip2q_s32(vtrn2q_s32(v10, v9), vrev64q_s32(v10)), v10), xmmword_2764D5F20);
    p_transformStack = &self->_transformStack;
    sub_2761558A0(&p_transformStack->_current, &v14, v23);
    v12 = v23[1];
    p_transformStack->_current.value[0] = v23[0];
    p_transformStack->_current.value[1] = v12;
    v13 = v23[3];
    p_transformStack->_current.value[2] = v23[2];
    p_transformStack->_current.value[3] = v13;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TSCH3DCombinationRenderProcessor;
    [(TSCH3DRetargetRenderProcessor *)&v22 translate:translate];
  }
}

- (void)pushMatrix
{
  if (objc_msgSend_matrixEnabled(self, a2, v2, v3, v4))
  {

    sub_27615F788(&self->_transformStack, v6, v7, v8, v9);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TSCH3DCombinationRenderProcessor;
    [(TSCH3DRetargetRenderProcessor *)&v10 pushMatrix];
  }
}

- (void)popMatrix
{
  if (objc_msgSend_matrixEnabled(self, a2, v2, v3, v4))
  {
    self->_transformChanged = 1;

    sub_27615F8AC(&self->_transformStack, v6, v7, v8, v9);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TSCH3DCombinationRenderProcessor;
    [(TSCH3DRetargetRenderProcessor *)&v10 popMatrix];
  }
}

- (void)projection:(void *)projection
{
  if (objc_msgSend_matrixEnabled(self, a2, v3, v4, v5))
  {
    self->_projectionChanged = 1;
    self->_projection.value[0].var0.var0 = *projection;
    self->_projection.value[0].var1.var0 = *(projection + 1);
    self->_projection.value[0].var2.var0 = *(projection + 2);
    self->_projection.value[0].var3.var0 = *(projection + 3);
    self->_projection.value[1].var0.var0 = *(projection + 4);
    self->_projection.value[1].var1.var0 = *(projection + 5);
    self->_projection.value[1].var2.var0 = *(projection + 6);
    self->_projection.value[1].var3.var0 = *(projection + 7);
    self->_projection.value[2].var0.var0 = *(projection + 8);
    self->_projection.value[2].var1.var0 = *(projection + 9);
    self->_projection.value[2].var2.var0 = *(projection + 10);
    self->_projection.value[2].var3.var0 = *(projection + 11);
    self->_projection.value[3].var0.var0 = *(projection + 12);
    self->_projection.value[3].var1.var0 = *(projection + 13);
    self->_projection.value[3].var2.var0 = *(projection + 14);
    self->_projection.value[3].var3.var0 = *(projection + 15);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TSCH3DCombinationRenderProcessor;
    [(TSCH3DRetargetRenderProcessor *)&v8 projection:projection];
  }
}

- (void)pushState
{
  if (objc_msgSend_objectStateEnabled(self, a2, v2, v3, v4))
  {
    sub_2761606C0(&self->_objectStateStack, v6, v7, v8, v9);
    v28 = objc_msgSend_effectsStatesStack(self, v10, v11, v12, v13);
    v18 = objc_msgSend_currentEffectsStates(self, v14, v15, v16, v17);
    v23 = objc_msgSend_copy(v18, v19, v20, v21, v22);
    objc_msgSend_addObject_(v28, v24, v25, v26, v27, v23);
  }

  else
  {
    v29.receiver = self;
    v29.super_class = TSCH3DCombinationRenderProcessor;
    [(TSCH3DRetargetRenderProcessor *)&v29 pushState];
  }
}

- (void)popState
{
  if (objc_msgSend_objectStateEnabled(self, a2, v2, v3, v4))
  {
    sub_2761608D0(&self->_objectStateStack, v6, v7, v8, v9);
    v18 = objc_msgSend_effectsStatesStack(self, v10, v11, v12, v13);
    objc_msgSend_removeLastObject(v18, v14, v15, v16, v17);
  }

  else
  {
    v19.receiver = self;
    v19.super_class = TSCH3DCombinationRenderProcessor;
    [(TSCH3DRetargetRenderProcessor *)&v19 popState];
  }
}

- (void)resetBuffers
{
  if (objc_msgSend_objectStateEnabled(self, a2, v2, v3, v4))
  {

    sub_276160A80(&self->_objectStateStack._current);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TSCH3DCombinationRenderProcessor;
    [(TSCH3DRetargetRenderProcessor *)&v6 resetBuffers];
  }
}

- (id)effects
{
  if (objc_msgSend_shaderEnabled(self, a2, v2, v3, v4))
  {
    v6 = self->_effects;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)effectsStates
{
  if (objc_msgSend_shaderEnabled(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_currentEffectsStates(self, v6, v7, v8, v9);

    if (!v10)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DCombinationRenderProcessor effectsStates]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DCombinationRenderProcessor.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 237, 0, "invalid nil value for '%{public}s'", "self.currentEffectsStates");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }

    v30 = objc_msgSend_currentEffectsStates(self, v11, v12, v13, v14);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (TSCH3DShaderEffectsStates)currentEffectsStates
{
  v5 = objc_msgSend_effectsStatesStack(self, a2, v2, v3, v4);
  v10 = objc_msgSend_lastObject(v5, v6, v7, v8, v9);

  return v10;
}

- (RenderState)renderState
{
  result = objc_msgSend_renderStateEnabled(self, a3, v3, v4, v5);
  if (result)
  {
    v9 = *&self->_renderStateStack._current.polygonOffsetFactor;
    *&retstr->blendState._blend = *&self->_renderStateStack._current.blendState._blend;
    *&retstr->polygonOffsetFactor = v9;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TSCH3DCombinationRenderProcessor;
    return [(RenderState *)&v10 renderState];
  }

  return result;
}

- (void)setRenderState:(const void *)state
{
  if ((objc_msgSend_renderStateEnabled(self, a2, v3, v4, v5) & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = TSCH3DCombinationRenderProcessor;
    [(TSCH3DRetargetRenderProcessor *)&v9 setRenderState:state];
  }

  v8 = *(state + 1);
  *&self->_renderStateStack._current.blendState._blend = *state;
  *&self->_renderStateStack._current.polygonOffsetFactor = v8;
}

- (void)pushRenderState
{
  if (objc_msgSend_renderStateEnabled(self, a2, v2, v3, v4))
  {

    sub_276160DDC(&self->_renderStateStack, v6, v7, v8, v9);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TSCH3DCombinationRenderProcessor;
    [(TSCH3DRetargetRenderProcessor *)&v10 pushRenderState];
  }
}

- (void)popRenderState
{
  if (objc_msgSend_renderStateEnabled(self, a2, v2, v3, v4))
  {

    sub_276160F48(&self->_renderStateStack, v6, v7, v8, v9);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TSCH3DCombinationRenderProcessor;
    [(TSCH3DRetargetRenderProcessor *)&v10 popRenderState];
  }
}

- (id).cxx_construct
{
  sub_27615FAC8(&self->_transformStack);
  self->_projection.value[0].var0.var0 = 1.0;
  *&self->_projection.value[0].var3.var0 = 0;
  *&self->_projection.value[0].var1.var0 = 0;
  self->_projection.value[1].var1.var0 = 1.0;
  *&self->_projection.value[1].var2.var0 = 0;
  *&self->_projection.value[2].var0.var0 = 0;
  self->_projection.value[2].var2.var0 = 1.0;
  *&self->_projection.value[3].var1.var0 = 0;
  *&self->_projection.value[2].var3.var0 = 0;
  self->_projection.value[3].var3.var0 = 1.0;
  sub_276161C3C(&self->_objectStateStack._index);
  v3 = 1088;
  self->_renderStateStack._index = 0;
  self->_renderStateStack._current.blendState = 0;
  self->_renderStateStack._current.depthState.depthTest = 0;
  *&self->_renderStateStack._current.depthState.depthMask = 65793;
  *&self->_renderStateStack._current.polygonOffsetFactor = 0;
  self->_renderStateStack._current.enableClipDistances = 0;
  v4 = 320;
  do
  {
    v5 = self + v3;
    *(v5 + 5) = 0;
    *(v5 + 12) = 16843008;
    v5[52] = 0;
    v3 += 32;
    *(v5 + 7) = 0;
    *(v5 + 8) = 0;
    v4 -= 32;
  }

  while (v4);
  return self;
}

@end