@interface TSDShapeRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject mixingTypeContext:(id)context;
- (BOOL)canDrawShadowInOneStepWithChildren:(BOOL)children;
- (BOOL)canDrawWithOtherShapeRep:(id)rep;
- (BOOL)isInvisible;
- (BOOL)isMoreOptimalToDrawWithOtherShapeRepsIfPossible;
- (BOOL)isNormalShapeInsideFreehandDrawing;
- (BOOL)p_beginApplyOpacity:(CGContext *)opacity forDrawingInOneStep:(BOOL)step;
- (BOOL)p_drawsSelfInOneStep;
- (BOOL)p_hasFreehandDrawingBrushStroke;
- (BOOL)p_shouldDrawStrokeWide:(id)wide;
- (BOOL)p_shouldUpgradeStrokeForPlayback:(id)playback;
- (CGRect)clipRect;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)strokeBoundsWithOptions:(unint64_t)options fallbackBounds:(CGRect)bounds;
- (TSDShapeInfo)shapeInfo;
- (TSDShapeLayout)shapeLayout;
- (TSDShapeRep)initWithLayout:(id)layout canvas:(id)canvas;
- (double)opacity;
- (double)strokeEnd;
- (id)colorBehindLayer:(id)layer;
- (id)imageOfStroke:(CGRect *)stroke;
- (id)p_brushStrokeFromStroke:(id)stroke;
- (id)p_drawingPlaybackSession;
- (id)p_strokeForRenderingIncludingPlaybackFromStroke:(id)stroke;
- (unint64_t)p_bitmapContextOptionsForDrawingStroke:(id)stroke;
- (void)dealloc;
- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test;
- (void)dynamicOverrideDidChange;
- (void)p_drawChildrenWithoutOpacityInContext:(CGContext *)context keepingChildrenPassingTest:(id)test;
- (void)p_drawInContext:(CGContext *)context withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity usingPathOverride:(id)override patternOffsetsBySubpathOverride:(id)subpathOverride transparencyLayersBySubpath:(id)subpath;
- (void)p_drawLineEndForHead:(BOOL)head withDelta:(CGPoint)delta andStroke:(id)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing;
- (void)p_endApplyOpacity:(CGContext *)opacity apply:(BOOL)apply;
- (void)recursivelyDrawChildrenInContext:(CGContext *)context keepingChildrenPassingTest:(id)test;
- (void)setTextureAttributes:(id)attributes textureBounds:(CGRect)bounds;
@end

@implementation TSDShapeRep

- (TSDShapeRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v14.receiver = self;
  v14.super_class = TSDShapeRep;
  v4 = [(TSDRep *)&v14 initWithLayout:layout canvas:canvas];
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_shapeInfo(v4, v5, v6);
    if (!v8 || (v11 = v8, objc_msgSend_shapeLayout(v7, v9, v10), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
    {

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  CGContextRelease(*&self->mShadowOnChildrenDisabled);
  CGImageRelease(self->mCommittedPathContext);
  v3.receiver = self;
  v3.super_class = TSDShapeRep;
  [(TSDStyledRep *)&v3 dealloc];
}

- (TSDShapeInfo)shapeInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (TSDShapeLayout)shapeLayout
{
  objc_opt_class();
  v5 = objc_msgSend_layout(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (CGRect)frameInUnscaledCanvas
{
  v14.receiver = self;
  v14.super_class = TSDShapeRep;
  [(TSDRep *)&v14 frameInUnscaledCanvas];
  v6 = v5;
  v8 = v7;
  if (LOBYTE(self->mFrameInUnscaledCanvasRelativeToSuper.size.height) != 1)
  {
    v9 = objc_msgSend_shapeLayout(self, v3, v4);
    v12 = v9;
    if (v9)
    {
      objc_msgSend_transformInRoot(v9, v10, v11);
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    objc_msgSend_shapeFrameWithTransform_(v12, v10, v13);
    *&self->super.mFlags = CGRectOffset(v15, -v6, -v8);
    LOBYTE(self->mFrameInUnscaledCanvasRelativeToSuper.size.height) = 1;
  }

  return CGRectOffset(*&self->super.mFlags, v6, v8);
}

- (CGRect)clipRect
{
  v2.receiver = self;
  v2.super_class = TSDShapeRep;
  [(TSDStyledRep *)&v2 clipRect];
  return CGRectInset(v3, -1.0, -1.0);
}

- (BOOL)p_beginApplyOpacity:(CGContext *)opacity forDrawingInOneStep:(BOOL)step
{
  objc_msgSend_opacity(self, a2, opacity);
  if (v7 >= 1.0)
  {
    return 0;
  }

  CGContextSetAlpha(opacity, v7);
  if (step)
  {
    return 0;
  }

  objc_msgSend_i_clipRectRecursive(self, v8, v9);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  if (CGRectIsNull(v23) || (v24.origin.x = x, v24.origin.y = y, v24.size.width = width, v24.size.height = height, CGRectIsInfinite(v24)))
  {
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    if (CGRectIsNull(v25))
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSDShapeRep p_beginApplyOpacity:forDrawingInOneStep:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeRep.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 286, 0, "Clip rects should never be null.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    }

    CGContextBeginTransparencyLayer(opacity, 0);
  }

  else
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    CGContextBeginTransparencyLayerWithRect(opacity, v26, 0);
  }

  return 1;
}

- (void)p_endApplyOpacity:(CGContext *)opacity apply:(BOOL)apply
{
  if (apply)
  {
    CGContextEndTransparencyLayer(opacity);
  }
}

- (id)colorBehindLayer:(id)layer
{
  objc_opt_class();
  v6 = objc_msgSend_shapeLayout(self, v4, v5);
  v9 = objc_msgSend_fill(v6, v7, v8);
  v10 = TSUDynamicCast();

  if (v10 && objc_msgSend_isOpaque(v10, v11, v12))
  {
    v15 = objc_msgSend_color(v10, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)recursivelyDrawChildrenInContext:(CGContext *)context keepingChildrenPassingTest:(id)test
{
  testCopy = test;
  v9 = objc_msgSend_childReps(self, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);

  if (v12)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_276672F30;
    v24[3] = &unk_27A6CC740;
    v13 = testCopy;
    v24[4] = self;
    v25 = v13;
    v14 = MEMORY[0x277C9C8B0](v24);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_276672FB4;
    v22[3] = &unk_27A6CC740;
    v22[4] = self;
    v23 = v13;
    v15 = MEMORY[0x277C9C8B0](v22);
    CGContextSaveGState(context);
    v17 = objc_msgSend_p_beginApplyOpacity_forDrawingInOneStep_(self, v16, context, 0);
    v21.receiver = self;
    v21.super_class = TSDShapeRep;
    [(TSDRep *)&v21 recursivelyDrawChildrenInContext:context keepingChildrenPassingTest:v14];
    objc_msgSend_p_endApplyOpacity_apply_(self, v18, context, v17);
    CGContextRestoreGState(context);
    v20.receiver = self;
    v20.super_class = TSDShapeRep;
    [(TSDRep *)&v20 recursivelyDrawChildrenInContext:context keepingChildrenPassingTest:v15];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = TSDShapeRep;
    [(TSDRep *)&v19 recursivelyDrawChildrenInContext:context keepingChildrenPassingTest:testCopy];
  }
}

- (void)p_drawChildrenWithoutOpacityInContext:(CGContext *)context keepingChildrenPassingTest:(id)test
{
  v4.receiver = self;
  v4.super_class = TSDShapeRep;
  [(TSDRep *)&v4 recursivelyDrawChildrenInContext:context keepingChildrenPassingTest:test];
}

- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test
{
  childrenCopy = children;
  opacityCopy = opacity;
  contentCopy = content;
  testCopy = test;
  if (!objc_msgSend_isInvisible(self, v16, v17) || !opacityCopy && (objc_msgSend_opacity(self, v18, v19), v20 == 0.0))
  {
    objc_msgSend_p_drawInContext_withContent_strokeDrawOptions_withOpacity_(self, v18, effects, contentCopy, options, opacityCopy);
  }

  if (childrenCopy && (LOBYTE(self->mOriginalAliasedAlignmentFrameInLayerFrame.size.height) != 1 || !only))
  {
    if (opacityCopy)
    {
      objc_msgSend_recursivelyDrawChildrenInContext_keepingChildrenPassingTest_(self, v18, effects, testCopy);
    }

    else
    {
      objc_msgSend_p_drawChildrenWithoutOpacityInContext_keepingChildrenPassingTest_(self, v18, effects, testCopy);
    }
  }
}

- (void)p_drawInContext:(CGContext *)context withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity usingPathOverride:(id)override patternOffsetsBySubpathOverride:(id)subpathOverride transparencyLayersBySubpath:(id)subpath
{
  opacityCopy = opacity;
  contentCopy = content;
  v326[1] = *MEMORY[0x277D85DE8];
  overrideCopy = override;
  subpathOverrideCopy = subpathOverride;
  subpathCopy = subpath;
  BYTE4(self->mLastDynamicInvalidRect.size.height) = 0;
  v18 = objc_msgSend_canvas(self, v16, v17);
  shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(v18, v19, v20);

  c = context;
  v316 = shouldSuppressBackgrounds;
  if (shouldSuppressBackgrounds != TSDCGContextHasBackgroundsSuppressed(context))
  {
    v24 = MEMORY[0x277D81150];
    v25 = subpathOverrideCopy;
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSDShapeRep p_drawInContext:withContent:strokeDrawOptions:withOpacity:usingPathOverride:patternOffsetsBySubpathOverride:transparencyLayersBySubpath:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v26, v28, 415, 0, "Canvas and CGContext disagree about whether we are suppressing backgrounds");

    subpathOverrideCopy = v25;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
  }

  v32 = objc_msgSend_shapeInfo(self, v22, v23);
  v35 = objc_msgSend_shapeLayout(self, v33, v34);
  v38 = objc_msgSend_path(v35, v36, v37);
  if (objc_msgSend_containsElementsOtherThanMoveAndClose(v38, v39, v40))
  {

    if ((options & 3) != 0 || (options & 4) != 0 || contentCopy)
    {
      CGContextSaveGState(c);
      if (opacityCopy)
      {
        v43 = objc_msgSend_p_drawsSelfInOneStep(self, v41, v42);
        v305 = objc_msgSend_p_beginApplyOpacity_forDrawingInOneStep_(self, v44, c, v43);
      }

      else
      {
        v305 = 0;
      }

      objc_msgSend_pathBounds(v35, v41, v42);
      v46 = v45;
      v48 = v47;
      CGContextTranslateCTM(c, -v45, -v47);
      v51 = objc_msgSend_canvas(self, v49, v50);
      objc_msgSend_viewScale(v51, v52, v53);
      v55 = v54;
      v56 = TSDCGContextAssociatedScreenScale(c);

      v324 = *MEMORY[0x277CBF348];
      v325 = v324;
      v59 = objc_msgSend_layout(self, v57, v58);
      v62 = objc_msgSend_stroke(v59, v60, v61);

      if ((objc_msgSend_shouldRender(v62, v63, v64) & 1) == 0)
      {

        v62 = 0;
      }

      v308 = overrideCopy;
      v309 = v62;
      if (overrideCopy)
      {
        v310 = objc_msgSend_copy(overrideCopy, v65, v66);
      }

      else
      {
        if (!objc_msgSend_isNormalShapeInsideFreehandDrawing(self, v65, v66))
        {
          v322 = 0;
          v323 = 0;
          objc_msgSend_aliasPathForScale_adjustedStroke_adjustedPath_startDelta_endDelta_(v35, v69, &v323, &v322, &v325, &v324, v55 * v56);
          v77 = v323;
          v310 = v322;
LABEL_18:
          objc_opt_class();
          v307 = v77;
          v80 = objc_msgSend_mutableCopy(v77, v78, v79);
          v81 = TSUCheckedDynamicCast();

          objc_opt_class();
          v298 = &unk_2885A0668;
          v84 = TSUClassAndProtocolCast();
          v311 = v84;
          v312 = v81;
          if (v84)
          {
            v85 = objc_msgSend_shapeInfo(self, v82, v83, &unk_2885A0668);
            v88 = objc_msgSend_pathSource(v85, v86, v87);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_shapeInfo(self, v89, v90);
              optionsCopy = options;
              v91 = v35;
              v92 = v32;
              v93 = opacityCopy;
              v95 = v94 = subpathOverrideCopy;
              v98 = objc_msgSend_pathSource(v95, v96, v97);
              isCurveContinuous = objc_msgSend_isCurveContinuous(v98, v99, v100);

              v84 = v311;
              subpathOverrideCopy = v94;
              opacityCopy = v93;
              v32 = v92;
              v35 = v91;
              options = optionsCopy;

              v81 = v312;
              if (isCurveContinuous)
              {
                objc_msgSend_width(v311, v82, v83);
                v103 = v102;
                v106 = objc_msgSend_canvas(self, v104, v105);
                objc_msgSend_viewScale(v106, v107, v108);
                v110 = v103 * v109;

                v84 = v311;
                if (v110 < 1.1)
                {
                  objc_msgSend_width(v311, v82, v83);
                  objc_msgSend_setWidth_(v311, v112, v113, v111 + 0.1);
                }
              }
            }

            else
            {

              v81 = v312;
            }
          }

          if (objc_msgSend_pathIsOpen(v35, v82, v83, v298))
          {
            v118 = objc_msgSend_headLineEnd(v32, v114, v115);
            if (v118)
            {
              v304 = 1;
            }

            else
            {
              v119 = objc_msgSend_tailLineEnd(v32, v116, v117);
              v304 = v119 != 0;
            }

            v81 = v312;
          }

          else
          {
            v304 = 0;
          }

          objc_opt_class();
          v120 = TSUDynamicCast();
          v123 = v120;
          if (v120)
          {
            shouldRender = objc_msgSend_shouldRender(v120, v121, v122);
            v125 = shouldRender;
            v315 = 0;
            if ((options & 1) != 0 && shouldRender)
            {
              v126 = [TSDFrameRep alloc];
              v315 = objc_msgSend_initWithTSDFrame_(v126, v127, v123);
            }
          }

          else
          {
            v125 = 0;
            v315 = 0;
          }

          v306 = v123;
          if (contentCopy)
          {
            v303 = subpathOverrideCopy;
            if (v315 && objc_msgSend_hasMask(v123, v121, v122))
            {
              v128 = v123;
              optionsCopy3 = options;
              CGContextSaveGState(c);
              objc_msgSend_pathBoundsWithoutStroke(v35, v130, v131);
              objc_msgSend_coverageRect_(v128, v132, v133);
              objc_msgSend_applyMaskForRectWithCoverage_toContext_(v315, v134, c);
              objc_msgSend_blendMaskBeforeRenderingImageInContext_(v315, v135, c);
              v136 = 1;
            }

            else
            {
              optionsCopy3 = options;
              v136 = 0;
            }

            v137 = objc_msgSend_shapeLayout(self, v121, v122);
            v140 = objc_msgSend_fill(v137, v138, v139);

            v84 = v311;
            if (v140 && ((objc_msgSend_isClear(v140, v141, v142) | v316) & 1) == 0)
            {
              if (objc_msgSend_fillType(v140, v143, v144) == 1 && (objc_opt_class(), TSUCheckedDynamicCast(), v145 = objc_claimAutoreleasedReturnValue(), v148 = objc_msgSend_gradientType(v145, v146, v147), v145, v151 = v148 == 1, v84 = v311, v81 = v312, v151))
              {
                objc_msgSend_boundsForStandardKnobs(self, v149, v150);
                v328 = CGRectOffset(v327, v46, v48);
                x = v328.origin.x;
                y = v328.origin.y;
                width = v328.size.width;
                height = v328.size.height;
                v156 = v310;
                v159 = objc_msgSend_CGPath(v156, v157, v158);
                v162 = objc_msgSend_canvas(self, v160, v161);
                isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(v162, v163, v164);
                v166 = v159;
                v84 = v311;
                objc_msgSend_paintPath_naturalBounds_inContext_isPDF_(v140, v167, v166, c, isDrawingIntoPDF, x, y, width, height);

                v81 = v312;
              }

              else
              {
                v168 = v310;
                v171 = objc_msgSend_CGPath(v168, v169, v170);
                objc_msgSend_paintPath_inContext_(v140, v172, v171, c);
              }
            }

            if (v136)
            {
              CGContextRestoreGState(c);
            }

            subpathOverrideCopy = v303;
            options = optionsCopy3;
          }

          if (v84)
          {
            v173 = objc_msgSend_shouldRender(v84, v121, v122);
          }

          else
          {
            v173 = 0;
          }

          if ((options & 7) == 0 || ((v173 | v125) & 1) == 0)
          {
            overrideCopy = v308;
            v174 = v309;
            goto LABEL_60;
          }

          if (v315)
          {
            overrideCopy = v308;
            v174 = v309;
            if (options)
            {
              objc_msgSend_pathBoundsWithoutStroke(v35, v121, v122);
              v176 = v175;
              v178 = v177;
              v180 = v179;
              v182 = v181;
              CGContextGetCTM(&transform, c);
              TSUTransformScale();
              v84 = v311;
              objc_msgSend_frameRect_inContext_withTotalScale_(v315, v183, c, v176, v178, v180, v182, v184);
            }

LABEL_60:
            v185 = v310;
            if (!opacityCopy)
            {
LABEL_62:
              CGContextRestoreGState(c);

              goto LABEL_63;
            }

LABEL_61:
            objc_msgSend_p_endApplyOpacity_apply_(self, v121, c, v305);
            goto LABEL_62;
          }

          v174 = v309;
          if (!v173)
          {
            overrideCopy = v308;
            goto LABEL_60;
          }

          if ((options & 1) == 0 || !v304)
          {
            v318 = 0;
            if ((options & 1) == 0)
            {
              optionsCopy4 = options;
              v84 = v311;
              goto LABEL_108;
            }
          }

          else
          {
            v186 = objc_msgSend_color(v84, v121, v122);
            objc_msgSend_alphaComponent(v186, v187, v188);
            v190 = v189;

            v191 = 0;
            if (v190 < 1.0 && (options & 8) == 0)
            {
              CGContextSaveGState(c);
              v192 = v311;
              v195 = objc_msgSend_color(v311, v193, v194);
              objc_msgSend_alphaComponent(v195, v196, v197);
              CGContextSetAlpha(c, v198);

              v81 = v312;
              CGContextBeginTransparencyLayer(c, 0);
              if (v312 == v309)
              {
                objc_opt_class();
                v202 = objc_msgSend_mutableCopy(v312, v200, v201);
                v203 = TSUDynamicCast();

                objc_opt_class();
                v299 = &unk_2885A0668;
                v204 = TSUClassAndProtocolCast();

                v192 = v204;
                v81 = v203;
              }

              if (v192)
              {
                v205 = objc_msgSend_color(v192, v121, v199);
                objc_msgSend_colorWithAlphaComponent_(v205, v206, v207, 1.0);
                v311 = v192;
                v208 = v313 = v81;
                objc_msgSend_setColor_(v192, v209, v208);

                v81 = v313;
              }

              else
              {
                v311 = 0;
              }

              v191 = 1;
            }

            v318 = v191;
          }

          v211 = v81;
          v212 = objc_msgSend_p_strokeForRenderingIncludingPlaybackFromStroke_(self, v121, v81, v299);

          optionsCopy5 = options;
          if ((options & 8) != 0)
          {
            v214 = objc_msgSend_p_brushStrokeFromStroke_(self, v213, v212);

            v212 = v214;
          }

          CGContextSaveGState(c);
          v217 = objc_msgSend_shapeInfo(self, v215, v216);
          v220 = objc_msgSend_pathSource(v217, v218, v219);
          objc_opt_class();
          v314 = v212;
          if (objc_opt_isKindOfClass())
          {
            v223 = objc_msgSend_shapeInfo(self, v221, v222);
            v226 = objc_msgSend_pathSource(v223, v224, v225);
            if (objc_msgSend_isCurveContinuous(v226, v227, v228))
            {
              v231 = objc_msgSend_layout(self, v229, v230);
              v234 = v231;
              v300 = v223;
              if (v231)
              {
                objc_msgSend_transformInRoot(v231, v232, v233);
              }

              else
              {
                memset(&transform, 0, sizeof(transform));
              }

              v279 = TSUIsTransformAxisAligned();

              if (v279)
              {
                CGAffineTransformMakeRotation(&transform, 0.000001);
                CGContextConcatCTM(c, &transform);
              }

              goto LABEL_87;
            }
          }

LABEL_87:
          v174 = v309;
          if (subpathOverrideCopy)
          {
            v235 = subpathOverrideCopy;
          }

          objc_opt_class();
          v238 = TSUDynamicCast();
          if (v238)
          {
            v239 = objc_alloc_init(TSDBrushStrokeLayoutOptions);
            objc_msgSend_strokeEnd(self, v240, v241);
            objc_msgSend_setStrokeEnd_(v239, v242, v243);
            if (objc_msgSend_p_hasFreehandDrawingBrushStroke(self, v244, v245))
            {
              objc_msgSend_setTransparencyLayersBySubpath_(v239, v246, subpathCopy);
              if (subpathOverrideCopy)
              {
                objc_msgSend_setPatternOffsetsBySubpath_(v239, v247, subpathOverrideCopy);
              }

              else
              {
                v264 = MEMORY[0x277CCABB0];
                v265 = objc_msgSend_shapeInfo(self, v247, v248);
                objc_msgSend_strokePatternOffsetDistance(v265, v266, v267);
                v270 = objc_msgSend_numberWithDouble_(v264, v268, v269);
                v326[0] = v270;
                v272 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v271, v326, 1);
                objc_msgSend_setPatternOffsetsBySubpath_(v239, v273, v272);

                subpathOverrideCopy = 0;
              }
            }

            optionsCopy4 = optionsCopy5;
            v274 = v310;
            v277 = objc_msgSend_CGPath(v274, v275, v276);
            objc_msgSend_paintPath_wantsInteriorStroke_inContext_useFastDrawing_parameterized_shouldReverseDrawOrder_withLayoutOptions_(v238, v278, v277, 0, c, 0, (optionsCopy5 >> 3) & 1, (optionsCopy5 >> 4) & 1, v239);

            v174 = v309;
          }

          else
          {
            if (subpathCopy)
            {
              v249 = MEMORY[0x277D81150];
              v250 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v236, "[TSDShapeRep p_drawInContext:withContent:strokeDrawOptions:withOpacity:usingPathOverride:patternOffsetsBySubpathOverride:transparencyLayersBySubpath:]");
              v252 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v251, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeRep.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v249, v253, v250, v252, 700, 0, "expected nil value for '%{public}s'", "transparencyLayersBySubpath");

              v174 = v309;
              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v254, v255);
            }

            objc_msgSend_strokeEnd(self, v236, v237);
            if (v258 >= 1.0)
            {
              v263 = v310;
            }

            else
            {
              objc_msgSend_strokeEnd(self, v256, v257);
              if (v261 >= 0.0001)
              {
                transform.a = 0.0;
                objc_msgSend_strokeEnd(self, v259, v260);
                v281 = objc_msgSend_elementPercentage_forOverallPercentage_(v310, v280, &transform);
                v262 = objc_msgSend_copyFromSegment_t_toSegment_t_(v310, v282, 0, v281, 0.0, transform.a);
              }

              else
              {
                v262 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v259, v260);
              }

              v263 = v262;
            }

            optionsCopy4 = optionsCopy5;
            v310 = v263;
            v285 = objc_msgSend_CGPath(v310, v283, v284);
            objc_msgSend_paintPath_wantsInteriorStroke_inContext_useFastDrawing_parameterized_shouldReverseDrawOrder_(v314, v286, v285, 0, c, 0, (optionsCopy5 >> 3) & 1, (optionsCopy5 >> 4) & 1);
          }

          CGContextRestoreGState(c);
          v84 = v311;
          v81 = v314;
LABEL_108:
          v185 = v310;
          if (v304)
          {
            if (v316)
            {
              v287 = objc_opt_class();
              objc_msgSend_colorOnSuppressedBackgrounds(v287, v288, v289);
            }

            else
            {
              objc_msgSend_color(v84, v121, v122);
            }
            v290 = ;
            v293 = objc_msgSend_CGColor(v290, v291, v292);
            CGContextSetStrokeColorWithColor(c, v293);
            v296 = objc_msgSend_CGColor(v290, v294, v295);
            CGContextSetFillColorWithColor(c, v296);
            if ((optionsCopy4 & 2) != 0 && v81)
            {
              objc_msgSend_p_drawLineEndForHead_withDelta_andStroke_inContext_useFastDrawing_(self, v297, 1, v84, c, 0, v324);
            }

            if ((optionsCopy4 & 4) != 0 && v81)
            {
              objc_msgSend_p_drawLineEndForHead_withDelta_andStroke_inContext_useFastDrawing_(self, v297, 0, v84, c, 0, v325);
            }

            v174 = v309;
          }

          if (v318)
          {
            CGContextEndTransparencyLayer(c);
            CGContextRestoreGState(c);
          }

          overrideCopy = v308;
          if (!opacityCopy)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        v71 = objc_msgSend_shapeLayout(self, v69, v70);
        v74 = objc_msgSend_path(v71, v72, v73);
        v310 = objc_msgSend_copy(v74, v75, v76);
      }

      v77 = objc_msgSend_copy(v62, v67, v68);
      goto LABEL_18;
    }
  }

  else
  {
  }

LABEL_63:
}

- (CGRect)strokeBoundsWithOptions:(unint64_t)options fallbackBounds:(CGRect)bounds
{
  v5 = objc_msgSend_shapeLayout(self, a2, options, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height);
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v20[0] = *MEMORY[0x277CBF2C0];
  v20[1] = v6;
  v20[2] = *(MEMORY[0x277CBF2C0] + 32);
  objc_msgSend_shapeFrameWithTransform_strokeDrawOptions_(v5, v7, v20, options);
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
    v17 = objc_msgSend_shapeLayout(self, v15, v16);
    objc_msgSend_frame(v17, v18, v19);
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v21;
    v25 = 0;
    if (v24 > 0.0 && v21 > 0.0)
    {
      v26 = objc_msgSend_p_bitmapContextOptionsForDrawingStroke_(self, v20, v12);
      v27 = TSDBitmapContextCreate((v26 | 8), v7, v8);
      objc_msgSend_p_drawInContext_withContent_strokeDrawOptions_withOpacity_(self, v28, v27, 0, 7, 0);
      Image = CGBitmapContextCreateImage(v27);
      v25 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v30, Image);
      CGContextRelease(v27);
      CGImageRelease(Image);
    }
  }

  else
  {
    v25 = 0;
  }

  stroke->origin.x = v5;
  stroke->origin.y = v6;
  stroke->size.width = v7;
  stroke->size.height = v8;

  return v25;
}

- (BOOL)isInvisible
{
  if (!BYTE2(self->mLastDynamicInvalidRect.size.height))
  {
    v4 = objc_msgSend_layout(self, a2, v2);
    v7 = objc_msgSend_stroke(v4, v5, v6);

    v10 = objc_msgSend_shapeLayout(self, v8, v9);
    v13 = objc_msgSend_fill(v10, v11, v12);

    objc_msgSend_opacity(self, v14, v15);
    isClear = 1;
    if (v19 != 0.0)
    {
      if (v7 && (objc_msgSend_shouldRender(v7, v16, v17) & 1) != 0)
      {
        isClear = 0;
      }

      else if (v13)
      {
        isClear = objc_msgSend_isClear(v13, v16, v17);
      }

      else
      {
        isClear = 1;
      }
    }

    BYTE3(self->mLastDynamicInvalidRect.size.height) = isClear;
    BYTE2(self->mLastDynamicInvalidRect.size.height) = 1;
  }

  if (BYTE3(self->mLastDynamicInvalidRect.size.height))
  {
    return 1;
  }

  v21 = objc_msgSend_shapeLayout(self, a2, v2);
  isInvisible = objc_msgSend_isInvisible(v21, v22, v23);

  return isInvisible;
}

- (BOOL)isMoreOptimalToDrawWithOtherShapeRepsIfPossible
{
  v4 = objc_msgSend_layout(self, a2, v2);
  v7 = objc_msgSend_stroke(v4, v5, v6);
  v9 = objc_msgSend_p_strokeForRenderingIncludingPlaybackFromStroke_(self, v8, v7);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)canDrawWithOtherShapeRep:(id)rep
{
  repCopy = rep;
  if ((objc_msgSend_isPartiallyAnimated(self, v5, v6) & 1) == 0 && (objc_msgSend_isPartiallyAnimated(repCopy, v7, v8) & 1) == 0)
  {
    v13 = objc_msgSend_childReps(self, v9, v10);
    if (objc_msgSend_count(v13, v14, v15))
    {
      canDrawWithOtherStroke = 0;
    }

    else
    {
      v18 = objc_msgSend_childReps(repCopy, v16, v17);
      v21 = objc_msgSend_count(v18, v19, v20);

      if (v21)
      {
        goto LABEL_3;
      }

      objc_msgSend_opacity(self, v22, v23);
      v25 = v24;
      objc_msgSend_opacity(repCopy, v26, v27);
      if (v25 != v30 && vabdd_f64(v25, v30) >= fabs(v30 * 0.000000999999997))
      {
        goto LABEL_3;
      }

      objc_msgSend_strokeEnd(self, v28, v29);
      if (v33 < 1.0)
      {
        goto LABEL_3;
      }

      objc_msgSend_strokeEnd(repCopy, v31, v32);
      if (v36 < 1.0)
      {
        goto LABEL_3;
      }

      v13 = objc_msgSend_shapeLayout(self, v34, v35);
      v39 = objc_msgSend_shapeLayout(repCopy, v37, v38);
      v44 = objc_msgSend_fill(v13, v40, v41);
      if (v44)
      {
        v45 = objc_msgSend_fill(v13, v42, v43);
        objc_opt_class();
        v46 = objc_opt_isKindOfClass() ^ 1;
      }

      else
      {
        v46 = 0;
      }

      v51 = objc_msgSend_fill(v39, v47, v48);
      if (v51)
      {
        v52 = objc_msgSend_fill(v39, v49, v50);
        objc_opt_class();
        v53 = objc_opt_isKindOfClass() ^ 1;
      }

      else
      {
        v53 = 0;
      }

      if ((v46 | v53))
      {
        canDrawWithOtherStroke = 0;
      }

      else
      {
        v56 = objc_msgSend_stroke(v13, v54, v55);
        v59 = objc_msgSend_stroke(v39, v57, v58);
        canDrawWithOtherStroke = objc_msgSend_canDrawWithOtherStroke_(v56, v60, v59);
      }
    }

    goto LABEL_4;
  }

LABEL_3:
  canDrawWithOtherStroke = 0;
LABEL_4:

  return canDrawWithOtherStroke;
}

- (double)strokeEnd
{
  result = 1.0;
  if ((self->mAvailableToCommitPointRange.length & 3) == 1)
  {
    return *(self + 29);
  }

  return result;
}

- (double)opacity
{
  v4.receiver = self;
  v4.super_class = TSDShapeRep;
  [(TSDStyledRep *)&v4 opacity];
  if ((self->mAvailableToCommitPointRange.length & 3) == 2)
  {
    return *(self + 29);
  }

  return result;
}

- (id)p_drawingPlaybackSession
{
  objc_opt_class();
  v5 = objc_msgSend_dynamicOverride(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (void)setTextureAttributes:(id)attributes textureBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v66 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v64.receiver = self;
  v64.super_class = TSDShapeRep;
  [(TSDStyledRep *)&v64 setTextureAttributes:attributesCopy textureBounds:x, y, width, height];
  objc_msgSend_setObjectType_(attributesCopy, v10, 1);
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v13 = objc_msgSend_visibleTextures(attributesCopy, v11, v12);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v60, v65, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v61;
    v20 = -x;
    v21 = -y;
    v22 = MEMORY[0x277CBF2C0];
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v61 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v24 = *(*(&v60 + 1) + 8 * i);
        if (objc_msgSend_textureType(v24, v16, v17) == 5 || objc_msgSend_textureType(v24, v16, v17) == 7 || objc_msgSend_textureType(v24, v16, v17) == 8)
        {
          v59[0] = 0;
          v59[1] = 0;
          v58[0] = 0;
          v58[1] = 0;
          v25 = objc_msgSend_canvas(self, v16, v17);
          objc_msgSend_viewScale(v25, v26, v27);
          v29 = v28;

          v32 = objc_msgSend_shapeLayout(self, v30, v31);
          v57 = 0;
          objc_msgSend_aliasPathForScale_adjustedStroke_adjustedPath_startDelta_endDelta_(v32, v33, 0, &v57, v59, v58, v29);
          v34 = v57;

          v37 = objc_msgSend_shapeLayout(self, v35, v36);
          objc_msgSend_pathBounds(v37, v38, v39);
          v41 = v40;
          v43 = v42;

          CGAffineTransformMakeTranslation(&v56, -v41, -v43);
          objc_msgSend_transformUsingAffineTransform_(v34, v44, &v56);
          v47 = objc_msgSend_shapeLayout(self, v45, v46);
          v50 = v47;
          if (v47)
          {
            objc_msgSend_transformInRoot(v47, v48, v49);
          }

          else
          {
            memset(&v56, 0, sizeof(v56));
          }

          objc_msgSend_transformUsingAffineTransform_(v34, v48, &v56);

          v51 = v22[1];
          *&v56.a = *v22;
          *&v56.c = v51;
          *&v56.tx = v22[2];
          *&v55.a = *&v56.a;
          *&v55.c = v51;
          *&v55.tx = *&v56.tx;
          CGAffineTransformTranslate(&v56, &v55, v20, v21);
          v54 = v56;
          CGAffineTransformScale(&v55, &v54, v29, v29);
          v56 = v55;
          objc_msgSend_transformUsingAffineTransform_(v34, v52, &v55);
          objc_msgSend_setShapePath_(v24, v53, v34);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v60, v65, 16);
    }

    while (v18);
  }
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject mixingTypeContext:(id)context
{
  objectCopy = object;
  incomingObjectCopy = incomingObject;
  contextCopy = context;
  v12 = objc_msgSend_shapeInfo(objectCopy, v10, v11);
  v15 = objc_msgSend_shapeInfo(incomingObjectCopy, v13, v14);
  v17 = objc_msgSend_mixingTypeWithObject_context_(v12, v16, v15, contextCopy);

  v20 = 0.0;
  if (v17 != 1)
  {
    if (v17 == 5)
    {
      v21 = 1.0;
    }

    else
    {
      v21 = 0.0;
    }

    v22 = objc_msgSend_shapeInfo(objectCopy, v18, v19);
    v25 = objc_msgSend_pathSource(v22, v23, v24);
    v28 = objc_msgSend_shapeInfo(incomingObjectCopy, v26, v27);
    v31 = objc_msgSend_pathSource(v28, v29, v30);
    v32 = TSDMixingTypeWithObjects(v25, v31, contextCopy);

    if (v32 <= 2)
    {
      if (v32)
      {
        if (v32 == 2)
        {
          v20 = 0.1;
        }
      }

      else
      {
        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "+[TSDShapeRep magicMoveAttributeMatchPercentBetweenOutgoingObject:incomingObject:mixingTypeContext:]");
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShapeRep.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 947, 0, "Path mixing type Undefined!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
      }
    }

    else
    {
      switch(v32)
      {
        case 3:
          v20 = 0.5;
          break;
        case 4:
          v20 = 0.9;
          break;
        case 5:
          v20 = 1.0;
          break;
      }
    }

    v42 = v21 + v20 * 3.0;
    v43 = objc_msgSend_shapeInfo(objectCopy, v33, v34);
    v46 = objc_msgSend_style(v43, v44, v45);
    v49 = objc_msgSend_shapeInfo(incomingObjectCopy, v47, v48);
    v52 = objc_msgSend_style(v49, v50, v51);
    isEqual = objc_msgSend_isEqual_(v46, v53, v52);

    v55 = v42 + 1.0;
    if (!isEqual)
    {
      v55 = v42;
    }

    v20 = v55 / 5.0;
  }

  return v20;
}

- (void)p_drawLineEndForHead:(BOOL)head withDelta:(CGPoint)delta andStroke:(id)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing
{
  drawingCopy = drawing;
  headCopy = head;
  strokeCopy = stroke;
  v13 = objc_msgSend_shapeLayout(self, v11, v12);
  v16 = v13;
  if (headCopy)
  {
    v17 = objc_msgSend_strokeHeadLineEnd(v13, v14, v15);
    if (!v17)
    {
      goto LABEL_7;
    }

    v20 = v17;
    objc_msgSend_headLineEndPoint(v16, v18, v19);
    objc_msgSend_headLineEndAngle(v16, v21, v22);
  }

  else
  {
    v24 = objc_msgSend_strokeTailLineEnd(v13, v14, v15);
    if (!v24)
    {
      goto LABEL_7;
    }

    v20 = v24;
    objc_msgSend_tailLineEndPoint(v16, v25, v26);
    objc_msgSend_tailLineEndAngle(v16, v27, v28);
  }

  v29 = v23;
  TSUAddPoints();
  v31 = v30;
  v33 = v32;
  v36 = objc_msgSend_stroke(v16, v34, v35);
  objc_msgSend_width(v36, v37, v38);
  objc_msgSend_scaleForStrokeWidth_(v20, v39, v40);
  v42 = v41;

  objc_msgSend_paintLineEnd_atPoint_atAngle_withScale_inContext_useFastDrawing_(strokeCopy, v43, v20, context, drawingCopy, v31, v33, v29, v42);
LABEL_7:
}

- (BOOL)p_shouldDrawStrokeWide:(id)wide
{
  v4 = objc_msgSend_color(wide, a2, wide);
  if (objc_msgSend_colorRGBSpace(v4, v5, v6) == 1)
  {
    v9 = objc_msgSend_canvas(self, v7, v8);
    IsWideGamut = objc_msgSend_canvasIsWideGamut(v9, v10, v11);
  }

  else
  {
    IsWideGamut = 0;
  }

  return IsWideGamut;
}

- (unint64_t)p_bitmapContextOptionsForDrawingStroke:(id)stroke
{
  if (objc_msgSend_p_shouldDrawStrokeWide_(self, a2, stroke))
  {
    return 35;
  }

  else
  {
    return 3;
  }
}

- (BOOL)isNormalShapeInsideFreehandDrawing
{
  v3 = objc_msgSend_info(self, a2, v2);
  v6 = objc_msgSend_parentInfo(v3, v4, v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_msgSend_freehandDrawingSpacerShape(v6, v7, v8);
    if (v10 == v3)
    {
      LOBYTE(v11) = 0;
    }

    else
    {
      v11 = objc_msgSend_isNonGroupedChild_(v6, v9, v3) ^ 1;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)p_hasFreehandDrawingBrushStroke
{
  objc_opt_class();
  v5 = objc_msgSend_layout(self, v3, v4);
  v8 = objc_msgSend_stroke(v5, v6, v7);
  v9 = TSUDynamicCast();

  isEqualToString = 0;
  if (objc_msgSend_isNormalShapeInsideFreehandDrawing(self, v10, v11) && v9)
  {
    v15 = objc_msgSend_strokeName(v9, v12, v13);
    if (objc_msgSend_isEqualToString_(v15, v16, @"Pencil"))
    {
      isEqualToString = 1;
    }

    else
    {
      v19 = objc_msgSend_strokeName(v9, v17, v18);
      isEqualToString = objc_msgSend_isEqualToString_(v19, v20, @"Crayon");
    }
  }

  return isEqualToString;
}

- (id)p_brushStrokeFromStroke:(id)stroke
{
  strokeCopy = stroke;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (!v6)
  {
    v7 = objc_msgSend_cap(strokeCopy, v4, v5);
    v8 = off_27A6CCD58;
    if (v7 != 1)
    {
      v8 = off_27A6CCD50;
    }

    v9 = *v8;
    v10 = [TSDBrushStroke alloc];
    v13 = objc_msgSend_color(strokeCopy, v11, v12);
    objc_msgSend_width(strokeCopy, v14, v15);
    v17 = v16;
    v20 = objc_msgSend_cap(strokeCopy, v18, v19);
    v23 = objc_msgSend_join(strokeCopy, v21, v22);
    v26 = objc_msgSend_pattern(strokeCopy, v24, v25);
    objc_msgSend_miterLimit(strokeCopy, v27, v28);
    v6 = objc_msgSend_initWithName_color_width_cap_join_pattern_miterLimit_(v10, v29, v9, v13, v20, v23, v26, v17, v30);
  }

  return v6;
}

- (BOOL)p_drawsSelfInOneStep
{
  v4 = objc_msgSend_shapeInfo(self, a2, v2);
  v7 = objc_msgSend_shapeLayout(self, v5, v6);
  v10 = objc_msgSend_fill(v7, v8, v9);

  if (v10)
  {
    isClear = objc_msgSend_isClear(v10, v11, v12);
  }

  else
  {
    isClear = 1;
  }

  v14 = objc_msgSend_stroke(v4, v11, v12);
  if ((objc_msgSend_shouldRender(v14, v15, v16) & 1) == 0)
  {

    v14 = 0;
  }

  if (v14)
  {
    v19 = isClear;
  }

  else
  {
    v19 = 1;
  }

  v20 = objc_msgSend_shapeLayout(self, v17, v18);
  if (objc_msgSend_pathIsOpen(v20, v21, v22))
  {
    v27 = objc_msgSend_headLineEnd(v4, v23, v24);
    if (v27)
    {
      v28 = 0;
    }

    else
    {
      v29 = objc_msgSend_tailLineEnd(v4, v25, v26);
      v28 = v29 == 0;
    }
  }

  else
  {
    v28 = 1;
  }

  if ((v19 & v28) == 1)
  {
    if (isClear)
    {
      if (!v14)
      {
        v31 = 1;
        goto LABEL_22;
      }

      v30 = objc_msgSend_drawsInOneStep(v14, v23, v24);
    }

    else
    {
      v30 = objc_msgSend_drawsInOneStep(v10, v23, v24);
    }

    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

LABEL_22:

  return v31;
}

- (BOOL)canDrawShadowInOneStepWithChildren:(BOOL)children
{
  childrenCopy = children;
  if (!objc_msgSend_p_drawsSelfInOneStep(self, a2, children))
  {
    return 0;
  }

  objc_opt_class();
  v7 = objc_msgSend_shapeLayout(self, v5, v6);
  v10 = objc_msgSend_fill(v7, v8, v9);
  v11 = TSUDynamicCast();

  v12 = v11 == 0;
  if (v11)
  {
    v15 = 1;
  }

  else
  {
    v15 = !childrenCopy;
  }

  if (!v15)
  {
    v16 = objc_msgSend_childReps(self, v13, v14);
    v12 = objc_msgSend_count(v16, v17, v18) == 0;
  }

  return v12;
}

- (void)dynamicOverrideDidChange
{
  v23.receiver = self;
  v23.super_class = TSDShapeRep;
  [(TSDRep *)&v23 dynamicOverrideDidChange];
  v5 = objc_msgSend_p_drawingPlaybackSession(self, v3, v4);
  v8 = v5;
  length = self->mAvailableToCommitPointRange.length;
  if (v5)
  {
    if ((length & 3) == 0)
    {
      if (objc_msgSend_shouldParameterizeStrokes(v5, v6, v7))
      {
        v16 = objc_msgSend_shapeInfo(self, v14, v15);
        if (objc_msgSend_isTreatedAsFillForFreehandDrawing(v16, v17, v18))
        {
          v19 = 2;
        }

        else
        {
          v19 = 1;
        }
      }

      else
      {
        v19 = 2;
      }

      LOBYTE(self->mAvailableToCommitPointRange.length) = self->mAvailableToCommitPointRange.length & 0xFC | v19;
      v20 = objc_msgSend_shapeInfo(self, v14, v15);
      objc_msgSend_visibilityOfChild_(v8, v21, v20);
      *(self + 29) = v22;

      goto LABEL_14;
    }

    v10 = objc_msgSend_shapeInfo(self, v6, v7);
    objc_msgSend_visibilityOfChild_(v8, v11, v10);
    v13 = v12;

    if (*(self + 29) != v13)
    {
      *(self + 29) = v13;
LABEL_14:
      BYTE2(self->mLastDynamicInvalidRect.size.height) = 0;
    }
  }

  else if ((length & 3) != 0)
  {
    LOBYTE(self->mAvailableToCommitPointRange.length) = length & 0xFC;
    goto LABEL_14;
  }
}

- (BOOL)p_shouldUpgradeStrokeForPlayback:(id)playback
{
  playbackCopy = playback;
  if ((self->mAvailableToCommitPointRange.length & 3) == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_msgSend_width(playbackCopy, v5, v6);
    v9 = v8;
    v12 = objc_msgSend_canvas(self, v10, v11);
    objc_msgSend_viewScale(v12, v13, v14);
    v7 = v9 * v15 < 5.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)p_strokeForRenderingIncludingPlaybackFromStroke:(id)stroke
{
  strokeCopy = stroke;
  v7 = strokeCopy;
  if (objc_msgSend_p_shouldUpgradeStrokeForPlayback_(self, v5, strokeCopy))
  {
    v7 = objc_msgSend_p_brushStrokeFromStroke_(self, v6, strokeCopy);
  }

  return v7;
}

@end