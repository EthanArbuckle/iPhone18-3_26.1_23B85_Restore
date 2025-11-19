@interface TSWPEquationRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4 mixingTypeContext:(id)a5;
- (BOOL)p_drawsInOneStep;
- (BOOL)p_shouldFlipShadowsInContext:(CGContext *)a3 forLayer:(BOOL)a4;
- (CGRect)clipRect;
- (TSWPEquationInfo)equationInfo;
- (TSWPEquationRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)imageOfStroke:(CGRect *)a3;
- (id)resizedGeometryForTransform:(CGAffineTransform *)a3;
- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9;
- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(double)a6 withMask:(BOOL)a7 forLayer:(BOOL)a8 forShadow:(BOOL)a9 forHitTest:(BOOL)a10;
- (void)willBeRemoved;
@end

@implementation TSWPEquationRep

- (TSWPEquationRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v5.receiver = self;
  v5.super_class = TSWPEquationRep;
  return [(TSDRep *)&v5 initWithLayout:a3 canvas:a4];
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
  v4.super_class = TSWPEquationRep;
  [(TSDMediaRep *)&v4 willBeRemoved];
  objc_msgSend_setFrameRep_(self, v3, 0);
}

- (CGRect)clipRect
{
  v2.receiver = self;
  v2.super_class = TSWPEquationRep;
  [(TSDStyledRep *)&v2 clipRect];
  return CGRectInset(v3, -1.0, -1.0);
}

- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9
{
  v9 = a7;
  v11 = a4;
  v14 = 1.0;
  if (a6)
  {
    objc_msgSend_opacity(self, a2, a3, a4, a5, a6, a7, a8, 1.0);
  }

  objc_msgSend_p_drawInContext_withContent_strokeDrawOptions_withOpacity_withMask_forLayer_forShadow_forHitTest_(self, a2, a3, v11, a5, 1, 0, v9, v14);
}

- (id)imageOfStroke:(CGRect *)a3
{
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = objc_msgSend_layout(self, a2, a3);
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

  a3->origin.x = v5;
  a3->origin.y = v6;
  a3->size.width = v7;
  a3->size.height = v8;

  return v46;
}

- (BOOL)p_shouldFlipShadowsInContext:(CGContext *)a3 forLayer:(BOOL)a4
{
  v4 = a4;
  if (TSDCGContextIsShadowContext() & 1) != 0 || v4 && (self->super.super.mFrameRep)
  {
    return 1;
  }

  v9 = objc_msgSend_canvas(self, v6, v7);
  isPrinting = objc_msgSend_isPrinting(v9, v10, v11);

  return isPrinting;
}

- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(double)a6 withMask:(BOOL)a7 forLayer:(BOOL)a8 forShadow:(BOOL)a9 forHitTest:(BOOL)a10
{
  v10 = a8;
  v11 = a7;
  v13 = a5;
  v14 = a4;
  v17 = objc_msgSend_styledLayout(self, a2, a3, a4, a5, a7, a8, a9);
  isInvisible = objc_msgSend_isInvisible(v17, v18, v19);

  if ((isInvisible & 1) == 0)
  {
    CGContextSaveGState(a3);
    v23 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v21, v22);
    v25 = objc_msgSend_BOOLForKey_(v23, v24, @"TSDSuppressImageInterpolation");

    if (v10 && v25)
    {
      CGContextSetInterpolationQuality(a3, kCGInterpolationNone);
    }

    objc_msgSend_updateFrameRep(self, v26, v27);
    v30 = objc_msgSend_layout(self, v28, v29);
    v33 = objc_msgSend_stroke(v30, v31, v32);

    if (v33 && (objc_msgSend_shouldRender(v33, v34, v35) & 1) == 0)
    {

      v33 = 0;
    }

    v36 = 0;
    if ((v13 & 1) != 0 && a6 < 1.0 && v14)
    {
      CGContextSetAlpha(a3, a6);
      if (v33)
      {
        CGContextBeginTransparencyLayer(a3, 0);
        v36 = 1;
      }

      else
      {
        v36 = 0;
      }
    }

    CGContextSaveGState(a3);
    v39 = objc_msgSend_equationLayout(self, v37, v38);
    v42 = objc_msgSend_equationGeometry(v39, v40, v41);
    objc_msgSend_size(v42, v43, v44);
    TSURectWithSize();
    x = v45;
    y = v47;
    width = v49;
    height = v51;

    memset(&v156, 0, sizeof(v156));
    v55 = objc_msgSend_equationGeometryInRoot(v39, v53, v54);
    v58 = v55;
    if (v55)
    {
      objc_msgSend_transform(v55, v56, v57);
    }

    else
    {
      memset(&v156, 0, sizeof(v156));
    }

    v155 = v156;
    if (TSUIsTransformAxisAligned())
    {
      v155 = v156;
      v157.origin.x = x;
      v157.origin.y = y;
      v157.size.width = width;
      v157.size.height = height;
      CGRectApplyAffineTransform(v157, &v155);
      TSDCGContextAssociatedScreenScale();
      v63 = objc_msgSend_canvas(self, v61, v62);
      objc_msgSend_viewScale(v63, v64, v65);

      TSURoundedRectForScale();
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;
      transform = v156;
      CGAffineTransformInvert(&v155, &transform);
      v158.origin.x = v67;
      v158.origin.y = v69;
      v158.size.width = v71;
      v158.size.height = v73;
      v159 = CGRectApplyAffineTransform(v158, &v155);
      x = v159.origin.x;
      y = v159.origin.y;
      width = v159.size.width;
      height = v159.size.height;
    }

    if (v14)
    {
      if (v11)
      {
        v74 = objc_msgSend_frameRep(self, v59, v60);
        if (v74)
        {
          v77 = v74;
          hasMask = objc_msgSend_hasMask(v33, v75, v76);

          if (hasMask)
          {
            memset(&v155, 0, sizeof(v155));
            if (v39)
            {
              objc_msgSend_layoutToStrokeTransform(v39, v79, v80);
            }

            transform = v155;
            CGContextConcatCTM(a3, &transform);
            objc_msgSend_coverageRect_(v33, v81, v82, x, y, width, height);
            v84 = v83;
            v86 = v85;
            v88 = v87;
            v90 = v89;
            v93 = objc_msgSend_frameRep(self, v91, v92);
            objc_msgSend_applyMaskForRectWithCoverage_toContext_(v93, v94, a3, v84, v86, v88, v90);

            v97 = objc_msgSend_frameRep(self, v95, v96);
            objc_msgSend_blendMaskBeforeRenderingImageInContext_(v97, v98, a3);

            v153 = v155;
            CGAffineTransformInvert(&transform, &v153);
            CGContextConcatCTM(a3, &transform);
          }
        }
      }

      CGContextSaveGState(a3);
      if (v39)
      {
        objc_msgSend_layoutToEquationTransform(v39, v99, v100);
      }

      else
      {
        memset(&v155, 0, sizeof(v155));
      }

      CGContextConcatCTM(a3, &v155);
      if (objc_msgSend_equationIsValid(v39, v101, v102))
      {
        v105 = objc_msgSend_textColor(v39, v103, v104);
        CGContextSetFillColorWithColor(a3, v105);
        v108 = objc_msgSend_textColor(v39, v106, v107);
        CGContextSetStrokeColorWithColor(a3, v108);
        shouldFlipShadowsInContext_forLayer = objc_msgSend_p_shouldFlipShadowsInContext_forLayer_(self, v109, a3, v10);
        v113 = objc_msgSend_textShadow(v39, v111, v112);
        v116 = objc_msgSend_canvas(self, v114, v115);
        objc_msgSend_viewScale(v116, v117, v118);
        objc_msgSend_applyToContext_viewScale_flipped_(v113, v119, a3, shouldFlipShadowsInContext_forLayer);

        v122 = objc_msgSend_equationLayout(v39, v120, v121);
        objc_msgSend_height(v122, v123, v124);
        objc_msgSend_renderIntoContext_offset_(v122, v125, a3, 0.0, v126);
      }

      else
      {
        v127 = objc_msgSend_currentInfoGeometry(v39, v103, v104);
        objc_msgSend_size(v127, v128, v129);
        v131 = v130;
        v133 = v132;

        v136 = objc_msgSend_equationLayout(self, v134, v135);
        v139 = objc_msgSend_equationLayout(v136, v137, v138);

        v140 = objc_opt_class();
        if (v139)
        {
          objc_msgSend_drawWarningIconWithSize_context_(v140, v141, a3, v131, v133);
        }

        else
        {
          objc_msgSend_drawErrorIconWithSize_context_(v140, v141, a3, v131, v133);
        }
      }

      CGContextRestoreGState(a3);
    }

    CGContextRestoreGState(a3);
    if ((v13 & 1) != 0 && v33)
    {
      CGContextSaveGState(a3);
      if (v39)
      {
        objc_msgSend_layoutToStrokeTransform(v39, v142, v143);
      }

      else
      {
        memset(&v155, 0, sizeof(v155));
      }

      CGContextConcatCTM(a3, &v155);
      if (objc_msgSend_isFrame(v33, v144, v145))
      {
        if (objc_msgSend_shouldRenderFrameStroke(v39, v146, v147))
        {
          v150 = objc_msgSend_frameRep(self, v148, v149);
          CGContextGetCTM(&v155, a3);
          TSUTransformScale();
          objc_msgSend_frameRect_inContext_withTotalScale_(v150, v151, a3, x, y, width, height, v152);
        }
      }

      else
      {
        objc_msgSend_paintRect_inContext_(v33, v146, a3, x, y, width, height);
      }

      CGContextRestoreGState(a3);
    }

    if (v36)
    {
      CGContextEndTransparencyLayer(a3);
    }

    CGContextRestoreGState(a3);
  }
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4 mixingTypeContext:(id)a5
{
  v6 = a4;
  v7 = a3;
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
        v18 = 0.5;
      }

      else
      {
        v18 = 1.0;
      }
    }
  }

  return v18;
}

- (BOOL)p_drawsInOneStep
{
  v3 = objc_msgSend_equationInfo(self, a2, v2);
  v6 = objc_msgSend_stroke(v3, v4, v5);
  shouldRender = objc_msgSend_shouldRender(v6, v7, v8);

  return shouldRender ^ 1;
}

- (id)resizedGeometryForTransform:(CGAffineTransform *)a3
{
  memset(&v17, 0, sizeof(v17));
  v4 = objc_msgSend_info(self, a2, a3);
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

  v11 = *&a3->c;
  *&v15.a = *&a3->a;
  *&v15.c = v11;
  *&v15.tx = *&a3->tx;
  CGAffineTransformConcat(&v17, &t1, &v15);

  t1 = v17;
  v13 = objc_msgSend_geometryFromFullTransform_(MEMORY[0x277D802E8], v12, &t1);

  return v13;
}

@end