@interface TSCH3DPlaneProjectRenderProcessor
+ (id)processorWithPlane:(const void *)a3 projPt:(const void *)a4;
- (TSCH3DPlaneProjectRenderProcessor)initWithPlane:(const void *)a3 projPt:(const void *)a4;
- (id).cxx_construct;
- (void)submit:(id)a3;
@end

@implementation TSCH3DPlaneProjectRenderProcessor

+ (id)processorWithPlane:(const void *)a3 projPt:(const void *)a4
{
  v6 = [a1 alloc];
  v11 = objc_msgSend_initWithPlane_projPt_(v6, v7, v8, v9, v10, a3, a4);

  return v11;
}

- (TSCH3DPlaneProjectRenderProcessor)initWithPlane:(const void *)a3 projPt:(const void *)a4
{
  v7.receiver = self;
  v7.super_class = TSCH3DPlaneProjectRenderProcessor;
  result = [(TSCH3DTransformGeometryRenderProcessor *)&v7 init];
  if (result)
  {
    result->_plane._normal.var0.var0 = *a3;
    result->_plane._normal.var1.var0 = *(a3 + 1);
    result->_plane._normal.var2.var0 = *(a3 + 2);
    result->_plane._distance = *(a3 + 3);
    result->_projPt.var0.var0 = *a4;
    result->_projPt.var1.var0 = *(a4 + 1);
    result->_projPt.var2.var0 = *(a4 + 2);
  }

  return result;
}

- (void)submit:(id)a3
{
  v4 = a3;
  if (objc_msgSend_hasOffset(v4, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_offset(v4, v9, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  if (objc_msgSend_hasCount(v4, v9, v10, v11, v12))
  {
    v19 = objc_msgSend_count(v4, v14, v15, v16, v17);
  }

  else
  {
    v19 = objc_msgSend_count(self->super._buffer, v14, v15, v16, v17);
  }

  v24 = objc_msgSend_buffer(self, v18, v20, v21, v22);
  if (!v24)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v25, v26, v27, "[TSCH3DPlaneProjectRenderProcessor submit:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPerspectiveShadowsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 66, 0, "invalid nil value for '%{public}s'", "buffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  if (objc_msgSend_components(v24, v23, v25, v26, v27) != 3)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCH3DPlaneProjectRenderProcessor submit:]");
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartPerspectiveShadowsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v54, v55, v56, v57, v48, v53, 67, 0, "buffer components must be 3");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
  }

  v62 = sub_27616536C(v24);
  v67 = objc_msgSend_matrix(self, v63, v64, v65, v66);
  v72 = objc_msgSend_matrix(self, v68, v69, v70, v71);
  v77 = objc_msgSend_current(v72, v73, v74, v75, v76);
  v78 = v77[1];
  *v88 = *v77;
  *&v88[16] = v78;
  v79 = v77[3];
  v89 = v77[2];
  v90 = v79;
  sub_2761902D4(v67, v88, v91);

  v86 = 0;
  v87 = 0;
  if (v19)
  {
    v81 = 12 * v13;
    do
    {
      sub_276154744(*v62 + v81, v91, &v84, v80);
      *&v88[8] = self->_projPt.var2.var0;
      *v88 = *&self->_projPt.var0.var0;
      v82 = vsub_f32(v84, *v88);
      v83 = 1.0 / sqrtf((COERCE_FLOAT(vmul_f32(v82, v82).i32[1]) + (v82.f32[0] * v82.f32[0])) + ((v85 - *&v88[8]) * (v85 - *&v88[8])));
      *&v88[12] = vmul_n_f32(v82, v83);
      *&v88[20] = (v85 - *&v88[8]) * v83;
      if (sub_2761548CC(&self->_plane._normal.var0.var0, v88, &v86))
      {
        sub_276154FD8(&self->_bounds, &v86);
      }

      v81 += 12;
      --v19;
    }

    while (v19);
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 14) = 0;
  *(self + 60) = xmmword_2764D5F00;
  *(self + 76) = 0x80000000800000;
  return self;
}

@end