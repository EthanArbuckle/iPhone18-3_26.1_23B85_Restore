@interface TSDStyledRep
- (BOOL)shouldShowReflection;
- (BOOL)shouldShowShadow;
- (CGImage)newShadowImageWithSize:(CGSize)size unflipped:(BOOL)unflipped withChildren:(BOOL)children;
- (CGImage)p_newReflectionImageWithSize:(CGSize)size applyOpacity:(BOOL)opacity viewScale:(double)scale withBlock:(id)block;
- (CGRect)clipRect;
- (CGRect)p_baseReflectionFrameInRootForClipping;
- (CGRect)p_clipRectInRootForTransform:(CGAffineTransform *)transform includeShadow:(BOOL)shadow includeReflection:(BOOL)reflection;
- (CGRect)p_rectWithEffectsAppliedToRect:(CGRect)rect additionalTransform:(CGAffineTransform *)transform includeShadow:(BOOL)shadow includeReflection:(BOOL)reflection;
- (CGRect)p_reflectionRenderableFrameInRoot;
- (CGRect)rectWithEffectsAppliedToRect:(CGRect)rect;
- (NSString)description;
- (TSDReflection)reflection;
- (TSDShadow)shadow;
- (TSDStyledInfo)styledInfo;
- (double)opacity;
- (id)blockToExcludeCaptionsAndDescendantsOfCaptions;
- (id)textureForDescription:(id)description;
- (void)calculateTextureClipBounds:(CGRect *)bounds andOffset:(CGPoint *)offset withTransform:(CGAffineTransform *)transform andRectOnCanvas:(CGRect *)canvas textureDescription:(id)description isUsingImageTexture:(BOOL)texture;
- (void)dealloc;
- (void)drawGradientWithAlphaOverReflection:(CGContext *)reflection applyingOpacity:(BOOL)opacity reflectionSize:(CGSize)size;
- (void)drawInContext:(CGContext *)context;
- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test;
- (void)drawInContextWithoutEffectsForAlphaOnly:(CGContext *)only;
- (void)drawReflectionInContext:(CGContext *)context drawChildren:(BOOL)children;
- (void)drawReflectionInContext:(CGContext *)context withTransparencyLayer:(BOOL)layer applyingOpacity:(BOOL)opacity shouldClipGradient:(BOOL)gradient withBlock:(id)block;
- (void)drawReflectionIntoReflectionFrameInContext:(CGContext *)context withTransparencyLayer:(BOOL)layer applyingOpacity:(BOOL)opacity drawChildren:(BOOL)children;
- (void)drawShadowInContext:(CGContext *)context withChildren:(BOOL)children withDrawableOpacity:(BOOL)opacity;
- (void)p_drawReflectionInContext:(CGContext *)context;
- (void)p_drawReflectionIntoReflectionFrameInContext:(CGContext *)context withTransparencyLayer:(BOOL)layer applyingOpacity:(BOOL)opacity shouldClipGradient:(BOOL)gradient withBlock:(id)block;
- (void)setTextureAttributes:(id)attributes textureBounds:(CGRect)bounds;
@end

@implementation TSDStyledRep

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSDStyledRep;
  [(TSDRep *)&v2 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_info(self, v6, v7);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v13 = objc_msgSend_info(self, v11, v12);
  v16 = objc_msgSend_layout(self, v14, v15);
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_layout(self, v19, v20);
  objc_msgSend_frameInUnscaledCanvas(self, v22, v23);
  v24 = NSStringFromCGRect(v29);
  v26 = objc_msgSend_stringWithFormat_(v3, v25, @"<%@ %p info=<%@ %p> layout=<%@ %p> frameInUnscaledCanvas=%@>", v5, self, v10, v13, v18, v21, v24);

  return v26;
}

- (TSDStyledInfo)styledInfo
{
  v3 = objc_msgSend_layout(self, a2, v2);
  v6 = objc_msgSend_info(v3, v4, v5);

  return v6;
}

- (CGRect)clipRect
{
  objc_msgSend_clipRectWithoutEffects(self, a2, v2);

  MEMORY[0x2821F9670](self, sel_rectWithEffectsAppliedToRect_, v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)p_clipRectInRootForTransform:(CGAffineTransform *)transform includeShadow:(BOOL)shadow includeReflection:(BOOL)reflection
{
  reflectionCopy = reflection;
  shadowCopy = shadow;
  objc_msgSend_clipRectWithoutEffects(self, a2, transform);
  v9 = *&transform->c;
  *&v16.a = *&transform->a;
  *&v16.c = v9;
  *&v16.tx = *&transform->tx;
  v18 = CGRectApplyAffineTransform(v17, &v16);
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *&v16.a = *MEMORY[0x277CBF2C0];
  *&v16.c = v10;
  *&v16.tx = *(MEMORY[0x277CBF2C0] + 32);
  objc_msgSend_p_rectWithEffectsAppliedToRect_additionalTransform_includeShadow_includeReflection_(self, v11, &v16, shadowCopy, reflectionCopy, v18.origin.x, v18.origin.y, v18.size.width, v18.size.height);
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)p_baseReflectionFrameInRootForClipping
{
  v3 = objc_msgSend_styledLayout(self, a2, v2);
  objc_msgSend_alignmentFrameInRoot(v3, v4, v5);
  objc_msgSend_reflectionBoundsForRect_(v3, v6, v7);
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

- (void)p_drawReflectionInContext:(CGContext *)context
{
  v5 = objc_msgSend_canvas(self, a2, context);
  objc_msgSend_contentsScale(v5, v6, v7);
  TSDSetCGContextInfo(context, 0, 0, 1, 0, v8);

  v11 = objc_msgSend_canvas(self, v9, v10);
  v14 = objc_msgSend_supportsHDR(v11, v12, v13);
  TSDCGContextSetShouldRenderHDRContent(context, v14);

  objc_msgSend_p_reflectionRenderableFrameInRoot(self, v15, v16);
  objc_msgSend_reflectionFrameInRootForClipping(self, v17, v18);
  v21 = objc_msgSend_canvas(self, v19, v20);
  objc_msgSend_viewScale(v21, v22, v23);
  TSUMultiplyRectScalar();

  TSUSubtractPoints();
  CGContextTranslateCTM(context, v24, v25);
  objc_msgSend_p_baseReflectionFrameInRootForClipping(self, v26, v27);
  v30 = objc_msgSend_canvas(self, v28, v29);
  objc_msgSend_viewScale(v30, v31, v32);
  TSUMultiplyRectScalar();

  TSUSubtractPoints();
  CGContextTranslateCTM(context, v33, v34);
  v37 = objc_msgSend_canvas(self, v35, v36);
  objc_msgSend_viewScale(v37, v38, v39);
  v41 = v40;

  CGContextScaleCTM(context, v41, v41);

  MEMORY[0x2821F9670](self, sel_drawReflectionIntoReflectionFrameInContext_withTransparencyLayer_applyingOpacity_drawChildren_, context);
}

- (double)opacity
{
  v3 = objc_msgSend_styledLayout(self, a2, v2);
  objc_msgSend_opacity(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (CGRect)rectWithEffectsAppliedToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = objc_msgSend_layout(self, a2, v3);
  v12 = v9;
  if (v9)
  {
    objc_msgSend_transformInRoot(v9, v10, v11);
  }

  else
  {
    memset(&v26, 0, sizeof(v26));
  }

  CGAffineTransformInvert(&v27, &v26);
  objc_msgSend_p_rectWithEffectsAppliedToRect_additionalTransform_includeShadow_includeReflection_(self, v13, &v27, 1, 1, x, y, width, height);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)p_rectWithEffectsAppliedToRect:(CGRect)rect additionalTransform:(CGAffineTransform *)transform includeShadow:(BOOL)shadow includeReflection:(BOOL)reflection
{
  reflectionCopy = reflection;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (shadow)
  {
    v13 = objc_msgSend_info(self, a2, transform);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_msgSend_shadow(self, a2, transform);
      v18 = v15;
      if (v15 && objc_msgSend_isEnabled(v15, v16, v17))
      {
        v20 = *&transform->c;
        *&v66.a = *&transform->a;
        *&v66.c = v20;
        *&v66.tx = *&transform->tx;
        objc_msgSend_shadowBoundsForRect_additionalTransform_(v18, v19, &v66, x, y, width, height);
        x = v21;
        y = v22;
        width = v23;
        height = v24;
      }
    }
  }

  if (reflectionCopy)
  {
    v27 = objc_msgSend_reflection(self, a2, transform);
    if (v27)
    {
      v28 = objc_msgSend_styledLayout(self, v25, v26);
      objc_msgSend_reflectionFrame(v28, v29, v30);
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v41 = objc_msgSend_layout(self, v39, v40);
      v44 = objc_msgSend_parent(v41, v42, v43);

      if (v44)
      {
        v47 = objc_msgSend_layout(self, v45, v46);
        v50 = objc_msgSend_parent(v47, v48, v49);
        v53 = objc_msgSend_geometryInRoot(v50, v51, v52);
        objc_msgSend_frame(v53, v54, v55);

        TSUAddPoints();
        v32 = v56;
        v34 = v57;
      }

      v58 = *&transform->c;
      *&v66.a = *&transform->a;
      *&v66.c = v58;
      *&v66.tx = *&transform->tx;
      v59 = v32;
      *&v58 = v34;
      v60 = v36;
      v61 = v38;
      v70 = CGRectApplyAffineTransform(*(&v58 - 8), &v66);
      v67.origin.x = x;
      v67.origin.y = y;
      v67.size.width = width;
      v67.size.height = height;
      v68 = CGRectUnion(v67, v70);
      x = v68.origin.x;
      y = v68.origin.y;
      width = v68.size.width;
      height = v68.size.height;
    }
  }

  v62 = x;
  v63 = y;
  v64 = width;
  v65 = height;
  result.size.height = v65;
  result.size.width = v64;
  result.origin.y = v63;
  result.origin.x = v62;
  return result;
}

- (TSDReflection)reflection
{
  v3 = objc_msgSend_styledInfo(self, a2, v2);
  v6 = objc_msgSend_reflection(v3, v4, v5);

  return v6;
}

- (TSDShadow)shadow
{
  v3 = objc_msgSend_styledInfo(self, a2, v2);
  v6 = objc_msgSend_shadow(v3, v4, v5);

  return v6;
}

- (BOOL)shouldShowReflection
{
  v4 = objc_msgSend_styledLayout(self, a2, v2);
  if (objc_msgSend_isInvisible(v4, v5, v6))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v10 = objc_msgSend_styledLayout(self, v7, v8);
    v9 = objc_msgSend_suppressesShadowsAndReflections(v10, v11, v12) ^ 1;
  }

  return v9;
}

- (BOOL)shouldShowShadow
{
  v3 = objc_msgSend_styledLayout(self, a2, v2);
  isInvisible = objc_msgSend_isInvisible(v3, v4, v5);

  return isInvisible ^ 1;
}

- (CGRect)p_reflectionRenderableFrameInRoot
{
  objc_msgSend_reflectionFrameInRootForClipping(self, a2, v2);
  v6 = objc_msgSend_canvas(self, v4, v5);
  objc_msgSend_viewScale(v6, v7, v8);
  TSUMultiplyRectScalar();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;

  return CGRectIntegral(*&v17);
}

- (CGImage)newShadowImageWithSize:(CGSize)size unflipped:(BOOL)unflipped withChildren:(BOOL)children
{
  unflippedCopy = unflipped;
  height = size.height;
  width = size.width;
  v9 = &selRef_drawInContextWithoutEffectsForAlphaOnly_;
  if (!children)
  {
    v9 = &selRef_drawInContextWithoutEffectsOrChildrenForAlphaOnly_;
  }

  v10 = *v9;
  v11 = objc_msgSend_shadow(self, a2, unflipped);
  v13 = objc_msgSend_newShadowImageWithSize_shadow_drawSelector_unflipped_(self, v12, v11, v10, unflippedCopy, width, height);

  return v13;
}

- (CGImage)p_newReflectionImageWithSize:(CGSize)size applyOpacity:(BOOL)opacity viewScale:(double)scale withBlock:(id)block
{
  opacityCopy = opacity;
  blockCopy = block;
  TSUCeilSize();
  Image = 0;
  if (v10 > 0.0 && v11 > 0.0)
  {
    v13 = TSDBitmapContextCreate(0xB, v10, v11);
    if (v13)
    {
      v14 = v13;
      CGContextScaleCTM(v13, scale, scale);
      v17 = objc_msgSend_canvas(self, v15, v16);
      isPrinting = objc_msgSend_isPrinting(v17, v18, v19);
      v23 = objc_msgSend_canvas(self, v21, v22);
      isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(v23, v24, v25);
      v29 = objc_msgSend_canvas(self, v27, v28);
      shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(v29, v30, v31);
      TSDSetCGContextInfo(v14, isPrinting, isDrawingIntoPDF, 0, shouldSuppressBackgrounds, 1.0);

      objc_msgSend_p_drawReflectionIntoReflectionFrameInContext_withTransparencyLayer_applyingOpacity_shouldClipGradient_withBlock_(self, v33, v14, 0, opacityCopy, 0, blockCopy);
      Image = CGBitmapContextCreateImage(v14);
      CGContextRelease(v14);
    }

    else
    {
      Image = 0;
    }
  }

  return Image;
}

- (void)drawGradientWithAlphaOverReflection:(CGContext *)reflection applyingOpacity:(BOOL)opacity reflectionSize:(CGSize)size
{
  height = size.height;
  v28 = *MEMORY[0x277D85DE8];
  v9 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  v12 = v9;
  if (opacity)
  {
    v13 = objc_msgSend_reflection(self, v10, v11);
    objc_msgSend_opacity(v13, v14, v15);
    *v12 = v16;
  }

  else
  {
    *v9 = 0x3FF0000000000000;
  }

  v17 = objc_msgSend_reflection(self, v10, v11);
  objc_msgSend_fadeAcceleration(v17, v18, v19);
  v12[1] = v20;

  *range = xmmword_276825DF8;
  v26 = unk_276825E08;
  *domain = xmmword_2768256D0;
  v24 = *byte_288574FA8;
  v21 = CGFunctionCreate(v12, 1uLL, domain, 2uLL, range, &v24);
  v22 = TSUDeviceGrayColorSpace();
  v29.x = 0.0;
  v29.y = height;
  Axial = CGShadingCreateAxial(v22, *MEMORY[0x277CBF348], v29, v21, 1, 1);
  CGContextSetBlendMode(reflection, kCGBlendModeDestinationIn);
  CGContextDrawShading(reflection, Axial);
  CGShadingRelease(Axial);
  CGFunctionRelease(v21);
}

- (void)p_drawReflectionIntoReflectionFrameInContext:(CGContext *)context withTransparencyLayer:(BOOL)layer applyingOpacity:(BOOL)opacity shouldClipGradient:(BOOL)gradient withBlock:(id)block
{
  gradientCopy = gradient;
  opacityCopy = opacity;
  layerCopy = layer;
  blockCopy = block;
  v15 = objc_msgSend_styledLayout(self, v13, v14);
  objc_msgSend_reflectionFrame(v15, v16, v17);
  v19 = v18;
  v21 = v20;
  CGContextSaveGState(context);
  if (layerCopy)
  {
    TSURectWithSize();
    CGContextBeginTransparencyLayerWithRect(context, v72, 0);
  }

  v24 = objc_msgSend_canvas(self, v22, v23, v21, v19);
  objc_msgSend_viewScale(v24, v25, v26);
  v28 = v27 * TSDCGContextAssociatedScreenScale(context);

  TSUAliasRound();
  CGContextTranslateCTM(context, 0.0, v29 / v28);
  v32 = objc_msgSend_layout(self, v30, v31);
  objc_msgSend_alignmentFrame(v32, v33, v34);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v45 = objc_msgSend_styledLayout(self, v43, v44);
  objc_msgSend_aliasedAlignmentFrameForScale_(v45, v46, v47, v28);
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v73.origin.x = v49;
  v73.origin.y = v51;
  v73.size.width = v53;
  v73.size.height = v55;
  MaxY = CGRectGetMaxY(v73);
  v74.origin.x = v36;
  v74.origin.y = v38;
  v74.size.width = v40;
  v74.size.height = v42;
  v57 = CGRectGetMaxY(v74);
  CGContextTranslateCTM(context, 0.0, MaxY - v57 + MaxY - v57);
  objc_msgSend_alignmentFrameInRoot(v15, v58, v59);
  v61 = v60;
  v63 = v62;
  v65 = v64;
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 0.0, v65);
  CGContextScaleCTM(context, 1.0, -1.0);
  CGContextTranslateCTM(context, -v61, -v63);
  if (v15)
  {
    objc_msgSend_transformInRoot(v15, v66, v67);
  }

  else
  {
    memset(&transform, 0, sizeof(transform));
  }

  CGContextConcatCTM(context, &transform);
  sub_276647B34(context, 1);
  blockCopy[2](blockCopy, context);

  sub_276647B34(context, 0);
  CGContextRestoreGState(context);
  if (gradientCopy)
  {
    CGContextClipToRectSafe();
  }

  objc_msgSend_drawGradientWithAlphaOverReflection_applyingOpacity_reflectionSize_(self, v68, context, opacityCopy, v70, v69);
  if (layerCopy)
  {
    CGContextEndTransparencyLayer(context);
  }

  CGContextRestoreGState(context);
}

- (void)drawReflectionIntoReflectionFrameInContext:(CGContext *)context withTransparencyLayer:(BOOL)layer applyingOpacity:(BOOL)opacity drawChildren:(BOOL)children
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2766DE260;
  v6[3] = &unk_27A6CCED8;
  v6[4] = self;
  childrenCopy = children;
  objc_msgSend_p_drawReflectionIntoReflectionFrameInContext_withTransparencyLayer_applyingOpacity_shouldClipGradient_withBlock_(self, a2, context, layer, opacity, 0, v6);
}

- (id)blockToExcludeCaptionsAndDescendantsOfCaptions
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2766DE374;
  v5[3] = &unk_27A6CCF00;
  v5[4] = self;
  v2 = MEMORY[0x277C9C8B0](v5, a2);
  v3 = MEMORY[0x277C9C8B0]();

  return v3;
}

- (void)drawShadowInContext:(CGContext *)context withChildren:(BOOL)children withDrawableOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  childrenCopy = children;
  v9 = objc_msgSend_shadow(self, a2, context);
  v12 = v9;
  if (v9)
  {
    if (objc_msgSend_isEnabled(v9, v10, v11))
    {
      if (objc_msgSend_shouldShowShadow(self, v13, v14))
      {
        objc_msgSend_boundsInNaturalSpaceForRep_(v12, v15, self);
        x = v16;
        y = v18;
        width = v20;
        height = v22;
        v25 = objc_msgSend_newShadowImageWithSize_unflipped_withChildren_(self, v24, 0, childrenCopy, v20, v22);
        if (v25)
        {
          v26 = v25;
          CGContextSaveGState(context);
          objc_msgSend_opacity(v12, v27, v28);
          v32 = v31;
          if (opacityCopy)
          {
            objc_msgSend_opacity(self, v29, v30);
            v32 = v32 * v33;
          }

          if (v32 < 1.0)
          {
            CGContextSetAlpha(context, v32);
          }

          if (objc_msgSend_isDropShadow(v12, v29, v30))
          {
            objc_msgSend_offsetDelta(v12, v34, v35);
            v38 = objc_msgSend_styledLayout(self, v36, v37);
            v41 = v38;
            if (v38)
            {
              objc_msgSend_transformInRoot(v38, v39, v40);
            }

            else
            {
              memset(&v107, 0, sizeof(v107));
            }

            CGAffineTransformInvert(&transform, &v107);
            TSUDeltaApplyAffineTransform();
            v94 = v93;
            v96 = v95;

            v109.origin.x = x;
            v109.origin.y = y;
            v109.size.width = width;
            v109.size.height = height;
            v110 = CGRectOffset(v109, v94, v96);
            x = v110.origin.x;
            y = v110.origin.y;
            width = v110.size.width;
            height = v110.size.height;
          }

          else
          {
            if (objc_msgSend_isContactShadow(v12, v34, v35))
            {
              v44 = objc_msgSend_styledLayout(self, v42, v43);
              objc_msgSend_alignmentFrameInRoot(v44, v45, v46);
              v48 = v47;

              v51 = objc_msgSend_styledLayout(self, v49, v50);
              objc_msgSend_alignmentFrameInRoot(v51, v52, v53);
              v55 = v54;
              v57 = v56;

              v60 = objc_msgSend_layout(self, v58, v59);
              v63 = v60;
              if (v60)
              {
                objc_msgSend_transformInRoot(v60, v61, v62);
              }

              else
              {
                memset(&v107, 0, sizeof(v107));
              }

              CGAffineTransformInvert(&transform, &v107);
              CGContextConcatCTM(context, &transform);

              CGContextTranslateCTM(context, v55, v57);
              objc_msgSend_offset(v12, v97, v98);
              CGContextTranslateCTM(context, 0.0, v48 + v99);
              CGContextTranslateCTM(context, 0.0, v48);
              CGContextScaleCTM(context, 1.0, -1.0);
              goto LABEL_25;
            }

            if (!objc_msgSend_isCurvedShadow(v12, v42, v43))
            {
LABEL_25:
              v111.origin.x = x;
              v111.origin.y = y;
              v111.size.width = width;
              v111.size.height = height;
              CGContextDrawImage(context, v111, v26);
              CGImageRelease(v26);
              CGContextRestoreGState(context);
              goto LABEL_26;
            }

            v66 = objc_msgSend_layout(self, v64, v65);
            v69 = objc_msgSend_geometry(v66, v67, v68);
            objc_msgSend_frame(v69, v70, v71);
            v73 = v72;
            v75 = v74;

            v78 = objc_msgSend_layout(self, v76, v77);
            v81 = objc_msgSend_parent(v78, v79, v80);

            if (v81)
            {
              v84 = objc_msgSend_layout(self, v82, v83);
              objc_msgSend_frameInRoot(v84, v85, v86);
              v73 = v87;
              v75 = v88;
            }

            v89 = objc_msgSend_layout(self, v82, v83);
            v92 = v89;
            if (v89)
            {
              objc_msgSend_transformInRoot(v89, v90, v91);
            }

            else
            {
              memset(&v107, 0, sizeof(v107));
            }

            CGAffineTransformInvert(&transform, &v107);
            CGContextConcatCTM(context, &transform);

            CGContextTranslateCTM(context, v73, v75);
            objc_msgSend_offsetDelta(v12, v100, v101);
            v103 = v102;
            objc_msgSend_offsetDelta(v12, v104, v105);
            CGContextTranslateCTM(context, v103, v106);
          }

          TSUAffineTransformForFlips();
          CGContextConcatCTM(context, &transform);
          goto LABEL_25;
        }
      }
    }
  }

LABEL_26:
}

- (void)drawReflectionInContext:(CGContext *)context withTransparencyLayer:(BOOL)layer applyingOpacity:(BOOL)opacity shouldClipGradient:(BOOL)gradient withBlock:(id)block
{
  gradientCopy = gradient;
  opacityCopy = opacity;
  layerCopy = layer;
  blockCopy = block;
  v17 = objc_msgSend_reflection(self, v13, v14);
  if (v17 && objc_msgSend_shouldShowReflection(self, v15, v16))
  {
    v20 = objc_msgSend_styledLayout(self, v18, v19);
    v23 = v20;
    if (v20)
    {
      objc_msgSend_transformInRoot(v20, v21, v22);
    }

    else
    {
      memset(&v68, 0, sizeof(v68));
    }

    CGAffineTransformInvert(&transform, &v68);
    CGContextConcatCTM(context, &transform);
    objc_msgSend_reflectionFrame(v23, v24, v25);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v36 = objc_msgSend_canvas(self, v34, v35);
    isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(v36, v37, v38);

    if (isDrawingIntoPDF)
    {
      TSUMultiplySizeScalar();
      v41 = objc_msgSend_p_newReflectionImageWithSize_applyOpacity_viewScale_withBlock_(self, v40, opacityCopy, blockCopy);
      if (v41)
      {
        v44 = v41;
        v45 = objc_msgSend_parent(v23, v42, v43);

        if (v45)
        {
          v48 = objc_msgSend_parent(v23, v46, v47);
          v51 = objc_msgSend_geometryInRoot(v48, v49, v50);
          objc_msgSend_frame(v51, v52, v53);
          TSUAddPoints();
          v27 = v54;
          v29 = v55;
        }

        v70.origin.x = v27;
        v70.origin.y = v29;
        v70.size.width = v31;
        v70.size.height = v33;
        MinY = CGRectGetMinY(v70);
        v71.origin.x = v27;
        v71.origin.y = v29;
        v71.size.width = v31;
        v71.size.height = v33;
        MaxY = CGRectGetMaxY(v71);
        CGContextTranslateCTM(context, 0.0, MinY + MaxY);
        CGContextScaleCTM(context, 1.0, -1.0);
        v72.origin.x = v27;
        v72.origin.y = v29;
        v72.size.width = v31;
        v72.size.height = v33;
        CGContextDrawImage(context, v72, v44);
        CGImageRelease(v44);
      }
    }

    else
    {
      CGContextTranslateCTM(context, v27, v29);
      v60 = objc_msgSend_parent(v23, v58, v59);
      objc_msgSend_frameInRoot(v60, v61, v62);
      v64 = v63;
      v66 = v65;

      CGContextTranslateCTM(context, v64, v66);
      objc_msgSend_p_drawReflectionIntoReflectionFrameInContext_withTransparencyLayer_applyingOpacity_shouldClipGradient_withBlock_(self, v67, context, layerCopy, opacityCopy, gradientCopy, blockCopy);
    }
  }
}

- (void)drawReflectionInContext:(CGContext *)context drawChildren:(BOOL)children
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2766DEB30;
  v4[3] = &unk_27A6CCED8;
  v4[4] = self;
  childrenCopy = children;
  objc_msgSend_drawReflectionInContext_withTransparencyLayer_applyingOpacity_shouldClipGradient_withBlock_(self, a2, context, 1, 1, 0, v4);
}

- (void)drawInContext:(CGContext *)context
{
  v5 = objc_msgSend_styledLayout(self, a2, context);
  isInvisible = objc_msgSend_isInvisible(v5, v6, v7);

  if ((isInvisible & 1) == 0)
  {
    objc_msgSend_drawShadowInContext_withChildren_withDrawableOpacity_(self, v9, context, 1, 1);
    objc_msgSend_drawInContextWithoutEffects_withContent_strokeDrawOptions_withOpacity_forAlphaOnly_drawChildren_keepingChildrenPassingTest_(self, v10, context, 1, 7, 1, 0, 0, 0);
    objc_msgSend_opacity(self, v11, v12);
    v15 = v14;
    if (v14 == 1.0)
    {

      objc_msgSend_drawReflectionInContext_drawChildren_(self, v13, context, 1);
    }

    else
    {
      CGContextSaveGState(context);
      CGContextSetAlpha(context, v15);
      objc_msgSend_drawReflectionInContext_drawChildren_(self, v16, context, 1);

      CGContextRestoreGState(context);
    }
  }
}

- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test
{
  testCopy = test;
  v10 = MEMORY[0x277D81150];
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSDStyledRep drawInContextWithoutEffects:withContent:strokeDrawOptions:withOpacity:forAlphaOnly:drawChildren:keepingChildrenPassingTest:]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledRep.m");
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v12, v14, 616, 0, "Abstract method not overridden by %{public}@", v16);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  v20 = MEMORY[0x277CBEAD8];
  v21 = *MEMORY[0x277CBE658];
  v22 = MEMORY[0x277CCACA8];
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v26 = objc_msgSend_stringWithFormat_(v22, v25, @"Abstract method not overridden by %@: %s", v24, "[TSDStyledRep drawInContextWithoutEffects:withContent:strokeDrawOptions:withOpacity:forAlphaOnly:drawChildren:keepingChildrenPassingTest:]");
  v28 = objc_msgSend_exceptionWithName_reason_userInfo_(v20, v27, v21, v26, 0);
  v29 = v28;

  objc_exception_throw(v28);
}

- (void)drawInContextWithoutEffectsForAlphaOnly:(CGContext *)only
{
  if (TSDCGContextIsShadowContext(only))
  {
    v7 = objc_msgSend_blockToExcludeCaptionsAndDescendantsOfCaptions(self, v5, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  objc_msgSend_drawInContextWithoutEffects_withContent_strokeDrawOptions_withOpacity_forAlphaOnly_drawChildren_keepingChildrenPassingTest_(self, v5, only, 1, 7, 0, 1, 1, v7);
}

- (void)setTextureAttributes:(id)attributes textureBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v28.receiver = self;
  v28.super_class = TSDStyledRep;
  attributesCopy = attributes;
  [(TSDRep *)&v28 setTextureAttributes:attributesCopy textureBounds:x, y, width, height];
  v12 = objc_msgSend_layout(self, v10, v11);
  v15 = v12;
  if (v12)
  {
    objc_msgSend_transformInRoot(v12, v13, v14);
  }

  TSUTransformAngleInRadians();
  objc_msgSend_setTextureAngle_(attributesCopy, v17, v18, -v16);

  v21 = objc_msgSend_canvas(self, v19, v20);
  v24 = objc_msgSend_topLevelReps(v21, v22, v23);
  v26 = objc_msgSend_indexOfObject_(v24, v25, self);
  objc_msgSend_setTextureZOrder_(attributesCopy, v27, v26);
}

- (void)calculateTextureClipBounds:(CGRect *)bounds andOffset:(CGPoint *)offset withTransform:(CGAffineTransform *)transform andRectOnCanvas:(CGRect *)canvas textureDescription:(id)description isUsingImageTexture:(BOOL)texture
{
  descriptionCopy = description;
  v17 = descriptionCopy;
  if (!transform)
  {
    v64 = MEMORY[0x277D81150];
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSDStyledRep calculateTextureClipBounds:andOffset:withTransform:andRectOnCanvas:textureDescription:isUsingImageTexture:]");
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStyledRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v68, v65, v67, 659, 0, "invalid nil value for '%{public}s'", "outTransform");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70);
    goto LABEL_16;
  }

  isMagicMove = objc_msgSend_isMagicMove(descriptionCopy, v15, v16);
  v21 = objc_msgSend_canvas(self, v19, v20);
  objc_msgSend_viewScale(v21, v22, v23);

  if (isMagicMove)
  {
    v26 = *&transform->c;
    v77[0] = *&transform->a;
    v77[1] = v26;
    v77[2] = *&transform->tx;
    objc_msgSend_unRotatedTransform_(self, v24, v77);
    v27 = *&v78.c;
    *&transform->a = *&v78.a;
    *&transform->c = v27;
    *&transform->tx = *&v78.tx;
  }

  objc_msgSend_naturalBounds(self, v24, v25);
  v28 = *&transform->c;
  *&v78.a = *&transform->a;
  *&v78.c = v28;
  *&v78.tx = *&transform->tx;
  CGRectApplyAffineTransform(v79, &v78);
  TSUMultiplyRectScalar();
  v75 = v30;
  v76 = v29;
  v73 = v32;
  v74 = v31;
  shouldSeparateShadow = objc_msgSend_shouldSeparateShadow(v17, v33, v34);
  shouldSeparateReflection = objc_msgSend_shouldSeparateReflection(v17, v36, v37);
  v39 = *&transform->c;
  *&v78.a = *&transform->a;
  *&v78.c = v39;
  *&v78.tx = *&transform->tx;
  objc_msgSend_p_clipRectInRootForTransform_includeShadow_includeReflection_(self, v40, &v78, shouldSeparateShadow ^ 1u, shouldSeparateReflection ^ 1u);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  objc_msgSend_clipRectWithoutEffects(self, v49, v50);
  v51 = *&transform->c;
  *&v78.a = *&transform->a;
  *&v78.c = v51;
  *&v78.tx = *&transform->tx;
  v81 = CGRectApplyAffineTransform(v80, &v78);
  x = v81.origin.x;
  y = v81.origin.y;
  width = v81.size.width;
  height = v81.size.height;
  v81.origin.x = v42;
  v81.origin.y = v44;
  v81.size.width = v46;
  v81.size.height = v48;
  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = height;
  if (!CGRectEqualToRect(v81, v83))
  {
    TSUCenterOfRect();
    TSUCenterOfRect();
    TSUMultiplySizeScalar();
    TSUAddSizes();
    TSURectWithCenterAndSize();
  }

  TSUMultiplyRectScalar();
  if (texture)
  {
    TSURoundedRect();
    if (!bounds)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v82 = CGRectIntegral(*&v56);
  *&v60 = CGRectInset(v82, -1.0, -1.0);
  if (bounds)
  {
LABEL_11:
    bounds->origin.x = v60;
    bounds->origin.y = v61;
    bounds->size.width = v62;
    bounds->size.height = v63;
  }

LABEL_12:
  if (offset)
  {
    TSUSubtractPoints();
    offset->x = v71;
    offset->y = v72;
  }

  if (canvas)
  {
    canvas->origin.x = v76;
    canvas->origin.y = v75;
    canvas->size.width = v74;
    canvas->size.height = v73;
  }

LABEL_16:
}

- (id)textureForDescription:(id)description
{
  descriptionCopy = description;
  isMagicMove = objc_msgSend_isMagicMove(descriptionCopy, v5, v6);
  shouldAddMagicMoveObjectOnly = objc_msgSend_shouldAddMagicMoveObjectOnly(descriptionCopy, v8, v9);
  shouldNotAddContainedReps = objc_msgSend_shouldNotAddContainedReps(descriptionCopy, v10, v11);
  v346[0] = MEMORY[0x277D85DD0];
  v346[1] = 3221225472;
  v346[2] = sub_2766E034C;
  v346[3] = &unk_27A6CCF00;
  v346[4] = self;
  v13 = MEMORY[0x277C9C8B0](v346);
  v281 = objc_msgSend_styledInfo(self, v14, v15);
  v18 = objc_msgSend_shadow(v281, v16, v17);
  v21 = objc_msgSend_canvas(self, v19, v20);
  objc_msgSend_viewScale(v21, v22, v23);
  v25 = v24;

  v26 = objc_alloc_init(TSDTextureSet);
  objc_msgSend_setRep_(v26, v27, self);
  objc_msgSend_setIsMagicMove_(v26, v28, isMagicMove);
  objc_msgSend_setObjectType_(v26, v29, 1);
  v284 = shouldNotAddContainedReps;
  if (!objc_msgSend_shouldSeparateShadow(descriptionCopy, v30, v31) || !v18 || shouldAddMagicMoveObjectOnly & 1 | ((objc_msgSend_isEnabled(v18, v32, v33) & 1) == 0))
  {
    goto LABEL_16;
  }

  v309.b = 0.0;
  v309.a = 0.0;
  v34 = objc_msgSend_shouldNotAddContainedReps(descriptionCopy, v32, v33) ^ 1;
  v37 = objc_msgSend_shadow(self, v35, v36);
  objc_msgSend_boundsForRep_(v37, v38, self);

  TSUMultiplyRectScalar();
  v41 = objc_msgSend_shadow(self, v39, v40);
  objc_msgSend_boundsInNaturalSpaceForRep_(v41, v42, self);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v269 = v46;
  v270 = v44;
  v267 = v50;
  v268 = v48;
  TSUMultiplyRectScalar();
  v52 = v51;
  v285 = v53;
  v54 = v25;
  v56 = v55;
  v58 = v57;
  TSURectWithSize();
  v276 = v59;
  v278 = v60;
  v62 = v61;
  v64 = v63;
  v275 = v54;
  if (objc_msgSend_isCurvedShadow(v18, v65, v66))
  {
    v69 = isMagicMove;
    objc_msgSend_naturalBounds(self, v67, v68);
    TSUMultiplyRectScalar();
    TSURectWithSize();
    TSUCenterRectOverRect();
    TSURectWithOriginAndSize();
    v265 = 0x3FE999999999999ALL;
    v266 = 0x3FE6666666666666;
    v263 = 0x3FC999999999999ALL;
    v264 = 0x3FD3333333333333;
    TSURectByExpandingBoundingRectToContentRect();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v276 = 0.2;
    *&v273 = 0.3;
    *&v272 = 0.8;
    v278 = 0.7;
  }

  else
  {
    v272 = v64;
    v273 = v62;
    v69 = isMagicMove;
    v77 = v58;
    v75 = v56;
    v73 = v285;
    v71 = v52;
  }

  v331[0] = MEMORY[0x277D85DD0];
  v331[1] = 3221225472;
  v331[2] = sub_2766E03E8;
  v331[3] = &unk_27A6CCF28;
  v331[4] = self;
  v333 = v270;
  v334 = v269;
  v335 = v268;
  v336 = v267;
  v345 = v34;
  v78 = v18;
  v332 = v78;
  v337 = v71;
  v338 = v73;
  v339 = v75;
  v340 = v77;
  v341 = v52;
  v342 = v285;
  v343 = v56;
  v344 = v58;
  isMagicMove = MEMORY[0x277C9C8B0](v331);
  v271 = v77;
  if (objc_msgSend_isDropShadow(v78, v79, v80))
  {
    objc_msgSend_offset(v78, v81, v82);
    objc_msgSend_angle(v78, v83, v84);
    TSUOriginRotate();
    v25 = v275;
    TSUMultiplyPointScalar();
    v86 = v85;
    v309.a = v85;
    v309.b = v87;
    objc_msgSend_radius(v78, v88, v89);
    v91 = v86 - v90 * v275;
    objc_msgSend_radius(v78, v92, v93);
    v95 = v309.b - v94 * v275;
LABEL_11:
    v107 = *&v272;
    v106 = *&v273;
    goto LABEL_12;
  }

  v25 = v275;
  if (objc_msgSend_isContactShadow(v78, v81, v82))
  {
    objc_msgSend_offset(v78, v96, v97);
    TSUMultiplyPointScalar();
    TSURoundedPoint();
    objc_msgSend_naturalBounds(self, v98, v99);
    objc_msgSend_naturalBounds(self, v100, v101);
    objc_msgSend_convertNaturalRectToUnscaledCanvas_(self, v102, v103);
    TSUCenterRectOverRect();
    TSUMultiplyRectScalar();
    TSUSubtractPoints();
    TSUAddPoints();
    v91 = v104;
    v95 = v105;
    goto LABEL_11;
  }

  v107 = *&v272;
  v106 = *&v273;
  if (objc_msgSend_isCurvedShadow(v78, v96, v97))
  {
    objc_msgSend_naturalBounds(self, v194, v195);
    TSUMultiplyRectScalar();
    objc_msgSend_offsetDelta(v78, v196, v197);
    TSUMultiplyPointScalar();
    TSUAddPoints();
    v91 = v198;
    v95 = v199;
  }

  else
  {
    v91 = *MEMORY[0x277CBF348];
    v95 = *(MEMORY[0x277CBF348] + 8);
  }

LABEL_12:
  v108 = [TSDTexturedRectangle alloc];
  v110 = objc_msgSend_initWithSize_offset_renderBlock_(v108, v109, isMagicMove, v75, v271, v91, v95);
  if (objc_msgSend_isContactShadow(v78, v111, v112))
  {
    objc_msgSend_setTextureType_(v110, v113, 3, v263, v264, v265, v266);
  }

  else
  {
    objc_msgSend_setTextureType_(v110, v113, 2, v263, v264, v265, v266);
  }

  objc_msgSend_opacity(v78, v114, v115);
  objc_msgSend_setTextureOpacity_(v110, v116, v117);
  objc_msgSend_setContentRect_(v110, v118, v119, v276, v106, v107, v278);
  objc_msgSend_addRenderable_(v26, v120, v110);

  LODWORD(isMagicMove) = v69;
  shouldNotAddContainedReps = v284;
LABEL_16:
  v286 = shouldNotAddContainedReps ^ 1;
  memset(&v330, 0, sizeof(v330));
  v121 = objc_msgSend_layout(self, v32, v33);
  v124 = v121;
  if (v121)
  {
    objc_msgSend_transformInRoot(v121, v122, v123);
  }

  else
  {
    memset(&v330, 0, sizeof(v330));
  }

  v328 = 0u;
  v329 = 0u;
  v327 = 0.0;
  v326 = 0.0;
  v324 = 0u;
  v325 = 0u;
  objc_msgSend_calculateTextureClipBounds_andOffset_withTransform_andRectOnCanvas_textureDescription_isUsingImageTexture_(self, v125, &v328, &v326, &v330, &v324, descriptionCopy, 0);
  objc_msgSend_naturalBounds(self, v126, v127);
  v309 = v330;
  CGRectApplyAffineTransform(v348, &v309);
  TSUMultiplyRectScalar();
  TSUNormalizedSubrectInRect();
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v135 = v134;
  v280 = v18;
  if (objc_msgSend_shouldAddVideoBackgroundFill(descriptionCopy, v136, v137))
  {
    v309 = v330;
    v139 = objc_msgSend_newVideoBackgroundFillTextureWithClipBounds_offset_transform_contentRect_(self, v138, &v309, v328, v329, v326, v327, *&v129, *&v131, *&v133, *&v135);
    v141 = v139;
    if (v139)
    {
      objc_msgSend_setTextureType_(v139, v140, 14);
      objc_msgSend_addRenderable_(v26, v142, v141);
    }
  }

  v315[0] = MEMORY[0x277D85DD0];
  v315[1] = 3221225472;
  v315[2] = sub_2766E06F0;
  v315[3] = &unk_27A6CCF50;
  v277 = isMagicMove;
  v322 = isMagicMove;
  v315[4] = self;
  v318 = v328;
  v319 = v329;
  v320 = v25;
  v321 = v330;
  v143 = descriptionCopy;
  v316 = v143;
  v323 = shouldNotAddContainedReps ^ 1;
  v144 = v13;
  v317 = v144;
  v145 = MEMORY[0x277C9C8B0](v315);
  v146 = [TSDTexturedRectangle alloc];
  v279 = v145;
  v148 = objc_msgSend_initWithSize_offset_renderBlock_(v146, v147, v145, v329, v326, v327);
  objc_msgSend_setTextureType_(v148, v149, 5);
  objc_msgSend_setTextureOpacity_(v148, v150, v151, 1.0);
  objc_msgSend_opacity(self, v152, v153);
  objc_msgSend_setTextureOpacity_(v26, v154, v155);
  objc_msgSend_setContentRect_(v148, v156, v157, v129, v131, v133, v135);
  objc_msgSend_addRenderable_(v26, v158, v148);
  v311 = 0;
  v312 = &v311;
  v313 = 0x2020000000;
  v314 = 0;
  v309.a = 0.0;
  *&v309.b = &v309;
  *&v309.c = 0x4010000000;
  *&v309.d = "";
  v159 = *(MEMORY[0x277CBF398] + 16);
  *&v309.tx = *MEMORY[0x277CBF398];
  v310 = v159;
  objc_opt_class();
  v162 = objc_msgSend_layout(self, v160, v161);
  v165 = objc_msgSend_stroke(v162, v163, v164);
  v166 = TSUDynamicCast();

  if (objc_msgSend_shouldSeparateStroke(v143, v167, v168))
  {
    if (!v166)
    {
      goto LABEL_49;
    }
  }

  else
  {
    shouldAddParameterizedStroke = objc_msgSend_shouldAddParameterizedStroke(v143, v169, v170);
    if (v166)
    {
      v172 = shouldAddParameterizedStroke;
    }

    else
    {
      v172 = 0;
    }

    if ((v172 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  if (objc_msgSend_shouldRender(v166, v169, v170))
  {
    if (objc_msgSend_isFrame(v166, v169, v170))
    {
      v173 = v166;
      if (objc_msgSend_hasMask(v173, v174, v175))
      {
        v177 = objc_msgSend_newTextureMaskImageForViewScale_includeFrameMask_maskRect_(self, v176, 1, *&v309.b + 32, v25);
        v312[3] = v177;
      }
    }

    v296[0] = MEMORY[0x277D85DD0];
    v296[1] = 3221225472;
    v296[2] = sub_2766E0840;
    v296[3] = &unk_27A6CCFA0;
    v296[4] = self;
    v302 = v328;
    v303 = v329;
    v308 = isMagicMove;
    v304 = v330;
    v305 = v25;
    v299 = v144;
    v306 = v324;
    v307 = v325;
    v297 = v26;
    v178 = v143;
    v298 = v178;
    v300 = &v311;
    v301 = &v309;
    v179 = MEMORY[0x277C9C8B0](v296);
    if (objc_msgSend_shouldAddParameterizedStroke(v178, v180, v181) && (objc_msgSend_isFrame(v166, v182, v183) & 1) == 0)
    {
      v179[2](v179, 1, 8, 0);
      if (objc_msgSend_shouldReverseStrokeDrawing(v178, v184, v185))
      {
        v186 = 25;
      }

      else
      {
        v186 = 9;
      }

      v179[2](v179, v186, 7, 0);
      v274 = (v179[2])(v179, 2, 9, 0);
      v187 = (v179[2])(v179, 4, 10, 0);
      v190 = objc_msgSend_color(v166, v188, v189);
      objc_msgSend_alphaComponent(v190, v191, v192);
      if (v193 >= 1.0)
      {
      }

      else
      {

        if ((v274 | v187))
        {
          v179[2](v179, 7, 8, 1);
        }
      }
    }

    else if (objc_msgSend_shouldSeparateStroke(v178, v182, v183))
    {
      v179[2](v179, 7, 8, 0);
    }
  }

LABEL_49:
  if (objc_msgSend_shouldAddMasks(v143, v169, v170))
  {
    if (!v312[3])
    {
      v202 = objc_msgSend_newTextureMaskImageForViewScale_includeFrameMask_maskRect_(self, v200, 0, *&v309.b + 32, v25);
      v312[3] = v202;
      if (v202)
      {
        v203 = [TSDTexturedRectangle alloc];
        v205 = objc_msgSend_initWithCGImage_(v203, v204, v312[3]);
        objc_msgSend_setTextureType_(v205, v206, 12);
        TSUMultiplyPointScalar();
        objc_msgSend_setOffset_(v205, v207, v208);
        objc_msgSend_addRenderable_(v26, v209, v205);
      }
    }
  }

  if (objc_msgSend_shouldSeparateReflection(v143, v200, v201))
  {
    v214 = objc_msgSend_reflection(self, v210, v211);
    if (!((v214 == 0) | shouldAddMagicMoveObjectOnly & 1))
    {
      v215 = objc_msgSend_styledLayout(self, v212, v213);
      objc_msgSend_reflectionFrame(v215, v216, v217);
      TSUMultiplyRectScalar();
      v219 = v218;
      v221 = v220;
      v223 = v222;
      v225 = v224;

      v349.origin.x = v219;
      v349.origin.y = v221;
      v349.size.width = v223;
      v349.size.height = v225;
      v350 = CGRectIntegral(v349);
      x = v350.origin.x;
      y = v350.origin.y;
      width = v350.size.width;
      height = v350.size.height;
      objc_msgSend_frameForMagicMove(self, v230, v231);
      v295[0] = MEMORY[0x277D85DD0];
      v295[1] = 3221225472;
      v295[2] = sub_2766E0C38;
      v295[3] = &unk_27A6CCFC8;
      *&v295[5] = x;
      *&v295[6] = y;
      *&v295[7] = width;
      *&v295[8] = height;
      *&v295[9] = v25;
      v295[4] = self;
      v232 = MEMORY[0x277C9C8B0](v295);
      v291[0] = MEMORY[0x277D85DD0];
      v291[1] = 3221225472;
      v291[2] = sub_2766E0CE0;
      v291[3] = &unk_27A6CD018;
      v233 = v232;
      v291[4] = self;
      v292 = v233;
      v294 = v286;
      v293 = v144;
      v287 = MEMORY[0x277C9C8B0](v291);
      v234 = [TSDTexturedRectangle alloc];
      TSUSubtractPoints();
      v236 = v235;
      v238 = v237;
      v240 = objc_msgSend_initWithSize_offset_renderBlock_(v234, v239, v287, width, height, v235, v237);
      objc_msgSend_setTextureType_(v240, v241, 11);
      objc_msgSend_opacity(v214, v242, v243);
      objc_msgSend_setTextureOpacity_(v240, v244, v245);
      objc_msgSend_addRenderable_(v26, v246, v240);
      if (objc_msgSend_shouldAddMasks(v143, v247, v248))
      {
        v288[0] = MEMORY[0x277D85DD0];
        v288[1] = 3221225472;
        v288[2] = sub_2766E0DEC;
        v288[3] = &unk_27A6CD068;
        v283 = v233;
        v288[4] = self;
        v289 = v233;
        v290 = v330;
        v249 = MEMORY[0x277C9C8B0](v288);
        v250 = [TSDTexturedRectangle alloc];
        v252 = objc_msgSend_initWithSize_offset_renderBlock_(v250, v251, v249, width, height, v236, v238);
        objc_msgSend_setTextureType_(v252, v253, 13);
        objc_msgSend_opacity(v214, v254, v255);
        objc_msgSend_setTextureOpacity_(v252, v256, v257);
        objc_msgSend_addRenderable_(v26, v258, v252);

        v233 = v283;
      }
    }
  }

  v259 = v312[3];
  if (v259)
  {
    CGImageRelease(v259);
  }

  objc_msgSend_setTextureAttributes_textureBounds_(self, v210, v26, v328, v329);
  if ((v284 & 1) == 0)
  {
    if (v277)
    {
      objc_msgSend_addChildTexturesToTextureSet_forDescription_passingTest_(self, v260, v26, v143, v144);
    }

    else
    {
      objc_msgSend_addChildTexturesToTextureSet_forDescription_passingTest_(self, v260, v26, v143, 0);
    }
  }

  v261 = v26;

  _Block_object_dispose(&v309, 8);
  _Block_object_dispose(&v311, 8);

  return v261;
}

@end