@interface TSCHPresetImager2Axis
- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache;
@end

@implementation TSCHPresetImager2Axis

- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache
{
  width = size.width;
  v147[16] = *MEMORY[0x277D85DE8];
  presetCopy = preset;
  objc_msgSend_p_nativeSize(self, v12, v13, v14, v15);
  v17 = width / v16;
  v132 = sub_27628CE94(20.0, 11.0, 20.0, 34.0, v17);
  v130 = v18;
  v124 = v20;
  v125 = v19;
  v21 = sub_27628CE94(46.0, 11.0, 20.0, 51.0, v17);
  v122 = v22;
  v123 = v21;
  v120 = v24;
  v121 = v23;
  v25 = sub_27628CE94(74.0, 11.0, 20.0, 68.0, v17);
  v27 = v26;
  v118 = v29;
  v119 = v28;
  v30 = sub_27628CE94(102.0, 11.0, 20.0, 85.0, v17);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v129 = presetCopy;
  v38 = objc_msgSend_seriesStyles(presetCopy, v37, v30, v31, v33);
  v43 = objc_msgSend_objectAtIndexedSubscript_(v38, v39, v40, v41, v42, 0);
  v126 = v43;
  v127 = v38;
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
  *v147 = v132;
  v147[1] = v130;
  v147[2] = v125;
  v147[3] = v124;
  *&v147[4] = v123;
  v147[5] = v122;
  v147[6] = v121;
  v147[7] = v120;
  *&v147[8] = v25;
  v147[9] = v27;
  v147[10] = v119;
  v147[11] = v118;
  *&v147[12] = v30;
  *&v147[13] = v32;
  hasAllResourcesForFill = 1;
  *&v147[14] = v34;
  v147[15] = v36;
  do
  {
    v58 = hasAllResourcesForFill;
    v131 = *&v147[v56];
    v133 = *&v147[v56 + 2];
    v59 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v53, *&v147[v56], *&v147[v56 + 2], v54, v55, 1502, 0);
    v65 = objc_msgSend_p_objectFromStyle_specific_default_(self, v60, v61, v62, v63, v55, 1413, 1411);
    hasAllResourcesForFill = 0;
    if (v58)
    {
      hasAllResourcesForFill = objc_msgSend_tsch_hasAllResourcesForFill_(MEMORY[0x277D80248], v64, v66, v67, v68, v65);
    }

    v134[0] = MEMORY[0x277D85DD0];
    v134[1] = 3221225472;
    v134[2] = sub_27631D260;
    v134[3] = &unk_27A6B99C8;
    v138 = v131;
    v139 = v133;
    v134[4] = self;
    v135 = v59;
    v136 = v65;
    contextCopy = context;
    v69 = v65;
    v70 = v59;
    objc_msgSend_renderInRoundedCornerClippedContext_forPreset_stroke_barRect_clipRect_isVertical_renderBlock_(self, v71, *&v131, *(&v131 + 1), *&v133, context, v129, v70, 1, v134, *(&v133 + 1), v131, v133);

    v56 += 4;
  }

  while (v56 != 16);
  v146[0] = sub_27628CEA8(30.0, 22.0, v17);
  v146[1] = v72;
  v146[2] = sub_27628CEA8(56.0, 36.0, v17);
  v146[3] = v73;
  v146[4] = sub_27628CEA8(84.0, 75.0, v17);
  v146[5] = v74;
  v146[6] = sub_27628CEA8(112.0, 81.0, v17);
  v146[7] = v75;
  CGContextSaveGState(context);
  v78 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v76, 0.46, 1.0, v77);
  v83 = objc_msgSend_CGColor(v78, v79, v80, v81, v82);
  CGContextSetStrokeColorWithColor(context, v83);
  CGContextSetLineCap(context, kCGLineCapSquare);
  CGContextSetLineJoin(context, kCGLineJoinMiter);
  CGContextSetLineWidth(context, 1.0);
  v148.origin.x = sub_27628CE94(16.0, 9.0, 112.0, 85.0, v17);
  x = v148.origin.x;
  y = v148.origin.y;
  v86 = v148.size.width;
  height = v148.size.height;
  MinX = CGRectGetMinX(v148);
  v149.origin.x = x;
  v149.origin.y = y;
  v149.size.width = v86;
  v149.size.height = height;
  MinY = CGRectGetMinY(v149);
  points.x = MinX;
  points.y = MinY;
  v150.origin.x = x;
  v150.origin.y = y;
  v150.size.width = v86;
  v150.size.height = height;
  MaxX = CGRectGetMaxX(v150);
  v151.origin.x = x;
  v151.origin.y = y;
  v151.size.width = v86;
  v151.size.height = height;
  v91 = CGRectGetMinY(v151);
  v141[0] = MaxX;
  v141[1] = v91;
  v152.origin.x = x;
  v152.origin.y = y;
  v152.size.width = v86;
  v152.size.height = height;
  v92 = CGRectGetMinX(v152);
  v153.origin.x = x;
  v153.origin.y = y;
  v153.size.width = v86;
  v153.size.height = height;
  v93 = CGRectGetMinY(v153);
  v142[0] = v92;
  v142[1] = v93;
  v154.origin.x = x;
  v154.origin.y = y;
  v154.size.width = v86;
  v154.size.height = height;
  v94 = CGRectGetMinX(v154);
  v155.origin.x = x;
  v155.origin.y = y;
  v155.size.width = v86;
  v155.size.height = height;
  MaxY = CGRectGetMaxY(v155);
  v143[0] = v94;
  v143[1] = MaxY;
  v156.origin.x = x;
  v156.origin.y = y;
  v156.size.width = v86;
  v156.size.height = height;
  v96 = CGRectGetMaxX(v156);
  v157.origin.x = x;
  v157.origin.y = y;
  v157.size.width = v86;
  v157.size.height = height;
  v97 = CGRectGetMinY(v157);
  v144[0] = v96;
  v144[1] = v97;
  v158.origin.x = x;
  v158.origin.y = y;
  v158.size.width = v86;
  v158.size.height = height;
  v98 = CGRectGetMaxX(v158);
  v159.origin.x = x;
  v159.origin.y = y;
  v159.size.width = v86;
  v159.size.height = height;
  v99 = CGRectGetMaxY(v159);
  v145[0] = v98;
  v145[1] = v99;
  sub_27628C654(context, &points.x, v141, 2, 1.0);
  sub_27628C654(context, v142, v143, 2, 1.0);
  sub_27628C654(context, v144, v145, 2, 1.0);
  CGContextStrokeLineSegments(context, &points, 6uLL);
  CGContextRestoreGState(context);

  CGContextSaveGState(context);
  v104 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v100, v101, v102, v103, v126, 1503, 0);
  v109 = objc_msgSend_mutableCopy(v104, v105, v106, v107, v108);

  objc_msgSend_setWidth_(v109, v110, 2.0, v111, v112);
  v113 = sub_2762A1ACC(v146, 4uLL, 0);
  objc_msgSend_paintPath_wantsInteriorStroke_inContext_(v109, v114, v115, v116, v117, v113, 0, context);
  CGPathRelease(v113);
  CGContextRestoreGState(context);

  if (cache)
  {
    *cache = hasAllResourcesForFill;
  }
}

@end