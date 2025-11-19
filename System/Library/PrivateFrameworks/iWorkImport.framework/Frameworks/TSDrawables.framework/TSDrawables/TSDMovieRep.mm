@interface TSDMovieRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4 mixingTypeContext:(id)a5;
- (BOOL)p_shouldUseImageTexture;
- (CGImage)newTextureMaskImageForViewScale:(double)a3 includeFrameMask:(BOOL)a4 maskRect:(CGRect *)a5;
- (TSDMovieInfo)movieInfo;
- (TSDMovieRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)movieLayout;
- (id)textureForDescription:(id)a3;
- (void)calculateTextureClipBounds:(CGRect *)a3 andOffset:(CGPoint *)a4 withTransform:(CGAffineTransform *)a5 andRectOnCanvas:(CGRect *)a6 textureDescription:(id)a7 isUsingImageTexture:(BOOL)a8;
- (void)dealloc;
- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9;
- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 withOpacity:(double)a6 withMask:(BOOL)a7 forShadowOrHitTest:(BOOL)a8;
- (void)p_drawPosterImageInContext:(CGContext *)a3 forShadowOrHitTest:(BOOL)a4;
- (void)setAlternatePosterImage:(CGImage *)a3;
- (void)updateFrameRep;
- (void)updateFromLayout;
- (void)willBeRemoved;
@end

@implementation TSDMovieRep

- (TSDMovieRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v10.receiver = self;
  v10.super_class = TSDMovieRep;
  v4 = [(TSDRep *)&v10 initWithLayout:a3 canvas:a4];
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_movieInfo(v4, v5, v6);

    if (!v8)
    {

      return 0;
    }
  }

  return v7;
}

- (TSDMovieInfo)movieInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (id)movieLayout
{
  objc_opt_class();
  v5 = objc_msgSend_layout(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (void)dealloc
{
  CGImageRelease(self->super.mFrameRep);
  v3.receiver = self;
  v3.super_class = TSDMovieRep;
  [(TSDMediaRep *)&v3 dealloc];
}

- (void)updateFromLayout
{
  v2.receiver = self;
  v2.super_class = TSDMovieRep;
  [(TSDRep *)&v2 updateFromLayout];
}

- (void)updateFrameRep
{
  v2.receiver = self;
  v2.super_class = TSDMovieRep;
  [(TSDMediaRep *)&v2 updateFrameRep];
}

- (void)setAlternatePosterImage:(CGImage *)a3
{
  if (self->super.mFrameRep != a3)
  {
    CGImageRetain(a3);
    CGImageRelease(self->super.mFrameRep);
    self->super.mFrameRep = a3;
  }
}

- (void)p_drawPosterImageInContext:(CGContext *)a3 forShadowOrHitTest:(BOOL)a4
{
  CGContextSaveGState(a3);
  v8 = objc_msgSend_mediaLayout(self, v6, v7);
  objc_msgSend_boundsForStandardKnobs(v8, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v21 = objc_msgSend_alternatePosterImage(self, v19, v20);
  if (v21)
  {
    v24 = v21;
    v39.origin.x = v12;
    v39.origin.y = v14;
    v39.size.width = v16;
    v39.size.height = v18;
    MinY = CGRectGetMinY(v39);
    v40.origin.x = v12;
    v40.origin.y = v14;
    v40.size.width = v16;
    v40.size.height = v18;
    MaxY = CGRectGetMaxY(v40);
    CGContextTranslateCTM(a3, 0.0, MinY + MaxY);
    CGContextScaleCTM(a3, 1.0, -1.0);
    TSDCGContextDrawImageRecordingMaxHeadroom(a3, v24, v12, v14, v16, v18);
  }

  else
  {
    v27 = objc_msgSend_sharedPool(TSDImageProviderPool, v22, v23);
    v30 = objc_msgSend_movieInfo(self, v28, v29);
    v33 = objc_msgSend_posterImageData(v30, v31, v32);
    if (v33)
    {
      objc_opt_class();
      v35 = objc_msgSend_providerForData_shouldValidate_(v27, v34, v33, 1);
      v36 = TSUDynamicCast();

      if (v36)
      {
        objc_msgSend_drawImageInContext_rect_(v36, v37, a3, v12, v14, v16, v18);
      }
    }
  }

  CGContextRestoreGState(a3);
}

- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 withOpacity:(double)a6 withMask:(BOOL)a7 forShadowOrHitTest:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v11 = a5;
  v12 = a4;
  v15 = objc_msgSend_styledLayout(self, a2, a3);
  isInvisible = objc_msgSend_isInvisible(v15, v16, v17);

  if ((isInvisible & 1) == 0)
  {
    objc_msgSend_updateFrameRep(self, v19, v20);
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

    CGContextSaveGState(a3);
    v34 = objc_msgSend_mediaLayout(self, v32, v33);
    objc_msgSend_boundsForStandardKnobs(v34, v35, v36);
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    if (v12)
    {
      if (v9)
      {
        v47 = objc_msgSend_frameRep(self, v37, v38);
        if (v47)
        {
          v49 = v47;
          hasMask = objc_msgSend_hasMask(v26, v37, v48);

          if (hasMask)
          {
            objc_msgSend_coverageRect_(v26, v37, v51, v40, v42, v44, v46);
            v53 = v52;
            v55 = v54;
            v57 = v56;
            v59 = v58;
            v62 = objc_msgSend_frameRep(self, v60, v61);
            objc_msgSend_applyMaskForRectWithCoverage_toContext_(v62, v63, a3, v53, v55, v57, v59);
          }
        }
      }

      objc_msgSend_p_drawPosterImageInContext_forShadowOrHitTest_(self, v37, a3, v8);
    }

    CGContextRestoreGState(a3);
    if (v11 && v26)
    {
      CGContextSaveGState(a3);
      if (objc_msgSend_isFrame(v26, v64, v65))
      {
        if (objc_msgSend_shouldRenderFrameStroke(v34, v66, v67))
        {
          v70 = objc_msgSend_frameRep(self, v68, v69);
          CGContextGetCTM(&v73, a3);
          TSUTransformScale();
          objc_msgSend_frameRect_inContext_withTotalScale_(v70, v71, a3, v40, v42, v44, v46, v72);
        }
      }

      else
      {
        objc_msgSend_paintRect_inContext_(v26, v66, a3, v40, v42, v44, v46);
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

- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9
{
  if (a6)
  {
    objc_msgSend_opacity(self, a2, a3, a4, a5, a6, a7, a8, 1.0);
  }

  MEMORY[0x2821F9670](self, sel_p_drawInContext_withContent_withStroke_withOpacity_withMask_forShadowOrHitTest_, a3);
}

- (id)textureForDescription:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSDMovieRep;
  v3 = [(TSDStyledRep *)&v6 textureForDescription:a3];
  objc_msgSend_setObjectType_(v3, v4, 6);

  return v3;
}

- (CGImage)newTextureMaskImageForViewScale:(double)a3 includeFrameMask:(BOOL)a4 maskRect:(CGRect *)a5
{
  if (!a4)
  {
    return 0;
  }

  objc_opt_class();
  v10 = objc_msgSend_layout(self, v8, v9);
  v13 = objc_msgSend_stroke(v10, v11, v12);
  v14 = TSUDynamicCast();

  objc_msgSend_updateFrameRep(self, v15, v16);
  if (!v14)
  {
    goto LABEL_10;
  }

  if (!objc_msgSend_hasMask(v14, v17, v18))
  {
    goto LABEL_10;
  }

  v21 = objc_msgSend_frameRep(self, v19, v20);

  if (!v21)
  {
    goto LABEL_10;
  }

  v24 = objc_msgSend_mediaLayout(self, v22, v23);
  objc_msgSend_boundsForStandardKnobs(v24, v25, v26);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  objc_msgSend_coverageRect_(v14, v35, v36, v28, v30, v32, v34);
  v43 = v41;
  v44 = v42;
  if (a5)
  {
    a5->origin.x = v39;
    a5->origin.y = v40;
    a5->size.width = v41;
    a5->size.height = v42;
  }

  if (objc_msgSend_shouldRenderForSizeIncludingCoverage_(v14, v37, v38, v41, v42))
  {
    v47 = objc_msgSend_frameRep(self, v45, v46);
    v49 = objc_msgSend_newFrameForMask_size_forCALayer_viewScale_(v47, v48, 1, 1, v43, v44, a3);
  }

  else
  {
LABEL_10:
    v49 = 0;
  }

  return v49;
}

- (void)willBeRemoved
{
  v2.receiver = self;
  v2.super_class = TSDMovieRep;
  [(TSDMediaRep *)&v2 willBeRemoved];
}

- (BOOL)p_shouldUseImageTexture
{
  v3 = self;
  v4 = objc_msgSend_layout(self, a2, v2);
  v7 = objc_msgSend_stroke(v4, v5, v6);

  LOBYTE(v3) = objc_msgSend_i_shouldRenderStroke_(v3, v8, v7);
  return v3 ^ 1;
}

- (void)calculateTextureClipBounds:(CGRect *)a3 andOffset:(CGPoint *)a4 withTransform:(CGAffineTransform *)a5 andRectOnCanvas:(CGRect *)a6 textureDescription:(id)a7 isUsingImageTexture:(BOOL)a8
{
  v13 = a7;
  shouldUseImageTexture = objc_msgSend_p_shouldUseImageTexture(self, v14, v15);
  v17.receiver = self;
  v17.super_class = TSDMovieRep;
  [(TSDStyledRep *)&v17 calculateTextureClipBounds:a3 andOffset:a4 withTransform:a5 andRectOnCanvas:a6 textureDescription:v13 isUsingImageTexture:shouldUseImageTexture];
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4 mixingTypeContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_movieInfo(v7, v10, v11);
  v15 = objc_msgSend_movieInfo(v8, v13, v14);
  v17 = objc_msgSend_mixingTypeWithObject_context_(v12, v16, v15, v9);

  v20 = 0.0;
  if (v17 != 1)
  {
    v21 = objc_msgSend_movieInfo(v7, v18, v19);
    objc_msgSend_startTime(v21, v22, v23);
    v25 = v24;
    v28 = objc_msgSend_movieInfo(v8, v26, v27);
    objc_msgSend_startTime(v28, v29, v30);
    v32 = v31;

    if (v25 == v32)
    {
      v47 = 1.0;
    }

    else
    {
      v35 = objc_msgSend_movieInfo(v7, v33, v34);
      objc_msgSend_endTime(v35, v36, v37);
      v39 = v38;
      v42 = objc_msgSend_movieInfo(v8, v40, v41);
      objc_msgSend_startTime(v42, v43, v44);
      v46 = v45;

      if (v39 == v46)
      {
        v47 = 0.9;
      }

      else
      {
        v47 = 0.5;
      }
    }

    v48 = objc_msgSend_movieInfo(v7, v33, v34);
    objc_msgSend_endTime(v48, v49, v50);
    v52 = v51;
    v55 = objc_msgSend_movieInfo(v8, v53, v54);
    objc_msgSend_endTime(v55, v56, v57);
    v59 = v58;

    if (v52 != v59)
    {
      v47 = v47 * 0.5;
    }

    v62 = objc_msgSend_movieInfo(v7, v60, v61);
    objc_msgSend_posterTime(v62, v63, v64);
    v66 = v65;
    v69 = objc_msgSend_movieInfo(v8, v67, v68);
    objc_msgSend_posterTime(v69, v70, v71);
    v73 = v72;

    if (v66 == v73)
    {
      v20 = v47;
    }

    else
    {
      v20 = v47 * 0.5;
    }
  }

  return v20;
}

@end