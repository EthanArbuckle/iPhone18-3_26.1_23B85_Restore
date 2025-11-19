@interface TSCH3DChartSilhouetteEdgeCollectProcessor
- (TSCH3DChartSilhouetteEdgeCollectProcessor)initWithEdgeDetectionParameters:(const EdgeDetectionParameters *)a3;
- (id).cxx_construct;
- (int64_t)attribute:(id)a3 resource:(id)a4 specs:(const AttributeSpecs *)a5;
- (void)submit:(id)a3;
@end

@implementation TSCH3DChartSilhouetteEdgeCollectProcessor

- (TSCH3DChartSilhouetteEdgeCollectProcessor)initWithEdgeDetectionParameters:(const EdgeDetectionParameters *)a3
{
  v8 = objc_msgSend_processor(TSCH3DMatrixRenderProcessor, a2, v3, v4, v5);
  v11.receiver = self;
  v11.super_class = TSCH3DChartSilhouetteEdgeCollectProcessor;
  v9 = [(TSCH3DRetargetRenderProcessor *)&v11 initWithOriginal:v8];

  if (v9)
  {
    v9->_edgeDetectionParameters = *a3;
  }

  return v9;
}

- (int64_t)attribute:(id)a3 resource:(id)a4 specs:(const AttributeSpecs *)a5
{
  v8 = a3;
  v10 = a4;
  if (a5->var0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DChartSilhouetteEdgeCollectProcessor attribute:resource:specs:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSelectedElementHighlightSceneObject.mm");
    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, *&a5->var0, v22, v23, @"stride %lu offset %lu components %lu", a5->var0, a5->var1, a5->var2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v25, v26, v27, v28, v15, v20, 96, 0, "don't know how to deal with strided resource yet %@ specs %@", v10, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  if (qword_280A46550 == v8)
  {
    objc_msgSend_setVertices_(self, v9, v11, v12, v13, v10);
    v33 = -1;
  }

  else
  {
    v35.receiver = self;
    v35.super_class = TSCH3DChartSilhouetteEdgeCollectProcessor;
    v33 = [(TSCH3DRetargetRenderProcessor *)&v35 attribute:v8 resource:v10 specs:a5];
  }

  return v33;
}

- (void)submit:(id)a3
{
  v4 = a3;
  if (objc_msgSend_type(v4, v5, v6, v7, v8) != 1)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DChartSilhouetteEdgeCollectProcessor submit:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSelectedElementHighlightSceneObject.mm");
    v24 = objc_msgSend_type(v4, v20, v21, v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v25, v26, v27, v28, v14, v19, 109, 0, "invalid primitive type %ld only triangles are supported", v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  if (!objc_msgSend_hasOffset(v4, v9, v10, v11, v12) || (objc_msgSend_hasCount(v4, v33, v34, v35, v36) & 1) == 0)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCH3DChartSilhouetteEdgeCollectProcessor submit:]");
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSelectedElementHighlightSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v44, v45, v46, v47, v38, v43, 111, 0, "uanble to process primitive without count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
  }

  v52 = objc_msgSend_offset(v4, v33, v34, v35, v36);
  v57 = objc_msgSend_count(v4, v53, v54, v55, v56);
  v62 = objc_msgSend_buffer(self->_vertices, v58, v59, v60, v61);
  v63 = sub_27616536C(v62);

  sub_276371C74(v159, v63, v52, v57, v64, v65, v66);
  v155 = v159;
  sub_2761F27A8(__p, 0xAAAAAAAAAAAAAAABLL * ((v159[0][1] - *v159[0]) >> 2));
  v158[0] = 0;
  v158[1] = 0;
  v157 = v158;
  if (v160 >= 3)
  {
    v71 = 0;
    v72 = v160 / 3;
    do
    {
      v73 = 0;
      v144.i64[0] = sub_276370790(v159, v71, v68, v69, v70);
      do
      {
        sub_27637086C(v159, &v144, &v151, v69, v70);
        LODWORD(v68) = v151;
        if (*&v151 != 0.0 || (LODWORD(v68) = DWORD1(v151), *(&v151 + 1) != 0.0) || (LODWORD(v68) = DWORD2(v151), *(&v151 + 2) != 0.0))
        {
          sub_2763709F4(&v144, v73, &v151, v68, v69, v70);
          *&v68 = sub_276370B00(&v155, &v144, &v151, v74, v75, v76);
        }

        ++v73;
      }

      while (v73 != 3);
      ++v71;
    }

    while (v71 != v72);
  }

  v77 = objc_msgSend_matrix(self, v67, v68, v69, v70);
  v82 = objc_msgSend_current(v77, v78, v79, v80, v81);
  v83 = v82[1];
  v151 = *v82;
  v152 = v83;
  v84 = v82[3];
  v153 = v82[2];
  v154 = v84;
  v87 = sub_276154554(&v151, &v144);
  v136 = v144.f32[1];
  v137 = v144.f32[0];
  *&v86 = v145;
  v134 = v145;
  v135 = v144.f32[2];
  v132 = v147;
  v133 = v146;
  *&v88 = v148;
  v87.f32[0] = v149;
  v130 = v149;
  v131 = v148;
  v89 = v150;
  edges = self->_edges;
  if (!edges)
  {
    v91 = objc_alloc_init(TSCH3Dvec3DataBuffer);
    v92 = self->_edges;
    self->_edges = v91;

    edges = self->_edges;
  }

  v93 = objc_msgSend_container(edges, v85, *v87.i64, v88, v86);
  v97 = v157;
  if (v157 != v158)
  {
    v98 = v93;
    LODWORD(v94) = 1016003125;
    do
    {
      if (((v97[9] | v97[8]) & 0x8000000000000000) == 0)
      {
        sub_276370D48(&v155, v97 + 64, &v144, v94, v95, v96);
        v99 = v144;
        v101 = v145;
        v100 = v146;
        v102 = (*(v97 + 11) + *(v97 + 14)) * 0.5;
        v142 = vmul_f32(vadd_f32(*(v97 + 36), v97[6]), 0x3F0000003F000000);
        v143 = v102;
        sub_276154744(&v142, &v151, &v140, 0.0000305175853);
        *&v94 = ((v132 * v101) + (v135 * v99.f32[3])) + (v89 * v100);
        *&v95 = ((v134 * v101) + (v137 * v99.f32[3])) + (v131 * v100);
        v103 = ((v133 * v101) + (v136 * v99.f32[3])) + (v130 * v100);
        v104 = 1.0 / sqrtf(((v103 * v103) + (*&v95 * *&v95)) + (*&v94 * *&v94));
        *&v94 = *&v94 * v104;
        v105 = v103 * v104;
        *&v95 = *&v95 * v104;
        v106 = ((v132 * v99.f32[1]) + (v135 * v99.f32[0])) + (v89 * v99.f32[2]);
        *v111.i32 = ((v134 * v99.f32[1]) + (v137 * v99.f32[0])) + (v131 * v99.f32[2]);
        v107 = ((v133 * v99.f32[1]) + (v136 * v99.f32[0])) + (v130 * v99.f32[2]);
        v108 = 1.0 / sqrtf(((v107 * v107) + (*v111.i32 * *v111.i32)) + (v106 * v106));
        v109 = v106 * v108;
        v110 = v107 * v108;
        *v111.i32 = *v111.i32 * v108;
        v112 = 1.0 / sqrtf(((v140.f32[1] * v140.f32[1]) + (v140.f32[0] * v140.f32[0])) + (v141 * v141));
        v113 = -(v140.f32[0] * v112);
        v114 = -(v140.f32[1] * v112);
        v115 = -(v141 * v112);
        v116 = ((v110 * v114) + (v113 * *v111.i32)) + (v115 * v109);
        *&v94 = ((v105 * v114) + (v113 * *&v95)) + (v115 * *&v94);
        v96 = 0.0;
        *&v95 = v116 >= 0.0 ? 0.0 : -1.0;
        v117 = v116 <= 0.0 ? *&v95 : 1.0;
        v118 = *&v94 <= 0.0;
        *&v94 = *&v94 >= 0.0 ? 0.0 : -1.0;
        v119 = v118 ? *&v94 : 1.0;
        if (self->_edgeDetectionParameters.detectSharpEdges && (*&v94 = cosf(self->_edgeDetectionParameters.sharpEdgeThreshold * 0.017453), *&v96 = v144.f32[1] * v145, *&v95 = ((v144.f32[1] * v145) + (v144.f32[0] * v144.f32[3])) + (v144.f32[2] * v146), *&v95 <= *&v94) || self->_edgeDetectionParameters.detectSilhouetteEdges && v117 != v119)
        {
          v120 = *(v97 + 9);
          v121 = *(v97 + 10);
          v122 = *(v97 + 11);
          *v111.i32 = *(&v154 + 3) + (((v121 * *(&v152 + 3)) + (*(&v151 + 3) * v120)) + (*(&v153 + 3) * v122));
          v138 = vdiv_f32(vadd_f32(*&v154, vmla_n_f32(vmla_n_f32(vmul_n_f32(*&v152, v121), *&v151, v120), *&v153, v122)), vdup_lane_s32(v111, 0));
          v139 = (*(&v154 + 2) + (((v121 * *(&v152 + 2)) + (*(&v151 + 2) * v120)) + (*(&v153 + 2) * v122))) / *v111.i32;
          sub_2761C14E8(v98, &v138);
          v123 = *(v97 + 12);
          v124 = *(v97 + 13);
          v125 = *(v97 + 14);
          *v126.i32 = *(&v154 + 3) + (((v124 * *(&v152 + 3)) + (*(&v151 + 3) * v123)) + (*(&v153 + 3) * v125));
          v138 = vdiv_f32(vadd_f32(*&v154, vmla_n_f32(vmla_n_f32(vmul_n_f32(*&v152, v124), *&v151, v123), *&v153, v125)), vdup_lane_s32(v126, 0));
          v139 = (*(&v154 + 2) + (((v124 * *(&v152 + 2)) + (*(&v151 + 2) * v123)) + (*(&v153 + 2) * v125))) / *v126.i32;
          sub_2761C14E8(v98, &v138);
        }
      }

      v127 = v97[1];
      if (v127)
      {
        do
        {
          v128 = v127;
          v127 = *v127;
        }

        while (v127);
      }

      else
      {
        do
        {
          v128 = v97[2];
          v129 = *v128 == v97;
          v97 = v128;
        }

        while (!v129);
      }

      v97 = v128;
    }

    while (v128 != v158);
  }

  sub_276372980(&v157, v158[0]);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (id).cxx_construct
{
  *(self + 12) = 257;
  *(self + 7) = 1106247680;
  return self;
}

@end