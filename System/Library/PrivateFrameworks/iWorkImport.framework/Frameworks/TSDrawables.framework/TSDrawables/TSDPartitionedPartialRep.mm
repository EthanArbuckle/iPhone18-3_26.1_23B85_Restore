@interface TSDPartitionedPartialRep
- (CGImage)p_newImageForCachingBaseRep;
- (CGRect)clipRect;
- (CGRect)layerFrameInScaledCanvas;
- (CGRect)p_clipRect;
- (CGRect)p_convertBaseToPartitioningNaturalRect:(CGRect)rect;
- (TSDPartitionedPartialRep)initWithLayout:(id)layout canvas:(id)canvas;
- (UIEdgeInsets)p_edgeInsetsForClipping;
- (void)drawInContext:(CGContext *)context;
- (void)willBeRemoved;
@end

@implementation TSDPartitionedPartialRep

- (TSDPartitionedPartialRep)initWithLayout:(id)layout canvas:(id)canvas
{
  layoutCopy = layout;
  canvasCopy = canvas;
  if (!layoutCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDPartitionedPartialRep initWithLayout:canvas:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPartitionedPartialRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 41, 0, "invalid nil value for '%{public}s'", "layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v24.receiver = self;
  v24.super_class = TSDPartitionedPartialRep;
  v16 = [(TSDRep *)&v24 initWithLayout:layoutCopy canvas:canvasCopy];
  if (v16)
  {
    v17 = layoutCopy;
    objc_opt_class();
    v20 = objc_msgSend_partitioner(v17, v18, v19);
    v21 = TSUDynamicCast();

    if (v21)
    {
      objc_msgSend_i_registerPartialRep_(v21, v22, v16);
    }
  }

  return v16;
}

- (CGRect)layerFrameInScaledCanvas
{
  objc_msgSend_p_edgeInsetsForClipping(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  objc_msgSend_frameInUnscaledCanvas(self, v12, v13);
  v15 = v7 + v14;
  v17 = v5 + v16;
  v19 = v18 - (v7 + v11);
  v21 = v20 - (v5 + v9);
  v24 = objc_msgSend_canvas(self, v22, v23);
  objc_msgSend_convertUnscaledToBoundsRect_(v24, v25, v26, v15, v17, v19, v21);
  v36 = CGRectIntegral(v35);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGRect)clipRect
{
  objc_msgSend_p_edgeInsetsForClipping(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  objc_msgSend_naturalBounds(self, v12, v13);
  v15 = v7 + v14;
  v17 = v5 + v16;
  v19 = v18 - (v7 + v11);
  v21 = v20 - (v5 + v9);
  result.size.height = v21;
  result.size.width = v19;
  result.origin.y = v17;
  result.origin.x = v15;
  return result;
}

- (void)willBeRemoved
{
  v4 = objc_msgSend_layout(self, a2, v2);
  objc_opt_class();
  v7 = objc_msgSend_partitioner(v4, v5, v6);
  v8 = TSUDynamicCast();

  if (v8)
  {
    objc_msgSend_i_unregisterPartialRep_(v8, v9, self);
  }

  v10.receiver = self;
  v10.super_class = TSDPartitionedPartialRep;
  [(TSDRep *)&v10 willBeRemoved];
}

- (void)drawInContext:(CGContext *)context
{
  v5 = objc_msgSend_layout(self, a2, context);
  v8 = objc_msgSend_partitioner(v5, v6, v7);
  v11 = objc_msgSend_canvas(self, v9, v10);
  objc_msgSend_i_forceLayoutForChangedCanvasPrintingSettingsOfCanvas_(v8, v12, v11);

  v15 = objc_msgSend_i_layout(v8, v13, v14);
  objc_msgSend_frameForPartitioning(v15, v16, v17);
  v19 = v18;
  CGContextTranslateCTM(context, -v20, -v21);
  objc_msgSend_bounds(v5, v22, v23);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  if (objc_msgSend_paginateRightToLeft(v8, v32, v33))
  {
    v42.origin.x = v25;
    v42.origin.y = v27;
    v42.size.width = v29;
    v42.size.height = v31;
    v25 = v19 - CGRectGetMaxX(v42);
  }

  memset(&v41, 0, sizeof(v41));
  CGAffineTransformMakeTranslation(&v41, -v25, -v27);
  v40 = v41;
  CGContextConcatCTM(context, &v40);
  v36 = objc_msgSend_canvas(self, v34, v35);
  v38 = objc_msgSend_i_repForCanvas_(v8, v37, v36);

  objc_msgSend_recursivelyDrawInContext_keepingChildrenPassingTest_(v38, v39, context, 0);
}

- (UIEdgeInsets)p_edgeInsetsForClipping
{
  v4 = objc_msgSend_layout(self, a2, v2);
  objc_msgSend_bounds(v4, v5, v6);
  v77 = v8;
  rect = v7;
  v10 = v9;
  v12 = v11;
  v15 = objc_msgSend_partitioner(v4, v13, v14);
  v18 = objc_msgSend_canvas(self, v16, v17);
  objc_msgSend_i_forceLayoutForChangedCanvasPrintingSettingsOfCanvas_(v15, v19, v18);

  v22 = objc_msgSend_i_layout(v15, v20, v21);
  objc_msgSend_frameForPartitioning(v22, v23, v24);
  TSURectWithSize();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  objc_msgSend_frame(v22, v33, v34);
  objc_msgSend_frameForPartitioning(v22, v35, v36);
  TSUSubtractPoints();
  objc_msgSend_p_clipRect(self, v37, v38);
  v76.size.width = v39;
  v76.size.height = v40;
  TSUAddPoints();
  v76.origin.x = v41;
  v76.origin.y = v42;
  v43 = MEMORY[0x277D81428];
  v79.origin.x = rect;
  v79.origin.y = v77;
  v79.size.width = v10;
  v79.size.height = v12;
  MinY = CGRectGetMinY(v79);
  v80.origin.x = v26;
  v80.origin.y = v28;
  v80.size.width = v30;
  v80.size.height = v32;
  v45 = CGRectGetMinY(v80);
  if (MinY == v45 || vabdd_f64(MinY, v45) < 0.00999999978)
  {
    v47 = CGRectGetMinY(v76);
    v81.origin.x = v26;
    v81.origin.y = v28;
    v81.size.width = v30;
    v81.size.height = v32;
    v46 = v47 - CGRectGetMinY(v81);
  }

  else
  {
    v46 = *v43;
  }

  v75 = v46;
  v82.origin.x = rect;
  v82.origin.y = v77;
  v82.size.width = v10;
  v82.size.height = v12;
  MaxY = CGRectGetMaxY(v82);
  v83.origin.x = v26;
  v83.origin.y = v28;
  v83.size.width = v30;
  v83.size.height = v32;
  v51 = CGRectGetMaxY(v83);
  if (MaxY == v51 || vabdd_f64(MaxY, v51) < 0.00999999978)
  {
    v84.origin.x = v26;
    v84.origin.y = v28;
    v84.size.width = v30;
    v84.size.height = v32;
    v53 = CGRectGetMaxY(v84);
    v52 = v53 - CGRectGetMaxY(v76);
  }

  else
  {
    v52 = *(v43 + 16);
  }

  v74 = v52;
  v73 = *(v43 + 24);
  v54 = objc_msgSend_paginateRightToLeft(v15, v49, v50, *(v43 + 8));
  v85.origin.x = rect;
  v85.origin.y = v77;
  v85.size.width = v10;
  v85.size.height = v12;
  MinX = CGRectGetMinX(v85);
  v86.origin.x = v26;
  v86.origin.y = v28;
  v86.size.width = v30;
  v86.size.height = v32;
  v56 = CGRectGetMinX(v86);
  v57 = MinX == v56;
  if (vabdd_f64(MinX, v56) < 0.00999999978)
  {
    v57 = 1;
  }

  if (!v54)
  {
    if (v57)
    {
      v64 = CGRectGetMinX(v76);
      v91.origin.x = v26;
      v91.origin.y = v28;
      v91.size.width = v30;
      v91.size.height = v32;
      v72 = v64 - CGRectGetMinX(v91);
    }

    v92.origin.y = v77;
    v92.origin.x = rect;
    v92.size.width = v10;
    v92.size.height = v12;
    MaxX = CGRectGetMaxX(v92);
    v93.origin.x = v26;
    v93.origin.y = v28;
    v93.size.width = v30;
    v93.size.height = v32;
    v66 = CGRectGetMaxX(v93);
    if (MaxX == v66 || vabdd_f64(MaxX, v66) < 0.00999999978)
    {
      v94.origin.x = v26;
      v94.origin.y = v28;
      v94.size.width = v30;
      v94.size.height = v32;
      v67 = CGRectGetMaxX(v94);
      v63 = v67 - CGRectGetMaxX(v76);
      goto LABEL_23;
    }

LABEL_21:
    v63 = v73;
LABEL_23:
    v62 = v72;
    goto LABEL_24;
  }

  if (v57)
  {
    v87.origin.x = v26;
    v87.origin.y = v28;
    v87.size.width = v30;
    v87.size.height = v32;
    v58 = CGRectGetMaxX(v87);
    v73 = v58 - CGRectGetMaxX(v76);
  }

  v88.origin.y = v77;
  v88.origin.x = rect;
  v88.size.width = v10;
  v88.size.height = v12;
  v59 = CGRectGetMaxX(v88);
  v89.origin.x = v26;
  v89.origin.y = v28;
  v89.size.width = v30;
  v89.size.height = v32;
  v60 = CGRectGetMaxX(v89);
  if (v59 != v60 && vabdd_f64(v59, v60) >= 0.00999999978)
  {
    goto LABEL_21;
  }

  v61 = CGRectGetMinX(v76);
  v90.origin.x = v26;
  v90.origin.y = v28;
  v90.size.width = v30;
  v90.size.height = v32;
  v62 = v61 - CGRectGetMinX(v90);
  v63 = v73;
LABEL_24:

  v69 = v74;
  v68 = v75;
  v70 = v62;
  v71 = v63;
  result.right = v71;
  result.bottom = v69;
  result.left = v70;
  result.top = v68;
  return result;
}

- (CGRect)p_clipRect
{
  v4 = objc_msgSend_layout(self, a2, v2);
  v7 = objc_msgSend_partitioner(v4, v5, v6);
  v10 = objc_msgSend_canvas(self, v8, v9);
  v12 = objc_msgSend_i_repForCanvas_(v7, v11, v10);

  if (objc_msgSend_masksToBounds(v12, v13, v14))
  {
    objc_msgSend_clipRect(v12, v15, v16);
  }

  else
  {
    objc_msgSend_i_partition_deepClipRect(v12, v15, v16);
  }

  objc_msgSend_p_convertBaseToPartitioningNaturalRect_(self, v17, v18);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGImage)p_newImageForCachingBaseRep
{
  v4 = objc_msgSend_layout(self, a2, v2);
  v7 = objc_msgSend_partitioner(v4, v5, v6);
  v10 = objc_msgSend_canvas(self, v8, v9);
  v12 = objc_msgSend_i_repForCanvas_(v7, v11, v10);

  objc_msgSend_p_clipRect(self, v13, v14);
  v16 = v15;
  v18 = v17;
  v21 = objc_msgSend_canvas(self, v19, v20);
  objc_msgSend_viewScale(v21, v22, v23);
  TSUMultiplyRectScalar();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v75.origin.x = v25;
  v75.origin.y = v27;
  v75.size.width = v29;
  v75.size.height = v31;
  v76 = CGRectIntegral(v75);
  x = v76.origin.x;
  y = v76.origin.y;
  v34 = TSDBitmapContextCreate(0xB, v76.size.width, v76.size.height);
  v37 = objc_msgSend_canvas(self, v35, v36);
  objc_msgSend_contentsScale(v37, v38, v39);
  TSDSetCGContextInfo(v34, 0, 0, 0, 0, v40);

  CGContextTranslateCTM(v34, v25 - x, v27 - y);
  v43 = objc_msgSend_canvas(self, v41, v42);
  objc_msgSend_viewScale(v43, v44, v45);
  v47 = v46;
  v50 = objc_msgSend_canvas(self, v48, v49);
  objc_msgSend_viewScale(v50, v51, v52);
  CGContextScaleCTM(v34, v47, v53);

  objc_msgSend_naturalBounds(v12, v54, v55);
  CGContextTranslateCTM(v34, v56 - v16, v57 - v18);
  v60 = objc_msgSend_canvas(self, v58, v59);
  objc_msgSend_i_forceLayoutForChangedCanvasPrintingSettingsOfCanvas_(v7, v61, v60);

  v64 = objc_msgSend_i_layout(v7, v62, v63);
  v67 = objc_msgSend_geometry(v64, v65, v66);
  objc_msgSend_frame(v67, v68, v69);
  CGContextTranslateCTM(v34, -v70, -v71);
  objc_msgSend_recursivelyDrawInContext_keepingChildrenPassingTest_(v12, v72, v34, 0);
  Image = CGBitmapContextCreateImage(v34);
  CGContextRelease(v34);

  return Image;
}

- (CGRect)p_convertBaseToPartitioningNaturalRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = objc_msgSend_layout(self, a2, v3);
  v12 = objc_msgSend_partitioner(v9, v10, v11);
  v15 = objc_msgSend_canvas(self, v13, v14);
  objc_msgSend_i_forceLayoutForChangedCanvasPrintingSettingsOfCanvas_(v12, v16, v15);

  v19 = objc_msgSend_i_layout(v12, v17, v18);
  v22 = objc_msgSend_geometry(v19, v20, v21);

  if (v22)
  {
    objc_msgSend_transform(v22, v23, v24);
  }

  else
  {
    memset(&v41, 0, sizeof(v41));
  }

  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v43 = CGRectApplyAffineTransform(v42, &v41);
  v25 = v43.origin.x;
  v26 = v43.origin.y;
  v27 = v43.size.width;
  v28 = v43.size.height;
  objc_msgSend_frame(v22, v29, v30);
  v32 = v25 - v31;
  objc_msgSend_frame(v22, v33, v34);
  v36 = v26 - v35;

  v37 = v32;
  v38 = v36;
  v39 = v27;
  v40 = v28;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

@end