@interface TSCHChartDonutBodyLayoutItem
- (BOOL)layoutSpacePointIsInChartBody:(CGPoint)body;
- (CGPath)newElementPathWithPercentage:(double)percentage radius:(double)radius center:(CGPoint)center startAngle:(double)angle midAngle:(double)midAngle endAngle:(double)endAngle withInnerRadius:(id)innerRadius;
- (id)knobsWithRadius:(double)radius center:(CGPoint)center startAngle:(double)angle midAngle:(double)midAngle endAngle:(double)endAngle;
@end

@implementation TSCHChartDonutBodyLayoutItem

- (BOOL)layoutSpacePointIsInChartBody:(CGPoint)body
{
  y = body.y;
  x = body.x;
  objc_msgSend_rootedLayoutRect(self, a2, body.x, body.y, v3);
  v8 = v7;
  v10 = v9;
  v36 = v12;
  v37 = v11;
  TSUCenterOfRect();
  v17 = objc_msgSend_chartInfo(self, v13, v14, v15, v16);
  objc_msgSend_defaultInnerRadiusPercentage(TSCHStyleUtilities, v18, v19, v20, v21);
  objc_msgSend_floatValueForProperty_defaultValue_(v17, v22, v23, v24, v25, 1103);
  v27 = v26;

  TSUDistanceSquared();
  if (v28 <= v8 * v27 * 0.5 * (v8 * v27 * 0.5))
  {
    return 0;
  }

  v30 = v36;
  v29 = v37;
  v31 = v8;
  v32 = v10;
  v33 = x;
  v34 = y;

  return CGRectContainsPoint(*&v29, *&v33);
}

- (CGPath)newElementPathWithPercentage:(double)percentage radius:(double)radius center:(CGPoint)center startAngle:(double)angle midAngle:(double)midAngle endAngle:(double)endAngle withInnerRadius:(id)innerRadius
{
  innerRadiusCopy = innerRadius;
  v17 = innerRadiusCopy;
  if (innerRadiusCopy)
  {
    objc_msgSend_floatValue(innerRadiusCopy, v13, v14, v15, v16);
  }

  else
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCHChartDonutBodyLayoutItem newElementPathWithPercentage:radius:center:startAngle:midAngle:endAngle:withInnerRadius:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDonutBodyLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 32, 0, "invalid nil value for '%{public}s'", "innerRadiusPercentage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    objc_msgSend_defaultInnerRadiusPercentage(TSCHStyleUtilities, v37, v38, v39, v40);
  }

  v41 = v19;
  if (v41 * radius >= radius)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v41, v20, v21, "[TSCHChartDonutBodyLayoutItem newElementPathWithPercentage:radius:center:startAngle:midAngle:endAngle:withInnerRadius:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartDonutBodyLayoutItem.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 35, 0, "The Donut inner radius cannot be larger than the chart radius");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
  }

  __sincos_stret(angle);
  __sincos_stret(endAngle);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  if (percentage >= 1.0)
  {
    CGPathAddArcSafe();
    CGPathMoveToPointSafe();
  }

  else
  {
    CGPathAddLineToPointSafe();
    CGPathAddArcSafe();
    CGPathAddLineToPointSafe();
  }

  CGPathAddArcSafe();

  return Mutable;
}

- (id)knobsWithRadius:(double)radius center:(CGPoint)center startAngle:(double)angle midAngle:(double)midAngle endAngle:(double)endAngle
{
  y = center.y;
  x = center.x;
  v13 = __sincos_stret(angle);
  v84 = y + radius * v13.__sinval;
  v85 = x + radius * v13.__cosval;
  v14 = __sincos_stret(midAngle);
  v86 = y + radius * v14.__sinval;
  v87 = x + radius * v14.__cosval;
  v15 = __sincos_stret(endAngle);
  v88 = y + radius * v15.__sinval;
  v89 = x + radius * v15.__cosval;
  v17 = objc_msgSend_chartInfo(self, v16, v88, v15.__cosval, v89);
  v22 = objc_msgSend_valueForProperty_(v17, v18, v19, v20, v21, 1103);

  objc_msgSend_floatValue(v22, v23, v24, v25, v26);
  v28 = v27 * radius;
  v29 = x + v28 * v13.__cosval;
  v30 = y + v28 * v13.__sinval;
  v31 = x + v28 * v14.__cosval;
  v32 = y + v28 * v14.__sinval;
  v33 = x + v28 * v15.__cosval;
  v34 = y + v28 * v15.__sinval;
  v35 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v38 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v36, v29, v30, v37);
  objc_msgSend_addObject_(v35, v39, v40, v41, v42, v38);

  v45 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v43, v31, v32, v44);
  objc_msgSend_addObject_(v35, v46, v47, v48, v49, v45);

  v52 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v50, v33, v34, v51);
  objc_msgSend_addObject_(v35, v53, v54, v55, v56, v52);

  v59 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v57, v85, v84, v58);
  objc_msgSend_addObject_(v35, v60, v61, v62, v63, v59);

  v66 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v64, v87, v86, v65);
  objc_msgSend_addObject_(v35, v67, v68, v69, v70, v66);

  v73 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v71, v89, v88, v72);
  objc_msgSend_addObject_(v35, v74, v75, v76, v77, v73);

  v82 = objc_msgSend_copy(v35, v78, v79, v80, v81);

  return v82;
}

@end