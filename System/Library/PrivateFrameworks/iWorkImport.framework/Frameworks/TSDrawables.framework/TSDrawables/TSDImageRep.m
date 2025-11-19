@interface TSDImageRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4 mixingTypeContext:(id)a5;
- (BOOL)imageDrawingHelperImageHasAlpha:(id)a3;
- (BOOL)p_drawsInOneStep;
- (BOOL)p_shouldUseSourceImageForDescription:(id)a3 clipBounds:(CGRect)a4 transform:(CGAffineTransform *)a5 image:(CGImage *)a6;
- (CGAffineTransform)imageDrawingHelperImageTransformInRootForAntialiasingDefeat:(SEL)a3;
- (CGRect)clipRect;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)imageDrawingHelperImageRect:(id)a3;
- (TSDImageInfo)imageInfo;
- (TSDImageLayout)imageLayout;
- (TSDImageRep)initWithLayout:(id)a3 canvas:(id)a4;
- (TSDMaskInfo)maskInfo;
- (TSDMaskLayout)maskLayout;
- (id)imageDrawingHelperAdjustedImageData:(id)a3;
- (id)imageDrawingHelperImageData:(id)a3;
- (id)imageDrawingHelperThumbnailAdjustedImageData:(id)a3;
- (id)imageDrawingHelperThumbnailImageData:(id)a3;
- (id)imageOfStroke:(CGRect *)a3;
- (id)layoutsForChildReps;
- (id)p_validatedBitmapImageProvider;
- (id)p_validatedImageProvider;
- (id)textureForDescription:(id)a3;
- (void)dealloc;
- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9;
- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(double)a6 withMask:(BOOL)a7 withIAMask:(BOOL)a8 forLayer:(BOOL)a9 forShadow:(BOOL)a10 forHitTest:(BOOL)a11;
- (void)setTextureAttributes:(id)a3 textureBounds:(CGRect)a4;
- (void)willBeRemoved;
@end

@implementation TSDImageRep

- (TSDImageRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v28.receiver = self;
  v28.super_class = TSDImageRep;
  v4 = [(TSDRep *)&v28 initWithLayout:a3 canvas:a4];
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_imageInfo(v4, v5, v6);

    if (v8)
    {
      v11 = objc_msgSend_imageInfo(v7, v9, v10);
      v14 = objc_msgSend_imageData(v11, v12, v13);

      if (v14)
      {
        v17 = objc_msgSend_sharedPool(TSDImageProviderPool, v15, v16);
        objc_msgSend_addInterestInProviderForData_(v17, v18, v14);
      }

      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v20 = *(v7 + 184);
      *(v7 + 184) = v19;

      v21 = dispatch_semaphore_create(1);
      v22 = *(v7 + 192);
      *(v7 + 192) = v21;

      v23 = [TSDImageDrawingHelper alloc];
      v25 = objc_msgSend_initWithRep_(v23, v24, v7);
      v26 = *(v7 + 176);
      *(v7 + 176) = v25;

      *(v7 + 224) = 0;
      *(v7 + 216) = 0;
      *(v7 + 232) = 0x7FFFFFFFFFFFFFFFLL;
      *(v7 + 240) = 0;
      __dmb(0xBu);
    }

    else
    {
      v14 = v7;
      v7 = 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  v4 = objc_msgSend_imageInfo(self, a2, v2);
  v7 = objc_msgSend_imageData(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_sharedPool(TSDImageProviderPool, v8, v9);
    objc_msgSend_removeInterestInProviderForData_(v10, v11, v7);
  }

  v12.receiver = self;
  v12.super_class = TSDImageRep;
  [(TSDMediaRep *)&v12 dealloc];
}

- (TSDImageInfo)imageInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (TSDImageLayout)imageLayout
{
  objc_opt_class();
  v5 = objc_msgSend_layout(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (TSDMaskInfo)maskInfo
{
  v3 = objc_msgSend_imageInfo(self, a2, v2);
  v6 = objc_msgSend_maskInfo(v3, v4, v5);

  return v6;
}

- (TSDMaskLayout)maskLayout
{
  v3 = objc_msgSend_imageLayout(self, a2, v2);
  v6 = objc_msgSend_maskLayout(v3, v4, v5);

  return v6;
}

- (void)willBeRemoved
{
  v8.receiver = self;
  v8.super_class = TSDImageRep;
  [(TSDMediaRep *)&v8 willBeRemoved];
  objc_msgSend_teardown(*&self->_frameInUnscaledCanvasIsValid, v3, v4);
  objc_msgSend_setFrameRep_(self, v5, 0);
  dispatch_semaphore_wait(&self->_updateFromLayoutBlocks->super.super, 0xFFFFFFFFFFFFFFFFLL);
  objc_msgSend_removeAllObjects(self->_drawingHelper, v6, v7);
  dispatch_semaphore_signal(&self->_updateFromLayoutBlocks->super.super);
}

- (id)layoutsForChildReps
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = TSDImageRep;
  v3 = [(TSDRep *)&v21 layoutsForChildReps];
  v6 = objc_msgSend_imageLayout(self, v4, v5);
  v9 = objc_msgSend_maskLayout(v6, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_imageLayout(self, v10, v11);
    v15 = objc_msgSend_maskLayout(v12, v13, v14);
    v22[0] = v15;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v22, 1);
    v19 = objc_msgSend_tsu_arrayByRemovingObjectsIdenticalToObjectsInArray_(v3, v18, v17);

    v3 = v19;
  }

  return v3;
}

- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8 keepingChildrenPassingTest:(id)a9
{
  v10 = a4;
  v13 = 1.0;
  if (a6)
  {
    objc_msgSend_opacity(self, a2, a3, a4, a5, a6, a7, a8, 1.0);
  }

  objc_msgSend_p_drawInContext_withContent_strokeDrawOptions_withOpacity_withMask_withIAMask_forLayer_forShadow_forHitTest_(self, a2, a3, v10, a5, 1, 1, 0, v13);
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
    v17 = objc_msgSend_imageLayout(self, v15, v16);
    if (objc_msgSend_pathToStroke(v17, v18, v19))
    {
      v22 = MEMORY[0x277D81160];
      v23 = objc_msgSend_pathToStroke(v17, v20, v21);
      objc_msgSend_bezierPathWithCGPath_(v22, v24, v23);
    }

    else
    {
      v26 = objc_msgSend_imageGeometry(v17, v20, v21);
      objc_msgSend_size(v26, v27, v28);
      TSURectWithSize();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v37, v38, v30, v32, v34, v36);
    }
    v39 = ;
    objc_msgSend_boundsIncludingTSDStroke_(v39, v40, v12);
    v5 = v41;
    v6 = v42;
    v7 = v43;
    v8 = v44;

    v45 = TSDBitmapContextCreate(0xB, v7, v8);
    v46 = v45;
    v47 = -v5;
    v48 = -0.0;
    if (v5 < 0.0)
    {
      v47 = -0.0;
    }

    if (v6 >= 0.0)
    {
      v48 = -v6;
    }

    CGContextTranslateCTM(v45, v47, v48);
    v53 = 0;
    objc_msgSend_p_drawInContext_withContent_strokeDrawOptions_withOpacity_withMask_withIAMask_forLayer_forShadow_forHitTest_(self, v49, v46, 0, 7, 0, 0, 0, 1.0, v53);
    Image = CGBitmapContextCreateImage(v46);
    v25 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v51, Image);
    CGContextRelease(v46);
    CGImageRelease(Image);
  }

  else
  {
    v25 = 0;
  }

  a3->origin.x = v5;
  a3->origin.y = v6;
  a3->size.width = v7;
  a3->size.height = v8;

  return v25;
}

- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(double)a6 withMask:(BOOL)a7 withIAMask:(BOOL)a8 forLayer:(BOOL)a9 forShadow:(BOOL)a10 forHitTest:(BOOL)a11
{
  v11 = a9;
  v12 = a8;
  v13 = a7;
  v15 = a5;
  v16 = a4;
  v19 = objc_msgSend_styledLayout(self, a2, a3);
  isInvisible = objc_msgSend_isInvisible(v19, v20, v21);

  if (isInvisible)
  {
    return;
  }

  v25 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v23, v24);
  v27 = objc_msgSend_BOOLForKey_(v25, v26, @"TSDSuppressImageInterpolation");

  if (v11 && v27)
  {
    CGContextSetInterpolationQuality(a3, kCGInterpolationNone);
  }

  v30 = objc_msgSend_canvas(self, v28, v29);
  if (objc_msgSend_isDrawingIntoPDF(v30, v31, v32))
  {
    v199 = 0;
  }

  else
  {
    v35 = objc_msgSend_canvas(self, v33, v34);
    v199 = objc_msgSend_isPrinting(v35, v36, v37) ^ 1;
  }

  objc_msgSend_updateFrameRep(self, v38, v39);
  v42 = objc_msgSend_layout(self, v40, v41);
  v45 = objc_msgSend_stroke(v42, v43, v44);

  if (v45)
  {
    if (objc_msgSend_shouldRender(v45, v46, v47))
    {
      v50 = objc_msgSend_canvas(self, v48, v49);
      if (objc_msgSend_shouldSuppressBackgrounds(v50, v51, v52))
      {
        isFrame = objc_msgSend_isFrame(v45, v53, v54);

        if (isFrame)
        {
          goto LABEL_15;
        }

        v58 = objc_msgSend_mutableCopy(v45, v56, v57);

        v50 = objc_msgSend_blackColor(MEMORY[0x277D81180], v59, v60);
        objc_msgSend_setColor_(v58, v61, v50);
        v45 = v58;
      }
    }

    else
    {
      v50 = v45;
      v45 = 0;
    }
  }

LABEL_15:
  v62 = a6 < 1.0 && v16;
  v63 = v15 & v62;
  if ((v15 & v62) == 1 && (CGContextSaveGState(a3), CGContextSetAlpha(a3, a6), v45))
  {
    CGContextBeginTransparencyLayer(a3, 0);
    v200 = 1;
  }

  else
  {
    v200 = 0;
  }

  CGContextSaveGState(a3);
  v66 = objc_msgSend_imageLayout(self, v64, v65);
  objc_msgSend_imageRectInContext_(*&self->_frameInUnscaledCanvasIsValid, v67, a3);
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  if (v16)
  {
    v197 = v63;
    v198 = objc_msgSend_maskLayout(v66, v68, v69);
    if (v13)
    {
      v80 = objc_msgSend_frameRep(self, v78, v79);
      if (v80)
      {
        v81 = v80;
        hasMask = objc_msgSend_hasMask(v45, v78, v79);

        if (hasMask)
        {
          if (objc_msgSend_hasMaskingPath(v66, v78, v79))
          {
            v85 = MEMORY[0x277D81160];
            v86 = objc_msgSend_pathToStroke(v66, v83, v84);
            v88 = objc_msgSend_bezierPathWithCGPath_(v85, v87, v86);
            objc_msgSend_boundsIncludingTSDStroke_(v88, v89, v45);
            v93 = v92;
            v95 = v94;
            v97 = v96;
            v99 = v98;
            if (v66)
            {
              objc_msgSend_layoutToMaskTransform(v66, v90, v91);
            }

            else
            {
              memset(&transform, 0, sizeof(transform));
            }

            v203 = transform;
          }

          else
          {
            objc_msgSend_coverageRect_(v45, v83, v84, v71, v73, v75, v77);
            v93 = v102;
            v95 = v103;
            v97 = v104;
            v99 = v105;
            if (v66)
            {
              objc_msgSend_layoutToImageTransform(v66, v100, v101);
            }

            else
            {
              memset(&transform, 0, sizeof(transform));
            }

            v203 = transform;
          }

          transform = v203;
          CGContextConcatCTM(a3, &transform);
          v108 = objc_msgSend_frameRep(self, v106, v107);
          objc_msgSend_applyMaskForRectWithCoverage_toContext_(v108, v109, a3, v93, v95, v97, v99);

          v201 = v203;
          CGAffineTransformInvert(&transform, &v201);
          CGContextConcatCTM(a3, &transform);
        }
      }

      if (v198)
      {
        memset(&v203, 0, sizeof(v203));
        if (v66)
        {
          objc_msgSend_layoutToMaskTransform(v66, v78, v79);
        }

        objc_msgSend_pathBounds(v198, v78, v79);
        v201 = v203;
        CGAffineTransformTranslate(&transform, &v201, -v110, -v111);
        v203 = transform;
        v112 = MEMORY[0x277D81160];
        v115 = objc_msgSend_path(v198, v113, v114);
        v117 = objc_msgSend_bezierPathWithCGPath_(v112, v116, v115);
        transform = v203;
        objc_msgSend_transformUsingAffineTransform_(v117, v118, &transform);
        if (v199)
        {
          v120 = objc_msgSend_aliasedPathInContext_effectiveStrokeWidth_(v117, v119, a3, 0.0);

          v117 = v120;
        }

        v121 = v117;
        objc_msgSend_CGPath(v121, v122, v123);
        CGContextAddPathSafe();
        CGContextClip(a3);
      }
    }

    v124 = objc_msgSend_imageInfo(self, v78, v79);
    v127 = objc_msgSend_instantAlphaPath(v124, v125, v126);

    if (v127 && v12)
    {
      v130 = objc_msgSend_imageInfo(self, v128, v129);
      v133 = objc_msgSend_instantAlphaPath(v130, v131, v132);
      v136 = objc_msgSend_copy(v133, v134, v135);

      v139 = objc_msgSend_imageLayout(self, v137, v138);
      v142 = v139;
      if (v139)
      {
        objc_msgSend_imageDataToVisualSizeTransform(v139, v140, v141);
      }

      else
      {
        memset(&v203, 0, sizeof(v203));
      }

      objc_msgSend_transformUsingAffineTransform_(v136, v140, &v203);

      v145 = objc_msgSend_imageLayout(self, v143, v144);
      v148 = v145;
      if (v145)
      {
        objc_msgSend_layoutToImageTransform(v145, v146, v147);
      }

      else
      {
        memset(&v203, 0, sizeof(v203));
      }

      objc_msgSend_transformUsingAffineTransform_(v136, v146, &v203);

      if (v199)
      {
        v150 = objc_msgSend_aliasedPathInContext_effectiveStrokeWidth_(v136, v149, a3, 0.0);

        v136 = v150;
      }

      v151 = v136;
      objc_msgSend_CGPath(v151, v152, v153);
      CGContextAddPathSafe();
      CGContextClip(a3);
    }

    if (v66)
    {
      objc_msgSend_layoutToImageTransform(v66, v128, v129);
    }

    else
    {
      memset(&v203, 0, sizeof(v203));
    }

    CGContextConcatCTM(a3, &v203);
    CGContextSaveGState(a3);
    if (v13)
    {
      v156 = objc_msgSend_frameRep(self, v154, v155);
      if (v156)
      {
        v158 = v156;
        v159 = objc_msgSend_hasMask(v45, v154, v157);

        if (v159)
        {
          v161 = objc_msgSend_frameRep(self, v154, v160);
          objc_msgSend_blendMaskBeforeRenderingImageInContext_(v161, v162, a3);
        }
      }
    }

    objc_msgSend_drawInContext_forLayer_forShadowOrHitTest_(*&self->_frameInUnscaledCanvasIsValid, v154, a3, v11, a10 | a11);
    CGContextRestoreGState(a3);

    v63 = v197;
  }

  CGContextRestoreGState(a3);
  if ((v15 & 1) == 0 || !v45)
  {
    goto LABEL_89;
  }

  CGContextSaveGState(a3);
  if (objc_msgSend_pathToStroke(v66, v163, v164))
  {
    v167 = objc_msgSend_pathToStroke(v66, v165, v166);
    if (v167)
    {
      v168 = v167;
      PathBoundingBox = CGPathGetPathBoundingBox(v167);
      x = PathBoundingBox.origin.x;
      y = PathBoundingBox.origin.y;
      width = PathBoundingBox.size.width;
      height = PathBoundingBox.size.height;
      if (!objc_msgSend_isFrame(v45, v173, v174))
      {
        if (v66)
        {
          objc_msgSend_layoutToMaskTransform(v66, v175, v176);
        }

        else
        {
          memset(&v203, 0, sizeof(v203));
        }

        CGContextConcatCTM(a3, &v203);
        objc_msgSend_paintPath_inContext_(v45, v183, v168, a3);
        goto LABEL_88;
      }

      if (objc_msgSend_shouldRenderFrameStroke(v66, v175, v176))
      {
        if (v66)
        {
          objc_msgSend_layoutToMaskTransform(v66, v177, v178);
        }

        else
        {
          memset(&v203, 0, sizeof(v203));
        }

        CGContextConcatCTM(a3, &v203);
        v190 = objc_msgSend_frameRep(self, v188, v189);
        CGContextGetCTM(&v203, a3);
        TSUTransformScale();
        objc_msgSend_frameRect_inContext_withTotalScale_(v190, v191, a3, x, y, width, height, v192);
LABEL_87:
      }
    }
  }

  else
  {
    if (!objc_msgSend_isFrame(v45, v165, v166))
    {
      if (v66)
      {
        objc_msgSend_layoutToImageTransform(v66, v179, v180);
      }

      else
      {
        memset(&v203, 0, sizeof(v203));
      }

      CGContextConcatCTM(a3, &v203);
      v186 = objc_msgSend_pathToStroke(v66, v184, v185);
      if (v186)
      {
        objc_msgSend_paintPath_inContext_(v45, v187, v186, a3);
      }

      else
      {
        objc_msgSend_paintRect_inContext_(v45, v187, a3, v71, v73, v75, v77);
      }

      goto LABEL_88;
    }

    if (objc_msgSend_shouldRenderFrameStroke(v66, v179, v180))
    {
      if (v66)
      {
        objc_msgSend_layoutToImageTransform(v66, v181, v182);
      }

      else
      {
        memset(&v203, 0, sizeof(v203));
      }

      CGContextConcatCTM(a3, &v203);
      v190 = objc_msgSend_frameRep(self, v193, v194);
      CGContextGetCTM(&v203, a3);
      TSUTransformScale();
      objc_msgSend_frameRect_inContext_withTotalScale_(v190, v195, a3, v71, v73, v75, v77, v196);
      goto LABEL_87;
    }
  }

LABEL_88:
  CGContextRestoreGState(a3);
LABEL_89:
  if (v200)
  {
    CGContextEndTransparencyLayer(a3);
  }

  if (v63)
  {
    CGContextRestoreGState(a3);
  }
}

- (CGRect)frameInUnscaledCanvas
{
  v69.receiver = self;
  v69.super_class = TSDImageRep;
  [(TSDRep *)&v69 frameInUnscaledCanvas];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v13 = objc_msgSend_imageLayout(self, v11, v12);
  v16 = objc_msgSend_maskLayout(v13, v14, v15);
  if (v16)
  {
    v19 = v16;
    v20 = objc_msgSend_pathToStroke(v13, v17, v18);

    if (v20)
    {
      if (LOBYTE(self->_frameInUnscaledCanvasRelativeToSuper.size.height) != 1)
      {
        v23 = objc_msgSend_layout(self, v21, v22);
        v26 = objc_msgSend_stroke(v23, v24, v25);

        if (v26 && objc_msgSend_shouldRender(v26, v27, v28) && objc_msgSend_isFrame(v26, v27, v28))
        {
          memset(&v68, 0, sizeof(v68));
          if (v13)
          {
            objc_msgSend_layoutToMaskTransform(v13, v27, v28);
          }

          v29 = MEMORY[0x277D81160];
          v30 = objc_msgSend_pathToStroke(v13, v27, v28);
          v32 = objc_msgSend_bezierPathWithCGPath_(v29, v31, v30);
          t1 = v68;
          objc_msgSend_transformUsingAffineTransform_(v32, v33, &t1);
          objc_msgSend_boundsIncludingTSDStroke_(v32, v34, v26);
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v44 = v43;
          if (v13)
          {
            objc_msgSend_transformInRoot(v13, v35, v36);
          }

          else
          {
            memset(&t1, 0, sizeof(t1));
          }

          v72.origin.x = v38;
          v72.origin.y = v40;
          v72.size.width = v42;
          v72.size.height = v44;
          *&v54 = CGRectApplyAffineTransform(v72, &t1);
        }

        else
        {
          memset(&v68, 0, sizeof(v68));
          if (v13)
          {
            objc_msgSend_layoutToMaskTransform(v13, v27, v28);
            objc_msgSend_transformInRoot(v13, v45, v46);
          }

          else
          {
            memset(&t1, 0, sizeof(t1));
            memset(&v66, 0, sizeof(v66));
          }

          CGAffineTransformConcat(&v68, &t1, &v66);
          v47 = MEMORY[0x277D81160];
          v50 = objc_msgSend_pathToStroke(v13, v48, v49);
          v32 = objc_msgSend_bezierPathWithCGPath_(v47, v51, v50);
          t1 = v68;
          objc_msgSend_transformUsingAffineTransform_(v32, v52, &t1);
          objc_msgSend_boundsIncludingTSDStroke_(v32, v53, v26);
        }

        v58 = v54;
        v59 = v55;
        v60 = v56;
        v61 = v57;

        v70.origin.x = v58;
        v70.origin.y = v59;
        v70.size.width = v60;
        v70.size.height = v61;
        *&self->_lastLayoutToImageTransform.ty = CGRectOffset(v70, -x, -y);
        LOBYTE(self->_frameInUnscaledCanvasRelativeToSuper.size.height) = 1;
      }

      v71 = CGRectOffset(*&self->_lastLayoutToImageTransform.ty, x, y);
      x = v71.origin.x;
      y = v71.origin.y;
      width = v71.size.width;
      height = v71.size.height;
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

- (CGRect)clipRect
{
  v2.receiver = self;
  v2.super_class = TSDImageRep;
  [(TSDStyledRep *)&v2 clipRect];
  return CGRectInset(v3, -1.0, -1.0);
}

- (id)imageDrawingHelperImageData:(id)a3
{
  v3 = objc_msgSend_imageInfo(self, a2, a3);
  v6 = objc_msgSend_imageData(v3, v4, v5);

  return v6;
}

- (id)imageDrawingHelperThumbnailImageData:(id)a3
{
  v3 = objc_msgSend_imageInfo(self, a2, a3);
  v6 = objc_msgSend_thumbnailImageData(v3, v4, v5);

  return v6;
}

- (CGRect)imageDrawingHelperImageRect:(id)a3
{
  v3 = objc_msgSend_imageLayout(self, a2, a3);
  v6 = objc_msgSend_imageGeometry(v3, v4, v5);
  objc_msgSend_size(v6, v7, v8);
  TSURectWithSize();
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

- (CGAffineTransform)imageDrawingHelperImageTransformInRootForAntialiasingDefeat:(SEL)a3
{
  v12 = objc_msgSend_imageLayout(self, a3, a4);
  v7 = objc_msgSend_imageGeometryInRoot(v12, v5, v6);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_transform(v7, v8, v9);
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (BOOL)imageDrawingHelperImageHasAlpha:(id)a3
{
  v3 = objc_msgSend_imageLayout(self, a2, a3);
  hasAlpha = objc_msgSend_hasAlpha(v3, v4, v5);

  return hasAlpha;
}

- (id)imageDrawingHelperAdjustedImageData:(id)a3
{
  v3 = objc_msgSend_imageInfo(self, a2, a3);
  v6 = objc_msgSend_adjustedImageData(v3, v4, v5);

  return v6;
}

- (id)imageDrawingHelperThumbnailAdjustedImageData:(id)a3
{
  v3 = objc_msgSend_imageInfo(self, a2, a3);
  v6 = objc_msgSend_thumbnailAdjustedImageData(v3, v4, v5);

  return v6;
}

- (void)setTextureAttributes:(id)a3 textureBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16.receiver = self;
  v16.super_class = TSDImageRep;
  v9 = a3;
  [(TSDStyledRep *)&v16 setTextureAttributes:v9 textureBounds:x, y, width, height];
  objc_msgSend_setObjectType_(v9, v10, 3, v16.receiver, v16.super_class);

  v13 = objc_msgSend_imageInfo(self, v11, v12);
  objc_msgSend_isMasked(v13, v14, v15);
}

- (BOOL)p_shouldUseSourceImageForDescription:(id)a3 clipBounds:(CGRect)a4 transform:(CGAffineTransform *)a5 image:(CGImage *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  v10 = a3;
  v13 = objc_msgSend_shadow(self, v11, v12);
  v16 = objc_msgSend_reflection(self, v14, v15);
  objc_opt_class();
  v19 = objc_msgSend_layout(self, v17, v18);
  v22 = objc_msgSend_stroke(v19, v20, v21);
  v23 = TSUDynamicCast();

  v28 = objc_msgSend_p_validatedBitmapImageProvider(self, v24, v25);
  if (v28 && (!v13 || !objc_msgSend_isEnabled(v13, v26, v27) || (objc_msgSend_shouldShowShadow(self, v26, v27) & 1) == 0) && (!v16 || (objc_msgSend_shouldShowReflection(self, v26, v27) & 1) == 0) && (!v23 || (objc_msgSend_shouldRender(v23, v26, v27) & 1) == 0))
  {
    v29 = objc_msgSend_imageInfo(self, v26, v27);
    CanBeReset = objc_msgSend_maskCanBeReset(v29, v30, v31);

    if ((CanBeReset & 1) == 0)
    {
      v61 = a6;
      v35 = objc_msgSend_imageLayout(self, v26, v27);
      v38 = objc_msgSend_maskLayout(v35, v36, v37);
      if (v38)
      {
        v41 = v38;
        v60 = objc_msgSend_imageLayout(self, v39, v40);
        v44 = objc_msgSend_maskLayout(v60, v42, v43);
        v47 = objc_msgSend_pathSource(v44, v45, v46);
        isRectangular = objc_msgSend_isRectangular(v47, v48, v49);

        if (!isRectangular)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      v50 = objc_msgSend_imageInfo(self, v26, v27);
      v53 = objc_msgSend_instantAlphaPath(v50, v51, v52);

      if (!v53)
      {
        v54 = objc_msgSend_imageInfo(self, v26, v27);
        isPDF = objc_msgSend_isPDF(v54, v55, v56);

        if ((isPDF & 1) == 0)
        {
          TSUTransformAngleInDegrees();
          a6 = v61;
          if (v58 == 0.0 && (TSUIsTransformFlipped() & 1) == 0 && !objc_msgSend_orientation(v28, v26, v27))
          {
            shouldUseSourceImage = objc_msgSend_shouldUseSourceImage(v10, v26, v27);
            goto LABEL_11;
          }

          goto LABEL_10;
        }
      }

LABEL_22:
      shouldUseSourceImage = 0;
      a6 = v61;
      goto LABEL_11;
    }
  }

LABEL_10:
  shouldUseSourceImage = 0;
LABEL_11:
  if ((objc_msgSend_shouldIgnoreScaleInSourceImage(v10, v26, v27) & 1) == 0 && (width < CGImageGetWidth(a6) / 1.5 || height < CGImageGetHeight(a6) / 1.5))
  {
    shouldUseSourceImage = 0;
  }

  return shouldUseSourceImage;
}

- (id)textureForDescription:(id)a3
{
  v4 = a3;
  if (objc_msgSend_drawsError(*&self->_frameInUnscaledCanvasIsValid, v5, v6) && ((objc_msgSend_imageInfo(self, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_thumbnailImageData(v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v9, !v12) || (objc_msgSend_sharedPool(TSDImageProviderPool, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_providerForData_shouldValidate_(v15, v16, v12, 1), v17 = objc_claimAutoreleasedReturnValue(), v15, LOBYTE(v15) = objc_msgSend_isError(v17, v18, v19), v17, v12, (v15 & 1) != 0)))
  {
    v20 = 0;
  }

  else
  {
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v21 = objc_msgSend_layout(self, v7, v8);
    v24 = v21;
    if (v21)
    {
      objc_msgSend_transformInRoot(v21, v22, v23);
    }

    else
    {
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0.0;
    v69 = 0.0;
    v27 = objc_msgSend_p_validatedBitmapImageProvider(self, v25, v26);
    v28 = [TSDImageRenderingConfiguration alloc];
    v31 = objc_msgSend_session(v4, v29, v30);
    v34 = objc_msgSend_supportsHDR(v31, v32, v33);
    inited = objc_msgSend_initWantsHDR_(v28, v35, v34);

    v38 = objc_msgSend_CGImageOfLargestSafeSizeWithRenderingConfiguration_(v27, v37, inited);
    objc_msgSend_calculateTextureClipBounds_andOffset_withTransform_andRectOnCanvas_textureDescription_isUsingImageTexture_(self, v39, &v70, &v68, &v72, 0, v4, 1);
    v67[0] = v72;
    v67[1] = v73;
    v67[2] = v74;
    if (objc_msgSend_p_shouldUseSourceImageForDescription_clipBounds_transform_image_(self, v40, v4, v67, v38, v70, v71))
    {
      if (v38)
      {
        isMagicMove = objc_msgSend_isMagicMove(v4, v41, v42);
        v20 = objc_alloc_init(TSDTextureSet);
        objc_msgSend_setRep_(v20, v44, self);
        objc_msgSend_setIsMagicMove_(v20, v45, isMagicMove);
        objc_msgSend_setObjectType_(v20, v46, 3);
        v47 = [TSDTexturedRectangle alloc];
        v49 = objc_msgSend_initWithCGImage_(v47, v48, v38);
        objc_msgSend_setOffset_(v49, v50, v51, v68, v69);
        objc_msgSend_setSize_(v49, v52, v53, v71);
        objc_msgSend_setTextureType_(v49, v54, 5);
        objc_msgSend_opacity(self, v55, v56);
        objc_msgSend_setTextureOpacity_(v20, v57, v58);
        objc_msgSend_addRenderable_(v20, v59, v49);
        objc_msgSend_setTextureAttributes_textureBounds_(self, v60, v20, v70, v71);
        if ((objc_msgSend_shouldNotAddContainedReps(v4, v61, v62) & 1) == 0)
        {
          objc_msgSend_addChildTexturesToTextureSet_forDescription_passingTest_(self, v63, v20, v4, 0);
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v66.receiver = self;
      v66.super_class = TSDImageRep;
      v20 = [(TSDStyledRep *)&v66 textureForDescription:v4];
      objc_msgSend_setObjectType_(v20, v64, 3);
    }
  }

  return v20;
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4 mixingTypeContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  objc_opt_class();
  v10 = TSUDynamicCast();

  objc_opt_class();
  v11 = TSUDynamicCast();

  v14 = objc_msgSend_imageInfo(v10, v12, v13);
  v17 = objc_msgSend_imageData(v14, v15, v16);
  v20 = objc_msgSend_imageInfo(v11, v18, v19);
  v23 = objc_msgSend_imageData(v20, v21, v22);
  isEqual = objc_msgSend_isEqual_(v17, v24, v23);

  v28 = 0.0;
  if (!isEqual)
  {
    goto LABEL_30;
  }

  v29 = objc_msgSend_imageInfo(v10, v26, v27);
  v32 = objc_msgSend_imageData(v29, v30, v31);
  v35 = objc_msgSend_imageInfo(v11, v33, v34);
  v38 = objc_msgSend_imageData(v35, v36, v37);
  v40 = objc_msgSend_isEqual_(v32, v39, v38);

  if (v40)
  {
    v43 = 1.0;
  }

  else
  {
    v43 = 0.0;
  }

  v44 = objc_msgSend_imageInfo(v10, v41, v42);
  if (objc_msgSend_maskCanBeReset(v44, v45, v46))
  {

LABEL_8:
    v56 = objc_msgSend_imageInfo(v10, v49, v50);
    v59 = objc_msgSend_maskInfo(v56, v57, v58);
    v62 = objc_msgSend_imageInfo(v11, v60, v61);
    v65 = objc_msgSend_maskInfo(v62, v63, v64);
    v55 = TSDMixingTypeWithObjects(v59, v65, v7);

    goto LABEL_9;
  }

  v51 = objc_msgSend_imageInfo(v11, v47, v48);
  CanBeReset = objc_msgSend_maskCanBeReset(v51, v52, v53);

  v55 = 5.0;
  if (CanBeReset)
  {
    goto LABEL_8;
  }

LABEL_9:
  v66 = v43 + v55 / 5.0 * 0.1;
  v67 = objc_msgSend_imageInfo(v10, v49, v50);
  v70 = objc_msgSend_imageStyle(v67, v68, v69);
  v73 = objc_msgSend_imageInfo(v11, v71, v72);
  v76 = objc_msgSend_imageStyle(v73, v74, v75);
  v77 = TSDMixingTypeWithObjects(v70, v76, v7);

  if (v77 == 5)
  {
    v66 = v66 + 1.0;
  }

  v80 = objc_msgSend_imageInfo(v10, v78, v79);
  v83 = objc_msgSend_geometry(v80, v81, v82);

  v86 = objc_msgSend_horizontalFlip(v83, v84, v85);
  if (objc_msgSend_verticalFlip(v83, v87, v88))
  {
    v91 = 1;
  }

  else if (objc_msgSend_horizontalFlip(v83, v89, v90))
  {
    objc_msgSend_angle(v83, v89, v90);
    v91 = fabs(v92 + -3.14159265) < 0.00999999978 || v92 == 3.14159265;
  }

  else
  {
    v91 = 0;
  }

  v93 = objc_msgSend_imageInfo(v11, v89, v90);
  v96 = objc_msgSend_geometry(v93, v94, v95);

  v99 = objc_msgSend_horizontalFlip(v96, v97, v98);
  if (objc_msgSend_verticalFlip(v96, v100, v101))
  {
    v104 = 1;
  }

  else if (objc_msgSend_horizontalFlip(v96, v102, v103))
  {
    objc_msgSend_angle(v96, v105, v106);
    v104 = v107 == 3.14159265;
    if (fabs(v107 + -3.14159265) < 0.00999999978)
    {
      v104 = 1;
    }
  }

  else
  {
    v104 = 0;
  }

  if (v91 == v104)
  {
    v108 = v86 ^ v99;
  }

  else
  {
    v108 = 1;
  }

  v109 = v66 + 1.0;
  if (v108)
  {
    v109 = v66;
  }

  v28 = v109 / 3.1;

LABEL_30:
  return v28;
}

- (id)p_validatedImageProvider
{
  v4 = objc_msgSend_sharedPool(TSDImageProviderPool, a2, v2);
  v7 = objc_msgSend_imageDataForDrawing(*&self->_frameInUnscaledCanvasIsValid, v5, v6);
  v9 = objc_msgSend_providerForData_shouldValidate_(v4, v8, v7, 1);

  return v9;
}

- (id)p_validatedBitmapImageProvider
{
  objc_opt_class();
  v5 = objc_msgSend_p_validatedImageProvider(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (BOOL)p_drawsInOneStep
{
  v4 = objc_msgSend_imageInfo(self, a2, v2);
  v7 = objc_msgSend_stroke(v4, v5, v6);
  shouldRender = objc_msgSend_shouldRender(v7, v8, v9);

  v15 = objc_msgSend_maskInfo(v4, v11, v12);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v17 = objc_msgSend_instantAlphaPath(v4, v13, v14);
    v16 = v17 == 0;
  }

  v20 = objc_msgSend_imageLayout(self, v18, v19);
  if (objc_msgSend_hasAlpha(v20, v21, v22))
  {
    v25 = objc_msgSend_drawsBitmap(*&self->_frameInUnscaledCanvasIsValid, v23, v24);
  }

  else
  {
    v25 = 1;
  }

  if (shouldRender)
  {
    v26 = 0;
  }

  else
  {
    v26 = v16 & v25;
  }

  return v26;
}

@end