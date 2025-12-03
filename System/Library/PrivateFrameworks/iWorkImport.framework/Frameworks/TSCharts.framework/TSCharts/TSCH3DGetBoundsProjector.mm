@interface TSCH3DGetBoundsProjector
- (TSCH3DGetBoundsProjector)init;
- (box<glm::detail::tvec3<float>>)projectBounds:(SEL)bounds type:(void *)type;
- (id).cxx_construct;
- (tvec3<float>)backProjectModelViewPoint:(void *)point;
- (void)dealloc;
- (void)reset;
- (void)resetTransformsForLayoutBounds;
- (void)resetTransformsForRenderBounds;
- (void)setCamera:(id)camera accessor:(id)accessor;
@end

@implementation TSCH3DGetBoundsProjector

- (TSCH3DGetBoundsProjector)init
{
  v8.receiver = self;
  v8.super_class = TSCH3DGetBoundsProjector;
  result = [(TSCH3DGetBoundsProjector *)&v8 init];
  if (result)
  {
    result->_modelView.value[0].var0.var0 = 1.0;
    *&result->_modelView.value[0].var3.var0 = 0;
    *&result->_modelView.value[0].var1.var0 = 0;
    result->_modelView.value[1].var1.var0 = 1.0;
    *&result->_modelView.value[1].var2.var0 = 0;
    *&result->_modelView.value[2].var0.var0 = 0;
    result->_modelView.value[2].var2.var0 = 1.0;
    *&result->_modelView.value[3].var1.var0 = 0;
    *&result->_modelView.value[2].var3.var0 = 0;
    result->_modelView.value[3].var3.var0 = 1.0;
    result->_projection.value[0].var0.var0 = 1.0;
    *&result->_projection.value[0].var3.var0 = 0;
    *&result->_projection.value[0].var1.var0 = 0;
    result->_projection.value[1].var1.var0 = 1.0;
    *&result->_projection.value[1].var2.var0 = 0;
    *&result->_projection.value[2].var0.var0 = 0;
    result->_projection.value[2].var2.var0 = 1.0;
    *&result->_projection.value[3].var1.var0 = 0;
    *&result->_projection.value[2].var3.var0 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *&result->_projection.value[3].var3.var0 = _D0;
    *&result->_MVP.value[0].var3.var0 = 0;
    *&result->_MVP.value[0].var1.var0 = 0;
    result->_MVP.value[1].var1.var0 = 1.0;
    *&result->_MVP.value[1].var2.var0 = 0;
    *&result->_MVP.value[2].var0.var0 = 0;
    result->_MVP.value[2].var2.var0 = 1.0;
    *&result->_MVP.value[2].var3.var0 = 0;
    *&result->_MVP.value[3].var1.var0 = 0;
    result->_MVP.value[3].var3.var0 = 1.0;
  }

  return result;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_camera);

  if (WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DGetBoundsProjector dealloc]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 75, 0, "expected nil value for '%{public}s'", "_camera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (self->_accessor)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DGetBoundsProjector dealloc]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 76, 0, "expected nil value for '%{public}s'", "_accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38.receiver = self;
  v38.super_class = TSCH3DGetBoundsProjector;
  [(TSCH3DGetBoundsProjector *)&v38 dealloc];
}

- (void)reset
{
  objc_storeWeak(&self->_camera, 0);
  accessor = self->_accessor;
  self->_accessor = 0;
}

- (void)setCamera:(id)camera accessor:(id)accessor
{
  obj = camera;
  accessorCopy = accessor;
  if (!accessorCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DGetBoundsProjector setCamera:accessor:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 85, 0, "invalid nil value for '%{public}s'", "accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_storeWeak(&self->_camera, obj);
  accessor = self->_accessor;
  self->_accessor = accessorCopy;
}

- (void)resetTransformsForLayoutBounds
{
  self->_useAggressiveBackProjection = 0;
  WeakRetained = objc_loadWeakRetained(&self->_camera);

  if (!WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DGetBoundsProjector resetTransformsForLayoutBounds]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 92, 0, "invalid nil value for '%{public}s'", "_camera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (!self->_accessor)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DGetBoundsProjector resetTransformsForLayoutBounds]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 93, 0, "invalid nil value for '%{public}s'", "_accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = objc_loadWeakRetained(&self->_camera);
  v43 = v38;
  if (v38)
  {
    objc_msgSend_normalizedProjection(v38, v39, v40, v41, v42);
    v44 = v75;
    v45 = v76;
    v46 = v77;
    v47 = v78;
  }

  else
  {
    v44 = 0;
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
  }

  self->_projection.value[0] = v44;
  self->_projection.value[1] = v45;
  self->_projection.value[2] = v46;
  self->_projection.value[3] = v47;

  v48 = objc_loadWeakRetained(&self->_camera);
  v53 = v48;
  if (v48)
  {
    objc_msgSend_space(v48, v49, v50, v51, v52);
  }

  else
  {
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
  }

  accessor = self->_accessor;
  if (accessor)
  {
    objc_msgSend_stageTransform(accessor, v54, v55, v56, v57);
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
  }

  sub_2761558A0(&v75, &v67, &v71);
  v61 = v72;
  self->_modelView.value[0] = v71;
  self->_modelView.value[1] = v61;
  v62 = *&v73.var0.var0;
  v63 = v74;
  self->_modelView.value[2] = v73;
  self->_modelView.value[3] = v63;
  v64 = self->_accessor;
  if (v64)
  {
    objc_msgSend_constantDepthStageTransform(v64, v59, v62, *&v63.var0.var0, v60);
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
  }

  sub_2761558A0(&v75, &v67, &v71);
  v65 = v72;
  self->_constantDepthModelView.value[0] = v71;
  self->_constantDepthModelView.value[1] = v65;
  v66 = v74;
  self->_constantDepthModelView.value[2] = v73;
  self->_constantDepthModelView.value[3] = v66;
}

- (void)resetTransformsForRenderBounds
{
  self->_useAggressiveBackProjection = 1;
  WeakRetained = objc_loadWeakRetained(&self->_camera);

  if (!WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DGetBoundsProjector resetTransformsForRenderBounds]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 103, 0, "invalid nil value for '%{public}s'", "_camera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (!self->_accessor)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DGetBoundsProjector resetTransformsForRenderBounds]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 104, 0, "invalid nil value for '%{public}s'", "_accessor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = objc_loadWeakRetained(&self->_camera);
  v43 = v38;
  if (v38)
  {
    objc_msgSend_normalizedProjection(v38, v39, v40, v41, v42);
    v44 = v87;
    v45 = v88;
    v46 = v89;
    v47 = v90;
  }

  else
  {
    v44 = 0;
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
  }

  self->_projection.value[0] = v44;
  self->_projection.value[1] = v45;
  self->_projection.value[2] = v46;
  self->_projection.value[3] = v47;

  v48 = objc_loadWeakRetained(&self->_camera);
  v53 = v48;
  if (v48)
  {
    objc_msgSend_space(v48, v49, v50, v51, v52);
  }

  else
  {
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
  }

  accessor = self->_accessor;
  if (accessor)
  {
    objc_msgSend_transform(accessor, v54, v55, v56, v57);
  }

  else
  {
    memset(v76, 0, sizeof(v76));
  }

  *&v60 = sub_2761558A0(&v87, v76, v77).u64[0];
  v63 = self->_accessor;
  if (v63)
  {
    objc_msgSend_stageTransform(v63, v59, v60, v61, v62);
  }

  else
  {
    memset(v75, 0, sizeof(v75));
  }

  sub_2761558A0(v77, v75, &v78);
  v64 = v78.i64[0];
  *&self->_modelView.value[0].var0.var0 = v78.i64[0];
  v65 = v78.i64[1];
  *&self->_modelView.value[0].var2.var0 = v78.i64[1];
  v66 = v79;
  v67 = v80;
  self->_modelView.value[1].var0.var0 = v79;
  self->_modelView.value[1].var1.var0 = v67;
  v68 = v81;
  v69 = v82;
  self->_modelView.value[1].var2.var0 = v81;
  self->_modelView.value[1].var3.var0 = v69;
  v70 = v83;
  v71 = v84;
  self->_modelView.value[2].var0.var0 = v83;
  self->_modelView.value[2].var1.var0 = v71;
  self->_constantDepthModelView.value[0].var1.var0 = *(&v64 + 1);
  *&self->_constantDepthModelView.value[0].var2.var0 = v65;
  self->_constantDepthModelView.value[1].var0.var0 = v66;
  self->_constantDepthModelView.value[1].var1.var0 = v67;
  self->_constantDepthModelView.value[1].var2.var0 = v68;
  self->_constantDepthModelView.value[1].var3.var0 = v69;
  self->_constantDepthModelView.value[2].var0.var0 = v70;
  self->_constantDepthModelView.value[2].var1.var0 = v71;
  v72 = v85;
  *&self->_modelView.value[2].var2.var0 = v85.i64[0];
  LODWORD(self->_modelView.value[3].var0.var0) = v72.i32[2];
  v73 = vdupq_laneq_s32(v72, 3);
  *&self->_constantDepthModelView.value[2].var2.var0 = v72;
  v72.i64[0] = v86;
  v74 = vextq_s8(vextq_s8(v73, v73, 4uLL), v72, 0xCuLL);
  v74.i32[3] = v64;
  *&self->_modelView.value[3].var1.var0 = v74;
  *&self->_constantDepthModelView.value[3].var2.var0 = v72.i64[0];
}

- (tvec3<float>)backProjectModelViewPoint:(void *)point
{
  v7 = v3;
  WeakRetained = objc_loadWeakRetained(&self->_camera);

  if (!WeakRetained)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DGetBoundsProjector backProjectModelViewPoint:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 114, 0, "invalid nil value for '%{public}s'", "_camera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_loadWeakRetained(&self->_camera);
  v33 = v28;
  if (v28)
  {
    objc_msgSend_backProjectCameraSpacePoint_(v28, v29, v30, v31, v32, point);
  }

  else
  {
    v86 = 0.0;
    v85 = 0;
  }

  *v36.i32 = self->_projection.value[3].var3.var0 + (((*(&v85 + 1) * self->_projection.value[1].var3.var0) + (self->_projection.value[0].var3.var0 * *&v85)) + (self->_projection.value[2].var3.var0 * v86));
  v37 = (self->_projection.value[3].var2.var0 + (((*(&v85 + 1) * self->_projection.value[1].var2.var0) + (self->_projection.value[0].var2.var0 * *&v85)) + (self->_projection.value[2].var2.var0 * v86))) / *v36.i32;
  v38 = vdiv_f32(vadd_f32(*&self->_projection.value[3].var0.var0, vmla_n_f32(vmla_n_f32(vmul_n_f32(*&self->_projection.value[1].var0.var0, *(&v85 + 1)), *&self->_projection.value[0].var0.var0, *&v85), *&self->_projection.value[2].var0.var0, v86)), vdup_lane_s32(v36, 0));
  *v7 = v38;
  v7[1].f32[0] = v37;
  if (byte_280A46430 == 1)
  {
    v84 = v38.f32[0];
    v39 = objc_opt_class();
    v40 = NSStringFromSelector(a2);
    v41 = MEMORY[0x277CCACA8];
    v42 = *point;
    sub_276152FD4("vec3(%f, %f, %f)", v43, v44, v45, v46, v47, v48, v49, SLOBYTE(v42));
    if (v88 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v41, v50, v51, v52, v53, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v41, v50, v51, v52, v53, __p[0]);
    }
    v61 = ;
    if (v88 < 0)
    {
      operator delete(__p[0]);
    }

    v62 = MEMORY[0x277CCACA8];
    v83 = *&v85;
    sub_276152FD4("vec3(%f, %f, %f)", v54, v55, v56, v57, v58, v59, v60, SLOBYTE(v83));
    if (v88 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v62, v63, v64, v65, v66, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v62, v63, v64, v65, v66, __p[0]);
    }
    v74 = ;
    v75 = v84;
    if (v88 < 0)
    {
      operator delete(__p[0]);
      v75 = v84;
    }

    v76 = MEMORY[0x277CCACA8];
    v77 = v75;
    sub_276152FD4("vec3(%f, %f, %f)", v67, v68, v69, v70, v71, v72, v73, SLOBYTE(v77));
    if (v88 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v76, v78, v79, v80, v81, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v76, v78, v79, v80, v81, __p[0]);
    }
    v82 = ;
    if (v88 < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PPointBackResu.isa, v39, self, v40, v61, v74, v82);
  }

  result.var0 = v34;
  result.var1 = *(&v34 + 4);
  result.var2 = v35;
  return result;
}

- (box<glm::detail::tvec3<float>>)projectBounds:(SEL)bounds type:(void *)type
{
  WeakRetained = objc_loadWeakRetained(&self->_camera);

  if (!WeakRetained)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DGetBoundsProjector projectBounds:type:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 123, 0, "invalid nil value for '%{public}s'", "_camera");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  *&retstr->_min.var0.var0 = xmmword_2764D5F00;
  *&retstr->_max.var1.var0 = 0x80000000800000;
  v29 = 8;
  if (a5 == 1)
  {
    v29 = 72;
  }

  v228 = v29;
  result = sub_276155178(type);
  if ((result & 1) == 0)
  {
    v31 = -1;
    v226 = retstr;
    typeCopy = type;
    do
    {
      sub_276154EAC(type, v31 + 1, &v233);
      sub_276154744(&v233, (self + v228), &v231, v32);
      *v33.i32 = self->_projection.value[3].var3.var0 + (((v231.f32[1] * self->_projection.value[1].var3.var0) + (self->_projection.value[0].var3.var0 * v231.f32[0])) + (self->_projection.value[2].var3.var0 * v232));
      v34 = (self->_projection.value[3].var2.var0 + (((v231.f32[1] * self->_projection.value[1].var2.var0) + (self->_projection.value[0].var2.var0 * v231.f32[0])) + (self->_projection.value[2].var2.var0 * v232))) / *v33.i32;
      v229 = vdiv_f32(vadd_f32(*&self->_projection.value[3].var0.var0, vmla_n_f32(vmla_n_f32(vmul_n_f32(*&self->_projection.value[1].var0.var0, v231.f32[1]), *&self->_projection.value[0].var0.var0, v231.f32[0]), *&self->_projection.value[2].var0.var0, v232)), vdup_lane_s32(v33, 0));
      v230 = v34;
      v35 = objc_loadWeakRetained(&self->_camera);
      v40 = objc_msgSend_lens(v35, v36, v37, v38, v39);

      if (!v40)
      {
        v45 = MEMORY[0x277D81150];
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "[TSCH3DGetBoundsProjector projectBounds:type:]");
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v52, v53, v54, v55, v46, v51, 130, 0, "invalid nil value for '%{public}s'", "_camera.lens");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
      }

      if (v230 < 0.0 || self->_useAggressiveBackProjection && (v203 = v232, v204 = objc_loadWeakRetained(&self->_camera), objc_msgSend_lens(v204, v205, v206, v207, v208), v209 = objc_claimAutoreleasedReturnValue(), objc_msgSend_near(v209, v210, v211, v212, v213), v215 = -v214, v209, v204, v203 > v215))
      {
        v60 = v232;
        v61 = objc_loadWeakRetained(&self->_camera);
        v66 = objc_msgSend_lens(v61, v62, v63, v64, v65);
        objc_msgSend_near(v66, v67, v68, v69, v70);
        v72 = -v71;

        if (v60 <= v72)
        {
          v77 = MEMORY[0x277D81150];
          v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, v74, v75, v76, "[TSCH3DGetBoundsProjector projectBounds:type:]");
          v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v80, v81, v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
          v84 = MEMORY[0x277CCACA8];
          v216 = v231.f32[0];
          sub_276152FD4("vec3(%f, %f, %f)", v85, v86, v87, v88, v89, v90, v91, SLOBYTE(v216));
          if (v236 >= 0)
          {
            objc_msgSend_stringWithUTF8String_(v84, v92, v93, v94, v95, &__p);
          }

          else
          {
            objc_msgSend_stringWithUTF8String_(v84, v92, v93, v94, v95, __p);
          }
          v103 = ;
          if (v236 < 0)
          {
            operator delete(__p);
          }

          v104 = MEMORY[0x277CCACA8];
          v223 = v230;
          v217 = v229.f32[0];
          sub_276152FD4("vec3(%f, %f, %f)", v96, v97, v98, v99, v100, v101, v102, SLOBYTE(v217));
          if (v236 >= 0)
          {
            objc_msgSend_stringWithUTF8String_(v104, v105, v106, v107, v108, &__p);
          }

          else
          {
            objc_msgSend_stringWithUTF8String_(v104, v105, v106, v107, v108, __p);
          }
          v110 = ;
          if (v236 < 0)
          {
            operator delete(__p);
          }

          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v109, v111, v112, v113, v78, v83, 133, 0, "inconsistent depth for point %@ projected %@", v103, v110, *&v223);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v114, v115, v116, v117);
          retstr = v226;
          type = typeCopy;
        }

        if (byte_280A46430 == 1)
        {
          v118 = objc_opt_class();
          v119 = NSStringFromSelector(bounds);
          v120 = MEMORY[0x277CCACA8];
          v218 = v233;
          sub_276152FD4("vec3(%f, %f, %f)", v121, v122, v123, v124, v125, v126, v127, SLOBYTE(v218));
          if (v236 >= 0)
          {
            objc_msgSend_stringWithUTF8String_(v120, v128, v129, v130, v131, &__p);
          }

          else
          {
            objc_msgSend_stringWithUTF8String_(v120, v128, v129, v130, v131, __p);
          }
          v139 = ;
          if (v236 < 0)
          {
            operator delete(__p);
          }

          v140 = MEMORY[0x277CCACA8];
          v219 = v231.f32[0];
          sub_276152FD4("vec3(%f, %f, %f)", v132, v133, v134, v135, v136, v137, v138, SLOBYTE(v219));
          if (v236 >= 0)
          {
            objc_msgSend_stringWithUTF8String_(v140, v141, v142, v143, v144, &__p);
          }

          else
          {
            objc_msgSend_stringWithUTF8String_(v140, v141, v142, v143, v144, __p);
          }
          v152 = ;
          if (v236 < 0)
          {
            operator delete(__p);
          }

          v153 = MEMORY[0x277CCACA8];
          v220 = v229.f32[0];
          sub_276152FD4("vec3(%f, %f, %f)", v145, v146, v147, v148, v149, v150, v151, SLOBYTE(v220));
          if (v236 >= 0)
          {
            objc_msgSend_stringWithUTF8String_(v153, v154, v155, v156, v157, &__p);
          }

          else
          {
            objc_msgSend_stringWithUTF8String_(v153, v154, v155, v156, v157, __p);
          }
          v158 = ;
          if (v236 < 0)
          {
            operator delete(__p);
          }

          NSLog(&cfstr_PBackProjectin.isa, v118, self, v119, v139, v152, v158);

          retstr = v226;
          type = typeCopy;
        }

        objc_msgSend_backProjectModelViewPoint_(self, v73, v74, v75, v76, &v231);
        v229 = __p;
        v230 = v235;
        if (v235 < 0.0 || v235 > 1.0)
        {
          v162 = MEMORY[0x277D81150];
          v163 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v159, COERCE_DOUBLE(__PAIR64__(HIDWORD(__p), LODWORD(v235))), v160, v161, "[TSCH3DGetBoundsProjector projectBounds:type:]");
          v168 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, v165, v166, v167, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartGetProjectedBoundsPipeline.mm");
          v169 = MEMORY[0x277CCACA8];
          v221 = v229.f32[0];
          sub_276152FD4("vec3(%f, %f, %f)", v170, v171, v172, v173, v174, v175, v176, SLOBYTE(v221));
          if (v236 >= 0)
          {
            objc_msgSend_stringWithUTF8String_(v169, v177, v178, v179, v180, &__p);
          }

          else
          {
            objc_msgSend_stringWithUTF8String_(v169, v177, v178, v179, v180, __p);
          }
          v188 = ;
          if (v236 < 0)
          {
            operator delete(__p);
          }

          v189 = MEMORY[0x277CCACA8];
          v224 = v232;
          v222 = v231.f32[0];
          sub_276152FD4("vec3(%f, %f, %f)", v181, v182, v183, v184, v185, v186, v187, SLOBYTE(v222));
          if (v236 >= 0)
          {
            objc_msgSend_stringWithUTF8String_(v189, v190, v191, v192, v193, &__p);
          }

          else
          {
            objc_msgSend_stringWithUTF8String_(v189, v190, v191, v192, v193, __p);
          }
          v195 = ;
          if (v236 < 0)
          {
            operator delete(__p);
          }

          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v162, v194, v196, v197, v198, v163, v168, 138, 0, "invalid back projected %@ from %@", v188, v195, *&v224);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v199, v200, v201, v202);
          retstr = v226;
          type = typeCopy;
        }
      }

      result = sub_276154FD8(retstr, &v229);
      ++v31;
    }

    while (v31 <= 6);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 1065353216;
  *(self + 20) = 0;
  *(self + 12) = 0;
  *(self + 7) = 1065353216;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 12) = 1065353216;
  *(self + 60) = 0;
  *(self + 52) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(self + 68) = _D0;
  *(self + 84) = 0;
  *(self + 76) = 0;
  *(self + 23) = 1065353216;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 28) = 1065353216;
  *(self + 116) = 0;
  *(self + 124) = 0;
  *(self + 132) = _D0;
  *(self + 148) = 0;
  *(self + 140) = 0;
  *(self + 39) = 1065353216;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 44) = 1065353216;
  *(self + 180) = 0;
  *(self + 188) = 0;
  *(self + 196) = _D0;
  *(self + 204) = 0;
  *(self + 212) = 0;
  *(self + 55) = 1065353216;
  *(self + 28) = 0;
  *(self + 29) = 0;
  *(self + 60) = 1065353216;
  *(self + 252) = 0;
  *(self + 244) = 0;
  *(self + 65) = 1065353216;
  return self;
}

@end