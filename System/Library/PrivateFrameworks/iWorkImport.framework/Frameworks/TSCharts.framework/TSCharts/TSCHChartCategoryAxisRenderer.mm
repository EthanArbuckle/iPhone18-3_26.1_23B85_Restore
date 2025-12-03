@interface TSCHChartCategoryAxisRenderer
- (BOOL)canEditTextForSelectionPath:(id)path;
- (BOOL)canRenderSelectionPath:(id)path;
- (BOOL)p_doesSelectionPathReferToAxisLabel:(id)label;
- (BOOL)p_doesSelectionPathReferToAxisSeriesLabel:(id)label;
- (CGRect)frameForEditingTextForSelectionPath:(id)path;
- (id)categoryAxisLayoutItem;
- (id)p_labelGeometryForSelectionPath:(id)path;
- (id)transparencyLayers;
- (unint64_t)p_categoryIndexForSelectionPath:(id)path;
- (unint64_t)p_seriesIndexForSelectionPath:(id)path;
- (void)addSelection:(id)selection toCGPath:(CGPath *)path useWrapWidth:(BOOL)width;
- (void)p_drawIntoLayer:(int)layer inContext:(CGContext *)context visible:(CGRect)visible limitRenderLabels:(int)labels limitLabelIndex:(unint64_t)index rangePtr:(_NSRange *)ptr;
- (void)renderIntoContext:(CGContext *)context selection:(id)selection;
@end

@implementation TSCHChartCategoryAxisRenderer

- (id)categoryAxisLayoutItem
{
  objc_opt_class();
  v7 = objc_msgSend_layoutItem(self, v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  return v8;
}

- (id)transparencyLayers
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v20.receiver = self;
  v20.super_class = TSCHChartCategoryAxisRenderer;
  transparencyLayers = [(TSCHChartAxisRenderer *)&v20 transparencyLayers];
  v9 = objc_msgSend_initWithArray_(v3, v5, v6, v7, v8, transparencyLayers);

  objc_msgSend_addObject_(v9, v10, v11, v12, v13, &unk_28856BFA8);
  v18 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v14, v15, v16, v17, v9);

  return v18;
}

- (void)p_drawIntoLayer:(int)layer inContext:(CGContext *)context visible:(CGRect)visible limitRenderLabels:(int)labels limitLabelIndex:(unint64_t)index rangePtr:(_NSRange *)ptr
{
  v8 = *&labels;
  selfCopy = self;
  v203[2] = *MEMORY[0x277D85DE8];
  v201.receiver = self;
  v201.super_class = TSCHChartCategoryAxisRenderer;
  [(TSCHChartAxisRenderer *)&v201 drawIntoLayer:visible.origin.x inContext:visible.origin.y visible:visible.size.width, visible.size.height];
  if (layer != 0x7FFFFFFF)
  {
    return;
  }

  v16 = objc_msgSend_categoryAxisLayoutItem(selfCopy, v12, v13, v14, v15);
  v21 = objc_msgSend_axisCategoryLabelsLayoutItem(v16, v17, v18, v19, v20);
  v26 = objc_msgSend_axisSeriesLabelsLayoutItem(v16, v22, v23, v24, v25);
  v32 = objc_msgSend_chartInfo(selfCopy, v27, v28, v29, v30);
  v188 = v16;
  v178 = v32;
  if (!v32)
  {
    v36 = MEMORY[0x277D81150];
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v33, v34, v35, "[TSCHChartCategoryAxisRenderer p_drawIntoLayer:inContext:visible:limitRenderLabels:limitLabelIndex:rangePtr:]");
    v38 = v37 = selfCopy;
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v44, v45, v46, v47, v38, v43, 74, 0, "invalid nil value for '%{public}s'", "info");

    v32 = 0;
    selfCopy = v37;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
  }

  v187 = selfCopy;
  v52 = objc_msgSend_model(selfCopy, v31, v33, v34, v35);
  v57 = objc_msgSend_axisID(v16, v53, v54, v55, v56);
  v62 = objc_msgSend_axisForID_(v52, v58, v59, v60, v61, v57);

  v175 = objc_msgSend_numberOfLabelsForAxis_(v21, v63, v64, v65, v66, v62);
  v179 = objc_msgSend_numberOfLabelsForAxis_(v26, v67, v68, v69, v70, v62);
  v75 = objc_msgSend_chartType(v32, v71, v72, v73, v74);
  LODWORD(v57) = objc_msgSend_supportsCategoryAxisLabels(v75, v76, v77, v78, v79);

  if (v57)
  {
    v181 = objc_msgSend_intValueForProperty_defaultValue_(v62, v80, v81, v82, v83, 1052, 1) != 0;
  }

  else
  {
    v181 = 0;
  }

  v84 = objc_msgSend_chartType(v32, v80, v81, v82, v83);
  v89 = objc_msgSend_supportsSeriesLabels(v84, v85, v86, v87, v88);

  if (v89)
  {
    v180 = objc_msgSend_intValueForProperty_defaultValue_(v62, v90, v91, v92, v93, 1059, 0) != 0;
  }

  else
  {
    v180 = 0;
  }

  v94 = objc_msgSend_intValueForProperty_defaultValue_(v62, v90, v91, v92, v93, 1034, 0);
  v185 = objc_msgSend_paragraphStyleAtIndex_(v32, v95, v96, v97, v98, v94);
  v184 = objc_msgSend_sharedText(TSCHText, v99, v100, v101, v102);
  v190 = 0;
  v107 = *MEMORY[0x277CBF3A8];
  v108 = *(MEMORY[0x277CBF3A8] + 8);
  v109 = *MEMORY[0x277CBF348];
  v110 = *(MEMORY[0x277CBF348] + 8);
  v111 = 1;
  c = context;
  v176 = v26;
  v177 = v21;
  while (1)
  {
    v112 = v111;
    if ((v111 & 1) == 0)
    {
      break;
    }

    v195 = objc_msgSend_stride(v21, v103, v104, v105, v106);
    v191 = v21;
    if (v181)
    {
      v117 = v175;
      if (v175)
      {
LABEL_17:
        v182 = v112;
        v194 = objc_msgSend_intValueForProperty_defaultValue_(v62, v113, v114, v115, v116, 1053, 0);
        v122 = 0;
        v123 = 0;
        v193 = v117 - 1;
        v124 = 1;
        v125 = v190;
        v126 = v191;
        v127 = v117;
        v189 = v117;
        do
        {
          if (v124)
          {
            v128 = v122;
          }

          else
          {
            v128 = v193;
          }

          v196 = v128 == v193;
          v129 = objc_msgSend_selectionPathLabelIndexForIndex_axis_(v126, v118, v119, v120, v121, v128, v62);
          if (v125 != v8 || v128 == index)
          {
            v130 = v62;
            v131 = v8;
            if (v125)
            {
              v132 = @"seriesLabel";
              v138 = objc_msgSend_axisID(v16, v133, v134, v135, v136);
              v202 = v138;
              v142 = &v202;
            }

            else
            {
              v132 = @"axisLabel";
              v138 = objc_msgSend_axisID(v16, v143, v144, v145, v146);
              v203[0] = v138;
              v142 = v203;
            }

            v147 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v137, v139, v140, v141, v129);
            v142[1] = v147;
            v152 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v148, v149, v150, v151, v142, 2);

            v8 = v131;
            v62 = v130;
            v126 = v191;
            if (!v132 || (objc_msgSend_selectionPathWithType_name_arguments_(TSCHSelectionPath, v153, v154, v155, v156, @"text", v132, v152), v157 = objc_claimAutoreleasedReturnValue(), v162 = objc_msgSend_textDrawingFlagForSelectionPath_(v187, v158, v159, v160, v161, v157), v157, v162 != 2))
            {
              v163 = *(MEMORY[0x277CBF398] + 16);
              v200.origin = *MEMORY[0x277CBF398];
              v200.size = v163;
              v199 = *MEMORY[0x277CBF3A8];
              memset(&v198, 0, sizeof(v198));
              if (v191)
              {
                objc_msgSend_transformForRenderingLabel_outElementSize_outClipRect_(v191, v153, 0.0, v163.width, v156, v128, &v199, &v200);
              }

              if (!CGRectIsNull(v200))
              {
                v167 = *&v199;
                if (v107 != *&v199 || (v167 = *(&v199 + 1), v108 != *(&v199 + 1)))
                {
                  v168 = objc_msgSend_labelStringForAxis_index_(v191, v164, v167, v165, v166, v62, v128);
                  CGContextSaveGState(c);
                  transform = v198;
                  CGContextConcatCTM(c, &transform);
                  CGContextClipToRectSafe();
                  objc_msgSend_viewScale(v187, v169, v170, v171, v172);
                  if (ptr)
                  {
                    objc_msgSend_drawText_paragraphStyle_intoContext_atPosition_range_viewScale_(v184, v173, v109, v110, v174, v168, v185, c, ptr->location, ptr->length);
                  }

                  else
                  {
                    objc_msgSend_drawText_paragraphStyle_intoContext_atPosition_viewScale_(v184, v173, v109, v110, v174, v168, v185, c);
                  }

                  CGContextRestoreGState(c);
                }
              }
            }

            v16 = v188;
            v127 = v189;
            v125 = v190;
          }

          v123 |= v196;
          v122 += v195;
          v124 = v122 < v127;
        }

        while (v122 < v127 || !((v194 == 0) | v123 & 1));
        v26 = v176;
        v21 = v177;
        v32 = v178;
        v112 = v182;
      }
    }

LABEL_41:

    v111 = 0;
    v190 = 1;
    if ((v112 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  v191 = v26;
  if (v180)
  {
    v117 = v179;
    v195 = 1;
    if (v179)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_44:
}

- (BOOL)canRenderSelectionPath:(id)path
{
  pathCopy = path;
  v44.receiver = self;
  v44.super_class = TSCHChartCategoryAxisRenderer;
  if ([(TSCHChartAxisRenderer *)&v44 canRenderSelectionPath:pathCopy])
  {
    goto LABEL_2;
  }

  v10 = objc_msgSend_type(pathCopy, v5, v6, v7, v8);
  if (objc_msgSend_isEqual_(v10, v11, v12, v13, v14, @"text"))
  {
    v19 = objc_msgSend_name(pathCopy, v15, v16, v17, v18);
    isEqual = objc_msgSend_isEqual_(v19, v20, v21, v22, v23, @"axisLabel");

    if (isEqual)
    {
LABEL_2:
      v9 = 1;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v29 = objc_msgSend_type(pathCopy, v25, v26, v27, v28);
  if (objc_msgSend_isEqual_(v29, v30, v31, v32, v33, @"text"))
  {
    v38 = objc_msgSend_name(pathCopy, v34, v35, v36, v37);
    v9 = objc_msgSend_isEqual_(v38, v39, v40, v41, v42, @"seriesLabel");
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  return v9;
}

- (unint64_t)p_categoryIndexForSelectionPath:(id)path
{
  pathCopy = path;
  v9 = objc_msgSend_pathType(pathCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_axisLabelsType(TSCHSelectionPathType, v10, v11, v12, v13);
  isEqual = objc_msgSend_isEqual_(v9, v15, v16, v17, v18, v14);

  if ((isEqual & 1) == 0)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "[TSCHChartCategoryAxisRenderer p_categoryIndexForSelectionPath:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 229, 0, "invalid selection path type %@", pathCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  if (objc_msgSend_argumentsCount(pathCopy, v20, v21, v22, v23) <= 1)
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "[TSCHChartCategoryAxisRenderer p_categoryIndexForSelectionPath:]");
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v50, v51, v52, v53, v44, v49, 230, 0, "insufficient arguments for selection path %@", pathCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
  }

  v58 = objc_msgSend_categoryAxisLayoutItem(self, v39, v40, v41, v42);
  v63 = objc_msgSend_model(v58, v59, v60, v61, v62);
  v68 = objc_msgSend_axisID(v58, v64, v65, v66, v67);
  v73 = objc_msgSend_axisForID_(v63, v69, v70, v71, v72, v68);

  if (!v73)
  {
    v78 = MEMORY[0x277D81150];
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, v75, v76, v77, "[TSCHChartCategoryAxisRenderer p_categoryIndexForSelectionPath:]");
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, v81, v82, v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v85, v86, v87, v88, v79, v84, 233, 0, "invalid nil value for '%{public}s'", "axis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90, v91, v92);
  }

  objc_opt_class();
  v97 = objc_msgSend_argumentAtIndex_(pathCopy, v93, v94, v95, v96, 1);
  v98 = TSUCheckedDynamicCast();
  v103 = objc_msgSend_unsignedIntegerValue(v98, v99, v100, v101, v102);

  v108 = objc_msgSend_indexForSelectionPathLabelIndex_(v73, v104, v105, v106, v107, v103);
  return v108;
}

- (unint64_t)p_seriesIndexForSelectionPath:(id)path
{
  pathCopy = path;
  v8 = objc_msgSend_pathType(pathCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_seriesLabelType(TSCHSelectionPathType, v9, v10, v11, v12);
  isEqual = objc_msgSend_isEqual_(v8, v14, v15, v16, v17, v13);

  if ((isEqual & 1) == 0)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHChartCategoryAxisRenderer p_seriesIndexForSelectionPath:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 240, 0, "invalid selection path type %@", pathCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  if (objc_msgSend_argumentsCount(pathCopy, v19, v20, v21, v22) <= 1)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "[TSCHChartCategoryAxisRenderer p_seriesIndexForSelectionPath:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxisRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 241, 0, "insufficient arguments for selection path %@", pathCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
  }

  objc_opt_class();
  v61 = objc_msgSend_argumentAtIndex_(pathCopy, v57, v58, v59, v60, 1);
  v62 = TSUCheckedDynamicCast();
  v67 = objc_msgSend_unsignedIntegerValue(v62, v63, v64, v65, v66);

  return v67;
}

- (void)renderIntoContext:(CGContext *)context selection:(id)selection
{
  selectionCopy = selection;
  v75.receiver = self;
  v75.super_class = TSCHChartCategoryAxisRenderer;
  [(TSCHChartAxisRenderer *)&v75 renderIntoContext:context selection:selectionCopy];
  v11 = objc_msgSend_path(selectionCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_type(v11, v12, v13, v14, v15);
  if (!objc_msgSend_isEqual_(v16, v17, v18, v19, v20, @"text"))
  {
    goto LABEL_6;
  }

  v25 = objc_msgSend_name(v11, v21, v22, v23, v24);
  if ((objc_msgSend_isEqual_(v25, v26, v27, v28, v29, @"axisLabel") & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v34 = objc_msgSend_argumentsCount(v11, v30, v31, v32, v33);

  if (v34 >= 2)
  {
    v39 = objc_msgSend_p_categoryIndexForSelectionPath_(self, v35, v36, v37, v38, v11);
    v74 = objc_msgSend_range(selectionCopy, v40, v41, v42, v43);
    objc_msgSend_p_drawIntoLayer_inContext_visible_limitRenderLabels_limitLabelIndex_rangePtr_(self, v44, *MEMORY[0x277CBF390], *(MEMORY[0x277CBF390] + 8), *(MEMORY[0x277CBF390] + 16), 0x7FFFFFFFLL, context, 0, v39, &v74, *(MEMORY[0x277CBF390] + 24), v74, v44);
    goto LABEL_14;
  }

LABEL_7:
  v45 = objc_msgSend_type(v11, v35, v36, v37, v38);
  if ((objc_msgSend_isEqual_(v45, v46, v47, v48, v49, @"text") & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  v54 = objc_msgSend_name(v11, v50, v51, v52, v53);
  if ((objc_msgSend_isEqual_(v54, v55, v56, v57, v58, @"seriesLabel") & 1) == 0)
  {

    goto LABEL_13;
  }

  v63 = objc_msgSend_argumentsCount(v11, v59, v60, v61, v62);

  if (v63 >= 2)
  {
    v68 = objc_msgSend_p_seriesIndexForSelectionPath_(self, v64, v65, v66, v67, v11);
    v74 = objc_msgSend_range(selectionCopy, v69, v70, v71, v72);
    objc_msgSend_p_drawIntoLayer_inContext_visible_limitRenderLabels_limitLabelIndex_rangePtr_(self, v73, *MEMORY[0x277CBF390], *(MEMORY[0x277CBF390] + 8), *(MEMORY[0x277CBF390] + 16), 0x7FFFFFFFLL, context, 1, v68, &v74, *(MEMORY[0x277CBF390] + 24), v74, v73);
  }

LABEL_14:
}

- (BOOL)p_doesSelectionPathReferToAxisLabel:(id)label
{
  labelCopy = label;
  v9 = objc_msgSend_type(labelCopy, v5, v6, v7, v8);
  if (!objc_msgSend_isEqual_(v9, v10, v11, v12, v13, @"text"))
  {
    v60 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v18 = objc_msgSend_name(labelCopy, v14, v15, v16, v17);
  if (!objc_msgSend_isEqual_(v18, v19, v20, v21, v22, @"axisLabel"))
  {
    v60 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v27 = objc_msgSend_argumentsCount(labelCopy, v23, v24, v25, v26);

  if (v27 >= 2)
  {
    v9 = objc_msgSend_axisLayoutItem(self, v28, v29, v30, v31);
    v18 = objc_msgSend_model(v9, v32, v33, v34, v35);
    v40 = objc_msgSend_axisID(v9, v36, v37, v38, v39);
    objc_opt_class();
    v45 = objc_msgSend_argumentAtIndex_(labelCopy, v41, v42, v43, v44, 0);
    v46 = TSUDynamicCast();

    if (objc_msgSend_isEqual_(v40, v47, v48, v49, v50, v46))
    {
      v55 = objc_msgSend_axisForID_(v18, v51, v52, v53, v54, v40);
      v60 = objc_msgSend_intValueForProperty_defaultValue_(v55, v56, v57, v58, v59, 1052, 1) != 0;
    }

    else
    {
      v60 = 0;
    }

    goto LABEL_11;
  }

  v60 = 0;
LABEL_13:

  return v60;
}

- (BOOL)p_doesSelectionPathReferToAxisSeriesLabel:(id)label
{
  labelCopy = label;
  v9 = objc_msgSend_type(labelCopy, v5, v6, v7, v8);
  if (!objc_msgSend_isEqual_(v9, v10, v11, v12, v13, @"text"))
  {
    v60 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v18 = objc_msgSend_name(labelCopy, v14, v15, v16, v17);
  if (!objc_msgSend_isEqual_(v18, v19, v20, v21, v22, @"seriesLabel"))
  {
    v60 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v27 = objc_msgSend_argumentsCount(labelCopy, v23, v24, v25, v26);

  if (v27 >= 2)
  {
    v9 = objc_msgSend_axisLayoutItem(self, v28, v29, v30, v31);
    v18 = objc_msgSend_model(v9, v32, v33, v34, v35);
    v40 = objc_msgSend_axisID(v9, v36, v37, v38, v39);
    objc_opt_class();
    v45 = objc_msgSend_argumentAtIndex_(labelCopy, v41, v42, v43, v44, 0);
    v46 = TSUDynamicCast();

    if (objc_msgSend_isEqual_(v40, v47, v48, v49, v50, v46))
    {
      v55 = objc_msgSend_axisForID_(v18, v51, v52, v53, v54, v40);
      v60 = objc_msgSend_intValueForProperty_defaultValue_(v55, v56, v57, v58, v59, 1059, 1) != 0;
    }

    else
    {
      v60 = 0;
    }

    goto LABEL_11;
  }

  v60 = 0;
LABEL_13:

  return v60;
}

- (void)addSelection:(id)selection toCGPath:(CGPath *)path useWrapWidth:(BOOL)width
{
  widthCopy = width;
  selectionCopy = selection;
  v13 = objc_msgSend_path(selectionCopy, v9, v10, v11, v12);
  if (objc_msgSend_p_doesSelectionPathReferToAxisLabel_(self, v14, v15, v16, v17, v13))
  {
    v22 = objc_msgSend_categoryAxisLayoutItem(self, v18, v19, v20, v21);
    v27 = objc_msgSend_axisCategoryLabelsLayoutItem(v22, v23, v24, v25, v26);

    v32 = objc_msgSend_p_categoryIndexForSelectionPath_(self, v28, v29, v30, v31, v13);
  }

  else
  {
    if (!objc_msgSend_p_doesSelectionPathReferToAxisSeriesLabel_(self, v18, v19, v20, v21, v13))
    {
      v58.receiver = self;
      v58.super_class = TSCHChartCategoryAxisRenderer;
      [(TSCHChartAxisRenderer *)&v58 addSelection:selectionCopy toCGPath:path useWrapWidth:widthCopy];
      goto LABEL_16;
    }

    v39 = objc_msgSend_categoryAxisLayoutItem(self, v35, v36, v37, v38);
    v27 = objc_msgSend_axisSeriesLabelsLayoutItem(v39, v40, v41, v42, v43);

    v32 = objc_msgSend_p_seriesIndexForSelectionPath_(self, v44, v45, v46, v47, v13);
  }

  v48 = v32;
  v49 = *(MEMORY[0x277CBF398] + 16);
  v63.origin = *MEMORY[0x277CBF398];
  v63.size = v49;
  v50 = MEMORY[0x277CBF3A8];
  v51 = *MEMORY[0x277CBF3A8];
  v61 = 0u;
  v62 = v51;
  v59 = 0u;
  v60 = 0u;
  v52 = objc_msgSend_range(selectionCopy, v33, 0.0, *&v51, v34);
  if (v27)
  {
    objc_msgSend_transformForRenderingLabel_range_outElementSize_outClipRect_(v27, v53, v54, v55, v56, v48, v52, v53, &v62, &v63);
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
  }

  if (!CGRectIsNull(v63) && (*v50 != *&v62 || v50[1] != *(&v62 + 1)))
  {
    TSURectWithSize();
    CGPathAddRectSafe();
  }

LABEL_16:
}

- (BOOL)canEditTextForSelectionPath:(id)path
{
  pathCopy = path;
  if (objc_msgSend_p_doesSelectionPathReferToAxisLabel_(self, v5, v6, v7, v8, pathCopy))
  {
    goto LABEL_2;
  }

  v14 = objc_msgSend_chartInfo(self, v9, v10, v11, v12);
  v19 = objc_msgSend_chartType(v14, v15, v16, v17, v18);
  if (!objc_msgSend_isMultiData(v19, v20, v21, v22, v23))
  {

LABEL_7:
    v30.receiver = self;
    v30.super_class = TSCHChartCategoryAxisRenderer;
    v13 = [(TSCHChartAxisRenderer *)&v30 canEditTextForSelectionPath:pathCopy];
    goto LABEL_8;
  }

  doesSelectionPathReferToAxisSeriesLabel = objc_msgSend_p_doesSelectionPathReferToAxisSeriesLabel_(self, v24, v25, v26, v27, pathCopy);

  if ((doesSelectionPathReferToAxisSeriesLabel & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_2:
  v13 = 1;
LABEL_8:

  return v13;
}

- (id)p_labelGeometryForSelectionPath:(id)path
{
  pathCopy = path;
  v9 = objc_msgSend_axisLayoutItem(self, v5, v6, v7, v8);
  v14 = objc_msgSend_model(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_axisID(v9, v15, v16, v17, v18);
  v24 = objc_msgSend_axisForID_(v14, v20, v21, v22, v23, v19);
  v29 = objc_msgSend_name(pathCopy, v25, v26, v27, v28);
  isEqual = objc_msgSend_isEqual_(v29, v30, v31, v32, v33, @"axisLabel");

  objc_opt_class();
  v39 = objc_msgSend_argumentAtIndex_(pathCopy, v35, v36, v37, v38, 1);

  v40 = TSUCheckedDynamicCast();
  v45 = objc_msgSend_unsignedIntegerValue(v40, v41, v42, v43, v44);

  if (isEqual)
  {
    v45 = objc_msgSend_indexForSelectionPathLabelIndex_(v24, v46, v47, v48, v49, v45);
    v54 = objc_msgSend_categoryAxisLayoutItem(self, v50, v51, v52, v53);
    v59 = objc_msgSend_axisCategoryLabelsLayoutItem(v54, v55, v56, v57, v58);
    v60 = 1052;
  }

  else
  {
    v54 = objc_msgSend_categoryAxisLayoutItem(self, v46, v47, v48, v49);
    v59 = objc_msgSend_axisSeriesLabelsLayoutItem(v54, v61, v62, v63, v64);
    v60 = 1059;
  }

  if (v59 && objc_msgSend_intValueForProperty_defaultValue_(v24, v65, v66, v67, v68, v60, 0))
  {
    v91 = *MEMORY[0x277CBF3A8];
    v71 = *(MEMORY[0x277CBF398] + 16);
    v90[0] = *MEMORY[0x277CBF398];
    v90[1] = v71;
    v88 = 0u;
    v89 = 0u;
    v87 = 0u;
    v72 = objc_msgSend_editingString(self, v69, 0.0, *&v71, v70);
    objc_msgSend_transformForRenderingLabel_usingString_outElementSize_outClipRect_useAngle_(v59, v73, v74, v75, v76, v45, v72, &v91, v90, 1);

    v77 = objc_alloc(MEMORY[0x277D80300]);
    v86[0] = v87;
    v86[1] = v88;
    v86[2] = v89;
    v79 = objc_msgSend_initWithSize_transform_(v77, v78, *&v91, *(&v91 + 1), *&v89, v86);
    v84 = objc_msgSend_infoGeometry(v79, v80, v81, v82, v83);
  }

  else
  {
    v84 = 0;
  }

  return v84;
}

- (CGRect)frameForEditingTextForSelectionPath:(id)path
{
  pathCopy = path;
  v9 = objc_msgSend_type(pathCopy, v5, v6, v7, v8);
  if (!objc_msgSend_isEqual_(v9, v10, v11, v12, v13, @"text"))
  {
    goto LABEL_10;
  }

  v18 = objc_msgSend_name(pathCopy, v14, v15, v16, v17);
  if ((objc_msgSend_isEqual_(v18, v19, v20, v21, v22, @"axisLabel") & 1) == 0)
  {
    v32 = objc_msgSend_name(pathCopy, v23, v24, v25, v26);
    if (objc_msgSend_isEqual_(v32, v33, v34, v35, v36, @"seriesLabel"))
    {
      v41 = objc_msgSend_argumentsCount(pathCopy, v37, v38, v39, v40);

      if (v41 >= 2)
      {
        goto LABEL_7;
      }

LABEL_11:
      v67.receiver = self;
      v67.super_class = TSCHChartCategoryAxisRenderer;
      [(TSCHChartAxisRenderer *)&v67 frameForEditingTextForSelectionPath:pathCopy];
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v58 = v57;
      goto LABEL_12;
    }

LABEL_10:
    goto LABEL_11;
  }

  v27 = objc_msgSend_argumentsCount(pathCopy, v23, v24, v25, v26);

  if (v27 <= 1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v42 = objc_msgSend_p_labelGeometryForSelectionPath_(self, v28, v29, v30, v31, pathCopy);
  objc_msgSend_size(v42, v43, v44, v45, v46);
  TSURectWithSize();
  TSUCenterOfRect();
  if (v42)
  {
    objc_msgSend_transform(v42, v47, v48, v49, v50);
  }

  TSUSubtractPoints();
  TSURectWithOriginAndSize();
  v52 = v63;
  v54 = v64;
  v56 = v65;
  v58 = v66;

LABEL_12:
  v59 = v52;
  v60 = v54;
  v61 = v56;
  v62 = v58;
  result.size.height = v62;
  result.size.width = v61;
  result.origin.y = v60;
  result.origin.x = v59;
  return result;
}

@end