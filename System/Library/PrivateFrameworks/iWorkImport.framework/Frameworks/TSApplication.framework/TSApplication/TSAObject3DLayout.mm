@interface TSAObject3DLayout
- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space;
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform;
- (CGRect)boundsForStandardKnobs;
- (CGRect)boundsInRoot;
- (CGRect)boundsInfluencingExteriorWrap;
- (CGRect)frameForCaptionPositioning;
- (CGRect)p_visibleFrameFromInfo;
- (CGRect)rectInRootForCalculatingActivityLineEndpoint;
- (CGRect)rectInRootForPresentingAnnotationPopoverForSelectionPath:(id)path;
- (TSAObject3DLayout)initWithInfo:(id)info;
- (TSDLayoutGeometry)object3DGeometryInRoot;
- (__n128)layout3DRotationFromInfo;
- (double)opacity;
- (double)p_normalizeAngleForVisualDisplay:(double)display;
- (double)pitch;
- (double)roll;
- (double)yaw;
- (id)computeInfoGeometryFromPureLayoutGeometry:(id)geometry;
- (id)computeLayoutGeometry;
- (id)i_computeWrapPath;
- (id)layoutGeometryFromInfo;
- (id)object3DInfo;
- (id)p_validatedImageProvider;
- (void)beginDynamicOperation;
- (void)endDynamicOperation;
- (void)endResize;
- (void)processChangedProperty:(int)property;
- (void)willBeAddedToLayoutController:(id)controller;
@end

@implementation TSAObject3DLayout

- (TSAObject3DLayout)initWithInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = TSAObject3DLayout;
  v5 = [(TSAObject3DLayout *)&v8 initWithInfo:infoCopy];
  if (v5)
  {
    objc_opt_class();
    v6 = TSUDynamicCast();

    if (!v6)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)willBeAddedToLayoutController:(id)controller
{
  v3.receiver = self;
  v3.super_class = TSAObject3DLayout;
  [(TSAObject3DLayout *)&v3 willBeAddedToLayoutController:controller];
}

- (void)processChangedProperty:(int)property
{
  v8.receiver = self;
  v8.super_class = TSAObject3DLayout;
  [(TSAObject3DLayout *)&v8 processChangedProperty:?];
  if (property != 521)
  {
    if (property != 529)
    {
      return;
    }

    objc_msgSend_invalidateFrame(self, v5, v6, v7);
  }

  objc_msgSend_invalidateExteriorWrap(self, v5, v6, v7);
}

- (id)object3DInfo
{
  objc_opt_class();
  v6 = objc_msgSend_info(self, v3, v4, v5);
  v7 = TSUDynamicCast();

  return v7;
}

- (id)layoutGeometryFromInfo
{
  if (!self->_dynamicInfoGeometry || (v3 = objc_alloc(MEMORY[0x277D80300]), (layoutGeometryFromInfo = objc_msgSend_initWithInfoGeometry_(v3, v4, self->_dynamicInfoGeometry, v5)) == 0))
  {
    v8.receiver = self;
    v8.super_class = TSAObject3DLayout;
    layoutGeometryFromInfo = [(TSAObject3DLayout *)&v8 layoutGeometryFromInfo];
  }

  return layoutGeometryFromInfo;
}

- (id)computeLayoutGeometry
{
  v5.receiver = self;
  v5.super_class = TSAObject3DLayout;
  computeLayoutGeometry = [(TSAObject3DLayout *)&v5 computeLayoutGeometry];
  objc_storeStrong(&self->_imageGeometry, computeLayoutGeometry);

  return computeLayoutGeometry;
}

- (id)computeInfoGeometryFromPureLayoutGeometry:(id)geometry
{
  geometryCopy = geometry;
  objc_opt_class();
  v8 = objc_msgSend_info(self, v5, v6, v7);
  v9 = TSUDynamicCast();

  objc_msgSend_frame(geometryCopy, v10, v11, v12);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v24 = objc_msgSend_computeInfoGeometryForFittingInFrame_(v9, v21, v22, v23, v14, v16, v18, v20);

  return v24;
}

- (TSDLayoutGeometry)object3DGeometryInRoot
{
  v5 = objc_msgSend_geometry(self, a2, v2, v3);
  v9 = objc_msgSend_mutableCopy(v5, v6, v7, v8);

  v13 = objc_msgSend_parent(self, v10, v11, v12);
  if (v13)
  {
    v17 = v13;
    do
    {
      v18 = objc_msgSend_geometry(v17, v14, v15, v16, v28, v29, v30);
      v22 = v18;
      if (v18)
      {
        objc_msgSend_transform(v18, v19, v20, v21);
      }

      else
      {
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
      }

      objc_msgSend_transformBy_(v9, v19, &v28, v21);

      v26 = objc_msgSend_parent(v17, v23, v24, v25);

      v17 = v26;
    }

    while (v26);
  }

  return v9;
}

- (CGRect)p_visibleFrameFromInfo
{
  objc_opt_class();
  v6 = objc_msgSend_info(self, v3, v4, v5);
  v7 = TSUDynamicCast();

  v11 = objc_msgSend_geometry(self, v8, v9, v10);
  objc_msgSend_frame(v11, v12, v13, v14);
  objc_msgSend_boundingRect(v7, v15, v16, v17);
  TSURectFromNormalizedSubrect();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)beginDynamicOperation
{
  v33.receiver = self;
  v33.super_class = TSAObject3DLayout;
  [(TSAObject3DLayout *)&v33 beginDynamicOperation];
  if (self->_dynamicInfoGeometry)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSAObject3DLayout beginDynamicOperation]", v5);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DLayout.m", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 195, 0, "expected nil value for '%{public}s'", "_dynamicInfoGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v15 = objc_msgSend_info(self, v3, v4, v5);
  v19 = objc_msgSend_geometry(v15, v16, v17, v18);
  v23 = objc_msgSend_copy(v19, v20, v21, v22);
  dynamicInfoGeometry = self->_dynamicInfoGeometry;
  self->_dynamicInfoGeometry = v23;

  v28 = objc_msgSend_object3DInfo(self, v25, v26, v27);
  objc_msgSend_pose3D(v28, v29, v30, v31);
  *self->_dynamic3DRotation = v32;

  self->_firstDynamic3DRotation = 1;
}

- (void)endDynamicOperation
{
  v15.receiver = self;
  v15.super_class = TSAObject3DLayout;
  [(TSAObject3DLayout *)&v15 endDynamicOperation];
  dynamicInfoGeometry = self->_dynamicInfoGeometry;
  if (!dynamicInfoGeometry)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSAObject3DLayout endDynamicOperation]", v4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DLayout.m", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 206, 0, "invalid nil value for '%{public}s'", "_dynamicInfoGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
    dynamicInfoGeometry = self->_dynamicInfoGeometry;
  }

  self->_dynamicInfoGeometry = 0;
}

- (CGRect)rectInRootForPresentingAnnotationPopoverForSelectionPath:(id)path
{
  objc_msgSend_boundsForStandardKnobs(self, a2, path, v3);

  MEMORY[0x2821F9670](self, sel_rectInRoot_, v5, v6);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform
{
  v5 = objc_msgSend_pureGeometry(self, a2, transform, v3);
  objc_msgSend_frame(v5, v6, v7, v8);
  v9 = *&transform->c;
  *&v18.a = *&transform->a;
  *&v18.c = v9;
  *&v18.tx = *&transform->tx;
  v20 = CGRectApplyAffineTransform(v19, &v18);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGAffineTransform)layoutTransformInInfoSpace:(SEL)space
{
  v4 = *&a4->c;
  *&retstr->a = *&a4->a;
  *&retstr->c = v4;
  *&retstr->tx = *&a4->tx;
  return self;
}

- (void)endResize
{
  v5 = objc_msgSend_info(self, a2, v2, v3);
  isInlineWithText = objc_msgSend_isInlineWithText(v5, v6, v7, v8);

  if (isInlineWithText)
  {
    objc_msgSend_invalidateFrame(self, v10, v11, v12);
  }

  v13.receiver = self;
  v13.super_class = TSAObject3DLayout;
  [(TSAObject3DLayout *)&v13 endResize];
}

- (CGRect)boundsForStandardKnobs
{
  v5 = objc_msgSend_geometry(self, a2, v2, v3);
  objc_msgSend_size(v5, v6, v7, v8);
  TSURectWithSize();
  v12 = objc_msgSend_object3DInfo(self, v9, v10, v11);
  objc_msgSend_boundingRect(v12, v13, v14, v15);
  TSURectFromNormalizedSubrect();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (__n128)layout3DRotationFromInfo
{
  if (self[19].n128_u8[0] == 1)
  {
    return self[20];
  }

  else
  {
    v5 = objc_msgSend_object3DInfo(self, a2, a3, a4);
    objc_msgSend_pose3D(v5, v6, v7, v8);
    v10 = v9;

    return v10;
  }
}

- (double)opacity
{
  if (self->_isUpdatingOpacity)
  {
    return self->_dynamicOpacity;
  }

  v5 = objc_msgSend_object3DInfo(self, a2, v2, v3);
  objc_msgSend_opacity(v5, v6, v7, v8);
  v4 = v9;

  return v4;
}

- (double)p_normalizeAngleForVisualDisplay:(double)display
{
  TSUNormalizeAngleInRadians();
  if (fabs(result * 57.2957795 + -360.0) < 0.05 || result * 57.2957795 == 360.0)
  {
    return 0.0;
  }

  return result;
}

- (double)yaw
{
  objc_msgSend_layout3DRotationFromInfo(self, a2, v2, v3);

  MEMORY[0x2821F9670](self, sel_p_normalizeAngleForVisualDisplay_, v5, v6);
  return result;
}

- (double)pitch
{
  objc_msgSend_layout3DRotationFromInfo(self, a2, v2, v3);

  MEMORY[0x2821F9670](self, sel_p_normalizeAngleForVisualDisplay_, v5, v6);
  return result;
}

- (double)roll
{
  objc_msgSend_layout3DRotationFromInfo(self, a2, v2, v3);

  MEMORY[0x2821F9670](self, sel_p_normalizeAngleForVisualDisplay_, v5, v6);
  return result;
}

- (id)i_computeWrapPath
{
  objc_opt_class();
  v6 = objc_msgSend_info(self, v3, v4, v5);
  v7 = TSUDynamicCast();

  v11 = objc_msgSend_p_validatedImageProvider(self, v8, v9, v10);
  if (objc_msgSend_isValid(v11, v12, v13, v14) && (objc_msgSend_isError(v11, v15, v16, v17) & 1) == 0 && (objc_msgSend_tracedPath(v7, v15, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
  {
    v19 = objc_msgSend_tracedPath(v7, v15, v16, v17);
    v23 = objc_msgSend_copy(v19, v20, v21, v22);

    v27 = objc_msgSend_geometry(self, v24, v25, v26);
    objc_msgSend_size(v27, v28, v29, v30);
    v32 = v31;
    objc_msgSend_naturalSize(v11, v33, v34, v35);
    v37 = v32 / v36;

    v41 = objc_msgSend_geometry(self, v38, v39, v40);
    objc_msgSend_size(v41, v42, v43, v44);
    v46 = v45;
    objc_msgSend_naturalSize(v11, v47, v48, v49);
    v51 = v46 / v50;

    CGAffineTransformMakeScale(&v66, v37, v51);
    objc_msgSend_transformUsingAffineTransform_(v23, v52, &v66, v53);
  }

  else
  {
    v54 = MEMORY[0x277D81160];
    v55 = objc_msgSend_geometry(self, v15, v16, v17);
    objc_msgSend_size(v55, v56, v57, v58);
    TSURectWithSize();
    objc_msgSend_boundingRect(v7, v59, v60, v61);
    TSURectFromNormalizedSubrect();
    v23 = objc_msgSend_bezierPathWithRect_(v54, v62, v63, v64);
  }

  return v23;
}

- (CGRect)boundsInfluencingExteriorWrap
{
  objc_msgSend_boundsInRoot(self, a2, v2, v3);
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  v16 = objc_msgSend_info(self, v13, v14, v15);
  v20 = objc_msgSend_exteriorTextWrap(v16, v17, v18, v19);

  if (v20)
  {
    objc_msgSend_margin(v20, v21, v22, v23);
    if (v24 > 0.0)
    {
      v25 = -v24;
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v31 = CGRectInset(v30, v25, v25);
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
    }
  }

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)boundsInRoot
{
  objc_msgSend_p_visibleFrameFromInfo(self, a2, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v16 = objc_msgSend_parent(self, v13, v14, v15);
  v20 = v16;
  if (v16)
  {
    objc_msgSend_transformInRoot(v16, v17, v18, v19);
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
  }

  v30.origin.x = v6;
  v30.origin.y = v8;
  v30.size.width = v10;
  v30.size.height = v12;
  v31 = CGRectApplyAffineTransform(v30, &v29);
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;

  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)frameForCaptionPositioning
{
  objc_msgSend_boundsForStandardKnobs(self, a2, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  objc_msgSend_transform(self, v13, v14, v15);
  v17.origin.x = v6;
  v17.origin.y = v8;
  v17.size.width = v10;
  v17.size.height = v12;
  return CGRectApplyAffineTransform(v17, &v16);
}

- (id)p_validatedImageProvider
{
  objc_opt_class();
  v6 = objc_msgSend_info(self, v3, v4, v5);
  v7 = TSUDynamicCast();

  v11 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], v8, v9, v10);
  v15 = objc_msgSend_thumbnailImageData(v7, v12, v13, v14);
  v17 = objc_msgSend_providerForData_shouldValidate_(v11, v16, v15, 1);

  return v17;
}

- (CGRect)rectInRootForCalculatingActivityLineEndpoint
{
  (MEMORY[0x2821F9670])(self, sel_alignmentFrameInRoot);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end