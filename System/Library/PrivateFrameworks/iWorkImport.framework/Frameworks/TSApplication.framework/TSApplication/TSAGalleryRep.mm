@interface TSAGalleryRep
+ (CGAffineTransform)p_textureLayoutTransformInRootForLayout:(SEL)layout isMagicMove:(id)move;
+ (CGAffineTransform)p_textureRenderTransformRelativeToTextureRect:(SEL)rect forLayout:(CGRect)layout viewScale:(id)scale isMagicMove:(double)move;
+ (CGRect)p_textureRectForLayout:(id)layout viewScale:(double)scale isMagicMove:(BOOL)move;
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject mixingTypeContext:(id)context;
- (BOOL)imageDrawingHelperImageHasAlpha:(id)alpha;
- (BOOL)p_isEmpty;
- (BOOL)p_prefersHDRRendering;
- (BOOL)p_shouldIncludeItemCaptionTextForStage:(unint64_t)stage isIncoming:(BOOL)incoming;
- (CGAffineTransform)imageDrawingHelperImageTransformInRootForAntialiasingDefeat:(SEL)defeat;
- (CGRect)imageDrawingHelperImageRect:(id)rect;
- (CGRect)p_imageContainerRectForContext:(CGContext *)context;
- (TSAGalleryLayout)galleryLayout;
- (TSAGalleryRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)childReps;
- (id)galleryInfo;
- (id)imageDrawingHelperAdjustedImageData:(id)data;
- (id)imageDrawingHelperImageData:(id)data;
- (id)imageDrawingHelperThumbnailAdjustedImageData:(id)data;
- (id)imageDrawingHelperThumbnailImageData:(id)data;
- (id)layoutsForChildReps;
- (id)p_emptyPlaceholderImage;
- (id)p_galleryItemForTextureStage:(unint64_t)stage isIncoming:(BOOL)incoming;
- (id)p_newTextureForStage:(unint64_t)stage isIncoming:(BOOL)incoming includeImage:(BOOL)image includeCaption:(BOOL)caption size:(CGSize)size offset:(CGPoint)offset renderTransform:(CGAffineTransform *)transform;
- (id)textureForDescription:(id)description;
- (void)addChildTexturesToTextureSet:(id)set forDescription:(id)description passingTest:(id)test;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)p_drawImageInContext:(CGContext *)context forLayer:(BOOL)layer;
- (void)p_renderTextureInContext:(CGContext *)context includeImage:(BOOL)image includeCaption:(BOOL)caption renderTransform:(CGAffineTransform *)transform;
- (void)updateChildrenFromLayout;
- (void)updateHitTestingForTextureStage:(unint64_t)stage isAtEndOfBuild:(BOOL)build;
- (void)willBeRemoved;
@end

@implementation TSAGalleryRep

- (TSAGalleryRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v11.receiver = self;
  v11.super_class = TSAGalleryRep;
  v4 = [(TSDRep *)&v11 initWithLayout:layout canvas:canvas];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D802B8]);
    v8 = objc_msgSend_initWithRep_(v5, v6, v4, v7);
    drawingHelper = v4->_drawingHelper;
    v4->_drawingHelper = v8;
  }

  return v4;
}

- (void)dealloc
{
  objc_msgSend_setParentRep_(self->_captionRep, a2, 0, v2);
  v4.receiver = self;
  v4.super_class = TSAGalleryRep;
  [(TSDRep *)&v4 dealloc];
}

- (void)willBeRemoved
{
  objc_msgSend_willBeRemoved(self->_captionRep, a2, v2, v3);
  objc_msgSend_teardown(self->_drawingHelper, v5, v6, v7);
  v8.receiver = self;
  v8.super_class = TSAGalleryRep;
  [(TSDRep *)&v8 willBeRemoved];
}

- (id)galleryInfo
{
  objc_opt_class();
  v6 = objc_msgSend_info(self, v3, v4, v5);
  v7 = TSUCheckedDynamicCast();

  return v7;
}

- (TSAGalleryLayout)galleryLayout
{
  objc_opt_class();
  v6 = objc_msgSend_layout(self, v3, v4, v5);
  v7 = TSUCheckedDynamicCast();

  return v7;
}

- (BOOL)p_isEmpty
{
  v4 = objc_msgSend_galleryLayout(self, a2, v2, v3);
  v8 = objc_msgSend_currentItem(v4, v5, v6, v7);
  v9 = v8 == 0;

  return v9;
}

- (id)childReps
{
  v10.receiver = self;
  v10.super_class = TSAGalleryRep;
  childReps = [(TSDRep *)&v10 childReps];
  v6 = childReps;
  captionRep = self->_captionRep;
  if (captionRep)
  {
    v8 = objc_msgSend_arrayByAddingObject_(childReps, v4, captionRep, v5);

    v6 = v8;
  }

  return v6;
}

- (void)updateChildrenFromLayout
{
  v41.receiver = self;
  v41.super_class = TSAGalleryRep;
  [(TSDRep *)&v41 updateChildrenFromLayout];
  v6 = objc_msgSend_galleryLayout(self, v3, v4, v5);
  v10 = objc_msgSend_currentCaptionLayout(v6, v7, v8, v9);
  v14 = objc_msgSend_canvas(self, v11, v12, v13);
  v18 = v14;
  if (v14)
  {
    shouldShowInstructionalTextForLayout = objc_msgSend_shouldShowInstructionalTextForLayout_(v14, v15, v10, v17);
  }

  else
  {
    shouldShowInstructionalTextForLayout = 1;
  }

  captionRep = self->_captionRep;
  if (!captionRep)
  {
    goto LABEL_9;
  }

  v21 = objc_msgSend_layout(captionRep, v15, v16, v17);
  v25 = v21;
  if (v21 == v10)
  {
    isInstructional = objc_msgSend_isInstructional(v10, v22, v23, v24);

    if (shouldShowInstructionalTextForLayout & 1 | ((isInstructional & 1) == 0))
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  objc_msgSend_willBeRemoved(self->_captionRep, v15, v16, v17);
  objc_msgSend_setParentRep_(self->_captionRep, v27, 0, v28);
  v29 = self->_captionRep;
  self->_captionRep = 0;

LABEL_9:
  if (self->_captionRep)
  {
    v30 = 1;
  }

  else
  {
    v30 = v10 == 0;
  }

  if (!v30 && shouldShowInstructionalTextForLayout & 1 | ((objc_msgSend_isInstructional(v10, v15, v16, v17) & 1) == 0))
  {
    v31 = objc_alloc(objc_msgSend_repClassOverride(v10, v15, v16, v17));
    v35 = objc_msgSend_canvas(self, v32, v33, v34);
    v37 = objc_msgSend_initWithLayout_canvas_(v31, v36, v10, v35);
    v38 = self->_captionRep;
    self->_captionRep = v37;

    objc_msgSend_setParentRep_(self->_captionRep, v39, self, v40);
  }

  objc_msgSend_updateChildrenFromLayout(self->_captionRep, v15, v16, v17);
}

- (void)drawInContext:(CGContext *)context
{
  if (objc_msgSend_p_isEmpty(self, a2, context, v3))
  {
    v9 = objc_msgSend_canvas(self, v6, v7, v8);
    shouldRenderInvisibleContentForNonInteractiveCanvas = objc_msgSend_shouldRenderInvisibleContentForNonInteractiveCanvas(v9, v10, v11, v12);

    if (shouldRenderInvisibleContentForNonInteractiveCanvas)
    {
      CGContextSaveGState(context);
      objc_msgSend_p_imageContainerRectForContext_(self, v14, context, v15);
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v61.b = 0.0;
      v61.c = 0.0;
      v61.a = 1.0;
      *&v61.d = xmmword_276116D00;
      v61.ty = v22;
      CGContextConcatCTM(context, &v61);
      v27 = objc_msgSend_p_emptyPlaceholderBackgroundColor(self, v24, v25, v26);
      v31 = objc_msgSend_CGColor(v27, v28, v29, v30);
      CGContextSetFillColorWithColor(context, v31);

      v63.origin.x = v17;
      v63.origin.y = v19;
      v63.size.width = v21;
      v63.size.height = v23;
      CGContextFillRect(context, v63);
      v35 = objc_msgSend_p_emptyPlaceholderImage(self, v32, v33, v34);
      v39 = objc_msgSend_canvas(self, v36, v37, v38);
      objc_msgSend_viewScale(v39, v40, v41, v42);

      objc_msgSend_size(v35, v43, v44, v45);
      TSURectWithSize();
      TSUMultiplyRectScalar();
      TSUCenterRectOverRect();
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      TSURectWithSize();
      TSUCenterRectOverRect();
      v65.origin.x = v54;
      v65.origin.y = v55;
      v65.size.width = v56;
      v65.size.height = v57;
      v64.origin.x = v47;
      v64.origin.y = v49;
      v64.size.width = v51;
      v64.size.height = v53;
      CGRectIntersection(v64, v65);
      if ((TSUNearlyEqualRects() & 1) == 0)
      {
        TSUFitOrFillSizeInRect();
      }

      TSDCGContextAssociatedScreenScale();
      objc_msgSend_CGImageForContentsScale_(v35, v58, v59, v60);
      TSDCGContextDrawImageRecordingMaxHeadroom();
      CGContextRestoreGState(context);
    }
  }

  else
  {

    MEMORY[0x2821F9670](self, sel_p_drawImageInContext_forLayer_, context, 0);
  }
}

- (CGRect)p_imageContainerRectForContext:(CGContext *)context
{
  v5 = objc_msgSend_galleryLayout(self, a2, context, v3);
  objc_msgSend_imageContainerRect(v5, v6, v7, v8);
  x = v9;
  y = v11;
  width = v13;
  height = v15;
  memset(&v46, 0, sizeof(v46));
  v20 = objc_msgSend_imageGeometryInRoot(v5, v17, v18, v19);
  v24 = v20;
  if (v20)
  {
    objc_msgSend_transform(v20, v21, v22, v23);
  }

  else
  {
    memset(&v46, 0, sizeof(v46));
  }

  v45 = v46;
  if (TSUIsTransformAxisAligned())
  {
    v45 = v46;
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    CGRectApplyAffineTransform(v47, &v45);
    TSDCGContextAssociatedScreenScale();
    v28 = objc_msgSend_canvas(self, v25, v26, v27);
    objc_msgSend_viewScale(v28, v29, v30, v31);

    TSURoundedRectForScale();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v44 = v46;
    CGAffineTransformInvert(&v45, &v44);
    v48.origin.x = v33;
    v48.origin.y = v35;
    v48.size.width = v37;
    v48.size.height = v39;
    v49 = CGRectApplyAffineTransform(v48, &v45);
    x = v49.origin.x;
    y = v49.origin.y;
    width = v49.size.width;
    height = v49.size.height;
  }

  v40 = x;
  v41 = y;
  v42 = width;
  v43 = height;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (void)p_drawImageInContext:(CGContext *)context forLayer:(BOOL)layer
{
  layerCopy = layer;
  CGContextSaveGState(context);
  objc_msgSend_p_imageContainerRectForContext_(self, v7, context, v8);
  CGContextClipToRectSafe();
  objc_msgSend_drawInContext_forLayer_forShadowOrHitTest_(self->_drawingHelper, v9, context, layerCopy, 0);

  CGContextRestoreGState(context);
}

- (BOOL)p_prefersHDRRendering
{
  v4 = objc_msgSend_galleryLayout(self, a2, v2, v3);
  v8 = objc_msgSend_currentItem(v4, v5, v6, v7);

  if (v8)
  {
    v12 = objc_msgSend_imageData(v8, v9, v10, v11);
    v16 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], v13, v14, v15);
    v18 = objc_msgSend_providerForData_shouldValidate_(v16, v17, v12, 1);

    v22 = objc_msgSend_prefersHDRRendering(v18, v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)imageDrawingHelperImageData:(id)data
{
  v4 = objc_msgSend_galleryLayout(self, a2, data, v3);
  v8 = objc_msgSend_currentItem(v4, v5, v6, v7);
  v12 = objc_msgSend_imageData(v8, v9, v10, v11);

  return v12;
}

- (id)imageDrawingHelperThumbnailImageData:(id)data
{
  v4 = objc_msgSend_galleryLayout(self, a2, data, v3);
  v8 = objc_msgSend_currentItem(v4, v5, v6, v7);
  v12 = objc_msgSend_thumbnailImageData(v8, v9, v10, v11);

  return v12;
}

- (CGRect)imageDrawingHelperImageRect:(id)rect
{
  v4 = objc_msgSend_galleryLayout(self, a2, rect, v3);
  objc_msgSend_imageRect(v4, v5, v6, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGAffineTransform)imageDrawingHelperImageTransformInRootForAntialiasingDefeat:(SEL)defeat
{
  v15 = objc_msgSend_galleryLayout(self, defeat, a4, v4);
  v9 = objc_msgSend_imageGeometryInRoot(v15, v6, v7, v8);
  v13 = v9;
  if (v9)
  {
    objc_msgSend_transform(v9, v10, v11, v12);
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (BOOL)imageDrawingHelperImageHasAlpha:(id)alpha
{
  v16 = objc_msgSend_galleryLayout(self, a2, alpha, v3);
  v7 = objc_msgSend_currentItem(v16, v4, v5, v6);
  v11 = objc_msgSend_imageData(v7, v8, v9, v10);

  objc_opt_class();
  v15 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], v12, v13, v14);
  LOBYTE(v16) = 1;
  v18 = objc_msgSend_providerForData_shouldValidate_(v15, v17, v11, 1);
  v19 = TSUDynamicCast();

  if (v19)
  {
    LODWORD(v16) = objc_msgSend_isOpaque(v19, v20, v21, v22) ^ 1;
  }

  return v16;
}

- (id)imageDrawingHelperAdjustedImageData:(id)data
{
  v4 = objc_msgSend_galleryLayout(self, a2, data, v3);
  v8 = objc_msgSend_currentItem(v4, v5, v6, v7);
  v12 = objc_msgSend_adjustedImageData(v8, v9, v10, v11);

  return v12;
}

- (id)imageDrawingHelperThumbnailAdjustedImageData:(id)data
{
  v4 = objc_msgSend_galleryLayout(self, a2, data, v3);
  v8 = objc_msgSend_currentItem(v4, v5, v6, v7);
  v12 = objc_msgSend_thumbnailAdjustedImageData(v8, v9, v10, v11);

  return v12;
}

- (id)layoutsForChildReps
{
  v14.receiver = self;
  v14.super_class = TSAGalleryRep;
  layoutsForChildReps = [(TSDRep *)&v14 layoutsForChildReps];
  if ((objc_msgSend_p_isEmpty(self, v4, v5, v6) & 1) == 0)
  {
    v9 = objc_msgSend_indexesOfObjectsPassingTest_(layoutsForChildReps, v7, &unk_28850F6F0, v8);
    v12 = objc_msgSend_tsu_arrayByRemovingObjectsAtIndexes_(layoutsForChildReps, v10, v9, v11);

    layoutsForChildReps = v12;
  }

  return layoutsForChildReps;
}

- (id)p_emptyPlaceholderImage
{
  v3 = objc_msgSend_tsk_modernImageNamed_(MEMORY[0x277D755B8], a2, @"sf_imagegallery_splashgraphic", v2);
  v6 = objc_msgSend_imageWithUIImage_(MEMORY[0x277D811F8], v4, v3, v5);

  return v6;
}

- (id)textureForDescription:(id)description
{
  descriptionCopy = description;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isMagicMove = objc_msgSend_isMagicMove(descriptionCopy, v6, v7, v8);
  v10 = objc_alloc_init(MEMORY[0x277D803E0]);
  objc_msgSend_setRep_(v10, v11, selfCopy, v12);
  objc_msgSend_setIsMagicMove_(v10, v13, isMagicMove, v14);
  objc_msgSend_setContainsContentBuildTextures_(v10, v15, 1, v16);
  objc_msgSend_centerForRotation(selfCopy, v17, v18, v19);
  objc_msgSend_setCenter_(v10, v20, v21, v22);
  objc_msgSend_setObjectType_(v10, v23, 7, v24);
  v140 = objc_msgSend_galleryLayout(selfCopy, v25, v26, v27);
  v31 = objc_msgSend_canvas(selfCopy, v28, v29, v30);
  objc_msgSend_viewScale(v31, v32, v33, v34);
  v36 = v35;

  v37 = objc_opt_class();
  objc_msgSend_p_textureRectForLayout_viewScale_isMagicMove_(v37, v38, v140, isMagicMove, v36);
  x = v153.origin.x;
  y = v153.origin.y;
  width = v153.size.width;
  height = v153.size.height;
  v154 = CGRectIntegral(v153);
  v137 = v154.size.height;
  v138 = v154.size.width;
  v133 = v154.origin.y;
  v134 = v154.origin.x;
  TSUSubtractPoints();
  v135 = v44;
  v136 = v43;
  v150 = 0u;
  v151 = 0u;
  v149 = 0u;
  v45 = objc_opt_class();
  if (v45)
  {
    objc_msgSend_p_textureRenderTransformRelativeToTextureRect_forLayout_viewScale_isMagicMove_(v45, v46, v140, isMagicMove, x, y, width, height, v36);
  }

  else
  {
    v150 = 0u;
    v151 = 0u;
    v149 = 0u;
  }

  v142 = objc_msgSend_stage(descriptionCopy, v46, v47, v48);
  shouldSeparateText = objc_msgSend_shouldSeparateText(descriptionCopy, v49, v50, v51);
  v53 = descriptionCopy;
  v54 = shouldSeparateText;
  v132 = v53;
  shouldNotAddContainedReps = objc_msgSend_shouldNotAddContainedReps(v53, v55, v56, v57);
  v131 = objc_msgSend_galleryInfo(selfCopy, v59, v60, v61);
  v139 = objc_msgSend_captionMode(v131, v62, v63, v64);
  v141 = objc_msgSend_currentCaptionLayout(v140, v65, v66, v67);
  isEmpty = objc_msgSend_p_isEmpty(selfCopy, v68, v69, v70);
  v74 = isEmpty;
  if (v139)
  {
    v75 = v141 == 0;
  }

  else
  {
    v75 = 0;
  }

  v76 = !v75;
  if (((v76 | isEmpty) & 1) == 0)
  {
    v77 = MEMORY[0x277D81150];
    v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "[TSAGalleryRep textureForDescription:]", v73);
    v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryRep.m", v80);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v82, v78, v81, 3181, 0, "A caption layout must exist when rendering a caption.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85);
  }

  v86 = v54 | isMagicMove;
  if (shouldNotAddContainedReps)
  {
    v87 = 0;
  }

  else
  {
    v87 = (v139 == 2) & ~v74;
  }

  v89 = *MEMORY[0x277CBF3A8];
  v88 = *(MEMORY[0x277CBF3A8] + 8);
  v90 = *MEMORY[0x277CBF348];
  v91 = *(MEMORY[0x277CBF348] + 8);
  v92 = *(MEMORY[0x277CBF2C0] + 16);
  v146 = *MEMORY[0x277CBF2C0];
  v147 = v92;
  v148 = *(MEMORY[0x277CBF2C0] + 32);
  if (v86)
  {
    if (!v141)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v141)
  {
    v93 = v87;
  }

  else
  {
    v93 = 0;
  }

  if (v93)
  {
LABEL_22:
    v130 = v36;
    v94 = objc_opt_class();
    objc_msgSend_p_textureRectForLayout_viewScale_isMagicMove_(v94, v95, v141, isMagicMove, v36);
    v96 = v155.origin.x;
    v97 = v155.origin.y;
    v128 = v155.size.width;
    v129 = v155.size.height;
    v156 = CGRectIntegral(v155);
    v98 = v156.size.width;
    v88 = v156.size.height;
    TSUSubtractPoints();
    TSUSubtractPoints();
    TSUAddPoints();
    v100 = v99;
    v91 = v101;
    v102 = objc_opt_class();
    v89 = v98;
    if (v102)
    {
      objc_msgSend_p_textureRenderTransformRelativeToTextureRect_forLayout_viewScale_isMagicMove_(v102, v72, v141, isMagicMove, v96, v97, v128, v129, v130);
    }

    else
    {
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
    }

    v146 = v143;
    v147 = v144;
    v148 = v145;
    v90 = v100;
  }

LABEL_26:
  v103 = shouldNotAddContainedReps | v74;
  if (isMagicMove)
  {
    goto LABEL_38;
  }

  if (((shouldNotAddContainedReps | v74) & 1) == 0 && v139 == 1)
  {
    LODWORD(isMagicMove) = objc_msgSend_p_shouldIncludeItemCaptionTextForStage_isIncoming_(selfCopy, v72, v142, 1);
  }

  v143 = v149;
  v144 = v150;
  v145 = v151;
  isIncoming_includeImage_includeCaption_size_offset_renderTransform = objc_msgSend_p_newTextureForStage_isIncoming_includeImage_includeCaption_size_offset_renderTransform_(selfCopy, v72, v142, 1, 1, isMagicMove & (v86 ^ 1), &v143, v138, v137, v136, v135);
  v106 = isIncoming_includeImage_includeCaption_size_offset_renderTransform;
  if ((isMagicMove & v86) == 1)
  {
    v143 = v146;
    v144 = v147;
    v145 = v148;
    v107 = objc_msgSend_p_newTextureForStage_isIncoming_includeImage_includeCaption_size_offset_renderTransform_(selfCopy, v105, v142, 1, 0, 1, &v143, v89, v88, v90, v91);
    objc_msgSend_setTextureType_(v107, v108, 6, v109);
    if (!v106)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v107 = 0;
  if (isIncoming_includeImage_includeCaption_size_offset_renderTransform)
  {
LABEL_34:
    objc_msgSend_addRenderable_forStage_(v10, v105, v106, v142);
  }

LABEL_35:
  if (v107)
  {
    objc_msgSend_addRenderable_forStage_(v10, v105, v107, v142);
  }

LABEL_38:
  isIncoming = 0;
  if ((v103 & 1) == 0 && v139 == 1)
  {
    isIncoming = objc_msgSend_p_shouldIncludeItemCaptionTextForStage_isIncoming_(selfCopy, v72, v142, 0);
  }

  v143 = v149;
  v144 = v150;
  v145 = v151;
  v111 = objc_msgSend_p_newTextureForStage_isIncoming_includeImage_includeCaption_size_offset_renderTransform_(selfCopy, v72, v142, 0, 1, isIncoming & (v86 ^ 1u), &v143, v138, v137, v136, v135);
  v114 = v111;
  if ((isIncoming & v86) != 1)
  {
    v116 = 0;
    v115 = v132;
    if (!v111)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v143 = v146;
  v144 = v147;
  v145 = v148;
  v115 = v132;
  v116 = objc_msgSend_p_newTextureForStage_isIncoming_includeImage_includeCaption_size_offset_renderTransform_(selfCopy, v112, v142, 0, 0, 1, &v143, v89, v88, v90, v91);
  objc_msgSend_setTextureType_(v116, v117, 6, v118);
  if (v114)
  {
LABEL_45:
    objc_msgSend_addRenderable_forStage_(v10, v112, v114, v142);
  }

LABEL_46:
  if (v116)
  {
    objc_msgSend_addRenderable_forStage_(v10, v112, v116, v142);
  }

  if (v87 && objc_msgSend_p_shouldIncludeItemCaptionTextForStage_isIncoming_(selfCopy, v112, 0, 0))
  {
    v143 = v146;
    v144 = v147;
    v145 = v148;
    v119 = objc_msgSend_p_newTextureForStage_isIncoming_includeImage_includeCaption_size_offset_renderTransform_(selfCopy, v112, 0, 0, 0, 1, &v143, v89, v88, v90, v91);
    objc_msgSend_setTextureType_(v119, v120, 6, v121);
    if (v119)
    {
      objc_msgSend_addRenderable_forStage_(v10, v122, v119, -1);
    }
  }

  objc_msgSend_setTextureAttributes_textureBounds_(selfCopy, v112, v10, v113, v134, v133, v138, v137);
  if ((objc_msgSend_shouldNotAddContainedReps(v115, v123, v124, v125) & 1) == 0)
  {
    objc_msgSend_addChildTexturesToTextureSet_forDescription_passingTest_(selfCopy, v126, v10, v115, 0);
  }

  objc_sync_exit(selfCopy);

  return v10;
}

- (void)addChildTexturesToTextureSet:(id)set forDescription:(id)description passingTest:(id)test
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2760AB758;
  v6[3] = &unk_27A6B0148;
  v6[4] = self;
  v5.receiver = self;
  v5.super_class = TSAGalleryRep;
  [(TSDRep *)&v5 addChildTexturesToTextureSet:set forDescription:description passingTest:v6];
}

- (BOOL)p_shouldIncludeItemCaptionTextForStage:(unint64_t)stage isIncoming:(BOOL)incoming
{
  incomingCopy = incoming;
  v7 = objc_msgSend_galleryInfo(self, a2, stage, incoming);
  v11 = objc_msgSend_captionMode(v7, v8, v9, v10);

  hasUserGeneratedVisibleText = v11 != 0;
  v16 = objc_msgSend_canvas(self, v13, v14, v15);
  v20 = objc_msgSend_layout(self, v17, v18, v19);
  shouldShowInstructionalTextForLayout = objc_msgSend_shouldShowInstructionalTextForLayout_(v16, v21, v20, v22);

  if ((shouldShowInstructionalTextForLayout & 1) == 0)
  {
    if (v11 == 2)
    {
      v27 = objc_msgSend_galleryInfo(self, v24, v25, v26);
      v31 = v27;
      goto LABEL_7;
    }

    if (v11 == 1)
    {
      v27 = objc_msgSend_p_galleryItemForTextureStage_isIncoming_(self, v24, stage, incomingCopy);
      v31 = v27;
      if (!v27)
      {
        hasUserGeneratedVisibleText = 0;
        goto LABEL_8;
      }

LABEL_7:
      v32 = objc_msgSend_captionStorage(v27, v28, v29, v30);
      hasUserGeneratedVisibleText = objc_msgSend_hasUserGeneratedVisibleText(v32, v33, v34, v35);

LABEL_8:
    }
  }

  return hasUserGeneratedVisibleText;
}

+ (CGAffineTransform)p_textureLayoutTransformInRootForLayout:(SEL)layout isMagicMove:(id)move
{
  v5 = a5;
  moveCopy = move;
  v11 = moveCopy;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  if (moveCopy)
  {
    objc_msgSend_transformInRoot(moveCopy, v8, v9, v10);
  }

  if (v5)
  {
    v12 = *&retstr->c;
    *&v32.a = *&retstr->a;
    *&v32.c = v12;
    *&v32.tx = *&retstr->tx;
    TSUTransformAngleInDegrees();
    v14 = v13;
    objc_msgSend_centerForRotation(v11, v15, v16, v17);
    v19 = v18;
    v21 = v20;
    v22 = *(MEMORY[0x277CBF2C0] + 16);
    *&v32.a = *MEMORY[0x277CBF2C0];
    *&v32.c = v22;
    *&v32.tx = *(MEMORY[0x277CBF2C0] + 32);
    *&v31.a = *&v32.a;
    *&v31.c = v22;
    *&v31.tx = *&v32.tx;
    CGAffineTransformTranslate(&v32, &v31, v18, v21);
    t1 = v32;
    CGAffineTransformRotate(&v31, &t1, v14 * -3.14159265 / 180.0);
    v32 = v31;
    t1 = v31;
    CGAffineTransformTranslate(&v31, &t1, -v19, -v21);
    v32 = v31;
    v23 = *&retstr->c;
    *&v31.a = *&retstr->a;
    *&v31.c = v23;
    *&v31.tx = *&retstr->tx;
    if (TSUIsTransformFlipped())
    {
      v24 = *&retstr->c;
      *&t1.a = *&retstr->a;
      *&t1.c = v24;
      *&t1.tx = *&retstr->tx;
      *&v29.a = *&v32.a;
      *&v29.c = *&v32.c;
      v25 = *&v32.tx;
    }

    else
    {
      t1 = v32;
      v26 = *&retstr->c;
      *&v29.a = *&retstr->a;
      *&v29.c = v26;
      v25 = *&retstr->tx;
    }

    *&v29.tx = v25;
    CGAffineTransformConcat(&v31, &t1, &v29);
    v27 = *&v31.c;
    *&retstr->a = *&v31.a;
    *&retstr->c = v27;
    *&retstr->tx = *&v31.tx;
  }

  return result;
}

+ (CGRect)p_textureRectForLayout:(id)layout viewScale:(double)scale isMagicMove:(BOOL)move
{
  moveCopy = move;
  layoutCopy = layout;
  v11 = objc_msgSend_geometry(layoutCopy, v8, v9, v10);
  objc_msgSend_size(v11, v12, v13, v14);
  TSURectWithSize();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  memset(&v28[1], 0, sizeof(CGAffineTransform));
  objc_msgSend_p_textureLayoutTransformInRootForLayout_isMagicMove_(self, v23, layoutCopy, moveCopy);

  v28[0] = v28[1];
  v29.origin.x = v16;
  v29.origin.y = v18;
  v29.size.width = v20;
  v29.size.height = v22;
  CGRectApplyAffineTransform(v29, v28);
  TSUMultiplyRectScalar();
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

+ (CGAffineTransform)p_textureRenderTransformRelativeToTextureRect:(SEL)rect forLayout:(CGRect)layout viewScale:(id)scale isMagicMove:(double)move
{
  v7 = a7;
  height = layout.size.height;
  width = layout.size.width;
  y = layout.origin.y;
  x = layout.origin.x;
  scaleCopy = scale;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v27 = CGRectIntegral(v26);
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  CGAffineTransformMakeTranslation(retstr, -v27.origin.x, -v27.origin.y);
  v16 = *&retstr->c;
  *&v24.a = *&retstr->a;
  *&v24.c = v16;
  *&v24.tx = *&retstr->tx;
  CGAffineTransformScale(&v25, &v24, move, move);
  v17 = *&v25.c;
  *&retstr->a = *&v25.a;
  *&retstr->c = v17;
  *&retstr->tx = *&v25.tx;
  memset(&v25, 0, sizeof(v25));
  objc_msgSend_p_textureLayoutTransformInRootForLayout_isMagicMove_(a2, v18, scaleCopy, v7);

  t1 = v25;
  v19 = *&retstr->c;
  *&v22.a = *&retstr->a;
  *&v22.c = v19;
  *&v22.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&v24, &t1, &v22);
  v21 = *&v24.c;
  *&retstr->a = *&v24.a;
  *&retstr->c = v21;
  *&retstr->tx = *&v24.tx;
  return result;
}

- (id)p_galleryItemForTextureStage:(unint64_t)stage isIncoming:(BOOL)incoming
{
  incomingCopy = incoming;
  v6 = objc_msgSend_galleryInfo(self, a2, stage, incoming);
  v10 = objc_msgSend_items(v6, v7, v8, v9);

  v14 = objc_msgSend_count(v10, v11, v12, v13);
  v18 = v14;
  stageCopy = v14 - 1;
  if (v14 == 1)
  {
    if (stage >= 2)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSAGalleryRep p_galleryItemForTextureStage:isIncoming:]", v17);
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryRep.m", v32);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 3341, 0, "The texture stage %tu should be 0 or 1 for item count %tu.", stage, 1);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
    }

    stageCopy = 0;
    if (incomingCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!v14)
  {
    if (stage >= 2)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSAGalleryRep p_galleryItemForTextureStage:isIncoming:]", v17);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryRep.m", v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 3336, 0, "The texture stage %tu must be 0 or 1 if the item count is 0.", stage);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
    }

    goto LABEL_17;
  }

  if (stage + 1 >= v14)
  {
    if (stage + 1 != v14)
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSAGalleryRep p_galleryItemForTextureStage:isIncoming:]", v17);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryRep.m", v41);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 3361, 0, "The texture stage %tu should be less than the item count %tu.", stage, v18);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
    }

    if (incomingCopy)
    {
      goto LABEL_17;
    }
  }

  else if (incomingCopy)
  {
    stageCopy = stage + 1;
  }

  else
  {
    stageCopy = stage;
  }

  if (stageCopy != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_18:
    if (stageCopy >= v18)
    {
      objc_msgSend_lastObject(v10, v15, v16, v17);
    }

    else
    {
      objc_msgSend_objectAtIndexedSubscript_(v10, v15, stageCopy, v17);
    }
    v47 = ;
    goto LABEL_22;
  }

LABEL_17:
  v47 = 0;
LABEL_22:

  return v47;
}

- (id)p_newTextureForStage:(unint64_t)stage isIncoming:(BOOL)incoming includeImage:(BOOL)image includeCaption:(BOOL)caption size:(CGSize)size offset:(CGPoint)offset renderTransform:(CGAffineTransform *)transform
{
  y = offset.y;
  x = offset.x;
  height = size.height;
  width = size.width;
  incomingCopy = incoming;
  v21 = objc_msgSend_p_galleryItemForTextureStage_isIncoming_(self, a2, stage, incoming);
  if (v21)
  {
    v22 = objc_msgSend_canvas(self, v18, v19, v20);
    objc_msgSend_unscaledSize(v22, v23, v24, v25);
    v27 = v26;
    v29 = v28;
    objc_msgSend_viewScale(v22, v30, v31, v32);
    v34 = v33;
    v38 = objc_msgSend_delegate(v22, v35, v36, v37);
    v42 = objc_msgSend_info(self, v39, v40, v41);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = sub_2760AC0BC;
    v57[3] = &unk_27A6B0198;
    v59 = v27;
    v60 = v29;
    v61 = v34;
    v57[4] = v38;
    v57[5] = v42;
    v58 = v21;
    imageCopy = image;
    captionCopy = caption;
    v43 = *&transform->c;
    v62 = *&transform->a;
    v63 = v43;
    v64 = *&transform->tx;
    v44 = MEMORY[0x277C95D60](v57);
    v45 = objc_alloc(MEMORY[0x277D803E8]);
    v48 = objc_msgSend_initWithSize_offset_renderBlock_(v45, v46, v44, v47, width, height, x, y);
    objc_msgSend_setTextureType_(v48, v49, 5, v50);
    objc_msgSend_setTextureOpacity_(v48, v51, v52, v53, 1.0);
    if (incomingCopy)
    {
      objc_msgSend_setIsIncomingContent_(v48, v54, 1, v55);
    }
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

- (void)p_renderTextureInContext:(CGContext *)context includeImage:(BOOL)image includeCaption:(BOOL)caption renderTransform:(CGAffineTransform *)transform
{
  captionCopy = caption;
  imageCopy = image;
  CGContextSetAllowsFontSubpixelQuantization(context, 0);
  v11 = *&transform->c;
  *&v18.a = *&transform->a;
  *&v18.c = v11;
  *&v18.tx = *&transform->tx;
  CGContextConcatCTM(context, &v18);
  if (imageCopy)
  {
    CGContextSaveGState(context);
    objc_msgSend_drawInContext_(self, v12, context, v13);
    CGContextRestoreGState(context);
    if (!captionCopy)
    {
      return;
    }

    CGContextSaveGState(context);
    objc_msgSend_recursivelyDrawInContext_keepingChildrenPassingTest_(self->_captionRep, v14, context, 0);
  }

  else
  {
    if (!captionCopy)
    {
      return;
    }

    CGContextSaveGState(context);
    objc_msgSend_drawInContext_(self->_captionRep, v15, context, v16);
    objc_msgSend_recursivelyDrawChildrenInContext_keepingChildrenPassingTest_(self->_captionRep, v17, context, 0);
  }

  CGContextRestoreGState(context);
}

- (void)updateHitTestingForTextureStage:(unint64_t)stage isAtEndOfBuild:(BOOL)build
{
  buildCopy = build;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = objc_msgSend_galleryInfo(selfCopy, v7, v8, v9);
  v14 = objc_msgSend_items(v10, v11, v12, v13);

  v18 = objc_msgSend_count(v14, v15, v16, v17);
  if (buildCopy && stage + 1 < v18)
  {
    stageCopy = stage + 1;
  }

  else
  {
    stageCopy = stage;
  }

  if (stageCopy >= v18)
  {
    v22 = 0;
  }

  else
  {
    v22 = objc_msgSend_objectAtIndexedSubscript_(v14, v19, stageCopy, v20);
  }

  v23 = objc_msgSend_galleryLayout(selfCopy, v19, stageCopy, v20);
  v27 = objc_msgSend_layoutController(v23, v24, v25, v26);
  objc_msgSend_setCurrentItem_(v23, v28, v22, v29);
  objc_msgSend_validateLayoutWithDependencies_(v27, v30, v23, v31);
  objc_msgSend_updateChildrenFromLayout(selfCopy, v32, v33, v34);

  objc_sync_exit(selfCopy);
  v35.receiver = selfCopy;
  v35.super_class = TSAGalleryRep;
  [(TSDRep *)&v35 updateHitTestingForTextureStage:stage isAtEndOfBuild:buildCopy];
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject mixingTypeContext:(id)context
{
  contextCopy = context;
  incomingObjectCopy = incomingObject;
  objectCopy = object;
  objc_opt_class();
  v9 = TSUDynamicCast();

  v13 = objc_msgSend_galleryInfo(v9, v10, v11, v12);
  v17 = objc_msgSend_items(v13, v14, v15, v16);
  v21 = objc_msgSend_lastObject(v17, v18, v19, v20);

  v25 = objc_msgSend_captionMode(v13, v22, v23, v24);
  if (v25 == 2)
  {
    objc_msgSend_captionStorage(v13, v26, v27, v28);
    goto LABEL_7;
  }

  if (v25 == 1)
  {
    objc_msgSend_captionStorage(v21, v26, v27, v28);
    v30 = LABEL_7:;
    v29 = objc_msgSend_string(v30, v31, v32, v33);

    goto LABEL_9;
  }

  if (v25)
  {
    v29 = 0;
  }

  else
  {
    v29 = &stru_288512028;
  }

LABEL_9:
  objc_opt_class();
  v34 = TSUDynamicCast();

  v38 = objc_msgSend_galleryInfo(v34, v35, v36, v37);
  v42 = objc_msgSend_galleryInfo(v34, v39, v40, v41);
  v46 = objc_msgSend_items(v42, v43, v44, v45);
  v50 = objc_msgSend_firstObject(v46, v47, v48, v49);

  v54 = objc_msgSend_captionMode(v38, v51, v52, v53);
  if (v54 == 2)
  {
    objc_msgSend_captionStorage(v38, v55, v56, v57);
  }

  else
  {
    if (v54 != 1)
    {
      if (v54)
      {
        v58 = 0;
      }

      else
      {
        v58 = &stru_288512028;
      }

      goto LABEL_17;
    }

    objc_msgSend_captionStorage(v50, v55, v56, v57);
  }
  v59 = ;
  v58 = objc_msgSend_string(v59, v60, v61, v62);

LABEL_17:
  v63 = objc_msgSend_imageData(v21, v55, v56, v57);
  v67 = objc_msgSend_imageData(v50, v64, v65, v66);
  if (!objc_msgSend_isEqual_(v63, v68, v67, v69))
  {
    goto LABEL_22;
  }

  if (objc_msgSend_shouldDisableMatchesOnText(contextCopy, v70, v71, v72) & 1) == 0 && (objc_msgSend_isEqualToString_(v29, v73, v58, v75))
  {

LABEL_25:
    v79 = 1.0;
    goto LABEL_23;
  }

  if (!objc_msgSend_length(v58, v73, v74, v75))
  {
    v81 = objc_msgSend_length(v29, v76, v77, v78);

    v79 = 0.0;
    if (!v81)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_22:

    v79 = 0.0;
  }

LABEL_23:

  return v79;
}

@end