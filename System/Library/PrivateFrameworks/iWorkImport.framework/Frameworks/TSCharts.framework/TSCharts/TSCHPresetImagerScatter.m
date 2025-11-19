@interface TSCHPresetImagerScatter
- (UIEdgeInsets)swatchImageEdgeInsetsForSize:(CGSize)a3;
- (void)p_drawShadowedContentIntoContext:(CGContext *)a3 size:(CGSize)a4 contentsScale:(double)a5 preset:(id)a6 target:(int)a7 shouldCache:(BOOL *)a8;
@end

@implementation TSCHPresetImagerScatter

- (UIEdgeInsets)swatchImageEdgeInsetsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  objc_msgSend_p_nativeSize(self, a2, a3.width, a3.height, v3);
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

- (void)p_drawShadowedContentIntoContext:(CGContext *)a3 size:(CGSize)a4 contentsScale:(double)a5 preset:(id)a6 target:(int)a7 shouldCache:(BOOL *)a8
{
  height = a4.height;
  width = a4.width;
  v135[12] = *MEMORY[0x277D85DE8];
  v12 = objc_msgSend_seriesStyles(a6, a2, a4.width, a4.height, a5);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, v14, v15, v16, 0);
  if (objc_msgSend_count(v12, v18, v19, v20, v21) <= 1)
  {
    v26 = v17;
  }

  else
  {
    v26 = objc_msgSend_objectAtIndexedSubscript_(v12, v22, v23, v24, v25, 1);
  }

  v31 = v26;
  objc_msgSend_p_nativeSize(self, v27, v28, v29, v30);
  v33 = width / v32;
  v35 = height / v34;
  v36 = sub_27628CE94(16.0, 9.0, 112.0, 85.0, width / v32);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v135[0] = sub_27628CEA8(26.0, 24.0, v33);
  v135[1] = v43;
  v135[2] = sub_27628CEA8(34.0, 44.0, v33);
  v135[3] = v44;
  v135[4] = sub_27628CEA8(67.0, 60.0, v33);
  v135[5] = v45;
  v135[6] = sub_27628CEA8(95.0, 75.0, v33);
  v135[7] = v46;
  v135[8] = sub_27628CEA8(106.0, 70.0, v33);
  v135[9] = v47;
  v135[10] = sub_27628CEA8(115.0, 80.0, v33);
  v135[11] = v48;
  v134[0] = sub_27628CEA8(19.0, 17.0, v33);
  v134[1] = v49;
  v134[2] = sub_27628CEA8(37.0, 36.0, v33);
  v134[3] = v50;
  v134[4] = sub_27628CEA8(45.0, 64.0, v33);
  v134[5] = v51;
  v134[6] = sub_27628CEA8(56.0, 78.0, v33);
  v134[7] = v52;
  v134[8] = sub_27628CEA8(87.0, 66.0, v33);
  v134[9] = v53;
  v134[10] = sub_27628CEA8(109.0, 83.0, v33);
  v134[11] = v54;
  if (v33 >= v35)
  {
    v55 = v35;
  }

  else
  {
    v55 = v33;
  }

  v56 = v55 * 6.0;
  if (v56 >= 1.5)
  {
    v57 = v56;
  }

  else
  {
    v57 = 1.5;
  }

  CGContextSaveGState(a3);
  v60 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v58, 0.46, 1.0, v59);
  v65 = objc_msgSend_CGColor(v60, v61, v62, v63, v64);
  CGContextSetStrokeColorWithColor(a3, v65);
  CGContextSetLineCap(a3, kCGLineCapSquare);
  CGContextSetLineJoin(a3, kCGLineJoinMiter);
  CGContextSetLineWidth(a3, 1.0);
  v136.origin.x = v36;
  v136.origin.y = v38;
  v136.size.width = v40;
  v136.size.height = v42;
  MinX = CGRectGetMinX(v136);
  v137.origin.x = v36;
  v137.origin.y = v38;
  v137.size.width = v40;
  v137.size.height = v42;
  points.x = MinX;
  points.y = CGRectGetMinY(v137);
  v138.origin.x = v36;
  v138.origin.y = v38;
  v138.size.width = v40;
  v138.size.height = v42;
  MaxX = CGRectGetMaxX(v138);
  v139.origin.x = v36;
  v139.origin.y = v38;
  v139.size.width = v40;
  v139.size.height = v42;
  v131[0] = MaxX;
  v131[1] = CGRectGetMinY(v139);
  v140.origin.x = v36;
  v140.origin.y = v38;
  v140.size.width = v40;
  v140.size.height = v42;
  v68 = CGRectGetMinX(v140);
  v141.origin.x = v36;
  v141.origin.y = v38;
  v141.size.width = v40;
  v141.size.height = v42;
  v132[0] = v68;
  v132[1] = CGRectGetMinY(v141);
  v142.origin.x = v36;
  v142.origin.y = v38;
  v142.size.width = v40;
  v142.size.height = v42;
  v69 = CGRectGetMinX(v142);
  v143.origin.x = v36;
  v143.origin.y = v38;
  v143.size.width = v40;
  v143.size.height = v42;
  v133[0] = v69;
  v133[1] = CGRectGetMaxY(v143);
  sub_27628C654(a3, &points.x, v131, 2, 1.0);
  sub_27628C654(a3, v132, v133, 2, 1.0);
  CGContextStrokeLineSegments(a3, &points, 4uLL);
  CGContextRestoreGState(a3);

  CGContextSaveGState(a3);
  v74 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v70, v71, v72, v73, v17, 1538, 0);
  v79 = objc_msgSend_color(v74, v75, v76, v77, v78);
  v84 = objc_msgSend_CGColor(v79, v80, v81, v82, v83);
  CGContextSetFillColorWithColor(a3, v84);

  v89 = objc_msgSend_color(v74, v85, v86, v87, v88);
  v94 = objc_msgSend_CGColor(v89, v90, v91, v92, v93);
  CGContextSetStrokeColorWithColor(a3, v94);

  for (i = 0; i != 12; i += 2)
  {
    sub_27628CB34(a3, *&v135[i] - v57, *&v135[i + 1] - v57, v57 + v57, v57 + v57, 0.0);
    if (v98 < v99)
    {
      v98 = v99;
    }

    sub_27631AEFC(a3, v96, v97, v98, v98);
  }

  CGContextRestoreGState(a3);

  CGContextSaveGState(a3);
  v104 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v100, v101, v102, v103, v31, 1538, 0);
  v109 = objc_msgSend_color(v104, v105, v106, v107, v108);
  v114 = objc_msgSend_CGColor(v109, v110, v111, v112, v113);
  CGContextSetFillColorWithColor(a3, v114);

  v119 = objc_msgSend_color(v104, v115, v116, v117, v118);
  v124 = objc_msgSend_CGColor(v119, v120, v121, v122, v123);
  CGContextSetStrokeColorWithColor(a3, v124);

  for (j = 0; j != 12; j += 2)
  {
    sub_27628CB34(a3, *&v134[j] - v57, *&v134[j + 1] - v57, v57 + v57, v57 + v57, 0.0);
    if (v128 < v129)
    {
      v128 = v129;
    }

    sub_27631AEFC(a3, v126, v127, v128, v128);
  }

  CGContextRestoreGState(a3);
}

@end