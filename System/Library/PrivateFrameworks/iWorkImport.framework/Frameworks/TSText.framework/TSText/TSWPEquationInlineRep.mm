@interface TSWPEquationInlineRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject mixingTypeContext:(id)context;
- (BOOL)p_shouldFlipShadowsInContext:(CGContext *)context forLayer:(BOOL)layer;
- (CGRect)clipRect;
- (TSWPEquationInfo)equationInfo;
- (TSWPEquationInlineRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)imageOfStroke:(CGRect *)stroke;
- (id)resizedGeometryForTransform:(CGAffineTransform *)transform;
- (void)drawErrorIconInContext:(CGContext *)context;
- (void)drawInContext:(CGContext *)context;
- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test;
- (void)drawInLayerContext:(CGContext *)context;
- (void)p_drawInContext:(CGContext *)context withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(double)opacity withMask:(BOOL)mask forLayer:(BOOL)layer forShadow:(BOOL)shadow forHitTest:(BOOL)self0;
- (void)willBeRemoved;
@end

@implementation TSWPEquationInlineRep

- (TSWPEquationInlineRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v5.receiver = self;
  v5.super_class = TSWPEquationInlineRep;
  return [(TSDRep *)&v5 initWithLayout:layout canvas:canvas];
}

- (TSWPEquationInfo)equationInfo
{
  v3 = objc_msgSend_equationLayout(self, a2, v2);
  v6 = objc_msgSend_equationInfo(v3, v4, v5);

  return v6;
}

- (void)willBeRemoved
{
  v4.receiver = self;
  v4.super_class = TSWPEquationInlineRep;
  [(TSDMediaRep *)&v4 willBeRemoved];
  objc_msgSend_setFrameRep_(self, v3, 0);
}

- (CGRect)clipRect
{
  v4 = objc_msgSend_equationLayout(self, a2, v2);
  v7 = objc_msgSend_equationLayout(v4, v5, v6);
  v43.receiver = self;
  v43.super_class = TSWPEquationInlineRep;
  [(TSDStyledRep *)&v43 clipRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (objc_msgSend_equationIsValid(v4, v16, v17))
  {
    objc_msgSend_erasableBounds(v7, v18, v19);
    v9 = v20;
    v22 = v21;
    v13 = v23;
    v15 = v24;
    objc_msgSend_height(v7, v25, v26);
    v11 = v27 + v22;
    v30 = objc_msgSend_textShadow(v4, v28, v29);
    if (objc_msgSend_isEnabled(v30, v31, v32))
    {
      objc_msgSend_shadowBoundsForRect_(v30, v33, v34, v9, v11, v13, v15);
      v9 = v35;
      v11 = v36;
      v13 = v37;
      v15 = v38;
    }
  }

  v39 = v9;
  v40 = v11;
  v41 = v13;
  v42 = v15;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (void)drawInLayerContext:(CGContext *)context
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPEquationInlineRep drawInLayerContext:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInlineRep.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 202, 0, "shouldn't draw into our own layer");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test
{
  onlyCopy = only;
  contentCopy = content;
  v14 = 1.0;
  if (opacity)
  {
    objc_msgSend_opacity(self, a2, effects, content, options, opacity, only, children, 1.0);
  }

  objc_msgSend_p_drawInContext_withContent_strokeDrawOptions_withOpacity_withMask_forLayer_forShadow_forHitTest_(self, a2, effects, contentCopy, options, 1, 0, onlyCopy, v14);
}

- (id)imageOfStroke:(CGRect *)stroke
{
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = objc_msgSend_layout(self, a2, stroke);
  v12 = objc_msgSend_stroke(v9, v10, v11);

  if (v12 && objc_msgSend_shouldRender(v12, v13, v14))
  {
    v17 = objc_msgSend_equationLayout(self, v15, v16);
    v20 = objc_msgSend_equationGeometry(v17, v18, v19);
    objc_msgSend_size(v20, v21, v22);
    TSURectWithSize();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v33 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v31, v32, v24, v26, v28, v30);
    objc_msgSend_boundsIncludingTSDStroke_(v33, v34, v12);
    v5 = v35;
    v6 = v36;
    v7 = v37;
    v8 = v38;

    v39 = TSDBitmapContextCreate();
    v40 = v39;
    v41 = -v5;
    v42 = -0.0;
    if (v5 < 0.0)
    {
      v41 = -0.0;
    }

    if (v6 >= 0.0)
    {
      v42 = -v6;
    }

    CGContextTranslateCTM(v39, v41, v42);
    v48 = 0;
    objc_msgSend_p_drawInContext_withContent_strokeDrawOptions_withOpacity_withMask_forLayer_forShadow_forHitTest_(self, v43, v40, 0, 7, 0, 0, 0, 1.0, v48);
    Image = CGBitmapContextCreateImage(v40);
    v46 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v45, Image);
    CGContextRelease(v40);
    CGImageRelease(Image);
  }

  else
  {
    v46 = 0;
  }

  stroke->origin.x = v5;
  stroke->origin.y = v6;
  stroke->size.width = v7;
  stroke->size.height = v8;

  return v46;
}

- (BOOL)p_shouldFlipShadowsInContext:(CGContext *)context forLayer:(BOOL)layer
{
  if (TSDCGContextIsShadowContext())
  {
    return 1;
  }

  v8 = objc_msgSend_canvas(self, v5, v6);
  isPrinting = objc_msgSend_isPrinting(v8, v9, v10);

  return isPrinting;
}

- (void)drawErrorIconInContext:(CGContext *)context
{
  v27 = objc_msgSend_equationLayout(self, a2, context);
  v7 = objc_msgSend_canvas(self, v5, v6);
  v10 = objc_msgSend_equationGeometry(v27, v8, v9);
  objc_msgSend_size(v10, v11, v12);
  objc_msgSend_convertUnscaledToBoundsSize_(v7, v13, v14);
  v16 = v15;
  v18 = v17;

  v21 = objc_msgSend_equationLayout(self, v19, v20);
  v24 = objc_msgSend_equationLayout(v21, v22, v23);

  v25 = objc_opt_class();
  if (v24)
  {
    objc_msgSend_drawWarningIconWithSize_context_(v25, v26, context, v16, v18);
  }

  else
  {
    objc_msgSend_drawErrorIconWithSize_context_(v25, v26, context, v16, v18);
  }
}

- (void)drawInContext:(CGContext *)context
{
  v37 = objc_msgSend_equationLayout(self, a2, context);
  if (objc_msgSend_equationIsValid(v37, v5, v6))
  {
    CGContextSaveGState(context);
    v10 = objc_msgSend_textColor(v37, v8, v9);
    CGContextSetFillColorWithColor(context, v10);
    v13 = objc_msgSend_textColor(v37, v11, v12);
    CGContextSetStrokeColorWithColor(context, v13);
    v16 = objc_msgSend_textShadow(v37, v14, v15);
    v19 = objc_msgSend_canvas(self, v17, v18);
    objc_msgSend_viewScale(v19, v20, v21);
    objc_msgSend_applyToContext_viewScale_flipped_(v16, v22, context, 0);

    v27 = objc_msgSend_equationLayout(v37, v23, v24);
    if (!v27)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSWPEquationInlineRep drawInContext:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationInlineRep.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 276, 0, "invalid nil value for '%{public}s'", "equationLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
    }

    objc_msgSend_height(v27, v25, v26);
    objc_msgSend_renderIntoContext_offset_(v27, v35, context, 0.0, v36);
    CGContextRestoreGState(context);
  }

  else
  {
    objc_msgSend_drawErrorIconInContext_(self, v7, context);
  }
}

- (void)p_drawInContext:(CGContext *)context withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(double)opacity withMask:(BOOL)mask forLayer:(BOOL)layer forShadow:(BOOL)shadow forHitTest:(BOOL)self0
{
  layerCopy = layer;
  maskCopy = mask;
  optionsCopy = options;
  contentCopy = content;
  v17 = objc_msgSend_styledLayout(self, a2, context, content, options, mask, layer, shadow);
  isInvisible = objc_msgSend_isInvisible(v17, v18, v19);

  if ((isInvisible & 1) == 0)
  {
    CGContextSaveGState(context);
    v23 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v21, v22);
    v25 = objc_msgSend_BOOLForKey_(v23, v24, @"TSDSuppressImageInterpolation");

    if (layerCopy && v25)
    {
      CGContextSetInterpolationQuality(context, kCGInterpolationNone);
    }

    objc_msgSend_updateFrameRep(self, v26, v27);
    v30 = objc_msgSend_layout(self, v28, v29);
    v33 = objc_msgSend_stroke(v30, v31, v32);

    if (v33 && (objc_msgSend_shouldRender(v33, v34, v35) & 1) == 0)
    {

      v33 = 0;
    }

    v36 = 0;
    if ((optionsCopy & 1) != 0 && opacity < 1.0 && contentCopy)
    {
      CGContextSetAlpha(context, opacity);
      if (v33)
      {
        CGContextBeginTransparencyLayer(context, 0);
        v36 = 1;
      }

      else
      {
        v36 = 0;
      }
    }

    CGContextSaveGState(context);
    v39 = objc_msgSend_equationLayout(self, v37, v38);
    v42 = objc_msgSend_equationGeometry(v39, v40, v41);
    objc_msgSend_size(v42, v43, v44);
    TSURectWithSize();
    x = v45;
    y = v47;
    width = v49;
    height = v51;

    memset(&v146, 0, sizeof(v146));
    v55 = objc_msgSend_equationGeometryInRoot(v39, v53, v54);
    v58 = v55;
    if (v55)
    {
      objc_msgSend_transform(v55, v56, v57);
    }

    else
    {
      memset(&v146, 0, sizeof(v146));
    }

    v145 = v146;
    if (TSUIsTransformAxisAligned())
    {
      v145 = v146;
      v147.origin.x = x;
      v147.origin.y = y;
      v147.size.width = width;
      v147.size.height = height;
      CGRectApplyAffineTransform(v147, &v145);
      TSDCGContextAssociatedScreenScale();
      v63 = objc_msgSend_canvas(self, v61, v62);
      objc_msgSend_viewScale(v63, v64, v65);

      TSURoundedRectForScale();
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;
      transform = v146;
      CGAffineTransformInvert(&v145, &transform);
      v148.origin.x = v67;
      v148.origin.y = v69;
      v148.size.width = v71;
      v148.size.height = v73;
      v149 = CGRectApplyAffineTransform(v148, &v145);
      x = v149.origin.x;
      y = v149.origin.y;
      width = v149.size.width;
      height = v149.size.height;
    }

    if (contentCopy)
    {
      if (maskCopy)
      {
        v74 = objc_msgSend_frameRep(self, v59, v60);
        if (v74)
        {
          v77 = v74;
          hasMask = objc_msgSend_hasMask(v33, v75, v76);

          if (hasMask)
          {
            memset(&v145, 0, sizeof(v145));
            if (v39)
            {
              objc_msgSend_layoutToStrokeTransform(v39, v79, v80);
            }

            transform = v145;
            CGContextConcatCTM(context, &transform);
            objc_msgSend_coverageRect_(v33, v81, v82, x, y, width, height);
            v84 = v83;
            v86 = v85;
            v88 = v87;
            v90 = v89;
            v93 = objc_msgSend_frameRep(self, v91, v92);
            objc_msgSend_applyMaskForRectWithCoverage_toContext_(v93, v94, context, v84, v86, v88, v90);

            v97 = objc_msgSend_frameRep(self, v95, v96);
            objc_msgSend_blendMaskBeforeRenderingImageInContext_(v97, v98, context);

            v143 = v145;
            CGAffineTransformInvert(&transform, &v143);
            CGContextConcatCTM(context, &transform);
          }
        }
      }

      CGContextSaveGState(context);
      if (v39)
      {
        objc_msgSend_layoutToEquationTransform(v39, v99, v100);
      }

      else
      {
        memset(&v145, 0, sizeof(v145));
      }

      CGContextConcatCTM(context, &v145);
      if (maskCopy)
      {
        v103 = objc_msgSend_frameRep(self, v101, v102);
        if (v103)
        {
          v104 = v103;
          v105 = objc_msgSend_hasMask(v33, v101, v102);

          if (v105)
          {
            v106 = objc_msgSend_frameRep(self, v101, v102);
            objc_msgSend_blendMaskBeforeRenderingImageInContext_(v106, v107, context);
          }
        }
      }

      if (objc_msgSend_equationIsValid(v39, v101, v102))
      {
        v110 = objc_msgSend_textColor(v39, v108, v109);
        CGContextSetFillColorWithColor(context, v110);
        v113 = objc_msgSend_textColor(v39, v111, v112);
        CGContextSetStrokeColorWithColor(context, v113);
        shouldFlipShadowsInContext_forLayer = objc_msgSend_p_shouldFlipShadowsInContext_forLayer_(self, v114, context, layerCopy);
        v118 = objc_msgSend_textShadow(v39, v116, v117);
        v121 = objc_msgSend_canvas(self, v119, v120);
        objc_msgSend_viewScale(v121, v122, v123);
        objc_msgSend_applyToContext_viewScale_flipped_(v118, v124, context, shouldFlipShadowsInContext_forLayer);

        v127 = objc_msgSend_equationLayout(v39, v125, v126);
        objc_msgSend_height(v127, v128, v129);
        objc_msgSend_renderIntoContext_offset_(v127, v130, context, 0.0, v131);
      }

      else
      {
        objc_msgSend_drawErrorIconInContext_(self, v108, context);
      }

      CGContextRestoreGState(context);
    }

    CGContextRestoreGState(context);
    if ((optionsCopy & 1) != 0 && v33)
    {
      CGContextSaveGState(context);
      if (v39)
      {
        objc_msgSend_layoutToStrokeTransform(v39, v132, v133);
      }

      else
      {
        memset(&v145, 0, sizeof(v145));
      }

      CGContextConcatCTM(context, &v145);
      if (objc_msgSend_isFrame(v33, v134, v135))
      {
        if (objc_msgSend_shouldRenderFrameStroke(v39, v136, v137))
        {
          v140 = objc_msgSend_frameRep(self, v138, v139);
          CGContextGetCTM(&v145, context);
          TSUTransformScale();
          objc_msgSend_frameRect_inContext_withTotalScale_(v140, v141, context, x, y, width, height, v142);
        }
      }

      else
      {
        objc_msgSend_paintRect_inContext_(v33, v136, context, x, y, width, height);
      }

      CGContextRestoreGState(context);
    }

    if (v36)
    {
      CGContextEndTransparencyLayer(context);
    }

    CGContextRestoreGState(context);
  }
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject mixingTypeContext:(id)context
{
  incomingObjectCopy = incomingObject;
  objectCopy = object;
  objc_opt_class();
  v8 = TSUDynamicCast();

  v11 = objc_msgSend_equationInfo(v8, v9, v10);

  objc_opt_class();
  v12 = TSUDynamicCast();

  v15 = objc_msgSend_equationInfo(v12, v13, v14);

  v18 = 0.0;
  if (v11)
  {
    v19 = v15 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    v20 = objc_msgSend_source(v11, v16, v17);
    v23 = objc_msgSend_source(v15, v21, v22);
    isEqual = objc_msgSend_isEqual_(v20, v24, v23);

    if (isEqual)
    {
      v28 = objc_msgSend_textProperties(v11, v26, v27);
      v31 = objc_msgSend_textProperties(v15, v29, v30);
      v33 = objc_msgSend_isEqual_(v28, v32, v31);

      if (v33)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.5;
      }
    }
  }

  return v18;
}

- (id)resizedGeometryForTransform:(CGAffineTransform *)transform
{
  memset(&v17, 0, sizeof(v17));
  v4 = objc_msgSend_info(self, a2, transform);
  v7 = objc_msgSend_geometry(v4, v5, v6);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_fullTransform(v7, v8, v9);
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v11 = *&transform->c;
  *&v15.a = *&transform->a;
  *&v15.c = v11;
  *&v15.tx = *&transform->tx;
  CGAffineTransformConcat(&v17, &t1, &v15);

  t1 = v17;
  v13 = objc_msgSend_geometryFromFullTransform_(MEMORY[0x277D802E8], v12, &t1);

  return v13;
}

@end