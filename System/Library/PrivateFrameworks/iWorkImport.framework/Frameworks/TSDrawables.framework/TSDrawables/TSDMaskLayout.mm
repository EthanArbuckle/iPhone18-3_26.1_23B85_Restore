@interface TSDMaskLayout
- (CGRect)p_cachedTightPathBounds;
- (CGRect)p_cachedTightPathBoundsNoScale;
- (CGRect)pathBounds;
- (TSDMaskLayout)initWithInfo:(id)a3;
- (id)computeInfoGeometryFromPureLayoutGeometry:(id)a3;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)infoGeometry;
- (id)maskInfo;
- (id)pathSource;
- (void)dealloc;
- (void)invalidate;
- (void)invalidatePath;
- (void)p_calculateCachedPathIfNecessary;
- (void)p_calculateTightPathBoundsIfNecessary;
- (void)p_createDynamicCopies;
- (void)p_destroyDynamicCopies;
- (void)p_setDynamicInfoGeometry:(id)a3;
- (void)setPathScale:(double)a3;
@end

@implementation TSDMaskLayout

- (TSDMaskLayout)initWithInfo:(id)a3
{
  v9.receiver = self;
  v9.super_class = TSDMaskLayout;
  v3 = [(TSDLayout *)&v9 initWithInfo:a3];
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_maskInfo(v3, v4, v5);

    if (v7)
    {
      *&v6->mMaskInvalidFlags |= 3u;
      v6->mPathScale = 1.0;
      v6->mOriginalPathScale = 1.0;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  CGPathRelease(self->mCachedPath);
  CGPathRelease(self->mCachedPathNoScale);
  v3.receiver = self;
  v3.super_class = TSDMaskLayout;
  [(TSDAbstractLayout *)&v3 dealloc];
}

- (id)dependentLayouts
{
  v3 = MEMORY[0x277CBEA60];
  v4 = objc_msgSend_parent(self, a2, v2);
  v6 = objc_msgSend_arrayWithObject_(v3, v5, v4);

  return v6;
}

- (id)computeLayoutGeometry
{
  objc_msgSend_p_cachedTightPathBoundsNoScale(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v10 = objc_msgSend_infoGeometry(self, v8, v9);
  objc_msgSend_position(v10, v11, v12);
  memset(&v31, 0, sizeof(v31));
  objc_msgSend_center(v10, v13, v14);
  if (v10)
  {
    TSUAddPoints();
    objc_msgSend_transformBasedOnPoint_centeredAtPoint_(v10, v15, v16);
  }

  else
  {
    memset(&v31, 0, sizeof(v31));
  }

  v17 = [TSDLayoutGeometry alloc];
  v30 = v31;
  v19 = objc_msgSend_initWithSize_transform_(v17, v18, &v30, v5, v7);
  objc_msgSend_pathScale(self, v20, v21);
  v23 = v22;
  objc_msgSend_pathScale(self, v24, v25);
  CGAffineTransformMakeScale(&v30, v23, v26);
  v28 = objc_msgSend_geometryByTransformingBy_(v19, v27, &v30);

  return v28;
}

- (id)computeInfoGeometryFromPureLayoutGeometry:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_originalGeometry(self, v5, v6);
  v10 = v7;
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = objc_msgSend_geometry(self, v8, v9);
  }

  v12 = v11;

  v17 = objc_msgSend_originalGeometry(self, v13, v14);
  if (v17)
  {
    mOriginalPathScale = self->mOriginalPathScale;
  }

  else
  {
    objc_msgSend_pathScale(self, v15, v16);
    mOriginalPathScale = v19;
  }

  CGAffineTransformMakeScale(&v39, 1.0 / mOriginalPathScale, 1.0 / mOriginalPathScale);
  v21 = objc_msgSend_geometryByTransformingBy_(v12, v20, &v39);
  memset(&v39, 0, sizeof(v39));
  v24 = objc_msgSend_info(self, v22, v23);
  v27 = objc_msgSend_geometry(v24, v25, v26);
  v30 = v27;
  if (v27)
  {
    objc_msgSend_fullTransform(v27, v28, v29);
    if (v21)
    {
LABEL_9:
      objc_msgSend_fullTransform(v21, v28, v29);
      goto LABEL_12;
    }
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
    if (v21)
    {
      goto LABEL_9;
    }
  }

  memset(&v36, 0, sizeof(v36));
LABEL_12:
  CGAffineTransformInvert(&t2, &v36);
  CGAffineTransformConcat(&v39, &t1, &t2);

  memset(&t1, 0, sizeof(t1));
  if (v4)
  {
    objc_msgSend_fullTransform(v4, v31, v32);
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v36 = v39;
  CGAffineTransformConcat(&t1, &v36, &t2);
  t2 = t1;
  v34 = objc_msgSend_geometryFromFullTransform_(TSDInfoGeometry, v33, &t2);

  return v34;
}

- (void)invalidate
{
  v9.receiver = self;
  v9.super_class = TSDMaskLayout;
  [(TSDLayout *)&v9 invalidate];
  objc_opt_class();
  v5 = objc_msgSend_parent(self, v3, v4);
  v6 = TSUDynamicCast();
  objc_msgSend_invalidateFrame(v6, v7, v8);
}

- (void)invalidatePath
{
  *&self->mMaskInvalidFlags |= 1u;
  CGPathRelease(self->mCachedPath);
  self->mCachedPath = 0;
  CGPathRelease(self->mCachedPathNoScale);
  self->mCachedPathNoScale = 0;
  *&self->mMaskInvalidFlags |= 2u;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  self->mCachedTightPathBounds.origin = *MEMORY[0x277CBF3A0];
  self->mCachedTightPathBounds.size = v4;
  self->mCachedTightPathBoundsNoScale.origin = v3;
  self->mCachedTightPathBoundsNoScale.size = v4;
  objc_opt_class();
  v10 = objc_msgSend_parent(self, v5, v6);
  v7 = TSUDynamicCast();
  objc_msgSend_invalidateExteriorWrap(v7, v8, v9);
}

- (id)maskInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (CGRect)pathBounds
{
  (MEMORY[0x2821F9670])(self, sel_p_cachedTightPathBounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)pathSource
{
  mDynamicPathSource = self->mDynamicPathSource;
  if (mDynamicPathSource)
  {
    v4 = mDynamicPathSource;
  }

  else
  {
    v5 = objc_msgSend_maskInfo(self, a2, v2);
    v4 = objc_msgSend_pathSource(v5, v6, v7);
  }

  return v4;
}

- (void)setPathScale:(double)a3
{
  if (self->mPathScale != a3)
  {
    self->mPathScale = a3;
    objc_msgSend_invalidatePath(self, a2, v3);
    v9 = objc_msgSend_geometry(self, v6, v7);
    objc_msgSend_setGeometry_(self, v8, v9);
  }
}

- (id)infoGeometry
{
  mDynamicInfoGeometry = self->mDynamicInfoGeometry;
  if (mDynamicInfoGeometry)
  {
    v4 = mDynamicInfoGeometry;
  }

  else
  {
    v5 = objc_msgSend_info(self, a2, v2);
    v4 = objc_msgSend_geometry(v5, v6, v7);
  }

  return v4;
}

- (void)p_calculateCachedPathIfNecessary
{
  if (*&self->mMaskInvalidFlags)
  {
    objc_msgSend_pathScale(self, a2, v2, 0, 0, 0, 0, 0, 0);
    v5 = v4;
    objc_msgSend_pathScale(self, v6, v7);
    CGAffineTransformMakeScale(&v19, v5, v8);
    v11 = objc_msgSend_pathSource(self, v9, v10);
    v14 = objc_msgSend_bezierPath(v11, v12, v13);
    v15 = v14;
    v18 = objc_msgSend_CGPath(v15, v16, v17);
    self->mCachedPathNoScale = CGPathCreateMutableCopy(v18);

    self->mCachedPath = CGPathCreateCopyByTransformingPathSafe();
    *&self->mMaskInvalidFlags &= ~1u;
  }
}

- (void)p_calculateTightPathBoundsIfNecessary
{
  if ((*&self->mMaskInvalidFlags & 2) != 0)
  {
    p_mCachedTightPathBounds = &self->mCachedTightPathBounds;
    v5 = objc_msgSend_p_cachedPath(self, a2, v2);
    *p_mCachedTightPathBounds = CGPathGetPathBoundingBox(v5);
    v8 = objc_msgSend_p_cachedPathNoScale(self, v6, v7);
    self->mCachedTightPathBoundsNoScale = CGPathGetPathBoundingBox(v8);
    *&self->mMaskInvalidFlags &= ~2u;
  }
}

- (CGRect)p_cachedTightPathBounds
{
  objc_msgSend_p_calculateTightPathBoundsIfNecessary(self, a2, v2);
  x = self->mCachedTightPathBounds.origin.x;
  y = self->mCachedTightPathBounds.origin.y;
  width = self->mCachedTightPathBounds.size.width;
  height = self->mCachedTightPathBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)p_cachedTightPathBoundsNoScale
{
  objc_msgSend_p_calculateTightPathBoundsIfNecessary(self, a2, v2);
  x = self->mCachedTightPathBoundsNoScale.origin.x;
  y = self->mCachedTightPathBoundsNoScale.origin.y;
  width = self->mCachedTightPathBoundsNoScale.size.width;
  height = self->mCachedTightPathBoundsNoScale.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)p_createDynamicCopies
{
  if (self->mDynamicInfoGeometry)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMaskLayout p_createDynamicCopies]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMaskLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 447, 0, "expected nil value for '%{public}s'", "mDynamicInfoGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  if (self->mDynamicPathSource)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMaskLayout p_createDynamicCopies]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMaskLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 448, 0, "expected nil value for '%{public}s'", "mDynamicPathSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  objc_msgSend_pathScale(self, a2, v2);
  self->mOriginalPathScale = v18;
  v43 = objc_msgSend_maskInfo(self, v19, v20);
  v23 = objc_msgSend_geometry(self, v21, v22);
  v25 = objc_msgSend_computeInfoGeometryFromPureLayoutGeometry_(self, v24, v23);
  mDynamicInfoGeometry = self->mDynamicInfoGeometry;
  self->mDynamicInfoGeometry = v25;

  objc_msgSend_setPathScale_(self, v27, v28, 1.0);
  objc_msgSend_invalidatePath(self, v29, v30);
  v33 = objc_msgSend_pathSource(v43, v31, v32);
  v36 = objc_msgSend_copy(v33, v34, v35);
  mDynamicPathSource = self->mDynamicPathSource;
  self->mDynamicPathSource = v36;

  v38 = self->mDynamicPathSource;
  objc_msgSend_size(self->mDynamicInfoGeometry, v39, v40);
  objc_msgSend_scaleToNaturalSize_(v38, v41, v42);
}

- (void)p_setDynamicInfoGeometry:(id)a3
{
  objc_storeStrong(&self->mDynamicInfoGeometry, a3);
  v5 = a3;
  v8 = objc_msgSend_maskInfo(self, v6, v7);
  v11 = objc_msgSend_pathSource(v8, v9, v10);
  v14 = objc_msgSend_copy(v11, v12, v13);
  mDynamicPathSource = self->mDynamicPathSource;
  self->mDynamicPathSource = v14;

  v16 = self->mDynamicPathSource;
  objc_msgSend_size(self->mDynamicInfoGeometry, v17, v18);
  objc_msgSend_scaleToNaturalSize_(v16, v19, v20);

  objc_msgSend_invalidateFrame(self, v21, v22);

  objc_msgSend_invalidatePath(self, v23, v24);
}

- (void)p_destroyDynamicCopies
{
  if (!self->mDynamicInfoGeometry)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMaskLayout p_destroyDynamicCopies]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMaskLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 473, 0, "invalid nil value for '%{public}s'", "mDynamicInfoGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  if (!self->mDynamicPathSource)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMaskLayout p_destroyDynamicCopies]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMaskLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 474, 0, "invalid nil value for '%{public}s'", "mDynamicPathSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  mDynamicInfoGeometry = self->mDynamicInfoGeometry;
  self->mDynamicInfoGeometry = 0;

  mDynamicPathSource = self->mDynamicPathSource;
  self->mDynamicPathSource = 0;

  objc_msgSend_invalidateFrame(self, v19, v20);

  objc_msgSend_invalidatePath(self, v21, v22);
}

@end