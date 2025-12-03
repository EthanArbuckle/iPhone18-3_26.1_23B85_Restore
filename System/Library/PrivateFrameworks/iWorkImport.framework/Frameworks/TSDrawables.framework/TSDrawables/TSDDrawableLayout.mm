@interface TSDDrawableLayout
- (BOOL)isHTMLWrap;
- (CGRect)boundsInfluencingExteriorWrap;
- (id)i_computeWrapPath;
- (id)i_wrapPath;
- (id)i_wrapPathIncludingTitleAndCaption;
- (id)p_exteriorTextWrapPath;
- (id)pathForClippingConnectionLines;
- (id)visibleGeometries;
- (id)wrapSegments;
- (int)wrapDirection;
- (int)wrapFitType;
- (int)wrapType;
- (void)dragBy:(CGPoint)by;
- (void)i_invalidateWrap;
- (void)inRootGeometryChangedBy:(CGAffineTransform *)by;
- (void)invalidate;
- (void)invalidateExteriorWrap;
- (void)invalidateInRootGeometry;
- (void)invalidateParentForWrap;
- (void)p_addVisibleGeometriesFromInfo:(id)info intoArray:(id)array withTransform:(CGAffineTransform *)transform;
- (void)parentDidChange;
- (void)processChangedProperty:(int)property;
- (void)setGeometry:(id)geometry;
@end

@implementation TSDDrawableLayout

- (CGRect)boundsInfluencingExteriorWrap
{
  objc_msgSend_frameInRoot(self, a2, v2);
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  v14 = objc_msgSend_info(self, v12, v13);
  v17 = objc_msgSend_exteriorTextWrap(v14, v15, v16);

  if (v17)
  {
    objc_msgSend_margin(v17, v18, v19);
    if (v20 > 0.0)
    {
      v21 = -v20;
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v27 = CGRectInset(v26, v21, v21);
      x = v27.origin.x;
      y = v27.origin.y;
      width = v27.size.width;
      height = v27.size.height;
    }
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
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

- (id)i_wrapPath
{
  mCachedWrapPath = self->mCachedWrapPath;
  if (!mCachedWrapPath)
  {
    v5 = objc_msgSend_i_computeWrapPath(self, a2, v2);
    v6 = self->mCachedWrapPath;
    self->mCachedWrapPath = v5;

    mCachedWrapPath = self->mCachedWrapPath;
  }

  return mCachedWrapPath;
}

- (id)i_wrapPathIncludingTitleAndCaption
{
  v4 = objc_msgSend_i_wrapPath(self, a2, v2);
  v7 = objc_msgSend_copy(v4, v5, v6);

  v10 = objc_msgSend_info(self, v8, v9);
  v15 = objc_msgSend_title(v10, v11, v12);
  if (v15)
  {
    v16 = objc_msgSend_layoutController(self, v13, v14);
    v18 = objc_msgSend_layoutForInfo_childOfLayout_(v16, v17, v15, self);

    if (v18)
    {
      v21 = objc_msgSend_i_wrapPath(v18, v19, v20);
      v24 = objc_msgSend_copy(v21, v22, v23);

      objc_msgSend_transform(v18, v25, v26);
      objc_msgSend_transformUsingAffineTransform_(v24, v27, v60);
      objc_msgSend_appendBezierPath_(v7, v28, v24);
    }

    else
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSDDrawableLayout i_wrapPathIncludingTitleAndCaption]");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 88, 0, "invalid nil value for '%{public}s'", "titleLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    }
  }

  v38 = objc_msgSend_caption(v10, v13, v14);
  if (v38)
  {
    v39 = objc_msgSend_layoutController(self, v36, v37);
    v41 = objc_msgSend_layoutForInfo_childOfLayout_(v39, v40, v38, self);

    if (v41)
    {
      v44 = objc_msgSend_i_wrapPath(v41, v42, v43);
      v47 = objc_msgSend_copy(v44, v45, v46);

      objc_msgSend_transform(v41, v48, v49);
      objc_msgSend_transformUsingAffineTransform_(v47, v50, v60);
      objc_msgSend_appendBezierPath_(v7, v51, v47);
    }

    else
    {
      v52 = MEMORY[0x277D81150];
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSDDrawableLayout i_wrapPathIncludingTitleAndCaption]");
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v56, v53, v55, 100, 0, "invalid nil value for '%{public}s'", "captionLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58);
    }
  }

  return v7;
}

- (id)pathForClippingConnectionLines
{
  mCachedPathForClippingConnectionLines = self->mCachedPathForClippingConnectionLines;
  if (!mCachedPathForClippingConnectionLines)
  {
    v5 = MEMORY[0x277D81160];
    v6 = objc_msgSend_i_wrapPath(self, a2, v2);
    v8 = objc_msgSend_exteriorOfBezierPath_(v5, v7, v6);
    v9 = self->mCachedPathForClippingConnectionLines;
    self->mCachedPathForClippingConnectionLines = v8;

    mCachedPathForClippingConnectionLines = self->mCachedPathForClippingConnectionLines;
  }

  return mCachedPathForClippingConnectionLines;
}

- (id)p_exteriorTextWrapPath
{
  mCachedExteriorWrapPath = self->mCachedExteriorWrapPath;
  if (!mCachedExteriorWrapPath)
  {
    v5 = objc_msgSend_i_wrapPath(self, a2, v2);
    v8 = objc_msgSend_info(self, v6, v7);
    v11 = objc_msgSend_exteriorTextWrap(v8, v9, v10);

    if (v11 && (objc_msgSend_margin(v11, v12, v13), v14 > 0.0))
    {
      if (objc_msgSend_elementCount(v5, v12, v13) >= 1001)
      {
        v17 = MEMORY[0x277D81160];
        v18 = objc_msgSend_geometry(self, v15, v16);
        objc_msgSend_size(v18, v19, v20);
        TSURectWithSize();
        v23 = objc_msgSend_bezierPathWithRect_(v17, v21, v22);

        v5 = v23;
      }

      objc_msgSend_margin(v11, v15, v16);
      v25 = objc_msgSend_bezierPathByOffsettingPath_joinStyle_attemptingUsingLivarotFirstWithThresholds_(v5, v24, 1, &unk_28859C728);
    }

    else
    {
      v25 = objc_msgSend_copy(v5, v12, v13);
    }

    v26 = v25;

    objc_msgSend_transformInRoot(self, v27, v28);
    objc_msgSend_transformUsingAffineTransform_(v26, v29, &v32);
    v30 = self->mCachedExteriorWrapPath;
    self->mCachedExteriorWrapPath = v26;

    mCachedExteriorWrapPath = self->mCachedExteriorWrapPath;
  }

  return mCachedExteriorWrapPath;
}

- (id)wrapSegments
{
  mCachedWrapSegments = self->mCachedWrapSegments;
  if (!mCachedWrapSegments)
  {
    v4 = [TSDWrapSegments alloc];
    v7 = objc_msgSend_wrapPath(self, v5, v6);
    v9 = objc_msgSend_initWithPath_(v4, v8, v7);
    v10 = self->mCachedWrapSegments;
    self->mCachedWrapSegments = v9;

    mCachedWrapSegments = self->mCachedWrapSegments;
    if (!mCachedWrapSegments)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSDDrawableLayout wrapSegments]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 159, 0, "invalid nil value for '%{public}s'", "mCachedWrapSegments");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
      mCachedWrapSegments = self->mCachedWrapSegments;
    }
  }

  return mCachedWrapSegments;
}

- (BOOL)isHTMLWrap
{
  v3 = objc_msgSend_info(self, a2, v2);
  v6 = objc_msgSend_exteriorTextWrap(v3, v4, v5);

  if (v6)
  {
    isHTMLWrap = objc_msgSend_isHTMLWrap(v6, v7, v8);
  }

  else
  {
    isHTMLWrap = 0;
  }

  return isHTMLWrap;
}

- (int)wrapType
{
  v3 = objc_msgSend_info(self, a2, v2);
  v6 = objc_msgSend_exteriorTextWrap(v3, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_type(v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int)wrapDirection
{
  v3 = objc_msgSend_info(self, a2, v2);
  v6 = objc_msgSend_exteriorTextWrap(v3, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_direction(v6, v7, v8);
  }

  else
  {
    v9 = 2;
  }

  return v9;
}

- (int)wrapFitType
{
  v3 = objc_msgSend_info(self, a2, v2);
  v6 = objc_msgSend_exteriorTextWrap(v3, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_fitType(v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)invalidate
{
  v5.receiver = self;
  v5.super_class = TSDDrawableLayout;
  [(TSDLayout *)&v5 invalidate];
  objc_msgSend_invalidateParentForWrap(self, v3, v4);
}

- (void)invalidateExteriorWrap
{
  v7.receiver = self;
  v7.super_class = TSDDrawableLayout;
  [(TSDLayout *)&v7 invalidateExteriorWrap];
  mCachedWrapSegments = self->mCachedWrapSegments;
  self->mCachedWrapSegments = 0;

  mCachedWrapPath = self->mCachedWrapPath;
  self->mCachedWrapPath = 0;

  mCachedPathForClippingConnectionLines = self->mCachedPathForClippingConnectionLines;
  self->mCachedPathForClippingConnectionLines = 0;

  mCachedExteriorWrapPath = self->mCachedExteriorWrapPath;
  self->mCachedExteriorWrapPath = 0;
}

- (void)invalidateInRootGeometry
{
  mCachedWrapSegments = self->mCachedWrapSegments;
  self->mCachedWrapSegments = 0;

  mCachedExteriorWrapPath = self->mCachedExteriorWrapPath;
  self->mCachedExteriorWrapPath = 0;
}

- (void)inRootGeometryChangedBy:(CGAffineTransform *)by
{
  mCachedWrapSegments = self->mCachedWrapSegments;
  v6 = *&by->c;
  v10 = *&by->a;
  v11 = v6;
  v12 = *&by->tx;
  objc_msgSend_transformUsingAffineTransform_(mCachedWrapSegments, a2, &v10);
  mCachedExteriorWrapPath = self->mCachedExteriorWrapPath;
  v8 = *&by->c;
  v10 = *&by->a;
  v11 = v8;
  v12 = *&by->tx;
  objc_msgSend_transformUsingAffineTransform_(mCachedExteriorWrapPath, v9, &v10);
}

- (void)dragBy:(CGPoint)by
{
  v6.receiver = self;
  v6.super_class = TSDDrawableLayout;
  [(TSDLayout *)&v6 dragBy:by.x, by.y];
  objc_msgSend_invalidateParentForWrap(self, v4, v5);
}

- (void)setGeometry:(id)geometry
{
  geometryCopy = geometry;
  v7 = objc_msgSend_geometry(self, v5, v6);
  v10 = v7;
  if (!v7)
  {
    if (!self->mCachedWrapSegments)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if ((objc_msgSend_isEqual_(v7, v8, geometryCopy) & 1) != 0 || !self->mCachedWrapSegments)
  {
    goto LABEL_10;
  }

  if (objc_msgSend_differsInMoreThanTranslationFrom_(v10, v11, geometryCopy))
  {
LABEL_8:
    objc_msgSend_invalidateExteriorWrap(self, v8, v9);
    goto LABEL_10;
  }

  if (geometryCopy)
  {
    objc_msgSend_transform(geometryCopy, v8, v9);
  }

  objc_msgSend_transform(v10, v8, v9, *(MEMORY[0x277CBF348] + 8));
  TSUSubtractPoints();
  mCachedWrapSegments = self->mCachedWrapSegments;
  CGAffineTransformMakeTranslation(&v17, v13, v14);
  objc_msgSend_transformUsingAffineTransform_(mCachedWrapSegments, v15, &v17);
LABEL_10:
  v16.receiver = self;
  v16.super_class = TSDDrawableLayout;
  [(TSDLayout *)&v16 setGeometry:geometryCopy];
}

- (void)processChangedProperty:(int)property
{
  v21.receiver = self;
  v21.super_class = TSDDrawableLayout;
  [(TSDLayout *)&v21 processChangedProperty:?];
  if ((property - 545) >= 5)
  {
    if (property == 521)
    {
      objc_msgSend_invalidateExteriorWrap(self, v5, v6);
    }
  }

  else
  {
    v7 = objc_msgSend_info(self, v5, v6);
    v10 = objc_msgSend_owningAttachmentNoRecurse(v7, v8, v9);

    if (v10)
    {
      objc_msgSend_invalidateSize(self, v11, v12);
      v15 = objc_msgSend_info(self, v13, v14);
      v18 = objc_msgSend_owningAttachment(v15, v16, v17);
      objc_msgSend_infoChanged(v18, v19, v20);
    }
  }
}

- (void)parentDidChange
{
  objc_msgSend_invalidateExteriorWrap(self, a2, v2);
  v4.receiver = self;
  v4.super_class = TSDDrawableLayout;
  [(TSDLayout *)&v4 parentDidChange];
}

- (void)p_addVisibleGeometriesFromInfo:(id)info intoArray:(id)array withTransform:(CGAffineTransform *)transform
{
  v41 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  arrayCopy = array;
  v12 = objc_msgSend_layoutController(self, v10, v11);
  v14 = objc_msgSend_layoutForInfo_childOfLayout_(v12, v13, infoCopy, self);

  if (!v14)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSDDrawableLayout p_addVisibleGeometriesFromInfo:intoArray:withTransform:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 288, 0, "invalid nil value for '%{public}s'", "layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v24 = objc_msgSend_visibleGeometries(v14, v15, v16);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v36, v40, 16);
  if (v26)
  {
    v28 = v26;
    v29 = *v37;
    do
    {
      v30 = 0;
      do
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v36 + 1) + 8 * v30);
        v32 = *&transform->c;
        v35[0] = *&transform->a;
        v35[1] = v32;
        v35[2] = *&transform->tx;
        v33 = objc_msgSend_geometryByTransformingBy_(v31, v27, v35);
        objc_msgSend_addObject_(arrayCopy, v34, v33);

        ++v30;
      }

      while (v28 != v30);
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v36, v40, 16);
    }

    while (v28);
  }
}

- (id)visibleGeometries
{
  v37.receiver = self;
  v37.super_class = TSDDrawableLayout;
  visibleGeometries = [(TSDAbstractLayout *)&v37 visibleGeometries];
  v6 = objc_msgSend_mutableCopy(visibleGeometries, v4, v5);

  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v9 = objc_msgSend_geometry(self, v7, v8);
  v12 = v9;
  if (v9)
  {
    objc_msgSend_transform(v9, v10, v11);
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
  }

  v15 = objc_msgSend_info(self, v13, v14);
  v18 = objc_msgSend_title(v15, v16, v17);
  v21 = objc_msgSend_layoutController(self, v19, v20);
  v24 = objc_msgSend_canvas(v21, v22, v23);

  if (v18 && (!v24 || objc_msgSend_shouldShowOnCanvas_(v18, v25, v24)))
  {
    v31 = v34;
    v32 = v35;
    v33 = v36;
    objc_msgSend_p_addVisibleGeometriesFromInfo_intoArray_withTransform_(self, v25, v18, v6, &v31);
  }

  v27 = objc_msgSend_caption(v15, v25, v26);
  v29 = v27;
  if (v27 && (!v24 || objc_msgSend_shouldShowOnCanvas_(v27, v28, v24)))
  {
    v31 = v34;
    v32 = v35;
    v33 = v36;
    objc_msgSend_p_addVisibleGeometriesFromInfo_intoArray_withTransform_(self, v28, v29, v6, &v31);
  }

  return v6;
}

- (void)i_invalidateWrap
{
  v4 = objc_msgSend_info(self, a2, v2);
  v7 = objc_msgSend_exteriorTextWrap(v4, v5, v6);
  v10 = objc_msgSend_type(v7, v8, v9);

  if (v10 != 5)
  {
    v15 = objc_msgSend_parent(self, v11, v12);
    if (v15)
    {
      while (1)
      {
        v20 = &unk_2885A2AF0;
        v16 = TSUProtocolCast();
        if (v16)
        {
          break;
        }

        v17 = objc_msgSend_parent(v15, v13, v14, &unk_2885A2AF0);

        v15 = v17;
        if (!v17)
        {
          goto LABEL_5;
        }
      }

      v21 = v16;
    }

    else
    {
LABEL_5:
      v21 = 0;
    }

    v19 = objc_msgSend_wrapInvalidationParent(self, v13, v14, v20);
    if (!v21 || objc_msgSend_descendentWrappablesContainsWrappable_(v21, v18, self))
    {
      objc_msgSend_wrappableChildInvalidated_(v19, v18, self);
    }
  }
}

- (void)invalidateParentForWrap
{
  if (objc_msgSend_isBeingManipulated(self, a2, v2))
  {

    objc_msgSend_i_invalidateWrap(self, v4, v5);
  }
}

@end