@interface TSCHChartPieBodyLayoutItem
- (CGPath)newElementPathWithPercentage:(double)percentage radius:(double)radius center:(CGPoint)center startAngle:(double)angle midAngle:(double)midAngle endAngle:(double)endAngle withInnerRadius:(id)innerRadius;
- (id)knobsWithRadius:(double)radius center:(CGPoint)center startAngle:(double)angle midAngle:(double)midAngle endAngle:(double)endAngle;
@end

@implementation TSCHChartPieBodyLayoutItem

- (CGPath)newElementPathWithPercentage:(double)percentage radius:(double)radius center:(CGPoint)center startAngle:(double)angle midAngle:(double)midAngle endAngle:(double)endAngle withInnerRadius:(id)innerRadius
{
  Mutable = CGPathCreateMutable();
  if (percentage >= 1.0)
  {
    __sincos_stret(angle);
  }

  CGPathMoveToPointSafe();
  CGPathAddArcSafe();
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (id)knobsWithRadius:(double)radius center:(CGPoint)center startAngle:(double)angle midAngle:(double)midAngle endAngle:(double)endAngle
{
  y = center.y;
  x = center.x;
  v12 = __sincos_stret(angle);
  v13 = __sincos_stret(midAngle);
  v14 = __sincos_stret(endAngle);
  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v18 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v16, x, y, v17);
  objc_msgSend_addObject_(v15, v19, v20, v21, v22, v18);

  v25 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v23, x + radius * v12.__cosval, y + radius * v12.__sinval, v24);
  objc_msgSend_addObject_(v15, v26, v27, v28, v29, v25);

  v32 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v30, x + radius * v13.__cosval, y + radius * v13.__sinval, v31);
  objc_msgSend_addObject_(v15, v33, v34, v35, v36, v32);

  v39 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v37, x + radius * v14.__cosval, y + radius * v14.__sinval, v38);
  objc_msgSend_addObject_(v15, v40, v41, v42, v43, v39);

  v48 = objc_msgSend_copy(v15, v44, v45, v46, v47);

  return v48;
}

@end