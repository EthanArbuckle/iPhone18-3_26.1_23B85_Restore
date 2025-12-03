@interface TSDFreehandDrawingRep
- (BOOL)p_shouldDrawShapeRep:(id)rep withOtherShapeRep:(id)shapeRep;
- (CGRect)clipRect;
- (TSDFreehandDrawingRep)initWithLayout:(id)layout canvas:(id)canvas;
- (double)opacity;
- (id)p_childrenToExcludeFromFlattenedDrawing;
- (id)p_freehandDrawingInfo;
- (id)p_freehandDrawingLayout;
- (id)p_shapeChildrenForDrawingRecursively;
- (id)textureForDescription:(id)description;
- (void)p_drawChildShapeReps:(id)reps togetherInContext:(CGContext *)context;
- (void)recursivelyDrawChildrenInContext:(CGContext *)context keepingChildrenPassingTest:(id)test;
- (void)willBeRemoved;
@end

@implementation TSDFreehandDrawingRep

- (TSDFreehandDrawingRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v5.receiver = self;
  v5.super_class = TSDFreehandDrawingRep;
  return [(TSDRep *)&v5 initWithLayout:layout canvas:canvas];
}

- (id)p_freehandDrawingInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (void)willBeRemoved
{
  v2.receiver = self;
  v2.super_class = TSDFreehandDrawingRep;
  [(TSDRep *)&v2 willBeRemoved];
}

- (BOOL)p_shouldDrawShapeRep:(id)rep withOtherShapeRep:(id)shapeRep
{
  repCopy = rep;
  shapeRepCopy = shapeRep;
  if (objc_msgSend_isMoreOptimalToDrawWithOtherShapeRepsIfPossible(repCopy, v7, v8))
  {
    canDrawWithOtherShapeRep = objc_msgSend_canDrawWithOtherShapeRep_(repCopy, v9, shapeRepCopy);
  }

  else
  {
    canDrawWithOtherShapeRep = 0;
  }

  return canDrawWithOtherShapeRep;
}

- (void)p_drawChildShapeReps:(id)reps togetherInContext:(CGContext *)context
{
  v160 = *MEMORY[0x277D85DE8];
  repsCopy = reps;
  if (!objc_msgSend_count(repsCopy, v6, v7))
  {
    goto LABEL_49;
  }

  if (objc_msgSend_count(repsCopy, v8, v9) == 1)
  {
    CGContextSaveGState(context);
    v13 = objc_msgSend_objectAtIndexedSubscript_(repsCopy, v12, 0);
    objc_msgSend_recursivelyDrawInContext_keepingChildrenPassingTest_(v13, v14, context, 0);

    CGContextRestoreGState(context);
    goto LABEL_49;
  }

  v15 = objc_msgSend_firstObject(repsCopy, v10, v11);
  objc_msgSend_opacity(v15, v16, v17);
  v19 = v18;

  if (v19 == 0.0)
  {
    goto LABEL_49;
  }

  v146 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v20, v21);
  objc_msgSend_firstObject(repsCopy, v22, v23);
  v147 = memset(&v158, 0, sizeof(v158));
  v26 = objc_msgSend_layout(v147, v24, v25);
  v29 = v26;
  if (v26)
  {
    objc_msgSend_transformInRoot(v26, v27, v28);
  }

  else
  {
    memset(&v158, 0, sizeof(v158));
  }

  objc_opt_class();
  v32 = objc_msgSend_shapeLayout(v147, v30, v31);
  v35 = objc_msgSend_stroke(v32, v33, v34);
  v36 = TSUDynamicCast();

  c = context;
  if (!v36)
  {
    goto LABEL_13;
  }

  v39 = objc_msgSend_strokeName(v36, v37, v38);
  if (!objc_msgSend_isEqualToString_(v39, v40, @"Pencil"))
  {
    v45 = objc_msgSend_strokeName(v36, v41, v42);
    isEqualToString = objc_msgSend_isEqualToString_(v45, v46, @"Crayon");

    if (isEqualToString)
    {
      goto LABEL_12;
    }

LABEL_13:
    v48 = 0;
    goto LABEL_14;
  }

LABEL_12:
  v48 = objc_msgSend_array(MEMORY[0x277CBEB18], v43, v44);
LABEL_14:
  v49 = MEMORY[0x277CBF398];

  objc_msgSend_opacity(v147, v50, v51);
  if (v54 != 1.0 && fabs(v54 + -1.0) >= 0.000000999999997 || (objc_msgSend_layout(v147, v52, v53), v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stroke(v55, v56, v57), v58 = objc_claimAutoreleasedReturnValue(), objc_msgSend_color(v58, v59, v60), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend_alphaComponent(v61, v62, v63), v65 = v64, v61, v58, v55, v66 = 0, v65 != 1.0) && fabs(v65 + -1.0) >= 0.000000999999997)
  {
    v66 = objc_msgSend_array(MEMORY[0x277CBEB18], v52, v53);
  }

  v68 = *v49;
  v67 = v49[1];
  v69 = v49[2];
  rect1 = v49[3];
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v143 = repsCopy;
  obj = repsCopy;
  v148 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v70, &v154, v159, 16);
  if (v148)
  {
    v145 = *v155;
    v73 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v148; ++i)
      {
        if (*v155 != v145)
        {
          objc_enumerationMutation(obj);
        }

        v75 = *(*(&v154 + 1) + 8 * i);
        v76 = objc_msgSend_shapeLayout(v75, v71, v72);
        v79 = objc_msgSend_pathSource(v76, v77, v78);
        v82 = objc_msgSend_bezierPath(v79, v80, v81);
        v85 = objc_msgSend_copy(v82, v83, v84);

        objc_msgSend_clipRect(v75, v86, v87);
        x = v90;
        y = v92;
        width = v94;
        height = v96;
        if (v75 != v147)
        {
          memset(&transform, 0, sizeof(transform));
          v98 = objc_msgSend_shapeLayout(v75, v88, v89);
          v101 = v98;
          if (v98)
          {
            objc_msgSend_transformInRoot(v98, v99, v100);
          }

          else
          {
            memset(&t1, 0, sizeof(t1));
          }

          v150 = v158;
          CGAffineTransformInvert(&t2, &v150);
          CGAffineTransformConcat(&transform, &t1, &t2);

          t1 = transform;
          objc_msgSend_transformUsingAffineTransform_(v85, v102, &t1);
          t1 = transform;
          v161.origin.x = x;
          v161.origin.y = y;
          v161.size.width = width;
          v161.size.height = height;
          v162 = CGRectApplyAffineTransform(v161, &t1);
          x = v162.origin.x;
          y = v162.origin.y;
          width = v162.size.width;
          height = v162.size.height;
        }

        if (v48 | v66)
        {
          v103 = v73;
          v105 = objc_msgSend_totalSubpathCountIncludingEffectivelyEmptySubpaths(v85, v88, v89);
          if (!v48)
          {
            goto LABEL_36;
          }

          v106 = objc_msgSend_shapeLayout(v75, v88, v104);
          v109 = objc_msgSend_stroke(v106, v107, v108);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v113 = MEMORY[0x277D81150];
            v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, "[TSDFreehandDrawingRep p_drawChildShapeReps:togetherInContext:]");
            v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingRep.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v113, v117, v114, v116, 243, 0, "Trying to draw a shape without a brush stroke along with one with a brush stroke.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v118, v119);
          }

          v120 = objc_msgSend_shapeInfo(v75, v111, v112);
          objc_msgSend_strokePatternOffsetDistance(v120, v121, v122);
          v124 = v123;

          v73 = v103;
          if (v105)
          {
            v126 = v105;
            do
            {
              v127 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v88, v125, v124);
              objc_msgSend_addObject_(v48, v128, v127);

              --v126;
            }

            while (v126);
LABEL_36:
            v73 = v103;
            if (v66 && v105)
            {
              for (j = 0; j != v105; ++j)
              {
                if (j || (v163.origin.x = v68, v163.origin.y = v67, v163.size.width = v69, v163.size.height = rect1, v166.origin.x = x, v166.origin.y = y, v166.size.width = width, v166.size.height = height, v130 = CGRectIntersectsRect(v163, v166), v131 = v103, !v130))
                {
                  v131 = MEMORY[0x277CBEC28];
                }

                objc_msgSend_addObject_(v66, v88, v131);
              }
            }
          }
        }

        objc_msgSend_appendBezierPath_(v146, v88, v85);
        v164.origin.x = v68;
        v164.origin.y = v67;
        v164.size.width = v69;
        v164.size.height = rect1;
        v167.origin.x = x;
        v167.origin.y = y;
        v167.size.width = width;
        v167.size.height = height;
        v165 = CGRectUnion(v164, v167);
        v68 = v165.origin.x;
        v67 = v165.origin.y;
        v69 = v165.size.width;
        rect1 = v165.size.height;
      }

      v148 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v71, &v154, v159, 16);
    }

    while (v148);
  }

  CGContextSaveGState(c);
  v134 = objc_msgSend_layout(v147, v132, v133);
  v137 = objc_msgSend_geometry(v134, v135, v136);
  v140 = v137;
  if (v137)
  {
    objc_msgSend_transform(v137, v138, v139);
  }

  else
  {
    memset(&transform, 0, sizeof(transform));
  }

  repsCopy = v143;
  CGContextConcatCTM(c, &transform);

  CGContextClipToRectSafe();
  objc_msgSend_drawInContext_usingPathOverride_patternOffsetsBySubpathOverride_transparencyLayersBySubpath_(v147, v141, c, v146, v48, v66);
  CGContextRestoreGState(c);

LABEL_49:
}

- (void)recursivelyDrawChildrenInContext:(CGContext *)context keepingChildrenPassingTest:(id)test
{
  v342 = *MEMORY[0x277D85DE8];
  testCopy = test;
  IsPDFContext = TSDCGContextIsPDFContext(context);
  if (IsPDFContext)
  {
    objc_msgSend_clipRect(self, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    ClipBoundingBox = CGContextGetClipBoundingBox(context);
    v347.origin.x = v11;
    v347.origin.y = v13;
    v347.size.width = v15;
    v347.size.height = v17;
    v348 = CGRectIntersection(v347, ClipBoundingBox);
    x = v348.origin.x;
    y = v348.origin.y;
    width = v348.size.width;
    height = v348.size.height;
    if (CGRectIsEmpty(v348))
    {
      goto LABEL_104;
    }

    TSUMultiplySizeScalar();
    v23 = v22;
    TSDDefaultResampledImageSize();
    TSUShrinkSizeToFitInSize();
    v25 = v23 / v24;
    contextCopy = TSDBitmapContextCreate(0x23, v24, v26);
    IsPrintContext = TSDCGContextIsPrintContext(context);
    v29 = TSDCGContextIsPDFContext(context);
    v30 = sub_276649650(context);
    v31 = TSDCGContextAssociatedScreenScale(context);
    HasBackgroundsSuppressed = TSDCGContextHasBackgroundsSuppressed(context);
    TSDSetCGContextInfo(contextCopy, IsPrintContext, v29, v30, HasBackgroundsSuppressed, v31);
    CGContextScaleCTM(contextCopy, 1.0 / v25, 1.0 / v25);
    CGContextScaleCTM(contextCopy, 1.0, 1.0);
    CGContextTranslateCTM(contextCopy, -x, -y);
  }

  else
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    contextCopy = context;
  }

  objc_msgSend_opacity(self, v7, v8);
  if (v35 >= 1.0 || (objc_msgSend_canvas(self, v33, v34), v36 = objc_claimAutoreleasedReturnValue(), isCanvasInteractive = objc_msgSend_isCanvasInteractive(v36, v37, v38), v36, (isCanvasInteractive & 1) != 0))
  {
    v310 = 0;
  }

  else
  {
    CGContextSaveGState(context);
    objc_msgSend_opacity(self, v40, v41);
    CGContextSetAlpha(context, v42);
    CGContextBeginTransparencyLayer(context, 0);
    v310 = 1;
  }

  rect = y;
  v311 = IsPDFContext;
  v43 = objc_msgSend_p_shapeChildrenForDrawingRecursively(self, v33, v34);
  v320 = objc_msgSend_array(MEMORY[0x277CBEB18], v44, v45);
  v314 = testCopy;
  c = context;
  if (objc_msgSend_count(v43, v46, v47))
  {
    v50 = 0;
    v51 = 0;
    do
    {
      v52 = objc_msgSend_objectAtIndexedSubscript_(v43, v48, v51);
      v57 = objc_msgSend_count(v43, v53, v54) - 1;
      if (v51 == v57)
      {
        v58 = 0;
        if (!testCopy)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v58 = objc_msgSend_objectAtIndexedSubscript_(v43, v55, v51 + 1);
        if (!testCopy)
        {
          goto LABEL_16;
        }
      }

      if ((testCopy[2](testCopy, v52) & 1) == 0)
      {
        v73 = v51 - v50;
LABEL_25:
        context = c;
        if (v73)
        {
          v80 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v55, v50);
          objc_msgSend_addObject_(v320, v81, v80);
        }

        v50 = ++v51;
        goto LABEL_28;
      }

LABEL_16:
      objc_msgSend_clipRect(v52, v55, v56);
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v69 = objc_msgSend_layout(v52, v67, v68);
      v72 = v69;
      if (v69)
      {
        objc_msgSend_transform(v69, v70, v71);
      }

      else
      {
        memset(&v338, 0, sizeof(v338));
      }

      v349.origin.x = v60;
      v349.origin.y = v62;
      v349.size.width = v64;
      v349.size.height = v66;
      v350 = CGRectApplyAffineTransform(v349, &v338);
      v74 = v350.origin.x;
      v75 = v350.origin.y;
      v76 = v350.size.width;
      v77 = v350.size.height;

      v360 = CGContextGetClipBoundingBox(c);
      v351.origin.x = v74;
      v351.origin.y = v75;
      v351.size.width = v76;
      v351.size.height = v77;
      v352 = CGRectIntersection(v351, v360);
      IsEmpty = CGRectIsEmpty(v352);
      v79 = IsEmpty;
      if (v51 == v57 || IsEmpty || !objc_msgSend_p_shouldDrawShapeRep_withOtherShapeRep_(self, v55, v52, v58))
      {
        v73 = v51 - v50 + !v79;
        testCopy = v314;
        goto LABEL_25;
      }

      ++v51;
      testCopy = v314;
      context = c;
LABEL_28:
    }

    while (v51 < objc_msgSend_count(v43, v82, v83));
  }

  v84 = v320;
  if (self->_cachedClusteredShapeRepsForAnimationExport)
  {
    goto LABEL_107;
  }

  v85 = objc_msgSend_canvas(self, v48, v49);
  if (objc_msgSend_isCanvasInteractive(v85, v86, v87))
  {
  }

  else
  {
    v90 = objc_msgSend_dynamicOverride(self, v88, v89);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v84 = v320;
    if (isKindOfClass)
    {
      v92 = objc_alloc_init(MEMORY[0x277CBEA78]);
      cachedClusteredShapeRepsForAnimationExport = self->_cachedClusteredShapeRepsForAnimationExport;
      self->_cachedClusteredShapeRepsForAnimationExport = v92;

      objc_msgSend_setCountLimit_(self->_cachedClusteredShapeRepsForAnimationExport, v94, 20);
    }
  }

  if (self->_cachedClusteredShapeRepsForAnimationExport)
  {
LABEL_107:
    if (objc_msgSend_count(v84, v48, v49))
    {
      v316 = 0;
      v97 = 0;
      v98 = 0;
      v99 = x;
      while (1)
      {
        v325 = v98;
        v315 = objc_autoreleasePoolPush();
        v318 = v97 + 1;
        v102 = objc_msgSend_count(v84, v100, v101) - 1;
        v104 = objc_msgSend_objectAtIndexedSubscript_(v84, v103, v325);
        v107 = objc_msgSend_rangeValue(v104, v105, v106);
        v109 = objc_msgSend_objectAtIndexedSubscript_(v43, v108, v107);
        isPartiallyAnimated = objc_msgSend_isPartiallyAnimated(v109, v110, v111);

        v115 = v325 == v102;
        v116 = v325;
        if (v115)
        {
          break;
        }

        v117 = v325 + 1;
        v118 = objc_msgSend_objectAtIndexedSubscript_(v320, v113, v325 + 1);
        v121 = objc_msgSend_rangeValue(v118, v119, v120);
        v123 = objc_msgSend_objectAtIndexedSubscript_(v43, v122, v121);
        v126 = objc_msgSend_isPartiallyAnimated(v123, v124, v125);

        v116 = v325;
        v127 = isPartiallyAnimated | v126;
        testCopy = v314;
        if (v127)
        {
          break;
        }

        v84 = v320;
        ++v97;
LABEL_78:
        objc_autoreleasePoolPop(v315);
        v280 = objc_msgSend_count(v84, v278, v279);
        v98 = v117;
        if (v117 >= v280)
        {
          goto LABEL_88;
        }
      }

      if (isPartiallyAnimated)
      {
        if (v97)
        {
          v128 = MEMORY[0x277D81150];
          v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, "[TSDFreehandDrawingRep recursivelyDrawChildrenInContext:keepingChildrenPassingTest:]");
          v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingRep.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v128, v132, v129, v131, 395, 0, "If this is a partially animated cluster, it should not have been grouped.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v133, v134);
        }

        v332 = 0u;
        v333 = 0u;
        v330 = 0u;
        v331 = 0u;
        v84 = v320;
        v135 = objc_msgSend_subarrayWithRange_(v320, v113, v316, v318);
        v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(v135, v136, &v330, v340, 16);
        if (!v137)
        {
          goto LABEL_76;
        }

        v140 = v137;
        v141 = *v331;
        do
        {
          for (i = 0; i != v140; ++i)
          {
            if (*v331 != v141)
            {
              objc_enumerationMutation(v135);
            }

            v143 = objc_msgSend_rangeValue(*(*(&v330 + 1) + 8 * i), v138, v139);
            v145 = objc_msgSend_subarrayWithRange_(v43, v144, v143, v144);
            objc_msgSend_p_drawChildShapeReps_togetherInContext_(self, v146, v145, contextCopy);
          }

          v140 = objc_msgSend_countByEnumeratingWithState_objects_count_(v135, v138, &v330, v340, 16);
        }

        while (v140);
      }

      else
      {
        v147 = objc_msgSend_canvas(self, v113, v114);
        objc_msgSend_viewScale(v147, v148, v149);
        v151 = v150;

        v154 = objc_msgSend_canvas(self, v152, v153);
        objc_msgSend_contentsScale(v154, v155, v156);
        v158 = v157;

        v159 = v151 * v158;
        objc_msgSend_clipRect(self, v160, v161);
        v163 = v162;
        v165 = v164;
        v167 = v166;
        v169 = v168;
        v361 = CGContextGetClipBoundingBox(context);
        v353.origin.x = v163;
        v353.origin.y = v165;
        v353.size.width = v167;
        v353.size.height = v169;
        CGRectIntersection(v353, v361);
        TSUIntegralRectForScale();
        v170 = v354.origin.x;
        v171 = v354.origin.y;
        v172 = v354.size.width;
        v173 = v354.size.height;
        v84 = v320;
        if (CGRectIsEmpty(v354))
        {
LABEL_77:
          v316 += v318;
          v117 = v116 + 1;
          v97 = 0;
          x = v99;
          goto LABEL_78;
        }

        v135 = objc_msgSend_subarrayWithRange_(v320, v174, v316, v318);
        v176 = objc_msgSend_objectAtIndexedSubscript_(v135, v175, 0);
        location = objc_msgSend_rangeValue(v176, v177, v178);
        length = v180;

        if (objc_msgSend_count(v135, v182, v183) >= 2)
        {
          v185 = 1;
          do
          {
            v186 = objc_msgSend_objectAtIndexedSubscript_(v135, v184, v185);
            v189 = objc_msgSend_rangeValue(v186, v187, v188);
            v191 = v190;

            if (location + length != v189)
            {
              v193 = MEMORY[0x277D81150];
              v321 = length;
              objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v192, "[TSDFreehandDrawingRep recursivelyDrawChildrenInContext:keepingChildrenPassingTest:]");
              v194 = v323 = location;
              v196 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v195, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingRep.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v193, v197, v194, v196, 416, 0, "We expect the rep ranges to be continuous.");

              length = v321;
              location = v323;
              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v198, v199);
            }

            v343.location = location;
            v343.length = length;
            v345.location = v189;
            v345.length = v191;
            v200 = NSUnionRange(v343, v345);
            location = v200.location;
            length = v200.length;
            ++v185;
          }

          while (v185 < objc_msgSend_count(v135, v200.length, v201));
        }

        v202 = self->_cachedClusteredShapeRepsForAnimationExport;
        v203 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v184, location);
        v205 = objc_msgSend_objectForKey_(v202, v204, v203);

        v208 = objc_msgSend_first(v205, v206, v207);
        v210 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v209, location, length);
        isEqualToValue = objc_msgSend_isEqualToValue_(v208, v211, v210);

        if (isEqualToValue)
        {
          v215 = objc_msgSend_second(v205, v213, v214);
          v218 = objc_msgSend_CGImage(v215, v216, v217);
          v355.origin.x = v170;
          v355.origin.y = v171;
          v355.size.width = v172;
          v355.size.height = v173;
          CGContextDrawImage(contextCopy, v355, v218);

          testCopy = v314;
        }

        else
        {
          v312 = v205;
          TSUMultiplySizeScalar();
          v221 = TSDBitmapContextCreate(3, v219, v220);
          CGContextScaleCTM(v221, v159, v159);
          context = v221;
          CGContextTranslateCTM(v221, -v170, -v171);
          v324 = location;
          v319 = location + length;
          if (location < location + length)
          {
            v223 = 0;
            v224 = location;
            do
            {
              v225 = self->_cachedClusteredShapeRepsForAnimationExport;
              v226 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v222, v224);
              v228 = objc_msgSend_objectForKey_(v225, v227, v226);

              v322 = v228;
              if (v228)
              {
                v231 = objc_msgSend_first(v228, v229, v230);
                v234 = objc_msgSend_rangeValue(v231, v232, v233);
                v236 = v235;

                v239 = v234 + v236;
                if (v239 <= v319)
                {
                  v248 = v322;
                  v259 = objc_msgSend_second(v322, v237, v238);
                  v262 = objc_msgSend_CGImage(v259, v260, v261);
                  v356.origin.x = v170;
                  v356.origin.y = v171;
                  v356.size.width = v172;
                  v356.size.height = v173;
                  CGContextDrawImage(context, v356, v262);

                  v224 = v239;
                }

                else
                {
                  v240 = MEMORY[0x277D81150];
                  v241 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v237, "[TSDFreehandDrawingRep recursivelyDrawChildrenInContext:keepingChildrenPassingTest:]");
                  v243 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v242, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingRep.m");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v240, v244, v241, v243, 442, 0, "We shouldn't have a cached image that extends past the current range.");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v245, v246);
                  v248 = v322;
                }

                v263 = self->_cachedClusteredShapeRepsForAnimationExport;
                v264 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v247, v224);
                objc_msgSend_removeObjectForKey_(v263, v265, v264);
              }

              else
              {
                while (v223 < objc_msgSend_count(v135, v229, v230))
                {
                  v250 = objc_msgSend_objectAtIndexedSubscript_(v135, v249, v223);
                  v253 = objc_msgSend_rangeValue(v250, v251, v252);
                  v255 = v254;

                  if (v224 >= v253 && v224 - v253 < v255)
                  {
                    v346.length = v319 - v224;
                    v344.location = v253;
                    v344.length = v255;
                    v346.location = v224;
                    v256 = NSIntersectionRange(v344, v346);
                    v257 = objc_msgSend_subarrayWithRange_(v43, v256.length, v256.location, v256.length);
                    objc_msgSend_p_drawChildShapeReps_togetherInContext_(self, v258, v257, context);

                    v224 = v256.location + v256.length;
                    break;
                  }

                  ++v223;
                }

                v248 = v322;
              }
            }

            while (v224 < v319);
          }

          Image = CGBitmapContextCreateImage(context);
          CGContextRelease(context);
          v357.origin.x = v170;
          v357.origin.y = v171;
          v357.size.width = v172;
          v357.size.height = v173;
          CGContextDrawImage(contextCopy, v357, Image);
          v267 = self->_cachedClusteredShapeRepsForAnimationExport;
          v268 = MEMORY[0x277D812A8];
          v270 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v269, v324, length);
          v272 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v271, Image);
          v274 = objc_msgSend_pairWithFirst_second_(v268, v273, v270, v272);
          v276 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v275, v324);
          objc_msgSend_setObject_forKey_(v267, v277, v274, v276);

          CGImageRelease(Image);
          testCopy = v314;
          v205 = v312;
        }

        context = c;
      }

      v84 = v320;
LABEL_76:

      v116 = v325;
      goto LABEL_77;
    }
  }

  else
  {
    v336 = 0u;
    v337 = 0u;
    v334 = 0u;
    v335 = 0u;
    v281 = v84;
    v283 = objc_msgSend_countByEnumeratingWithState_objects_count_(v281, v282, &v334, v341, 16);
    if (v283)
    {
      v286 = v283;
      v287 = *v335;
      do
      {
        for (j = 0; j != v286; ++j)
        {
          if (*v335 != v287)
          {
            objc_enumerationMutation(v281);
          }

          v289 = objc_msgSend_rangeValue(*(*(&v334 + 1) + 8 * j), v284, v285);
          v291 = objc_msgSend_subarrayWithRange_(v43, v290, v289, v290);
          objc_msgSend_p_drawChildShapeReps_togetherInContext_(self, v292, v291, contextCopy);
        }

        v286 = objc_msgSend_countByEnumeratingWithState_objects_count_(v281, v284, &v334, v341, 16);
      }

      while (v286);
    }
  }

LABEL_88:
  if (v311)
  {
    v293 = TSDCGContextGetPdfTagger(context);
    objc_msgSend_beginFreehandDrawing_(v293, v294, self);
    v295 = CGBitmapContextCreateImage(contextCopy);
    CGContextRelease(contextCopy);
    v358.origin.x = x;
    v358.origin.y = rect;
    v358.size.width = width;
    v358.size.height = height;
    CGContextDrawImage(context, v358, v295);
    CGImageRelease(v295);
    objc_msgSend_endFreehandDrawing_(v293, v296, self);
  }

  if (v310)
  {
    CGContextEndTransparencyLayer(context);
    CGContextRestoreGState(context);
  }

  v297 = objc_msgSend_p_childrenToExcludeFromFlattenedDrawing(self, v95, v96);
  v326 = 0u;
  v327 = 0u;
  v328 = 0u;
  v329 = 0u;
  v300 = objc_msgSend_childReps(self, v298, v299);
  v302 = objc_msgSend_countByEnumeratingWithState_objects_count_(v300, v301, &v326, v339, 16);
  if (v302)
  {
    v304 = v302;
    v305 = *v327;
    do
    {
      for (k = 0; k != v304; ++k)
      {
        if (*v327 != v305)
        {
          objc_enumerationMutation(v300);
        }

        v307 = *(*(&v326 + 1) + 8 * k);
        if (objc_msgSend_containsObject_(v297, v303, v307) && (!testCopy || testCopy[2](testCopy, v307)))
        {
          CGContextSaveGState(context);
          objc_msgSend_recursivelyDrawInContext_keepingChildrenPassingTest_(v307, v308, context, testCopy);
          CGContextRestoreGState(context);
        }
      }

      v304 = objc_msgSend_countByEnumeratingWithState_objects_count_(v300, v303, &v326, v339, 16);
    }

    while (v304);
  }

LABEL_104:
}

- (CGRect)clipRect
{
  v6.receiver = self;
  v6.super_class = TSDFreehandDrawingRep;
  [(TSDGroupRep *)&v6 clipRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)opacity
{
  v3 = objc_msgSend_p_freehandDrawingLayout(self, a2, v2);
  objc_msgSend_opacity(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (id)p_freehandDrawingLayout
{
  objc_opt_class();
  v5 = objc_msgSend_layout(self, v3, v4);
  v6 = TSUCheckedDynamicCast();

  return v6;
}

- (id)p_shapeChildrenForDrawingRecursively
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_childReps(self, a2, v2);
  v7 = objc_msgSend_p_childrenToExcludeFromFlattenedDrawing(self, v5, v6);
  if (objc_msgSend_count(v7, v8, v9))
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2766E8D60;
    v28[3] = &unk_27A6CCF00;
    v28[4] = v7;
    v12 = objc_msgSend_tsu_arrayOfObjectsPassingTest_(v4, v10, v28);

    v4 = v12;
  }

  v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v4;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v24, v29, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v14);
        }

        objc_opt_class();
        v21 = TSUCheckedDynamicCast();
        if (v21)
        {
          objc_msgSend_addObject_(v13, v20, v21, v24);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v22, &v24, v29, 16);
    }

    while (v17);
  }

  return v13;
}

- (id)p_childrenToExcludeFromFlattenedDrawing
{
  v4 = objc_msgSend_p_freehandDrawingInfo(self, a2, v2);
  v5 = MEMORY[0x277CBEB58];
  v8 = objc_msgSend_childReps(self, v6, v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2766E8E64;
  v14[3] = &unk_27A6CCF00;
  v14[4] = v4;
  v10 = objc_msgSend_tsu_arrayOfObjectsPassingTest_(v8, v9, v14);
  v12 = objc_msgSend_setWithArray_(v5, v11, v10);

  return v12;
}

- (id)textureForDescription:(id)description
{
  v94 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  if (objc_msgSend_shouldSeparateGroupedTextures(descriptionCopy, v5, v6))
  {
    v9 = objc_msgSend_childReps(self, v7, v8);
    v10 = objc_alloc_init(TSDTextureSet);
    objc_msgSend_setObjectType_(v10, v11, 8);
    v76 = objc_msgSend_copy(descriptionCopy, v12, v13);
    v18 = objc_msgSend_count(v9, v14, v15);
    if (v18 >= 0x191)
    {
      objc_msgSend_setShouldSeparateStroke_(v76, v16, 0);
      objc_msgSend_setShouldAddParameterizedStroke_(v76, v19, 0);
    }

    v20 = objc_msgSend_canvas(self, v16, v17);
    objc_msgSend_viewScale(v20, v21, v22);

    memset(&v90, 0, sizeof(v90));
    v25 = objc_msgSend_layout(self, v23, v24);
    v28 = v25;
    v73 = descriptionCopy;
    if (v25)
    {
      objc_msgSend_transformInRoot(v25, v26, v27);
    }

    else
    {
      memset(&v90, 0, sizeof(v90));
    }

    selfCopy = self;
    objc_msgSend_naturalBounds(self, v29, v30);
    v89 = v90;
    CGRectApplyAffineTransform(v96, &v89);
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = v9;
    v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v85, v93, 16);
    if (v77)
    {
      TSUMultiplyRectScalar();
      v75 = *v86;
      do
      {
        v34 = 0;
        do
        {
          if (*v86 != v75)
          {
            objc_enumerationMutation(obj);
          }

          v79 = v34;
          v35 = *(*(&v85 + 1) + 8 * v34);
          memset(&v89, 0, sizeof(v89));
          v36 = objc_msgSend_layout(v35, v32, v33);
          v39 = v36;
          if (v36)
          {
            objc_msgSend_transformInRoot(v36, v37, v38);
          }

          else
          {
            memset(&v89, 0, sizeof(v89));
          }

          objc_msgSend_naturalBounds(v35, v40, v41);
          v84 = v89;
          CGRectApplyAffineTransform(v97, &v84);
          v43 = objc_msgSend_textureForDescription_(v35, v42, v76);
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v78 = v43;
          v46 = objc_msgSend_allTextures(v43, v44, v45);
          v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v80, v92, 16);
          if (v48)
          {
            v49 = v48;
            TSUMultiplyRectScalar();
            TSUSubtractPoints();
            v52 = *v81;
            do
            {
              for (i = 0; i != v49; ++i)
              {
                if (*v81 != v52)
                {
                  objc_enumerationMutation(v46);
                }

                v54 = *(*(&v80 + 1) + 8 * i);
                if (objc_msgSend_textureType(v54, v50, v51) == 16 || objc_msgSend_textureType(v54, v55, v56) == 15)
                {
                  isTreatedAsFillForFreehandDrawing = 0;
                  v58 = 0;
                }

                else
                {
                  v59 = objc_msgSend_shapeInfo(v35, v55, v56);
                  isTreatedAsFillForFreehandDrawing = objc_msgSend_isTreatedAsFillForFreehandDrawing(v59, v60, v61);

                  v58 = 1;
                }

                if (v18 < 0x191)
                {
                  if (!((objc_msgSend_textureType(v54, v55, v56) != 5) | isTreatedAsFillForFreehandDrawing & 1))
                  {
                    objc_msgSend_teardown(v54, v55, v56);
                    continue;
                  }

                  v62 = 0;
                }

                else
                {
                  v62 = v58 & (isTreatedAsFillForFreehandDrawing ^ 1);
                }

                objc_msgSend_offset(v54, v55, v56);
                TSUAddPoints();
                objc_msgSend_setOffset_(v54, v63, v64);
                if (v62)
                {
                  objc_msgSend_setTextureType_(v54, v65, 8);
                }

                objc_msgSend_addRenderable_(v10, v65, v54);
              }

              v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v50, &v80, v92, 16);
            }

            while (v49);
          }

          v34 = v79 + 1;
        }

        while (v79 + 1 != v77);
        v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v85, v93, 16);
      }

      while (v77);
    }

    objc_msgSend_setRep_(v10, v66, selfCopy);
    objc_msgSend_opacity(selfCopy, v67, v68);
    objc_msgSend_setTextureOpacity_(v10, v69, v70);

    descriptionCopy = v73;
  }

  else
  {
    v91.receiver = self;
    v91.super_class = TSDFreehandDrawingRep;
    v10 = [(TSDRep *)&v91 textureForDescription:descriptionCopy];
  }

  return v10;
}

@end