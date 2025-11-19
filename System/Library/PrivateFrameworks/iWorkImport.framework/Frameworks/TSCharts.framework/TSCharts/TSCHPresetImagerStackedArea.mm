@interface TSCHPresetImagerStackedArea
- (void)p_drawShadowedContentIntoContext:(CGContext *)a3 size:(CGSize)a4 contentsScale:(double)a5 preset:(id)a6 target:(int)a7 shouldCache:(BOOL *)a8;
@end

@implementation TSCHPresetImagerStackedArea

- (void)p_drawShadowedContentIntoContext:(CGContext *)a3 size:(CGSize)a4 contentsScale:(double)a5 preset:(id)a6 target:(int)a7 shouldCache:(BOOL *)a8
{
  width = a4.width;
  v82[10] = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_seriesStyles(a6, a2, a4.width, a4.height, a5);
  v16 = objc_msgSend_objectAtIndexedSubscript_(v11, v12, v13, v14, v15, 0);
  if (objc_msgSend_count(v11, v17, v18, v19, v20) <= 1)
  {
    v25 = v16;
  }

  else
  {
    v25 = objc_msgSend_objectAtIndexedSubscript_(v11, v21, v22, v23, v24, 1);
  }

  v30 = v25;
  objc_msgSend_p_nativeSize(self, v26, v27, v28, v29);
  v32 = width / v31;
  v82[0] = sub_27628CEA8(10.0, 10.0, v32);
  v82[1] = v33;
  v82[2] = sub_27628CEA8(33.0, 40.0, v32);
  v82[3] = v34;
  v82[4] = sub_27628CEA8(71.0, 34.0, v32);
  v82[5] = v35;
  v82[6] = sub_27628CEA8(133.0, 77.0, v32);
  v82[7] = v36;
  v82[8] = sub_27628CEA8(133.0, 10.0, v32);
  v82[9] = v37;
  v79[0] = sub_27628CEA8(10.0, 10.0, v32);
  v79[1] = v38;
  v79[2] = sub_27628CEA8(33.0, 68.0, v32);
  v79[3] = v39;
  v79[4] = sub_27628CEA8(71.0, 51.0, v32);
  v79[5] = v40;
  v79[6] = sub_27628CEA8(133.0, 94.0, v32);
  v79[7] = v41;
  v79[8] = sub_27628CEA8(133.0, 77.0, v32);
  v79[9] = v42;
  v79[10] = sub_27628CEA8(71.0, 34.0, v32);
  v79[11] = v43;
  v79[12] = sub_27628CEA8(33.0, 40.0, v32);
  v79[13] = v44;
  v80 = sub_27628CEA8(10.0, 10.0, v32);
  v81 = v45;
  v48 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v46, v80, v45, v47, v30, 1497, 0);
  v53 = objc_msgSend_p_objectFromStyle_specific_default_(self, v49, v50, v51, v52, v30, 1408, 1411);
  hasAllResourcesForFill = objc_msgSend_tsch_hasAllResourcesForFill_(MEMORY[0x277D80248], v54, v55, v56, v57, v53);
  objc_msgSend_p_drawAreaInContext_points_pointsCount_stroke_fill_(self, v59, v60, v61, v62, a3, v79, 8, v48, v53);

  v67 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v63, v64, v65, v66, v16, 1497, 0);
  v73 = objc_msgSend_p_objectFromStyle_specific_default_(self, v68, v69, v70, v71, v16, 1408, 1411);
  v77 = 0;
  if (hasAllResourcesForFill)
  {
    v77 = objc_msgSend_tsch_hasAllResourcesForFill_(MEMORY[0x277D80248], v72, v74, v75, v76, v73);
  }

  objc_msgSend_p_drawAreaInContext_points_pointsCount_stroke_fill_(self, v72, v74, v75, v76, a3, v82, 5, v67, v73);

  if (a8)
  {
    *a8 = v77;
  }
}

@end