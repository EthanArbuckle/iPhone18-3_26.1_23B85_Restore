@interface KNLiveVideoLayout
- (BOOL)isVideoMaskPathRectangular;
- (CGPoint)p_normalizedOffset;
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameInRoot;
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform;
- (CGRect)boundsForStandardKnobs;
- (CGRect)p_computeAlignmentFrameInRoot:(BOOL)root;
- (CGRect)p_computeAlignmentFrameWithTransform:(CGAffineTransform *)transform;
- (CGRect)videoBoundsForNaturalSize:(CGSize)size;
- (CGRect)videoMaskBounds;
- (KNLiveVideoInfo)liveVideoInfo;
- (KNLiveVideoLayout)initWithInfo:(id)info;
- (TSDFill)backgroundFill;
- (double)maskCornerRadius;
- (double)scale;
- (double)scaleForInlineClampingUnrotatedSize:(CGSize)size withTransform:(CGAffineTransform *)transform;
- (id)computeLayoutGeometry;
- (id)p_makeRoundedRectangleMaskPathSource;
- (id)pathForClippingConnectionLines;
- (id)stroke;
- (id)videoMaskPathForBounds:(CGRect)bounds;
- (int64_t)backgroundKind;
- (int64_t)effectiveMaskKind;
- (void)p_invalidateAlignmentFrame;
- (void)processChangedProperty:(int)property;
- (void)setGeometry:(id)geometry;
@end

@implementation KNLiveVideoLayout

- (KNLiveVideoLayout)initWithInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = KNLiveVideoLayout;
  return [(KNLiveVideoLayout *)&v4 initWithInfo:info];
}

- (KNLiveVideoInfo)liveVideoInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUCheckedDynamicCast();

  return v6;
}

- (void)processChangedProperty:(int)property
{
  v20.receiver = self;
  v20.super_class = KNLiveVideoLayout;
  [(KNLiveVideoLayout *)&v20 processChangedProperty:?];
  if (property > 4578)
  {
    if (property == 4579)
    {
      objc_msgSend_p_invalidateAlignmentFrame(self, v5, v6);
      return;
    }

    if (property != 4580)
    {
      return;
    }

    objc_msgSend_p_invalidateAlignmentFrame(self, v5, v6);
    goto LABEL_8;
  }

  if (property != 517)
  {
    if (property != 4577)
    {
      return;
    }

LABEL_8:
    objc_msgSend_invalidate(self, v5, v6);
    return;
  }

  objc_msgSend_invalidateFrame(self, v5, v6);
  objc_msgSend_p_invalidateAlignmentFrame(self, v7, v8);
  objc_msgSend_invalidateExteriorWrap(self, v9, v10);
  v13 = objc_msgSend_info(self, v11, v12);
  if ((objc_msgSend_isInlineWithText(v13, v14, v15) & 1) != 0 || objc_msgSend_isAnchoredToText(v13, v16, v17))
  {
    v18 = objc_msgSend_wrapInvalidationParent(self, v16, v17);
    objc_msgSend_wrappableChildInvalidated_(v18, v19, self);
  }
}

- (id)computeLayoutGeometry
{
  v4 = objc_msgSend_layoutGeometryFromInfo(self, a2, v2);
  if (objc_msgSend_layoutState(self, v5, v6) == 3)
  {
    v9 = objc_msgSend_originalPureGeometry(self, v7, v8);
    v10 = objc_alloc(MEMORY[0x277D80300]);
    objc_msgSend_size(v9, v11, v12);
    v16 = v15;
    v18 = v17;
    if (v4)
    {
      objc_msgSend_transform(v4, v13, v14);
    }

    else
    {
      memset(&v98, 0, sizeof(v98));
    }

    v21 = objc_msgSend_initWithSize_transform_(v10, v13, &v98, v16, v18);
  }

  else
  {
    v21 = v4;
  }

  v22 = objc_msgSend_parent(self, v19, v20);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_msgSend_size(v21, v24, v25);
    v29 = v28;
    v31 = v30;
    if (v21)
    {
      objc_msgSend_transform(v21, v26, v27);
    }

    else
    {
      memset(&v98, 0, sizeof(v98));
    }

    objc_msgSend_scaleForInlineClampingUnrotatedSize_withTransform_(self, v26, &v98, v29, v31);
    CGAffineTransformMakeScale(&v98, v35, v35);
    v32 = objc_msgSend_geometryByTransformingBy_(v21, v36, &v98);
  }

  else
  {
    v32 = v21;
  }

  v37 = v32;
  v38 = objc_msgSend_stroke(self, v33, v34);
  v41 = v38;
  if (v38 && objc_msgSend_shouldRender(v38, v39, v40))
  {
    objc_opt_class();
    v42 = TSUDynamicCast();
    if (objc_msgSend_isFrame(v41, v43, v44) && v42)
    {
      objc_msgSend_size(v37, v45, v46);
      TSURectWithSize();
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      objc_msgSend_coverageRect_(v42, v55, v56);
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v67 = objc_msgSend_mutableCopy(v37, v65, v66);
      objc_msgSend_setSize_(v67, v68, v69, v62, v64);
      if (v67)
      {
        objc_msgSend_transform(v67, v70, v71);
      }

      else
      {
        memset(&v98, 0, sizeof(v98));
      }

      CGAffineTransformTranslate(&v97, &v98, v58, v60);
      v98 = v97;
      objc_msgSend_setTransform_(v67, v89, &v98);
      v102.origin.x = v48;
      v102.origin.y = v50;
      v102.size.width = v52;
      v102.size.height = v54;
      v103 = CGRectOffset(v102, -v58, -v60);
      x = v103.origin.x;
      y = v103.origin.y;
      width = v103.size.width;
      height = v103.size.height;
      objc_msgSend_coverageRectWithoutAdornment_(v42, v90, v91);
      shouldRenderForSizeIncludingCoverage = objc_msgSend_shouldRenderForSizeIncludingCoverage_(v42, v92, v93, v94, v95);
    }

    else
    {
      objc_msgSend_renderedWidth(v41, v45, v46);
      v84 = v83 * 0.5;
      v67 = objc_msgSend_geometryByOutsettingBy_(v37, v85, v86, v84, v84);
      objc_msgSend_size(v37, v87, v88);
      TSURectWithSize();
      v101 = CGRectOffset(v100, v84, v84);
      x = v101.origin.x;
      y = v101.origin.y;
      width = v101.size.width;
      height = v101.size.height;
      shouldRenderForSizeIncludingCoverage = 0;
    }
  }

  else
  {
    v67 = v37;
    objc_msgSend_size(v67, v72, v73);
    TSURectWithSize();
    x = v74;
    y = v76;
    width = v78;
    height = v80;
    shouldRenderForSizeIncludingCoverage = 0;
  }

  self->_videoMaskBounds.origin.x = x;
  self->_videoMaskBounds.origin.y = y;
  self->_videoMaskBounds.size.width = width;
  self->_videoMaskBounds.size.height = height;
  self->_shouldRenderFrameStroke = shouldRenderForSizeIncludingCoverage;

  return v67;
}

- (void)setGeometry:(id)geometry
{
  geometryCopy = geometry;
  if (self->_isCachedAlignmentFrameValid)
  {
    v7 = objc_msgSend_geometry(self, v4, v5);
    v10 = v7;
    if (v7 && (objc_msgSend_differsInMoreThanTranslationFrom_(v7, v8, geometryCopy) & 1) == 0)
    {
      if (geometryCopy)
      {
        objc_msgSend_transform(geometryCopy, v8, v9);
      }

      objc_msgSend_transform(v10, v8, v9, *(MEMORY[0x277CBF348] + 8));
      TSUSubtractPoints();
      TSUAddPoints();
      self->_cachedAlignmentFrame.origin.x = v11;
      self->_cachedAlignmentFrame.origin.y = v12;
    }

    else
    {
      objc_msgSend_p_invalidateAlignmentFrame(self, v8, v9);
    }
  }

  v13.receiver = self;
  v13.super_class = KNLiveVideoLayout;
  [(KNLiveVideoLayout *)&v13 setGeometry:geometryCopy];
}

- (CGRect)boundsForStandardKnobs
{
  x = self->_videoMaskBounds.origin.x;
  y = self->_videoMaskBounds.origin.y;
  width = self->_videoMaskBounds.size.width;
  height = self->_videoMaskBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)scaleForInlineClampingUnrotatedSize:(CGSize)size withTransform:(CGAffineTransform *)transform
{
  height = size.height;
  width = size.width;
  v8 = objc_alloc(MEMORY[0x277D801C8]);
  v11 = objc_msgSend_initWithNaturalSize_(v8, v9, v10, width, height);
  v12 = *&transform->c;
  v17[0] = *&transform->a;
  v17[1] = v12;
  v17[2] = *&transform->tx;
  objc_msgSend_scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform_withStartingPathSource_(self, v13, v17, v11);
  v15 = v14;

  return v15;
}

- (CGRect)alignmentFrame
{
  if (self->_isCachedAlignmentFrameValid)
  {
    x = self->_cachedAlignmentFrame.origin.x;
    y = self->_cachedAlignmentFrame.origin.y;
    width = self->_cachedAlignmentFrame.size.width;
    height = self->_cachedAlignmentFrame.size.height;
  }

  else
  {
    objc_msgSend_p_computeAlignmentFrameInRoot_(self, a2, 0);
    self->_cachedAlignmentFrame.origin.x = x;
    self->_cachedAlignmentFrame.origin.y = y;
    self->_cachedAlignmentFrame.size.width = width;
    self->_cachedAlignmentFrame.size.height = height;
    self->_isCachedAlignmentFrameValid = 1;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)p_invalidateAlignmentFrame
{
  v3 = *(MEMORY[0x277CBF398] + 16);
  self->_cachedAlignmentFrame.origin = *MEMORY[0x277CBF398];
  self->_cachedAlignmentFrame.size = v3;
  self->_isCachedAlignmentFrameValid = 0;
  objc_msgSend_invalidateExteriorWrap(self, a2, v2);
}

- (CGRect)alignmentFrameInRoot
{
  v6 = objc_msgSend_parent(self, a2, v2);
  if (!v6 || (objc_msgSend_layoutController(self, v4, v5), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_rootLayout(v7, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v7, v6 == v10))
  {
    objc_msgSend_alignmentFrame(self, v4, v5);
  }

  else
  {
    objc_msgSend_p_computeAlignmentFrameInRoot_(self, v4, 0);
  }

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;

  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform
{
  v5 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v5;
  *&t1.tx = *&transform->tx;
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&t2.a = *MEMORY[0x277CBF2C0];
  *&t2.c = v6;
  *&t2.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v17.receiver = self;
    v17.super_class = KNLiveVideoLayout;
    v9 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v9;
    *&t1.tx = *&transform->tx;
    [(TSDStyledLayout *)&v17 baseFrameForFrameForCullingWithAdditionalTransform:&t1];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
    objc_msgSend_transform(self, v7, v8);
    v14 = *&transform->c;
    *&v16.a = *&transform->a;
    *&v16.c = v14;
    *&v16.tx = *&transform->tx;
    CGAffineTransformConcat(&t1, &t2, &v16);
    t2 = t1;
    objc_msgSend_p_computeAlignmentFrameWithTransform_(self, v15, &t2);
  }

  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)p_computeAlignmentFrameInRoot:(BOOL)root
{
  rootCopy = root;
  memset(&v30, 0, sizeof(v30));
  v5 = objc_msgSend_geometry(self, a2, root);
  v8 = v5;
  if (v5)
  {
    objc_msgSend_transform(v5, v6, v7);
  }

  else
  {
    memset(&v30, 0, sizeof(v30));
  }

  v11 = objc_msgSend_parent(self, v9, v10);
  v14 = v11;
  if (v11 && rootCopy)
  {
    objc_msgSend_transformInRoot(v11, v12, v13);
    v27 = v30;
    CGAffineTransformConcat(&v29, &v27, &t2);
    v30 = v29;
  }

  v29 = v30;
  objc_msgSend_p_computeAlignmentFrameWithTransform_(self, v12, &v29);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)p_computeAlignmentFrameWithTransform:(CGAffineTransform *)transform
{
  objc_msgSend_videoMaskBounds(self, a2, transform);
  v7 = objc_msgSend_videoMaskPathForBounds_(self, v5, v6);
  v10 = objc_msgSend_stroke(self, v8, v9);
  objc_msgSend_boundsForPath_(v10, v11, v7);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *&transform->c;
  *&v46.a = *&transform->a;
  *&v46.c = v20;
  *&v46.tx = *&transform->tx;
  CGAffineTransformTranslate(&v47, &v46, -v12, -v14);
  v21 = *&v47.c;
  *&transform->a = *&v47.a;
  *&transform->c = v21;
  *&transform->tx = *&v47.tx;
  if (objc_msgSend_isFrame(v10, v22, v23))
  {
    v26 = *&transform->c;
    *&v47.a = *&transform->a;
    *&v47.c = v26;
    *&v47.tx = *&transform->tx;
    v27 = v13;
    *&v26 = v15;
    v28 = v17;
    v29 = v19;
    v48 = CGRectApplyAffineTransform(*(&v26 - 8), &v47);
    x = v48.origin.x;
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;
  }

  else
  {
    v34 = *&transform->c;
    *&v46.a = *&transform->a;
    *&v46.c = v34;
    v35 = objc_msgSend_copy(v7, v24, v25);
    *&v47.a = *&v46.a;
    *&v47.c = *&v46.c;
    v47.tx = 0.0;
    v47.ty = 0.0;
    objc_msgSend_transformUsingAffineTransform_(v35, v36, &v47);
    objc_msgSend_boundsForPath_(v10, v37, v35);
    width = v38;
    height = v39;
    TSUAddPoints();
    x = v40;
    y = v41;
  }

  v42 = x;
  v43 = y;
  v44 = width;
  v45 = height;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (CGRect)videoBoundsForNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [KNLiveVideoMaskGeometry alloc];
  objc_msgSend_videoMaskBounds(self, v7, v8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  objc_msgSend_scale(self, v17, v18);
  v20 = v19;
  objc_msgSend_p_normalizedOffset(self, v21, v22);
  v27 = objc_msgSend_initWithMaskBounds_scale_normalizedOffset_(v6, v23, v24, v10, v12, v14, v16, v20, v25, v26);
  objc_msgSend_videoBoundsForNaturalSize_(v27, v28, v29, width, height);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = v31;
  v39 = v33;
  v40 = v35;
  v41 = v37;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (id)pathForClippingConnectionLines
{
  objc_msgSend_videoMaskBounds(self, a2, v2);

  return objc_msgSend_videoMaskPathForBounds_(self, v4, v5);
}

- (id)stroke
{
  v3 = objc_msgSend_liveVideoInfo(self, a2, v2);
  v6 = objc_msgSend_stroke(v3, v4, v5);

  return v6;
}

- (double)scale
{
  v3 = objc_msgSend_liveVideoInfo(self, a2, v2);
  objc_msgSend_scale(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (CGPoint)p_normalizedOffset
{
  v3 = objc_msgSend_liveVideoInfo(self, a2, v2);
  objc_msgSend_normalizedOffset(v3, v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (int64_t)effectiveMaskKind
{
  v3 = objc_msgSend_liveVideoInfo(self, a2, v2);
  v6 = objc_msgSend_effectiveMaskKind(v3, v4, v5);

  return v6;
}

- (double)maskCornerRadius
{
  v3 = objc_msgSend_liveVideoInfo(self, a2, v2);
  objc_msgSend_maskCornerRadius(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (BOOL)isVideoMaskPathRectangular
{
  v4 = objc_msgSend_effectiveMaskKind(self, a2, v2);
  objc_msgSend_maskCornerRadius(self, v5, v6);
  return v7 <= 0.0 && v4 == 0;
}

- (id)videoMaskPathForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9 = objc_msgSend_effectiveMaskKind(self, a2, v3);
  if (v9 == 1)
  {
    TSUFitOrFillSizeInRect();
    v26 = objc_msgSend_bezierPathWithOvalInRect_(MEMORY[0x277D81160], v24, v25);
  }

  else
  {
    if (v9)
    {
      v20 = 0;
      goto LABEL_9;
    }

    objc_msgSend_maskCornerRadius(self, v10, v11);
    if (v14 > 0.0)
    {
      v15 = objc_msgSend_p_makeRoundedRectangleMaskPathSource(self, v12, v13);
      objc_msgSend_scaleToNaturalSize_(v15, v16, v17, width, height);
      v20 = objc_msgSend_bezierPath(v15, v18, v19);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      MinX = CGRectGetMinX(v30);
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      MinY = CGRectGetMinY(v31);
      CGAffineTransformMakeTranslation(&v28, MinX, MinY);
      objc_msgSend_transformUsingAffineTransform_(v20, v23, &v28);

      goto LABEL_9;
    }

    v26 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v12, v13, x, y, width, height);
  }

  v20 = v26;
LABEL_9:

  return v20;
}

- (id)p_makeRoundedRectangleMaskPathSource
{
  v4 = MEMORY[0x277D803A0];
  v5 = objc_msgSend_liveVideoInfo(self, a2, v2);
  objc_msgSend_maskCornerRadius(v5, v6, v7);
  v9 = v8;
  objc_msgSend_videoMaskBounds(self, v10, v11);
  v15 = objc_msgSend_roundedRectangleWithScalar_naturalSize_continuousCurve_(v4, v12, 1, v9, v13, v14);

  return v15;
}

- (int64_t)backgroundKind
{
  v3 = objc_msgSend_liveVideoInfo(self, a2, v2);
  v6 = objc_msgSend_effectiveBackgroundKind(v3, v4, v5);

  return v6;
}

- (TSDFill)backgroundFill
{
  v3 = objc_msgSend_liveVideoInfo(self, a2, v2);
  v6 = objc_msgSend_backgroundFill(v3, v4, v5);

  return v6;
}

- (CGRect)videoMaskBounds
{
  x = self->_videoMaskBounds.origin.x;
  y = self->_videoMaskBounds.origin.y;
  width = self->_videoMaskBounds.size.width;
  height = self->_videoMaskBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end