@interface TSCHPresetImagerLine
- (UIEdgeInsets)swatchImageEdgeInsetsForSize:(CGSize)size;
- (id)p_strokeFromStyle:(id)style specific:(int)specific default:(int)default;
- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache;
@end

@implementation TSCHPresetImagerLine

- (UIEdgeInsets)swatchImageEdgeInsetsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_msgSend_p_nativeSize(self, a2, size.width, size.height, v3);
  v7 = width / v6;
  v9 = height / v8;
  v10 = floor(height / v8 * 9.0);
  v11 = floor(v7 * 16.0);
  v12 = floor(v9 * 6.0);
  v13 = floor(v7 * 14.0);
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (id)p_strokeFromStyle:(id)style specific:(int)specific default:(int)default
{
  v8 = objc_msgSend_p_objectFromStyle_specific_default_(self, a2, v5, v6, v7, style, *&specific, *&default);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_width(v8, v9, v10, v11, v12);
    if (v15 != 2.0)
    {
      v17 = objc_msgSend_mutableCopy(v13, v14, v15, 2.0, v16);
      objc_msgSend_setWidth_(v17, v18, 2.0, v19, v20);

      v13 = v17;
    }
  }

  return v13;
}

- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache
{
  width = size.width;
  v88[12] = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_seriesStyles(preset, a2, size.width, size.height, scale);
  v16 = objc_msgSend_objectAtIndexedSubscript_(v11, v12, v13, v14, v15, 0);
  if (objc_msgSend_count(v11, v17, v18, v19, v20) <= 1)
  {
    v25 = v16;
  }

  else
  {
    v25 = objc_msgSend_objectAtIndexedSubscript_(v11, v21, v22, v23, v24, 1);
  }

  v30 = v25;
  objc_msgSend_p_nativeSize(self, v26, v27, v28, v29);
  v32 = width / v31;
  v82 = sub_27628CE94(16.0, 9.0, 112.0, 85.0, width / v31);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v88[0] = sub_27628CEA8(16.0, 22.0, v32);
  v88[1] = v39;
  v88[2] = sub_27628CEA8(38.0, 42.0, v32);
  v88[3] = v40;
  v88[4] = sub_27628CEA8(60.0, 36.0, v32);
  v88[5] = v41;
  v88[6] = sub_27628CEA8(83.0, 75.0, v32);
  v88[7] = v42;
  v88[8] = sub_27628CEA8(105.0, 55.0, v32);
  v88[9] = v43;
  v88[10] = sub_27628CEA8(127.0, 81.0, v32);
  v88[11] = v44;
  v87[0] = sub_27628CEA8(16.0, 81.0, v32);
  v87[1] = v45;
  v87[2] = sub_27628CEA8(38.0, 58.0, v32);
  v87[3] = v46;
  v87[4] = sub_27628CEA8(60.0, 69.0, v32);
  v87[5] = v47;
  v87[6] = sub_27628CEA8(105.0, 22.0, v32);
  v87[7] = v48;
  v87[8] = sub_27628CEA8(127.0, 50.0, v32);
  v87[9] = v49;
  CGContextSaveGState(context);
  v52 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v50, 0.46, 1.0, v51);
  v57 = objc_msgSend_CGColor(v52, v53, v54, v55, v56);
  CGContextSetStrokeColorWithColor(context, v57);
  CGContextSetLineCap(context, kCGLineCapSquare);
  CGContextSetLineJoin(context, kCGLineJoinMiter);
  CGContextSetLineWidth(context, 1.0);
  v89.origin.x = v82;
  v89.origin.y = v34;
  v89.size.width = v36;
  v89.size.height = v38;
  MinX = CGRectGetMinX(v89);
  v90.origin.x = v82;
  v90.origin.y = v34;
  v90.size.width = v36;
  v90.size.height = v38;
  points.x = MinX;
  points.y = CGRectGetMinY(v90);
  v91.origin.x = v82;
  v91.origin.y = v34;
  v91.size.width = v36;
  v91.size.height = v38;
  MaxX = CGRectGetMaxX(v91);
  v92.origin.x = v82;
  v92.origin.y = v34;
  v92.size.width = v36;
  v92.size.height = v38;
  v84[0] = MaxX;
  v84[1] = CGRectGetMinY(v92);
  v93.origin.x = v82;
  v93.origin.y = v34;
  v93.size.width = v36;
  v93.size.height = v38;
  v60 = CGRectGetMinX(v93);
  v94.origin.x = v82;
  v94.origin.y = v34;
  v94.size.width = v36;
  v94.size.height = v38;
  v85[0] = v60;
  v85[1] = CGRectGetMinY(v94);
  v95.origin.x = v82;
  v95.origin.y = v34;
  v95.size.width = v36;
  v95.size.height = v38;
  v61 = CGRectGetMinX(v95);
  v96.origin.x = v82;
  v96.origin.y = v34;
  v96.size.width = v36;
  v96.size.height = v38;
  v86[0] = v61;
  v86[1] = CGRectGetMaxY(v96);
  sub_27628C654(context, &points.x, v84, 2, 1.0);
  sub_27628C654(context, v85, v86, 2, 1.0);
  CGContextStrokeLineSegments(context, &points, 4uLL);
  CGContextRestoreGState(context);

  CGContextSaveGState(context);
  v66 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v62, v63, v64, v65, v30, 1500, 0);
  v67 = sub_2762A1ACC(v87, 5uLL, 0);
  objc_msgSend_paintPath_wantsInteriorStroke_inContext_(v66, v68, v69, v70, v71, v67, 0, context);
  CGPathRelease(v67);
  CGContextRestoreGState(context);

  CGContextSaveGState(context);
  v76 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v72, v73, v74, v75, v16, 1500, 0);
  v77 = sub_2762A1ACC(v88, 6uLL, 0);
  objc_msgSend_paintPath_wantsInteriorStroke_inContext_(v76, v78, v79, v80, v81, v77, 0, context);
  CGPathRelease(v77);
  CGContextRestoreGState(context);
}

@end