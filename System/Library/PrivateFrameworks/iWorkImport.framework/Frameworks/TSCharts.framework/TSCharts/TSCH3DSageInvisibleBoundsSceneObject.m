@interface TSCH3DSageInvisibleBoundsSceneObject
- (id)effects;
- (void)get3PieceStageBounds:(id)a3;
- (void)getGridlineSelectionCatcherBounds:(id)a3;
- (void)renderBounds:(id)a3;
@end

@implementation TSCH3DSageInvisibleBoundsSceneObject

- (void)get3PieceStageBounds:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_scene(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v9, v10, v11, v12, v8);

  if (v13)
  {
    objc_msgSend_stageScale(v13, v14, v15, v16, v17);
    v18 = v24;
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_msgSend_processor(v3, v14, v15, v16, v17);
  v24 = v18;
  v25 = 1084227584;
  objc_msgSend_performBlockWithProcessor_scale_block_(TSCH3DRenderProcessorScaleSession, v20, v21, v22, v23, v19, &v24, &unk_28851D078);
}

- (void)getGridlineSelectionCatcherBounds:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_processor(v3, v4, v5, v6, v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2761C1934;
  v14[3] = &unk_27A6B62C0;
  v9 = v3;
  v15 = v9;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v10, v11, v12, v13, v8, v14);
}

- (void)renderBounds:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_processor(v4, v5, v6, v7, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2761C1FF8;
  v15[3] = &unk_27A6B67A0;
  v10 = v4;
  v16 = v10;
  v17 = self;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorMatrixSession, v11, v12, v13, v14, v9, v15);
}

- (id)effects
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_effect(TSCH3DVertexShaderEffect, a2, v2, v3, v4);
  v17[0] = v5;
  v10 = objc_msgSend_effect(TSCH3DColorShaderEffect, v6, v7, v8, v9);
  v17[1] = v10;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v17, 2);

  return v15;
}

@end