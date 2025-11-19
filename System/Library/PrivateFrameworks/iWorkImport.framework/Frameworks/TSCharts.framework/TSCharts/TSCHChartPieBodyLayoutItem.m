@interface TSCHChartPieBodyLayoutItem
- (CGPath)newElementPathWithPercentage:(double)a3 radius:(double)a4 center:(CGPoint)a5 startAngle:(double)a6 midAngle:(double)a7 endAngle:(double)a8 withInnerRadius:(id)a9;
- (id)knobsWithRadius:(double)a3 center:(CGPoint)a4 startAngle:(double)a5 midAngle:(double)a6 endAngle:(double)a7;
@end

@implementation TSCHChartPieBodyLayoutItem

- (CGPath)newElementPathWithPercentage:(double)a3 radius:(double)a4 center:(CGPoint)a5 startAngle:(double)a6 midAngle:(double)a7 endAngle:(double)a8 withInnerRadius:(id)a9
{
  Mutable = CGPathCreateMutable();
  if (a3 >= 1.0)
  {
    __sincos_stret(a6);
  }

  CGPathMoveToPointSafe();
  CGPathAddArcSafe();
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (id)knobsWithRadius:(double)a3 center:(CGPoint)a4 startAngle:(double)a5 midAngle:(double)a6 endAngle:(double)a7
{
  y = a4.y;
  x = a4.x;
  v12 = __sincos_stret(a5);
  v13 = __sincos_stret(a6);
  v14 = __sincos_stret(a7);
  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v18 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v16, x, y, v17);
  objc_msgSend_addObject_(v15, v19, v20, v21, v22, v18);

  v25 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v23, x + a3 * v12.__cosval, y + a3 * v12.__sinval, v24);
  objc_msgSend_addObject_(v15, v26, v27, v28, v29, v25);

  v32 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v30, x + a3 * v13.__cosval, y + a3 * v13.__sinval, v31);
  objc_msgSend_addObject_(v15, v33, v34, v35, v36, v32);

  v39 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v37, x + a3 * v14.__cosval, y + a3 * v14.__sinval, v38);
  objc_msgSend_addObject_(v15, v40, v41, v42, v43, v39);

  v48 = objc_msgSend_copy(v15, v44, v45, v46, v47);

  return v48;
}

@end