@interface KNLiveVideoRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4 mixingTypeContext:(id)a5;
+ (id)p_sourceSymbolDrawingHelperForSource:(id)a3 reusingSourceSymbolDrawingHelperIfPossible:(id)a4;
- (BOOL)isPlaceholder;
- (BOOL)p_hasBackgroundFill;
- (BOOL)p_shouldRenderFrameStroke;
- (BOOL)p_shouldRenderStroke:(id)a3;
- (BOOL)p_shouldUseImageTexture;
- (CGImage)newTextureMaskImageForViewScale:(double)a3 includeFrameMask:(BOOL)a4 maskRect:(CGRect *)a5;
- (CGRect)p_antialiasingDefeatedRectForRect:(CGRect)a3 inContext:(CGContext *)a4;
- (CGRect)p_antialiasingDefeatedVideoMaskBoundsInContext:(CGContext *)a3;
- (KNLiveVideoInfo)liveVideoInfo;
- (KNLiveVideoLayout)liveVideoLayout;
- (KNLiveVideoRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)newVideoBackgroundFillTextureWithClipBounds:(CGRect)a3 offset:(CGPoint)a4 transform:(CGAffineTransform *)a5 contentRect:(CGRect)a6;
- (id)p_effectiveColorSet;
- (id)p_posterImageProvider;
- (id)textureForDescription:(id)a3;
- (void)calculateTextureClipBounds:(CGRect *)a3 andOffset:(CGPoint *)a4 withTransform:(CGAffineTransform *)a5 andRectOnCanvas:(CGRect *)a6 textureDescription:(id)a7 isUsingImageTexture:(BOOL)a8;
- (void)dealloc;
- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9;
- (void)p_drawBackgroundFillRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 opacity:(double)a6 withMask:(BOOL)a7 forShadowOrHitTest:(BOOL)a8;
- (void)p_drawOffStateRepresentationInContext:(CGContext *)a3 forShadowOrHitTest:(BOOL)a4;
- (void)p_drawPosterImageWithProvider:(id)a3 inContext:(CGContext *)a4;
- (void)p_drawShadowOrHitTestImageInContext:(CGContext *)a3;
- (void)p_drawSymbolInContext:(CGContext *)a3;
- (void)p_updateFrameRep;
- (void)willBeRemoved;
@end

@implementation KNLiveVideoRep

- (KNLiveVideoRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v5.receiver = self;
  v5.super_class = KNLiveVideoRep;
  return [(TSDRep *)&v5 initWithLayout:a3 canvas:a4];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = KNLiveVideoRep;
  [(TSDStyledRep *)&v2 dealloc];
}

- (KNLiveVideoInfo)liveVideoInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUCheckedDynamicCast();

  return v6;
}

- (KNLiveVideoLayout)liveVideoLayout
{
  objc_opt_class();
  v5 = objc_msgSend_layout(self, v3, v4);
  v6 = TSUCheckedDynamicCast();

  return v6;
}

- (void)willBeRemoved
{
  v2.receiver = self;
  v2.super_class = KNLiveVideoRep;
  [(TSDRep *)&v2 willBeRemoved];
}

- (BOOL)isPlaceholder
{
  v3 = objc_msgSend_liveVideoInfo(self, a2, v2);
  isPlaceholder = objc_msgSend_isPlaceholder(v3, v4, v5);

  return isPlaceholder;
}

- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9
{
  if (a6)
  {
    objc_msgSend_opacity(self, a2, a3, a4, a5, a6, a7, a8, 1.0);
  }

  MEMORY[0x2821F9670](self, sel_p_drawInContext_withContent_withStroke_opacity_withMask_forShadowOrHitTest_, a3);
}

- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 opacity:(double)a6 withMask:(BOOL)a7 forShadowOrHitTest:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v11 = a5;
  v12 = a4;
  v15 = objc_msgSend_liveVideoLayout(self, a2, a3);
  v18 = v15;
  if (v15)
  {
    if ((objc_msgSend_isInvisible(v15, v16, v17) & 1) == 0)
    {
      objc_msgSend_p_updateFrameRep(self, v19, v20);
      v23 = objc_msgSend_layout(self, v21, v22);
      v26 = objc_msgSend_stroke(v23, v24, v25);

      if (v26 && (objc_msgSend_shouldRender(v26, v27, v28) & 1) == 0)
      {

        v26 = 0;
      }

      v29 = a6 < 1.0 && v11;
      v30 = v29 && v12;
      if (v29 && v12 && (CGContextSaveGState(a3), CGContextSetAlpha(a3, a6), v26))
      {
        CGContextBeginTransparencyLayer(a3, 0);
        v31 = 1;
      }

      else
      {
        v31 = 0;
      }

      objc_msgSend_p_antialiasingDefeatedVideoMaskBoundsInContext_(self, v27, a3);
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      if (v12)
      {
        CGContextSaveGState(a3);
        if (v9 && *&self->super.mFlags)
        {
          objc_opt_class();
          v48 = TSUDynamicCast();
          v51 = v48;
          if (v48 && objc_msgSend_hasMask(v48, v49, v50))
          {
            objc_msgSend_coverageRect_(v51, v52, v53, v40, v42, v44, v46);
            objc_msgSend_applyMaskForRectWithCoverage_toContext_(*&self->super.mFlags, v54, a3);
          }
        }

        objc_msgSend_p_drawOffStateRepresentationInContext_forShadowOrHitTest_(self, v47, a3, v8);
        CGContextRestoreGState(a3);
      }

      if (v11 && v26)
      {
        CGContextSaveGState(a3);
        if (objc_msgSend_isFrame(v26, v55, v56))
        {
          if (objc_msgSend_shouldRenderFrameStroke(v18, v57, v58))
          {
            v59 = *&self->super.mFlags;
            CGContextGetCTM(&v68, a3);
            TSUTransformScale();
            objc_msgSend_frameRect_inContext_withTotalScale_(v59, v60, a3, v40, v42, v44, v46, v61);
          }
        }

        else
        {
          v62 = objc_msgSend_videoMaskPathForBounds_(v18, v57, v58, v40, v42, v44, v46);
          v63 = v62;
          v66 = objc_msgSend_CGPath(v63, v64, v65);
          objc_msgSend_paintPath_inContext_(v26, v67, v66, a3);
        }

        CGContextRestoreGState(a3);
      }

      if (v31)
      {
        CGContextEndTransparencyLayer(a3);
      }

      if (v30)
      {
        CGContextRestoreGState(a3);
      }
    }
  }

  else
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[KNLiveVideoRep p_drawInContext:withContent:withStroke:opacity:withMask:forShadowOrHitTest:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 192, 0, "invalid nil value for '%{public}s'", "liveVideoLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
  }
}

- (void)p_drawOffStateRepresentationInContext:(CGContext *)a3 forShadowOrHitTest:(BOOL)a4
{
  if (a4)
  {

    MEMORY[0x2821F9670](self, sel_p_drawShadowOrHitTestImageInContext_, a3);
  }

  else
  {
    objc_msgSend_p_antialiasingDefeatedVideoMaskBoundsInContext_(self, a2, a3);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v16 = objc_msgSend_liveVideoLayout(self, v14, v15);
    v26 = objc_msgSend_videoMaskPathForBounds_(v16, v17, v18, v7, v9, v11, v13);

    v19 = v26;
    objc_msgSend_CGPath(v26, v20, v21);
    CGContextAddPathSafe();
    CGContextClip(a3);
    v25 = objc_msgSend_p_posterImageProvider(self, v22, v23);
    if (v25)
    {
      objc_msgSend_p_drawPosterImageWithProvider_inContext_(self, v24, v25, a3);
    }

    else
    {
      objc_msgSend_p_drawSymbolInContext_(self, v24, a3);
    }
  }
}

- (void)p_drawShadowOrHitTestImageInContext:(CGContext *)a3
{
  objc_msgSend_p_antialiasingDefeatedVideoMaskBoundsInContext_(self, a2, a3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v15 = objc_msgSend_liveVideoLayout(self, v13, v14);
  v27 = objc_msgSend_videoMaskPathForBounds_(v15, v16, v17, v6, v8, v10, v12);

  v20 = objc_msgSend_blackColor(MEMORY[0x277D81180], v18, v19);
  v23 = objc_msgSend_CGColor(v20, v21, v22);
  CGContextSetFillColorWithColor(a3, v23);

  v24 = v27;
  objc_msgSend_CGPath(v27, v25, v26);
  CGContextAddPathSafe();
  CGContextFillPath(a3);
}

- (void)p_drawPosterImageWithProvider:(id)a3 inContext:(CGContext *)a4
{
  v27 = a3;
  objc_msgSend_naturalSize(v27, v6, v7);
  v9 = v8;
  v11 = v10;
  v14 = objc_msgSend_liveVideoLayout(self, v12, v13);
  objc_msgSend_videoBoundsForNaturalSize_(v14, v15, v16, v9, v11);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  objc_msgSend_p_antialiasingDefeatedRectForRect_inContext_(self, v25, a4, v18, v20, v22, v24);
  objc_msgSend_drawImageInContext_rect_(v27, v26, a4);
}

- (void)p_drawSymbolInContext:(CGContext *)a3
{
  v58[2] = *MEMORY[0x277D85DE8];
  objc_msgSend_p_antialiasingDefeatedVideoMaskBoundsInContext_(self, a2, a3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  CGContextClipToRectSafe();
  v15 = objc_msgSend_p_effectiveColorSet(self, v13, v14);
  v16 = TSUSRGBColorSpace();
  v19 = objc_msgSend_backgroundGradientTopColor(v15, v17, v18);
  v58[0] = objc_msgSend_CGColor(v19, v20, v21);
  v24 = objc_msgSend_backgroundGradientBottomColor(v15, v22, v23);
  v58[1] = objc_msgSend_CGColor(v24, v25, v26);
  v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, v58, 2);
  v29 = CGGradientCreateWithColors(v16, v28, 0);

  v61.origin.x = v6;
  v61.origin.y = v8;
  v61.size.width = v10;
  v61.size.height = v12;
  MidX = CGRectGetMidX(v61);
  v62.origin.x = v6;
  v62.origin.y = v8;
  v62.size.width = v10;
  v62.size.height = v12;
  MinY = CGRectGetMinY(v62);
  v63.origin.x = v6;
  v63.origin.y = v8;
  v63.size.width = v10;
  v63.size.height = v12;
  v32 = CGRectGetMidX(v63);
  v64.origin.x = v6;
  v64.origin.y = v8;
  v64.size.width = v10;
  v64.size.height = v12;
  v60.y = CGRectGetMaxY(v64);
  v59.x = MidX;
  v59.y = MinY;
  v60.x = v32;
  CGContextDrawLinearGradient(a3, v29, v59, v60, 0);
  CGGradientRelease(v29);
  v65.origin.x = v6;
  v65.origin.y = v8;
  v65.size.width = v10;
  v65.size.height = v12;
  v33 = CGRectGetWidth(v65) + -80.0;
  v66.origin.x = v6;
  v66.origin.y = v8;
  v66.size.width = v10;
  v66.size.height = v12;
  v34 = fmax(v33, 50.0);
  v35 = fmax(CGRectGetHeight(v66) + -80.0, 50.0);
  v67.origin.x = v6;
  v67.origin.y = v8;
  v67.size.width = v10;
  v67.size.height = v12;
  Width = CGRectGetWidth(v67);
  v68.origin.x = v6;
  v68.origin.y = v8;
  v68.size.width = v10;
  v68.size.height = v12;
  Height = CGRectGetHeight(v68);
  if (v34 <= Width && v35 <= Height)
  {
    TSUCenterOfRect();
    TSURectWithCenterAndSize();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = objc_opt_class();
    v50 = objc_msgSend_liveVideoInfo(self, v48, v49);
    v53 = objc_msgSend_source(v50, v51, v52);
    v55 = objc_msgSend_p_sourceSymbolDrawingHelperForSource_reusingSourceSymbolDrawingHelperIfPossible_(v47, v54, v53, self->_frameRep);
    frameRep = self->_frameRep;
    self->_frameRep = v55;

    objc_msgSend_drawIn_context_includeBackground_(self->_frameRep, v57, a3, 0, v40, v42, v44, v46);
  }
}

+ (id)p_sourceSymbolDrawingHelperForSource:(id)a3 reusingSourceSymbolDrawingHelperIfPossible:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_symbolAbbreviationText(v5, v7, v8);
  if (v5)
  {
    v12 = objc_msgSend_symbolImageIdentifier(v5, v9, v10);
    v15 = objc_msgSend_symbolTintColorIdentifier(v5, v13, v14);
  }

  else
  {
    v12 = objc_msgSend_defaultSymbolImageIdentifier(KNLiveVideoSource, v9, v10);
    v15 = objc_msgSend_defaultSymbolTintColorIdentifier(KNLiveVideoSource, v18, v19);
  }

  v20 = v15;
  if (!v6)
  {
    goto LABEL_11;
  }

  v21 = objc_msgSend_abbreviationText(v6, v16, v17);
  v24 = v21;
  if (v11 | v21 && !objc_msgSend_isEqual_(v21, v22, v11) || objc_msgSend_imageIdentifier(v6, v22, v23) != v12)
  {

    goto LABEL_11;
  }

  v27 = objc_msgSend_tintColorIdentifier(v6, v25, v26);

  v28 = v6;
  if (v27 != v20)
  {
LABEL_11:
    v29 = [_TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper alloc];
    v28 = objc_msgSend_initWithAbbreviationText_imageIdentifier_tintColorIdentifier_(v29, v30, v11, v12, v20);
  }

  return v28;
}

- (CGRect)p_antialiasingDefeatedVideoMaskBoundsInContext:(CGContext *)a3
{
  v5 = objc_msgSend_liveVideoLayout(self, a2, a3);
  objc_msgSend_videoMaskBounds(v5, v6, v7);
  objc_msgSend_p_antialiasingDefeatedRectForRect_inContext_(self, v8, a3);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)p_effectiveColorSet
{
  v3 = objc_msgSend_liveVideoInfo(self, a2, v2);
  v6 = objc_msgSend_source(v3, v4, v5);

  v9 = objc_msgSend_posterImageData(v6, v7, v8);

  if (v9)
  {
    objc_msgSend_colorSetForSymbolTintColorIdentifier_(KNLiveVideoSource, v10, 0);
  }

  else
  {
    v12 = objc_msgSend_symbolTintColorIdentifier(v6, v10, v11);
    objc_msgSend_colorSetForSymbolTintColorIdentifier_(KNLiveVideoSource, v13, v12);
  }
  v14 = ;

  return v14;
}

- (id)p_posterImageProvider
{
  v3 = objc_msgSend_liveVideoInfo(self, a2, v2);
  v6 = objc_msgSend_source(v3, v4, v5);
  v9 = objc_msgSend_posterImageData(v6, v7, v8);

  if (v9 && (objc_msgSend_needsDownload(v9, v10, v11) & 1) == 0)
  {
    objc_opt_class();
    v15 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], v13, v14);
    v17 = objc_msgSend_providerForData_shouldValidate_(v15, v16, v9, 1);
    v18 = TSUDynamicCast();

    objc_msgSend_naturalSize(v18, v19, v20);
    v22 = v21;
    v24 = v23;
    v12 = 0;
    if ((objc_msgSend_isError(v18, v25, v26) & 1) == 0 && v22 > 0.0 && v24 > 0.0)
    {
      v12 = v18;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGRect)p_antialiasingDefeatedRectForRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = objc_msgSend_canvas(self, a2, a4);
  if (!objc_msgSend_isDrawingIntoPDF(v9, v10, v11) || (objc_msgSend_isPrinting(v9, v12, v13) & 1) == 0)
  {
    memset(&v40, 0, sizeof(v40));
    v14 = objc_msgSend_layout(self, v12, v13);
    v17 = objc_msgSend_geometryInRoot(v14, v15, v16);
    v20 = v17;
    if (v17)
    {
      objc_msgSend_transform(v17, v18, v19);
    }

    else
    {
      memset(&v40, 0, sizeof(v40));
    }

    v39 = v40;
    if (TSUIsTransformAxisAligned())
    {
      v39 = v40;
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = width;
      v41.size.height = height;
      CGRectApplyAffineTransform(v41, &v39);
      TSDCGContextAssociatedScreenScale();
      v23 = objc_msgSend_canvas(self, v21, v22);
      objc_msgSend_viewScale(v23, v24, v25);

      TSURoundedRectForScale();
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v38 = v40;
      CGAffineTransformInvert(&v39, &v38);
      v42.origin.x = v27;
      v42.origin.y = v29;
      v42.size.width = v31;
      v42.size.height = v33;
      v43 = CGRectApplyAffineTransform(v42, &v39);
      x = v43.origin.x;
      y = v43.origin.y;
      width = v43.size.width;
      height = v43.size.height;
    }
  }

  v34 = x;
  v35 = y;
  v36 = width;
  v37 = height;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (void)p_updateFrameRep
{
  v4 = objc_msgSend_layout(self, a2, v2);
  v20 = objc_msgSend_stroke(v4, v5, v6);

  if (objc_msgSend_p_shouldRenderStroke_(self, v7, v20) && objc_msgSend_isFrame(v20, v8, v9))
  {
    objc_opt_class();
    v12 = TSUCheckedDynamicCast();
    v13 = *&self->super.mFlags;
    if (!v13)
    {
      goto LABEL_10;
    }

    v14 = objc_msgSend_frame(v13, v10, v11);

    v15 = *&self->super.mFlags;
    if (v14 != v12)
    {
      *&self->super.mFlags = 0;

      v15 = *&self->super.mFlags;
    }

    if (!v15)
    {
LABEL_10:
      if (v12)
      {
        v16 = objc_alloc(MEMORY[0x277D80258]);
        v18 = objc_msgSend_initWithTSDFrame_(v16, v17, v12);
        v19 = *&self->super.mFlags;
        *&self->super.mFlags = v18;
      }
    }
  }

  else
  {
    v12 = *&self->super.mFlags;
    if (!v12)
    {
      goto LABEL_13;
    }

    *&self->super.mFlags = 0;
  }

LABEL_13:
}

- (BOOL)p_shouldRenderFrameStroke
{
  v3 = objc_msgSend_liveVideoLayout(self, a2, v2);
  shouldRenderFrameStroke = objc_msgSend_shouldRenderFrameStroke(v3, v4, v5);

  return shouldRenderFrameStroke;
}

- (BOOL)p_shouldRenderStroke:(id)a3
{
  v6 = a3;
  if (v6 && objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5) != v6 && objc_msgSend_shouldRender(v6, v7, v8))
  {
    if (objc_msgSend_isFrame(v6, v9, v10))
    {
      shouldRenderFrameStroke = objc_msgSend_p_shouldRenderFrameStroke(self, v11, v12);
    }

    else
    {
      shouldRenderFrameStroke = 1;
    }
  }

  else
  {
    shouldRenderFrameStroke = 0;
  }

  return shouldRenderFrameStroke;
}

- (BOOL)p_hasBackgroundFill
{
  v3 = objc_msgSend_liveVideoLayout(self, a2, v2);
  v6 = objc_msgSend_backgroundKind(v3, v4, v5) == 1;

  return v6;
}

- (void)p_drawBackgroundFillRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = objc_msgSend_liveVideoLayout(self, a2, a4);
  v13 = objc_msgSend_backgroundFill(v9, v10, v11);

  objc_msgSend_paintRect_inContext_(v13, v12, a4, x, y, width, height);
}

- (id)textureForDescription:(id)a3
{
  v8.receiver = self;
  v8.super_class = KNLiveVideoRep;
  v3 = [(TSDStyledRep *)&v8 textureForDescription:a3];
  v5 = v3;
  if (v3)
  {
    objc_msgSend_setObjectType_(v3, v4, 10);
    v6 = v5;
  }

  return v5;
}

- (CGImage)newTextureMaskImageForViewScale:(double)a3 includeFrameMask:(BOOL)a4 maskRect:(CGRect *)a5
{
  v6 = a4;
  objc_msgSend_p_updateFrameRep(self, a2, a4);
  v11 = objc_msgSend_liveVideoLayout(self, v9, v10);
  v14 = v11;
  if (v11)
  {
    isVideoMaskPathRectangular = objc_msgSend_isVideoMaskPathRectangular(v11, v12, v13);
    objc_opt_class();
    v18 = objc_msgSend_layout(self, v16, v17);
    v21 = objc_msgSend_stroke(v18, v19, v20);
    v22 = TSUDynamicCast();

    if (v6 && v22 && *&self->super.mFlags)
    {
      if ((objc_msgSend_hasMask(v22, v23, v24) & 1) == 0 && ((isVideoMaskPathRectangular ^ 1) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (isVideoMaskPathRectangular)
    {
LABEL_7:
      Image = 0;
LABEL_23:

      goto LABEL_24;
    }

    objc_msgSend_videoMaskBounds(v14, v23, v24);
    if (v6)
    {
      objc_msgSend_coverageRect_(v22, v26, v27, v28, v29, v30, v31);
      v33 = v32;
      v75 = v34;
      v36 = v35;
      v38 = v37;
      if (objc_msgSend_shouldRenderForSizeIncludingCoverage_(v22, v39, v40, v35, v37))
      {
        Image = objc_msgSend_newFrameForMask_size_forCALayer_viewScale_(*&self->super.mFlags, v41, 1, 1, v36, v38, a3);
        if ((isVideoMaskPathRectangular & 1) == 0)
        {
LABEL_18:
          v73 = v36;
          v74 = v38;
          TSUMultiplySizeScalar();
          TSURoundedSize();
          TSURectWithSize();
          v71 = v50;
          v72 = v51;
          v53 = v52;
          v55 = v54;
          v56 = TSDBitmapContextCreate();
          v49 = v75;
          TSUSubtractPoints();
          TSURectWithOriginAndSize();
          TSUMultiplyRectScalar();
          TSURoundedRect();
          v59 = objc_msgSend_videoMaskPathForBounds_(v14, v57, v58);
          v60 = v59;
          objc_msgSend_CGPath(v60, v61, v62);

          CGContextAddPathSafe();
          CGContextClip(v56);
          if (Image)
          {
            CGContextSaveGState(v56);
            v76.origin.x = v71;
            v76.origin.y = v72;
            v76.size.width = v53;
            v76.size.height = v55;
            Height = CGRectGetHeight(v76);
            CGContextTranslateCTM(v56, 0.0, Height);
            CGContextScaleCTM(v56, 1.0, -1.0);
            v77.origin.x = v71;
            v77.origin.y = v72;
            v77.size.width = v53;
            v77.size.height = v55;
            CGContextDrawImage(v56, v77, Image);
            CGContextRestoreGState(v56);
          }

          else
          {
            v66 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v63, v64);
            v69 = objc_msgSend_CGColor(v66, v67, v68);
            CGContextSetFillColorWithColor(v56, v69);

            v78.origin.x = v71;
            v78.origin.y = v72;
            v78.size.width = v53;
            v78.size.height = v55;
            CGContextFillRect(v56, v78);
          }

          CGImageRelease(Image);
          Image = CGBitmapContextCreateImage(v56);
          CGContextRelease(v56);
          v36 = v73;
          v38 = v74;
          if (!a5)
          {
            goto LABEL_23;
          }

LABEL_22:
          a5->origin.x = v33;
          a5->origin.y = v49;
          a5->size.width = v36;
          a5->size.height = v38;
          goto LABEL_23;
        }
      }

      else
      {
        Image = 0;
        if ((isVideoMaskPathRectangular & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      Image = 0;
      v38 = v31;
      v36 = v30;
      v75 = v29;
      v33 = v28;
      if ((isVideoMaskPathRectangular & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v49 = v75;
    if (!a5)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v42 = MEMORY[0x277D81150];
  v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[KNLiveVideoRep newTextureMaskImageForViewScale:includeFrameMask:maskRect:]");
  v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoRep.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 2721, 0, "invalid nil value for '%{public}s'", "liveVideoLayout");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
  Image = 0;
LABEL_24:

  return Image;
}

- (id)newVideoBackgroundFillTextureWithClipBounds:(CGRect)a3 offset:(CGPoint)a4 transform:(CGAffineTransform *)a5 contentRect:(CGRect)a6
{
  y = a4.y;
  x = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v11 = a3.origin.y;
  v12 = a3.origin.x;
  if (!objc_msgSend_p_hasBackgroundFill(self, a2, a5))
  {
    return 0;
  }

  v16 = objc_msgSend_liveVideoLayout(self, v14, v15);
  v19 = objc_msgSend_backgroundFill(v16, v17, v18);

  if (v19 && (objc_msgSend_isClear(v19, v20, v21) & 1) == 0)
  {
    v25 = objc_msgSend_canvas(self, v22, v23);
    objc_msgSend_viewScale(v25, v26, v27);
    v29 = v28;

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_275DD0518;
    aBlock[3] = &unk_27A698EB0;
    *&aBlock[5] = v12;
    *&aBlock[6] = v11;
    *&aBlock[7] = width;
    *&aBlock[8] = height;
    aBlock[9] = v29;
    v30 = *&a5->c;
    v40 = *&a5->a;
    v41 = v30;
    v42 = *&a5->tx;
    aBlock[4] = self;
    v31 = _Block_copy(aBlock);
    v32 = objc_alloc(MEMORY[0x277D803E8]);
    v24 = objc_msgSend_initWithSize_offset_renderBlock_(v32, v33, v31, width, height, x, y);
    objc_msgSend_setTextureOpacity_(v24, v34, v35, 1.0);
    objc_msgSend_setContentRect_(v24, v36, v37, a6.origin.x, a6.origin.y, a6.size.width, a6.size.height);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)p_shouldUseImageTexture
{
  v4 = objc_msgSend_layout(self, a2, v2);
  v7 = objc_msgSend_stroke(v4, v5, v6);

  if (v7)
  {
    v9 = objc_msgSend_p_shouldRenderStroke_(self, v8, v7) ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)calculateTextureClipBounds:(CGRect *)a3 andOffset:(CGPoint *)a4 withTransform:(CGAffineTransform *)a5 andRectOnCanvas:(CGRect *)a6 textureDescription:(id)a7 isUsingImageTexture:(BOOL)a8
{
  v13 = a7;
  shouldUseImageTexture = objc_msgSend_p_shouldUseImageTexture(self, v14, v15);
  v17.receiver = self;
  v17.super_class = KNLiveVideoRep;
  [(TSDStyledRep *)&v17 calculateTextureClipBounds:a3 andOffset:a4 withTransform:a5 andRectOnCanvas:a6 textureDescription:v13 isUsingImageTexture:shouldUseImageTexture];
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4 mixingTypeContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  objc_opt_class();
  v10 = TSUDynamicCast();

  v13 = objc_msgSend_liveVideoInfo(v10, v11, v12);
  objc_opt_class();
  v14 = TSUDynamicCast();

  v17 = objc_msgSend_liveVideoInfo(v14, v15, v16);
  v19 = v17;
  v20 = 0.0;
  if (v10 && v13 && v14 && v17)
  {
    if (objc_msgSend_mixingTypeWithObject_context_(v13, v18, v17, v7) == 1)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = 1.0;
    }
  }

  return v20;
}

@end