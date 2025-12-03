@interface TSCH3DGetSelectionKnobsPositionsRenderProcessor
- (tmat4x4<float>)modelViewNormalizedProjection;
- (void)submit:(id)submit;
@end

@implementation TSCH3DGetSelectionKnobsPositionsRenderProcessor

- (tmat4x4<float>)modelViewNormalizedProjection
{
  v8 = objc_msgSend_matrix(self, a3, v3, v4, v5);
  if (!v8)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCH3DGetSelectionKnobsPositionsRenderProcessor modelViewNormalizedProjection]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetSelectionKnobsPositionsPipeline.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 476, 0, "invalid nil value for '%{public}s'", "transforms");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v36 = 0;
  v35 = 0;
  v38 = 0;
  v39 = 0;
  v41 = xmmword_2764D5F60;
  v34 = 1056964608;
  v37 = 1056964608;
  v40 = 1056964608;
  v27 = objc_msgSend_projection(v8, v7, 0.0000305175853, v10, v11);
  *&v28 = sub_2761558A0(&v34, v27, v42).u64[0];
  v32 = objc_msgSend_current(v8, v29, v28, v30, v31);
  sub_2761558A0(v42, v32, retstr);

  return result;
}

- (void)submit:(id)submit
{
  v145 = *MEMORY[0x277D85DE8];
  submitCopy = submit;
  v8 = objc_msgSend_sceneObjectDelegate(self, v4, v5, v6, v7);
  v13 = objc_msgSend_geometry(v8, v9, v10, v11, v12);

  if (v13)
  {
    if (!self->_projectedPoints)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCH3DGetSelectionKnobsPositionsRenderProcessor submit:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DGetSelectionKnobsPositionsPipeline.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 484, 0, "invalid nil value for '%{public}s'", "_projectedPoints");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }

    objc_msgSend_modelViewNormalizedProjection(self, v14, v15, v16, v17);
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v36 = objc_msgSend_selectionKnobPositions(v13, v33, 0.0, v34, v35);
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, v38, v39, v40, &v128, v144, 16);
    if (v42)
    {
      v47 = *v129;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v129 != v47)
          {
            objc_enumerationMutation(v36);
          }

          v49 = *(*(&v128 + 1) + 8 * i);
          projectedPoints = self->_projectedPoints;
          if (v49)
          {
            objc_msgSend_value3(v49, v41, v43, v44, v45);
            v52 = v126.f32[1];
            v51 = v126.f32[0];
            v53 = v127;
          }

          else
          {
            v127 = 0.0;
            v126 = 0;
            v53 = 0.0;
            v52 = 0.0;
            v51 = 0.0;
          }

          *v46.i32 = v143 + (((v52 * v137) + (v134 * v51)) + (v140 * v53));
          v54 = (v142 + (((v52 * v136) + (v133 * v51)) + (v139 * v53))) / *v46.i32;
          v55 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v135, v52), v132, v51), v138, v53);
          v56 = vdup_lane_s32(v46, 0);
          *&v125 = vdiv_f32(vadd_f32(v141, v55), v56);
          *(&v125 + 2) = v54;
          v57 = objc_msgSend_vectorWithVec3_(TSCH3DVector, v41, *&v125, *&v56, *&v55, &v125);
          objc_msgSend_addObject_(projectedPoints, v58, v59, v60, v61, v57);
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v41, v43, v44, v45, &v128, v144, 16);
      }

      while (v42);
    }
  }

  else if (self->super._buffer)
  {
    objc_msgSend_normalizedKnobRadius(self, v14, v15, v16, v17);
    v63 = *&v62;
    objc_msgSend_modelViewNormalizedProjection(self, v64, v62, v65, v66);
    v71 = objc_msgSend_sceneObjectDelegate(self, v67, v68, v69, v70);
    shouldMerge = objc_msgSend_shouldMerge(v71, v72, v73, v74, v75);

    if (shouldMerge)
    {
      v125 = xmmword_2764D5EE0;
      v78 = sub_2761654D0(self->super._buffer);
      v83 = *v78;
      if (*v78 == *(v78 + 8))
      {
        v86 = 3.4028e38;
        v88 = -3.4028e38;
        v89 = -3.4028e38;
        v87 = 3.4028e38;
      }

      else
      {
        do
        {
          v84 = v83[1];
          v85 = v83[2];
          *v82.i32 = v143 + (((v84 * v137) + (v134 * *v83)) + (v140 * v85));
          v126 = vdiv_f32(vadd_f32(v141, vmla_n_f32(vmla_n_f32(vmul_n_f32(v135, v84), v132, *v83), v138, v85)), vdup_lane_s32(v82, 0));
          *&v79 = sub_276152BD8(&v125, &v126);
          v83 += 4;
        }

        while (v83 != *(v78 + 8));
        v86 = *(&v125 + 1);
        v87 = *&v125;
        v88 = *(&v125 + 3);
        v89 = *(&v125 + 2);
      }

      v96 = objc_msgSend_sceneObjectDelegate(self, v77, v79, v80, v81);
      objc_msgSend_addLabelBoundsForMerging_(v96, v97, v87, v86, (v89 - v87), (v88 - v86));
    }

    else
    {
      v125 = xmmword_2764D5EE0;
      v91 = sub_2761654D0(self->super._buffer);
      v95 = *v91;
      if (*v91 == v91[1])
      {
        LODWORD(v93) = 2139095039;
        LODWORD(v92) = 2139095039;
      }

      else
      {
        do
        {
          v126 = *v95;
          *&v92 = sub_276152BD8(&v125, &v126);
          v95 += 2;
        }

        while (v95 != v91[1]);
        LODWORD(v93) = DWORD1(v125);
        LODWORD(v92) = v125;
      }

      if (*(&v125 + 2) >= *&v92 && *(&v125 + 3) >= *&v93)
      {
        v99 = *&v93 + *(&v125 + 3);
        LODWORD(v93) = 0.5;
        v100 = v99 * 0.5;
        v101 = v100 * v135.f32[0];
        v102 = v141.f32[0] + (((v100 * v135.f32[0]) + (v132.f32[0] * *&v92)) + (v138.f32[0] * 0.0));
        v103 = v100 * v135.f32[1];
        v104 = ((v100 * v135.f32[1]) + (v132.f32[1] * *&v92)) + (v138.f32[1] * 0.0);
        v105 = v100 * v137;
        *&v92 = v143 + ((v105 + (v134 * *&v92)) + (v140 * 0.0));
        *&v94 = v143 + ((v105 + (v134 * *(&v125 + 2))) + (v140 * 0.0));
        v106 = (v141.f32[0] + ((v101 + (v132.f32[0] * *(&v125 + 2))) + (v138.f32[0] * 0.0))) / *&v94;
        *&v94 = (v141.f32[1] + ((v103 + (v132.f32[1] * *(&v125 + 2))) + (v138.f32[1] * 0.0))) / *&v94;
        v126.f32[0] = (v102 / *&v92) - v63;
        v126.f32[1] = ((v141.f32[1] + v104) / *&v92) - (v63 * 0.5);
        *&v92 = *&v94 - (v63 * 0.5);
        v124[0] = v63 + v106;
        v124[1] = *&v92;
        v107 = self->_projectedPoints;
        v108 = objc_msgSend_vectorWithVec2_(TSCH3DVector, v90, v92, v93, v94, &v126);
        objc_msgSend_addObject_(v107, v109, v110, v111, v112, v108);

        v113 = self->_projectedPoints;
        v118 = objc_msgSend_vectorWithVec2_(TSCH3DVector, v114, v115, v116, v117, v124);
        objc_msgSend_addObject_(v113, v119, v120, v121, v122, v118);
      }
    }
  }
}

@end