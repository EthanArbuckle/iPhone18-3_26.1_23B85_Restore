@interface TSCH3DChartAddDepthBoundsSceneObjectMode
- (float)p_factorToNearPlaneForScene:(id)a3;
- (void)getBounds:(id)a3;
@end

@implementation TSCH3DChartAddDepthBoundsSceneObjectMode

- (float)p_factorToNearPlaneForScene:(id)a3
{
  v8 = objc_msgSend_clone(a3, a2, v3, v4, v5);
  v13 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v9, v10, v11, v12, v8);
  if (objc_msgSend_layoutConfigurationEnabled(v13, v14, v15, v16, v17))
  {
    if (v13)
    {
      objc_msgSend_originalInfoChartScale(v13, v18, v19, v20, v21);
      v22 = v138;
    }

    else
    {
      v138 = 0uLL;
      v22 = 0uLL;
    }

    *__p = v22;
    objc_msgSend_setInfoChartScale_(v13, v18, *&v22, v20, v21, __p);
    if (v13)
    {
      objc_msgSend_originalRotation(v13, v25, v26, v27, v28);
      v29 = v136;
      LODWORD(v30) = v137;
    }

    else
    {
      v137 = 0;
      v136 = 0;
      v29 = 0;
      v30 = 0.0;
    }

    __p[0] = v29;
    LODWORD(__p[1]) = LODWORD(v30);
    objc_msgSend_setRotation_(v13, v25, *&v29, v30, v28, __p);
    if (v8)
    {
      objc_msgSend_transform(v8, v31, v32, v33, v34);
    }

    else
    {
      memset(v128, 0, sizeof(v128));
    }

    sub_276154554(v128, __p);
    v35 = *(__p + 1);
    LODWORD(v20) = __p[0];
    v36 = *&__p[1];
    v37 = v131;
    v126 = v130;
    v127 = *__p;
    v38 = v132;
    v40 = v133;
    v39 = v134;
    v19 = 0.0;
    v41 = v135;
    if (v13)
    {
      objc_msgSend_adjustedInfoChartScale(v13, v18, 0.0, v20, v21);
      LODWORD(v19) = __p[1];
    }

    v42 = v36 + ((v35 * 0.0) + (v127 * 0.0));
    v43 = v38 + ((v37 * 0.0) + (v126 * 0.0));
    v44 = v41 + ((v39 * 0.0) + (v40 * 0.0));
    v45 = 1.0 / sqrtf(((v43 * v43) + (v42 * v42)) + (v44 * v44));
    *&v20 = v42 * v45;
    *&v21 = v43 * v45;
    v23 = ((v44 * v45) + ((*&v21 * 0.0) + (*&v20 * 0.0))) * *&v19;
    v24 = *&v20;
  }

  else
  {
    v23 = 1.0;
    LOBYTE(v24) = 0;
  }

  v46 = objc_msgSend_camera(v8, v18, v19, v20, v21);
  v51 = v46;
  if (v46)
  {
    objc_msgSend_position(v46, v47, v48, v49, v50);
    v52 = *&__p[1];
  }

  else
  {
    LODWORD(__p[1]) = 0;
    __p[0] = 0;
    v52 = 0.0;
  }

  v53 = objc_msgSend_lens(v51, v47, v48, v49, v50);
  objc_msgSend_near(v53, v54, v55, v56, v57);
  v59 = v58;

  if (v23 <= 0.00000011921)
  {
    v63 = MEMORY[0x277D81150];
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, 3.18618444e-58, v61, v62, "[TSCH3DChartAddDepthBoundsSceneObjectMode p_factorToNearPlaneForScene:]");
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAddBoundsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v70, v23, v71, v72, v64, v69, 136, 0, "invalid zlength %f", v23);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
  }

  v77 = (v52 - v59) / v23;
  if (v77 <= 0.00000011921)
  {
    v78 = MEMORY[0x277D81150];
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, 3.18618444e-58, v61, v62, "[TSCH3DChartAddDepthBoundsSceneObjectMode p_factorToNearPlaneForScene:]");
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, v81, v82, v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAddBoundsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v85, v77, v86, v87, v79, v84, 138, 0, "invalid factor %f", v77);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90, v91);
  }

  if (byte_280A46430 == 1)
  {
    v92 = objc_opt_class();
    v100 = NSStringFromSelector(a2);
    if (v13)
    {
      objc_msgSend_infoChartScale(v13, v93, v101, v102, v103);
      v104 = *v128;
    }

    else
    {
      v128[0] = 0uLL;
      LOBYTE(v104) = 0;
    }

    v105 = MEMORY[0x277CCACA8];
    sub_276152FD4("vec4(%f, %f, %f, %f)", v93, v94, v95, v96, v97, v98, v99, SLOBYTE(v104));
    if (v131 >= 0.0)
    {
      objc_msgSend_stringWithUTF8String_(v105, v106, v107, v108, v109, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v105, v106, v107, v108, v109, __p[0]);
    }
    v117 = ;
    if (SHIBYTE(v131) < 0)
    {
      operator delete(__p[0]);
    }

    v118 = MEMORY[0x277CCACA8];
    sub_276152FD4("vec3(%f, %f, %f)", v110, v111, v112, v113, v114, v115, v116, SLOBYTE(v24));
    if (v131 >= 0.0)
    {
      objc_msgSend_stringWithUTF8String_(v118, v119, v120, v121, v122, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v118, v119, v120, v121, v122, __p[0]);
    }
    v123 = ;
    v124 = v23;
    if (SHIBYTE(v131) < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PZlengthFFacto.isa, v92, self, v100, *&v124, v77, v117, v123);
  }

  return v77;
}

- (void)getBounds:(id)a3
{
  v5 = a3;
  v10 = objc_msgSend_scene(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_elementsSceneFromScene_(self, v11, v12, v13, v14, v10);

  v88 = xmmword_2764D5F00;
  v89 = xmmword_2764D60B0;
  v90 = xmmword_2764D60C0;
  v91 = xmmword_2764D5F00;
  v92 = 0x80000000800000;
  v94 = 0;
  v95 = 0;
  __p = 0;
  if (objc_msgSend_hasObjectBoundsForScene_pipeline_returningObjectBounds_(self, v16, 2.84809454e-306, -1.40444743e306, v17, v15, v5, &v88))
  {
    objc_msgSend_p_factorToNearPlaneForScene_(self, v18, v19, v20, v21, v15);
    v86 = v88;
    v87 = v89;
    v84 = vext_s8(*&vextq_s8(v86, v86, 8uLL), *&v89, 4uLL);
    v85 = v22;
    sub_276154FD8(&v86, &v84);
    if (byte_280A46430 == 1)
    {
      v27 = objc_opt_class();
      v28 = NSStringFromSelector(a2);
      v29 = MEMORY[0x277CCACA8];
      sub_276166580(&v88, v30, v31, v32, v33, v34, v35, v36);
      if (v97 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v29, v37, v38, v39, v40, v96);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v29, v37, v38, v39, v40, v96[0]);
      }
      v48 = ;
      if (v97 < 0)
      {
        operator delete(v96[0]);
      }

      v49 = MEMORY[0x277CCACA8];
      v83 = *v84.i32;
      sub_276152FD4("vec3(%f, %f, %f)", v41, v42, v43, v44, v45, v46, v47, SLOBYTE(v83));
      if (v97 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v49, v50, v51, v52, v53, v96);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v49, v50, v51, v52, v53, v96[0]);
      }
      v61 = ;
      if (v97 < 0)
      {
        operator delete(v96[0]);
      }

      v62 = MEMORY[0x277CCACA8];
      sub_276166580(&v86, v54, v55, v56, v57, v58, v59, v60);
      if (v97 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v62, v63, v64, v65, v66, v96);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v62, v63, v64, v65, v66, v96[0]);
      }
      v67 = ;
      if (v97 < 0)
      {
        operator delete(v96[0]);
      }

      NSLog(&cfstr_POriginalMaxEx.isa, v27, self, v28, v48, v61, v67);
    }

    v68 = objc_msgSend_processor(v5, v23, v24, v25, v26);
    v69 = sub_2761BFF34(&v86);
    objc_msgSend_geometry_(v68, v70, v71, v72, v73, v69);

    v78 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v74, v75, v76, v77, 5);
    objc_msgSend_submit_(v68, v79, v80, v81, v82, v78);
  }

  if (__p)
  {
    v94 = __p;
    operator delete(__p);
  }
}

@end