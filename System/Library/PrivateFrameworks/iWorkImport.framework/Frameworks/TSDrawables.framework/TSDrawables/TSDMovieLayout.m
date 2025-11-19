@interface TSDMovieLayout
- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3;
- (TSDMovieInfo)movieInfo;
- (TSDMovieLayout)initWithInfo:(id)a3;
- (double)scaleForInlineClampingUnrotatedSize:(CGSize)a3 withTransform:(CGAffineTransform *)a4;
- (id)computeLayoutGeometry;
- (id)i_computeWrapPath;
- (id)layoutGeometryFromInfo;
- (void)p_createDynamicCopies;
- (void)p_destroyDynamicCopies;
- (void)processChangedProperty:(int)a3;
@end

@implementation TSDMovieLayout

- (TSDMovieLayout)initWithInfo:(id)a3
{
  v8.receiver = self;
  v8.super_class = TSDMovieLayout;
  v3 = [(TSDMediaLayout *)&v8 initWithInfo:a3];
  v6 = v3;
  if (v3)
  {
    objc_msgSend_invalidateFrame(v3, v4, v5);
  }

  return v6;
}

- (void)processChangedProperty:(int)a3
{
  v7.receiver = self;
  v7.super_class = TSDMovieLayout;
  [(TSDMediaLayout *)&v7 processChangedProperty:?];
  if (a3 == 517)
  {
    objc_msgSend_invalidateExteriorWrap(self, v5, v6);
  }
}

- (id)i_computeWrapPath
{
  v3 = MEMORY[0x277D81160];
  v4 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_size(v4, v5, v6);
  TSURectWithSize();
  v9 = objc_msgSend_bezierPathWithRect_(v3, v7, v8);

  return v9;
}

- (id)layoutGeometryFromInfo
{
  if (self->_dynamicInfoGeometry)
  {
    v3 = [TSDLayoutGeometry alloc];
    v5 = objc_msgSend_initWithInfoGeometry_(v3, v4, self->_dynamicInfoGeometry);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSDMovieLayout;
    v5 = [(TSDLayout *)&v7 layoutGeometryFromInfo];
  }

  return v5;
}

- (TSDMovieInfo)movieInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (id)computeLayoutGeometry
{
  v4 = objc_msgSend_layoutGeometryFromInfo(self, a2, v2);
  if (objc_msgSend_layoutState(self, v5, v6) == 3)
  {
    v7 = [TSDLayoutGeometry alloc];
    v10 = objc_msgSend_originalPureGeometry(self, v8, v9);
    objc_msgSend_size(v10, v11, v12);
    v16 = v15;
    v18 = v17;
    if (v4)
    {
      objc_msgSend_transform(v4, v13, v14);
    }

    else
    {
      memset(&v104, 0, sizeof(v104));
    }

    v19 = objc_msgSend_initWithSize_transform_(v7, v13, &v104, v16, v18);

    v4 = v19;
  }

  objc_opt_class();
  v22 = objc_msgSend_stroke(self, v20, v21);
  v23 = TSUDynamicCast();

  objc_opt_class();
  v26 = objc_msgSend_parent(self, v24, v25);
  v27 = TSUDynamicCast();

  if (v27)
  {
    objc_msgSend_size(v4, v28, v29);
    v33 = v32;
    v35 = v34;
    if (v4)
    {
      objc_msgSend_transform(v4, v30, v31);
    }

    else
    {
      memset(&v104, 0, sizeof(v104));
    }

    objc_msgSend_scaleForInlineClampingUnrotatedSize_withTransform_(self, v30, &v104, v33, v35);
    CGAffineTransformMakeScale(&v104, v36, v36);
    v38 = objc_msgSend_geometryByTransformingBy_(v4, v37, &v104);

    v4 = v38;
  }

  objc_msgSend_setShouldRenderFrameStroke_(self, v28, 0);
  if (v23 && objc_msgSend_shouldRender(v23, v39, v40))
  {
    if (objc_msgSend_isFrame(v23, v41, v42))
    {
      objc_msgSend_size(v4, v43, v44);
      TSURectWithSize();
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      objc_msgSend_coverageRect_(v23, v53, v54);
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v65 = objc_msgSend_mutableCopy(v4, v63, v64);
      objc_msgSend_setSize_(v65, v66, v67, v60, v62);
      if (v65)
      {
        objc_msgSend_transform(v65, v68, v69);
      }

      else
      {
        memset(&v104, 0, sizeof(v104));
      }

      CGAffineTransformTranslate(&v103, &v104, v56, v58);
      v104 = v103;
      objc_msgSend_setTransform_(v65, v88, &v104);
      v86 = -v56;
      v87 = -v58;
      v82 = v46;
      v83 = v48;
      v84 = v50;
      v85 = v52;
    }

    else
    {
      objc_msgSend_renderedWidth(v23, v43, v44);
      v77 = v76 * 0.5;
      v65 = objc_msgSend_geometryByOutsettingBy_(v4, v78, v79, v77, v77);
      objc_msgSend_size(v4, v80, v81);
      TSURectWithSize();
      v86 = v77;
      v87 = v77;
    }

    v105 = CGRectOffset(*&v82, v86, v87);
    objc_msgSend_setBoundsForStandardKnobs_(self, v89, v90, v105.origin.x, v105.origin.y, v105.size.width, v105.size.height);
  }

  else
  {
    v65 = v4;
    objc_msgSend_size(v65, v70, v71);
    TSURectWithSize();
    objc_msgSend_setBoundsForStandardKnobs_(self, v72, v73);
    if (!v23)
    {
      goto LABEL_24;
    }
  }

  if (objc_msgSend_isFrame(v23, v74, v75))
  {
    objc_msgSend_boundsForStandardKnobs(self, v91, v92);
    objc_msgSend_coverageRectWithoutAdornment_(v23, v93, v94);
    shouldRenderForSizeIncludingCoverage = objc_msgSend_shouldRenderForSizeIncludingCoverage_(v23, v95, v96, v97, v98);
    objc_msgSend_setShouldRenderFrameStroke_(self, v100, shouldRenderForSizeIncludingCoverage);
  }

LABEL_24:
  v101 = v65;

  return v65;
}

- (double)scaleForInlineClampingUnrotatedSize:(CGSize)a3 withTransform:(CGAffineTransform *)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [TSDBezierPathSource alloc];
  v11 = objc_msgSend_initWithNaturalSize_(v8, v9, v10, width, height);
  v12 = *&a4->c;
  v17[0] = *&a4->a;
  v17[1] = v12;
  v17[2] = *&a4->tx;
  objc_msgSend_scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform_withStartingPathSource_(self, v13, v17, v11);
  v15 = v14;

  return v15;
}

- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3
{
  v3 = a3;
  memset(&v21, 0, sizeof(v21));
  v5 = objc_msgSend_geometry(self, a2, a3);
  v8 = v5;
  if (v5)
  {
    objc_msgSend_fullTransform(v5, v6, v7);
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  if (v3)
  {
    v11 = objc_msgSend_parent(self, v9, v10);

    if (v11)
    {
      v14 = objc_msgSend_parent(self, v12, v13);
      v17 = v14;
      if (v14)
      {
        objc_msgSend_transformInRoot(v14, v15, v16);
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      v18 = v21;
      CGAffineTransformConcat(&v20, &v18, &t2);
      v21 = v20;
    }
  }

  v20 = v21;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = 1.0;
  v22.size.height = 1.0;
  return CGRectApplyAffineTransform(v22, &v20);
}

- (void)p_createDynamicCopies
{
  if (self->_dynamicInfoGeometry)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMovieLayout p_createDynamicCopies]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMovieLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 214, 0, "expected nil value for '%{public}s'", "_dynamicInfoGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v18 = objc_msgSend_info(self, a2, v2);
  v13 = objc_msgSend_geometry(v18, v11, v12);
  v16 = objc_msgSend_copy(v13, v14, v15);
  dynamicInfoGeometry = self->_dynamicInfoGeometry;
  self->_dynamicInfoGeometry = v16;
}

- (void)p_destroyDynamicCopies
{
  dynamicInfoGeometry = self->_dynamicInfoGeometry;
  if (!dynamicInfoGeometry)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMovieLayout p_destroyDynamicCopies]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMovieLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 219, 0, "invalid nil value for '%{public}s'", "_dynamicInfoGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    dynamicInfoGeometry = self->_dynamicInfoGeometry;
  }

  self->_dynamicInfoGeometry = 0;
}

@end