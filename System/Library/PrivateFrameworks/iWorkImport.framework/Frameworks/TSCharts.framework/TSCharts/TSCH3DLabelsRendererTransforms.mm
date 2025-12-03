@interface TSCH3DLabelsRendererTransforms
+ (id)transforms;
- (id).cxx_construct;
- (id)accessor;
- (tvec3<float>)projectPoint:(void *)point;
- (tvec3<float>)samples;
- (void)p_projector;
- (void)p_stageToWorld;
- (void)resetWithScene:(id)scene camera:(id)camera;
- (void)unitToWorld;
- (void)worldToStage;
@end

@implementation TSCH3DLabelsRendererTransforms

+ (id)transforms
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)resetWithScene:(id)scene camera:(id)camera
{
  sceneCopy = scene;
  cameraCopy = camera;
  objc_msgSend_setScene_(self, v8, v9, v10, v11, sceneCopy);
  objc_msgSend_setCamera_(self, v12, v13, v14, v15, cameraCopy);
  p_validBits = &self->_validBits;
  v17 = 0;
  sub_27635C4F0(&p_validBits, 5uLL);
}

- (id)accessor
{
  if (!self->_scene)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelsRendererTransforms accessor]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRendererTransforms.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 67, 0, "invalid nil value for '%{public}s'", "_scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  p_validBits = &self->_validBits;
  v32 = 0;
  first = self->_validBits.__first_;
  v33 = self->_validBits.__first_ & 1;
  if ((first & 1) == 0)
  {
    v22 = [TSCH3DChartScenePropertyAccessor alloc];
    v27 = objc_msgSend_initWithScene_(v22, v23, v24, v25, v26, self->_scene);
    accessor = self->_accessor;
    self->_accessor = v27;
  }

  v29 = self->_accessor;
  sub_27635BCB8(&p_validBits);

  return v29;
}

- (void)p_stageToWorld
{
  p_validBits = &self->_validBits;
  v39 = 1;
  first = self->_validBits.__first_;
  v40 = (first & 2) != 0;
  if ((first & 2) == 0)
  {
    v7 = objc_msgSend_accessor(self, a2, v2, v3, v4);
    v12 = v7;
    if (v7)
    {
      objc_msgSend_transform(v7, v8, v9, v10, v11);
      objc_msgSend_stageTransform(v12, v13, v14, v15, v16);
    }

    else
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DLabelsRendererTransforms p_stageToWorld]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRendererTransforms.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 80, 0, "invalid nil value for '%{public}s'", "accessor");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
      memset(v36, 0, sizeof(v36));
      memset(v35, 0, sizeof(v35));
    }

    sub_2761558A0(v36, v35, v37);
    v32 = v37[1];
    self->_stageToWorld.value[0] = v37[0];
    self->_stageToWorld.value[1] = v32;
    v33 = v37[3];
    self->_stageToWorld.value[2] = v37[2];
    self->_stageToWorld.value[3] = v33;
  }

  sub_27635BCB8(&p_validBits);
  return &self->_stageToWorld;
}

- (void)worldToStage
{
  p_validBits = &self->_validBits;
  v14 = 2;
  first = self->_validBits.__first_;
  v15 = (first & 4) != 0;
  if ((first & 4) == 0)
  {
    v7 = objc_msgSend_p_stageToWorld(self, a2, v2, v3, v4);
    sub_276154C0C(v7, v12, v8);
    v9 = v12[1];
    self->_worldToStage.value[0] = v12[0];
    self->_worldToStage.value[1] = v9;
    v10 = v12[3];
    self->_worldToStage.value[2] = v12[2];
    self->_worldToStage.value[3] = v10;
  }

  sub_27635BCB8(&p_validBits);
  return &self->_worldToStage;
}

- (void)unitToWorld
{
  p_validBits = &self->_validBits;
  v43 = 3;
  first = self->_validBits.__first_;
  v44 = (first & 8) != 0;
  if ((first & 8) == 0)
  {
    v8 = objc_msgSend_accessor(self, a2, v2, v3, v4);
    if (!v8)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DLabelsRendererTransforms unitToWorld]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRendererTransforms.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 98, 0, "invalid nil value for '%{public}s'", "accessor");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    }

    v28 = objc_msgSend_p_stageToWorld(self, v7, v9, v10, v11);
    if (v8)
    {
      objc_msgSend_stageScale(v8, v27, v29, v30, v31);
      v33 = v39;
      v32 = v40;
      v34 = v41;
    }

    else
    {
      v34 = 0.0;
      v32 = 0.0;
      v33 = 0.0;
    }

    v35 = vmulq_n_f32(*(v28 + 16), v32);
    v36 = *(v28 + 48);
    v37 = vmulq_n_f32(*(v28 + 32), v34);
    self->_unitToWorld.value[0] = vmulq_n_f32(*v28, v33);
    self->_unitToWorld.value[1] = v35;
    self->_unitToWorld.value[2] = v37;
    self->_unitToWorld.value[3] = v36;
  }

  sub_27635BCB8(&p_validBits);
  return &self->_unitToWorld;
}

- (tvec3<float>)samples
{
  v6 = v2;
  v7 = objc_msgSend_viewportSamples(self->_camera, a2, v3, v4, v5);
  *v6 = v9;
  v6[1] = v9;
  v6[2] = 1065353216;
  result.var0 = v7;
  result.var1 = *(&v7 + 4);
  result.var2 = v8;
  return result;
}

- (void)p_projector
{
  p_validBits = &self->_validBits;
  v44 = 4;
  first = self->_validBits.__first_;
  v45 = (first & 0x10) != 0;
  if ((first & 0x10) == 0)
  {
    objc_msgSend_samples(self, a2, v2, v3, v4);
    objc_msgSend_samples(self, v7, v8, v9, v10);
    LODWORD(v14) = v41.i32[1];
    if (v42[0].f32[0] != v41.f32[1])
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v14, v12, v13, "[TSCH3DLabelsRendererTransforms p_projector]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRendererTransforms.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 112, 0, "samples must be the same in both dimensions");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }

    camera = self->_camera;
    objc_msgSend_samples(self, v11, v14, v12, v13);
    if (camera)
    {
      LODWORD(v33) = 1.0;
      *&v32 = 1.0 / v40;
      objc_msgSend_modelViewViewportProjectionWithViewportScale_(camera, v31, v32, v33, v34);
    }

    else
    {
      v35 = 0.0;
      memset(&v41, 0, 64);
    }

    v36 = objc_msgSend_unitToWorld(self, v31, v35, v33, v34);
    sub_2761558A0(&v41, v36, v42);
    v37 = v42[1];
    self->_projector.value[0] = v42[0];
    self->_projector.value[1] = v37;
    v38 = v42[3];
    self->_projector.value[2] = v42[2];
    self->_projector.value[3] = v38;
  }

  sub_27635BCB8(&p_validBits);
  return &self->_projector;
}

- (tvec3<float>)projectPoint:(void *)point
{
  v9 = v3;
  v10 = objc_msgSend_p_projector(self, a2, v4, v5, v6);
  v11 = *(point + 1);
  LODWORD(v12) = *(point + 2);
  *v13.i32 = v10[7].f32[1] + (((v11 * v10[3].f32[1]) + (v10[1].f32[1] * *point)) + (v10[5].f32[1] * *&v12));
  v14 = (v10[7].f32[0] + (((v11 * v10[3].f32[0]) + (v10[1].f32[0] * *point)) + (v10[5].f32[0] * *&v12))) / *v13.i32;
  v15 = vadd_f32(vdiv_f32(vadd_f32(v10[6], vmla_n_f32(vmla_n_f32(vmul_n_f32(v10[2], v11), *v10, *point), v10[4], *&v12)), vdup_lane_s32(v13, 0)), 0x3F0000003F000000);
  v16 = vrndm_f32(v15);
  v18 = objc_msgSend_samples(self, v17, *&v15, 0.0000305175853, v12);
  *v9 = vmul_f32(v20, v16);
  v9[1].f32[0] = v14 * v21;
  result.var0 = v18;
  result.var1 = *(&v18 + 4);
  result.var2 = v19;
  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 1065353216;
  *(self + 44) = 0;
  *(self + 36) = 0;
  *(self + 13) = 1065353216;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 18) = 1065353216;
  *(self + 84) = 0;
  *(self + 76) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(self + 92) = _D0;
  *(self + 108) = 0;
  *(self + 100) = 0;
  *(self + 29) = 1065353216;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 34) = 1065353216;
  *(self + 140) = 0;
  *(self + 148) = 0;
  *(self + 156) = _D0;
  *(self + 172) = 0;
  *(self + 164) = 0;
  *(self + 45) = 1065353216;
  *(self + 23) = 0;
  *(self + 24) = 0;
  *(self + 50) = 1065353216;
  *(self + 204) = 0;
  *(self + 212) = 0;
  *(self + 220) = _D0;
  *(self + 228) = 0;
  *(self + 236) = 0;
  *(self + 61) = 1065353216;
  *(self + 31) = 0;
  *(self + 32) = 0;
  *(self + 66) = 1065353216;
  *(self + 276) = 0;
  *(self + 268) = 0;
  *(self + 71) = 1065353216;
  *(self + 36) = 0;
  return self;
}

@end