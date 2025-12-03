@interface TSCH3DChartAddRadialBoundsSceneObjectMode
- (void)getBounds:(id)bounds;
@end

@implementation TSCH3DChartAddRadialBoundsSceneObjectMode

- (void)getBounds:(id)bounds
{
  boundsCopy = bounds;
  v9 = objc_msgSend_scene(boundsCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_elementsSceneFromScene_(self, v10, v11, v12, v13, v9);

  v19 = objc_msgSend_clone(v14, v15, v16, v17, v18);
  v24 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v20, v21, v22, v23, v19);
  v29 = v24;
  if (v24)
  {
    objc_msgSend_infoChartScaleVec3(v24, v25, v26, v27, v28);
    LODWORD(v30) = DWORD2(v87[0]);
  }

  else
  {
    DWORD2(v87[0]) = 0;
    *&v87[0] = 0;
    v30 = 0.0;
  }

  __asm { FMOV            V8.2S, #1.0 }

  *&v91 = _D8;
  DWORD2(v91) = LODWORD(v30);
  objc_msgSend_setInfoChartScaleVec3_(v29, v25, v30, v27, v28, &v91, *&v87[0]);
  if (v29)
  {
    objc_msgSend_stageScale(v29, v36, v37, v38, v39);
    LODWORD(v40) = DWORD2(v87[0]);
  }

  else
  {
    DWORD2(v87[0]) = 0;
    *&v87[0] = 0;
    v40 = 0.0;
  }

  *&v91 = _D8;
  DWORD2(v91) = LODWORD(v40);
  objc_msgSend_setStageScale_(v29, v36, v40, v38, v39, &v91, v87[0]);
  objc_msgSend_setLayoutConfigurationEnabled_(v29, v41, v42, v43, v44, 0);
  v91 = xmmword_2764D5F00;
  v92 = xmmword_2764D60B0;
  v93 = xmmword_2764D60C0;
  v94 = xmmword_2764D5F00;
  v95 = 0x80000000800000;
  v97 = 0;
  v98 = 0;
  __p = 0;
  if (objc_msgSend_hasObjectBoundsForScene_pipeline_returningObjectBounds_(self, v45, 2.84809454e-306, -1.40444743e306, v46, v19, boundsCopy, &v91))
  {
    v51 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v47, v48, v49, v50, v14);
    v56 = v51;
    if (v51)
    {
      objc_msgSend_infoChartScale(v51, v52, v53, v54, v55);
      v57 = *&v89;
      LODWORD(v58) = HIDWORD(v89);
    }

    else
    {
      v89 = 0uLL;
      v57 = 0.0;
      v58 = 0.0;
    }

    *v87 = v57;
    DWORD2(v87[0]) = 1065353216;
    HIDWORD(v87[0]) = LODWORD(v58);
    objc_msgSend_setInfoChartScale_(v56, v52, v58, v57, v55, v87);
    if (v56)
    {
      objc_msgSend_stageScale(v56, v59, v60, v61, v62);
      v63 = *&v89;
    }

    else
    {
      DWORD2(v89) = 0;
      *&v89 = 0;
      v63 = 0.0;
    }

    *v87 = v63;
    DWORD2(v87[0]) = 1065353216;
    objc_msgSend_setStageScale_(v56, v59, v63, v61, v62, v87);
    v89 = v91;
    v90 = v92;
    *v87 = self->_factor;
    *(v87 + 4) = LODWORD(v87[0]);
    sub_2761C0CD0(&v89, v87);
    if (v56)
    {
      objc_msgSend_unitTransform(v56, v64, v65, v66, v67);
    }

    else
    {
      memset(v87, 0, sizeof(v87));
    }

    sub_27618F9F8(&v89, v87, v88);
    v72 = objc_msgSend_processor(boundsCopy, v68, v69, v70, v71);
    v73 = sub_2761BFF34(v88);
    objc_msgSend_geometry_(v72, v74, v75, v76, v77, v73);

    v82 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v78, v79, v80, v81, 5);
    objc_msgSend_submit_(v72, v83, v84, v85, v86, v82);
  }

  if (__p)
  {
    v97 = __p;
    operator delete(__p);
  }
}

@end