@interface TSDStyledLayout
- (CGRect)aliasedAlignmentFrameForScale:(double)scale;
- (CGRect)alignmentFrameInRoot;
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform;
- (CGRect)frameForCullingWithBaseFrame:(CGRect)frame additionalTransform:(CGAffineTransform *)transform;
- (CGRect)fullReflectionBoundsForRect:(CGRect)rect;
- (CGRect)fullReflectionFrame;
- (CGRect)i_baseFrame;
- (CGRect)reflectionBoundsForRect:(CGRect)rect;
- (CGRect)reflectionFrame;
- (CGRect)reflectionFrameForSubRect:(CGRect)rect;
- (CGRect)shadowedNaturalBoundsWithoutOffset;
- (double)opacity;
- (double)scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform:(CGAffineTransform *)transform withStartingPathSource:(id)source;
- (void)setSuppressesShadowsAndReflections:(BOOL)reflections;
@end

@implementation TSDStyledLayout

- (void)setSuppressesShadowsAndReflections:(BOOL)reflections
{
  if (self->_suppressesShadowsAndReflections != reflections)
  {
    self->_suppressesShadowsAndReflections = reflections;
  }
}

- (double)scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform:(CGAffineTransform *)transform withStartingPathSource:(id)source
{
  sourceCopy = source;
  objc_opt_class();
  v9 = objc_msgSend_parent(self, v7, v8);
  v10 = TSUDynamicCast();

  if (v10)
  {
    objc_msgSend_maximumFrameSizeForChild_(v10, v11, self);
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v14 = 1.79769313e308;
    v16 = 1.79769313e308;
  }

  if (v14 >= 1.79769313e308)
  {
    v17 = 1.0;
    if (v16 >= 1.79769313e308)
    {
      goto LABEL_60;
    }
  }

  v18 = objc_msgSend_stroke(self, v11, v12);
  v21 = objc_msgSend_copy(sourceCopy, v19, v20);
  objc_msgSend_naturalSize(v21, v22, v23);
  v105 = v25;
  v106 = v24;
  objc_msgSend_naturalSize(v21, v26, v27);
  v31 = v30;
  v33 = v32;
  v34 = 4;
  v108 = v14;
  v107 = v16;
  while (1)
  {
    v35 = objc_msgSend_bezierPath(v21, v28, v29);
    v36 = *&transform->c;
    *&v115.a = *&transform->a;
    *&v115.c = v36;
    *&v115.tx = *&transform->tx;
    if (!CGAffineTransformIsIdentity(&v115))
    {
      v38 = *&transform->c;
      *&v115.a = *&transform->a;
      *&v115.c = v38;
      *&v115.tx = *&transform->tx;
      objc_msgSend_transformUsingAffineTransform_(v35, v37, &v115);
    }

    objc_msgSend_boundsIncludingTSDStroke_(v35, v37, v18);
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    TSUSubtractSizes();
    if (v34 == 4 && v49 <= 0.0 && v50 <= 0.0)
    {
      break;
    }

    if (v34 == 4)
    {
      objc_msgSend_bounds(v35, v47, v48);
      x = v118.origin.x;
      y = v118.origin.y;
      width = v118.size.width;
      height = v118.size.height;
      v113 = v118.size.height;
      MinY = CGRectGetMinY(v118);
      v119.origin.x = v40;
      v119.origin.y = v42;
      v119.size.width = v44;
      v119.size.height = v46;
      v111 = CGRectGetMinY(v119);
      v120.origin.x = x;
      v120.origin.y = y;
      v120.size.width = width;
      v120.size.height = height;
      MinX = CGRectGetMinX(v120);
      v121.origin.x = v40;
      v121.origin.y = v42;
      v121.size.width = v44;
      v121.size.height = v46;
      v114 = MinX - CGRectGetMinX(v121);
      v122.origin.x = v40;
      v122.origin.y = v42;
      v122.size.width = v44;
      v122.size.height = v46;
      MaxY = CGRectGetMaxY(v122);
      v123.origin.x = x;
      v123.origin.y = y;
      v123.size.width = width;
      v123.size.height = v113;
      v109 = CGRectGetMaxY(v123);
      v124.origin.x = v40;
      v124.origin.y = v42;
      v124.size.width = v44;
      v124.size.height = v46;
      MaxX = CGRectGetMaxX(v124);
      v125.origin.x = x;
      v125.origin.y = y;
      v125.size.width = width;
      v14 = v108;
      v125.size.height = v113;
      v65 = MaxX - CGRectGetMaxX(v125);
      v16 = v107;
      TSUSubtractSizes();
      TSURectWithSize();
      v67 = v66;
      v69 = v68 - (v114 + v65);
      objc_msgSend_minimumSize(self, v70, v71);
      if (v69 < v74 || (objc_msgSend_minimumSize(self, v72, v73), v67 - (MinY - v111 + MaxY - v109) < v75))
      {
        objc_msgSend_minimumSize(self, v72, v73);
        objc_msgSend_scaleToNaturalSize_(v21, v87, v88);
        objc_msgSend_naturalSize(v21, v89, v90);
        v31 = v91;
        v33 = v92;
        break;
      }

      isLineSegment = objc_msgSend_isLineSegment(v35, v72, v73);
      objc_msgSend_naturalSize(v21, v77, v78);
      if (!isLineSegment)
      {
        if (v81 != 0.0)
        {
          objc_msgSend_naturalSize(v21, v79, v80);
          if (v82 != 0.0)
          {
            objc_msgSend_naturalSize(v21, v79, v80);
            TSUFitOrFillSizeInSize();
            goto LABEL_44;
          }
        }

        objc_msgSend_naturalSize(v21, v79, v80);
      }

      TSUFitSizeOfLineInSize();
    }

    else
    {
      v51 = v49 > 0.0 || v49 <= -1.0;
      if (!v51 && v50 <= 0.0)
      {
        break;
      }

      v52 = v50 <= -1.0 || v50 > 0.0;
      v53 = !v52 && v49 <= 0.0;
      if (v53 || v34 == 0)
      {
        break;
      }

      if (fmax(v49, v50) > 0.0 && v14 > 0.5 && v16 > 0.5)
      {
        TSUSubtractSizes();
      }

      objc_msgSend_naturalSize(v21, v47, v48);
      TSUMultiplySizeScalar();
    }

LABEL_44:
    objc_msgSend_scaleToNaturalSize_(v21, v57, v58);
    objc_msgSend_naturalSize(v21, v83, v84);
    v31 = v85;
    v33 = v86;

    if (--v34 == -1)
    {
      goto LABEL_49;
    }
  }

LABEL_49:
  v17 = 1.0;
  if (v106 != v31 || v105 != v33)
  {
    v93 = v31 / v106;
    v94 = v33 / v105;
    v17 = v33 / v105;
    if (v31 / v106 != 0.0)
    {
      v17 = v31 / v106;
      if (v94 != 0.0)
      {
        if (v93 >= v94)
        {
          v17 = v33 / v105;
        }

        else
        {
          v17 = v31 / v106;
        }
      }
    }

    if (v17 >= 0.0 && v17 <= 0.0)
    {
      v95 = MEMORY[0x277D81150];
      v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSDStyledLayout scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform:withStartingPathSource:]", v93);
      v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledLayout.m");
      v116.width = v106;
      v116.height = v105;
      v99 = NSStringFromCGSize(v116);
      v117.width = v31;
      v117.height = v33;
      v100 = NSStringFromCGSize(v117);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v95, v101, v96, v98, 200, 0, "Unclamping due to sad math. original natural size %@ proposed natural size %@", v99, v100);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v102, v103);
      v17 = 1.0;
    }
  }

LABEL_60:
  return v17;
}

- (CGRect)aliasedAlignmentFrameForScale:(double)scale
{
  objc_msgSend_alignmentFrame(self, a2, v3);

  TSURoundedRectForScale();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)alignmentFrameInRoot
{
  v4 = objc_msgSend_parent(self, a2, v2);

  objc_msgSend_alignmentFrame(self, v5, v6);
  x = v9;
  y = v11;
  width = v13;
  height = v15;
  if (v4)
  {
    v17 = objc_msgSend_parent(self, v7, v8);
    v20 = v17;
    if (v17)
    {
      objc_msgSend_transformInRoot(v17, v18, v19);
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v27 = CGRectApplyAffineTransform(v26, &v25);
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    height = v27.size.height;
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)shadowedNaturalBoundsWithoutOffset
{
  v4 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_size(v4, v5, v6);
  TSURectWithSize();
  x = v7;
  y = v9;
  width = v11;
  height = v13;

  v17 = objc_msgSend_styledInfo(self, v15, v16);
  v20 = objc_msgSend_shadow(v17, v18, v19);

  if (v20 && objc_msgSend_isEnabled(v20, v21, v22))
  {
    objc_msgSend_radius(v20, v23, v24);
    v26 = -v25;
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v32 = CGRectInset(v31, v26, v26);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
  }

  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)reflectionBoundsForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = fmin(rect.size.height * 0.400000006, 120.0);
  MinX = CGRectGetMinX(rect);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MaxY = CGRectGetMaxY(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = CGRectGetWidth(v15);
  v11 = v7 + 1.0;
  v12 = MinX;
  v13 = MaxY;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)fullReflectionBoundsForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MinX = CGRectGetMinX(rect);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MaxY = CGRectGetMaxY(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v9 = CGRectGetWidth(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v10 = CGRectGetHeight(v16) + 1.0;
  v11 = MinX;
  v12 = MaxY;
  v13 = v9;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)fullReflectionFrame
{
  objc_msgSend_i_baseFrame(self, a2, v2);

  MEMORY[0x2821F9670](self, sel_fullReflectionBoundsForRect_, v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)i_baseFrame
{
  objc_msgSend_alignmentFrameInRoot(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v14 = objc_msgSend_parent(self, v12, v13);

  if (v14)
  {
    v17 = objc_msgSend_parent(self, v15, v16);
    v20 = objc_msgSend_geometryInRoot(v17, v18, v19);
    objc_msgSend_frame(v20, v21, v22);

    TSUSubtractPoints();
    v5 = v23;
    v7 = v24;
  }

  v25 = v5;
  v26 = v7;
  v27 = v9;
  v28 = v11;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)reflectionFrame
{
  objc_msgSend_i_baseFrame(self, a2, v2);

  objc_msgSend_reflectionBoundsForRect_(self, v4, v5);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)reflectionFrameForSubRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  objc_msgSend_i_baseFrame(self, a2, v3);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v41 = v13;
  v16 = v15;
  v17 = -v9;
  v18 = -v11;
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v45 = CGRectOffset(v44, v17, v18);
  v38 = v45.origin.y;
  r1 = v45.origin.x;
  v36 = v45.size.height;
  v37 = v45.size.width;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  MinX = CGRectGetMinX(v45);
  v46.origin.x = v10;
  v46.origin.y = v12;
  v46.size.width = v14;
  v46.size.height = v16;
  v19 = v16 + CGRectGetMaxY(v46);
  v47.origin.y = v38;
  v47.origin.x = r1;
  v47.size.height = v36;
  v47.size.width = v37;
  r1a = v19 - CGRectGetMaxY(v47);
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  v20 = CGRectGetWidth(v48);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v21 = CGRectGetHeight(v49) + 1.0;
  objc_msgSend_reflectionBoundsForRect_(self, v22, v23, v10, v12, v41, v16);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = MinX;
  v33 = r1a;
  v34 = v20;
  v35 = v21;

  return CGRectIntersection(*&v32, *&v25);
}

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform
{
  objc_msgSend_alignmentFrame(self, a2, transform);
  v4 = *&transform->c;
  *&v5.a = *&transform->a;
  *&v5.c = v4;
  *&v5.tx = *&transform->tx;
  return CGRectApplyAffineTransform(v6, &v5);
}

- (CGRect)frameForCullingWithBaseFrame:(CGRect)frame additionalTransform:(CGAffineTransform *)transform
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v52.receiver = self;
  v52.super_class = TSDStyledLayout;
  v9 = *&transform->c;
  v51[0] = *&transform->a;
  v51[1] = v9;
  v51[2] = *&transform->tx;
  [(TSDLayout *)&v52 frameForCullingWithBaseFrame:v51 additionalTransform:frame.origin.x, y];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  if (!CGRectIsEmpty(v53))
  {
    v20 = objc_msgSend_layoutController(self, v18, v19);
    v23 = objc_msgSend_canvas(v20, v21, v22);
    if (objc_msgSend_suppressesShadowsAndReflections(v23, v24, v25))
    {
LABEL_10:

      goto LABEL_11;
    }

    v28 = objc_msgSend_suppressesShadowsAndReflections(self, v26, v27);

    if ((v28 & 1) == 0)
    {
      v20 = objc_msgSend_styledInfo(self, v29, v30);
      v33 = objc_msgSend_shadow(v20, v31, v32);
      v23 = v33;
      if (v33 && objc_msgSend_isEnabled(v33, v34, v35))
      {
        objc_msgSend_shadowBoundsForRect_(v23, v34, v35, x, y, width, height);
        v59.origin.x = v36;
        v59.origin.y = v37;
        v59.size.width = v38;
        v59.size.height = v39;
        v54.origin.x = v11;
        v54.origin.y = v13;
        v54.size.width = v15;
        v54.size.height = v17;
        v55 = CGRectUnion(v54, v59);
        v11 = v55.origin.x;
        v13 = v55.origin.y;
        v15 = v55.size.width;
        v17 = v55.size.height;
      }

      v42 = objc_msgSend_reflection(v20, v34, v35);
      if (v42)
      {
        objc_msgSend_reflectionBoundsForRect_(self, v40, v41, x, y, width, height);
        v60.origin.x = v43;
        v60.origin.y = v44;
        v60.size.width = v45;
        v60.size.height = v46;
        v56.origin.x = v11;
        v56.origin.y = v13;
        v56.size.width = v15;
        v56.size.height = v17;
        v57 = CGRectUnion(v56, v60);
        v11 = v57.origin.x;
        v13 = v57.origin.y;
        v15 = v57.size.width;
        v17 = v57.size.height;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  v47 = v11;
  v48 = v13;
  v49 = v15;
  v50 = v17;
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

- (double)opacity
{
  if (self->mIsUpdatingOpacity)
  {
    return self->mDynamicOpacity;
  }

  v4 = objc_msgSend_styledInfo(self, a2, v2);
  objc_msgSend_opacity(v4, v5, v6);
  v3 = v7;

  return v3;
}

@end