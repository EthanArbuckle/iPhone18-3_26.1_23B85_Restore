@interface TSCHPolarElementBuilderCoordinateAdapter
- ($9E5495ABC9D17321C375100FE022AE0A)cartesianPointsWithSeries:(id)series groupIndexSet:(id)set nullsUseIntercept:(BOOL)intercept plotAreaFrame:(CGRect)frame;
- (CGRect)constrainedRectWithSeries:(id)series elementBoundingBox:(CGRect)box seriesAreaFrame:(CGRect)frame;
@end

@implementation TSCHPolarElementBuilderCoordinateAdapter

- ($9E5495ABC9D17321C375100FE022AE0A)cartesianPointsWithSeries:(id)series groupIndexSet:(id)set nullsUseIntercept:(BOOL)intercept plotAreaFrame:(CGRect)frame
{
  width = frame.size.width;
  height = frame.size.height;
  y = frame.origin.y;
  x = frame.origin.x;
  seriesCopy = series;
  setCopy = set;
  v15 = objc_msgSend_count(setCopy, v11, v12, v13, v14);
  selfCopy = self;
  v90 = objc_msgSend_p_pointArrayWithCount_(self, v16, v17, v18, v19, v15);
  v24 = objc_msgSend_axisForAxisType_(seriesCopy, v20, v21, v22, v23, 5);
  v29 = objc_msgSend_axisForAxisType_(seriesCopy, v25, v26, v27, v28, 6);
  v88 = v24;
  v34 = objc_msgSend_unitSpaceValuesForSeries_groupIndexSet_(v24, v30, v31, v32, v33, seriesCopy, setCopy);
  v87 = v29;
  v39 = objc_msgSend_unitSpaceValuesForCountSpaceValuesWithCount_(v29, v35, v36, v37, v38, v15);
  v44 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v40, v41, v42, v43, 8 * v15);
  v45 = v44;
  v50 = objc_msgSend_mutableBytes(v45, v46, v47, v48, v49);

  v55 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v51, v52, v53, v54, 8 * v15);
  v56 = v55;
  v61 = objc_msgSend_mutableBytes(v56, v57, v58, v59, v60);

  v66 = objc_msgSend_model(seriesCopy, v62, v63, v64, v65);
  v71 = objc_msgSend_chart(v66, v67, v68, v69, v70);
  objc_msgSend_floatValueForProperty_defaultValue_(v71, v72, 0.0, v73, v74, 1109);
  v76 = v75;

  if (v15)
  {
    v78 = v76 * 0.0174532925;
    v79 = v50;
    v80 = v61;
    v81 = v15;
    do
    {
      v82 = *v34++;
      v83 = v82;
      v84 = *v39++;
      v85 = __sincos_stret((v84 + v84) * 3.14159265 + -1.57079633 - v78);
      *v79++ = v83 * v85.__cosval * 0.5 + 0.5;
      *v80++ = 1.0 - (v83 * v85.__sinval * 0.5 + 0.5);
      --v81;
    }

    while (v81);
  }

  objc_msgSend_p_iterateWithXValues_yValues_points_pointCount_plotAreaFrame_yValueModifierBlock_(selfCopy, v77, x, y, width, v50, v61, v90, v15, 0, height);

  return v90;
}

- (CGRect)constrainedRectWithSeries:(id)series elementBoundingBox:(CGRect)box seriesAreaFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = box.size.height;
  v10 = box.size.width;
  v11 = box.origin.y;
  v12 = box.origin.x;
  seriesCopy = series;
  rect.origin.x = v12;
  rect.origin.y = v11;
  v58.origin.x = v12;
  v58.origin.y = v11;
  rect.size.width = v10;
  rect.size.height = v9;
  v58.size.width = v10;
  v58.size.height = v9;
  v14 = x;
  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  v59 = CGRectUnion(v58, v72);
  v15 = v59.origin.x;
  v16 = v59.origin.y;
  v17 = v59.size.width;
  v18 = v59.size.height;
  CGRectGetMinX(v59);
  v60.origin.x = v15;
  v60.origin.y = v16;
  v60.size.width = v17;
  v60.size.height = v18;
  CGRectGetMinY(v60);
  v61.origin.x = v15;
  v61.origin.y = v16;
  v61.size.width = v17;
  v61.size.height = v18;
  CGRectGetMaxX(v61);
  v62.origin.x = v15;
  v62.origin.y = v16;
  v62.size.width = v17;
  v62.size.height = v18;
  CGRectGetMaxY(v62);
  objc_opt_class();
  v23 = objc_msgSend_model(seriesCopy, v19, v20, v21, v22);
  v28 = objc_msgSend_axisIDForAxisType_(seriesCopy, v24, v25, v26, v27, 5);

  v33 = objc_msgSend_axisForID_(v23, v29, v30, v31, v32, v28);
  v34 = TSUDynamicCast();

  v39 = objc_msgSend_userMin(v34, v35, v36, v37, v38);
  if (v39)
  {

LABEL_4:
    CGRectGetMinX(rect);
    v63.origin.x = v14;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    CGRectGetMinX(v63);
    v64.origin.x = v14;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    CGRectGetMaxX(v64);
    TSUClamp();
    CGRectGetMinY(rect);
    v65.origin.x = v14;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = height;
    CGRectGetMinY(v65);
    v66.origin.x = v14;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    CGRectGetMaxY(v66);
    TSUClamp();
    CGRectGetMaxX(rect);
    v67.origin.x = v14;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    CGRectGetMinX(v67);
    v68.origin.x = v14;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    CGRectGetMaxX(v68);
    TSUClamp();
    CGRectGetMaxY(rect);
    v69.origin.x = v14;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    CGRectGetMinY(v69);
    v70.origin.x = v14;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    CGRectGetMaxY(v70);
    TSUClamp();
    goto LABEL_5;
  }

  v44 = objc_msgSend_userMax(v34, v40, v41, v42, v43);

  if (v44)
  {
    goto LABEL_4;
  }

LABEL_5:
  TSURectWithPoints();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v53 = v46;
  v54 = v48;
  v55 = v50;
  v56 = v52;
  result.size.height = v56;
  result.size.width = v55;
  result.origin.y = v54;
  result.origin.x = v53;
  return result;
}

@end