@interface TSCHCartesianElementBuilderCoordinateAdapter
- ($9E5495ABC9D17321C375100FE022AE0A)cartesianPointsWithSeries:(id)a3 groupIndexSet:(id)a4 nullsUseIntercept:(BOOL)a5 plotAreaFrame:(CGRect)a6;
- (CGRect)constrainedRectWithSeries:(id)a3 elementBoundingBox:(CGRect)a4 seriesAreaFrame:(CGRect)a5;
@end

@implementation TSCHCartesianElementBuilderCoordinateAdapter

- ($9E5495ABC9D17321C375100FE022AE0A)cartesianPointsWithSeries:(id)a3 groupIndexSet:(id)a4 nullsUseIntercept:(BOOL)a5 plotAreaFrame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  v14 = a4;
  v19 = objc_msgSend_count(v14, v15, v16, v17, v18);
  v24 = objc_msgSend_p_pointArrayWithCount_(self, v20, v21, v22, v23, v19);
  v29 = objc_msgSend_axisForAxisType_(v13, v25, v26, v27, v28, 1);
  v34 = objc_msgSend_axisForAxisType_(v13, v30, v31, v32, v33, 2);
  v39 = objc_msgSend_model(v13, v35, v36, v37, v38);
  v44 = objc_msgSend_numberOfGroupsInSeries_(v39, v40, v41, v42, v43, v13);
  v49 = objc_msgSend_unitSpaceCenterValuesForSeries_groupIndexSet_count_(v29, v45, v46, v47, v48, v13, v14, v44);

  v54 = objc_msgSend_unitSpaceValuesForSeries_groupIndexSet_(v34, v50, v51, v52, v53, v13, v14);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_27615E6D8;
  v58[3] = &unk_27A6B6298;
  v61 = a5;
  v59 = v13;
  v60 = v19;
  v55 = v13;
  objc_msgSend_p_iterateWithXValues_yValues_points_pointCount_plotAreaFrame_yValueModifierBlock_(self, v56, x, y, width, v49, v54, v24, v19, v58, height);

  return v24;
}

- (CGRect)constrainedRectWithSeries:(id)a3 elementBoundingBox:(CGRect)a4 seriesAreaFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v13 = a3;
  v118 = v12;
  v119 = v11;
  v120.origin.x = v12;
  v120.origin.y = v11;
  v115 = v10;
  v116 = v9;
  v120.size.width = v10;
  v120.size.height = v9;
  v138.origin.x = x;
  v138.origin.y = y;
  v138.size.width = width;
  v138.size.height = height;
  v121 = CGRectUnion(v120, v138);
  v14 = v121.origin.x;
  v15 = v121.origin.y;
  v16 = v121.size.width;
  v17 = v121.size.height;
  CGRectGetMinX(v121);
  v122.origin.x = v14;
  v122.origin.y = v15;
  v122.size.width = v16;
  v122.size.height = v17;
  CGRectGetMinY(v122);
  v123.origin.x = v14;
  v123.origin.y = v15;
  v123.size.width = v16;
  v123.size.height = v17;
  CGRectGetMaxX(v123);
  v124.origin.x = v14;
  v124.origin.y = v15;
  v124.size.width = v16;
  v124.size.height = v17;
  MaxY = CGRectGetMaxY(v124);
  v21 = objc_msgSend_model(v13, v18, MaxY, v19, v20);
  v26 = objc_msgSend_axisIDForAxisType_(v13, v22, v23, v24, v25, 1);
  v31 = objc_msgSend_axisForID_(v21, v27, v28, v29, v30, v26);

  if (!v31)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "[TSCHCartesianElementBuilderCoordinateAdapter constrainedRectWithSeries:elementBoundingBox:seriesAreaFrame:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilderCoordinateAdapter.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v44, v45, v46, v37, v42, 124, 0, "invalid nil value for '%{public}s'", "xAxis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
  }

  objc_opt_class();
  v55 = objc_msgSend_model(v13, v51, v52, v53, v54);
  v60 = objc_msgSend_axisIDForAxisType_(v13, v56, v57, v58, v59, 2);
  v65 = objc_msgSend_axisForID_(v55, v61, v62, v63, v64, v60);
  v66 = TSUDynamicCast();

  if (!v66)
  {
    v71 = MEMORY[0x277D81150];
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v68, v69, v70, "[TSCHCartesianElementBuilderCoordinateAdapter constrainedRectWithSeries:elementBoundingBox:seriesAreaFrame:]");
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, v74, v75, v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHElementBuilderCoordinateAdapter.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v78, v79, v80, v81, v72, v77, 126, 0, "invalid nil value for '%{public}s'", "yAxis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85);
  }

  v86 = objc_msgSend_userMax(v66, v67, v68, v69, v70);

  if (v86)
  {
    v125.origin.x = v118;
    v125.origin.y = v119;
    v125.size.width = v115;
    v125.size.height = v116;
    CGRectGetMinY(v125);
    v126.origin.x = x;
    v126.origin.y = y;
    v126.size.width = width;
    v126.size.height = height;
    CGRectGetMinY(v126);
    v127.origin.x = x;
    v127.origin.y = y;
    v127.size.width = width;
    v127.size.height = height;
    CGRectGetMaxY(v127);
    TSUClamp();
  }

  v91 = objc_msgSend_userMin(v66, v87, v88, v89, v90);

  if (v91)
  {
    v128.origin.x = v118;
    v128.origin.y = v119;
    v128.size.width = v115;
    v128.size.height = v116;
    CGRectGetMaxY(v128);
    v129.origin.x = x;
    v129.origin.y = y;
    v129.size.width = width;
    v129.size.height = height;
    CGRectGetMinY(v129);
    v130.origin.x = x;
    v130.origin.y = y;
    v130.size.width = width;
    v130.size.height = height;
    CGRectGetMaxY(v130);
    TSUClamp();
  }

  objc_opt_class();
  v92 = TSUDynamicCast();
  v97 = objc_msgSend_userMin(v92, v93, v94, v95, v96);

  if (v97)
  {
    v131.origin.x = v118;
    v131.origin.y = v119;
    v131.size.width = v115;
    v131.size.height = v116;
    CGRectGetMinX(v131);
    v132.origin.x = x;
    v132.origin.y = y;
    v132.size.width = width;
    v132.size.height = height;
    CGRectGetMinX(v132);
    v133.origin.x = x;
    v133.origin.y = y;
    v133.size.width = width;
    v133.size.height = height;
    CGRectGetMaxX(v133);
    TSUClamp();
  }

  v102 = objc_msgSend_userMax(v92, v98, v99, v100, v101);

  if (v102)
  {
    v134.origin.x = v118;
    v134.origin.y = v119;
    v134.size.width = v115;
    v134.size.height = v116;
    CGRectGetMaxX(v134);
    v135.origin.x = x;
    v135.origin.y = y;
    v135.size.width = width;
    v135.size.height = height;
    CGRectGetMinX(v135);
    v136.origin.x = x;
    v136.origin.y = y;
    v136.size.width = width;
    v136.size.height = height;
    CGRectGetMaxX(v136);
    TSUClamp();
  }

  TSURectWithPoints();
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;

  v111 = v104;
  v112 = v106;
  v113 = v108;
  v114 = v110;
  result.size.height = v114;
  result.size.width = v113;
  result.origin.y = v112;
  result.origin.x = v111;
  return result;
}

@end