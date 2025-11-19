@interface TSCH3DRenderPipeline
+ (id)clipRectForTargetSize:(void *)a3 intermediateSize:(void *)a4;
+ (id)pipelineWithProcessor:(id)a3 session:(id)a4;
- (TSCH3DContext)context;
- (TSCH3DRenderPipeline)initWithProcessor:(id)a3 session:(id)a4;
@end

@implementation TSCH3DRenderPipeline

+ (id)clipRectForTargetSize:(void *)a3 intermediateSize:(void *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = *a4;
  v9 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec4DataBuffer, a2, v4, v5, v6, 0);
  v14 = objc_msgSend_container(v9, v10, v11, v12, v13);
  v31 = xmmword_2764D6070;
  v33 = 0xBF80000000000000;
  v34 = 1065353216;
  v15 = vdiv_f32(vcvt_f32_s32(v7), vcvt_f32_s32(v8));
  v32 = v15.i32[0];
  __asm { FMOV            V1.2S, #-1.0 }

  v35[0] = v15;
  *&v35[1] = -_D1;
  v36[0] = 0;
  v36[1] = v15.i32[1];
  v37 = -_D1;
  sub_276161E1C(v14, &v31);
  sub_276161E1C(v14, &v32);
  sub_276161E1C(v14, v36);
  sub_276161E1C(v14, &v32);
  sub_276161E1C(v14, v35);
  sub_276161E1C(v14, v36);
  v25 = objc_msgSend_resource(TSCH3DDataBufferResource, v21, v22, v23, v24);
  objc_msgSend_setBuffer_(v25, v26, v27, v28, v29, v9);

  return v25;
}

+ (id)pipelineWithProcessor:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithProcessor_session_(v8, v9, v10, v11, v12, v6, v7);

  return v13;
}

- (TSCH3DRenderPipeline)initWithProcessor:(id)a3 session:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TSCH3DRenderPipeline;
  v9 = [(TSCH3DRenderPipeline *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_processor, a3);
    objc_storeStrong(&v10->_session, a4);
  }

  return v10;
}

- (TSCH3DContext)context
{
  v5 = objc_msgSend_session(self, a2, v2, v3, v4);
  v10 = objc_msgSend_context(v5, v6, v7, v8, v9);

  return v10;
}

@end