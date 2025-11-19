@interface TSCH3DFramebufferGaussianBlurAndBlendPipeline
+ (id)effectsArray;
- (void)updateShaderEffectsStates;
@end

@implementation TSCH3DFramebufferGaussianBlurAndBlendPipeline

+ (id)effectsArray
{
  v22[3] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_effect(TSCH3DNoLightingVertexShaderEffect, a2, v2, v3, v4);
  v10 = objc_msgSend_effect(TSCH3DGaussianBlurShaderEffect, v6, v7, v8, v9, v5);
  v22[1] = v10;
  v15 = objc_msgSend_effect(TSCH3DTextureBlendShaderEffect, v11, v12, v13, v14);
  v22[2] = v15;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v17, v18, v19, v22, 3);

  return v20;
}

- (void)updateShaderEffectsStates
{
  v40.receiver = self;
  v40.super_class = TSCH3DFramebufferGaussianBlurAndBlendPipeline;
  [(TSCH3DFramebufferGaussianBlurPipeline *)&v40 updateShaderEffectsStates];
  processor = self->super.super.super.super.super._processor;
  v8 = objc_msgSend_variableTexture(TSCH3DTextureBlendShaderEffect, v4, v5, v6, v7);
  v13 = objc_msgSend_blendTexture(self, v9, v10, v11, v12);
  *v38 = 1;
  v39[0] = 0;
  *(v39 + 5) = 0;
  *&v38[7] = 0;
  v18 = objc_msgSend_texture_resource_attributes_(processor, v14, v15, v16, v17, v8, v13, v38);

  objc_msgSend_blendFactor(self, v19, v20, v21, v22);
  v24 = LODWORD(v23);
  v28 = objc_msgSend_processor(self, v25, v23, v26, v27);
  v33 = objc_msgSend_effectsStates(v28, v29, v30, v31, v32);
  LODWORD(v34) = v24;
  objc_msgSend_setBlendFactor_unit_effectsStates_(TSCH3DTextureBlendShaderEffect, v35, v34, v36, v37, v18, v33);
}

@end