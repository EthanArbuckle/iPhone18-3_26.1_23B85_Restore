@interface TSCH3DSageGeometryHelper
+ (CGRect)computeSageChartAreaBoundsForChartInfo:(id)info geometryRect:(CGRect)rect returningContainingViewportSize:(id *)size;
- (BOOL)p_hasValidContainingViewport;
- (CGRect)computeSageLayoutCBBForSpiceDoc:(BOOL)doc;
@end

@implementation TSCH3DSageGeometryHelper

+ (CGRect)computeSageChartAreaBoundsForChartInfo:(id)info geometryRect:(CGRect)rect returningContainingViewportSize:(id *)size
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  infoCopy = info;
  v12 = sub_27635FB94(__p);
  v16 = objc_msgSend_create3DSceneWithLayoutSettings_styleProvidingSource_(infoCopy, v13, v12, v14, v15, __p, 0);
  objc_msgSend_setIsFixedPosition_forScene_(TSCH3DChartValueAxisTitleSceneObject, v17, v18, v19, v20, 1, v16);
  v25 = objc_msgSend_helperWithInfo_(TSCH3DChartResizerHelper, v21, v22, v23, v24, infoCopy);
  v161.origin.x = x;
  v161.origin.y = y;
  v161.size.width = width;
  v161.size.height = height;
  v144 = v25;
  MinX = CGRectGetMinX(v161);
  v162.origin.x = x;
  v162.origin.y = y;
  v162.size.width = width;
  v162.size.height = height;
  MinY = CGRectGetMinY(v162);
  v163.origin.x = x;
  v163.origin.y = y;
  v163.size.width = width;
  v163.size.height = height;
  MaxX = CGRectGetMaxX(v163);
  v164.origin.x = x;
  v164.origin.y = y;
  v164.size.width = width;
  v164.size.height = height;
  MaxY = CGRectGetMaxY(v164);
  *&v30 = MinX;
  *&v31 = MinY;
  *&v32 = MaxX;
  __p[0] = __PAIR64__(LODWORD(v31), LODWORD(v30));
  *&MaxY = MaxY;
  __p[1] = __PAIR64__(LODWORD(MaxY), v32);
  v34 = objc_msgSend_boundsLayoutResizedForScene_bounds_resizeStartingSize_mode_returningResultSize_(v25, v33, MaxY, v30, v31, v16, __p, 0, 2, 0);
  objc_msgSend_invalidateBounds(v34, v35, v36, v37, v38);
  objc_msgSend_setMode_(v34, v39, v40, v41, v42, 4);
  v47 = objc_msgSend_projectedBounds(v34, v43, v44, v45, v46);
  v159 = xmmword_2764D5ED0;
  sub_2761526F4(&v159, v47 + 2, v145);
  *__p = *v145;
  v154 = v47;
  v155 = 1.0;
  v156 = 0;
  v157 = 0;
  *&v48 = sub_276152C5C(__p, v47 + 10, v145).u64[0];
  sub_27615294C(v145, &v47[12], &v158, v48, v49, v50, v51);
  v56 = v158;
  if (size)
  {
    if (*size)
    {
      v57 = MEMORY[0x277D81150];
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "+[TSCH3DSageGeometryHelper computeSageChartAreaBoundsForChartInfo:geometryRect:returningContainingViewportSize:]");
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageGeometryHelper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v64, v65, v66, v67, v58, v63, 116, 0, "expected nil value for '%{public}s'", "*sizeValuePointer");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
    }

    v72 = MEMORY[0x277CCAE60];
    if (v34)
    {
      objc_msgSend_containingViewport(v34, v52, v53, v54, v55);
      v73 = vcvtq_f64_f32(vcvt_f32_s32(__p[0]));
      objc_msgSend_valueWithCGSize_(v72, v74, v73.f64[0], v73.f64[1], v75);
    }

    else
    {
      __p[0] = 0;
      objc_msgSend_valueWithCGSize_(MEMORY[0x277CCAE60], v52, 0.0, 0.0, v55);
    }
    *size = ;
  }

  else
  {
    v76 = MEMORY[0x277D81150];
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "+[TSCH3DSageGeometryHelper computeSageChartAreaBoundsForChartInfo:geometryRect:returningContainingViewportSize:]");
    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v79, v80, v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageGeometryHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v83, v84, v85, v86, v77, v82, 114, 0, "invalid nil value for '%{public}s'", "sizeValuePointer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88, v89, v90);
  }

  if (byte_280A46430 == 1)
  {
    v91 = objc_opt_class();
    v92 = NSStringFromSelector(a2);
    v165.origin.x = x;
    v165.origin.y = y;
    v165.size.width = width;
    v165.size.height = height;
    v142 = v92;
    v141 = NSStringFromCGRect(v165);
    if (v34)
    {
      objc_msgSend_containingViewport(v34, v93, v100, v101, v102);
      v103 = v152;
    }

    else
    {
      v103 = 0;
      v152 = 0;
    }

    v104 = MEMORY[0x277CCACA8];
    sub_276152FD4("ivec2(%d, %d)", v93, v94, v95, v96, v97, v98, v99, v103);
    if (SHIBYTE(v154) >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v104, v105, v106, v107, v108, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v104, v105, v106, v107, v108, __p[0]);
    }
    v109 = ;
    if (SHIBYTE(v154) < 0)
    {
      operator delete(__p[0]);
    }

    v166.origin.x = *&v56;
    v166.origin.y = *(&v56 + 1);
    v166.size.width = (*(&v56 + 2) - *&v56);
    v166.size.height = (*(&v56 + 3) - *(&v56 + 1));
    v110 = NSStringFromCGRect(v166);
    v159 = xmmword_2764D5ED0;
    sub_2761526F4(&v159, v47 + 10, v145);
    *__p = *v145;
    v154 = v47;
    v155 = 1.0;
    v156 = 0;
    v157 = 0;
    sub_2761526F4(__p, v47 + 14, v145);
    v151 = vmulq_n_f32(*v145, v155);
    v111 = MEMORY[0x277CCACA8];
    sub_276152EB4(v151.f32, v112, v113, v114, v115, v116, v117, v118);
    if (SHIBYTE(v146) >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v111, v119, v120, v121, v122, v145);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v111, v119, v120, v121, v122, v145[0]);
    }
    v123 = ;
    if (SHIBYTE(v146) < 0)
    {
      operator delete(v145[0]);
    }

    v158 = xmmword_2764D5ED0;
    sub_2761526F4(&v158, v47 + 2, &v159);
    *v145 = v159;
    v146 = v47;
    v147 = 1.0;
    v148 = 0;
    v149 = 0;
    sub_2761526F4(v145, v47 + 14, &v159);
    v150 = vmulq_n_f32(v159, v147);
    v124 = MEMORY[0x277CCACA8];
    sub_276152EB4(v150.f32, v125, v126, v127, v128, v129, v130, v131);
    if (v160 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v124, v132, v133, v134, v135, &v159);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v124, v132, v133, v134, v135, v159.i64[0]);
    }
    v136 = ;
    if (v160 < 0)
    {
      operator delete(v159.i64[0]);
    }

    NSLog(&cfstr_PRectCvResultB.isa, v91, self, v142, v141, v109, v110, v123, v136);
  }

  v137 = *&v56;
  v138 = *(&v56 + 1);
  v139 = (*(&v56 + 2) - *&v56);
  v140 = (*(&v56 + 3) - *(&v56 + 1));
  result.size.height = v140;
  result.size.width = v139;
  result.origin.y = v138;
  result.origin.x = v137;
  return result;
}

- (BOOL)p_hasValidContainingViewport
{
  v6 = objc_msgSend_objectValueForProperty_(self->super._chartInfo, a2, v2, v3, v4, 1074);
  if (v6)
  {
    objc_msgSend_containingViewportForVector_(TSCH3DChartResizerHelper, v5, v7, v8, v9, v6);
    v11 = v13 > 0 && v14 > 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGRect)computeSageLayoutCBBForSpiceDoc:(BOOL)doc
{
  docCopy = doc;
  if (byte_280A46430 == 1)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(a2);
    NSLog(&cfstr_PBegin.isa, v9, self, v10);
  }

  v11 = objc_msgSend_upgraderWithChartInfo_(TSCH3DSageGeometryHelperLimitingSeriesUpgrader, a2, v3, v4, v5, self->super._chartInfo);
  objc_msgSend_naturalSize(self, v12, v13, v14, v15);
  objc_msgSend_upgradeForSpice_naturalSize_(v11, v16, v17, v18, v19, docCopy);
  v24 = objc_msgSend_boundsLayout(v11, v20, v21, v22, v23);
  if (objc_msgSend_p_hasValidContainingViewport(self, v25, v26, v27, v28))
  {
    v33 = v24;
    if (v24)
    {
      goto LABEL_8;
    }
  }

  else
  {
    objc_msgSend_naturalSize(self, v29, v30, v31, v32);
    *&v34 = v34;
    *&v35 = v35;
    __p[0] = __PAIR64__(LODWORD(v35), LODWORD(v34));
    v33 = objc_msgSend_boundsLayoutByResizingToLayoutSize_(v11, v36, v34, v35, v37, __p);

    if (v33)
    {
      goto LABEL_8;
    }
  }

  v38 = MEMORY[0x277D81150];
  v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "[TSCH3DSageGeometryHelper computeSageLayoutCBBForSpiceDoc:]");
  v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageGeometryHelper.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 145, 0, "invalid nil value for '%{public}s'", "boundsLayout");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
LABEL_8:
  v170 = objc_msgSend_projectedBounds(v33, v29, v30, v31, v32);
  v171 = 1.0;
  v172 = 0;
  v173 = 0;
  v174 = xmmword_2764D5ED0;
  sub_2761526F4(&v174, v170 + 10, &v175);
  *__p = v175;
  v165 = v170;
  v166 = v171;
  v167 = v172;
  v168 = v173;
  sub_2761526F4(__p, v170 + 14, &v175);
  v169 = vmulq_n_f32(v175, v166);
  v55 = objc_msgSend_resizerHelper(v11, v53, *v169.i64, *v175.i64, v54);

  if (!v55)
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "[TSCH3DSageGeometryHelper computeSageLayoutCBBForSpiceDoc:]");
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSageGeometryHelper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v67, v68, v69, v70, v61, v66, 149, 0, "invalid nil value for '%{public}s'", "upgrader.resizerHelper");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
  }

  v75 = objc_msgSend_resizerHelper(v11, v56, v57, v58, v59);
  v80 = v75;
  if (v75)
  {
    objc_msgSend_chartBodyLayoutOffsetInChartAreaLayoutSpaceUsingConverter_(v75, v76, v77, v78, v79, &v170);
  }

  else
  {
    v163 = 0;
  }

  v81 = v169.f32[3] - v169.f32[1];
  if ((v169.f32[2] - v169.f32[0]) < 0.0 || v81 < 0.0)
  {
    v85 = *(&v163 + 1);
    v86 = v163;
    LODWORD(v83) = HIDWORD(v86);
    LODWORD(v84) = v86;
    v82 = *&v163;
  }

  else
  {
    v82 = *&v163 + 0.0;
    v83 = *(&v163 + 1) + 0.0;
    v84 = (v169.f32[2] - v169.f32[0]) + *&v163;
    v85 = v81 + *(&v163 + 1);
  }

  v87 = v82;
  v88 = v83;
  v89 = (v84 - v82);
  v90 = (v85 - v83);
  if (byte_280A46430 == 1)
  {
    v91 = objc_opt_class();
    v160 = NSStringFromSelector(a2);
    v96 = objc_msgSend_boundsLayout(v11, v92, v93, v94, v95);
    v159 = v96;
    if (v96)
    {
      objc_msgSend_containingViewport(v96, v97, v104, v105, v106);
      v107 = v162;
    }

    else
    {
      v107 = 0;
      v162 = 0;
    }

    v108 = MEMORY[0x277CCACA8];
    sub_276152FD4("ivec2(%d, %d)", v97, v98, v99, v100, v101, v102, v103, v107);
    if (SHIBYTE(v165) >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v108, v109, v110, v111, v112, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v108, v109, v110, v111, v112, __p[0]);
    }
    v120 = ;
    if (SHIBYTE(v165) < 0)
    {
      operator delete(__p[0]);
    }

    v121 = MEMORY[0x277CCACA8];
    sub_276152EB4(v169.f32, v113, v114, v115, v116, v117, v118, v119);
    if (SHIBYTE(v165) >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v121, v122, v123, v124, v125, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v121, v122, v123, v124, v125, __p[0]);
    }
    v126 = ;
    if (SHIBYTE(v165) < 0)
    {
      operator delete(__p[0]);
    }

    v174 = xmmword_2764D5ED0;
    sub_2761526F4(&v174, v170 + 2, &v175);
    *__p = v175;
    v165 = v170;
    v166 = v171;
    v167 = v172;
    v168 = v173;
    sub_2761526F4(__p, v170 + 14, &v175);
    v161 = vmulq_n_f32(v175, v166);
    v127 = MEMORY[0x277CCACA8];
    sub_276152EB4(v161.f32, v128, v129, v130, v131, v132, v133, v134);
    if (v176 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v127, v135, v136, v137, v138, &v175);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v127, v135, v136, v137, v138, v175.i64[0]);
    }
    v146 = ;
    if (v176 < 0)
    {
      operator delete(v175.i64[0]);
    }

    v147 = MEMORY[0x277CCACA8];
    v158 = *&v163;
    sub_276152FD4("vec2(%f, %f)", v139, v140, v141, v142, v143, v144, v145, SLOBYTE(v158));
    if (v176 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v147, v148, v149, v150, v151, &v175);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v147, v148, v149, v150, v151, v175.i64[0]);
    }
    v152 = ;
    if (v176 < 0)
    {
      operator delete(v175.i64[0]);
    }

    v177.origin.x = v87;
    v177.origin.y = v88;
    v177.size.width = v89;
    v177.size.height = v90;
    v153 = NSStringFromCGRect(v177);
    NSLog(&cfstr_PCvCbbOrientOf.isa, v91, self, v160, v120, v126, v146, v152, v153);
  }

  v154 = v87;
  v155 = v88;
  v156 = v89;
  v157 = v90;
  result.size.height = v157;
  result.size.width = v156;
  result.origin.y = v155;
  result.origin.x = v154;
  return result;
}

@end