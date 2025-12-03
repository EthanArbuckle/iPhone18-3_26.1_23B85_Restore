@interface TSCH3DLabels2DQuadMeshRenderer
- (void)renderWithMeshRenderLabelInfo:(id)info;
@end

@implementation TSCH3DLabels2DQuadMeshRenderer

- (void)renderWithMeshRenderLabelInfo:(id)info
{
  infoCopy = info;
  v8 = objc_msgSend_renderer(infoCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_pipeline(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_processor(v13, v14, v15, v16, v17);

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_276218408;
  v25[3] = &unk_27A6B67A0;
  v19 = infoCopy;
  v26 = v19;
  v20 = v8;
  v27 = v20;
  objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorStateSession, v21, v22, v23, v24, v18, v25);
}

@end