@interface TSCH3DFramebufferOnepassBlurPipeline
+ (id)pipelineWithProcessor:(id)processor session:(id)session pixelSize:(void *)size;
- (TSCH3DFramebufferOnepassBlurPipeline)initWithProcessor:(id)processor session:(id)session pixelSize:(void *)size;
- (void)updateShaderEffectsStates;
@end

@implementation TSCH3DFramebufferOnepassBlurPipeline

+ (id)pipelineWithProcessor:(id)processor session:(id)session pixelSize:(void *)size
{
  processorCopy = processor;
  sessionCopy = session;
  v10 = [self alloc];
  v15 = objc_msgSend_initWithProcessor_session_pixelSize_(v10, v11, v12, v13, v14, processorCopy, sessionCopy, size);

  return v15;
}

- (TSCH3DFramebufferOnepassBlurPipeline)initWithProcessor:(id)processor session:(id)session pixelSize:(void *)size
{
  v29[2] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = TSCH3DFramebufferOnepassBlurPipeline;
  v6 = [(TSCH3DFramebufferCopyPipeline *)&v28 initWithProcessor:processor session:session];
  v11 = v6;
  if (v6)
  {
    v6->_pixelSize.var0.var0 = *size;
    LODWORD(v8) = *(size + 1);
    v6->_pixelSize.var1.var0 = *&v8;
    v12 = objc_msgSend_effect(TSCH3DNoLightingVertexShaderEffect, v7, v8, v9, v10);
    v29[0] = v12;
    v17 = objc_msgSend_effect(TSCH3DOnePassBlurShaderEffect, v13, v14, v15, v16);
    v29[1] = v17;
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v19, v20, v21, v29, 2);

    objc_msgSend_setEffects_(v11, v23, v24, v25, v26, v22);
  }

  return v11;
}

- (void)updateShaderEffectsStates
{
  v13.receiver = self;
  v13.super_class = TSCH3DFramebufferOnepassBlurPipeline;
  [(TSCH3DFramebufferCopyPipeline *)&v13 updateShaderEffectsStates];
  v7 = objc_msgSend_effectsStates(self->super.super.super.super._processor, v3, v4, v5, v6);
  v12 = objc_msgSend_stateSharingID(TSCH3DOnePassBlurShaderEffect, v8, v9, v10, v11);
  sub_2761AC2E4(v7, v12, &self->_pixelSize);
}

@end