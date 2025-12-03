@interface TSCH3DChartOrthographicShadowsSceneObject
+ (id)blurParametersArray;
- (id)createCamera;
- (id)createShadowsRenderer;
- (void)updateCoordsAndTexcoords:(const void *)texcoords zOffset:(float)offset cameraPosition:(const void *)position quad:(id)quad texcoords:(id)a7;
- (void)updateShadowPlane:(id)plane texcoords:(id)texcoords scene:(id)scene blurslack:(float)blurslack angle:(float)angle quality:(float)quality planePadding:(box<glm::detail::tvec3<float>> *)padding;
@end

@implementation TSCH3DChartOrthographicShadowsSceneObject

- (id)createCamera
{
  v6 = 0x10000000100;
  v4 = objc_msgSend_orthographicWithSize_(TSCH3DCamera, a2, COERCE_DOUBLE(0x10000000100), v2, v3, &v6);

  return v4;
}

- (void)updateCoordsAndTexcoords:(const void *)texcoords zOffset:(float)offset cameraPosition:(const void *)position quad:(id)quad texcoords:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  quadCopy = quad;
  v12 = a7;
  v13 = *(texcoords + 3);
  v14 = (((*texcoords + v13) * 0.5) - *position) * 0.5;
  v15 = *(texcoords + 2) + offset;
  v16 = v15 - *(texcoords + 1);
  v24[0] = *texcoords;
  v24[1] = 0.0;
  v24[2] = v16;
  *v25 = v13;
  v25[1] = 0;
  v17 = v15 - *(texcoords + 4);
  *&v25[2] = v16;
  v26[0] = v13 + v14;
  v26[1] = 0.0;
  v26[2] = v17;
  v27[0] = v24[0] + v14;
  v27[1] = 0.0;
  v27[2] = v17;
  v20 = xmmword_2764D5F20;
  v21 = xmmword_2764D6280;
  v22 = xmmword_2764D6290;
  v23 = xmmword_2764D62A0;
  v18 = sub_27618C648(quadCopy);
  v18[1] = *v18;
  sub_27618F4B4(v18, v24);
  sub_27618F4B4(v18, v25);
  sub_27618F4B4(v18, v27);
  sub_27618F4B4(v18, v25);
  sub_27618F4B4(v18, v26);
  sub_27618F4B4(v18, v27);
  v19 = sub_27618C374(v12);
  v19[1] = *v19;
  sub_276161E1C(v19, &v20);
  sub_276161E1C(v19, &v21);
  sub_276161E1C(v19, &v23);
  sub_276161E1C(v19, &v21);
  sub_276161E1C(v19, &v22);
  sub_276161E1C(v19, &v23);
}

- (void)updateShadowPlane:(id)plane texcoords:(id)texcoords scene:(id)scene blurslack:(float)blurslack angle:(float)angle quality:(float)quality planePadding:(box<glm::detail::tvec3<float>> *)padding
{
  planeCopy = plane;
  texcoordsCopy = texcoords;
  sceneCopy = scene;
  if ((atomic_load_explicit(&qword_280A46858, memory_order_acquire) & 1) == 0)
  {
    sub_2764A6A84();
  }

  v22 = objc_msgSend_camera(sceneCopy, v17, v19, v20, v21);
  v27 = objc_msgSend_pipelineWithScene_(TSCH3DGet3DBoundsPipeline, v23, v24, v25, v26, sceneCopy);
  objc_msgSend_renderShadowScene_(self, v28, v29, v30, v31, v27);
  v36 = objc_msgSend_bounds(v27, v32, v33, v34, v35);
  v37 = *(v36 + 16);
  *v155 = *v36;
  *&v155[16] = v37;
  v38 = *(v36 + 48);
  v156 = *(v36 + 32);
  v157 = v38;
  v158 = *(v36 + 64);
  v160 = 0;
  v161 = 0;
  v159 = 0;
  sub_27618FB60(&v159, *(v36 + 72), *(v36 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(v36 + 80) - *(v36 + 72)) >> 3));
  *&v39 = (*&v155[8] + *&v155[20]) * 0.5;
  v142 = COERCE_DOUBLE(vmul_f32(vadd_f32(*v155, *&v155[12]), 0x3F0000003F000000));
  v143 = *&v39;
  v41 = objc_msgSend_main(sceneCopy, v40, v39, v142, 0.0000305175853);
  objc_msgSend_shadowCameraDepthLimitAdjustmentFactorForScene_(v41, v42, v43, v44, v45, sceneCopy);
  LODWORD(v47) = v46;
  *&v48 = angle;
  *&v49 = quality;
  objc_msgSend_calculateShadowCameraPosition_center_shadowQuality_depthLimitAdjustment_(self, v50, v48, v49, v47, &v142);

  v55 = qword_280A46860;
  v56 = *&dword_280A46868;
  _S9 = 0;
  if (v22)
  {
    objc_msgSend_position(v22, v51, v52, v53, v54);
    v58 = *v139;
    v59 = *&v139[8];
  }

  else
  {
    v58 = 0;
    v59 = 0.0;
  }

  v60 = vsub_f32(v55, v58);
  v61 = 1.0 / sqrtf((COERCE_FLOAT(vmul_f32(v60, v60).i32[1]) + (v60.f32[0] * v60.f32[0])) + ((v56 - v59) * (v56 - v59)));
  _D3 = vmul_n_f32(v60, v61);
  v60.f32[0] = (v56 - v59) * v61;
  v151 = -v60.f32[0];
  __asm { FMLA            S4, S9, V3.S[1] }

  v68 = (-0.0 * _D3.f32[0]) + (v60.f32[0] * 0.0);
  v69 = _D3.f32[0] + vmuls_lane_f32(-0.0, _D3, 1);
  v70 = sqrtf(((v68 * v68) + (_S4 * _S4)) + (v69 * v69));
  _Q4.f32[0] = _S4 * (1.0 / v70);
  *v72.i32 = v68 * (1.0 / v70);
  *&v73 = v69 * (1.0 / v70);
  __asm { FMLA            S19, S4, V3.S[1] }

  LODWORD(v142) = _Q4.i32[0];
  *(&v142 + 1) = (*v72.i32 * v60.f32[0]) - (_D3.f32[1] * *&v73);
  v143 = -_D3.f32[0];
  v144 = 0;
  v145 = v72.i32[0];
  v146 = (*&v73 * _D3.f32[0]) - (v60.f32[0] * _Q4.f32[0]);
  v147 = -_D3.f32[1];
  v148 = 0;
  v149 = *&v73;
  v150 = _S19;
  *&v72.i32[1] = v146;
  v152 = 0;
  v72.i64[1] = __PAIR64__(v58.u32[0], v58.u32[1]);
  v75.f32[0] = -v58.f32[1];
  v75.i64[1] = _D3.u32[1] | 0x8000000000000000;
  v75.f32[1] = -v58.f32[1];
  v76 = vdupq_laneq_s32(v72, 3);
  v76.i32[3] = 0;
  _Q4.f32[1] = *(&v142 + 1);
  v77 = vmulq_f32(v72, v75);
  _Q4.i64[1] = __PAIR64__(v58.u32[1], _D3.u32[0]);
  v78 = vmulq_f32(v76, _Q4);
  v79 = vsubq_f32(v77, v78);
  _Q4.i64[0] = __PAIR64__(_S19, v73);
  v80 = vaddq_f32(v77, v78);
  _Q4.i64[1] = v60.u32[0];
  v81 = vmulq_n_f32(_Q4, v59);
  v82 = vsubq_f32(v79, v81);
  v82.i32[2] = vaddq_f32(v80, v81).i32[2];
  v153 = vaddq_f32(v82, xmmword_2764D5F20);
  sub_276154C0C(&v142, v136, *v80.i64);
  *v139 = v136[0];
  *&v139[16] = v136[1];
  v140 = v137;
  v141 = v138;
  objc_msgSend_setTransform_(v22, v83, *&v137, *&v138, v84, v139);
  sub_27618F9F8(v155, &v142, v139);
  v85 = *&v139[8];
  v86 = *&v139[20];
  v87 = *v139;
  v88 = *&v139[12];
  v89 = *&padding->_min.var0.var0;
  var0 = padding->_min.var2.var0;
  v127 = *&padding->_max.var0.var0;
  v91 = padding->_max.var2.var0;
  v95 = objc_msgSend_lens(v22, v92, v127, v93, v94);
  v96 = v86 - v85;
  LODWORD(v97) = 0.5;
  v98 = (v85 + v86) * 0.5;
  *&v99 = (blurslack * 2.0) + 0.5;
  v129 = v99;
  v100 = *&v99 * v96;
  v101 = (v98 + (*&v99 * v96)) + v91;
  *&v102 = -v101;
  objc_msgSend_setNear_(v95, v103, v102, v99, v97);
  v104 = var0 + (v98 - v100);
  *&v105 = -v104;
  objc_msgSend_setFar_(v95, v106, v105, v107, v108);
  v109 = vmul_f32(vadd_f32(v87, v88), 0x3F0000003F000000);
  v110 = v129;
  v111 = vmul_n_f32(vsub_f32(v88, v87), *&v129);
  v130 = COERCE_DOUBLE(vadd_f32(v89, vsub_f32(v109, v111)));
  objc_msgSend_setLeft_(v95, v112, v130, v110, 0.0000305175853);
  v113 = v127;
  v128 = COERCE_DOUBLE(vadd_f32(vadd_f32(v109, v111), *&v127));
  objc_msgSend_setRight_(v95, v114, v128, v113, v115);
  HIDWORD(v116) = HIDWORD(v128);
  LODWORD(v116) = HIDWORD(v128);
  objc_msgSend_setTop_(v95, v117, v116, v118, v119);
  HIDWORD(v120) = HIDWORD(v130);
  LODWORD(v120) = HIDWORD(v130);
  objc_msgSend_setBottom_(v95, v121, v120, v122, v123);
  HIDWORD(v124) = HIDWORD(v128);
  v132 = v130;
  v133 = v104;
  v134 = v128;
  *&v124 = blurslack + blurslack;
  v135 = v101;
  objc_msgSend_updateCoordsAndTexcoords_zOffset_cameraPosition_quad_texcoords_(self, v125, v124, v130, v126, &v132, v154, planeCopy, texcoordsCopy);

  if (v159)
  {
    v160 = v159;
    operator delete(v159);
  }
}

- (id)createShadowsRenderer
{
  v5 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, a2, v2, v3, v4);
  v10 = objc_msgSend_highQualityShadowsSize(v5, v6, v7, v8, v9);

  v11 = [TSCH3DPyramidBlurShadowsRenderer alloc];
  LODWORD(v12) = 2.5;
  v16 = objc_msgSend_initWithSize_targetRadiusFactor_(v11, v13, v12, v14, v15, (v10 / 2));

  return v16;
}

+ (id)blurParametersArray
{
  if (qword_280A47C88 != -1)
  {
    sub_2764A8940();
  }

  v3 = qword_280A47C80;

  return v3;
}

@end