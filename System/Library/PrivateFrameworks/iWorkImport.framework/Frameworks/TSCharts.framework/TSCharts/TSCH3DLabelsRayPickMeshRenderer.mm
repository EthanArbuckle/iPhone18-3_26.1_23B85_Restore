@interface TSCH3DLabelsRayPickMeshRenderer
- (void)renderWithMeshRenderLabelInfo:(id)a3;
@end

@implementation TSCH3DLabelsRayPickMeshRenderer

- (void)renderWithMeshRenderLabelInfo:(id)a3
{
  v191 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v8 = objc_msgSend_renderer(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_pipeline(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_processor(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_mesh(v8, v19, v20, v21, v22);

  if (!v23)
  {
    v28 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, v24, v25, v26, v27, 6);
    v33 = objc_msgSend_resourceWithBuffer_(TSCH3DDataBufferResource, v29, v30, v31, v32, v28);
    objc_msgSend_setMesh_(v8, v34, v35, v36, v37, v33);
  }

  v38 = objc_msgSend_mesh(v8, v24, v25, v26, v27);
  v39 = sub_27618C648(v38);

  sub_2761EDA00(v39, 6uLL);
  v189 = 0u;
  *v190 = 0u;
  v188 = 0u;
  if (v3)
  {
    objc_msgSend_translation(v3, v40, 0.0, v41, v42);
    v44 = v155;
    LODWORD(v45) = v156;
  }

  else
  {
    v156 = 0;
    v155 = 0;
    v44 = 0;
    v45 = 0.0;
  }

  v159 = 0;
  v158 = 0;
  v157 = 1065353216;
  v160 = 1065353216;
  v161 = 0;
  v162 = 0;
  v46 = 0;
  v47 = vmul_f32(v44, 0);
  v48 = vrev64_s32(v47);
  v47.f32[0] = vaddv_f32(v47);
  *v43.i32 = *&v45 * 0.0;
  *&v45 = (*&v45 + v47.f32[0]) + 0.0;
  v49 = COERCE_DOUBLE(vadd_f32(vadd_f32(vadd_f32(v44, v48), vdup_lane_s32(v43, 0)), 0));
  v163 = 1065353216;
  v164 = v49;
  v165 = LODWORD(v45);
  v166 = (v47.f32[0] + *v43.i32) + 1.0;
  if (v3)
  {
    objc_msgSend_offset(v3, v40, 0.0, v49, v45);
    v46 = v144;
  }

  else
  {
    v144 = 0;
  }

  v147 = 0;
  v146 = 0;
  v145 = 1065353216;
  v148 = 1065353216;
  v149 = 0;
  v150 = 0;
  v50 = vmul_f32(v46, 0);
  v151 = 1065353216;
  v152 = vadd_f32(vadd_f32(v46, vrev64_s32(v50)), 0);
  v153 = vaddv_f32(v50) + 0.0;
  v154 = v153 + 1.0;
  *&v51 = sub_2761558A0(&v157, &v145, v167).u64[0];
  objc_msgSend_rotation(v3, v52, v51, v53, v54);
  v56 = __sincosf_stret(v55 * 0.017453);
  v57 = (1.0 - v56.__cosval) * 0.0;
  v58 = v56.__cosval + (v57 * 0.0);
  v59 = (v57 * 0.0) + 0.0;
  v60 = v56.__sinval + v59;
  v61 = v57 + 0.0;
  v62 = v61 - (v56.__sinval * 0.0);
  v63 = v59 - v56.__sinval;
  v64 = v61 + (v56.__sinval * 0.0);
  v65 = ((1.0 - v56.__cosval) * 0.0) + 0.0;
  v66 = v65 + (v56.__sinval * 0.0);
  v67 = v65 - (v56.__sinval * 0.0);
  v68 = v56.__cosval + (1.0 - v56.__cosval);
  v69 = (v58 * 0.0) + (v60 * 0.0);
  v142[0] = (v62 * 0.0) + (v58 + (v60 * 0.0));
  v142[1] = ((v58 * 0.0) + v60) + (v62 * 0.0);
  v142[2] = v62 + v69;
  v142[3] = (v62 * 0.0) + v69;
  v70 = (v58 * 0.0) + (v63 * 0.0);
  v142[4] = ((v58 * 0.0) + v63) + (v64 * 0.0);
  v142[5] = (v64 * 0.0) + (v58 + (v63 * 0.0));
  v142[6] = v64 + v70;
  v142[7] = (v64 * 0.0) + v70;
  v71 = (v66 * 0.0) + (v67 * 0.0);
  v142[8] = (v68 * 0.0) + (v66 + (v67 * 0.0));
  v142[9] = (v68 * 0.0) + (v67 + (v66 * 0.0));
  v142[10] = v68 + v71;
  v142[11] = (v68 * 0.0) + v71;
  v143 = xmmword_2764D5F20;
  *&v73 = sub_2761558A0(v167, v142, &v185).u64[0];
  if (v3)
  {
    objc_msgSend_alignmentOffset(v3, v72, v73, v74, v75);
    v76 = v131;
  }

  else
  {
    v131 = 0;
    v76 = 0;
  }

  v77 = vmul_f32(v76, 0);
  v132 = 1065353216;
  v134 = 0;
  v133 = 0;
  v135 = 1065353216;
  v136 = 0;
  v137 = 0;
  v138 = 1065353216;
  v139 = vadd_f32(vadd_f32(v76, vrev64_s32(v77)), 0);
  v140 = vaddv_f32(v77) + 0.0;
  v141 = v140 + 1.0;
  *&v79 = sub_2761558A0(&v185, &v132, &v168).u64[0];
  if (v3)
  {
    objc_msgSend_scale(v3, v78, v79, *v80.i64, v81);
    v80.i32[0] = v124;
    v82 = v125;
  }

  else
  {
    v82 = 0;
    v80.i32[0] = 0;
  }

  v126[0] = v80.i32[0];
  *&v126[1] = *v80.i32 * 0.0;
  *&v126[2] = *v80.i32 * 0.0;
  *&v126[3] = *v80.i32 * 0.0;
  *v80.i8 = vmul_f32(v82, 0);
  v127 = vzip1_s32(*v80.i8, v82);
  v128 = vzip1q_s32(v80, v80);
  v129 = vzip2_s32(v82, *v80.i8);
  v130 = xmmword_2764D5F20;
  sub_2761558A0(&v168, v126, &v178);
  v84 = 0;
  v85 = vmul_f32(v179, 0);
  *v86.i8 = v181;
  v87 = vadd_f32(*v178.f32, v85).u32[0];
  v88.i32[0] = vdup_lane_s32(v85, 1).u32[0];
  *v89.f32 = vmla_f32(v85, 0, *v178.f32);
  *v90.f32 = v181;
  v90.i64[1] = __PAIR64__(v181.u32[0], LODWORD(v182));
  v89.f32[2] = (v180 * 0.0) + (v178.f32[2] * 0.0);
  *v91.i8 = v183;
  v89.i32[3] = v87;
  v92 = vmlaq_f32(v89, 0, v90);
  *v90.f32 = v183;
  v90.i64[1] = __PAIR64__(v183.u32[0], LODWORD(v184));
  v93 = vaddq_f32(v90, v92);
  v90.i32[0] = vdup_lane_s32(*v178.f32, 1).u32[0];
  *&v90.u32[2] = v179;
  v90.i32[1] = v178.i32[2];
  v88.f32[1] = v180 * 0.0;
  v88.i64[1] = v178.i64[0];
  v94 = vaddq_f32(v90, v88);
  v95 = vuzp2q_s32(v86, vzip1q_s32(v86, v86));
  v96 = v95;
  v96.f32[1] = v182;
  v96.i32[3] = v95.i32[0];
  v97 = vuzp2q_s32(v91, vzip1q_s32(v91, v91));
  v98 = v97;
  v98.f32[1] = v184;
  v98.i32[3] = v97.i32[0];
  v99 = vaddq_f32(v98, vmlaq_f32(v94, 0, v96));
  v188 = v93;
  v189 = v99;
  v100 = COERCE_DOUBLE(vadd_f32(v183, vmla_f32(vmla_f32(v179, 0, *v178.f32), 0, v181)));
  *&v190[1] = v100;
  v190[0] = v184 + ((v178.f32[2] + v180) + (v182 * 0.0));
  v190[3] = v184 + ((v180 + (v178.f32[2] * 0.0)) + (v182 * 0.0));
  v185 = 0;
  *&v186[8] = 0u;
  *v186 = xmmword_2764D6880;
  v187 = xmmword_2764D6700;
  v101 = &v185;
  do
  {
    v102 = *v101++;
    v103 = &v188 + 12 * v102;
    v104 = *v39 + v84;
    v105 = *v103;
    *v104 = *v103;
    LODWORD(v105) = *(v103 + 2);
    *(v104 + 8) = LODWORD(v105);
    v84 += 12;
  }

  while (v84 != 72);
  v106 = objc_msgSend_mesh(v8, v83, v105, v100, *v99.i64);
  objc_msgSend_geometry_(v18, v107, v108, v109, v110, v106);

  v170 = 0;
  v169 = 0;
  v168 = 1065353216;
  v171 = 1065353216;
  v172 = 0;
  v173 = 0;
  v176 = 0;
  v175 = 0;
  v174 = 1065353216;
  v177 = 1065353216;
  objc_msgSend_replace_(v18, v111, v112, v113, v114, &v168);
  v119 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v115, v116, v117, v118, 1);
  objc_msgSend_submit_(v18, v120, v121, v122, v123, v119);
}

@end