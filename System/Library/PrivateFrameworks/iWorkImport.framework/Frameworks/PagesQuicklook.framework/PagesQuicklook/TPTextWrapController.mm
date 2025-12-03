@interface TPTextWrapController
- (BOOL)checkForUnobstructedSpan:(CGRect)span wrappableAttachments:(id)attachments userInfo:(id)info;
- (BOOL)p_shouldTextFlowAroundWrappable:(id)wrappable inTarget:(id)target inColumn:(id)column;
- (TPDocumentRoot)documentRoot;
- (TPTextWrapController)initWithDocumentRoot:(id)root;
- (double)nextUnobstructedSpanStartingAt:(CGRect)at wrappableAttachments:(id)attachments userInfo:(id)info;
- (id)beginWrappingToColumn:(id)column columnTransformFromWP:(CGAffineTransform *)p target:(id)target hasWrappables:(BOOL *)wrappables;
- (id)p_groupInfoContainingWrappable:(id)wrappable;
- (id)p_wrapDrawables:(id)drawables userInfo:(id)info;
- (void)p_splitLine:(CGRect)line lineSegmentRects:(id)rects wrappable:(id)wrappable cookie:(id)cookie skipHint:(double *)hint;
- (void)setUpCanvasToWrapSpaceAffineTransformation:(CGAffineTransform *)transformation;
- (void)splitLine:(CGRect)line lineSegmentRects:(id)rects wrappableAttachments:(id)attachments ignoreFloatingGraphics:(BOOL)graphics canvasCausedWrap:(BOOL *)wrap skipHint:(double *)hint userInfo:(id)info;
@end

@implementation TPTextWrapController

- (TPTextWrapController)initWithDocumentRoot:(id)root
{
  rootCopy = root;
  v8.receiver = self;
  v8.super_class = TPTextWrapController;
  v5 = [(TPTextWrapController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_documentRoot, rootCopy);
  }

  return v6;
}

- (id)beginWrappingToColumn:(id)column columnTransformFromWP:(CGAffineTransform *)p target:(id)target hasWrappables:(BOOL *)wrappables
{
  v119 = *MEMORY[0x277D85DE8];
  columnCopy = column;
  targetCopy = target;
  v9 = [TPTextWrapCookie alloc];
  v15 = objc_msgSend_initWithColumn_targetLayout_(v9, v10, v11, v12, v13, v14, columnCopy, targetCopy);
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v106 = objc_msgSend_drawablesZOrder(WeakRetained, v17, v18, v19, v20, v21);

  v27 = objc_msgSend_storage(columnCopy, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_zOrderOfDrawable_(v106, v28, v29, v30, v31, v32, v27);

  objc_opt_class();
  v39 = objc_msgSend_pageLayout(targetCopy, v34, v35, v36, v37, v38);
  v40 = TSUDynamicCast();

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v102 = v40;
  objc_msgSend_floatingDrawableLayouts(v40, v41, 0, v42, v43, v44);
  obj = v98 = self;
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, v46, v47, v48, v49, &v113, v118, 16);
  if (v51)
  {
    v56 = *v114;
    v103 = *v114;
    do
    {
      v57 = 0;
      v104 = v51;
      do
      {
        if (*v114 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v58 = objc_msgSend_info(*(*(&v113 + 1) + 8 * v57), v50, v52, v53, v54, v55, v97);
        v64 = v33 < objc_msgSend_zOrderOfDrawable_(v106, v59, v60, v61, v62, v63, v58);

        if (v64)
        {
          v66 = TSUProtocolCast();
          if (v66)
          {
            objc_msgSend_addFloatingWrappable_(v15, v65, v67, v68, v69, v70, v66, &unk_28853CDB0);
            *wrappables = 1;
          }

          v97 = &unk_288510D20;
          v71 = TSUProtocolCast();
          v76 = v71;
          if (v71)
          {
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v77 = objc_msgSend_descendentWrappables(v71, v72, 0, v73, v74, v75, &unk_288510D20);
            v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, v79, v80, v81, v82, &v109, v117, 16);
            v89 = v33;
            if (v84)
            {
              v90 = *v110;
              do
              {
                for (i = 0; i != v84; ++i)
                {
                  if (*v110 != v90)
                  {
                    objc_enumerationMutation(v77);
                  }

                  objc_msgSend_addFloatingWrappable_(v15, v83, v85, v86, v87, v88, *(*(&v109 + 1) + 8 * i));
                  *wrappables = 1;
                }

                v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v83, v85, v86, v87, v88, &v109, v117, 16);
              }

              while (v84);
            }

            v33 = v89;
            v56 = v103;
            v51 = v104;
          }
        }

        ++v57;
      }

      while (v57 != v51);
      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, v52, v53, v54, v55, &v113, v118, 16);
    }

    while (v51);
  }

  v92 = *&p->c;
  v107[0] = *&p->a;
  v107[1] = v92;
  v108 = *&p->tx;
  objc_msgSend_setUpCanvasToWrapSpaceAffineTransformation_(v98, v93, v108, v92, v94, v95, v107);

  return v15;
}

- (void)setUpCanvasToWrapSpaceAffineTransformation:(CGAffineTransform *)transformation
{
  v4 = *&transformation->a;
  v5 = *&transformation->c;
  *&self->_wrapSpaceToCanvasSpace.tx = *&transformation->tx;
  *&self->_wrapSpaceToCanvasSpace.c = v5;
  *&self->_wrapSpaceToCanvasSpace.a = v4;
  v6 = *&transformation->c;
  *&v8.a = *&transformation->a;
  *&v8.c = v6;
  *&v8.tx = *&transformation->tx;
  CGAffineTransformInvert(&v9, &v8);
  v7 = *&v9.c;
  *&self->_canvasSpaceToWrapSpace.a = *&v9.a;
  *&self->_canvasSpaceToWrapSpace.c = v7;
  *&self->_canvasSpaceToWrapSpace.tx = *&v9.tx;
}

- (id)p_groupInfoContainingWrappable:(id)wrappable
{
  v7 = objc_msgSend_info(wrappable, a2, v3, v4, v5, v6);
  v13 = objc_msgSend_parentInfo(v7, v8, v9, v10, v11, v12);

  if (v13)
  {
    while (1)
    {
      v14 = objc_opt_class();
      if (objc_msgSend_isMemberOfClass_(v13, v15, v16, v17, v18, v19, v14))
      {
        break;
      }

      v25 = objc_msgSend_parentInfo(v13, v20, v21, v22, v23, v24);

      v13 = v25;
      if (!v25)
      {
        goto LABEL_6;
      }
    }

    v13 = v13;
  }

LABEL_6:

  return v13;
}

- (void)splitLine:(CGRect)line lineSegmentRects:(id)rects wrappableAttachments:(id)attachments ignoreFloatingGraphics:(BOOL)graphics canvasCausedWrap:(BOOL *)wrap skipHint:(double *)hint userInfo:(id)info
{
  y = line.origin.y;
  height = line.size.height;
  x = line.origin.x;
  width = line.size.width;
  v390 = *MEMORY[0x277D85DE8];
  rectsCopy = rects;
  attachmentsCopy = attachments;
  infoCopy = info;
  objc_opt_class();
  v373 = TSUDynamicCast();
  v360 = objc_msgSend_column(v373, v12, v13, v14, v15, v16);
  v359 = objc_msgSend_target(v373, v17, v18, v19, v20, v21);
  if (!v360)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, v26, "[TPTextWrapController splitLine:lineSegmentRects:wrappableAttachments:ignoreFloatingGraphics:canvasCausedWrap:skipHint:userInfo:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextWrapController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v35, v36, v37, v38, v39, v28, v34, 134, 0, "invalid nil value for '%{public}s'", "column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43, v44);
  }

  if (!v359)
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, v26, "[TPTextWrapController splitLine:lineSegmentRects:wrappableAttachments:ignoreFloatingGraphics:canvasCausedWrap:skipHint:userInfo:]");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextWrapController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v53, v54, v55, v56, v57, v46, v52, 135, 0, "invalid nil value for '%{public}s'", "target");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61, v62);
  }

  if (objc_msgSend_count(rectsCopy, v22, v23, v24, v25, v26))
  {
    v68 = MEMORY[0x277D81150];
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, v67, "[TPTextWrapController splitLine:lineSegmentRects:wrappableAttachments:ignoreFloatingGraphics:canvasCausedWrap:skipHint:userInfo:]");
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextWrapController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v76, v77, v78, v79, v80, v69, v75, 136, 0, "Unexpected rects already in segment list");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84, v85);
  }

  objc_msgSend_makeEmpty(rectsCopy, v63, v64, v65, v66, v67);
  if (hint)
  {
    *hint = 1.0;
  }

  objc_msgSend_frameBounds(v360, v86, v87, v88, v89, v90);
  v91 = *&self->_canvasSpaceToWrapSpace.c;
  *&v386.a = *&self->_canvasSpaceToWrapSpace.a;
  *&v386.c = v91;
  *&v386.tx = *&self->_canvasSpaceToWrapSpace.tx;
  v392 = CGRectApplyAffineTransform(v391, &v386);
  v92 = v392.origin.x;
  v93 = v392.origin.y;
  v94 = v392.size.width;
  v95 = v392.size.height;
  v96 = rectsCopy;
  v393.origin.x = x;
  v393.size.width = width;
  v393.origin.y = y;
  v393.size.height = height;
  v432.origin.x = v92;
  v432.origin.y = v93;
  v432.size.width = v94;
  v432.size.height = v95;
  v102 = v96;
  v355 = v96;
  if (CGRectIntersectsRect(v393, v432))
  {
    v98.n128_f64[0] = x;
    v100.n128_f64[0] = width;
    v99.n128_f64[0] = y;
    v101.n128_f64[0] = height;
    objc_msgSend_addRect_(v96, v97, v98, v99, v100, v101);
    v103 = *&self->_canvasSpaceToWrapSpace.c;
    *&v386.a = *&self->_canvasSpaceToWrapSpace.a;
    *&v386.c = v103;
    *&v386.tx = *&self->_canvasSpaceToWrapSpace.tx;
    if (CGAffineTransformIsIdentity(&v386))
    {
      v352 = objc_msgSend_interiorWrapSegments(v373, v104, v105, v106, v107, v108);
    }

    else
    {
      v114 = objc_msgSend_interiorWrapSegments(v373, v104, v105, v106, v107, v108);
      v115 = *&self->_canvasSpaceToWrapSpace.c;
      *&v386.a = *&self->_canvasSpaceToWrapSpace.a;
      *&v386.c = v115;
      *&v386.tx = *&self->_canvasSpaceToWrapSpace.tx;
      v352 = objc_msgSend_wrapSegmentsByApplyingAffineTransform_(v114, v116, *&v386.tx, v115, v117, v118, &v386);
    }

    v119 = 0x277D80000uLL;
    v365 = v96;
    if (v352)
    {
      v120 = objc_opt_new();
      v121.n128_f64[0] = x;
      v122.n128_f64[0] = width;
      v123.n128_f64[0] = y;
      v124.n128_f64[0] = height;
      objc_msgSend_splitLine_lineSegmentRects_wrapSegments_type_skipHint_(MEMORY[0x277D80F88], v125, v121, v123, v122, v124, v120, v352, 0, 0);
      v126.n128_u64[0] = *MEMORY[0x277D810E0];
      v365 = objc_msgSend_horizontalIntersectionsOfRectList_withRectList_minWidth_(MEMORY[0x277D80F88], v127, v126, v128, v129, v130, v96, v120);
    }

    v131 = objc_msgSend_floatingWrappables(infoCopy, v109, v110, v111, v112, v113);
    v356 = v131;
    if (objc_msgSend_count(attachmentsCopy, v132, v133, v134, v135, v136))
    {
      v131 = objc_msgSend_mutableCopy(v131, v137, v138, v139, v140, v141);
      v384 = 0u;
      v385 = 0u;
      v382 = 0u;
      v383 = 0u;
      obj = attachmentsCopy;
      v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v142, v143, v144, v145, v146, &v382, v389, 16);
      if (v147)
      {
        v369 = *v383;
        do
        {
          v371 = v147;
          for (i = 0; i != v371; ++i)
          {
            if (*v383 != v369)
            {
              objc_enumerationMutation(obj);
            }

            v154 = *(*(&v382 + 1) + 8 * i);
            v155 = objc_msgSend_target(v373, v148, v149, v150, v151, v152, v336);
            v161 = objc_msgSend_validatedLayoutForAnchoredDrawable_(v155, v156, v157, v158, v159, v160, v154);

            v163 = TSUProtocolCast();
            if (v163)
            {
              objc_msgSend_addObject_(v131, v162, v164, v165, v166, v167, v163, &unk_28853CDB0);
            }

            v336 = &unk_288510D20;
            v168 = TSUProtocolCast();
            v173 = v168;
            if (v168)
            {
              v380 = 0u;
              v381 = 0u;
              v378 = 0u;
              v379 = 0u;
              v174 = objc_msgSend_descendentWrappables(v168, v169, 0, v170, v171, v172, &unk_288510D20);
              v175 = v119;
              hintCopy = hint;
              v183 = objc_msgSend_countByEnumeratingWithState_objects_count_(v174, v177, v178, v179, v180, v181, &v378, v388, 16);
              if (v183)
              {
                v188 = *v379;
                do
                {
                  for (j = 0; j != v183; ++j)
                  {
                    if (*v379 != v188)
                    {
                      objc_enumerationMutation(v174);
                    }

                    objc_msgSend_addObject_(v131, v182, v184, v185, v186, v187, *(*(&v378 + 1) + 8 * j));
                  }

                  v183 = objc_msgSend_countByEnumeratingWithState_objects_count_(v174, v182, v184, v185, v186, v187, &v378, v388, 16);
                }

                while (v183);
              }

              hint = hintCopy;
              v119 = v175;
            }
          }

          v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v148, v149, v150, v151, v152, &v382, v389, 16);
        }

        while (v147);
      }
    }

    v376 = 0u;
    v377 = 0u;
    v374 = 0u;
    v375 = 0u;
    obja = v131;
    v195 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v190, v191, v192, v193, v194, &v374, v387, 16);
    if (v195)
    {
      v370 = *v375;
      v196 = &v386;
      if (!hint)
      {
        v196 = 0;
      }

      v351 = v196;
      do
      {
        v372 = v195;
        for (k = 0; k != v372; ++k)
        {
          if (*v375 != v370)
          {
            objc_enumerationMutation(obja);
          }

          v198 = *(*(&v374 + 1) + 8 * k);
          v199 = objc_opt_new();
          v205 = objc_msgSend_wrapDirection(v198, v200, v201, v202, v203, v204);
          v211 = objc_msgSend_wrapFitType(v198, v206, v207, v208, v209, v210);
          v217 = objc_msgSend_wrapType(v198, v212, v213, v214, v215, v216);
          v223 = objc_msgSend_p_groupInfoContainingWrappable_(self, v218, v219, v220, v221, v222, v198);
          v229 = v223;
          if (v223)
          {
            v230 = objc_msgSend_exteriorTextWrap(v223, v224, v225, v226, v227, v228);
            if ((objc_msgSend_isHTMLWrap(v230, v231, v232, v233, v234, v235) & 1) != 0 || objc_msgSend_isInlineWithText(v229, v236, v237, v238, v239, v240))
            {
              if (v230)
              {
                v205 = objc_msgSend_direction(v230, v236, v237, v238, v239, v240);
                v211 = objc_msgSend_fitType(v230, v241, v242, v243, v244, v245);
                v217 = objc_msgSend_type(v230, v246, v247, v248, v249, v250);
              }

              else
              {
                v217 = 0;
                v211 = 0;
                v205 = 2;
              }
            }
          }

          if (!v217 || v217 == 5)
          {
            goto LABEL_106;
          }

          if (v217 == 4)
          {
            if (objc_msgSend_p_shouldTextFlowAroundWrappable_inTarget_inColumn_(self, v251, v252, v253, v254, v255, v198, v359, v360))
            {
              v205 = 2;
              v217 = 1;
            }

            else
            {
              v217 = 2;
            }
          }

          objc_msgSend_boundsInfluencingExteriorWrap(v198, v251, v252, v253, v254, v255, v336);
          v261 = v257.n128_f64[0];
          v262 = v258.n128_f64[0];
          v263 = v259.n128_f64[0];
          v264 = v260.n128_f64[0];
          if (v373)
          {
            objc_msgSend_targetInverseTransformInRoot(v373, v256, v257, v258, v259, v260);
          }

          else
          {
            memset(&v386, 0, sizeof(v386));
          }

          v394.origin.x = v261;
          v394.origin.y = v262;
          v394.size.width = v263;
          v394.size.height = v264;
          v395 = CGRectApplyAffineTransform(v394, &v386);
          v265 = *&self->_canvasSpaceToWrapSpace.c;
          *&v386.a = *&self->_canvasSpaceToWrapSpace.a;
          *&v386.c = v265;
          *&v386.tx = *&self->_canvasSpaceToWrapSpace.tx;
          v396 = CGRectApplyAffineTransform(v395, &v386);
          v266 = v396.origin.x;
          v267 = v396.origin.y;
          v268 = v396.size.width;
          v269 = v396.size.height;
          v433.origin.x = x;
          v433.size.width = width;
          v433.origin.y = y;
          v433.size.height = height;
          if (!CGRectIntersectsRect(v396, v433))
          {
            v276 = v365;
            goto LABEL_105;
          }

          if (wrap && (objc_msgSend_indexOfObject_(v356, v270, v271, v272, v273, v274, v198) != 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend_isHTMLWrap(v198, v270, v271, v272, v273, v274) & 1) == 0))
          {
            *wrap = 1;
          }

          if (v217 == 2)
          {
            if (hint)
            {
              v397.origin.x = v266;
              v397.origin.y = v267;
              v397.size.width = v268;
              v397.size.height = v269;
              MaxY = CGRectGetMaxY(v397);
              v398.origin.x = x;
              v398.size.width = width;
              v398.origin.y = y;
              v398.size.height = height;
              v271.n128_f64[0] = ceil(MaxY - CGRectGetMinY(v398));
              v272.n128_f64[0] = *hint;
              if (*hint >= v271.n128_f64[0])
              {
                v271.n128_f64[0] = *hint;
              }

              *hint = v271.n128_f64[0];
            }

            goto LABEL_104;
          }

          if (!v211)
          {
            v403.origin.x = x;
            v403.size.width = width;
            v403.origin.y = y;
            v403.size.height = height;
            MaxX = CGRectGetMaxX(v403);
            v404.origin.x = v266;
            v404.origin.y = v267;
            v404.size.width = v268;
            v404.size.height = v269;
            if (MaxX <= CGRectGetMaxX(v404) || (v405.origin.x = x, v405.size.width = width, v405.origin.y = y, v405.size.height = height, v298 = CGRectGetMinX(v405), v406.origin.x = v266, v406.origin.y = v267, v406.size.width = v268, v406.size.height = v269, v298 >= CGRectGetMinX(v406)))
            {
              v421.origin.x = v266;
              v421.origin.y = v267;
              v421.size.width = v268;
              v421.size.height = v269;
              v434.origin.x = x;
              v434.size.width = width;
              v434.origin.y = y;
              v434.size.height = height;
              v422 = CGRectIntersection(v421, v434);
              v309 = v422.origin.x;
              v310 = v422.origin.y;
              v311 = v422.size.width;
              v312 = v422.size.height;
              v313 = CGRectGetMaxX(v422);
              v423.origin.x = x;
              v423.size.width = width;
              v423.origin.y = y;
              v423.size.height = height;
              if (v313 >= CGRectGetMaxX(v423))
              {
                v315 = 0;
                v314 = x;
              }

              else
              {
                v424.origin.x = v309;
                v424.origin.y = v310;
                v424.size.width = v311;
                v424.size.height = v312;
                v314 = CGRectGetMaxX(v424);
                v315 = 1;
              }

              v425.origin.y = y;
              v316 = width - v311;
              v425.origin.x = v314;
              v425.size.width = v316;
              v425.size.height = height;
              v271.n128_f64[0] = CGRectGetWidth(v425);
              v272.n128_u64[0] = 20.0;
              if (v271.n128_f64[0] >= 20.0 && (v205 == 2 || v217 == 3 || v315 != (v205 == 0)))
              {
                v271.n128_f64[0] = v314;
                v272.n128_f64[0] = y;
                v274.n128_f64[0] = height;
                v273.n128_f64[0] = v316;
                objc_msgSend_addRect_(v199, v270, v271, v272, v273, v274);
              }
            }

            else
            {
              v407.origin.x = x;
              v407.origin.y = y;
              v407.size.width = width;
              v407.size.height = height;
              MinX = CGRectGetMinX(v407);
              v408.origin.x = x;
              v408.origin.y = y;
              v408.size.width = width;
              v408.size.height = height;
              MinY = CGRectGetMinY(v408);
              v409.origin.x = v266;
              v409.origin.y = v267;
              v409.size.width = v268;
              v409.size.height = v269;
              v340 = CGRectGetMinX(v409);
              v410.origin.x = x;
              v410.origin.y = y;
              v410.size.width = width;
              v410.size.height = height;
              v338 = CGRectGetMinX(v410);
              v411.origin.x = x;
              v411.origin.y = y;
              v411.size.width = width;
              v411.size.height = height;
              recta = CGRectGetHeight(v411);
              v412.origin.x = v266;
              v412.origin.y = v267;
              v412.size.width = v268;
              v412.size.height = v269;
              v350 = CGRectGetMaxX(v412);
              v413.origin.x = x;
              v413.size.width = width;
              v413.origin.y = y;
              v413.size.height = height;
              v348 = CGRectGetMinY(v413);
              v414.origin.x = x;
              v414.size.width = width;
              v414.origin.y = y;
              v414.size.height = height;
              v299 = CGRectGetMaxX(v414);
              v415.origin.x = v266;
              v415.origin.y = v267;
              v415.size.width = v268;
              v415.size.height = v269;
              v300 = CGRectGetMaxX(v415);
              v416.origin.x = x;
              v416.size.width = width;
              v416.origin.y = y;
              v416.size.height = height;
              v301 = CGRectGetHeight(v416);
              v417.origin.y = MinY;
              v417.origin.x = MinX;
              v417.size.width = v340 - v338;
              v417.size.height = recta;
              v307 = v299 - v300;
              if (CGRectGetWidth(v417) >= 20.0)
              {
                if ((v205 & 0xFFFFFFFD) == 0 || v217 == 3 && (v418.origin.y = MinY, v418.origin.x = MinX, v418.size.width = v340 - v338, v418.size.height = recta, v308 = CGRectGetWidth(v418), v419.origin.y = v348, v419.origin.x = v350, v419.size.width = v307, v419.size.height = v301, v308 >= CGRectGetWidth(v419)))
                {
                  v304.n128_f64[0] = MinY;
                  v303.n128_f64[0] = MinX;
                  v305.n128_f64[0] = v340 - v338;
                  v306.n128_f64[0] = recta;
                  objc_msgSend_addRect_(v199, v302, v303, v304, v305, v306);
                }
              }

              v420.origin.y = v348;
              v420.origin.x = v350;
              v420.size.width = v307;
              v420.size.height = v301;
              v271.n128_f64[0] = CGRectGetWidth(v420);
              v272.n128_u64[0] = 20.0;
              if (v271.n128_f64[0] >= 20.0)
              {
                if ((v205 - 1) < 2 || v217 == 3 && (v430.origin.y = MinY, v430.origin.x = MinX, v430.size.width = v340 - v338, v430.size.height = recta, v325 = CGRectGetWidth(v430), v431.origin.y = v348, v431.origin.x = v350, v431.size.width = v307, v431.size.height = v301, v325 < CGRectGetWidth(v431)))
                {
                  v272.n128_f64[0] = v348;
                  v271.n128_f64[0] = v350;
                  v273.n128_f64[0] = v307;
                  v274.n128_f64[0] = v301;
                  objc_msgSend_addRect_(v199, v270, v271, v272, v273, v274);
                }
              }
            }

            goto LABEL_104;
          }

          if (v211 != 1)
          {
            goto LABEL_104;
          }

          v386.a = 1.0;
          v271.n128_f64[0] = x;
          v273.n128_f64[0] = width;
          v272.n128_f64[0] = y;
          v274.n128_f64[0] = height;
          objc_msgSend_p_splitLine_lineSegmentRects_wrappable_cookie_skipHint_(self, v270, v271, v272, v273, v274, v199, v198, v373, v351);
          if (hint)
          {
            v278.n128_f64[0] = *hint;
            v279.n128_u64[0] = *&v386.a;
            if (*hint < v386.a)
            {
              v278.n128_f64[0] = v386.a;
            }

            *hint = v278.n128_f64[0];
          }

          if (!objc_msgSend_count(v199, v277, v278, v279, v280, v281))
          {
            goto LABEL_104;
          }

          objc_msgSend_rectAtIndex_(v199, v270, v271, v272, v273, v274, 0);
          v347 = v283.n128_f64[0];
          v349 = v282.n128_f64[0];
          v343 = v285.n128_f64[0];
          v345 = v284.n128_f64[0];
          v287 = objc_msgSend_count(v199, v286, v282, v283, v284, v285);
          objc_msgSend_rectAtIndex_(v199, v288, v289, v290, v291, v292, v287 - 1);
          v339 = v273.n128_f64[0];
          rect = v272.n128_f64[0];
          v337 = v274.n128_f64[0];
          v293 = v271.n128_f64[0];
          if (v217 == 3)
          {
            v399.origin.x = v266;
            v399.origin.y = v267;
            v399.size.width = v268;
            v399.size.height = v269;
            v294 = CGRectGetMinX(v399);
            v400.origin.x = x;
            v400.size.width = width;
            v400.origin.y = y;
            v400.size.height = height;
            v295 = CGRectGetMinX(v400);
            v401.origin.x = x;
            v401.size.width = width;
            v401.origin.y = y;
            v401.size.height = height;
            v296 = CGRectGetMaxX(v401);
            v402.origin.x = v266;
            v402.origin.y = v267;
            v402.size.width = v268;
            v402.size.height = v269;
            v271.n128_f64[0] = CGRectGetMaxX(v402);
            v272.n128_f64[0] = v294 - v295;
            v271.n128_f64[0] = v296 - v271.n128_f64[0];
            if (v294 - v295 < v271.n128_f64[0])
            {
              goto LABEL_101;
            }
          }

          else
          {
            if (v205 == 1)
            {
LABEL_101:
              objc_msgSend_makeEmpty(v199, v270, v271, v272, v273, v274);
              v428.origin.x = v293;
              v428.size.width = v339;
              v428.origin.y = rect;
              v428.size.height = v337;
              v318 = CGRectGetMaxX(v428);
              v429.origin.x = v266;
              v429.origin.y = v267;
              v429.size.width = v268;
              v429.size.height = v269;
              if (v318 >= CGRectGetMaxX(v429))
              {
                v271.n128_f64[0] = v293;
                v273.n128_f64[0] = v339;
                v272.n128_f64[0] = rect;
                v274.n128_f64[0] = v337;
                goto LABEL_103;
              }

              goto LABEL_104;
            }

            if (v205)
            {
              goto LABEL_104;
            }
          }

          objc_msgSend_makeEmpty(v199, v270, v271, v272, v273, v274);
          v426.origin.y = v347;
          v426.origin.x = v349;
          v426.size.height = v343;
          v426.size.width = v345;
          v317 = CGRectGetMinX(v426);
          v427.origin.x = v266;
          v427.origin.y = v267;
          v427.size.width = v268;
          v427.size.height = v269;
          if (v317 <= CGRectGetMinX(v427))
          {
            v272.n128_f64[0] = v347;
            v271.n128_f64[0] = v349;
            v274.n128_f64[0] = v343;
            v273.n128_f64[0] = v345;
LABEL_103:
            objc_msgSend_addRect_(v199, v270, v271, v272, v273, v274);
          }

LABEL_104:
          v271.n128_u64[0] = 20.0;
          v319 = objc_msgSend_horizontalIntersectionsOfRectList_withRectList_minWidth_(*(v119 + 3976), v270, v271, v272, v273, v274, v365, v199);

          v276 = v319;
LABEL_105:
          v365 = v276;
          if (!objc_msgSend_count(v276, v270, v271, v272, v273, v274))
          {

            goto LABEL_114;
          }

LABEL_106:
        }

        v195 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v320, v321, v322, v323, v324, &v374, v387, 16);
      }

      while (v195);
    }

LABEL_114:

    v102 = v365;
    if (v365 != v355)
    {
      objc_msgSend_makeEmpty(v355, v326, v327, v328, v329, v330);
      objc_msgSend_addRectList_(v355, v331, v332, v333, v334, v335, v365);
    }
  }
}

- (id)p_wrapDrawables:(id)drawables userInfo:(id)info
{
  v92 = *MEMORY[0x277D85DE8];
  drawablesCopy = drawables;
  infoCopy = info;
  v78 = drawablesCopy;
  if (objc_msgSend_count(drawablesCopy, v6, v7, v8, v9, v10))
  {
    v16 = objc_msgSend_floatingWrappables(infoCopy, v11, v12, v13, v14, v15);
    v22 = objc_msgSend_mutableCopy(v16, v17, v18, v19, v20, v21);

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = drawablesCopy;
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, v24, v25, v26, v27, &v86, v91, 16);
    if (v29)
    {
      v80 = *v87;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v87 != v80)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v86 + 1) + 8 * i);
          v36 = objc_msgSend_target(infoCopy, v28, v30, v31, v32, v33, v77);
          v42 = objc_msgSend_validatedLayoutForAnchoredDrawable_(v36, v37, v38, v39, v40, v41, v35);

          v43 = TSUProtocolCast();
          v49 = v43;
          if (v43 && objc_msgSend_wrapType(v43, v44, v45, v46, v47, v48, &unk_28853CDB0) != 5)
          {
            objc_msgSend_addObject_(v22, v50, v51, v52, v53, v54, v49);
          }

          v77 = &unk_288510D20;
          v55 = TSUProtocolCast();
          v60 = v55;
          if (v55)
          {
            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v61 = objc_msgSend_descendentWrappables(v55, v56, 0, v57, v58, v59, &unk_288510D20);
            v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, v63, v64, v65, v66, &v82, v90, 16);
            if (v68)
            {
              v73 = *v83;
              do
              {
                for (j = 0; j != v68; ++j)
                {
                  if (*v83 != v73)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v75 = *(*(&v82 + 1) + 8 * j);
                  if (objc_msgSend_wrapType(v75, v67, v69, v70, v71, v72) != 5)
                  {
                    objc_msgSend_addObject_(v22, v67, v69, v70, v71, v72, v75);
                  }
                }

                v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v67, v69, v70, v71, v72, &v82, v90, 16);
              }

              while (v68);
            }
          }
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, v30, v31, v32, v33, &v86, v91, 16);
      }

      while (v29);
    }
  }

  else
  {
    v22 = objc_msgSend_floatingWrappables(infoCopy, v11, v12, v13, v14, v15);
  }

  return v22;
}

- (double)nextUnobstructedSpanStartingAt:(CGRect)at wrappableAttachments:(id)attachments userInfo:(id)info
{
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  v229 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  infoCopy = info;
  v222 = objc_msgSend_target(infoCopy, v13, v14, v15, v16, v17);
  v23 = objc_msgSend_p_wrapDrawables_userInfo_(self, v18, v19, v20, v21, v22, attachmentsCopy, infoCopy);
  v24 = MEMORY[0x277CBEB18];
  v221 = v23;
  v30 = objc_msgSend_count(v23, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_arrayWithCapacity_(v24, v31, v32, v33, v34, v35, v30);
  v37.n128_f64[0] = x;
  v38.n128_f64[0] = y;
  v39.n128_f64[0] = width;
  v40.n128_f64[0] = height;
  objc_msgSend_rectInRoot_(v222, v41, v37, v38, v39, v40);
  v42 = *&self->_canvasSpaceToWrapSpace.c;
  *&v227.a = *&self->_canvasSpaceToWrapSpace.a;
  *&v227.c = v42;
  *&v227.tx = *&self->_canvasSpaceToWrapSpace.tx;
  v231 = CGRectApplyAffineTransform(v230, &v227);
  v43 = v231.origin.x;
  v44 = v231.origin.y;
  v45 = v231.size.width;
  v46 = v231.size.height;
  v48 = objc_msgSend_column(infoCopy, v47, v231.origin, *&v231.origin.y, v231.size, *&v231.size.height);
  v217 = *&v46;
  v218 = *&v45;
  v219 = *&v44;
  v220 = *&v43;
  v213 = x;
  v214 = y;
  v215 = width;
  v216 = height;
  objc_msgSend_frameBounds(v48, v49, v50, v51, v52, v53);
  objc_msgSend_rectInRoot_(v222, v54, v55, v56, v57, v58);
  v59 = *&self->_canvasSpaceToWrapSpace.c;
  *&v227.a = *&self->_canvasSpaceToWrapSpace.a;
  *&v227.c = v59;
  *&v227.tx = *&self->_canvasSpaceToWrapSpace.tx;
  v233 = CGRectApplyAffineTransform(v232, &v227);
  v60 = v233.origin.x;
  v61 = v233.origin.y;
  v62 = v233.size.width;
  v63 = v233.size.height;

  v225 = 0u;
  v226 = 0u;
  v223 = 0u;
  v224 = 0u;
  v64 = v221;
  v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, v66, v67, v68, v69, &v223, v228, 16);
  if (v71)
  {
    v76 = *v224;
    do
    {
      v77 = 0;
      do
      {
        if (*v224 != v76)
        {
          objc_enumerationMutation(v64);
        }

        v78 = *(*(&v223 + 1) + 8 * v77);
        objc_msgSend_boundsInfluencingExteriorWrap(v78, v70, v72, v73, v74, v75);
        v79 = *&self->_canvasSpaceToWrapSpace.c;
        *&v227.a = *&self->_canvasSpaceToWrapSpace.a;
        *&v227.c = v79;
        *&v227.tx = *&self->_canvasSpaceToWrapSpace.tx;
        v235 = CGRectApplyAffineTransform(v234, &v227);
        v80 = v235.origin.x;
        v81 = v235.origin.y;
        v82 = v235.size.width;
        v83 = v235.size.height;
        v236.origin.x = v60;
        v236.origin.y = v61;
        v236.size.width = v62;
        v236.size.height = v63;
        if (CGRectIntersectsRect(v235, v236))
        {
          v84 = objc_msgSend_wrapFitType(v78, v70, v72, v73, v74, v75);
          if (objc_msgSend_wrapType(v78, v85, v86, v87, v88, v89) == 2)
          {
            v91.n128_f64[0] = v60;
            v92.n128_f64[0] = v81;
            v93.n128_f64[0] = v62;
            v94.n128_f64[0] = v83;
            v95 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v90, v91, v92, v93, v94);
            goto LABEL_14;
          }

          if (v84)
          {
            if (v84 == 1)
            {
              v101 = *&self->_canvasSpaceToWrapSpace.c;
              *&v227.a = *&self->_canvasSpaceToWrapSpace.a;
              *&v227.c = v101;
              *&v227.tx = *&self->_canvasSpaceToWrapSpace.tx;
              if (CGAffineTransformIsIdentity(&v227))
              {
                v95 = objc_msgSend_wrapPath(v78, v102, v103, v104, v105, v106);
                goto LABEL_14;
              }

              v108 = objc_msgSend_wrapPath(v78, v102, v103, v104, v105, v106);
              v107 = objc_msgSend_copy(v108, v109, v110, v111, v112, v113);

              v114 = *&self->_canvasSpaceToWrapSpace.c;
              *&v227.a = *&self->_canvasSpaceToWrapSpace.a;
              *&v227.c = v114;
              *&v227.tx = *&self->_canvasSpaceToWrapSpace.tx;
              objc_msgSend_transformUsingAffineTransform_(v107, v115, *&v227.tx, v114, v116, v117, &v227);
LABEL_15:
              if (v107)
              {
                objc_msgSend_addObject_(v36, v96, v97, v98, v99, v100, v107);
              }
            }

            else
            {
              v107 = 0;
            }

            goto LABEL_19;
          }

          v91.n128_f64[0] = v80;
          v92.n128_f64[0] = v81;
          v93.n128_f64[0] = v82;
          v94.n128_f64[0] = v83;
          v95 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v90, v91, v92, v93, v94);
LABEL_14:
          v107 = v95;
          goto LABEL_15;
        }

LABEL_19:
        ++v77;
      }

      while (v71 != v77);
      v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v70, v72, v73, v74, v75, &v223, v228, 16);
      v71 = v118;
    }

    while (v118);
  }

  if (objc_msgSend_count(v36, v119, v120, v121, v122, v123))
  {
    v129 = objc_msgSend_uniteBezierPaths_(MEMORY[0x277D81160], v124, v125, v126, v127, v128, v36);
    if ((objc_msgSend_isFlat(v129, v130, v131, v132, v133, v134) & 1) == 0)
    {
      v140 = objc_msgSend_bezierPathByFlatteningPath(v129, v135, v136, v137, v138, v139);

      v129 = v140;
    }

    v141 = objc_alloc(MEMORY[0x277D803F0]);
    v147 = objc_msgSend_initWithPath_(v141, v142, v143, v144, v145, v146, v129);
    v149.n128_u64[0] = v219;
    v148.n128_u64[0] = v220;
    v151.n128_u64[0] = v217;
    v150.n128_u64[0] = v218;
    objc_msgSend_unobstructedSpanForWrapSegments_startingSpan_columnBounds_(MEMORY[0x277D80F88], v152, v148, v149, v150, v151, v147, v60, v61, v62, v63);
    v158 = v154.n128_f64[0];
    b = self->_wrapSpaceToCanvasSpace.b;
    d = self->_wrapSpaceToCanvasSpace.d;
    v161 = 0.0;
    v162 = 0.0;
    v163 = 0.0;
    ty = self->_wrapSpaceToCanvasSpace.ty;
    if (infoCopy)
    {
      objc_msgSend_targetInverseTransformInRoot(infoCopy, v153, v154, v155, v156, v157);
      v163 = v227.b;
      v162 = v227.d;
      v161 = v227.ty;
    }

    v169.n128_f64[0] = v161 + (ty + v158 * d + b * 0.0) * v162 + v163 * 0.0;
  }

  else
  {
    v170 = *&self->_wrapSpaceToCanvasSpace.c;
    *&v227.a = *&self->_wrapSpaceToCanvasSpace.a;
    *&v227.c = v170;
    *&v227.tx = *&self->_wrapSpaceToCanvasSpace.tx;
    v171 = v213;
    *&v170 = v214;
    v172 = v215;
    v173 = v216;
    *v166.n128_u64 = CGRectApplyAffineTransform(*(&v170 - 8), &v227);
  }

  if ((v169.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if (v169.n128_f64[0] > 0.0)
  {
    v166.n128_u64[0] = 0x47EFFFFFE0000000;
    if (v169.n128_f64[0] > 3.40282347e38)
    {
      v176 = MEMORY[0x277D81150];
      v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v165, v166, v169, v167, v168, "[TPTextWrapController nextUnobstructedSpanStartingAt:wrappableAttachments:userInfo:]");
      v183 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v178, v179, v180, v181, v182, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextWrapController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v176, v184, v185, v186, v187, v188, v177, v183, 426, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v189, v190, v191, v192, v193);
      *&v194 = 3.4028e38;
LABEL_39:
      v174 = *&v194;
      goto LABEL_36;
    }
  }

  if (v169.n128_f64[0] < 0.0)
  {
    v166.n128_u64[0] = 0xC7EFFFFFE0000000;
    if (v169.n128_f64[0] < -3.40282347e38)
    {
      v195 = MEMORY[0x277D81150];
      v196 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v165, v166, v169, v167, v168, "[TPTextWrapController nextUnobstructedSpanStartingAt:wrappableAttachments:userInfo:]");
      v202 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v197, v198, v199, v200, v201, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTextWrapController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v195, v203, v204, v205, v206, v207, v196, v202, 426, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v208, v209, v210, v211, v212);
      *&v194 = -3.4028e38;
      goto LABEL_39;
    }
  }

LABEL_35:
  v174 = v169.n128_f64[0];
LABEL_36:

  return v174;
}

- (BOOL)checkForUnobstructedSpan:(CGRect)span wrappableAttachments:(id)attachments userInfo:(id)info
{
  height = span.size.height;
  width = span.size.width;
  y = span.origin.y;
  x = span.origin.x;
  v71 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  infoCopy = info;
  v18 = objc_msgSend_target(infoCopy, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_p_wrapDrawables_userInfo_(self, v19, v20, v21, v22, v23, attachmentsCopy, infoCopy);
  if (objc_msgSend_count(v24, v25, v26, v27, v28, v29))
  {
    v31.n128_f64[0] = x;
    v32.n128_f64[0] = y;
    v33.n128_f64[0] = width;
    v34.n128_f64[0] = height;
    objc_msgSend_rectInRoot_(v18, v30, v31, v32, v33, v34);
    v35 = *&self->_canvasSpaceToWrapSpace.c;
    *&v69.a = *&self->_canvasSpaceToWrapSpace.a;
    *&v69.c = v35;
    *&v69.tx = *&self->_canvasSpaceToWrapSpace.tx;
    v73 = CGRectApplyAffineTransform(v72, &v69);
    v36 = v73.origin.x;
    v37 = v73.origin.y;
    v38 = v73.size.width;
    v39 = v73.size.height;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v40 = v24;
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, v42, v43, v44, v45, &v65, v70, 16);
    v63 = v18;
    v64 = attachmentsCopy;
    if (v47)
    {
      v52 = *v66;
      v53 = 1;
LABEL_4:
      v54 = 0;
      while (1)
      {
        if (*v66 != v52)
        {
          objc_enumerationMutation(v40);
        }

        v55 = *(*(&v65 + 1) + 8 * v54);
        objc_msgSend_boundsInfluencingExteriorWrap(v55, v46, v48, v49, v50, v51, v63, v64, v65);
        v56 = *&self->_canvasSpaceToWrapSpace.c;
        *&v69.a = *&self->_canvasSpaceToWrapSpace.a;
        *&v69.c = v56;
        *&v69.tx = *&self->_canvasSpaceToWrapSpace.tx;
        v75 = CGRectApplyAffineTransform(v74, &v69);
        v76.origin.x = v36;
        v76.origin.y = v37;
        v76.size.width = v38;
        v76.size.height = v39;
        if (CGRectIntersectsRect(v75, v76))
        {
          v57 = objc_msgSend_wrapType(v55, v46, v48, v49, v50, v51);
          if (!v57 || v57 == 5)
          {
            v59 = 1;
          }

          else
          {
            v53 = 0;
            v59 = 0;
          }

          v60 = !v57 || v57 == 5;
          if (!v60 && v59 == 0)
          {
            break;
          }
        }

        if (v47 == ++v54)
        {
          v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v46, v48, v49, v50, v51, &v65, v70, 16);
          if (v47)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v53 = 1;
    }

    v18 = v63;
    attachmentsCopy = v64;
  }

  else
  {
    v53 = 1;
  }

  return v53 & 1;
}

- (BOOL)p_shouldTextFlowAroundWrappable:(id)wrappable inTarget:(id)target inColumn:(id)column
{
  wrappableCopy = wrappable;
  targetCopy = target;
  columnCopy = column;
  if ((objc_msgSend_hasAlpha(wrappableCopy, v11, v12, v13, v14, v15) & 1) == 0)
  {
    objc_msgSend_boundsInRoot(wrappableCopy, v16, v17, v18, v19, v20);
    v22 = *&self->_canvasSpaceToWrapSpace.c;
    *&recta[1] = *&self->_canvasSpaceToWrapSpace.a;
    *&recta[3] = v22;
    *&recta[5] = *&self->_canvasSpaceToWrapSpace.tx;
    v48 = CGRectApplyAffineTransform(v47, &recta[1]);
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;
    recta[0] = *&v48.origin.x;
    v26.n128_f64[0] = CGRectGetWidth(v48);
    v44 = v26.n128_f64[0];
    objc_msgSend_frameBounds(columnCopy, v27, v26, v28, v29, v30);
    objc_msgSend_rectInRoot_(targetCopy, v31, v32, v33, v34, v35);
    v36 = *&self->_canvasSpaceToWrapSpace.c;
    *&recta[1] = *&self->_canvasSpaceToWrapSpace.a;
    *&recta[3] = v36;
    *&recta[5] = *&self->_canvasSpaceToWrapSpace.tx;
    v50 = CGRectApplyAffineTransform(v49, &recta[1]);
    x = v50.origin.x;
    v38 = v50.origin.y;
    v39 = v50.size.width;
    v40 = v50.size.height;
    v45 = CGRectGetWidth(v50);
    *&v51.origin.x = recta[0];
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    MinX = CGRectGetMinX(v51);
    v52.origin.x = x;
    v52.origin.y = v38;
    v52.size.width = v39;
    v52.size.height = v40;
    if (MinX - CGRectGetMinX(v52) < 1.0 || (v53.origin.x = x, v53.origin.y = v38, v53.size.width = v39, v53.size.height = v40, MaxX = CGRectGetMaxX(v53), *&v54.origin.x = recta[0], v54.origin.y = y, v54.size.width = width, v54.size.height = height, MaxX - CGRectGetMaxX(v54) < 1.0))
    {
      v55.origin.x = x;
      v55.origin.y = v38;
      v55.size.width = v39;
      v55.size.height = v40;
      *&v57.origin.x = recta[0];
      v57.origin.y = y;
      v57.size.width = width;
      v57.size.height = height;
      v56 = CGRectIntersection(v55, v57);
      v21 = CGRectGetWidth(v56) < v45 * 0.800000012;
      goto LABEL_6;
    }

    if (v44 >= v45 * 0.333333343)
    {
      v21 = 0;
      goto LABEL_6;
    }
  }

  v21 = 1;
LABEL_6:

  return v21;
}

- (void)p_splitLine:(CGRect)line lineSegmentRects:(id)rects wrappable:(id)wrappable cookie:(id)cookie skipHint:(double *)hint
{
  height = line.size.height;
  width = line.size.width;
  y = line.origin.y;
  x = line.origin.x;
  rectsCopy = rects;
  wrappableCopy = wrappable;
  v17 = *&self->_canvasSpaceToWrapSpace.c;
  *&v36.a = *&self->_canvasSpaceToWrapSpace.a;
  *&v36.c = v17;
  *&v36.tx = *&self->_canvasSpaceToWrapSpace.tx;
  v22 = objc_msgSend_transformedWrapSegmentsForWrappable_canvasSpaceToWrapSpaceTransform_(cookie, v18, *&v36.tx, v17, v19, v20, wrappableCopy, &v36);
  if (!v22)
  {
    objc_msgSend_frameInRoot(wrappableCopy, v21, v23, v24, v25, v26);
    v27 = *&self->_canvasSpaceToWrapSpace.c;
    *&v36.a = *&self->_canvasSpaceToWrapSpace.a;
    *&v36.c = v27;
    *&v36.tx = *&self->_canvasSpaceToWrapSpace.tx;
    v38 = CGRectApplyAffineTransform(v37, &v36);
    v29 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v28, v38.origin, *&v38.origin.y, v38.size, *&v38.size.height);
    v30 = objc_alloc(MEMORY[0x277D803F0]);
    v22 = objc_msgSend_initWithPath_(v30, v31, v32, v33, v34, v35, v29);
  }

  v23.n128_f64[0] = x;
  v24.n128_f64[0] = y;
  v25.n128_f64[0] = width;
  v26.n128_f64[0] = height;
  objc_msgSend_splitLine_lineSegmentRects_wrapSegments_type_skipHint_(MEMORY[0x277D80F88], v21, v23, v24, v25, v26, rectsCopy, v22, 1, hint);
}

- (TPDocumentRoot)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

@end