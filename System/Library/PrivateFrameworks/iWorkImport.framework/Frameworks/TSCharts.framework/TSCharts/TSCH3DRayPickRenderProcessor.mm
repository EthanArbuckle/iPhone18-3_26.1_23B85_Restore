@interface TSCH3DRayPickRenderProcessor
- (TSCH3DRayPickRenderProcessor)init;
- (id)matrix;
- (void)geometry:(id)geometry;
- (void)submit:(id)submit;
@end

@implementation TSCH3DRayPickRenderProcessor

- (TSCH3DRayPickRenderProcessor)init
{
  v6 = objc_msgSend_processor(TSCH3DMatrixRenderProcessor, a2, v2, v3, v4);
  v11.receiver = self;
  v11.super_class = TSCH3DRayPickRenderProcessor;
  v7 = [(TSCH3DRetargetRenderProcessor *)&v11 initWithOriginal:v6];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pickedPoints = v7->_pickedPoints;
    v7->_pickedPoints = v8;
  }

  return v7;
}

- (id)matrix
{
  objc_opt_class();
  v7 = objc_msgSend_original(self, v3, v4, v5, v6);
  v8 = TSUCheckedDynamicCast();

  if (!v8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DRayPickRenderProcessor matrix]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRayPickPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 184, 0, "invalid nil value for '%{public}s'", "processor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  return v8;
}

- (void)geometry:(id)geometry
{
  geometryCopy = geometry;
  v9 = objc_msgSend_buffer(geometryCopy, v5, v6, v7, v8);
  buffer = self->_buffer;
  self->_buffer = v9;

  if (!geometryCopy || !self->_buffer)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DRayPickRenderProcessor geometry:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRayPickPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 191, 0, "geometry resource or buffer is nil %@", geometryCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30.receiver = self;
  v30.super_class = TSCH3DRayPickRenderProcessor;
  [(TSCH3DRenderProcessor *)&v30 geometry:geometryCopy];
}

- (void)submit:(id)submit
{
  submitCopy = submit;
  buffer = self->_buffer;
  if (!buffer)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCH3DRayPickRenderProcessor submit:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRayPickPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 196, 0, "invalid nil value for '%{public}s'", "_buffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    buffer = self->_buffer;
  }

  if (objc_msgSend_componentByteSize(buffer, v4, v6, v7, v8) != 4)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCH3DRayPickRenderProcessor submit:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRayPickPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 197, 0, "componentByteSize is not float");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
  }

  if (objc_msgSend_components(self->_buffer, v25, v26, v27, v28) != 3)
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "[TSCH3DRayPickRenderProcessor submit:]");
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRayPickPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v55, v56, v57, v58, v49, v54, 198, 0, "components is not 3");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
  }

  if (objc_msgSend_type(submitCopy, v44, v45, v46, v47) != 1)
  {
    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "[TSCH3DRayPickRenderProcessor submit:]");
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRayPickPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v74, v75, v76, v77, v68, v73, 200, 0, "geometry is not triangles");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81);
  }

  if (objc_msgSend_hasOffset(submitCopy, v63, v64, v65, v66))
  {
    v86 = objc_msgSend_offset(submitCopy, v82, v83, v84, v85);
  }

  else
  {
    v86 = 0;
  }

  if (objc_msgSend_hasCount(submitCopy, v82, v83, v84, v85))
  {
    v92 = objc_msgSend_count(submitCopy, v87, v88, v89, v90);
  }

  else
  {
    v92 = objc_msgSend_count(self->_buffer, v87, v88, v89, v90);
  }

  v96 = objc_msgSend_matrix(self, v91, v93, v94, v95);
  v101 = objc_msgSend_projection(v96, v97, v98, v99, v100);
  v106 = objc_msgSend_current(v96, v102, v103, v104, v105);
  sub_2761558A0(v101, v106, &v180);
  sub_276154AF4(&self->_position, &v180, v179, v107);
  *&v173[3] = 0;
  *&v173[1] = 0;
  v174 = 0;
  v175 = 0;
  v177 = xmmword_2764D5F60;
  v173[0] = 1056964608;
  v173[5] = 1056964608;
  v176 = 1056964608;
  sub_2761558A0(v173, &v180, v178);
  v180 = v178[0];
  v181 = v178[1];
  v182 = v178[2];
  v183 = v178[3];
  v108 = v86;
  v109 = *sub_27616536C(self->_buffer);
  HIDWORD(v111) = 2139095039;
  v178[0] = xmmword_2764D5EE0;
  if (v92 > v86)
  {
    v112 = v109 + 12 * v86 + 4;
    do
    {
      if (self->_slack <= 0.0)
      {
        memset(v173, 0, 12);
        v171 = 0;
        v172 = 0;
        v170 = 0;
        if (sub_2761549A0(v179, (v109 + 12 * v108), (v109 + 12 * v108 + 12), (v109 + 12 * v108 + 24), v173, &v171, &v170) && v170)
        {
          v121 = objc_msgSend_currentSceneObject(self->_sceneObjectDelegate, v117, v111, v118, v119);
          sceneObjectDelegate = self->_sceneObjectDelegate;
          if (sceneObjectDelegate)
          {
            objc_msgSend_currentElement(sceneObjectDelegate, v120, v122, v123, v124);
          }

          else
          {
            v169 = 0;
          }

          v126 = objc_msgSend_projection(v96, v120, v122, v123, v124);
          v131 = objc_msgSend_current(v96, v127, v128, v129, v130);
          v168 = 0;
          v136 = objc_msgSend_pickedPointWithSceneObject_element_projection_transform_objectSpacePoint_centerProjectionPoint_(TSCH3DPickedPoint, v132, v133, v134, v135, v121, &v169, v126, v131, v173, &v168);

          objc_msgSend_addObject_(self->_pickedPoints, v137, v138, v139, v140, v136);
        }
      }

      else
      {
        v113 = v112;
        v114 = 3;
        do
        {
          v115 = *(v113 - 1);
          v116 = v113[1];
          *v110.i32 = v183.f32[3] + (((*v113 * v181.f32[3]) + (v180.f32[3] * v115)) + (v182.f32[3] * v116));
          *v173 = vdiv_f32(vadd_f32(*v183.f32, vmla_n_f32(vmla_n_f32(vmul_n_f32(*v181.f32, *v113), *v180.f32, v115), *v182.f32, v116)), vdup_lane_s32(v110, 0));
          *&v111 = sub_276152BD8(v178, v173);
          v113 += 3;
          --v114;
        }

        while (v114);
      }

      v108 += 3;
      v112 += 36;
    }

    while (v108 < v92);
  }

  *&v111 = self->_slack;
  if (*&v111 > 0.0)
  {
    v141.i64[0] = v178[0].i64[0];
    v154 = vcgt_f32(*v178[0].f32, *&v178[0].u32[2]);
    if ((v154.i32[0] | v154.i32[1]))
    {
      v141 = 0uLL;
    }

    else
    {
      v141.i64[1] = v178[0].i64[1];
    }

    v142 = vdupq_lane_s32(*&v111, 0);
    v143.i64[0] = vsubq_f32(v141, v142).u64[0];
    v143.i64[1] = vaddq_f32(v141, v142).i64[1];
    v178[0] = v143;
    if (sub_276167BFC(v178[0].f32, &self->_position))
    {
      v149 = objc_msgSend_currentSceneObject(self->_sceneObjectDelegate, v144, v145, v146, v147);
      v153 = self->_sceneObjectDelegate;
      if (v153)
      {
        objc_msgSend_currentElement(v153, v148, v150, v151, v152);
      }

      else
      {
        v171 = 0;
      }

      v155 = objc_msgSend_projection(v96, v148, v150, v151, v152);
      v160 = objc_msgSend_current(v96, v156, v157, v158, v159);
      memset(v173, 0, 12);
      v169 = vmul_f32(vadd_f32(*v178[0].f32, *&v178[0].u32[2]), 0x3F0000003F000000);
      v163 = objc_msgSend_pickedPointWithSceneObject_element_projection_transform_objectSpacePoint_centerProjectionPoint_(TSCH3DPickedPoint, v161, *&v169, 0.0000305175853, v162, v149, &v171, v155, v160, v173, &v169);

      objc_msgSend_addObject_(self->_pickedPoints, v164, v165, v166, v167, v163);
    }
  }
}

@end