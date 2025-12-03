@interface TSCH3DFramebufferCopyPipeline
- (RenderState)renderState;
- (TSCH3DFramebufferCopyPipeline)initWithProcessor:(id)processor session:(id)session;
- (box<glm::detail::tvec2<int>>)targetViewport;
- (id).cxx_construct;
- (tmat4x4<float>)transform;
- (tvec4<float>)wipeColor;
- (void)setRenderState:(RenderState *)state;
- (void)transformFramebuffer;
- (void)updateShaderEffectsStates;
@end

@implementation TSCH3DFramebufferCopyPipeline

- (TSCH3DFramebufferCopyPipeline)initWithProcessor:(id)processor session:(id)session
{
  v39[2] = *MEMORY[0x277D85DE8];
  processorCopy = processor;
  sessionCopy = session;
  v38.receiver = self;
  v38.super_class = TSCH3DFramebufferCopyPipeline;
  v9 = [(TSCH3DRenderPipeline *)&v38 initWithProcessor:processorCopy session:sessionCopy];
  if (v9)
  {
    v13 = objc_msgSend_effect(TSCH3DVertexShaderEffect, v8, v10, v11, v12);
    v39[0] = v13;
    v18 = objc_msgSend_effect(TSCH3DDiffuseTextureShaderEffect, v14, v15, v16, v17);
    v39[1] = v18;
    v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v20, v21, v22, v39, 2);
    v24 = *(v9 + 6);
    *(v9 + 6) = v23;

    v29 = objc_msgSend_normalized3D(TSCH3DQuadResource, v25, v26, v27, v28);
    v30 = *(v9 + 7);
    *(v9 + 7) = v29;

    v35 = objc_msgSend_normalized4D(TSCH3DQuadResource, v31, v32, v33, v34);
    v36 = *(v9 + 8);
    *(v9 + 8) = v35;

    *(v9 + 40) = 256;
    v9[72] = 0;
    *(v9 + 26) = 1065353216;
    *(v9 + 108) = 0;
    *(v9 + 116) = 0;
    *(v9 + 31) = 1065353216;
    *(v9 + 16) = 0;
    *(v9 + 17) = 0;
    *(v9 + 36) = 1065353216;
    *(v9 + 148) = 0;
    *(v9 + 156) = 0;
    *(v9 + 41) = 1065353216;
    *(v9 + 188) = 0;
    *(v9 + 196) = 0;
  }

  return v9;
}

- (void)transformFramebuffer
{
  v3 = self->super.super.super._processor;
  if (objc_msgSend_wipeTarget(self, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_activeFramebuffer(self->super.super.super._processor, v8, v9, v10, v11);
    isEqual = objc_msgSend_isEqual_(v12, v13, v14, v15, v16, self->super._target);

    if ((isEqual & 1) == 0)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCH3DFramebufferCopyPipeline transformFramebuffer]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFramebufferCopyPipeline.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 70, 0, "the framebuffer we want to wipe is not the active framebuffer");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    }

    objc_msgSend_wipeActiveFramebuffer_(self->super.super.super._processor, v18, v19, v20, v21, &self->_wipeColor);
  }

  else
  {
    objc_msgSend_resetClearBufferTypes(self->super._target, v8, v9, v10, v11);
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_276162C94;
  v40[3] = &unk_27A6B62C0;
  v40[4] = self;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorStateSession, v37, COERCE_DOUBLE(3221225472), v38, v39, v3, v40);
}

- (void)updateShaderEffectsStates
{
  WeakRetained = objc_loadWeakRetained(&self->super._input);

  if (!WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DFramebufferCopyPipeline updateShaderEffectsStates]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFramebufferCopyPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 98, 0, "invalid nil value for '%{public}s'", "_input");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  processor = self->super.super.super._processor;
  v24 = objc_msgSend_variableTexture(TSCH3DDiffuseTextureShaderEffect, v4, v5, v6, v7);
  v25 = objc_loadWeakRetained(&self->super._input);
  *v47 = 1;
  v48[0] = 0;
  *(v48 + 5) = 0;
  *&v47[7] = 0;
  v30 = objc_msgSend_texture_resource_attributes_(processor, v26, v27, v28, v29, v24, v25, v47);

  v35 = objc_msgSend_effectsStates(self->super.super.super._processor, v31, v32, v33, v34);
  v40 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v36, v37, v38, v39, v30);
  v41 = objc_opt_class();
  objc_msgSend_setState_forStateInfo_(v35, v42, v43, v44, v45, v40, v41);

  objc_storeWeak(&self->super._input, 0);
  updateShaderEffectsStatesBlock = self->_updateShaderEffectsStatesBlock;
  if (updateShaderEffectsStatesBlock)
  {
    updateShaderEffectsStatesBlock[2]();
  }
}

- (RenderState)renderState
{
  v3 = *self[2].enableClipDistances.states.__elems_;
  *&retstr->blendState._blend = *&self[2].depthState.depthTest;
  *&retstr->polygonOffsetFactor = v3;
  return self;
}

- (void)setRenderState:(RenderState *)state
{
  v3 = *&state->polygonOffsetFactor;
  *&self->_renderState.blendState._blend = *&state->blendState._blend;
  *&self->_renderState.polygonOffsetFactor = v3;
}

- (tmat4x4<float>)transform
{
  v3 = *&self[1].value[3].var2.var0;
  retstr->value[0] = *&self[1].value[2].var2.var0;
  retstr->value[1] = v3;
  v4 = *&self[2].value[1].var2.var0;
  retstr->value[2] = *&self[2].value[0].var2.var0;
  retstr->value[3] = v4;
  return self;
}

- (box<glm::detail::tvec2<int>>)targetViewport
{
  *v2 = self->_targetViewport;
  result._max = a2;
  result._min = self;
  return result;
}

- (tvec4<float>)wipeColor
{
  *v2 = self->_wipeColor;
  result.var2 = a2;
  result.var3 = *(&a2 + 4);
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 20) = 16843008;
  *(self + 84) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 26) = 1065353216;
  *(self + 116) = 0;
  *(self + 108) = 0;
  *(self + 31) = 1065353216;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 36) = 1065353216;
  *(self + 156) = 0;
  *(self + 148) = 0;
  *(self + 41) = 1065353216;
  *(self + 168) = xmmword_2764D6090;
  *(self + 188) = 0;
  *(self + 196) = 0;
  return self;
}

@end