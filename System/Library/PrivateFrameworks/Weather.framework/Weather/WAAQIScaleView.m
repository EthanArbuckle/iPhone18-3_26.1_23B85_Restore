@interface WAAQIScaleView
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (WAAQIScaleView)initWithFrame:(CGRect)a3;
- (double)aqiPercentageInRange;
- (unint64_t)sanitizedAQI:(unint64_t)a3;
- (void)drawRect:(CGRect)a3;
- (void)setAQI:(unint64_t)a3;
- (void)setScale:(id)a3;
@end

@implementation WAAQIScaleView

- (WAAQIScaleView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = WAAQIScaleView;
  v3 = [(WAAQIScaleView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(WAAQIScaleView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (void)setScale:(id)a3
{
  v5 = a3;
  if (self->_scale != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_scale, a3);
    [(WAAQIScaleView *)self setAQI:[(WAAQIScale *)v6 range]];
    [(WAAQIScaleView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)setAQI:(unint64_t)a3
{
  if (self->_AQI != a3)
  {
    self->_AQI = [(WAAQIScaleView *)self sanitizedAQI:?];

    [(WAAQIScaleView *)self setNeedsDisplay];
  }
}

- (unint64_t)sanitizedAQI:(unint64_t)a3
{
  v5 = [(WAAQIScaleView *)self scale];
  v6 = [v5 range];
  v8 = v7;

  if (a3 < v6 || a3 - v6 >= v8)
  {
    v9 = [(WAAQIScaleView *)self scale];
    v10 = [v9 range];
    v12 = v10 + v11;

    v13 = [(WAAQIScaleView *)self scale];
    v14 = [v13 range];

    if (v12 <= a3)
    {
      return v12;
    }

    else
    {
      return v14;
    }
  }

  return a3;
}

- (double)aqiPercentageInRange
{
  v3 = [(WAAQIScaleView *)self AQI];
  v4 = [(WAAQIScaleView *)self scale];
  v5 = [v4 gradient];
  v6 = [v5 range];
  v8 = (v6 + v7);

  v9 = [(WAAQIScaleView *)self scale];
  v10 = [v9 gradient];
  v11 = [v10 range];

  result = 0.0;
  if (v8 - v11 > 0.0)
  {
    return 1.0 - (v8 - v3) / (v8 - v11);
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  [(WAAQIScaleView *)self bounds];
  v3 = v2;
  v4 = 9.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v59.receiver = self;
  v59.super_class = WAAQIScaleView;
  [(WAAQIScaleView *)&v59 drawRect:?];
  if (self->_scale)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    if (IsUIRTL())
    {
      v62.origin.x = x;
      v62.origin.y = y;
      v62.size.width = width;
      v62.size.height = height;
      transform.a = -1.0;
      transform.b = 0.0;
      transform.c = 0.0;
      transform.d = 1.0;
      transform.tx = CGRectGetWidth(v62);
      transform.ty = 0.0;
      CGContextConcatCTM(CurrentContext, &transform);
    }

    CGContextSaveGState(CurrentContext);
    v49 = x;
    v50 = y;
    v51 = width;
    [(WAAQIScaleView *)self trackRectForBounds:x, y, width, height];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(WAAQIScaleView *)self bounds];
    v48 = v12;
    [WAAQIScaleView thumbRectForBounds:"thumbRectForBounds:trackRect:" trackRect:?];
    v18 = v17;
    v52 = v19;
    v21 = v20;
    v23 = v22;
    v24 = [MEMORY[0x277D75208] bezierPath];
    v63.origin.x = v10;
    v63.origin.y = v12;
    v63.size.width = v14;
    v63.size.height = v16;
    [v24 moveToPoint:{4.5, CGRectGetMinY(v63)}];
    v64.origin.x = v18;
    v64.origin.y = v52;
    v64.size.width = v21;
    v64.size.height = v23;
    rect = v23;
    v25 = CGRectGetMinX(v64) + -1.5;
    v65.origin.x = v10;
    v65.origin.y = v48;
    v65.size.width = v14;
    v65.size.height = v16;
    [v24 addLineToPoint:{v25, CGRectGetMinY(v65)}];
    v66.origin.x = v18;
    v66.origin.y = v52;
    v66.size.width = v21;
    v66.size.height = v23;
    v26 = CGRectGetMinX(v66) + 3.0;
    v67.origin.x = v10;
    v67.origin.y = v48;
    v67.size.width = v14;
    v67.size.height = v16;
    [v24 addArcWithCenter:0 radius:v26 startAngle:CGRectGetMidY(v67) endAngle:6.0 clockwise:?];
    v68.origin.x = v10;
    v68.origin.y = v48;
    v68.size.width = v14;
    v68.size.height = v16;
    [v24 addLineToPoint:{4.5, CGRectGetMaxY(v68)}];
    v69.origin.x = v10;
    v69.origin.y = v48;
    v69.size.width = v14;
    v69.size.height = v16;
    [v24 addArcWithCenter:1 radius:4.5 startAngle:CGRectGetMidY(v69) endAngle:4.5 clockwise:{1.57079633, 4.71238898}];
    [v24 closePath];
    v70.origin.x = v18;
    v70.origin.y = v52;
    v70.size.width = v21;
    v70.size.height = rect;
    v27 = CGRectGetMaxX(v70) + 1.5;
    v71.origin.x = v10;
    v71.origin.y = v48;
    v71.size.width = v14;
    v71.size.height = v16;
    [v24 moveToPoint:{v27, CGRectGetMinY(v71)}];
    v72.origin.x = v10;
    v72.origin.y = v48;
    v72.size.width = v14;
    v72.size.height = v16;
    v28 = CGRectGetMaxX(v72) + -4.5;
    v73.origin.x = v10;
    v73.origin.y = v48;
    v73.size.width = v14;
    v73.size.height = v16;
    [v24 addLineToPoint:{v28, CGRectGetMinY(v73)}];
    v74.origin.x = v10;
    v74.origin.y = v48;
    v74.size.width = v14;
    v74.size.height = v16;
    v29 = CGRectGetMaxX(v74) + -4.5;
    v75.origin.x = v10;
    v75.origin.y = v48;
    v75.size.width = v14;
    v75.size.height = v16;
    [v24 addArcWithCenter:1 radius:v29 startAngle:CGRectGetMidY(v75) endAngle:4.5 clockwise:{4.71238898, 1.57079633}];
    v76.origin.x = v18;
    v76.size.height = rect;
    v76.origin.y = v52;
    v76.size.width = v21;
    v30 = CGRectGetMaxX(v76) + 1.5;
    v77.origin.x = v10;
    v77.origin.y = v48;
    v77.size.width = v14;
    v77.size.height = v16;
    [v24 addLineToPoint:{v30, CGRectGetMaxY(v77)}];
    v78.origin.x = v18;
    v78.origin.y = v52;
    v78.size.width = v21;
    v78.size.height = rect;
    v31 = CGRectGetMaxX(v78) + -3.0;
    v79.origin.x = v10;
    v79.origin.y = v48;
    v79.size.width = v14;
    v79.size.height = v16;
    [v24 addArcWithCenter:0 radius:v31 startAngle:CGRectGetMidY(v79) endAngle:6.0 clockwise:{1.57079633, 4.71238898}];
    [v24 closePath];
    CGContextAddPath(CurrentContext, [v24 CGPath]);
    CGContextClip(CurrentContext);
    v32 = [(WAAQIScale *)self->_scale gradient];
    v33 = [v32 stops];
    v34 = malloc_type_malloc(8 * [v33 count], 0x100004000313F17uLL);

    v35 = [MEMORY[0x277CBEB18] array];
    v36 = [(WAAQIScale *)self->_scale gradient];
    v37 = [v36 range];
    v39 = v37 + v38;

    if (v39)
    {
      v40 = [(WAAQIScale *)self->_scale gradient];
      v41 = [v40 stops];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __27__WAAQIScaleView_drawRect___block_invoke;
      v54[3] = &unk_279E67D60;
      v55 = v35;
      v56 = v34;
      v57 = v39;
      [v41 enumerateObjectsUsingBlock:v54];
    }

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v43 = CGGradientCreateWithColors(DeviceRGB, v35, v34);
    v80.origin.x = v49;
    v80.origin.y = v50;
    v80.size.width = v51;
    v80.size.height = height;
    v61.x = CGRectGetWidth(v80);
    v61.y = 0.0;
    CGContextDrawLinearGradient(CurrentContext, v43, *MEMORY[0x277CBF348], v61, 0);
    CGGradientRelease(v43);
    CGColorSpaceRelease(DeviceRGB);
    free(v34);
    CGContextRestoreGState(CurrentContext);
    v81.origin.x = v18;
    v81.origin.y = v52;
    v81.size.width = v21;
    v81.size.height = rect;
    v44 = CGPathCreateWithEllipseInRect(v81, 0);
    v45 = [MEMORY[0x277D75348] whiteColor];
    CGContextSetFillColorWithColor(CurrentContext, [v45 CGColor]);

    CGContextAddPath(CurrentContext, v44);
    v46 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    v47 = [v46 CGColor];
    v60.height = 0.33;
    v60.width = 0.0;
    CGContextSetShadowWithColor(CurrentContext, v60, 0.5, v47);

    CGContextFillPath(CurrentContext);
    CGPathRelease(v44);
  }
}

double __27__WAAQIScaleView_drawRect___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 color];
  [v5 addObject:{objc_msgSend(v7, "CGColor")}];

  [v6 location];
  v9 = v8;

  result = v9 / *(a1 + 48);
  *(*(a1 + 40) + 8 * a3) = result;
  return result;
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  x = a3.origin.x;
  v5 = (CGRectGetHeight(a3) + -9.0) * 0.5;
  v6 = 9.0;
  v7 = x;
  v8 = width;
  result.size.height = v6;
  result.size.width = v8;
  result.origin.y = v5;
  result.origin.x = v7;
  return result;
}

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4
{
  if (self->_scale)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v9 = CGRectGetMaxX(a4) + -12.0 + 3.0 + -6.0 + -6.0;
    [(WAAQIScaleView *)self aqiPercentageInRange];
    v11 = v9 * v10 + 6.0;
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v12 = CGRectGetMidY(v16) + -4.5;
    v13 = 9.0;
    v14 = 9.0;
  }

  else
  {
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v15 = v11;
  result.size.height = v13;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v15;
  return result;
}

@end