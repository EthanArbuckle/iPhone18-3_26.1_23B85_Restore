@interface TSCH3DCamera
+ (TSCH3DCamera)cameraWithLens:(id)a3 size:(void *)a4;
+ (id)orthographic;
+ (id)orthographicPerPixelWithBounds:(void *)a3;
+ (id)orthographicPerPixelWithSize:(void *)a3;
+ (id)orthographicWithSize:(void *)a3;
+ (id)perspective;
+ (id)perspectiveWithSize:(void *)a3;
- (TSCH3DCamera)initWithLens:(id)a3 size:(void *)a4;
- (box<glm::detail::tvec2<int>>)viewport;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)frustumSliceAtDistance:(float)a3;
- (id)matrixDescription;
- (id)narrowByNormalizedBounds:(void *)a3;
- (id)narrowedByNormalizedBounds:(void *)a3;
- (id)narrowedByViewport:(void *)a3;
- (id)narrowedByViewport:(void *)a3 samples:(int64_t)a4;
- (id)pixelAlignedForScaledViewport:(void *)a3 viewportScale:(float)a4 samples:(float)a5 correspondingNoramlizedBounds:(void *)a6;
- (id)shiftByPixels:(void *)a3;
- (id)shiftedByPixels:(void *)a3;
- (tmat4x4<float>)modelViewNormalizedProjection;
- (tmat4x4<float>)modelViewProjection;
- (tmat4x4<float>)modelViewViewportProjectionWithViewportScale:(SEL)a3;
- (tmat4x4<float>)normalizedProjection;
- (tmat4x4<float>)projection;
- (tmat4x4<float>)transform;
- (tmat4x4<float>)viewportProjection;
- (tvec3<float>)backProjectCameraSpacePoint:(void *)a3;
- (tvec3<float>)direction;
- (tvec3<float>)fastProjectNormalizedPoint:(void *)a3 planeDistance:(float)a4;
- (tvec3<float>)position;
- (tvec3<float>)projectNormalizedPoint:(void *)a3 planeDistance:(float)a4;
- (void)calculateCullingPlanes:(void *)a3;
- (void)setContainingViewportSize:(void *)a3;
- (void)setDirection:(tvec3<float>)a3;
- (void)setPosition:(tvec3<float>)a3;
@end

@implementation TSCH3DCamera

+ (id)perspective
{
  v7 = 0;
  v5 = objc_msgSend_perspectiveWithSize_(a1, a2, v2, v3, v4, &v7);

  return v5;
}

+ (id)perspectiveWithSize:(void *)a3
{
  v8 = objc_msgSend_lens(TSCH3DPerspectiveLens, a2, v3, v4, v5);
  v13 = objc_msgSend_cameraWithLens_size_(a1, v9, v10, v11, v12, v8, a3);

  return v13;
}

+ (id)orthographic
{
  v7 = 0;
  v5 = objc_msgSend_orthographicWithSize_(a1, a2, v2, v3, v4, &v7);

  return v5;
}

+ (id)orthographicWithSize:(void *)a3
{
  v8 = objc_msgSend_lens(TSCH3DOrthographicLens, a2, v3, v4, v5);
  v13 = objc_msgSend_cameraWithLens_size_(a1, v9, v10, v11, v12, v8, a3);

  return v13;
}

+ (id)orthographicPerPixelWithSize:(void *)a3
{
  v8 = objc_msgSend_lens(TSCH3DOrthographicLens, a2, v3, v4, v5);
  objc_msgSend_setPerPixelSize_(v8, v9, v10, v11, v12, a3);
  v17 = objc_msgSend_cameraWithLens_size_(a1, v13, v14, v15, v16, v8, a3);

  return v17;
}

+ (id)orthographicPerPixelWithBounds:(void *)a3
{
  v5 = *a3;
  v8 = COERCE_DOUBLE(vsub_s32(*(a3 + 8), *a3));
  v6 = objc_msgSend_orthographicPerPixelWithSize_(a1, a2, v8, *&v5, v3, &v8);
  v6[6] = *a3;
  v6[7] = *(a3 + 1);
  v6[8] = *(a3 + 2);
  v6[9] = *(a3 + 3);

  return v6;
}

+ (TSCH3DCamera)cameraWithLens:(id)a3 size:(void *)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v12 = objc_msgSend_initWithLens_size_(v7, v8, v9, v10, v11, v6, a4);

  return v12;
}

- (TSCH3DCamera)initWithLens:(id)a3 size:(void *)a4
{
  v7 = a3;
  v18.receiver = self;
  v18.super_class = TSCH3DCamera;
  v8 = [(TSCH3DCamera *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lens, a3);
    min = v9->_viewport._min;
    v11 = vcgt_s32(min, v9->_viewport._max);
    if ((v11.i32[0] | v11.i32[1]))
    {
      min = 0;
      v9->_viewport._min = 0;
    }

    v9->_viewport._max = vadd_s32(*a4, min);
    __asm { FMOV            V0.2S, #1.0 }

    *&v9->_viewportScale = _D0;
    v9->_containingViewportOffset = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, a3);
  v16 = objc_msgSend_init(v10, v11, v12, v13, v14);
  if (v16)
  {
    v20 = objc_msgSend_copyWithZone_(self->_lens, v15, v17, v18, v19, a3);
    v21 = *(v16 + 8);
    *(v16 + 8) = v20;

    *(v16 + 16) = self->_viewportScale;
    *(v16 + 20) = self->_viewportSamples;
    *(v16 + 24) = self->_viewport._min.var0.var0;
    *(v16 + 28) = self->_viewport._min.var1.var0;
    *(v16 + 32) = self->_viewport._max.var0.var0;
    *(v16 + 36) = self->_viewport._max.var1.var0;
    *(v16 + 40) = self->_containingViewportOffset.var0.var0;
    *(v16 + 44) = self->_containingViewportOffset.var1.var0;
    v22 = self->_transform.value[1];
    v27[0] = self->_transform.value[0];
    v27[1] = v22;
    v23 = self->_transform.value[3];
    v28 = self->_transform.value[2];
    v29 = v23;
    objc_msgSend_setTransform_(v16, v24, *&v28.var0.var0, *&v23.var0.var0, v25, v27);
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v39.receiver = self;
  v39.super_class = TSCH3DCamera;
  v4 = [(TSCH3DCamera *)&v39 description];
  lens = self->_lens;
  v6 = MEMORY[0x277CCACA8];
  sub_2761B7678(&self->_viewport, v7, v8, v9, v10, v11, v12, v13);
  if (v41 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v6, v14, v15, v16, v17, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v6, v14, v15, v16, v17, __p[0]);
  }
  v25 = ;
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  viewportScale = self->_viewportScale;
  viewportSamples = self->_viewportSamples;
  v28 = MEMORY[0x277CCACA8];
  var0 = self->_containingViewportOffset.var0.var0;
  sub_276152FD4("vec2(%f, %f)", v18, v19, v20, v21, v22, v23, v24, SLOBYTE(var0));
  if (v41 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v28, v29, v30, v31, v32, __p);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v28, v29, v30, v31, v32, __p[0]);
  }
  v34 = ;
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  v36 = objc_msgSend_stringWithFormat_(v3, v33, viewportSamples, viewportScale, v35, @"%@(%@, %@, scale %f, samples %f, cv offset %@)", v4, lens, v25, viewportScale, viewportSamples, v34);

  return v36;
}

- (id)matrixDescription
{
  objc_msgSend_space(self, a2, v2, v3, v4);
  v12 = sub_2761B4E18(&v14, v5, v6, v7, v8, v9, v10, v11);

  return v12;
}

- (void)setContainingViewportSize:(void *)a3
{
  min = self->_viewport._min;
  v4 = vcgt_s32(min, self->_viewport._max);
  if ((v4.i32[0] | v4.i32[1]))
  {
    min = 0;
    self->_viewport._min = 0;
  }

  self->_viewport._max = vadd_s32(*a3, min);
}

- (tvec3<float>)direction
{
  v3 = -self->_transform.value[2].var2.var0;
  *v2 = vneg_f32(*&self->_transform.value[2].var0.var0);
  v2[1].f32[0] = v3;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (void)setDirection:(tvec3<float>)a3
{
  v3 = -*(*&a3.var0.var0 + 8);
  *&self->_transform.value[2].var0.var0 = vneg_f32(**&a3.var0.var0);
  self->_transform.value[2].var2.var0 = v3;
  self->_transform.value[2].var3.var0 = 0.0;
}

- (tvec3<float>)position
{
  *v2 = *&self->_transform.value[3].var0.var0;
  *(v2 + 8) = self->_transform.value[3].var2.var0;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (void)setPosition:(tvec3<float>)a3
{
  v3 = *(*&a3.var0.var0 + 8);
  *&self->_transform.value[3].var0.var0 = **&a3.var0.var0;
  self->_transform.value[3].var2.var0 = v3;
  self->_transform.value[3].var3.var0 = 0.0;
}

- (id)frustumSliceAtDistance:(float)a3
{
  v6 = objc_msgSend_frustumRectAtDistance_(self->_lens, a2, *&a3, v3, v4);
  objc_msgSend_right(v6, v7, v8, v9, v10);
  v12 = *&v11;
  objc_msgSend_left(v6, v13, v11, v14, v15);
  v17 = *&v16;
  v18 = *&self->_transform.value[0].var0.var0;
  var0 = self->_transform.value[0].var2.var0;
  objc_msgSend_top(v6, v20, v16, v21, v22);
  v24 = *&v23;
  objc_msgSend_bottom(v6, v25, v23, v26, v27);
  v29 = *&v28;
  v30 = *&self->_transform.value[1].var0.var0;
  v31 = self->_transform.value[1].var2.var0;
  objc_msgSend_left(v6, v32, v28, v33, v34);
  v70 = v35;
  v36 = *&self->_transform.value[0].var0.var0;
  v69 = *&v36;
  *&v36 = self->_transform.value[0].var2.var0;
  v68 = *&v36;
  objc_msgSend_bottom(v6, v37, v36, v38, v39);
  v67 = v40;
  v41 = *&self->_transform.value[1].var0.var0;
  v66 = *&v41;
  *&v41 = self->_transform.value[1].var2.var0;
  v65 = *&v41;
  objc_msgSend_direction(self, v42, v41, v43, v44);
  v63 = v30;
  v64 = v31;
  v45 = v12;
  v46 = *&v76;
  *&v47 = v77;
  v62 = v77;
  objc_msgSend_position(self, v48, v47, v49, v50);
  v61 = *&v76;
  v30.f32[0] = v77;
  objc_msgSend_direction(self, v51, v76, v52, v53);
  *&v54 = v24 - v29;
  v55 = v77;
  v56 = v76;
  v76 = COERCE_DOUBLE(vadd_f32(vadd_f32(vmul_n_f32(v69, v70), vmul_n_f32(v66, v67)), vadd_f32(vmul_n_f32(v46, a3), v61)));
  v77 = ((v70 * v68) + (v67 * v65)) + ((v62 * a3) + v30.f32[0]);
  v78 = v56;
  v79 = v55;
  v74 = COERCE_DOUBLE(vmul_n_f32(v18, v45 - v17));
  v75 = (v45 - v17) * var0;
  *&v57 = (v24 - v29) * v64;
  v72 = vmul_n_f32(v63, v24 - v29);
  v73 = *&v57;
  v59 = objc_msgSend_sliceWithOrigin_width_height_(TSCH3DFrustumSlice, v58, v57, v74, v54, &v76, &v74, &v72);

  return v59;
}

- (tvec3<float>)projectNormalizedPoint:(void *)a3 planeDistance:(float)a4
{
  v10 = v4;
  objc_msgSend_near(self->_lens, a2, *&a4, v5, v6);
  v15 = objc_msgSend_frustumSliceAtDistance_(self, v11, v12, v13, v14);
  v19 = v15;
  v20 = *a3;
  v40 = *a3;
  if (v15)
  {
    objc_msgSend_atNormalizedPosition_(v15, v16, v20, v17, v18, &v40);
  }

  else
  {
    v42 = 0.0;
    v41 = 0;
  }

  objc_msgSend_position(self, v16, v20, v17, v18);
  v21 = v41;
  v22 = v42;
  objc_msgSend_direction(self, v23, v24, v25, v26);
  objc_msgSend_position(self, v27, v28, v29, v30);
  v31 = vsub_f32(v21, v38);
  v32 = 1.0 / sqrtf((COERCE_FLOAT(vmul_f32(v31, v31).i32[1]) + (v31.f32[0] * v31.f32[0])) + ((v22 - v39) * (v22 - v39)));
  v33 = (v22 - v39) * v32;
  v34 = vmul_n_f32(v31, v32);
  v35 = a4 / ((vmuls_lane_f32(v38.f32[1], v34, 1) + (v34.f32[0] * v38.f32[0])) + (v33 * v39));
  *v10 = vadd_f32(vmul_n_f32(v34, v35), v38);
  v10[1].f32[0] = (v33 * v35) + v39;

  result.var0 = v36;
  result.var1 = *(&v36 + 4);
  result.var2 = v37;
  return result;
}

- (tvec3<float>)fastProjectNormalizedPoint:(void *)a3 planeDistance:(float)a4
{
  v8 = v4;
  v9 = objc_msgSend_frustumSliceAtDistance_(self, a2, *&a4, v5, v6);
  v13 = v9;
  v14 = *a3;
  v17 = *a3;
  if (v9)
  {
    objc_msgSend_atNormalizedPosition_(v9, v10, v14, v11, v12, &v17);
  }

  else
  {
    *(v8 + 8) = 0;
    *v8 = 0;
  }

  result.var0 = v15;
  result.var1 = *(&v15 + 4);
  result.var2 = v16;
  return result;
}

- (tvec3<float>)backProjectCameraSpacePoint:(void *)a3
{
  v9 = v3;
  lens = self->_lens;
  if (!lens)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCH3DCamera backProjectCameraSpacePoint:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DCamera.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 476, 0, "invalid nil value for '%{public}s'", "_lens");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    lens = self->_lens;
  }

  objc_msgSend_near(lens, a2, v4, v5, v6);
  v27 = *&v26;
  v31 = objc_msgSend_frustumRectAtDistance_(self->_lens, v28, v26, v29, v30);
  v36 = v31;
  if (v31)
  {
    objc_msgSend_toBox(v31, v32, v33, v34, v35);
  }

  else
  {
    v99[0] = 0.0;
    v99[1] = 0.0;
  }

  __p[0] = *a3;
  *&v40 = sub_2761B63E0(__p, v99, &v98);
  LODWORD(v40) = *(a3 + 2);
  if (*&v40 >= -v27)
  {
    v66 = v27;
  }

  else
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], *&v37, v40, v38, v39, "[TSCH3DCamera backProjectCameraSpacePoint:]");
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DCamera.mm");
    v48 = MEMORY[0x277CCACA8];
    v49 = *a3;
    v96 = *(a3 + 2);
    sub_276152FD4("vec3(%f, %f, %f)", v50, v51, v52, v53, v54, v55, v56, SLOBYTE(v49));
    if (v101 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v48, v57, v58, v59, v60, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v48, v57, v58, v59, v60, __p[0]);
    }
    v62 = ;
    if (v101 < 0)
    {
      operator delete(__p[0]);
    }

    v66 = v27;
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v61, v63, v64, v65, v42, v47, 481, 0, "point must be behind near plane to back project %@ %f", v62, v27, *&v96);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
    LODWORD(v40) = *(a3 + 2);
  }

  v71 = 2.0;
  v72 = *&v40 + v66 * 2.0;
  v73 = v72;
  if (v27 >= v73)
  {
    v74 = MEMORY[0x277D81150];
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], *&v37, v72, 2.0, v39, "[TSCH3DCamera backProjectCameraSpacePoint:]");
    v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DCamera.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v81, v73, v82, v83, v75, v80, 484, 0, "back projection distance must be in front of near plane %f %f", v73, *&v66);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85, v86, v87);
  }

  *&v72 = v73;
  v88 = objc_msgSend_frustumRectAtDistance_(self->_lens, *&v37, v72, v71, v39);
  v93 = v88;
  if (v88)
  {
    objc_msgSend_toBox(v88, v89, v90, v91, v92);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
  }

  sub_2761B65FC(&v98, __p, &v97);
  *v9 = v97;
  v9[1].f32[0] = -v27;

  result.var0 = v94;
  result.var1 = *(&v94 + 4);
  result.var2 = v95;
  return result;
}

- (tmat4x4<float>)projection
{
  result = self->_lens;
  if (result)
  {
    return objc_msgSend_matrix(result, a3, v3, v4, v5);
  }

  retstr->value[2] = 0u;
  retstr->value[3] = 0u;
  retstr->value[0] = 0u;
  retstr->value[1] = 0u;
  return result;
}

- (tmat4x4<float>)normalizedProjection
{
  v10 = 0;
  v9 = 0;
  v12 = 0;
  v13 = 0;
  v15 = xmmword_2764D5F60;
  v8 = 1056964608;
  v11 = 1056964608;
  v14 = 1056964608;
  objc_msgSend_projection(self, a3, 0.0000305175853, v3, v4);
  sub_2761558A0(&v8, &v7, retstr);
  return result;
}

- (tmat4x4<float>)viewportProjection
{
  v5 = vcvt_f32_s32(vsub_s32(self->_viewport._max, self->_viewport._min));
  v9 = v5.i32[0];
  *v3.i8 = vbsl_s8(0x8000000080000000, 0, v5);
  v6 = vzip1q_s32(v3, v3);
  v6.i32[2] = v3.i32[0];
  v10 = v6;
  v11 = v5.i32[1];
  v12 = COERCE_DOUBLE(vdup_lane_s32(*v3.i8, 1));
  v13 = 0;
  v14 = 1065353216;
  v16 = 0;
  v15 = 0;
  v17 = 1065353216;
  objc_msgSend_normalizedProjection(self, a3, v12, 0.0, *v3.i64);
  sub_2761558A0(&v9, &v8, retstr);
  return result;
}

- (tmat4x4<float>)modelViewProjection
{
  objc_msgSend_projection(self, a3, v3, v4, v5);
  objc_msgSend_space(self, v8, v9, v10, v11);
  sub_2761558A0(v14, &v13, retstr);
  return result;
}

- (tmat4x4<float>)modelViewNormalizedProjection
{
  objc_msgSend_normalizedProjection(self, a3, v3, v4, v5);
  objc_msgSend_space(self, v8, v9, v10, v11);
  sub_2761558A0(v14, &v13, retstr);
  return result;
}

- (tmat4x4<float>)modelViewViewportProjectionWithViewportScale:(SEL)a3
{
  v6 = vmul_n_f32(vcvt_f32_s32(vsub_s32(self->_viewport._max, self->_viewport._min)), a4);
  v10 = v6.i32[0];
  *v4.i8 = vmul_f32(v6, 0);
  v7 = vzip1q_s32(v4, v4);
  v7.i32[2] = v4.i32[0];
  v11 = v7;
  v12 = COERCE_DOUBLE(vzip2_s32(v6, *v4.i8));
  v13 = v4.i32[1];
  v14 = 0;
  v15 = 1065353216;
  v17 = 0;
  v16 = 0;
  v18 = 1065353216;
  objc_msgSend_modelViewNormalizedProjection(self, a3, v12, 0.0, *v4.i64);
  sub_2761558A0(&v10, &v9, retstr);
  return result;
}

- (id)narrowByNormalizedBounds:(void *)a3
{
  v8 = objc_msgSend_lens(self, a2, v3, v4, v5);
  v13 = objc_msgSend_narrowedByNormalizedBounds_(v8, v9, v10, v11, v12, a3);
  objc_msgSend_setLens_(self, v14, v15, v16, v17, v13);

  return self;
}

- (id)narrowedByNormalizedBounds:(void *)a3
{
  v7 = objc_msgSend_copy(self, a2, v3, v4, v5);
  v12 = objc_msgSend_narrowByNormalizedBounds_(v7, v8, v9, v10, v11, a3);

  return v12;
}

- (id)narrowedByViewport:(void *)a3
{
  v4 = vcvtq_f32_s32(*a3);
  v11 = vcvtq_f32_s32(self->_viewport);
  v12 = v4;
  *&v5 = sub_276152C5C(&v12, &v11, &v13).u64[0];
  v9 = objc_msgSend_narrowedByNormalizedBounds_(self, v6, v5, v7, v8, &v13);

  return v9;
}

- (id)shiftByPixels:(void *)a3
{
  v8 = objc_msgSend_lens(self, a2, v3, v4, v5);
  v9 = *a3;
  v18 = COERCE_DOUBLE(vdiv_f32(*a3, vcvt_f32_s32(vsub_s32(self->_viewport._max, self->_viewport._min))));
  v12 = objc_msgSend_shiftedByPercentage_(v8, v10, v18, *&v9, v11, &v18);
  objc_msgSend_setLens_(self, v13, v14, v15, v16, v12);

  return self;
}

- (id)shiftedByPixels:(void *)a3
{
  v7 = objc_msgSend_copy(self, a2, v3, v4, v5);
  v12 = objc_msgSend_shiftByPixels_(v7, v8, v9, v10, v11, a3);

  return v12;
}

- (id)pixelAlignedForScaledViewport:(void *)a3 viewportScale:(float)a4 samples:(float)a5 correspondingNoramlizedBounds:(void *)a6
{
  v8 = a2;
  *v10.f32 = vrndm_f32(*a3);
  *&v10.u32[2] = vrndp_f32(*&vextq_s8(*a3, *a3, 8uLL));
  v11 = vmulq_n_f32(*a3, a5);
  v180 = v11;
  v181 = v10;
  v172 = *&a4;
  v173 = *&a5;
  v12 = vmulq_n_f32(v10, a5);
  v179 = v12;
  v11.i32[0] = LODWORD(self->_viewportSamples);
  v12.i32[0] = 1.0;
  if (v11.f32[0] != 1.0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *&a4, *v12.i64, *v11.i64, "[TSCH3DCamera pixelAlignedForScaledViewport:viewportScale:samples:correspondingNoramlizedBounds:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DCamera.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, self->_viewportSamples, v21, v22, v14, v19, 549, 0, "only supports 1x camera right now, samples %f", self->_viewportSamples);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    a4 = *&v172;
  }

  v182 = vmulq_n_f32(vcvtq_f32_s32(self->_viewport), a4);
  sub_2761526F4(a6, &v182, &v178);
  v29 = *v178.i64;
  v30 = COERCE_DOUBLE(vsub_f32(vsub_f32(*a3, *v181.f32), *v178.f32));
  v174 = v30;
  if (byte_280A46430 == 1)
  {
    v31 = objc_opt_class();
    v32 = v8;
    v170 = NSStringFromSelector(v8);
    v33 = MEMORY[0x277CCACA8];
    v169 = *&v174;
    sub_276152FD4("vec2(%f, %f)", v34, v35, v36, v37, v38, v39, v40, SLOBYTE(v169));
    if (v183 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v33, v41, v42, v43, v44, &v182);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v33, v41, v42, v43, v44, v182.i64[0]);
    }
    v52 = ;
    if (v183 < 0)
    {
      operator delete(v182.i64[0]);
    }

    v53 = MEMORY[0x277CCACA8];
    sub_276152EB4(v178.f32, v45, v46, v47, v48, v49, v50, v51);
    if (v183 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v53, v54, v55, v56, v57, &v182);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v53, v54, v55, v56, v57, v182.i64[0]);
    }
    v65 = ;
    if (v183 < 0)
    {
      operator delete(v182.i64[0]);
    }

    v66 = MEMORY[0x277CCACA8];
    sub_276152EB4(a3, v58, v59, v60, v61, v62, v63, v64);
    if (v183 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v66, v67, v68, v69, v70, &v182);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v66, v67, v68, v69, v70, v182.i64[0]);
    }
    v71 = ;
    if (v183 < 0)
    {
      operator delete(v182.i64[0]);
    }

    NSLog(&cfstr_PDeltaCurrentA.isa, v31, self, v170, v52, v65, v71);

    v8 = v32;
  }

  v72 = objc_msgSend_narrowedByNormalizedBounds_(self, v27, v30, v29, v28, a6);
  v73.i64[0] = *a3;
  *v74.f32 = vsub_f32(*(a3 + 8), *a3);
  v73.i64[1] = *a3;
  v74.i64[1] = v74.i64[0];
  v177 = vdivq_f32(vsubq_f32(v181, v73), v74);
  v76 = objc_msgSend_narrowedByNormalizedBounds_(v72, v75, *v177.i64, *v74.i64, *v181.i64, &v177);
  HIDWORD(v77) = HIDWORD(v173);
  *&v77 = *&v172 * *&v173;
  objc_msgSend_setViewportScale_(v76, v78, v77, v172, v79);
  v182 = vcvtq_s32_f32(v179);
  objc_msgSend_setViewport_(v76, v80, *v182.i64, v81, v82, &v182);
  *v182.f32 = vadd_f32(*&v174, self->_containingViewportOffset);
  objc_msgSend_setContainingViewportOffset_(v76, v83, *v182.i64, v174, v84, &v182);
  if (byte_280A46430 == 1)
  {
    v85 = objc_opt_class();
    v175 = NSStringFromSelector(v8);
    v171 = v72;
    v86 = MEMORY[0x277CCACA8];
    sub_276152EB4(a3, v87, v88, v89, v90, v91, v92, v93);
    if (v183 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v86, v94, v95, v96, v97, &v182);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v86, v94, v95, v96, v97, v182.i64[0]);
    }
    v105 = ;
    if (v183 < 0)
    {
      operator delete(v182.i64[0]);
    }

    v106 = MEMORY[0x277CCACA8];
    sub_276152EB4(v181.f32, v98, v99, v100, v101, v102, v103, v104);
    if (v183 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v106, v107, v108, v109, v110, &v182);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v106, v107, v108, v109, v110, v182.i64[0]);
    }
    v118 = ;
    if (v183 < 0)
    {
      operator delete(v182.i64[0]);
    }

    v119 = MEMORY[0x277CCACA8];
    sub_276152EB4(v180.f32, v111, v112, v113, v114, v115, v116, v117);
    if (v183 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v119, v120, v121, v122, v123, &v182);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v119, v120, v121, v122, v123, v182.i64[0]);
    }
    v131 = ;
    if (v183 < 0)
    {
      operator delete(v182.i64[0]);
    }

    v132 = MEMORY[0x277CCACA8];
    sub_276152EB4(v179.f32, v124, v125, v126, v127, v128, v129, v130);
    if (v183 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v132, v133, v134, v135, v136, &v182);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v132, v133, v134, v135, v136, v182.i64[0]);
    }
    v144 = ;
    v145 = v85;
    if (v183 < 0)
    {
      operator delete(v182.i64[0]);
    }

    v146 = MEMORY[0x277CCACA8];
    sub_276152EB4(v177.f32, v137, v138, v139, v140, v141, v142, v143);
    if (v183 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v146, v147, v148, v149, v150, &v182);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v146, v147, v148, v149, v150, v182.i64[0]);
    }
    v158 = ;
    if (v183 < 0)
    {
      operator delete(v182.i64[0]);
      if (v76)
      {
        goto LABEL_46;
      }
    }

    else if (v76)
    {
LABEL_46:
      objc_msgSend_viewport(v76, v151, v159, v160, v161);
LABEL_49:
      v162 = MEMORY[0x277CCACA8];
      sub_2761B7678(v176, v151, v152, v153, v154, v155, v156, v157);
      if (v183 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v162, v163, v164, v165, v166, &v182);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v162, v163, v164, v165, v166, v182.i64[0]);
      }
      v167 = ;
      if (v183 < 0)
      {
        operator delete(v182.i64[0]);
      }

      NSLog(&cfstr_PScaledviewpor.isa, v145, self, v175, v105, v118, *&v173, v131, v144, v158, v167, v76);

      v72 = v171;
      goto LABEL_55;
    }

    v176[0] = 0;
    v176[1] = 0;
    goto LABEL_49;
  }

LABEL_55:

  return v76;
}

- (id)narrowedByViewport:(void *)a3 samples:(int64_t)a4
{
  v7 = vcvtq_f32_s32(*a3);
  v31 = vcvtq_f32_s32(self->_viewport);
  v32 = v7;
  *&v8 = sub_276152C5C(&v32, &v31, &v33).u64[0];
  v9 = *a3;
  p_viewportSamples = &self->_viewportSamples;
  v11 = vld1_dup_f32(p_viewportSamples);
  v15 = objc_msgSend_narrowedByNormalizedBounds_(self, v12, v8, v13, v14, &v33);
  v32.i64[0] = 0;
  v16 = vdup_n_s32(a4);
  *&v32.u32[2] = vmul_s32(vsub_s32(*(a3 + 8), *a3), v16);
  objc_msgSend_setViewport_(v15, v17, *&v32.i64[1], *&v16, v18, &v32);
  *&v19 = self->_viewportScale;
  objc_msgSend_setViewportScale_(v15, v20, v19, v21, v22);
  *&v23 = self->_viewportSamples;
  *&v24 = *&v23 * a4;
  objc_msgSend_setViewportSamples_(v15, v25, v24, v23, v26);
  containingViewportOffset = self->_containingViewportOffset;
  *v32.f32 = vsub_f32(containingViewportOffset, vdiv_f32(vcvt_f32_s32(v9), v11));
  objc_msgSend_setContainingViewportOffset_(v15, v28, *v32.i64, *&containingViewportOffset, v29, &v32);

  return v15;
}

- (void)calculateCullingPlanes:(void *)a3
{
  v11 = objc_msgSend_lens(self, a2, v3, v4, v5);
  objc_msgSend_calculateCullingPlanes_(v11, v7, v8, v9, v10, a3);
}

- (box<glm::detail::tvec2<int>>)viewport
{
  *v2 = self->_viewport;
  result._max = a2;
  result._min = self;
  return result;
}

- (tmat4x4<float>)transform
{
  v3 = self[1].value[0];
  retstr->value[0] = self->value[3];
  retstr->value[1] = v3;
  v4 = self[1].value[2];
  retstr->value[2] = self[1].value[1];
  retstr->value[3] = v4;
  return self;
}

- (id).cxx_construct
{
  *(self + 24) = xmmword_2764D6090;
  *(self + 5) = 0;
  *(self + 12) = 1065353216;
  *(self + 60) = 0;
  *(self + 52) = 0;
  *(self + 17) = 1065353216;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 22) = 1065353216;
  *(self + 100) = 0;
  *(self + 92) = 0;
  *(self + 27) = 1065353216;
  return self;
}

@end