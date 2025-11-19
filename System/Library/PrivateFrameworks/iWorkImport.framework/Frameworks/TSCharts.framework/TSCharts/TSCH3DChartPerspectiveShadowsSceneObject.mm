@interface TSCH3DChartPerspectiveShadowsSceneObject
+ (id)blurParametersArray;
- (id)createCamera;
- (id)createShadowsRenderer;
- (void)updateCoordsAndTexcoords:(const void *)a3 camera:(id)a4 quad:(id)a5 texcoords:(id)a6;
- (void)updateShadowPlane:(id)a3 texcoords:(id)a4 scene:(id)a5 blurslack:(float)a6 angle:(float)a7 quality:(float)a8 planePadding:(box<glm::detail::tvec3<float>> *)a9;
@end

@implementation TSCH3DChartPerspectiveShadowsSceneObject

- (id)createCamera
{
  v6 = 0x10000000100;
  v4 = objc_msgSend_perspectiveWithSize_(TSCH3DCamera, a2, COERCE_DOUBLE(0x10000000100), v2, v3, &v6);

  return v4;
}

- (void)updateCoordsAndTexcoords:(const void *)a3 camera:(id)a4 quad:(id)a5 texcoords:(id)a6
{
  v63 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v58[0] = *a3;
  v58[1] = 0;
  v13 = *(a3 + 2);
  v12 = *(a3 + 3);
  v59 = *(a3 + 5);
  v60[0] = v12;
  v60[1] = 0;
  v60[2] = v59;
  v61[0] = v12;
  v61[1] = 0;
  v61[2] = v13;
  v62[0] = v58[0];
  v62[1] = 0;
  v62[2] = v13;
  v14 = sub_27618C648(v10);
  v14[1] = *v14;
  sub_27618F4B4(v14, v58);
  sub_27618F4B4(v14, v60);
  sub_27618F4B4(v14, v62);
  sub_27618F4B4(v14, v60);
  sub_27618F4B4(v14, v61);
  sub_27618F4B4(v14, v62);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v16 = sub_27618C374(v11);
  v16[1] = *v16;
  if (v9)
  {
    objc_msgSend_modelViewNormalizedProjection(v9, v15, v17, v18, v19);
    v20 = v39;
    v21 = v38;
    v22 = v43;
    v23 = v42;
    v24 = v47;
    v25 = v46;
    v26.i32[0] = v51;
    v27.i32[0] = v50;
    v28 = v41;
    v29 = v40;
    v30 = v45;
    v31 = v44;
    v32 = v49;
    v33 = v48;
    v34.i32[0] = v53;
    v35.i32[0] = v52;
  }

  else
  {
    v34 = 0;
    v32 = 0.0;
    v30 = 0.0;
    v28 = 0.0;
    v35 = 0;
    v33 = 0.0;
    v31 = 0.0;
    v29 = 0.0;
    v26 = 0;
    v24 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
    v27 = 0;
    v25 = 0.0;
    v23 = 0.0;
    v21 = 0.0;
  }

  v36 = v58;
  v64 = vld3q_f32(v36);
  v65.val[0] = vaddq_f32(vdupq_lane_s32(v27, 0), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v64.val[1], v23), v64.val[0], v21), v64.val[2], v25));
  v65.val[1] = vaddq_f32(vdupq_lane_s32(v26, 0), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v64.val[1], v22), v64.val[0], v20), v64.val[2], v24));
  v65.val[2] = vaddq_f32(vdupq_lane_s32(v35, 0), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v64.val[1], v31), v64.val[0], v29), v64.val[2], v33));
  v65.val[3] = vaddq_f32(vdupq_lane_s32(v34, 0), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v64.val[1], v30), v64.val[0], v28), v64.val[2], v32));
  v37 = &v54;
  vst4q_f32(v37, v65);
  sub_276161E1C(v16, &v54);
  sub_276161E1C(v16, &v55);
  sub_276161E1C(v16, &v57);
  sub_276161E1C(v16, &v55);
  sub_276161E1C(v16, &v56);
  sub_276161E1C(v16, &v57);
}

- (void)updateShadowPlane:(id)a3 texcoords:(id)a4 scene:(id)a5 blurslack:(float)a6 angle:(float)a7 quality:(float)a8 planePadding:(box<glm::detail::tvec3<float>> *)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v23 = objc_msgSend_camera(v18, v19, v20, v21, v22);
  v28 = objc_msgSend_pipelineWithScene_(TSCH3DGet3DBoundsPipeline, v24, v25, v26, v27, v18);
  objc_msgSend_renderShadowScene_(self, v29, v30, v31, v32, v28);
  v37 = objc_msgSend_bounds(v28, v33, v34, v35, v36);
  v38 = *(v37 + 16);
  *v199 = *v37;
  *&v199[16] = v38;
  v39 = *(v37 + 48);
  v200 = *(v37 + 32);
  v201 = v39;
  v202 = *(v37 + 64);
  v204 = 0;
  v205 = 0;
  v203 = 0;
  sub_27618FB60(&v203, *(v37 + 72), *(v37 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(v37 + 80) - *(v37 + 72)) >> 3));
  LODWORD(v40) = *&v199[20];
  v192 = COERCE_DOUBLE(vmul_f32(vadd_f32(*v199, *&v199[12]), 0x3F0000003F000000));
  v193 = *&v199[20];
  v42 = objc_msgSend_main(v18, v41, v40, v192, 0.0000305175853);
  objc_msgSend_shadowCameraDepthLimitAdjustmentFactorForScene_(v42, v43, v44, v45, v46, v18);
  LODWORD(v48) = v47;
  *&v49 = a7;
  *&v50 = a8;
  objc_msgSend_calculateShadowCameraPosition_center_shadowQuality_depthLimitAdjustment_(self, v51, v49, v50, v48, &v192);

  v196 = xmmword_2764D5F40;
  v55 = objc_msgSend_processorWithPlane_projPt_(TSCH3DPlaneProjectRenderProcessor, v52, 0.0078125, v53, v54, &v196, &v197);
  v60 = objc_msgSend_pipelineWithScene_renderProcessor_(TSCH3DGet3DBoundsPipeline, v56, v57, v58, v59, v18, v55);
  objc_msgSend_renderShadowScene_(self, v61, v62, v63, v64, v60);
  v69 = objc_msgSend_bounds(v55, v65, v66, v67, v68);
  v70 = 0;
  v170 = *&v199[8];
  v168 = *&v199[4];
  v169 = *v199;
  v166 = *&v199[16];
  v71.i64[0] = v197;
  v72 = vzip1q_s32(v71, v71);
  v72.i32[2] = v197;
  v173 = v72;
  v167 = (*v199 + *&v199[12]) * 0.5;
  v176 = *(&v197 + 1);
  v73 = ((*&v199[4] + *&v199[16]) * 0.5) - *(&v197 + 1);
  v177 = v71;
  v178 = v198;
  *v72.i32 = ((*&v199[8] + *&v199[20]) * 0.5) - v198;
  v74 = 1.0 / sqrtf(((v73 * v73) + ((v167 - *&v197) * (v167 - *&v197))) + (*v72.i32 * *v72.i32));
  v75 = (v167 - *&v197) * v74;
  v76 = v73 * v74;
  v77 = *v72.i32 * v74;
  v78 = *(v69 + 8);
  v72.i32[0] = *(v69 + 20);
  v79 = *v72.i32 - v78;
  v80 = (v78 + *v72.i32) * 0.5;
  *v72.i32 = (a6 * 2.0) + 0.5;
  v81 = *v72.i32 * v79;
  v82 = v80 - v81;
  v83 = v80 + v81;
  v84 = (v82 + v83) * 0.5;
  v85 = ((v83 - v82) * 0.5) * 1.1;
  v86 = v84 - v85;
  v172 = v84;
  v87 = a9->_max.var2.var0 + (v84 + v85);
  v88 = *(v69 + 12);
  v89 = vmul_f32(vadd_f32(*v69, v88), 0x3F0000003F000000);
  *v72.i8 = vmul_n_f32(vsub_f32(v88, *v69), *v72.i32);
  v90 = vsub_f32(v89, *v72.i8);
  v91 = vadd_f32(v89, *v72.i8);
  *v71.i8 = vmul_f32(vadd_f32(v90, v91), 0x3F0000003F000000);
  v92 = vsub_f32(v91, v90);
  v90.i32[0] = 0.5;
  v72.i32[0] = vmul_f32(v92, v90).u32[0];
  v72.i32[1] = v92.i32[1];
  v93 = vmul_f32(*v72.i8, 0x3F0000003F866666);
  v171 = *v71.i8;
  v94 = a9->_min.var2.var0 + v86;
  v174 = COERCE_DOUBLE(vadd_f32(*&a9->_min.var0.var0, vsub_f32(*v71.i8, v93)));
  v175 = COERCE_DOUBLE(vadd_f32(*&a9->_max.var0.var0, vadd_f32(*v71.i8, v93)));
  v95 = 0.1;
  do
  {
    v96 = *&v175;
    if ((v70 & 1) == 0)
    {
      v96 = *&v174;
    }

    if ((v70 & 2) != 0)
    {
      v97 = *(&v175 + 1);
    }

    else
    {
      v97 = *(&v174 + 1);
    }

    if (v70 >= 4)
    {
      v98 = v87;
    }

    else
    {
      v98 = v94;
    }

    v99 = v96 - *v177.i32;
    v100 = v97 - v176;
    v101 = v98 - v178;
    v102 = 1.0 / sqrtf(((v100 * v100) + (v99 * v99)) + (v101 * v101));
    v103 = acosf(((v76 * (v100 * v102)) + ((v99 * v102) * v75)) + ((v101 * v102) * v77));
    if (v103 > v95)
    {
      v95 = v103;
    }

    ++v70;
  }

  while (v70 != 8);
  v104 = vsub_f32(v171, *v177.i8);
  v105 = 1.0 / sqrtf((COERCE_FLOAT(vmul_f32(v104, v104).i32[1]) + (v104.f32[0] * v104.f32[0])) + ((v172 - v178) * (v172 - v178)));
  _D1 = vmul_n_f32(v104, v105);
  v104.f32[0] = (v172 - v178) * v105;
  _S5 = 0;
  v189 = -v104.f32[0];
  __asm { FMLA            S2, S5, V1.S[1] }

  v113 = (-0.0 * _D1.f32[0]) + (v104.f32[0] * 0.0);
  v114 = _D1.f32[0] + vmuls_lane_f32(-0.0, _D1, 1);
  v115 = sqrtf(((v113 * v113) + (_S2 * _S2)) + (v114 * v114));
  *&_S2 = _S2 * (1.0 / v115);
  v117 = v113 * (1.0 / v115);
  *&v118 = v114 * (1.0 / v115);
  __asm { FMLA            S17, S2, V1.S[1] }

  v179 = _S2;
  v180 = (v117 * v104.f32[0]) - (_D1.f32[1] * *&v118);
  v181 = -_D1.f32[0];
  v182 = 0;
  v183 = v117;
  v184 = (*&v118 * _D1.f32[0]) - (v104.f32[0] * *&_S2);
  v185 = -_D1.f32[1];
  v186 = 0;
  v120 = vextq_s8(v177, vrev64q_s32(v177), 8uLL);
  v120.f32[0] = v117;
  v120.f32[1] = v184;
  v187 = v118;
  v188 = _S17;
  v121.f32[0] = -v176;
  v121.i64[1] = _D1.u32[1] | 0x8000000000000000;
  v190 = 0;
  v121.f32[1] = -v176;
  v122 = vmulq_f32(v120, v121);
  v123.i64[0] = __PAIR64__(LODWORD(v180), _S2);
  v123.i64[1] = _D1.u32[0];
  v124 = vmulq_f32(v173, v123);
  v125 = vsubq_f32(v122, v124);
  v120.i64[0] = __PAIR64__(_S17, v118);
  v126 = vaddq_f32(v122, v124);
  v120.i64[1] = v104.u32[0];
  v127 = vmulq_n_f32(v120, v178);
  v128 = vsubq_f32(v125, v127);
  v128.i32[2] = vaddq_f32(v126, v127).i32[2];
  v191 = vaddq_f32(v128, xmmword_2764D5F20);
  *&v129 = sub_276154C0C(&v179, &v192, *v126.i64).u64[0];
  objc_msgSend_setTransform_(v23, v130, v129, v131, v132, &v192);
  v137 = v87;
  v138 = v94;
  if (v23)
  {
    objc_msgSend_direction(v23, v133, v134, v135, v136);
    LODWORD(v139) = HIDWORD(v192);
    LODWORD(v140) = LODWORD(v192);
    *&v141 = v193;
  }

  else
  {
    v141 = 0.0;
    v139 = 0.0;
    v140 = 0.0;
  }

  v142 = 1.0 / sqrtf(((*&v139 * *&v139) + (*&v140 * *&v140)) + (*&v141 * *&v141));
  *&v140 = *&v140 * v142;
  v143 = *&v139 * v142;
  v144 = *&v141 * v142;
  v145 = ((*(&v197 + 1) * v143) + (*&v140 * *&v197)) + (v144 * v198);
  v146 = (((*&v166 * v143) + (v169 * *&v140)) + (*(&v166 + 1) * v144)) - v145;
  if (((((*&v166 * v143) + (v167 * *&v140)) + (*(&v166 + 1) * v144)) - v145) < v146)
  {
    v146 = (((*&v166 * v143) + (v167 * *&v140)) + (*(&v166 + 1) * v144)) - v145;
  }

  if (((((*&v166 * v143) + (*(&v170 + 1) * *&v140)) + (*(&v166 + 1) * v144)) - v145) >= v146)
  {
    v147 = v146;
  }

  else
  {
    v147 = (((*&v166 * v143) + (*(&v170 + 1) * *&v140)) + (*(&v166 + 1) * v144)) - v145;
  }

  v148 = v168 * v143;
  v149 = ((v148 + (v169 * *&v140)) + (*&v170 * v144)) - v145;
  v150 = ((v148 + (v167 * *&v140)) + (*&v170 * v144)) - v145;
  *&v141 = ((v148 + (*(&v170 + 1) * *&v140)) + (*&v170 * v144)) - v145;
  if (v149 >= v150)
  {
    *&v139 = v149;
  }

  else
  {
    *&v139 = v150;
  }

  if (*&v139 >= *&v141)
  {
    v151 = *&v139;
  }

  else
  {
    v151 = *&v141;
  }

  v152 = objc_msgSend_lens(v23, v133, v141, v139, v140);
  v153 = fminf(v95 + v95, 1.56) * 180.0 / 3.14159265;
  *&v153 = v153;
  objc_msgSend_setFov_(v152, v154, v153, 3.14159265, v155);
  LODWORD(v156) = 1065185444;
  *&v157 = fminf(v147, 5.0) * 0.99;
  objc_msgSend_setNear_(v152, v158, v157, v156, v159);
  *&v160 = v151 * 1.01;
  objc_msgSend_setFar_(v152, v161, v160, v162, v163);
  v192 = v174;
  v193 = v138;
  v194 = v175;
  v195 = v137;
  objc_msgSend_updateCoordsAndTexcoords_camera_quad_texcoords_(self, v164, v175, v174, v165, &v192, v23, v16, v17);

  if (v203)
  {
    v204 = v203;
    operator delete(v203);
  }
}

- (id)createShadowsRenderer
{
  v5 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, a2, v2, v3, v4);
  v10 = objc_msgSend_highQualityShadowsSize(v5, v6, v7, v8, v9);

  v11 = [TSCH3DPyramidBlurShadowsRenderer alloc];
  LODWORD(v12) = 1074580685;
  v16 = objc_msgSend_initWithSize_targetRadiusFactor_(v11, v13, v12, v14, v15, v10);

  return v16;
}

+ (id)blurParametersArray
{
  if (qword_280A47C98 != -1)
  {
    sub_2764A8954();
  }

  v3 = qword_280A47C90;

  return v3;
}

@end