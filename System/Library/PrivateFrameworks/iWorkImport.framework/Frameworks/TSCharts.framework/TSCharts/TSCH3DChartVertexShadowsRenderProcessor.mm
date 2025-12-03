@interface TSCH3DChartVertexShadowsRenderProcessor
- (TSCH3DChartVertexShadowsRenderProcessor)init;
- (id)p_effects;
- (int64_t)attribute:(id)attribute resource:(id)resource specs:(const AttributeSpecs *)specs;
- (void)submit:(id)submit;
@end

@implementation TSCH3DChartVertexShadowsRenderProcessor

- (id)p_effects
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_effect(TSCH3DNoLightingVertexShaderEffect, a2, v2, v3, v4);
  v17[0] = v5;
  v10 = objc_msgSend_effect(TSCH3DChartShadowsShaderEffect, v6, v7, v8, v9);
  v17[1] = v10;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v17, 2);

  return v15;
}

- (TSCH3DChartVertexShadowsRenderProcessor)init
{
  v11.receiver = self;
  v11.super_class = TSCH3DChartVertexShadowsRenderProcessor;
  v2 = [(TSCH3DRetargetRenderProcessor *)&v11 init];
  v7 = v2;
  if (v2)
  {
    v8 = objc_msgSend_p_effects(v2, v3, v4, v5, v6);
    shadowsEffects = v7->_shadowsEffects;
    v7->_shadowsEffects = v8;
  }

  return v7;
}

- (int64_t)attribute:(id)attribute resource:(id)resource specs:(const AttributeSpecs *)specs
{
  attributeCopy = attribute;
  resourceCopy = resource;
  if (qword_280A46550 == attributeCopy)
  {
    v12.receiver = self;
    v12.super_class = TSCH3DChartVertexShadowsRenderProcessor;
    v10 = [(TSCH3DRetargetRenderProcessor *)&v12 attribute:attributeCopy resource:resourceCopy specs:specs];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (void)submit:(id)submit
{
  submitCopy = submit;
  v9 = objc_msgSend_effects(self, v5, v6, v7, v8);
  objc_msgSend_resetToArray_(v9, v10, v11, v12, v13, self->_shadowsEffects);

  v14.receiver = self;
  v14.super_class = TSCH3DChartVertexShadowsRenderProcessor;
  [(TSCH3DRetargetRenderProcessor *)&v14 submit:submitCopy];
}

@end