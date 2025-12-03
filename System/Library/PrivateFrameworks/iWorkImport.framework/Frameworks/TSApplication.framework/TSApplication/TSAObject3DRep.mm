@interface TSAObject3DRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject mixingTypeContext:(id)context;
- (CGAffineTransform)imageDrawingHelperImageTransformInRootForAntialiasingDefeat:(SEL)defeat;
- (CGRect)imageDrawingHelperImageRect:(id)rect;
- (TSAObject3DInfo)object3DInfo;
- (TSAObject3DRep)initWithLayout:(id)layout canvas:(id)canvas;
- (double)opacity;
- (id)imageDrawingHelperAdjustedImageData:(id)data;
- (id)imageDrawingHelperImageData:(id)data;
- (id)imageDrawingHelperThumbnailAdjustedImageData:(id)data;
- (id)imageDrawingHelperThumbnailImageData:(id)data;
- (id)object3DLayout;
- (id)p_validatedImageProvider;
- (id)textureForDescription:(id)description;
- (void)p_drawInContext:(CGContext *)context withOpacity:(BOOL)opacity;
- (void)willBeRemoved;
@end

@implementation TSAObject3DRep

- (TSAObject3DRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v30.receiver = self;
  v30.super_class = TSAObject3DRep;
  v4 = [(TSDRep *)&v30 initWithLayout:layout canvas:canvas];
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_object3DInfo(v4, v5, v6, v7);

    if (v9)
    {
      v13 = objc_msgSend_object3DInfo(v8, v10, v11, v12);
      v17 = objc_msgSend_thumbnailImageData(v13, v14, v15, v16);

      if (v17)
      {
        v21 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], v18, v19, v20);
        objc_msgSend_addInterestInProviderForData_(v21, v22, v17, v23);
      }

      v24 = objc_alloc(MEMORY[0x277D802B8]);
      v27 = objc_msgSend_initWithRep_(v24, v25, v8, v26);
      drawingHelper = v8->_drawingHelper;
      v8->_drawingHelper = v27;
    }

    else
    {
      v17 = v8;
      v8 = 0;
    }
  }

  return v8;
}

- (void)willBeRemoved
{
  v6.receiver = self;
  v6.super_class = TSAObject3DRep;
  [(TSDRep *)&v6 willBeRemoved];
  objc_msgSend_teardown(self->_drawingHelper, v3, v4, v5);
}

- (TSAObject3DInfo)object3DInfo
{
  objc_opt_class();
  v6 = objc_msgSend_info(self, v3, v4, v5);
  v7 = TSUCheckedDynamicCast();

  return v7;
}

- (id)object3DLayout
{
  objc_opt_class();
  v6 = objc_msgSend_layout(self, v3, v4, v5);
  v7 = TSUCheckedDynamicCast();

  return v7;
}

- (double)opacity
{
  objc_opt_class();
  v6 = objc_msgSend_layout(self, v3, v4, v5);
  v7 = TSUDynamicCast();

  objc_msgSend_opacity(v7, v8, v9, v10);
  v12 = v11;

  return v12;
}

- (void)p_drawInContext:(CGContext *)context withOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  v7 = objc_msgSend_object3DInfo(self, a2, context, opacity);
  v43 = objc_msgSend_thumbnailImageData(v7, v8, v9, v10);

  v14 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], v11, v12, v13);
  v16 = objc_msgSend_temporaryProviderForData_shouldValidate_(v14, v15, v43, 1);

  CGContextSaveGState(context);
  if (opacityCopy && (objc_msgSend_isError(v16, v17, v18, v19) & 1) == 0)
  {
    objc_msgSend_opacity(self, v17, v18, v19);
    if (v20 < 1.0)
    {
      objc_msgSend_opacity(self, v17, v18, v19);
      CGContextSetAlpha(context, v21);
    }
  }

  if (objc_msgSend_isError(v16, v17, v18, v19))
  {
    v25 = objc_msgSend_object3DInfo(self, v22, v23, v24);
    objc_msgSend_visibleBounds(v25, v26, v27, v28);
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
  }

  else
  {
    objc_msgSend_naturalBounds(self, v22, v23, v24);
    v30 = v39;
    v32 = v40;
    v34 = v41;
    v36 = v42;
  }

  objc_msgSend_drawImageInContext_rect_(v16, v37, context, v38, v30, v32, v34, v36);
  CGContextRestoreGState(context);
}

- (id)textureForDescription:(id)description
{
  descriptionCopy = description;
  isMagicMove = objc_msgSend_isMagicMove(descriptionCopy, v5, v6, v7);
  memset(&v104, 0, sizeof(v104));
  v12 = objc_msgSend_layout(self, v9, v10, v11);
  v16 = v12;
  if (v12)
  {
    objc_msgSend_transformInRoot(v12, v13, v14, v15);
  }

  else
  {
    memset(&v104, 0, sizeof(v104));
  }

  if (isMagicMove)
  {
    v102 = v104;
    objc_msgSend_unRotatedTransform_(self, v17, &v102, v19);
    v104 = v103;
  }

  v20 = objc_msgSend_canvas(self, v17, v18, v19);
  objc_msgSend_viewScale(v20, v21, v22, v23);
  v25 = v24;

  objc_msgSend_clipRect(self, v26, v27, v28);
  x = v106.origin.x;
  y = v106.origin.y;
  width = v106.size.width;
  height = v106.size.height;
  v103 = v104;
  CGRectApplyAffineTransform(v106, &v103);
  TSUMultiplyRectScalar();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  objc_msgSend_naturalBounds(self, v40, v41, v42);
  v103 = v104;
  CGRectApplyAffineTransform(v107, &v103);
  TSUMultiplyRectScalar();
  v108.origin.x = v33;
  v108.origin.y = v35;
  v108.size.width = v37;
  v108.size.height = v39;
  v109 = CGRectIntegral(v108);
  v43 = v109.origin.x;
  v44 = v109.origin.y;
  v45 = v109.size.width;
  v46 = v109.size.height;
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = sub_2760BDE44;
  v92[3] = &unk_27A6B0498;
  v95 = v109;
  v47 = descriptionCopy;
  v96 = x;
  v97 = y;
  v98 = width;
  v99 = height;
  v100 = v25;
  v101 = v104;
  v93 = v47;
  selfCopy = self;
  v48 = MEMORY[0x277C95D60](v92);
  v49 = objc_alloc_init(MEMORY[0x277D803E0]);
  objc_msgSend_setRep_(v49, v50, self, v51);
  objc_msgSend_setObjectType_(v49, v52, 11, v53);
  v54 = objc_alloc(MEMORY[0x277D803E8]);
  TSUSubtractPoints();
  v59 = objc_msgSend_initWithSize_offset_renderBlock_(v54, v55, v48, v56, v45, v46, v57, v58);
  objc_msgSend_setIsMagicMove_(v49, v60, isMagicMove, v61);
  objc_msgSend_setTextureType_(v59, v62, 5, v63);
  objc_msgSend_setTextureOpacity_(v59, v64, v65, v66, 1.0);
  objc_msgSend_addRenderable_(v49, v67, v59, v68);
  objc_msgSend_opacity(self, v69, v70, v71);
  objc_msgSend_setTextureOpacity_(v49, v72, v73, v74);
  objc_msgSend_centerForRotation(self, v75, v76, v77);
  objc_msgSend_setCenter_(v49, v78, v79, v80);
  objc_msgSend_setTextureAttributes_textureBounds_(self, v81, v49, v82, v43, v44, v45, v46);
  if ((objc_msgSend_shouldNotAddContainedReps(v47, v83, v84, v85) & 1) == 0 && (objc_msgSend_isMagicMove(v47, v86, v87, v88) & 1) == 0)
  {
    objc_msgSend_addChildTexturesToTextureSet_forDescription_passingTest_(self, v89, v49, v47, 0);
  }

  return v49;
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject mixingTypeContext:(id)context
{
  contextCopy = context;
  incomingObjectCopy = incomingObject;
  v12 = objc_msgSend_object3DInfo(object, v9, v10, v11);
  v16 = objc_msgSend_object3DInfo(incomingObjectCopy, v13, v14, v15);

  v18 = objc_msgSend_mixingTypeWithObject_context_(v12, v17, v16, contextCopy);
  v22 = 0.0;
  if (v18 >= 2)
  {
    v22 = 1.0;
    if (v18 != 5)
    {
      v23 = objc_msgSend_playsAnimations(v12, v19, v20, v21);
      if (v23 != objc_msgSend_playsAnimations(v16, v24, v25, v26))
      {
        v22 = 0.8;
      }

      else
      {
        v22 = 0.9;
      }
    }
  }

  return v22;
}

- (id)imageDrawingHelperImageData:(id)data
{
  v4 = objc_msgSend_object3DInfo(self, a2, data, v3);
  v8 = objc_msgSend_thumbnailImageData(v4, v5, v6, v7);

  return v8;
}

- (id)imageDrawingHelperThumbnailImageData:(id)data
{
  v4 = objc_msgSend_object3DInfo(self, a2, data, v3);
  v8 = objc_msgSend_thumbnailImageData(v4, v5, v6, v7);

  return v8;
}

- (CGRect)imageDrawingHelperImageRect:(id)rect
{
  objc_opt_class();
  v7 = objc_msgSend_layout(self, v4, v5, v6);
  v8 = TSUCheckedDynamicCast();

  v12 = objc_msgSend_imageGeometry(v8, v9, v10, v11);
  objc_msgSend_size(v12, v13, v14, v15);
  TSURectWithSize();
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

- (CGAffineTransform)imageDrawingHelperImageTransformInRootForAntialiasingDefeat:(SEL)defeat
{
  objc_opt_class();
  v9 = objc_msgSend_layout(self, v6, v7, v8);
  v19 = TSUCheckedDynamicCast();

  v13 = objc_msgSend_object3DGeometryInRoot(v19, v10, v11, v12);
  v17 = v13;
  if (v13)
  {
    objc_msgSend_transform(v13, v14, v15, v16);
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (id)imageDrawingHelperAdjustedImageData:(id)data
{
  v4 = objc_msgSend_object3DInfo(self, a2, data, v3);
  v8 = objc_msgSend_thumbnailImageData(v4, v5, v6, v7);

  return v8;
}

- (id)imageDrawingHelperThumbnailAdjustedImageData:(id)data
{
  v4 = objc_msgSend_object3DInfo(self, a2, data, v3);
  v8 = objc_msgSend_thumbnailImageData(v4, v5, v6, v7);

  return v8;
}

- (id)p_validatedImageProvider
{
  v5 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], a2, v2, v3);
  v9 = objc_msgSend_imageDataForDrawing(self->_drawingHelper, v6, v7, v8);
  v11 = objc_msgSend_providerForData_shouldValidate_(v5, v10, v9, 1);

  return v11;
}

@end