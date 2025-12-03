@interface TSCHPresetImagerBar
- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache;
@end

@implementation TSCHPresetImagerBar

- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache
{
  width = size.width;
  v121[16] = *MEMORY[0x277D85DE8];
  presetCopy = preset;
  objc_msgSend_p_nativeSize(self, v12, v13, v14, v15);
  v17 = width / v16;
  v112 = sub_27628CE94(8.0, 11.0, 127.0, 17.0, width / v16);
  v110 = v18;
  v103 = v20;
  v105 = v19;
  v21 = sub_27628CE94(8.0, 32.0, 102.0, 17.0, v17);
  v99 = v22;
  v101 = v21;
  v97 = v24;
  v98 = v23;
  v25 = sub_27628CE94(8.0, 54.0, 76.0, 17.0, v17);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = sub_27628CE94(8.0, 75.0, 51.0, 17.0, v17);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v109 = presetCopy;
  v40 = objc_msgSend_seriesStyles(presetCopy, v39, v32, v33, v35);
  v45 = objc_msgSend_objectAtIndexedSubscript_(v40, v41, v42, v43, v44, 0);
  if (objc_msgSend_count(v40, v46, v47, v48, v49) <= 1)
  {
    v54 = v45;
  }

  else
  {
    v54 = objc_msgSend_objectAtIndexedSubscript_(v40, v50, v51, v52, v53, 1);
  }

  v59 = v54;
  if (objc_msgSend_count(v40, v55, v56, v57, v58) <= 2)
  {
    v64 = v59;
  }

  else
  {
    v64 = objc_msgSend_objectAtIndexedSubscript_(v40, v60, v61, v62, v63, 2);
  }

  v69 = v64;
  v107 = v40;
  if (objc_msgSend_count(v40, v65, v66, v67, v68) <= 3)
  {
    v74 = v69;
  }

  else
  {
    v74 = objc_msgSend_objectAtIndexedSubscript_(v40, v70, v71, v72, v73, 3);
  }

  v75 = v74;
  *v121 = v32;
  *&v121[1] = v34;
  *&v121[2] = v36;
  v121[3] = v38;
  *&v121[4] = v25;
  v121[5] = v27;
  v121[6] = v29;
  v121[7] = v31;
  *&v121[8] = v101;
  v121[9] = v99;
  v121[10] = v98;
  v121[11] = v97;
  *&v121[12] = v112;
  v121[13] = v110;
  v121[14] = v105;
  v121[15] = v103;
  v106 = v45;
  v120[0] = v106;
  v104 = v59;
  v120[1] = v104;
  v102 = v69;
  v120[2] = v102;
  v76 = 0;
  v100 = v75;
  v120[3] = v100;
  hasAllResourcesForFill = 1;
  do
  {
    v78 = hasAllResourcesForFill;
    v79 = v120[v76];
    v80 = &v121[4 * v76];
    v111 = *v80;
    v113 = *(v80 + 1);
    v83 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v81, *v80, v80[2], v82, v79, 1498, 0);
    v89 = objc_msgSend_p_objectFromStyle_specific_default_(self, v84, v85, v86, v87, v79, 1409, 1411);
    hasAllResourcesForFill = 0;
    if (v78)
    {
      hasAllResourcesForFill = objc_msgSend_tsch_hasAllResourcesForFill_(MEMORY[0x277D80248], v88, v90, v91, v92, v89);
    }

    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = sub_276319094;
    v114[3] = &unk_27A6B99C8;
    v118 = v111;
    v119 = v113;
    v114[4] = self;
    v115 = v83;
    v116 = v89;
    contextCopy = context;
    v93 = v89;
    v94 = v83;
    objc_msgSend_renderInRoundedCornerClippedContext_forPreset_stroke_barRect_clipRect_isVertical_renderBlock_(self, v95, *&v111, *(&v111 + 1), *&v113, context, v109, v94, 0, v114, *(&v113 + 1), v111, v113);

    ++v76;
  }

  while (v76 != 4);
  if (cache)
  {
    *cache = hasAllResourcesForFill;
  }

  for (i = 3; i != -1; --i)
  {
  }
}

@end