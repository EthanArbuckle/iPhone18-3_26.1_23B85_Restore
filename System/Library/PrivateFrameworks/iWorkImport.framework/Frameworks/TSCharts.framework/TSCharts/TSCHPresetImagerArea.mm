@interface TSCHPresetImagerArea
- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache;
@end

@implementation TSCHPresetImagerArea

- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache
{
  width = size.width;
  v79[10] = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_seriesStyles(preset, a2, size.width, size.height, scale);
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
  v79[0] = sub_27628CEA8(11.0, 10.0, v32);
  v79[1] = v33;
  v79[2] = sub_27628CEA8(41.0, 51.0, v32);
  v79[3] = v34;
  v79[4] = sub_27628CEA8(72.0, 38.0, v32);
  v79[5] = v35;
  v79[6] = sub_27628CEA8(134.0, 94.0, v32);
  v79[7] = v36;
  v79[8] = sub_27628CEA8(134.0, 10.0, v32);
  v79[9] = v37;
  v76[0] = sub_27628CEA8(11.0, 10.0, v32);
  v76[1] = v38;
  v76[2] = sub_27628CEA8(41.0, 77.0, v32);
  v76[3] = v39;
  v76[4] = sub_27628CEA8(72.0, 51.0, v32);
  v76[5] = v40;
  v76[6] = sub_27628CEA8(134.0, 51.0, v32);
  v76[7] = v41;
  v77 = sub_27628CEA8(134.0, 10.0, v32);
  v78 = v42;
  v45 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v43, v77, v42, v44, v30, 1497, 0);
  v50 = objc_msgSend_p_objectFromStyle_specific_default_(self, v46, v47, v48, v49, v30, 1408, 1411);
  hasAllResourcesForFill = objc_msgSend_tsch_hasAllResourcesForFill_(MEMORY[0x277D80248], v51, v52, v53, v54, v50);
  objc_msgSend_p_drawAreaInContext_points_pointsCount_stroke_fill_(self, v56, v57, v58, v59, context, v76, 5, v45, v50);

  v64 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v60, v61, v62, v63, v16, 1497, 0);
  v70 = objc_msgSend_p_objectFromStyle_specific_default_(self, v65, v66, v67, v68, v16, 1408, 1411);
  v74 = 0;
  if (hasAllResourcesForFill)
  {
    v74 = objc_msgSend_tsch_hasAllResourcesForFill_(MEMORY[0x277D80248], v69, v71, v72, v73, v70);
  }

  objc_msgSend_p_drawAreaInContext_points_pointsCount_stroke_fill_(self, v69, v71, v72, v73, context, v79, 5, v64, v70);

  if (cache)
  {
    *cache = v74;
  }
}

@end