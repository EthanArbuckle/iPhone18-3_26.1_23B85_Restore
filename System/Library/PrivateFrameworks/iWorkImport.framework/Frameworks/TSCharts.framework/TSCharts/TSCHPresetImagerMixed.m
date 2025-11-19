@interface TSCHPresetImagerMixed
- (void)p_drawShadowedContentIntoContext:(CGContext *)a3 size:(CGSize)a4 contentsScale:(double)a5 preset:(id)a6 target:(int)a7 shouldCache:(BOOL *)a8;
@end

@implementation TSCHPresetImagerMixed

- (void)p_drawShadowedContentIntoContext:(CGContext *)a3 size:(CGSize)a4 contentsScale:(double)a5 preset:(id)a6 target:(int)a7 shouldCache:(BOOL *)a8
{
  width = a4.width;
  v117[16] = *MEMORY[0x277D85DE8];
  v11 = a6;
  objc_msgSend_p_nativeSize(self, v12, v13, v14, v15);
  v17 = width / v16;
  v108 = sub_27628CE94(16.0, 11.0, 20.0, 34.0, v17);
  v106 = v18;
  v100 = v20;
  v101 = v19;
  v21 = sub_27628CE94(42.0, 11.0, 20.0, 51.0, v17);
  v98 = v22;
  v99 = v21;
  v96 = v24;
  v97 = v23;
  v25 = sub_27628CE94(70.0, 11.0, 20.0, 68.0, v17);
  v27 = v26;
  v94 = v29;
  v95 = v28;
  v30 = sub_27628CE94(98.0, 11.0, 20.0, 85.0, v17);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v105 = v11;
  v38 = objc_msgSend_seriesStyles(v11, v37, v30, v31, v33);
  v43 = objc_msgSend_objectAtIndexedSubscript_(v38, v39, v40, v41, v42, 0);
  v102 = v43;
  v103 = v38;
  if (objc_msgSend_count(v38, v44, v45, v46, v47) <= 1)
  {
    v52 = v43;
  }

  else
  {
    v52 = objc_msgSend_objectAtIndexedSubscript_(v38, v48, v49, v50, v51, 1);
  }

  v55 = v52;
  v56 = 0;
  *v117 = v108;
  v117[1] = v106;
  v117[2] = v101;
  v117[3] = v100;
  *&v117[4] = v99;
  v117[5] = v98;
  v117[6] = v97;
  v117[7] = v96;
  *&v117[8] = v25;
  v117[9] = v27;
  v117[10] = v95;
  v117[11] = v94;
  *&v117[12] = v30;
  *&v117[13] = v32;
  hasAllResourcesForFill = 1;
  *&v117[14] = v34;
  v117[15] = v36;
  do
  {
    v58 = hasAllResourcesForFill;
    v107 = *&v117[v56];
    v109 = *&v117[v56 + 2];
    v59 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v53, *&v117[v56], *&v117[v56 + 2], v54, v55, 1502, 0, v94, v95);
    v65 = objc_msgSend_p_objectFromStyle_specific_default_(self, v60, v61, v62, v63, v55, 1413, 1411);
    hasAllResourcesForFill = 0;
    if (v58)
    {
      hasAllResourcesForFill = objc_msgSend_tsch_hasAllResourcesForFill_(MEMORY[0x277D80248], v64, v66, v67, v68, v65);
    }

    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = sub_27631CBD8;
    v110[3] = &unk_27A6B99C8;
    v114 = v107;
    v115 = v109;
    v110[4] = self;
    v111 = v59;
    v112 = v65;
    v113 = a3;
    v69 = v65;
    v70 = v59;
    objc_msgSend_renderInRoundedCornerClippedContext_forPreset_stroke_barRect_clipRect_isVertical_renderBlock_(self, v71, *&v107, *(&v107 + 1), *&v109, a3, v105, v70, 1, v110, *(&v109 + 1), v107, v109);

    v56 += 4;
  }

  while (v56 != 16);
  v116[0] = sub_27628CEA8(26.0, 22.0, v17);
  v116[1] = v72;
  v116[2] = sub_27628CEA8(52.0, 36.0, v17);
  v116[3] = v73;
  v116[4] = sub_27628CEA8(80.0, 75.0, v17);
  v116[5] = v74;
  v116[6] = sub_27628CEA8(108.0, 81.0, v17);
  v116[7] = v75;
  CGContextSaveGState(a3);
  v80 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v76, v77, v78, v79, v102, 1503, 0);
  v85 = objc_msgSend_mutableCopy(v80, v81, v82, v83, v84);

  objc_msgSend_setWidth_(v85, v86, 2.0, v87, v88);
  v89 = sub_2762A1ACC(v116, 4uLL, 0);
  objc_msgSend_paintPath_wantsInteriorStroke_inContext_(v85, v90, v91, v92, v93, v89, 0, a3);
  CGPathRelease(v89);
  CGContextRestoreGState(a3);

  if (a8)
  {
    *a8 = hasAllResourcesForFill;
  }
}

@end