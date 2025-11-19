@interface TSCHReferenceLineRenderer
- (void)addSelection:(id)a3 toCGPath:(CGPath *)a4 useWrapWidth:(BOOL)a5;
- (void)p_renderIntoContext:(CGContext *)a3 visible:(CGRect)a4;
- (void)p_renderLabelsIntoContext:(CGContext *)a3 forRefLineLabelsLayout:(id)a4 forSelection:(id)a5;
- (void)p_renderLinesIntoContext:(CGContext *)a3 linesToRender:(id)a4;
- (void)renderIntoContext:(CGContext *)a3 selection:(id)a4;
@end

@implementation TSCHReferenceLineRenderer

- (void)p_renderLinesIntoContext:(CGContext *)a3 linesToRender:(id)a4
{
  v173 = *MEMORY[0x277D85DE8];
  v6 = a4;
  CGContextSaveGState(a3);
  v11 = objc_msgSend_model(self, v7, v8, v9, v10);
  objc_opt_class();
  v16 = objc_msgSend_layoutItem(self, v12, v13, v14, v15);
  v17 = TSUCheckedDynamicCast();

  objc_opt_class();
  v153 = v17;
  v22 = objc_msgSend_bodyLayoutItem(v17, v18, v19, v20, v21);
  v157 = TSUCheckedDynamicCast();

  v154 = v11;
  v27 = objc_msgSend_seriesList(v11, v23, v24, v25, v26);
  v32 = objc_msgSend_firstObject(v27, v28, v29, v30, v31);
  v37 = objc_msgSend_seriesType(v32, v33, v34, v35, v36);
  v42 = v37;
  v161 = self;
  if (v37)
  {
    v43 = v37;
  }

  else
  {
    v44 = objc_msgSend_chartInfo(self, v38, v39, v40, v41);
    v49 = objc_msgSend_chartType(v44, v45, v46, v47, v48);
    v43 = objc_msgSend_defaultSeriesType_(v49, v50, v51, v52, v53, 0);
  }

  if (v43)
  {
    v156 = objc_msgSend_elementBuilder(v43, v54, v55, v56, v57);
    if (v156)
    {
      v152 = v43;
      v170 = 0u;
      v171 = 0u;
      v168 = 0u;
      v169 = 0u;
      obj = objc_msgSend_axisList(v154, v58, 0.0, v59, v60);
      v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v61, v62, v63, v64, &v168, v172, 16);
      if (v65)
      {
        v70 = v65;
        v71 = *v169;
        v155 = *v169;
        do
        {
          v72 = 0;
          v158 = v70;
          do
          {
            if (*v169 != v71)
            {
              objc_enumerationMutation(obj);
            }

            v73 = *(*(&v168 + 1) + 8 * v72);
            if (objc_msgSend_supportsReferenceLines(v73, v66, v67, v68, v69))
            {
              v160 = v72;
              v74 = *(MEMORY[0x277CBF398] + 16);
              v167[0] = *MEMORY[0x277CBF398];
              v167[1] = v74;
              v166 = 0;
              v75 = objc_msgSend_axisID(v73, v66, *v167, *&v74, v69);
              v80 = objc_msgSend_model(v157, v76, v77, v78, v79);
              v165 = 0;
              LOBYTE(v151) = 0;
              v85 = objc_msgSend_countOfReferenceLinesForAxisID_model_forBodyLayout_outClipRect_outNewClipRects_outNewLineDescriptors_outReferenceLines_includeOutsideChartBodyBounds_outOutsideChartBodyBounds_(v156, v81, v82, v83, v84, v75, v80, v157, v167, 0, &v166, &v165, v151, 0);
              v86 = v165;

              if (v85)
              {
                v91 = 0;
                v92 = 0;
                v162 = v85;
                do
                {
                  v94 = objc_msgSend_objectAtIndexedSubscript_(v86, v87, v88, v89, v90, v92);
                  if (!v6 || objc_msgSend_containsObject_(v6, v93, v95, v96, v97, v94))
                  {
                    v98 = objc_msgSend_objectValueForProperty_(v94, v93, v95, v96, v97, 1225);
                    v103 = v98;
                    if (v98 && objc_msgSend_shouldRender(v98, v99, v100, v101, v102))
                    {
                      CGContextSaveGState(a3);
                      v108 = objc_msgSend_objectValueForProperty_(v94, v104, v105, v106, v107, 1221);
                      hasShadow = objc_msgSend_hasShadow_(TSCHStyleUtilities, v109, v110, v111, v112, v108);
                      if (hasShadow)
                      {
                        objc_msgSend_tLayerRectForContext_(v161, v113, v115, v116, v117, a3);
                        CGContextBeginTransparencyLayerWithRect(a3, v174, 0);
                        v85 = v162;
                        objc_msgSend_viewScale(v161, v118, v119, v120, v121);
                        v123 = v122;
                        v127 = sub_27631FD2C(a3, v124, v122, v125, v126);
                        objc_msgSend_applyToContext_viewScale_flipped_(v108, v128, v123, v129, v130, a3, v127);
                      }

                      objc_msgSend_width(v103, v113, v115, v116, v117);
                      v132 = v131;
                      objc_msgSend_applyToContext_(v103, v133, v131, v134, v135, a3);
                      v164 = 0uLL;
                      v164 = *(v166 + v91);
                      v163 = 0uLL;
                      v163 = *(v166 + v91 + 16);
                      sub_27628C654(a3, &v164, &v163, 0, v132);
                      CGContextBeginPath(a3);
                      CGContextMoveToPoint(a3, *&v164, *(&v164 + 1));
                      CGContextAddLineToPoint(a3, *&v163, *(&v163 + 1));
                      CGContextStrokePath(a3);
                      if (hasShadow)
                      {
                        CGContextEndTransparencyLayer(a3);
                      }

                      CGContextRestoreGState(a3);
                    }
                  }

                  ++v92;
                  v91 += 32;
                }

                while (v85 != v92);
              }

              if (v166)
              {
                free(v166);
                v166 = 0;
              }

              v71 = v155;
              v70 = v158;
              v72 = v160;
            }

            ++v72;
          }

          while (v72 != v70);
          v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v66, v67, v68, v69, &v168, v172, 16);
        }

        while (v70);
      }

      v43 = v152;
    }

    CGContextRestoreGState(a3);
  }

  else
  {
    v136 = MEMORY[0x277D81150];
    v137 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "[TSCHReferenceLineRenderer p_renderLinesIntoContext:linesToRender:]");
    v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v138, v139, v140, v141, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLineRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v136, v143, v144, v145, v146, v137, v142, 47, 0, "invalid nil value for '%{public}s'", "seriesType");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v147, v148, v149, v150);
  }
}

- (void)p_renderLabelsIntoContext:(CGContext *)a3 forRefLineLabelsLayout:(id)a4 forSelection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v153 = self;
  v14 = objc_msgSend_model(self, v10, v11, v12, v13);
  v19 = objc_msgSend_seriesList(v14, v15, v16, v17, v18);
  if (!objc_msgSend_count(v19, v20, v21, v22, v23))
  {

    goto LABEL_42;
  }

  v28 = objc_msgSend_seriesList(v14, v24, v25, v26, v27);
  v33 = objc_msgSend_objectAtIndexedSubscript_(v28, v29, v30, v31, v32, 0);
  v38 = objc_msgSend_seriesType(v33, v34, v35, v36, v37);
  v43 = objc_msgSend_elementBuilder(v38, v39, v40, v41, v42);

  if (v43)
  {
    v48 = objc_msgSend_sharedText(TSCHText, v44, v45, v46, v47);
    v53 = objc_msgSend_axisID(v8, v49, v50, v51, v52);
    v58 = objc_msgSend_axisForID_(v14, v54, v55, v56, v57, v53);
    if (!objc_msgSend_supportsReferenceLines(v58, v59, v60, v61, v62))
    {

      goto LABEL_42;
    }

    c = a3;
    CGContextSaveGState(a3);
    v162 = 0;
    v163 = 0;
    v160 = 0;
    v161 = 0;
    v67 = &v161;
    if (!v9)
    {
      v67 = 0;
    }

    v68 = &v158;
    if (!v9)
    {
      v68 = 0;
    }

    v159 = 0;
    if (v9)
    {
      v158 = 0;
    }

    v69 = objc_msgSend_countOfReferenceLineLabelsForAxisID_model_forRefLineLabelsLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewParagraphStyles_outNewStrings_outNewLabelTypes_outReferenceLines_includeOutsideChartBodyBounds_outOutsideChartBodyBounds_(v43, v63, v64, v65, v66, v53, v14, v8, &v163, 0, &v162, &v160, &v159, v67, v68, 0, 0);
    v150 = v160;
    v155 = v159;
    v148 = v48;
    if (v9)
    {
      v151 = v158;
    }

    else
    {
      v151 = 0;
    }

    v143 = v58;
    v144 = v53;
    v74 = objc_msgSend_path(v9, v70, v71, v72, v73);
    v145 = v43;
    v146 = v8;
    v152 = v14;
    if (objc_msgSend_argumentsCount(v74, v75, v76, v77, v78))
    {
      v83 = objc_msgSend_path(v9, v79, v80, v81, v82);
      v88 = objc_msgSend_argumentAtIndex_(v83, v84, v85, v86, v87, 0);

      if (!v88)
      {
        v93 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_21;
      }

      v93 = objc_msgSend_unsignedIntegerValue(v88, v89, v90, v91, v92);
      v74 = v88;
    }

    else
    {
      v93 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_21:
    v94 = objc_msgSend_path(v9, v89, v90, v91, v92);
    v154 = sub_27629E0DC(v94, v95, v96, v97, v98);

    v103 = v150;
    if (v69)
    {
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v107 = *MEMORY[0x277CBF348];
      v108 = *(MEMORY[0x277CBF348] + 8);
      v147 = v9;
      do
      {
        if (v93 == 0x7FFFFFFFFFFFFFFFLL || v154 == *(v161 + 8 * v106) && (objc_msgSend_objectAtIndexedSubscript_(v151, v99, v100, v101, v102, v106), v130 = objc_claimAutoreleasedReturnValue(), v135 = objc_msgSend_styleSwapIndexForReferenceLine_(v152, v131, v132, v133, v134, v130), v130, v135 == v93))
        {
          v109 = *&v163[v104 + 16];
          *&v157.a = *&v163[v104];
          *&v157.c = v109;
          *&v157.tx = *&v163[v104 + 32];
          v110 = *&v162[v105];
          v111 = *&v162[v105 + 8];
          v112 = *&v162[v105 + 16];
          v113 = *&v162[v105 + 24];
          v114 = objc_msgSend_objectAtIndexedSubscript_(v103, v99, v157.tx, *&v109, v102, v106);
          v119 = objc_msgSend_objectAtIndexedSubscript_(v155, v115, v116, v117, v118, v106);
          if (objc_msgSend_length(v119, v120, v121, v122, v123))
          {
            v164.origin.x = v110;
            v164.origin.y = v111;
            v164.size.width = v112;
            v164.size.height = v113;
            if (!CGRectIsNull(v164))
            {
              if (v114)
              {
                if (v9 && objc_msgSend_range(v9, v124, v125, v126, v127) != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v129 = objc_msgSend_range(v9, v124, v125, v126, v127);
                  v128 = v136;
                }

                else
                {
                  v128 = objc_msgSend_length(v119, v124, v125, v126, v127);
                  v129 = 0;
                }

                CGContextSaveGState(c);
                transform = v157;
                CGContextConcatCTM(c, &transform);
                CGContextClipToRectSafe();
                objc_msgSend_viewScale(v153, v137, v138, v139, v140);
                objc_msgSend_drawText_paragraphStyle_intoContext_atPosition_range_viewScale_(v148, v141, v107, v108, v142, v119, v114, c, v129, v128);
                CGContextRestoreGState(c);
                v9 = v147;
                v103 = v150;
              }
            }
          }
        }

        ++v106;
        v105 += 32;
        v104 += 48;
      }

      while (v69 != v106);
    }

    if (v163)
    {
      free(v163);
      v163 = 0;
    }

    v8 = v146;
    v14 = v152;
    if (v162)
    {
      free(v162);
      v162 = 0;
    }

    CGContextRestoreGState(c);
  }

LABEL_42:
}

- (void)p_renderIntoContext:(CGContext *)a3 visible:(CGRect)a4
{
  v83 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v10 = objc_msgSend_chartRep(self, v6, v7, v8, v9);
  v11 = TSUDynamicCast();

  if (objc_msgSend_renderReferenceLines(v11, v12, v13, v14, v15))
  {
    v20 = objc_msgSend_referenceLinesToRender(v11, v16, v17, v18, v19);
    objc_msgSend_p_renderLinesIntoContext_linesToRender_(self, v21, v22, v23, v24, a3, v20);

    objc_opt_class();
    v29 = objc_msgSend_layoutItem(self, v25, v26, v27, v28);
    v30 = TSUCheckedDynamicCast();

    v35 = objc_msgSend_referenceLineLabelsSearchSelectionsToRender(v11, v31, v32, v33, v34);
    v40 = v35;
    if (v35)
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, 0.0, v38, v39, &v78, v82, 16);
      if (v41)
      {
        v46 = v41;
        v47 = *v79;
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v79 != v47)
            {
              objc_enumerationMutation(v40);
            }

            v49 = *(*(&v78 + 1) + 8 * i);
            v50 = objc_msgSend_rightRefLineLabels(v30, v42, v43, v44, v45);
            objc_msgSend_p_renderLabelsIntoContext_forRefLineLabelsLayout_forSelection_(self, v51, v52, v53, v54, a3, v50, v49);

            v59 = objc_msgSend_topRefLineLabels(v30, v55, v56, v57, v58);
            objc_msgSend_p_renderLabelsIntoContext_forRefLineLabelsLayout_forSelection_(self, v60, v61, v62, v63, a3, v59, v49);
          }

          v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v42, v43, v44, v45, &v78, v82, 16);
        }

        while (v46);
      }
    }

    else
    {
      v64 = objc_msgSend_rightRefLineLabels(v30, v36, v37, v38, v39);
      objc_msgSend_p_renderLabelsIntoContext_forRefLineLabelsLayout_(self, v65, v66, v67, v68, a3, v64);

      v73 = objc_msgSend_topRefLineLabels(v30, v69, v70, v71, v72);
      objc_msgSend_p_renderLabelsIntoContext_forRefLineLabelsLayout_(self, v74, v75, v76, v77, a3, v73);
    }
  }
}

- (void)renderIntoContext:(CGContext *)a3 selection:(id)a4
{
  v6 = a4;
  objc_opt_class();
  v11 = objc_msgSend_layoutItem(self, v7, v8, v9, v10);
  v30 = TSUCheckedDynamicCast();

  v16 = objc_msgSend_rightRefLineLabels(v30, v12, v13, v14, v15);
  objc_msgSend_p_renderLabelsIntoContext_forRefLineLabelsLayout_forSelection_(self, v17, v18, v19, v20, a3, v16, v6);

  v25 = objc_msgSend_topRefLineLabels(v30, v21, v22, v23, v24);
  objc_msgSend_p_renderLabelsIntoContext_forRefLineLabelsLayout_forSelection_(self, v26, v27, v28, v29, a3, v25, v6);
}

- (void)addSelection:(id)a3 toCGPath:(CGPath *)a4 useWrapWidth:(BOOL)a5
{
  v6 = a3;
  v11 = objc_msgSend_path(v6, v7, v8, v9, v10);
  if (sub_27629E0DC(v11, v12, v13, v14, v15))
  {
    objc_opt_class();
    v20 = objc_msgSend_layoutItem(self, v16, v17, v18, v19);
    v21 = TSUCheckedDynamicCast();

    if (!v21)
    {
LABEL_16:

      goto LABEL_17;
    }

    v26 = objc_msgSend_model(self, v22, v23, v24, v25);
    v31 = objc_msgSend_seriesList(v26, v27, v28, v29, v30);
    v36 = objc_msgSend_objectAtIndexedSubscript_(v31, v32, v33, v34, v35, 0);
    v41 = objc_msgSend_seriesType(v36, v37, v38, v39, v40);
    v46 = objc_msgSend_elementBuilder(v41, v42, v43, v44, v45);

    objc_opt_class();
    v51 = objc_msgSend_chartInfo(self, v47, v48, v49, v50);
    v56 = objc_msgSend_styleOwnerForSelectionPath_(v51, v52, v53, v54, v55, v11);
    v57 = TSUCheckedDynamicCast();

    v62 = sub_27629E0DC(v11, v58, v59, v60, v61);
    if (v57 && v46)
    {
      v67 = v62;
      v68 = objc_msgSend_rightRefLineLabels(v21, v63, v64, v65, v66);
      v73 = objc_msgSend_axisID(v68, v69, v70, v71, v72);
      v78 = objc_msgSend_axisID(v57, v74, v75, v76, v77);
      isEqual = objc_msgSend_isEqual_(v73, v79, v80, v81, v82, v78);

      if (isEqual)
      {
        v88 = objc_msgSend_rightRefLineLabels(v21, v84, v85, v86, v87);
        goto LABEL_9;
      }

      v91 = objc_msgSend_topRefLineLabels(v21, v84, v85, v86, v87);
      v96 = objc_msgSend_axisID(v91, v92, v93, v94, v95);
      v101 = objc_msgSend_axisID(v57, v97, v98, v99, v100);
      v106 = objc_msgSend_isEqual_(v96, v102, v103, v104, v105, v101);

      if (v106)
      {
        v88 = objc_msgSend_topRefLineLabels(v21, v107, v108, v109, v110);
LABEL_9:
        v111 = v88;
        v112 = MEMORY[0x277CBF3A8];
        *v137 = *MEMORY[0x277CBF3A8];
        v113 = *(MEMORY[0x277CBF398] + 16);
        v136.origin = *MEMORY[0x277CBF398];
        v136.size = v113;
        memset(&v135, 0, sizeof(v135));
        v114 = objc_msgSend_range(v6, v89, 0.0, v113.width, v90);
        objc_msgSend_transformForRenderingLabelForReferenceLine_ofType_range_inLayoutItem_outElementSize_outClipRect_(v46, v115, v116, v117, v118, v57, v67, v114, v115, v111, v137, &v136);
        if (!CGRectIsNull(v136) && (*v112 != v137[0] || v112[1] != v137[1]))
        {
          TSURectWithSize();
          v134 = v135;
          CGRectApplyAffineTransform(v138, &v134);
          CGPathAddRectSafe();
        }

        goto LABEL_15;
      }

      v119 = MEMORY[0x277D81150];
      v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, v108, v109, v110, "[TSCHReferenceLineRenderer addSelection:toCGPath:useWrapWidth:]");
      v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, v122, v123, v124, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLineRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v119, v126, v127, v128, v129, v120, v125, 247, 0, "No layoutItem for refLine: %@", v57);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v130, v131, v132, v133);
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
}

@end