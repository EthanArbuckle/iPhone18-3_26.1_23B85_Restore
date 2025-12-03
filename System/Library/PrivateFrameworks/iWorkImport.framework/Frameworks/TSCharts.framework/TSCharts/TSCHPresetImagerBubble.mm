@interface TSCHPresetImagerBubble
- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache;
@end

@implementation TSCHPresetImagerBubble

- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache
{
  height = size.height;
  width = size.width;
  v90[10] = *MEMORY[0x277D85DE8];
  presetCopy = preset;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 1;
  v17 = objc_msgSend_seriesStyles(presetCopy, v14, COERCE_DOUBLE(0x2020000000), v15, v16);
  v22 = objc_msgSend_objectAtIndexedSubscript_(v17, v18, v19, v20, v21, 0);
  if (objc_msgSend_count(v17, v23, v24, v25, v26) < 2)
  {
    v31 = v22;
  }

  else
  {
    v31 = objc_msgSend_objectAtIndexedSubscript_(v17, v27, v28, v29, v30, 1);
  }

  v36 = v31;
  objc_msgSend_p_nativeSize(self, v32, v33, v34, v35);
  v38 = width / v37;
  v40 = height / v39;
  v41 = sub_27628CE94(16.0, 9.0, 112.0, 85.0, width / v37);
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v90[0] = sub_27628CEA8(34.0, 44.0, v38);
  v90[1] = v48;
  v90[2] = sub_27628CEA8(95.0, 75.0, v38);
  v90[3] = v49;
  v90[4] = sub_27628CEA8(115.0, 80.0, v38);
  v90[5] = v50;
  v90[6] = sub_27628CEA8(55.0, 50.0, v38);
  v90[7] = v51;
  v90[8] = sub_27628CEA8(110.0, 40.0, v38);
  v90[9] = v52;
  v89[0] = sub_27628CEA8(37.0, 36.0, v38);
  v89[1] = v53;
  v89[2] = sub_27628CEA8(56.0, 78.0, v38);
  v89[3] = v54;
  v89[4] = sub_27628CEA8(109.0, 83.0, v38);
  v89[5] = v55;
  v89[6] = sub_27628CEA8(75.0, 30.0, v38);
  v89[7] = v56;
  v89[8] = sub_27628CEA8(80.0, 65.0, v38);
  v89[9] = v57;
  if (v38 >= v40)
  {
    v58 = v40;
  }

  else
  {
    v58 = v38;
  }

  v59 = v58 * 5.0;
  if (v59 < 1.5)
  {
    v59 = 1.5;
  }

  v86[0] = v59 * 0.5;
  v86[1] = v59;
  v87 = vmulq_n_f64(xmmword_2764D6F40, v59);
  v88 = v59 * 3.0;
  CGContextSaveGState(context);
  v62 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v60, 0.46, 1.0, v61);
  v67 = objc_msgSend_CGColor(v62, v63, v64, v65, v66);
  CGContextSetStrokeColorWithColor(context, v67);
  CGContextSetLineCap(context, kCGLineCapSquare);
  CGContextSetLineJoin(context, kCGLineJoinMiter);
  CGContextSetLineWidth(context, 1.0);
  v91.origin.x = v41;
  v91.origin.y = v43;
  v91.size.width = v45;
  v91.size.height = v47;
  MinX = CGRectGetMinX(v91);
  v92.origin.x = v41;
  v92.origin.y = v43;
  v92.size.width = v45;
  v92.size.height = v47;
  MinY = CGRectGetMinY(v92);
  points.x = MinX;
  points.y = MinY;
  v93.origin.x = v41;
  v93.origin.y = v43;
  v93.size.width = v45;
  v93.size.height = v47;
  MaxX = CGRectGetMaxX(v93);
  v94.origin.x = v41;
  v94.origin.y = v43;
  v94.size.width = v45;
  v94.size.height = v47;
  v71 = CGRectGetMinY(v94);
  v83[0] = MaxX;
  v83[1] = v71;
  v95.origin.x = v41;
  v95.origin.y = v43;
  v95.size.width = v45;
  v95.size.height = v47;
  v72 = CGRectGetMinX(v95);
  v96.origin.x = v41;
  v96.origin.y = v43;
  v96.size.width = v45;
  v96.size.height = v47;
  v73 = CGRectGetMinY(v96);
  v84[0] = v72;
  v84[1] = v73;
  v97.origin.x = v41;
  v97.origin.y = v43;
  v97.size.width = v45;
  v97.size.height = v47;
  v74 = CGRectGetMinX(v97);
  v98.origin.x = v41;
  v98.origin.y = v43;
  v98.size.width = v45;
  v98.size.height = v47;
  MaxY = CGRectGetMaxY(v98);
  v85[0] = v74;
  v85[1] = MaxY;
  sub_27628C654(context, &points.x, v83, 2, 1.0);
  sub_27628C654(context, v84, v85, 2, 1.0);
  CGContextStrokeLineSegments(context, &points, 4uLL);
  CGContextRestoreGState(context);

  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = sub_27631BF84;
  v77[3] = &unk_27A6B99F0;
  v77[6] = 5;
  v77[7] = context;
  v77[4] = self;
  v77[5] = &v78;
  v77[8] = v86;
  v76 = MEMORY[0x277C98B30](v77);
  (v76)[2](v76, v22, v90, 5);
  (v76)[2](v76, v36, v89, 5);
  if (cache)
  {
    *cache = *(v79 + 24);
  }

  _Block_object_dispose(&v78, 8);
}

@end