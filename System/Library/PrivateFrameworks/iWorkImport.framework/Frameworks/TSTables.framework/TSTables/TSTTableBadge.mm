@interface TSTTableBadge
+ (id)badgeWithType:(int)a3 color:(id)a4 viewScale:(double)a5 frame:(CGRect)a6;
- (CGRect)frame;
- (double)p_commentBrightnessFactor;
- (void)drawInContext:(CGContext *)a3;
- (void)p_drawCellCommentBadgeInContext:(CGContext *)a3;
- (void)p_drawCellErrorIndicatorInContext:(CGContext *)a3;
- (void)p_drawCellWarningBadgeInContext:(CGContext *)a3;
@end

@implementation TSTTableBadge

- (void)p_drawCellErrorIndicatorInContext:(CGContext *)a3
{
  objc_msgSend_viewScale(self, a2, a3, v3, v4);
  v8 = v7;
  objc_msgSend_frame(self, v9, v10, v11, v12);
  v20 = sub_221445528(v13, v14, v15, v16);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v8 * v23;
  if (v8 * v23 <= 2.0)
  {
    objc_msgSend_stringByAppendingString_(@"TSTErrorMessageIcon", v17, @"-2", v18, v19);
  }

  else if (v27 <= 4.0)
  {
    objc_msgSend_stringByAppendingString_(@"TSTErrorMessageIcon", v17, @"-4", v18, v19);
  }

  else if (v27 <= 8.0)
  {
    objc_msgSend_stringByAppendingString_(@"TSTErrorMessageIcon", v17, @"-8", v18, v19);
  }

  else if (v27 <= 16.0)
  {
    objc_msgSend_stringByAppendingString_(@"TSTErrorMessageIcon", v17, @"-16", v18, v19);
  }

  else if (v27 <= 32.0)
  {
    objc_msgSend_stringByAppendingString_(@"TSTErrorMessageIcon", v17, @"-32", v18, v19);
  }

  else
  {
    objc_msgSend_stringByAppendingString_(@"TSTErrorMessageIcon", v17, @"-64", v18, v19);
  }
  v28 = ;
  v29 = sub_2214453B4(v28);

  memset(&v39, 0, sizeof(v39));
  CGContextGetUserSpaceToDeviceSpaceTransform(&v39, a3);
  v37 = v39;
  memset(&v38, 0, sizeof(v38));
  CGAffineTransformInvert(&v38, &v37);
  v40.origin.x = v20;
  v40.origin.y = v22;
  v40.size.width = v24;
  v40.size.height = v26;
  CGRectGetMinX(v40);
  v41.origin.x = v20;
  v41.origin.y = v22;
  v41.size.width = v24;
  v41.size.height = v26;
  CGRectGetMaxY(v41);
  TSURoundedPoint();
  v35 = v38.ty + v30 * v38.d + v38.b * v31;
  v36 = v38.tx + v30 * v38.c + v38.a * v31;
  TSURoundedSize();
  CGContextSaveGState(a3);
  CGContextClipToRectSafe();
  CGContextTranslateCTM(a3, v36, v35);
  CGContextScaleCTM(a3, 1.0, -1.0);
  v34 = objc_msgSend_CGImageForSize_inContext_orContentsScaleProvider_(v29, v32, a3, 0, v33, v24, v26);
  TSURectWithSize();
  CGContextDrawImage(a3, v42, v34);
  CGContextRestoreGState(a3);
}

- (double)p_commentBrightnessFactor
{
  v2 = UIAccessibilityDarkerSystemColorsEnabled();
  result = 0.800000012;
  if (v2)
  {
    return 0.640000019;
  }

  return result;
}

- (void)p_drawCellCommentBadgeInContext:(CGContext *)a3
{
  objc_msgSend_frame(self, a2, a3, v3, v4);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v65 = objc_msgSend_color(self, v15, v16, v17, v18);
  objc_msgSend_p_commentBrightnessFactor(self, v19, v20, v21, v22);
  v24 = v23;
  v25 = objc_alloc(MEMORY[0x277D81180]);
  objc_msgSend_hueComponent(v65, v26, v27, v28, v29);
  v31 = v30;
  objc_msgSend_saturationComponent(v65, v32, v33, v34, v35);
  v37 = v36;
  objc_msgSend_brightnessComponent(v65, v38, v39, v40, v41);
  v43 = v24 * v42;
  objc_msgSend_alphaComponent(v65, v44, v45, v46, v47);
  v53 = objc_msgSend_initWithHue_saturation_brightness_alpha_(v25, v48, v49, v50, v51, v31, v37, v43, v52);
  CGContextSaveGState(a3);
  v54 = sub_2214458D8(v8, v10, v12, v14);
  CGContextAddPathSafe();
  v59 = objc_msgSend_CGColor(v53, v55, v56, v57, v58);
  CGContextSetStrokeColorWithColor(a3, v59);
  CGContextSetLineWidth(a3, 0.5);
  v64 = objc_msgSend_CGColor(v65, v60, v61, v62, v63);
  CGContextSetFillColorWithColor(a3, v64);
  CGContextDrawPath(a3, kCGPathFillStroke);
  CGPathRelease(v54);
  CGContextRestoreGState(a3);
}

- (void)p_drawCellWarningBadgeInContext:(CGContext *)a3
{
  v7 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, a3, v3, v4);
  v12 = objc_msgSend_showsCellWarningIndicator(v7, v8, v9, v10, v11);

  if (v12)
  {
    objc_msgSend_frame(self, v13, v14, v15, v16);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    CGRectGetMinX(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    CGRectGetMinY(v24);
    CGContextSaveGState(a3);
    Mutable = CGPathCreateMutable();
    CGPathMoveToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathCloseSubpath(Mutable);
    CGContextAddPathSafe();
    CGContextSetRGBFillColor(a3, 0.0700000003, 0.400000006, 0.99000001, 0.976000011);
    CGContextFillPath(a3);
    CGPathRelease(Mutable);

    CGContextRestoreGState(a3);
  }
}

+ (id)badgeWithType:(int)a3 color:(id)a4 viewScale:(double)a5 frame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = *&a3;
  v12 = a4;
  v13 = objc_alloc_init(TSTTableBadge);
  objc_msgSend_setBadgeType_(v13, v14, v11, v15, v16);
  objc_msgSend_setColor_(v13, v17, v12, v18, v19);

  objc_msgSend_setViewScale_(v13, v20, v21, v22, v23, a5);
  objc_msgSend_setFrame_(v13, v24, v25, v26, v27, x, y, width, height);

  return v13;
}

- (void)drawInContext:(CGContext *)a3
{
  v7 = objc_msgSend_badgeType(self, a2, a3, v3, v4);
  switch(v7)
  {
    case 3:

      MEMORY[0x2821F9670](self, sel_p_drawCellErrorIndicatorInContext_, a3, v8, v9);
      break;
    case 2:

      MEMORY[0x2821F9670](self, sel_p_drawCellWarningBadgeInContext_, a3, v8, v9);
      break;
    case 1:

      MEMORY[0x2821F9670](self, sel_p_drawCellCommentBadgeInContext_, a3, v8, v9);
      break;
  }
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end