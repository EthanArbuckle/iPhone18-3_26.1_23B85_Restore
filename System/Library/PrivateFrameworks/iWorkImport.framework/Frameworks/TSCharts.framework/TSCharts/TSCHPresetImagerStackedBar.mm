@interface TSCHPresetImagerStackedBar
- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache;
@end

@implementation TSCHPresetImagerStackedBar

- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache
{
  width = size.width;
  v119 = *MEMORY[0x277D85DE8];
  presetCopy = preset;
  objc_msgSend_p_nativeSize(self, v11, v12, v13, v14);
  v16 = width / v15;
  v114[0] = sub_27628CE94(8.0, 11.0, 127.0, 17.0, v16);
  v114[1] = v17;
  v114[2] = v18;
  v114[3] = v19;
  v114[4] = sub_27628CE94(8.0, 32.0, 102.0, 17.0, v16);
  v114[5] = v20;
  v114[6] = v21;
  v114[7] = v22;
  v114[8] = sub_27628CE94(8.0, 54.0, 76.0, 17.0, v16);
  v114[9] = v23;
  v114[10] = v24;
  v114[11] = v25;
  v115 = sub_27628CE94(8.0, 75.0, 51.0, 17.0, v16);
  v116 = v26;
  v117 = v27;
  v118 = v28;
  v30 = objc_msgSend_seriesStyles(presetCopy, v29, v115, v26, v27);
  v35 = objc_msgSend_objectAtIndexedSubscript_(v30, v31, v32, v33, v34, 0);
  if (objc_msgSend_count(v30, v36, v37, v38, v39) <= 1)
  {
    v44 = v35;
  }

  else
  {
    v44 = objc_msgSend_objectAtIndexedSubscript_(v30, v40, v41, v42, v43, 1);
  }

  v96 = v44;
  v49 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v45, v46, v47, v48, v35, 1498, 0);
  v94 = v35;
  v54 = objc_msgSend_p_objectFromStyle_specific_default_(self, v50, v51, v52, v53, v35, 1409, 1411);
  hasAllResourcesForFill = objc_msgSend_tsch_hasAllResourcesForFill_(MEMORY[0x277D80248], v55, v56, v57, v58, v54);
  v59 = 0;
  v60 = MEMORY[0x277D85DD0];
  do
  {
    v61 = *&v114[v59];
    v62 = *&v114[v59 + 1];
    v63 = *&v114[v59 + 2];
    v64 = *&v114[v59 + 3];
    v106[0] = v60;
    v106[1] = 3221225472;
    v106[2] = sub_276319AC8;
    v106[3] = &unk_27A6B99C8;
    v106[4] = self;
    contextCopy = context;
    v110 = v61;
    v111 = v62;
    v112 = v63 * 0.5;
    v113 = v64;
    v65 = v49;
    v107 = v65;
    v66 = v54;
    v108 = v66;
    objc_msgSend_renderInRoundedCornerClippedContext_forPreset_stroke_barRect_clipRect_isVertical_renderBlock_(self, v67, v61, v62, v63 * 0.5, context, presetCopy, v65, 0, v106, v64, v61, v62, v63, v64);

    v59 += 4;
  }

  while (v59 != 16);

  v72 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v68, v69, v70, v71, v96, 1498, 0);
  v78 = objc_msgSend_p_objectFromStyle_specific_default_(self, v73, v74, v75, v76, v96, 1409, 1411);
  v82 = 0;
  if (hasAllResourcesForFill)
  {
    v82 = objc_msgSend_tsch_hasAllResourcesForFill_(MEMORY[0x277D80248], v77, v79, v80, v81, v78);
  }

  v93 = v82;
  v83 = 0;
  v84 = MEMORY[0x277D85DD0];
  do
  {
    v85 = *&v114[v83];
    v86 = *&v114[v83 + 1];
    v87 = *&v114[v83 + 2];
    v88 = *&v114[v83 + 3];
    v98[0] = v84;
    v98[1] = 3221225472;
    v98[2] = sub_276319AE0;
    v98[3] = &unk_27A6B99C8;
    v98[4] = self;
    contextCopy2 = context;
    v102 = v85 + v87 * 0.5;
    v103 = v86;
    v104 = v87 * 0.5;
    v105 = v88;
    v89 = v72;
    v99 = v89;
    v90 = v78;
    v100 = v90;
    objc_msgSend_renderInRoundedCornerClippedContext_forPreset_stroke_barRect_clipRect_isVertical_renderBlock_(self, v91, v85 + v87 * 0.5, v86, v87 * 0.5, context, presetCopy, v89, 0, v98, v88, v85, v86, v87, v88);

    v83 += 4;
  }

  while (v83 != 16);

  if (cache)
  {
    *cache = v93;
  }
}

@end