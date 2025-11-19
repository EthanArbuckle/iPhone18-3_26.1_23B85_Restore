@interface TSCHChartBodyLayoutItem
- (BOOL)layoutSpacePointIsInChartBody:(CGPoint)a3;
- (CGPath)newDragAndDropHighlightPathForSelection:(id)a3;
- (CGRect)calcDrawingRect;
- (CGRect)calcOverhangRect;
- (CGRect)p_calcDrawingRectForModel:(id)a3;
- (CGRect)p_calcDrawingRectForReferenceLinesForModel:(id)a3;
- (CGRect)p_exactLabelsDrawingRectForSeries:(id)a3;
- (CGRect)p_exactSummaryLabelsDrawingRectForSeries:(id)a3;
- (TSCHChartBodyLayoutItem)initWithParent:(id)a3;
- (id)p_errorBarSubselectionKnobsForSeries:(id)a3 axisID:(id)a4;
- (id)p_refLineSubselectionKnobsForStyleSwapIndex:(unint64_t)a3;
- (id)p_trendLineEquationSubselectionKnobsForSeries:(id)a3;
- (id)p_trendLineR2SubselectionKnobsForSeries:(id)a3;
- (id)p_trendLineSubselectionKnobsForSeries:(id)a3;
- (id)p_valueLabelSubselectionKnobsForSeries:(id)a3;
- (id)p_valueSummaryLabelSubselectionKnobs;
- (id)renderersWithRep:(id)a3;
- (id)subselectionKnobPositionsForSelection:(id)a3;
- (unint64_t)countOfElementsForModel:(id)a3 series:(id)a4 forGroupsBySeries:(id)a5 outNewElementBounds:(CGRect *)a6 outNewClipRects:(CGRect *)a7 outNewElementPaths:(const CGPath *)a8;
- (void)iterateHitChartElements:(CGPoint)a3 withBlock:(id)a4;
- (void)layoutOutward;
- (void)p_addRendererOfClass:(Class)a3 andRep:(id)a4 toArray:(id)a5;
- (void)p_nudgeBarElementFrame:(CGRect *)a3 usingBarModelCache:(id)a4 unitSpaceValueBegin:(double)a5 unitSpaceValueEnd:(double)a6;
@end

@implementation TSCHChartBodyLayoutItem

- (TSCHChartBodyLayoutItem)initWithParent:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = TSCHChartBodyLayoutItem;
  v3 = [(TSCHChartLayoutItem *)&v36 initWithParent:a3];
  v7 = v3;
  if (v3)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = objc_msgSend_model(v3, v4, 0.0, v5, v6, 0);
    v13 = objc_msgSend_axisList(v8, v9, v10, v11, v12);

    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v15, v16, v17, &v32, v37, 16);
    if (v19)
    {
      v23 = *v33;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v13);
          }

          v25 = *(*(&v32 + 1) + 8 * i);
          if ((objc_msgSend_isCategory(v25, v18, v20, v21, v22) & 1) == 0)
          {
            v26 = objc_msgSend_axisID(v25, v18, v20, v21, v22);
            v7->_vertical = objc_msgSend_type(v26, v27, v28, v29, v30) == 2;

            goto LABEL_12;
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v18, v20, v21, v22, &v32, v37, 16);
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v7;
}

- (CGRect)calcDrawingRect
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x5012000000;
  v49 = sub_27627B0C4;
  v50 = nullsub_7;
  v51 = &unk_27657B92B;
  v3 = *(MEMORY[0x277CBF398] + 16);
  v52 = *MEMORY[0x277CBF398];
  v53 = v3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x5012000000;
  v41 = sub_27627B0C4;
  v42 = nullsub_7;
  v43 = &unk_27657B92B;
  v4 = *(MEMORY[0x277CBF398] + 16);
  v44 = *MEMORY[0x277CBF398];
  v45 = v4;
  v5 = objc_msgSend_model(self, a2, *&v44, *&v4, *&v3);
  if (objc_msgSend_isMultiData(v5, v6, v7, v8, v9))
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_27627B0D4;
    v37[3] = &unk_27A6B7248;
    v37[4] = self;
    v37[5] = &v46;
    v37[6] = &v38;
    objc_msgSend_enumerateMultiDataModelsUsingBlock_(v5, v10, COERCE_DOUBLE(3221225472), v12, v13, v37);
    v14 = v39[6];
    v15 = v39[7];
    v16 = v39[8];
    v17 = v39[9];
  }

  else
  {
    objc_msgSend_p_calcDrawingRectForModel_(self, v10, v11, v12, v13, v5);
    v18 = v47;
    *(v47 + 6) = v19;
    v18[7] = v20;
    v18[8] = v21;
    *(v18 + 9) = v22;
    objc_msgSend_p_calcDrawingRectForReferenceLinesForModel_(self, v23, v19, v20, v21, v5);
    v14 = v24;
    v15 = v25;
    v16 = v26;
    v17 = v27;
    v28 = v39;
    v39[6] = v24;
    v28[7] = v25;
    v28[8] = v26;
    v28[9] = v27;
  }

  v54 = CGRectUnion(*(v47 + 6), *&v14);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  *(v47 + 6) = v54;

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v46, 8);
  v33 = x;
  v34 = y;
  v35 = width;
  v36 = height;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (CGRect)p_calcDrawingRectForReferenceLinesForModel:(id)a3
{
  v4 = a3;
  objc_msgSend_rootedLayoutRect(self, v5, v6, v7, v8);
  v10 = v9;
  v12 = v11;
  width = v13;
  height = v15;
  if (objc_msgSend_numberOfSeries(v4, v17, v9, v11, v13))
  {
    v22 = objc_msgSend_seriesAtIndex_(v4, v18, v19, v20, v21, 0);
    v27 = objc_msgSend_seriesType(v22, v23, v24, v25, v26);
  }

  else
  {
    v22 = objc_msgSend_chartInfo(self, v18, v19, v20, v21);
    v32 = objc_msgSend_chartType(v22, v28, v29, v30, v31);
    v27 = objc_msgSend_defaultSeriesType_(v32, v33, v34, v35, v36, 0);
  }

  v41 = objc_msgSend_elementBuilder(v27, v37, v38, v39, v40);
  v42 = *(MEMORY[0x277CBF398] + 16);
  v53.origin = *MEMORY[0x277CBF398];
  v53.size = v42;
  if (objc_msgSend_countOfReferenceLinesForAxisID_model_forBodyLayout_outClipRect_outNewClipRects_outNewLineDescriptors_outReferenceLines_includeOutsideChartBodyBounds_outOutsideChartBodyBounds_(v41, v43, v53.origin.x, v42.width, v44, 0, v4, self, &v53, 0, 0, 0, 0, 0) && !CGRectIsNull(v53))
  {
    v54.origin.x = v10;
    v54.origin.y = v12;
    v54.size.width = width;
    v54.size.height = height;
    v55 = CGRectUnion(v54, v53);
    width = v55.size.width;
    height = v55.size.height;
  }

  TSUSubtractPoints();
  v46 = v45;
  v48 = v47;

  v49 = v46;
  v50 = v48;
  v51 = width;
  v52 = height;
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v50;
  result.origin.x = v49;
  return result;
}

- (CGRect)p_exactLabelsDrawingRectForSeries:(id)a3
{
  v4 = a3;
  objc_msgSend_rootedLayoutRect(self, v5, v6, v7, v8);
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v42 = 0;
  v43 = 0;
  objc_opt_class();
  v17 = objc_msgSend_seriesType(v4, v13, v14, v15, v16);
  v22 = objc_msgSend_elementBuilder(v17, v18, v19, v20, v21);
  v23 = TSUDynamicCast();

  v28 = objc_msgSend_countOfLabelsForSeries_forGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v23, v24, v25, v26, v27, v4, 0, self, &v42, 0, &v43, 0);
  if (v28)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v44 = *(v43 + v29);
      v32 = *(v42 + v30 + 16);
      v31 = *(v42 + v30 + 32);
      *&v41.a = *(v42 + v30);
      *&v41.c = v32;
      *&v41.tx = v31;
      CGRectApplyAffineTransform(v44, &v41);
      TSUSubtractPoints();
      TSURectWithOriginAndSize();
      v48.origin.x = v33;
      v48.origin.y = v34;
      v48.size.width = v35;
      v48.size.height = v36;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v46 = CGRectUnion(v45, v48);
      x = v46.origin.x;
      y = v46.origin.y;
      width = v46.size.width;
      height = v46.size.height;
      v30 += 48;
      v29 += 32;
      --v28;
    }

    while (v28);
  }

  free(v42);
  free(v43);

  v37 = x;
  v38 = y;
  v39 = width;
  v40 = height;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (CGRect)p_exactSummaryLabelsDrawingRectForSeries:(id)a3
{
  v4 = a3;
  objc_msgSend_rootedLayoutRect(self, v5, v6, v7, v8);
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v42 = 0;
  v43 = 0;
  objc_opt_class();
  v17 = objc_msgSend_seriesType(v4, v13, v14, v15, v16);
  v22 = objc_msgSend_elementBuilder(v17, v18, v19, v20, v21);
  v23 = TSUDynamicCast();

  v28 = objc_msgSend_countOfSummaryLabelsForGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v23, v24, v25, v26, v27, 0, self, &v42, 0, &v43, 0);
  if (v28)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v44 = *(v43 + v29);
      v32 = *(v42 + v30 + 16);
      v31 = *(v42 + v30 + 32);
      *&v41.a = *(v42 + v30);
      *&v41.c = v32;
      *&v41.tx = v31;
      CGRectApplyAffineTransform(v44, &v41);
      TSUSubtractPoints();
      TSURectWithOriginAndSize();
      v48.origin.x = v33;
      v48.origin.y = v34;
      v48.size.width = v35;
      v48.size.height = v36;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v46 = CGRectUnion(v45, v48);
      x = v46.origin.x;
      y = v46.origin.y;
      width = v46.size.width;
      height = v46.size.height;
      v30 += 48;
      v29 += 32;
      --v28;
    }

    while (v28);
  }

  free(v42);
  free(v43);

  v37 = x;
  v38 = y;
  v39 = width;
  v40 = height;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (CGRect)p_calcDrawingRectForModel:(id)a3
{
  v170 = *MEMORY[0x277D85DE8];
  v150 = a3;
  objc_msgSend_rootedLayoutRect(self, v4, v5, v6, v7);
  v153 = v9;
  v154 = v8;
  v151 = v11;
  v152 = v10;
  v167 = 0;
  v14 = objc_msgSend_countOfElementsForModel_series_forGroupsBySeries_outNewElementBounds_outNewClipRects_outNewElementPaths_(self, v12, v8, v9, v10, v150, 0, 0, 0, &v167, 0);
  y = v153;
  x = v154;
  height = v151;
  width = v152;
  if (v14)
  {
    v21 = 0;
    height = v151;
    width = v152;
    y = v153;
    x = v154;
    do
    {
      v22 = *(v167 + v21);
      v23 = *(v167 + v21 + 8);
      v24 = *(v167 + v21 + 16);
      v25 = *(v167 + v21 + 24);
      v171.origin.x = v22;
      v171.origin.y = v23;
      v171.size.width = v24;
      v171.size.height = v25;
      if (!CGRectIsNull(v171))
      {
        v172.origin.x = x;
        v172.origin.y = y;
        v172.size.width = width;
        v172.size.height = height;
        v187.origin.x = v22;
        v187.origin.y = v23;
        v187.size.width = v24;
        v187.size.height = v25;
        *(&v15 - 1) = CGRectUnion(v172, v187);
        x = v26;
        y = v15;
        width = v16;
        height = v27;
      }

      v21 += 32;
      --v14;
    }

    while (v14);
  }

  if (v167)
  {
    free(v167);
  }

  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v28 = objc_msgSend_seriesList(v150, v13, 0.0, v15, v16);
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, v30, v31, v32, &v163, v169, 16);
  if (v34)
  {
    v38 = *v164;
    v39 = MEMORY[0x277CBF398];
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v164 != v38)
        {
          objc_enumerationMutation(v28);
        }

        v41 = *(*(&v163 + 1) + 8 * i);
        v42 = objc_msgSend_seriesType(v41, v33, v35, v36, v37);
        v47 = objc_msgSend_elementBuilder(v42, v43, v44, v45, v46);

        v52 = objc_msgSend_errorBarData(v41, v48, v49, v50, v51);
        LOBYTE(v42) = v52 == 0;

        if ((v42 & 1) == 0)
        {
          v57 = *(v39 + 16);
          v160.origin = *v39;
          v160.size = v57;
          objc_msgSend_countOfErrorBarsInSeries_forGroups_forAxisID_forBodyLayout_outClipRect_outNewErrorBarDescriptors_(v47, v53, v160.origin.x, v57.width, v56, v41, 0, 0, self, &v160, 0);
          if (!CGRectIsNull(v160))
          {
            v173.origin.y = v153;
            v173.origin.x = v154;
            v173.size.height = v151;
            v173.size.width = v152;
            v160 = CGRectIntersection(v173, v160);
            if (!CGRectIsNull(v160))
            {
              v174.origin.x = x;
              v174.origin.y = y;
              v174.size.width = width;
              v174.size.height = height;
              *&v54 = CGRectUnion(v174, v160);
              x = v54;
              y = v55;
              width = v56;
              height = v58;
            }
          }
        }

        v59 = objc_msgSend_trendLineData(v41, v53, v54, v55, v56);
        v60 = v59 == 0;

        if (!v60)
        {
          v63 = *(v39 + 16);
          v162.origin = *v39;
          v162.size = v63;
          objc_msgSend_trendlineElementForSeries_forBodyLayout_outElementBounds_outElementClipRect_outElementPath_(v47, v61, v162.origin.x, v63.width, v62, v41, self, 0, &v162, 0);
          if (!CGRectIsNull(v162))
          {
            v175.origin.y = v153;
            v175.origin.x = v154;
            v175.size.height = v151;
            v175.size.width = v152;
            v162 = CGRectIntersection(v175, v162);
            if (!CGRectIsNull(v162))
            {
              v176.origin.x = x;
              v176.origin.y = y;
              v176.size.width = width;
              v176.size.height = height;
              v177 = CGRectUnion(v176, v162);
              x = v177.origin.x;
              y = v177.origin.y;
              width = v177.size.width;
              height = v177.size.height;
            }
          }

          objc_opt_class();
          v68 = objc_msgSend_parent(self, v64, v65, v66, v67);
          v69 = TSUDynamicCast();

          v70 = *(v39 + 16);
          v161.origin = *v39;
          v161.size = v70;
          objc_msgSend_transformForRenderingTrendlineTextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outNewString_(v47, v71, v161.origin.x, v70.width, v72, v41, v69, 0, &v161, 0, 0);
          if (!CGRectIsNull(v161))
          {
            v178.origin.y = v153;
            v178.origin.x = v154;
            v178.size.height = v151;
            v178.size.width = v152;
            v161 = CGRectIntersection(v178, v161);
            if (!CGRectIsNull(v161))
            {
              v179.origin.x = x;
              v179.origin.y = y;
              v179.size.width = width;
              v179.size.height = height;
              *(&v74 - 2) = CGRectUnion(v179, v161);
              x = v75;
              y = v76;
              width = v74;
              height = v77;
            }
          }

          v78 = *(v39 + 16);
          v159.origin = *v39;
          v159.size = v78;
          objc_msgSend_transformForRenderingR2TextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outString_(v47, v73, v159.origin.x, v78.width, v74, v41, v69, 0, &v159, 0, 0);
          if (!CGRectIsNull(v159))
          {
            v180.origin.y = v153;
            v180.origin.x = v154;
            v180.size.height = v151;
            v180.size.width = v152;
            v159 = CGRectIntersection(v180, v159);
            if (!CGRectIsNull(v159))
            {
              v181.origin.x = x;
              v181.origin.y = y;
              v181.size.width = width;
              v181.size.height = height;
              v182 = CGRectUnion(v181, v159);
              x = v182.origin.x;
              y = v182.origin.y;
              width = v182.size.width;
              height = v182.size.height;
            }
          }
        }
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v33, v35, v36, v37, &v163, v169, 16);
    }

    while (v34);
  }

  TSUSubtractPoints();
  TSURectWithOriginAndSize();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v88 = objc_msgSend_seriesList(v150, v87, 0.0, v81, v83);
  v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, v90, v91, v92, &v155, v168, 16);
  if (v94)
  {
    v98 = *v156;
    do
    {
      for (j = 0; j != v94; ++j)
      {
        if (*v156 != v98)
        {
          objc_enumerationMutation(v88);
        }

        v100 = *(*(&v155 + 1) + 8 * j);
        if (objc_msgSend_intValueForProperty_defaultValue_(v100, v93, v95, v96, v97, 1181, 0))
        {
          v105 = 1;
        }

        else
        {
          v106 = objc_msgSend_seriesType(v100, v101, v102, v103, v104);
          v111 = objc_msgSend_supportsValueLabelsSeriesName(v106, v107, v108, v109, v110);

          if (v111)
          {
            v105 = objc_msgSend_intValueForProperty_defaultValue_(v100, v101, v102, v103, v104, 1178, 0) != 0;
          }

          else
          {
            v105 = 0;
          }
        }

        if (objc_msgSend_numberOfValues(v100, v101, v102, v103, v104))
        {
          v112 = v105;
        }

        else
        {
          v112 = 0;
        }

        if (v112)
        {
          objc_msgSend_p_exactLabelsDrawingRectForSeries_(self, v93, v95, v96, v97, v100);
          v188.origin.x = v113;
          v188.origin.y = v114;
          v188.size.width = v115;
          v188.size.height = v116;
          v183.origin.x = v80;
          v183.origin.y = v82;
          v183.size.width = v84;
          v183.size.height = v86;
          *&v95 = CGRectUnion(v183, v188);
          v80 = v95;
          v82 = v96;
          v84 = v97;
          v86 = v117;
        }
      }

      v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v93, v95, v96, v97, &v155, v168, 16);
    }

    while (v94);
  }

  v122 = objc_msgSend_chart(v150, v118, v119, v120, v121);
  v127 = objc_msgSend_intValueForProperty_defaultValue_(v122, v123, v124, v125, v126, 1122, 0) == 0;

  if (!v127)
  {
    v132 = objc_msgSend_seriesList(v150, v128, v129, v130, v131);
    v137 = objc_msgSend_lastObject(v132, v133, v134, v135, v136);
    objc_msgSend_p_exactSummaryLabelsDrawingRectForSeries_(self, v138, v139, v140, v141, v137);
    v189.origin.x = v142;
    v189.origin.y = v143;
    v189.size.width = v144;
    v189.size.height = v145;
    v184.origin.x = v80;
    v184.origin.y = v82;
    v184.size.width = v84;
    v184.size.height = v86;
    v185 = CGRectUnion(v184, v189);
    v80 = v185.origin.x;
    v82 = v185.origin.y;
    v84 = v185.size.width;
    v86 = v185.size.height;
  }

  v146 = v80;
  v147 = v82;
  v148 = v84;
  v149 = v86;
  result.size.height = v149;
  result.size.width = v148;
  result.origin.y = v147;
  result.origin.x = v146;
  return result;
}

- (CGRect)calcOverhangRect
{
  v121 = *MEMORY[0x277D85DE8];
  objc_msgSend_drawingRect(self, a2, v2, v3, v4);
  v123 = CGRectStandardize(v122);
  x = v123.origin.x;
  y = v123.origin.y;
  width = v123.size.width;
  height = v123.size.height;
  v11 = objc_msgSend_chartInfo(self, v10, v123.origin.x, v123.origin.y, v123.size.width);
  v16 = objc_msgSend_chartType(v11, v12, v13, v14, v15);

  v21 = objc_msgSend_bubbleChart(TSCHChartType, v17, v18, v19, v20);
  if (objc_msgSend_isEqual_(v16, v22, v23, v24, v25, v21))
  {
  }

  else
  {
    v30 = objc_msgSend_multiDataBubbleChart(TSCHChartType, v26, v27, v28, v29);
    isEqual = objc_msgSend_isEqual_(v16, v31, v32, v33, v34, v30);

    if (!isEqual)
    {
      goto LABEL_31;
    }
  }

  objc_opt_class();
  v40 = objc_msgSend_parent(self, v36, v37, v38, v39);
  v41 = TSUDynamicCast();

  if (v41)
  {
    objc_msgSend_i_currentBufferAreaUnitRect(v41, v42, v43, v44, v45);
  }

  else
  {
    v46 = *(MEMORY[0x277CBF3A0] + 16);
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v47 = objc_msgSend_chartInfo(self, v42, 0.0, v46, v45);
  v52 = objc_msgSend_model(v47, v48, v49, v50, v51);
  v57 = objc_msgSend_seriesList(v52, v53, v54, v55, v56);

  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, v59, v60, v61, &v116, v120, 16);
  if (v63)
  {
    v67 = *v117;
    v68 = 0.0;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v117 != v67)
        {
          objc_enumerationMutation(v57);
        }

        LODWORD(v64) = 1.0;
        objc_msgSend_floatValueForProperty_defaultValue_(*(*(&v116 + 1) + 8 * i), v62, v64, v65, v66, 1130);
        v64 = v70;
        if (v68 < v64)
        {
          v68 = v64;
        }
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v62, v64, v65, v66, &v116, v120, 16);
    }

    while (v63);
  }

  else
  {
    v68 = 0.0;
  }

  objc_msgSend_layoutSize(self, v71, v72, v73, v74);
  v76 = v75;
  v78 = v77;
  TSURectWithOriginAndSize();
  v80 = v79;
  v82 = v81;
  width = v83;
  v85 = v84;
  TSUAddSizes();
  TSURectWithOriginAndSize();
  v113 = v124.size.height;
  v114 = v124.size.width;
  v111 = v80;
  v129.origin.x = v80;
  v129.origin.y = v82;
  v129.size.width = width;
  height = v85;
  v129.size.height = v85;
  if (CGRectContainsRect(v124, v129))
  {
    x = v111;
    y = v82;
    goto LABEL_30;
  }

  TSUAddSizes();
  TSURectWithOriginAndSize();
  v130.origin.x = v111;
  v130.origin.y = v82;
  v130.size.width = width;
  v130.size.height = v85;
  v126 = CGRectUnion(v125, v130);
  v86 = 0;
  v87 = v114;
  v112 = 0.27 * v68 + 1.0;
  v88 = v76;
  v89 = v78;
  v90 = v113;
  while (vabdd_f64(v87, v126.size.width) > 0.01)
  {
    if (v86 > 0x13)
    {
      goto LABEL_29;
    }

LABEL_28:
    v88 = v88 + (v87 - v126.size.width) / v112;
    v89 = v89 + (v90 - v126.size.height) / v112;
    TSUAddSizes();
    TSURectWithOriginAndSize();
    r2 = v92;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    TSURectWithOriginAndSize();
    v131.origin.x = v99;
    v131.origin.y = v100;
    v131.size.width = v101;
    v131.size.height = v102;
    v127.origin.x = r2;
    v127.origin.y = v94;
    v127.size.width = v96;
    v127.size.height = v98;
    v126 = CGRectUnion(v127, v131);
    ++v86;
    v90 = v113;
    v87 = v114;
  }

  if (vabdd_f64(v90, v126.size.height) > 0.01 && v86 < 0x14)
  {
    goto LABEL_28;
  }

LABEL_29:
  TSURectWithOriginAndSize();
  x = v103;
  y = v104;
  width = v105;
  height = v106;
LABEL_30:

LABEL_31:
  v107 = x;
  v108 = y;
  v109 = width;
  v110 = height;
  result.size.height = v110;
  result.size.width = v109;
  result.origin.y = v108;
  result.origin.x = v107;
  return result;
}

- (void)layoutOutward
{
  v2.receiver = self;
  v2.super_class = TSCHChartBodyLayoutItem;
  [(TSCHChartLayoutItem *)&v2 layoutOutward];
}

- (void)p_addRendererOfClass:(Class)a3 andRep:(id)a4 toArray:(id)a5
{
  v19 = a4;
  v8 = a5;
  if (a3)
  {
    v9 = [a3 alloc];
    v14 = objc_msgSend_initWithChartRep_layoutItem_(v9, v10, v11, v12, v13, v19, self);
    objc_msgSend_addObject_(v8, v15, v16, v17, v18, v14);
  }
}

- (id)renderersWithRep:(id)a3
{
  v151 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_model(self, v5, v6, v7, v8);
  v130 = objc_msgSend_seriesList(v9, v10, v11, v12, v13);

  v135 = objc_msgSend_set(MEMORY[0x277CBEB58], v14, v15, v16, v17);
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  obj = v130;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, v19, v20, v21, &v144, v150, 16);
  if (v23)
  {
    v27 = *v145;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v145 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = objc_msgSend_seriesType(*(*(&v144 + 1) + 8 * i), v22, v24, v25, v26, v130);
        objc_msgSend_addObject_(v135, v30, v31, v32, v33, v29);
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, v24, v25, v26, &v144, v150, 16);
    }

    while (v23);
  }

  v131 = objc_msgSend_array(MEMORY[0x277CBEB18], v34, v35, v36, v37);
  v42 = objc_msgSend_mixedAreaSeries(TSCHChartSeriesType, v38, v39, v40, v41);
  v47 = objc_msgSend_member_(v135, v43, v44, v45, v46, v42);

  if (v47)
  {
    objc_msgSend_addObject_(v131, v48, v49, v50, v51, v47);
    objc_msgSend_removeObject_(v135, v52, v53, v54, v55, v47);
  }

  v56 = objc_msgSend_mixedColumnSeries(TSCHChartSeriesType, v48, v49, v50, v51, v130);
  v61 = objc_msgSend_member_(v135, v57, v58, v59, v60, v56);

  v66 = v61;
  if (v61)
  {
    objc_msgSend_addObject_(v131, v62, v63, v64, v65, v61);
    objc_msgSend_removeObject_(v135, v67, v68, v69, v70, v61);
  }

  v71 = objc_msgSend_mixedLineSeries(TSCHChartSeriesType, v62, v63, v64, v65);
  v76 = objc_msgSend_member_(v135, v72, v73, v74, v75, v71);

  v81 = v76;
  if (v76)
  {
    objc_msgSend_addObject_(v131, v77, v78, v79, v80, v76);
    objc_msgSend_removeObject_(v135, v82, v83, v84, v85, v76);
  }

  v86 = objc_msgSend_allObjects(v135, v77, v78, v79, v80);
  objc_msgSend_addObjectsFromArray_(v131, v87, v88, v89, v90, v86);

  v95 = objc_msgSend_array(MEMORY[0x277CBEB18], v91, v92, v93, v94);
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v132 = v131;
  v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v96, v97, v98, v99, &v140, v149, 16);
  if (v100)
  {
    v133 = *v141;
    do
    {
      v101 = 0;
      v102 = v81;
      do
      {
        if (*v141 != v133)
        {
          objc_enumerationMutation(v132);
        }

        v81 = *(*(&v140 + 1) + 8 * v101);

        v107 = objc_msgSend_seriesRendererClasses(v81, v103, v104, v105, v106);
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v108 = v107;
        v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v109, v110, v111, v112, &v136, v148, 16);
        if (v114)
        {
          v118 = *v137;
          do
          {
            for (j = 0; j != v114; ++j)
            {
              if (*v137 != v118)
              {
                objc_enumerationMutation(v108);
              }

              v120 = objc_msgSend_pointerValue(*(*(&v136 + 1) + 8 * j), v113, v115, v116, v117);
              objc_msgSend_p_addRendererOfClass_andRep_toArray_(self, v121, v122, v123, v124, v120, v4, v95);
            }

            v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v113, v115, v116, v117, &v136, v148, 16);
          }

          while (v114);
        }

        ++v101;
        v102 = v81;
      }

      while (v101 != v100);
      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v125, v126, v127, v128, &v140, v149, 16);
    }

    while (v100);
  }

  return v95;
}

- (void)p_nudgeBarElementFrame:(CGRect *)a3 usingBarModelCache:(id)a4 unitSpaceValueBegin:(double)a5 unitSpaceValueEnd:(double)a6
{
  v60 = a4;
  objc_msgSend_rootedLayoutRect(self, v10, v11, v12, v13);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  objc_msgSend_unitSpaceIntercept(v60, v22, v14, v16, v18);
  v27 = v24;
  v28 = v24 < 1.0 && v24 > 0.0;
  v29 = objc_msgSend_valueAxis(v60, v23, 1.0, v25, v26);
  objc_msgSend_modelMin(v29, v30, v31, v32, v33);
  objc_msgSend_unitSpaceValueForDataSpaceValue_(v29, v34, v35, v36, v37);
  v39 = v38;
  objc_msgSend_modelMax(v29, v40, v38, v41, v42);
  objc_msgSend_unitSpaceValueForDataSpaceValue_(v29, v43, v44, v45, v46);
  if (self->_vertical)
  {
    if (v28 && (v27 == a5 || vabdd_f64(v27, a5) < fabs(a5 * 1.0e-10)))
    {
      height = a3->size.height;
      if (v27 > a6)
      {
        if (height <= 0.5)
        {
          goto LABEL_22;
        }

        a3->origin.y = a3->origin.y + 0.5;
      }

      else if (height <= 0.5)
      {
LABEL_22:
        if (fabs(height) <= 0.5)
        {
          v50 = *(MEMORY[0x277CBF398] + 16);
          a3->origin = *MEMORY[0x277CBF398];
          a3->size = v50;
        }

        goto LABEL_24;
      }

      a3->size.height = height + -0.5;
    }

LABEL_24:
    if (v27 > a6 && (v39 == a6 || (vabdd_f64(v39, a6) >= fabs(a6 * 1.0e-10) ? (v51 = v39 <= a6) : (v51 = 0), !v51)) || v27 <= a6 && (v47 == a6 || (vabdd_f64(v47, a6) >= fabs(a6 * 1.0e-10) ? (v52 = v47 < a6) : (v52 = 1), v52)))
    {
      if (CGRectGetMinY(*a3) - v17 < 0.5)
      {
        v53 = v17 + 0.5 - a3->origin.y;
        a3->origin.y = v17 + 0.5;
        a3->size.height = a3->size.height - v53;
      }
    }

    if ((v27 == a5 || vabdd_f64(v27, a5) < fabs(a5 * 1.0e-10)) && v17 + v21 - CGRectGetMaxY(*a3) < 0.5)
    {
      a3->size.height = v17 + v21 + -0.5 - a3->origin.y;
    }

    v54 = a3->size.height;
    goto LABEL_69;
  }

  if (v28 && (v27 == a5 || vabdd_f64(v27, a5) < fabs(a5 * 1.0e-10)))
  {
    width = a3->size.width;
    if (v27 > a6)
    {
      if (width > 0.5)
      {
        goto LABEL_21;
      }

      width = a3->size.height;
    }

    else if (width > 0.5)
    {
      a3->origin.x = a3->origin.x + 0.5;
LABEL_21:
      a3->size.width = width + -0.5;
      goto LABEL_48;
    }

    if (fabs(width) <= 0.5)
    {
      v55 = *(MEMORY[0x277CBF398] + 16);
      a3->origin = *MEMORY[0x277CBF398];
      a3->size = v55;
    }
  }

LABEL_48:
  if (v27 > a6 && (v39 == a6 || (vabdd_f64(v39, a6) >= fabs(a6 * 1.0e-10) ? (v56 = v39 <= a6) : (v56 = 0), !v56)) || v27 <= a6 && (v47 == a6 || (vabdd_f64(v47, a6) >= fabs(a6 * 1.0e-10) ? (v57 = v47 < a6) : (v57 = 1), v57)))
  {
    if (v15 + v19 - CGRectGetMaxX(*a3) < 0.5)
    {
      a3->size.width = v15 + v19 + -0.5 - a3->origin.x;
    }
  }

  if ((v27 == a5 || vabdd_f64(v27, a5) < fabs(a5 * 1.0e-10)) && CGRectGetMinX(*a3) - v15 < 0.5)
  {
    v58 = v15 + 0.5 - a3->origin.x;
    a3->origin.x = v15 + 0.5;
    a3->size.width = a3->size.width - v58;
  }

  v54 = a3->size.width;
LABEL_69:
  if (fabs(v54) < 0.5)
  {
    v59 = *(MEMORY[0x277CBF398] + 16);
    a3->origin = *MEMORY[0x277CBF398];
    a3->size = v59;
  }
}

- (unint64_t)countOfElementsForModel:(id)a3 series:(id)a4 forGroupsBySeries:(id)a5 outNewElementBounds:(CGRect *)a6 outNewClipRects:(CGRect *)a7 outNewElementPaths:(const CGPath *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v21 = objc_msgSend_numberOfSeries(v14, v17, v18, v19, v20);
  if (v15)
  {
    v74 = v15;
  }

  else
  {
    v74 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v22, v23, v24, v25, 0, v21);
  }

  v104 = 0;
  v105 = &v104;
  v106 = 0x4812000000;
  v107 = sub_27627D3F4;
  v108 = sub_27627D418;
  v109 = &unk_27657B92B;
  v111 = 0;
  v112 = 0;
  v110 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x4812000000;
  v98 = sub_27627D430;
  v99 = sub_27627D454;
  v100 = &unk_27657B92B;
  v102 = 0;
  v103 = 0;
  v101 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x4812000000;
  v89 = sub_27627D430;
  v90 = sub_27627D454;
  v91 = &unk_27657B92B;
  v93 = 0;
  v94 = 0;
  __p = 0;
  v26 = objc_msgSend_count(v16, v22, COERCE_DOUBLE(0x4812000000), v24, v25);
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = sub_27627D46C;
  v75[3] = &unk_27A6B7270;
  v27 = v14;
  v76 = v27;
  v28 = v16;
  v77 = v28;
  v78 = self;
  v83 = a6;
  v84 = a7;
  v85 = a8;
  v79 = &v104;
  v80 = &v95;
  v81 = &v86;
  v82 = v26;
  objc_msgSend_tsu_enumerateIndexesAndPositionsUsingBlock_(v74, v29, v30, v31, v32, v75);
  v37 = v96[7] - v96[6];
  if ((v105[7] - v105[6]) >> 3 != v37 >> 5 || v37 != v87[7] - v87[6])
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "[TSCHChartBodyLayoutItem countOfElementsForModel:series:forGroupsBySeries:outNewElementBounds:outNewClipRects:outNewElementPaths:]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBodyLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 646, 0, "Uneven arrays. This will end badly.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
  }

  if (a8)
  {
    v54 = v105[6];
    v53 = v105[7];
    *a8 = malloc_type_calloc(8uLL, (v53 - v54) >> 3, 0x6004044C4A2DFuLL);
    if (v53 != v54)
    {
      v55 = 0;
      if (((v53 - v54) >> 3) <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = (v53 - v54) >> 3;
      }

      do
      {
        (*a8)[v55] = *(v105[6] + 8 * v55);
        ++v55;
      }

      while (v56 != v55);
    }
  }

  if (a6)
  {
    v58 = v96[6];
    v57 = v96[7];
    *a6 = malloc_type_calloc(0x20uLL, (v57 - v58) >> 5, 0x1000040E0EAB150uLL);
    if (v57 != v58)
    {
      v59 = 0;
      if (((v57 - v58) >> 5) <= 1)
      {
        v60 = 1;
      }

      else
      {
        v60 = (v57 - v58) >> 5;
      }

      do
      {
        v61 = (v96[6] + v59 * 32);
        v62 = &(*a6)[v59];
        v63 = v61[1];
        v62->origin = *v61;
        v62->size = v63;
        ++v59;
        --v60;
      }

      while (v60);
    }
  }

  if (a7)
  {
    v65 = v87[6];
    v64 = v87[7];
    *a7 = malloc_type_calloc(0x20uLL, (v64 - v65) >> 5, 0x1000040E0EAB150uLL);
    if (v64 != v65)
    {
      v66 = 0;
      if (((v64 - v65) >> 5) <= 1)
      {
        v67 = 1;
      }

      else
      {
        v67 = (v64 - v65) >> 5;
      }

      do
      {
        v68 = (v87[6] + v66 * 32);
        v69 = &(*a7)[v66];
        v70 = v68[1];
        v69->origin = *v68;
        v69->size = v70;
        ++v66;
        --v67;
      }

      while (v67);
    }
  }

  v72 = v105[6];
  v71 = v105[7];

  _Block_object_dispose(&v86, 8);
  if (__p)
  {
    v93 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v95, 8);
  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  _Block_object_dispose(&v104, 8);
  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  return (v71 - v72) >> 3;
}

- (void)iterateHitChartElements:(CGPoint)a3 withBlock:(id)a4
{
  v857 = *MEMORY[0x277D85DE8];
  v766 = a4;
  if (v766)
  {
    v839 = 0;
    v788 = self;
    v9 = objc_msgSend_model(self, v5, v6, v7, v8);
    v14 = objc_msgSend_seriesList(v9, v10, v11, v12, v13);

    v749 = v14;
    v751 = objc_msgSend_sortedArrayUsingComparator_(v14, v15, v16, v17, v18, &unk_28851DDE0);
    v23 = objc_msgSend_chartInfo(v788, v19, v20, v21, v22);
    v28 = objc_msgSend_chartType(v23, v24, v25, v26, v27);
    v750 = objc_msgSend_valueAxisIDs(v28, v29, v30, v31, v32);

    v37 = objc_msgSend_firstObject(v751, v33, v34, v35, v36);
    v42 = objc_msgSend_seriesType(v37, v38, v39, v40, v41);
    v765 = objc_msgSend_elementBuilder(v42, v43, v44, v45, v46);

    v838 = 0u;
    v836 = 0u;
    v837 = 0u;
    v835 = 0u;
    v50 = objc_msgSend_model(v788, v47, 0.0, v48, v49);
    v55 = objc_msgSend_axisList(v50, v51, v52, v53, v54);

    obj = v55;
    v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, v57, v58, v59, &v835, v856, 16);
    if (v60)
    {
      v760 = *v836;
      v779 = vdupq_n_s64(0x7FF0000000000000uLL);
      do
      {
        v755 = v60;
        for (i = 0; i != v755; i = i + 1)
        {
          if (*v836 != v760)
          {
            objc_enumerationMutation(obj);
          }

          v64 = *(*(&v835 + 1) + 8 * i);
          v65 = *(MEMORY[0x277CBF398] + 16);
          recta.origin = *MEMORY[0x277CBF398];
          recta.size = v65;
          v819.a = 0.0;
          v66 = objc_msgSend_axisID(v64, v61, recta.origin.x, v65.width, v62);
          v71 = objc_msgSend_model(v788, v67, v68, v69, v70);
          v834 = 0;
          LOBYTE(v746) = 0;
          v76 = objc_msgSend_countOfReferenceLinesForAxisID_model_forBodyLayout_outClipRect_outNewClipRects_outNewLineDescriptors_outReferenceLines_includeOutsideChartBodyBounds_outOutsideChartBodyBounds_(v765, v72, v73, v74, v75, v66, v71, v788, &recta, 0, &v819, &v834, v746, 0);
          v77 = v834;

          if (v76 && !CGRectIsNull(recta))
          {
            for (j = 0; j != v76; ++j)
            {
              v79 = *&v819.a + 32 * j;
              v80 = *(v79 + 16);
              v81 = vmovn_s32(vuzp1q_s32(vceqq_f64(vabsq_f64(*v79), v779), vceqq_f64(vabsq_f64(v80), v779)));
              v82 = vuzp1_s8(v81, v81);
              v82.i32[1] = vuzp1_s8(v82, vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*v79, *v79), vceqq_f64(v80, v80))))).i32[1];
              if ((vmaxv_u8(vcltz_s8(vshl_n_s8(v82, 7uLL))) & 1) == 0)
              {
                Mutable = CGPathCreateMutable();
                CGPathMoveToPointSafe();
                CGPathAddLineToPointSafe();
                v88 = objc_msgSend_objectAtIndexedSubscript_(v77, v84, v85, v86, v87, j);
                v93 = objc_msgSend_valueForProperty_(v88, v89, v90, v91, v92, 1225);
                v98 = objc_msgSend_newStrokedPathFromPath_stroke_cap_(TSCHRenderUtilities, v94, v95, v96, v97, Mutable, v93, 0);

                LODWORD(v93) = CGPathContainsPointSafe();
                CGPathRelease(v98);
                CGPathRelease(Mutable);
                if (v93)
                {
                  v103 = objc_msgSend_styleSwapIndex(v88, v99, v100, v101, v102);
                  v108 = objc_msgSend_referenceLineType(TSCHSelectionPathType, v104, v105, v106, v107);
                  v113 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v109, v110, v111, v112, v103);
                  v855 = v113;
                  v118 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v114, v115, v116, v117, &v855, 1);
                  v123 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v119, v120, v121, v122, v108, v118);

                  v766[2](v766, v123, &v839);
                }

                v124 = v839;

                if (v124)
                {
                  free(*&v819.a);

                  goto LABEL_215;
                }
              }
            }
          }

          free(*&v819.a);
        }

        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v61, v125, v126, v62, &v835, v856, 16);
      }

      while (v60);
    }

    v832 = 0u;
    v833 = 0u;
    v830 = 0u;
    v831 = 0u;
    v780 = v751;
    v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v780, v127, v128, v129, v130, &v830, v854, 16);
    if (v132)
    {
      v136 = *v831;
      do
      {
        for (k = 0; k != v132; ++k)
        {
          if (*v831 != v136)
          {
            objc_enumerationMutation(v780);
          }

          v138 = *(*(&v830 + 1) + 8 * k);
          v139 = objc_msgSend_trendLineData(v138, v131, v133, v134, v135);
          v140 = v139 == 0;

          if (!v140)
          {
            v141 = *(MEMORY[0x277CBF398] + 16);
            recta.origin = *MEMORY[0x277CBF398];
            recta.size = v141;
            v142 = objc_msgSend_seriesType(v138, v131, recta.origin.x, v141.width, v135);
            v147 = objc_msgSend_elementBuilder(v142, v143, v144, v145, v146);
            v829 = 0;
            objc_msgSend_trendlineElementForSeries_forBodyLayout_outElementBounds_outElementClipRect_outElementPath_(v147, v148, v149, v150, v151, v138, v788, 0, &recta, &v829);
            v152 = v829;
            if (v152 && !CGRectIsNull(recta) && (objc_msgSend_isEmpty(v152, v153, v154, v155, v156) & 1) == 0)
            {
              v157 = v152;
              v162 = objc_msgSend_CGPath(v152, v158, v159, v160, v161);
              v167 = objc_msgSend_valueForProperty_(v138, v163, v164, v165, v166, 1202);
              v172 = objc_msgSend_newStrokedPathFromPath_stroke_cap_(TSCHRenderUtilities, v168, v169, v170, v171, v162, v167, 2);

              LODWORD(v167) = CGPathContainsPointSafe();
              CGPathRelease(v172);
              if (v167)
              {
                v177 = objc_msgSend_trendLineType(TSCHSelectionPathType, v173, v174, v175, v176);
                v178 = MEMORY[0x277CCABB0];
                v183 = objc_msgSend_seriesIndex(v138, v179, v180, v181, v182);
                v188 = objc_msgSend_numberWithUnsignedInteger_(v178, v184, v185, v186, v187, v183);
                v853 = v188;
                v193 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v189, v190, v191, v192, &v853, 1);
                v198 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v194, v195, v196, v197, v177, v193);

                v766[2](v766, v198, &v839);
              }

              if (v839)
              {

                goto LABEL_215;
              }
            }
          }
        }

        v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v780, v131, v133, v134, v135, &v830, v854, 16);
      }

      while (v132);
    }

    v827 = 0u;
    v828 = 0u;
    v825 = 0u;
    v826 = 0u;
    v768 = v780;
    v204 = objc_msgSend_countByEnumeratingWithState_objects_count_(v768, v199, v200, v201, v202, &v825, v852, 16);
    if (v204)
    {
      v208 = *v826;
      do
      {
        for (m = 0; m != v204; ++m)
        {
          if (*v826 != v208)
          {
            objc_enumerationMutation(v768);
          }

          v210 = *(*(&v825 + 1) + 8 * m);
          v211 = objc_msgSend_trendLineData(v210, v203, v205, v206, v207);
          v212 = v211 == 0;

          if (!v212)
          {
            v213 = objc_msgSend_seriesType(v210, v203, v205, v206, v207);
            v218 = objc_msgSend_elementBuilder(v213, v214, v215, v216, v217);
            objc_opt_class();
            v223 = objc_msgSend_parent(v788, v219, v220, v221, v222);
            v224 = TSUDynamicCast();

            v227 = *(MEMORY[0x277CBF398] + 16);
            *v823 = *MEMORY[0x277CBF398];
            v824 = v227;
            v228 = *MEMORY[0x277CBF3A8];
            v821 = 0u;
            *v822 = v228;
            memset(&recta, 0, sizeof(recta));
            if (v218)
            {
              objc_msgSend_transformForRenderingTrendlineTextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outNewString_(v218, v225, 0.0, *&v228, v226, v210, v224, v822, v823, 0, 0);
            }

            *&v818.a = recta.origin;
            *&v818.c = recta.size;
            *&v818.tx = v821;
            memset(&v819, 0, sizeof(v819));
            CGAffineTransformInvert(&v819, &v818);
            a = v819.a;
            b = v819.b;
            c = v819.c;
            d = v819.d;
            tx = v819.tx;
            ty = v819.ty;
            objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v233, *v823, *&v823[1], *&v824, *(&v824 + 1), *v822, *&v822[1]);
            x = v862.origin.x;
            y = v862.origin.y;
            width = v862.size.width;
            height = v862.size.height;
            if (!CGRectIsNull(v862))
            {
              v858.x = tx + a3.y * c + a * a3.x;
              v858.y = ty + a3.y * d + b * a3.x;
              v863.origin.x = x;
              v863.origin.y = y;
              v863.size.width = width;
              v863.size.height = height;
              if (CGRectContainsPoint(v863, v858))
              {
                v242 = objc_msgSend_trendLineEquationType(TSCHSelectionPathType, v238, v239, v240, v241);
                v243 = MEMORY[0x277CCABB0];
                v248 = objc_msgSend_seriesIndex(v210, v244, v245, v246, v247);
                v253 = objc_msgSend_numberWithUnsignedInteger_(v243, v249, v250, v251, v252, v248);
                v851 = v253;
                v258 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v254, v255, v256, v257, &v851, 1);
                v263 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v259, v260, v261, v262, v242, v258);

                v766[2](v766, v263, &v839);
              }
            }

            v264 = v839;

            if (v264)
            {

              goto LABEL_215;
            }
          }
        }

        v204 = objc_msgSend_countByEnumeratingWithState_objects_count_(v768, v203, v205, v206, v207, &v825, v852, 16);
      }

      while (v204);
    }

    v816 = 0u;
    v817 = 0u;
    v814 = 0u;
    v815 = 0u;
    v769 = v768;
    v270 = objc_msgSend_countByEnumeratingWithState_objects_count_(v769, v265, v266, v267, v268, &v814, v850, 16);
    if (v270)
    {
      v274 = *v815;
      do
      {
        for (n = 0; n != v270; ++n)
        {
          if (*v815 != v274)
          {
            objc_enumerationMutation(v769);
          }

          v276 = *(*(&v814 + 1) + 8 * n);
          v277 = objc_msgSend_trendLineData(v276, v269, v271, v272, v273);
          v278 = v277 == 0;

          if (!v278)
          {
            v279 = objc_msgSend_seriesType(v276, v269, v271, v272, v273);
            v284 = objc_msgSend_elementBuilder(v279, v280, v281, v282, v283);
            objc_opt_class();
            v289 = objc_msgSend_parent(v788, v285, v286, v287, v288);
            v290 = TSUDynamicCast();

            v293 = *(MEMORY[0x277CBF398] + 16);
            *v823 = *MEMORY[0x277CBF398];
            v824 = v293;
            v294 = *MEMORY[0x277CBF3A8];
            v821 = 0u;
            *v822 = v294;
            memset(&recta, 0, sizeof(recta));
            if (v284)
            {
              objc_msgSend_transformForRenderingR2TextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outString_(v284, v291, 0.0, *&v294, v292, v276, v290, v822, v823, 0, 0);
            }

            *&v818.a = recta.origin;
            *&v818.c = recta.size;
            *&v818.tx = v821;
            memset(&v819, 0, sizeof(v819));
            CGAffineTransformInvert(&v819, &v818);
            v773 = v819.a;
            v782 = v819.b;
            v295 = v819.c;
            v296 = v819.d;
            v297 = v819.tx;
            v298 = v819.ty;
            objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v299, *v823, *&v823[1], *&v824, *(&v824 + 1), *v822, *&v822[1]);
            v300 = v864.origin.x;
            v301 = v864.origin.y;
            v302 = v864.size.width;
            v303 = v864.size.height;
            if (!CGRectIsNull(v864))
            {
              v859.x = v297 + a3.y * v295 + v773 * a3.x;
              v859.y = v298 + a3.y * v296 + v782 * a3.x;
              v865.origin.x = v300;
              v865.origin.y = v301;
              v865.size.width = v302;
              v865.size.height = v303;
              if (CGRectContainsPoint(v865, v859))
              {
                v308 = objc_msgSend_trendLineR2Type(TSCHSelectionPathType, v304, v305, v306, v307);
                v309 = MEMORY[0x277CCABB0];
                v314 = objc_msgSend_seriesIndex(v276, v310, v311, v312, v313);
                v319 = objc_msgSend_numberWithUnsignedInteger_(v309, v315, v316, v317, v318, v314);
                v849 = v319;
                v324 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v320, v321, v322, v323, &v849, 1);
                v329 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v325, v326, v327, v328, v308, v324);

                v766[2](v766, v329, &v839);
              }
            }

            v330 = v839;

            if (v330)
            {

              goto LABEL_215;
            }
          }
        }

        v270 = objc_msgSend_countByEnumeratingWithState_objects_count_(v769, v269, v271, v272, v273, &v814, v850, 16);
      }

      while (v270);
    }

    v812 = 0u;
    v813 = 0u;
    v810 = 0u;
    v811 = 0u;
    v331 = v769;
    v774 = v331;
    v337 = objc_msgSend_countByEnumeratingWithState_objects_count_(v331, v332, v333, v334, v335, &v810, v848, 16);
    if (v337)
    {
      v341 = *v811;
      v342 = MEMORY[0x277CBF398];
      v747 = *v811;
      do
      {
        v343 = 0;
        obja = v337;
        do
        {
          if (*v811 != v341)
          {
            objc_enumerationMutation(v331);
          }

          v344 = *(*(&v810 + 1) + 8 * v343);
          v761 = objc_msgSend_seriesType(v344, v336, v338, v339, v340);
          v349 = objc_msgSend_elementBuilder(v761, v345, v346, v347, v348);
          v808 = 0u;
          v809 = 0u;
          v806 = 0u;
          v807 = 0u;
          v350 = v750;
          v783 = v350;
          v356 = objc_msgSend_countByEnumeratingWithState_objects_count_(v350, v351, v352, v353, v354, &v806, v847, 16);
          v756 = v343;
          if (v356)
          {
            v358 = *v807;
            do
            {
              for (ii = 0; ii != v356; ++ii)
              {
                if (*v807 != v358)
                {
                  objc_enumerationMutation(v350);
                }

                v360 = *(*(&v806 + 1) + 8 * ii);
                v361 = *(v342 + 16);
                recta.origin = *v342;
                recta.size = v361;
                v819.a = 0.0;
                v362 = objc_msgSend_countOfErrorBarsInSeries_forGroups_forAxisID_forBodyLayout_outClipRect_outNewErrorBarDescriptors_(v349, v355, recta.origin.x, v361.width, v357, v344, 0, v360, v788, &recta, &v819);
                if (v362 && !CGRectIsNull(recta) && CGRectContainsPoint(recta, a3) && sub_276348654(v344, v360, *&v819.a, v362, recta.origin.x, recta.origin.y, recta.size.width, recta.size.height, a3.x, a3.y))
                {
                  v365 = objc_msgSend_errorBarType(TSCHSelectionPathType, v355, v363, v364, v357);
                  v366 = MEMORY[0x277CBEA60];
                  v367 = MEMORY[0x277CCABB0];
                  v372 = objc_msgSend_seriesIndex(v344, v368, v369, v370, v371);
                  v377 = objc_msgSend_numberWithUnsignedInteger_(v367, v373, v374, v375, v376, v372);
                  v382 = objc_msgSend_arrayWithObjects_(v366, v378, v379, v380, v381, v377, v360, 0);
                  v387 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v383, v384, v385, v386, v365, v382);

                  v766[2](v766, v387, &v839);
                  v350 = v783;
                  v342 = MEMORY[0x277CBF398];
                }

                if (*&v819.a)
                {
                  free(*&v819.a);
                }

                if (v839)
                {

                  goto LABEL_215;
                }
              }

              v356 = objc_msgSend_countByEnumeratingWithState_objects_count_(v350, v355, v363, v364, v357, &v806, v847, 16);
            }

            while (v356);
          }

          v343 = v756 + 1;
          v331 = v774;
          v341 = v747;
        }

        while (v756 + 1 != obja);
        v337 = objc_msgSend_countByEnumeratingWithState_objects_count_(v774, v336, v338, v339, v340, &v810, v848, 16);
      }

      while (v337);
    }

    v804 = 0u;
    v805 = 0u;
    v802 = 0u;
    v803 = 0u;
    v748 = v774;
    v392 = objc_msgSend_countByEnumeratingWithState_objects_count_(v748, v388, v389, v390, v391, &v802, v846, 16);
    if (v392)
    {
      v757 = *v803;
      p_superclass = TSCHChartRadialElementsRenderer.superclass;
      do
      {
        objb = v392;
        for (jj = 0; jj != objb; jj = jj + 1)
        {
          if (*v803 != v757)
          {
            objc_enumerationMutation(v748);
          }

          v399 = *(*(&v802 + 1) + 8 * jj);
          v762 = objc_msgSend_seriesType(v399, v393, v394, v395, v396);
          v404 = objc_msgSend_elementBuilder(v762, v400, v401, v402, v403);
          v823[0] = 0;
          v822[0] = 0;
          v801 = 0;
          v409 = objc_msgSend_countOfLabelsForSeries_forGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v404, v405, v406, v407, v408, v399, 0, v788, v823, &v801, v822, 0);
          v410 = v823[0];
          v411 = v822[0];
          if (v823[0] && v822[0] && v409)
          {
            v412 = 0;
            v413 = 0;
            v414 = 0;
            v415 = 1;
            while ((v839 & 1) == 0)
            {
              recta = *&v410[v412];
              v821 = *&v410[v412 + 32];
              *&v818.tx = v821;
              memset(&v819, 0, sizeof(v819));
              *&v818.a = recta.origin;
              *&v818.c = recta.size;
              CGAffineTransformInvert(&v819, &v818);
              v775 = v819.a;
              v784 = v819.b;
              v416 = v819.c;
              v417 = v819.d;
              v418 = v819.tx;
              v419 = v819.ty;
              objc_msgSend_labelRectFromClipRect_elementSize_(p_superclass + 319, v420, *&v411[v413], *&v411[v413 + 8], *&v411[v413 + 16], *&v411[v413 + 24], *(v801 + v414), *(v801 + v414 + 8));
              v421 = v866.origin.x;
              v422 = v866.origin.y;
              v423 = v866.size.width;
              v424 = v866.size.height;
              if (!CGRectIsNull(v866))
              {
                v860.x = v418 + a3.y * v416 + v775 * a3.x;
                v860.y = v419 + a3.y * v417 + v784 * a3.x;
                v867.origin.x = v421;
                v867.origin.y = v422;
                v867.size.width = v423;
                v867.size.height = v424;
                if (CGRectContainsPoint(v867, v860))
                {
                  v429 = objc_msgSend_seriesIndex(v399, v425, v426, v427, v428);
                  v434 = objc_msgSend_seriesValueLabelSelectionPathWithSeriesIndex_(TSCHSelectionPath, v430, v431, v432, v433, v429);
                  v766[2](v766, v434, &v839);

                  p_superclass = (TSCHChartRadialElementsRenderer + 8);
                }
              }

              v410 = v823[0];
              v411 = v822[0];
              if (v823[0])
              {
                if (v822[0])
                {
                  v414 += 16;
                  v413 += 32;
                  v412 += 48;
                  v571 = v415++ >= v409;
                  if (!v571)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_99;
            }
          }

          else
          {
LABEL_99:
            if (!v410)
            {
              goto LABEL_101;
            }
          }

          free(v410);
          v411 = v822[0];
LABEL_101:
          if (v411)
          {
            free(v411);
          }

          if (v801)
          {
            free(v801);
          }

          v435 = v839;

          if (v435)
          {

            goto LABEL_215;
          }

          p_superclass = (TSCHChartRadialElementsRenderer + 8);
        }

        v392 = objc_msgSend_countByEnumeratingWithState_objects_count_(v748, v393, v394, v395, v396, &v802, v846, 16);
      }

      while (v392);
    }

    v823[0] = 0;
    v822[0] = 0;
    v801 = 0;
    v440 = objc_msgSend_countOfSummaryLabelsForGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v765, v436, v437, v438, v439, 0, v788, v823, v822, &v801, 0);
    v441 = v823[0];
    if (v823[0])
    {
      v442 = v801;
      if (v801)
      {
        v443 = v440;
        if (v440)
        {
          v444 = 0;
          v445 = 0;
          v446 = 0;
          v447 = 1;
          do
          {
            if (v839)
            {
              break;
            }

            v448 = &v441[v444];
            recta = *v448;
            v821 = *(v448 + 2);
            *&v818.tx = v821;
            memset(&v819, 0, sizeof(v819));
            *&v818.a = recta.origin;
            *&v818.c = recta.size;
            CGAffineTransformInvert(&v819, &v818);
            v776 = v819.a;
            v785 = v819.b;
            v449 = v819.c;
            v450 = v819.d;
            v451 = v819.tx;
            v452 = v819.ty;
            objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v453, *&v442[v445], *&v442[v445 + 8], *&v442[v445 + 16], *&v442[v445 + 24], *(v822[0] + v446), *(v822[0] + v446 + 8));
            v454 = v868.origin.x;
            v455 = v868.origin.y;
            v456 = v868.size.width;
            v457 = v868.size.height;
            if (!CGRectIsNull(v868))
            {
              v861.x = v451 + a3.y * v449 + v776 * a3.x;
              v861.y = v452 + a3.y * v450 + v785 * a3.x;
              v869.origin.x = v454;
              v869.origin.y = v455;
              v869.size.width = v456;
              v869.size.height = v457;
              if (CGRectContainsPoint(v869, v861))
              {
                v462 = objc_msgSend_seriesValueSummaryLabelSelectionPath(TSCHSelectionPath, v458, v459, v460, v461);
                v766[2](v766, v462, &v839);
              }
            }

            v441 = v823[0];
            if (!v823[0])
            {
              break;
            }

            v442 = v801;
            if (!v801)
            {
              break;
            }

            v446 += 16;
            v445 += 32;
            v444 += 48;
            v571 = v447++ >= v443;
          }

          while (!v571);
        }
      }
    }

    v799 = 0u;
    v800 = 0u;
    v797 = 0u;
    v798 = 0u;
    v763 = v748;
    v467 = objc_msgSend_countByEnumeratingWithState_objects_count_(v763, v463, v464, v465, v466, &v797, v845, 16);
    if (v467)
    {
      v770 = *v798;
      do
      {
        v777 = v467;
        for (kk = 0; kk != v777; ++kk)
        {
          if (*v798 != v770)
          {
            objc_enumerationMutation(v763);
          }

          v473 = *(*(&v797 + 1) + 8 * kk);
          v474 = objc_msgSend_seriesType(v473, v468, v469, v470, v471);
          v479 = objc_msgSend_elementBuilder(v474, v475, v476, v477, v478);
          v482 = objc_msgSend_hitCheckPoint_inSeries_withBodyLayout_(v479, v480, a3.x, a3.y, v481, v473, v788);
          if (v482 == -1)
          {
            goto LABEL_131;
          }

          if (v482 == 2)
          {
            v487 = objc_msgSend_seriesIndex(v473, v483, v484, v485, v486);
            v492 = objc_msgSend_seriesSymbolsSelectionPathWithSeriesIndex_(TSCHSelectionPath, v488, v489, v490, v491, v487);
            v766[2](v766, v492, &v839);

LABEL_129:
            v493 = objc_msgSend_seriesIndex(v473, v483, v484, v485, v486);
            v498 = objc_msgSend_seriesSelectionPathWithSeriesIndex_(TSCHSelectionPath, v494, v495, v496, v497, v493);
            v766[2](v766, v498, &v839);

            goto LABEL_130;
          }

          if ((v482 - 1) <= 1)
          {
            goto LABEL_129;
          }

          if (!v482)
          {
            objc_msgSend_hitCheckPoint_inSeries_withBodyLayout_(v479, v483, a3.x, a3.y, v486, v473, v788);
            recta.origin.x = 0.0;
            v503 = objc_msgSend_model(v473, v499, v500, v501, v502);
            v508 = objc_msgSend_chartInfo(v503, v504, v505, v506, v507);
            v513 = objc_msgSend_chartType(v508, v509, v510, v511, v512);
            v518 = objc_msgSend_supportsInnerRadius(v513, v514, v515, v516, v517);

            v523 = &unk_28856ED30;
            if (v518)
            {
              v524 = objc_msgSend_model(v473, v519, v520, v521, v522);
              v529 = objc_msgSend_chartInfo(v524, v525, v526, v527, v528);
              v523 = objc_msgSend_valueForProperty_(v529, v530, v531, v532, v533, 1103);

              if (objc_msgSend_compare_(v523, v534, v535, v536, v537, &unk_28856ED40) == 1)
              {

                v523 = &unk_28856ED40;
              }
            }

            v538 = objc_msgSend_countOfHitCheckRegionsInSeries_forGroups_forBodyLayout_outNewElementPaths_outSelectionKnobLocations_withInnerRadius_(v479, v519, v520, v521, v522, v473, 0, v788, &recta, 0, v523);
            v539 = recta.origin.x;
            v540 = *&recta.origin.x != 0;
            if (*&recta.origin.x && v538)
            {
              v758 = v523;
              v541 = v538 - 1;
              v542 = 1;
              do
              {
                v543 = *(*&v539 + 8 * v541);
                if ((v839 & 1) == 0 && CGPathContainsPointSafe())
                {
                  v548 = objc_msgSend_seriesType(v473, v544, v545, v546, v547);
                  v553 = v548;
                  if (v541 == 3 && (v839 & 1) == 0 && v538 == 4)
                  {
                    if (objc_msgSend_supportsSymbolDrawing(v548, v549, v550, v551, v552))
                    {
                      v554 = objc_msgSend_defaultSymbolType(v553, v549, v550, v551, v552);
                      if (objc_msgSend_intValueForProperty_defaultValue_(v473, v555, v556, v557, v558, 1190, v554))
                      {
                        v559 = objc_msgSend_seriesIndex(v473, v549, v550, v551, v552);
                        v564 = objc_msgSend_seriesSymbolsSelectionPathWithSeriesIndex_(TSCHSelectionPath, v560, v561, v562, v563, v559);
                        v766[2](v766, v564, &v839);
                      }
                    }
                  }

                  v565 = objc_msgSend_seriesIndex(v473, v549, v550, v551, v552);
                  v570 = objc_msgSend_seriesSelectionPathWithSeriesIndex_(TSCHSelectionPath, v566, v567, v568, v569, v565);
                  v766[2](v766, v570, &v839);
                }

                CGPathRelease(v543);
                v539 = recta.origin.x;
                v540 = *&recta.origin.x != 0;
                if (*&recta.origin.x)
                {
                  v571 = v542 >= v538;
                }

                else
                {
                  v571 = 1;
                }

                ++v542;
                --v541;
              }

              while (!v571);
              v523 = v758;
            }

            if (v540)
            {
              free(*&v539);
            }
          }

LABEL_130:
          if (v839)
          {

            goto LABEL_215;
          }

LABEL_131:
        }

        v467 = objc_msgSend_countByEnumeratingWithState_objects_count_(v763, v468, v469, v470, v471, &v797, v845, 16);
      }

      while (v467);
    }

    v795 = 0u;
    v796 = 0u;
    v793 = 0u;
    v794 = 0u;
    v575 = objc_msgSend_model(v788, v572, 0.0, v573, v574);
    v759 = objc_msgSend_axisList(v575, v576, v577, v578, v579);

    v585 = objc_msgSend_countByEnumeratingWithState_objects_count_(v759, v580, v581, v582, v583, &v793, v844, 16);
    if (v585)
    {
      v771 = *v794;
      while (2)
      {
        v589 = 0;
        v764 = v585;
        do
        {
          if (*v794 != v771)
          {
            objc_enumerationMutation(v759);
          }

          v590 = *(*(&v793 + 1) + 8 * v589);
          recta.origin.x = 0.0;
          v591 = objc_msgSend_countOfGridLinesInBody_forAxis_minor_outNewLineDescriptors_(v765, v584, v586, v587, v588, v788, v590, 0, &recta);
          objc_msgSend_objectValueForProperty_(v590, v592, v593, v594, v595, 1038);
          v786 = v778 = v589;
          objc_msgSend_width(v786, v596, v597, v598, v599);
          LOBYTE(v819.a) = 0;
          if (v591)
          {
            v601 = 0;
            v602 = v600 * 0.5;
            v603 = -(v600 * 0.5);
            if (v602 >= 1.0)
            {
              v604 = -1.0;
            }

            else
            {
              v604 = v603;
            }

            v605 = 1;
            do
            {
              TSURectWithPoints();
              v871 = CGRectInset(v870, v604, v604);
              if (CGRectContainsPoint(v871, a3))
              {
                v610 = objc_msgSend_gridLineType(TSCHSelectionPathType, v606, v607, v608, v609);
                v615 = objc_msgSend_axisID(v590, v611, v612, v613, v614);
                v843[0] = v615;
                v843[1] = MEMORY[0x277CBEC28];
                v620 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v616, v617, v618, v619, v843, 2);
                v625 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v621, v622, v623, v624, v610, v620);

                (v766)[2](v766, v625, &v819);
              }

              if (LOBYTE(v819.a))
              {
                break;
              }

              v601 += 32;
              v571 = v605++ >= v591;
            }

            while (!v571);
          }

          free(*&recta.origin.x);
          recta.origin.x = 0.0;
          a_low = LOBYTE(v819.a);

          if (a_low)
          {
LABEL_213:

            goto LABEL_215;
          }

          recta.origin.x = 0.0;
          v631 = objc_msgSend_countOfGridLinesInBody_forAxis_minor_outNewLineDescriptors_(v765, v627, v628, v629, v630, v788, v590, 1, &recta);
          v636 = objc_msgSend_objectValueForProperty_(v590, v632, v633, v634, v635, 1041);
          objc_msgSend_width(v636, v637, v638, v639, v640);
          LOBYTE(v819.a) = 0;
          if (v631)
          {
            v787 = v636;
            v642 = 0;
            v643 = v641 * 0.5;
            v644 = -(v641 * 0.5);
            if (v643 >= 1.0)
            {
              v645 = -1.0;
            }

            else
            {
              v645 = v644;
            }

            v646 = 1;
            do
            {
              TSURectWithPoints();
              v873 = CGRectInset(v872, v645, v645);
              if (CGRectContainsPoint(v873, a3))
              {
                v651 = objc_msgSend_gridLineType(TSCHSelectionPathType, v647, v648, v649, v650);
                v656 = objc_msgSend_axisID(v590, v652, v653, v654, v655);
                v842[0] = v656;
                v842[1] = MEMORY[0x277CBEC38];
                v661 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v657, v658, v659, v660, v842, 2);
                v666 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v662, v663, v664, v665, v651, v661);

                (v766)[2](v766, v666, &v819);
              }

              v667 = LOBYTE(v819.a);
              if (LOBYTE(v819.a))
              {
                break;
              }

              v642 += 32;
              v571 = v646++ >= v631;
            }

            while (!v571);

            if (v667)
            {
              goto LABEL_213;
            }
          }

          else
          {
          }

          v589 = v778 + 1;
        }

        while ((v778 + 1) != v764);
        v585 = objc_msgSend_countByEnumeratingWithState_objects_count_(v759, v584, v586, v587, v588, &v793, v844, 16);
        if (v585)
        {
          continue;
        }

        break;
      }
    }

    v791 = 0u;
    v792 = 0u;
    v789 = 0u;
    v790 = 0u;
    v671 = objc_msgSend_model(v788, v668, 0.0, v669, v670);
    v676 = objc_msgSend_axisList(v671, v672, v673, v674, v675);

    v682 = objc_msgSend_countByEnumeratingWithState_objects_count_(v676, v677, v678, v679, v680, &v789, v841, 16);
    if (v682)
    {
      v684 = *v790;
      v685 = MEMORY[0x277CBF2C0];
      while (2)
      {
        for (mm = 0; mm != v682; ++mm)
        {
          if (*v790 != v684)
          {
            objc_enumerationMutation(v676);
          }

          v687 = *(*(&v789 + 1) + 8 * mm);
          LOBYTE(v818.a) = 0;
          v688 = *(v685 + 16);
          recta.origin = *v685;
          recta.size = v688;
          v821 = *(v685 + 32);
          if (objc_msgSend_hasAxisLineInBody_forAxis_outTransform_outLine_(v765, v681, *&v821, v688.width, v683, v788, v687, &recta, &v819))
          {
            v691 = objc_msgSend_model(v687, v681, v689, v690, v683);
            v696 = objc_msgSend_chartInfo(v691, v692, v693, v694, v695);
            v701 = objc_msgSend_objectValueForProperty_(v696, v697, v698, v699, v700, 1080);

            objc_msgSend_width(v701, v702, v703, v704, v705);
            v707 = v706;
            v708 = v706 * 0.5;
            TSURectWithPoints();
            v713 = -(v707 * 0.5);
            if (v708 >= 1.0)
            {
              v713 = -1.0;
            }

            v874 = CGRectInset(*&v709, v713, v713);
            if (CGRectContainsPoint(v874, a3))
            {
              v718 = objc_msgSend_axisLineType(TSCHSelectionPathType, v714, v715, v716, v717);
              v723 = objc_msgSend_axisID(v687, v719, v720, v721, v722);
              v840 = v723;
              v728 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v724, v725, v726, v727, &v840, 1);
              v733 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v729, v730, v731, v732, v718, v728);

              (v766)[2](v766, v733, &v818);
            }
          }

          if (LOBYTE(v818.a))
          {

            goto LABEL_215;
          }
        }

        v682 = objc_msgSend_countByEnumeratingWithState_objects_count_(v676, v681, v689, v690, v683, &v789, v841, 16);
        if (v682)
        {
          continue;
        }

        break;
      }
    }

    if (objc_msgSend_layoutSpacePointIsInChartBody_(v788, v734, a3.x, a3.y, v735))
    {
      LOBYTE(recta.origin.x) = 0;
      v740 = objc_msgSend_chartBodyType(TSCHSelectionPathType, v736, v737, v738, v739);
      v745 = objc_msgSend_selectionPathWithPathType_arguments_(TSCHSelectionPath, v741, v742, v743, v744, v740, 0);

      (v766)[2](v766, v745, &recta);
    }

LABEL_215:
  }
}

- (BOOL)layoutSpacePointIsInChartBody:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  objc_msgSend_rootedLayoutRect(self, a2, a3.x, a3.y, v3);
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (id)p_valueLabelSubselectionKnobsForSeries:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  v14 = objc_msgSend_seriesType(v4, v10, v11, v12, v13);
  v19 = objc_msgSend_elementBuilder(v14, v15, v16, v17, v18);
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v25 = objc_msgSend_countOfLabelsForSeries_forGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v19, v20, v21, v22, v23, v4, 0, self, &v46, &v44, &v45, 0);
  v26 = v45;
  v27 = v46;
  if (v46 && v45 && v25)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 1;
    do
    {
      v32 = &v27[v28];
      v33 = *(v32 + 1);
      v41 = *v32;
      v42 = v33;
      v43 = *(v32 + 2);
      objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v24, *&v26[v29], *&v26[v29 + 8], *&v26[v29 + 16], *&v26[v29 + 24], *&v44[v30], *&v44[v30 + 8]);
      v40[0] = v41;
      v40[1] = v42;
      v40[2] = v43;
      objc_msgSend_addTextSubselectionKnobsToArray_rect_transform_(TSCHRenderUtilities, v34, v35, v36, v37, v9, v40);
      v26 = v45;
      v27 = v46;
      if (!v46)
      {
        break;
      }

      if (!v45)
      {
        break;
      }

      v30 += 16;
      v29 += 32;
      v28 += 48;
    }

    while (v31++ < v25);
  }

  if (v27)
  {
    free(v27);
    v26 = v45;
  }

  if (v26)
  {
    free(v26);
  }

  if (v44)
  {
    free(v44);
  }

  return v9;
}

- (id)p_valueSummaryLabelSubselectionKnobs
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v11 = objc_msgSend_model(self, v7, v8, v9, v10);
  v16 = objc_msgSend_seriesList(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_lastObject(v16, v17, v18, v19, v20);
  v26 = objc_msgSend_seriesType(v21, v22, v23, v24, v25);
  v31 = objc_msgSend_elementBuilder(v26, v27, v28, v29, v30);

  v57 = 0;
  v58 = 0;
  v56 = 0;
  v37 = objc_msgSend_countOfSummaryLabelsForGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v31, v32, v33, v34, v35, 0, self, &v58, &v56, &v57, 0);
  v38 = v57;
  v39 = v58;
  if (v58 && v57 && v37)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 1;
    do
    {
      v44 = &v39[v40];
      v45 = *(v44 + 1);
      v53 = *v44;
      v54 = v45;
      v55 = *(v44 + 2);
      objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v36, *&v38[v41], *&v38[v41 + 8], *&v38[v41 + 16], *&v38[v41 + 24], *&v56[v42], *&v56[v42 + 8]);
      v52[0] = v53;
      v52[1] = v54;
      v52[2] = v55;
      objc_msgSend_addTextSubselectionKnobsToArray_rect_transform_(TSCHRenderUtilities, v46, v47, v48, v49, v6, v52);
      v38 = v57;
      v39 = v58;
      if (!v58)
      {
        break;
      }

      if (!v57)
      {
        break;
      }

      v42 += 16;
      v41 += 32;
      v40 += 48;
    }

    while (v43++ < v37);
  }

  if (v39)
  {
    free(v39);
    v38 = v57;
  }

  if (v38)
  {
    free(v38);
  }

  if (v56)
  {
    free(v56);
  }

  return v6;
}

- (id)p_errorBarSubselectionKnobsForSeries:(id)a3 axisID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_seriesType(v6, v8, v9, v10, v11);
  v17 = objc_msgSend_elementBuilder(v12, v13, v14, v15, v16);
  v49 = 0;
  objc_msgSend_rootedDrawingRect(self, v18, v19, v20, v21);
  v52 = CGRectInset(v51, -0.01, -0.01);
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  v27 = objc_msgSend_countOfErrorBarsInSeries_forGroups_forAxisID_forBodyLayout_outClipRect_outNewErrorBarDescriptors_(v17, v26, v52.origin.x, v52.origin.y, v52.size.width, v6, 0, v7, self, 0, &v49);
  v32 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v28, v29, v30, v31, v27);
  if (v27)
  {
    v33 = 0;
    do
    {
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      if (CGRectContainsPoint(v53, *(v49 + v33)))
      {
        v36 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v34, *(v49 + v33), *(v49 + v33 + 8), v35);
        objc_msgSend_addObject_(v32, v37, v38, v39, v40, v36);
      }

      v54.origin.x = x;
      v54.origin.y = y;
      v54.size.width = width;
      v54.size.height = height;
      if (CGRectContainsPoint(v54, *(v49 + v33 + 16)))
      {
        v43 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v41, *(v49 + v33 + 16), *(v49 + v33 + 24), v42);
        objc_msgSend_addObject_(v32, v44, v45, v46, v47, v43);
      }

      v33 += 48;
      --v27;
    }

    while (v27);
  }

  free(v49);

  return v32;
}

- (id)p_trendLineSubselectionKnobsForSeries:(id)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_trendLineData(v4, v5, v6, v7, v8);

  if (!v9)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartBodyLayoutItem p_trendLineSubselectionKnobsForSeries:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBodyLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 1233, 0, "invalid nil value for '%{public}s'", "series.trendLineData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_seriesType(v4, v10, v11, v12, v13);
  v34 = objc_msgSend_elementBuilder(v29, v30, v31, v32, v33);
  v75 = 0;
  objc_msgSend_trendlineElementForSeries_forBodyLayout_outElementBounds_outElementClipRect_outElementPath_(v34, v35, v36, v37, v38, v4, self, 0, 0, &v75);
  v39 = v75;
  v45 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v40, v41, v42, v43, 2);
  if (v39 && (objc_msgSend_isEmpty(v39, v44, v46, v47, v48) & 1) == 0)
  {
    v76[0] = xmmword_2764D6AF0;
    v76[1] = unk_2764D6B00;
    v76[2] = xmmword_2764D6B10;
    *v77 = *dbl_2764D6B20;
    objc_msgSend_elementAtIndex_allPoints_(v39, v49, NAN, dbl_2764D6B20[0], v50, 0, v76);
    v53 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v51, *v76, *(v76 + 1), v52);
    objc_msgSend_addObject_(v45, v54, v55, v56, v57, v53);

    v62 = objc_msgSend_elementCount(v39, v58, v59, v60, v61);
    objc_msgSend_elementAtIndex_allPoints_(v39, v63, v64, v65, v66, v62 - 1, v76);
    v69 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v67, v77[0], v77[1], v68);
    objc_msgSend_addObject_(v45, v70, v71, v72, v73, v69);
  }

  return v45;
}

- (id)p_trendLineEquationSubselectionKnobsForSeries:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  v14 = objc_msgSend_seriesType(v4, v10, v11, v12, v13);
  v19 = objc_msgSend_elementBuilder(v14, v15, v16, v17, v18);
  objc_opt_class();
  v24 = objc_msgSend_parent(self, v20, v21, v22, v23);
  v25 = TSUDynamicCast();

  v28 = *(MEMORY[0x277CBF398] + 16);
  v40 = *MEMORY[0x277CBF398];
  v41 = v28;
  v29 = *MEMORY[0x277CBF3A8];
  v38 = 0u;
  v39 = v29;
  v36 = 0u;
  v37 = 0u;
  if (v19)
  {
    objc_msgSend_transformForRenderingTrendlineTextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outNewString_(v19, v26, 0.0, *&v29, v27, v4, v25, &v39, &v40, 0, 0);
  }

  objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v26, *&v40, *(&v40 + 1), *&v41, *(&v41 + 1), v39);
  v35[0] = v36;
  v35[1] = v37;
  v35[2] = v38;
  objc_msgSend_addTextSubselectionKnobsToArray_rect_transform_(TSCHRenderUtilities, v30, v31, v32, v33, v9, v35);

  return v9;
}

- (id)p_trendLineR2SubselectionKnobsForSeries:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  v14 = objc_msgSend_seriesType(v4, v10, v11, v12, v13);
  v19 = objc_msgSend_elementBuilder(v14, v15, v16, v17, v18);
  objc_opt_class();
  v24 = objc_msgSend_parent(self, v20, v21, v22, v23);
  v25 = TSUDynamicCast();

  v28 = *(MEMORY[0x277CBF398] + 16);
  v40 = *MEMORY[0x277CBF398];
  v41 = v28;
  v29 = *MEMORY[0x277CBF3A8];
  v38 = 0u;
  v39 = v29;
  v36 = 0u;
  v37 = 0u;
  if (v19)
  {
    objc_msgSend_transformForRenderingR2TextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outString_(v19, v26, 0.0, *&v29, v27, v4, v25, &v39, &v40, 0, 0);
  }

  objc_msgSend_labelRectFromClipRect_elementSize_(TSCHRenderUtilities, v26, *&v40, *(&v40 + 1), *&v41, *(&v41 + 1), v39);
  v35[0] = v36;
  v35[1] = v37;
  v35[2] = v38;
  objc_msgSend_addTextSubselectionKnobsToArray_rect_transform_(TSCHRenderUtilities, v30, v31, v32, v33, v9, v35);

  return v9;
}

- (id)p_refLineSubselectionKnobsForStyleSwapIndex:(unint64_t)a3
{
  v94[2] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, a2, v3, v4, v5);
  v13 = objc_msgSend_model(self, v9, v10, v11, v12);
  v18 = objc_msgSend_referenceLineForStyleSwapIndex_(v13, v14, v15, v16, v17, a3);

  if (!v18)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHChartBodyLayoutItem p_refLineSubselectionKnobsForStyleSwapIndex:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBodyLayoutItem.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 1295, 0, "invalid nil value for '%{public}s'", "refLine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = objc_msgSend_model(v18, v19, v20, v21, v22);
  v43 = objc_msgSend_seriesList(v38, v39, v40, v41, v42);
  v48 = objc_msgSend_firstObject(v43, v44, v45, v46, v47);
  v53 = objc_msgSend_seriesType(v48, v49, v50, v51, v52);
  v58 = objc_msgSend_elementBuilder(v53, v54, v55, v56, v57);

  v93 = 0;
  v63 = objc_msgSend_model(self, v59, v60, v61, v62);
  v92 = 0;
  v68 = objc_msgSend_countOfReferenceLinesForAxisID_model_forBodyLayout_outClipRect_outNewClipRects_outNewLineDescriptors_outReferenceLines_includeOutsideChartBodyBounds_outOutsideChartBodyBounds_(v58, v64, v65, v66, v67, v8, v63, self, 0, 0, &v93, &v92, 0, 0);
  v69 = v92;

  v74 = objc_msgSend_indexOfObjectIdenticalTo_(v69, v70, v71, v72, v73, v18);
  v77 = 0;
  if (v74 != 0x7FFFFFFFFFFFFFFFLL && v74 < v68)
  {
    v78 = (v93 + 32 * v74);
    v79 = v78[2];
    v80 = v78[3];
    v81 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v75, *v78, v78[1], v76);
    v94[0] = v81;
    v84 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v82, v79, v80, v83);
    v94[1] = v84;
    v77 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v85, v86, v87, v88, v94, 2);
  }

  v89 = MEMORY[0x277CBEBF8];
  if (v77)
  {
    v89 = v77;
  }

  v90 = v89;

  free(v93);

  return v90;
}

- (id)subselectionKnobPositionsForSelection:(id)a3
{
  v290 = *MEMORY[0x277D85DE8];
  v288.receiver = self;
  v288.super_class = TSCHChartBodyLayoutItem;
  v273 = a3;
  v3 = [(TSCHChartLayoutItem *)&v288 subselectionKnobPositionsForSelection:?];
  v272 = v3;
  if (v3)
  {
    v278 = objc_msgSend_mutableCopy(v3, v4, v5, v6, v7);
  }

  else
  {
    v278 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v4, v5, v6, v7);
  }

  v12 = objc_msgSend_model(self, v8, v9, v10, v11);
  v274 = objc_msgSend_seriesList(v12, v13, v14, v15, v16);

  v275 = objc_msgSend_count(v274, v17, v18, v19, v20);
  v286 = 0u;
  v287 = 0u;
  v284 = 0u;
  v285 = 0u;
  obj = v273;
  v280 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, v22, v23, v24, &v284, v289, 16);
  if (v280)
  {
    v279 = *v285;
    do
    {
      v282 = 0;
      do
      {
        if (*v285 != v279)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v284 + 1) + 8 * v282);
        v30 = objc_msgSend_pathType(v29, v25, v26, v27, v28);
        v35 = objc_msgSend_seriesType(TSCHSelectionPathType, v31, v32, v33, v34);
        if (objc_msgSend_isEqual_(v30, v36, v37, v38, v39, v35))
        {
          isEqual = 1;
        }

        else
        {
          v44 = objc_msgSend_pathType(v29, v40, v41, v42, v43);
          v49 = objc_msgSend_seriesSymbolType(TSCHSelectionPathType, v45, v46, v47, v48);
          isEqual = objc_msgSend_isEqual_(v44, v50, v51, v52, v53, v49);
        }

        v58 = objc_msgSend_pathType(v29, v54, v55, v56, v57);
        v63 = objc_msgSend_seriesValueLabelType(TSCHSelectionPathType, v59, v60, v61, v62);
        v68 = objc_msgSend_isEqual_(v58, v64, v65, v66, v67, v63);

        v73 = objc_msgSend_pathType(v29, v69, v70, v71, v72);
        v78 = objc_msgSend_seriesValueSummaryLabelType(TSCHSelectionPathType, v74, v75, v76, v77);
        v83 = objc_msgSend_isEqual_(v73, v79, v80, v81, v82, v78);

        v88 = objc_msgSend_pathType(v29, v84, v85, v86, v87);
        v93 = objc_msgSend_errorBarType(TSCHSelectionPathType, v89, v90, v91, v92);
        v98 = objc_msgSend_isEqual_(v88, v94, v95, v96, v97, v93);

        v103 = objc_msgSend_pathType(v29, v99, v100, v101, v102);
        v108 = objc_msgSend_trendLineType(TSCHSelectionPathType, v104, v105, v106, v107);
        v113 = objc_msgSend_isEqual_(v103, v109, v110, v111, v112, v108);

        v118 = objc_msgSend_pathType(v29, v114, v115, v116, v117);
        v123 = objc_msgSend_trendLineEquationType(TSCHSelectionPathType, v119, v120, v121, v122);
        v128 = objc_msgSend_isEqual_(v118, v124, v125, v126, v127, v123);

        v133 = objc_msgSend_pathType(v29, v129, v130, v131, v132);
        v138 = objc_msgSend_trendLineR2Type(TSCHSelectionPathType, v134, v135, v136, v137);
        v143 = objc_msgSend_isEqual_(v133, v139, v140, v141, v142, v138);

        v148 = objc_msgSend_pathType(v29, v144, v145, v146, v147);
        v153 = objc_msgSend_referenceLineType(TSCHSelectionPathType, v149, v150, v151, v152);
        v158 = objc_msgSend_isEqual_(v148, v154, v155, v156, v157, v153);

        if ((isEqual | v68 | v98 | v113 | v128 | v143))
        {
          objc_opt_class();
          v163 = objc_msgSend_argumentAtIndex_(v29, v159, v160, v161, v162, 0);
          v164 = TSUDynamicCast();

          if (!v164)
          {
            goto LABEL_31;
          }

          v169 = objc_msgSend_unsignedIntegerValue(v164, v165, v166, v167, v168);
          if (v169 == 0x7FFFFFFFFFFFFFFFLL || v169 >= v275)
          {
            goto LABEL_31;
          }

          v174 = objc_msgSend_objectAtIndexedSubscript_(v274, v170, v171, v172, v173, v169);
          v179 = objc_msgSend_seriesType(v174, v175, v176, v177, v178);
          v184 = objc_msgSend_elementBuilder(v179, v180, v181, v182, v183);
          v189 = v184;
          if (isEqual)
          {
            v283 = 0;
            v190 = v184;
            v191 = v179;
            objc_msgSend_countOfHitCheckRegionsInSeries_forGroups_forBodyLayout_outNewElementPaths_outSelectionKnobLocations_forHighlightPath_(v184, v185, v186, v187, v188, v174, 0, self, 0, &v283, 0);
            v192 = v283;
            goto LABEL_26;
          }

          if (v68)
          {
            v190 = v184;
            v191 = v179;
            v192 = objc_msgSend_p_valueLabelSubselectionKnobsForSeries_(self, v185, v186, v187, v188, v174);
            goto LABEL_26;
          }

          if (v98)
          {
            v191 = v179;
            objc_opt_class();
            v249 = objc_msgSend_argumentAtIndex_(v29, v245, v246, v247, v248, 1);
            v190 = v189;
            v250 = TSUDynamicCast();

            v234 = objc_msgSend_p_errorBarSubselectionKnobsForSeries_axisID_(self, v251, v252, v253, v254, v174, v250);
          }

          else
          {
            if (v113)
            {
              v190 = v184;
              v191 = v179;
              v192 = objc_msgSend_p_trendLineSubselectionKnobsForSeries_(self, v185, v186, v187, v188, v174);
            }

            else if (v128)
            {
              v190 = v184;
              v191 = v179;
              v192 = objc_msgSend_p_trendLineEquationSubselectionKnobsForSeries_(self, v185, v186, v187, v188, v174);
            }

            else
            {
              if (!v143)
              {
                v255 = MEMORY[0x277D81150];
                v190 = v184;
                v191 = v179;
                v256 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v185, v186, v187, v188, "[TSCHChartBodyLayoutItem subselectionKnobPositionsForSelection:]");
                v261 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v257, v258, v259, v260, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBodyLayoutItem.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v255, v262, v263, v264, v265, v256, v261, 1367, 0, "invalid selection path %@", v29);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v266, v267, v268, v269);
                v234 = 0;
                goto LABEL_27;
              }

              v190 = v184;
              v191 = v179;
              v192 = objc_msgSend_p_trendLineR2SubselectionKnobsForSeries_(self, v185, v186, v187, v188, v174);
            }

LABEL_26:
            v234 = v192;
          }

LABEL_27:
          v235 = objc_msgSend_objectForKey_(v278, v193, v194, v195, v196, v29);
          v240 = objc_msgSend_arrayByAddingObjectsFromArray_(v234, v236, v237, v238, v239, v235);

          if (v240)
          {
            objc_msgSend_setObject_forKey_(v278, v241, v242, v243, v244, v240, v29);
          }

          goto LABEL_30;
        }

        if (!v158)
        {
          if (!v83)
          {
            goto LABEL_32;
          }

          v164 = objc_msgSend_p_valueSummaryLabelSubselectionKnobs(self, v25, v26, v27, v28);
          v229 = objc_msgSend_objectForKey_(v278, v225, v226, v227, v228, v29);
          v174 = objc_msgSend_arrayByAddingObjectsFromArray_(v164, v230, v231, v232, v233, v229);

          if (!v174)
          {
            goto LABEL_30;
          }

LABEL_20:
          objc_msgSend_setObject_forKey_(v278, v221, v222, v223, v224, v174, v29);
          goto LABEL_30;
        }

        objc_opt_class();
        v201 = objc_msgSend_argumentAtIndex_(v29, v197, v198, v199, v200, 0);
        v202 = TSUCheckedDynamicCast();
        v207 = objc_msgSend_unsignedIntegerValue(v202, v203, v204, v205, v206);

        v164 = objc_msgSend_p_refLineSubselectionKnobsForStyleSwapIndex_(self, v208, v209, v210, v211, v207);
        v216 = objc_msgSend_objectForKey_(v278, v212, v213, v214, v215, v29);
        v174 = objc_msgSend_arrayByAddingObjectsFromArray_(v164, v217, v218, v219, v220, v216);

        if (v174)
        {
          goto LABEL_20;
        }

LABEL_30:

LABEL_31:
LABEL_32:
        ++v282;
      }

      while (v280 != v282);
      v270 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, v26, v27, v28, &v284, v289, 16);
      v280 = v270;
    }

    while (v270);
  }

  return v278;
}

- (CGPath)newDragAndDropHighlightPathForSelection:(id)a3
{
  v408 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v395 = self;
  v406.receiver = self;
  v406.super_class = TSCHChartBodyLayoutItem;
  path = [(TSCHChartLayoutItem *)&v406 newDragAndDropHighlightPathForSelection:v4];
  if (objc_msgSend_count(v4, v5, v6, v7, v8))
  {
    if (path)
    {
      MutableCopy = CGPathCreateMutableCopy(path);
      CGPathRelease(path);
      path = MutableCopy;
    }

    else
    {
      path = CGPathCreateMutable();
    }

    v14 = objc_msgSend_model(v395, v10, v11, v12, v13);
    v392 = objc_msgSend_numberOfSeries(v14, v15, v16, v17, v18);

    v404 = 0u;
    v405 = 0u;
    v402 = 0u;
    v403 = 0u;
    obj = v4;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, v20, v21, v22, &v402, v407, 16);
    if (v23)
    {
      v393 = *v403;
      v390 = v4;
      do
      {
        v394 = v23;
        for (i = 0; i != v394; ++i)
        {
          if (*v403 != v393)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v402 + 1) + 8 * i);
          v30 = objc_msgSend_seriesType(TSCHSelectionPathType, v24, v25, v26, v27);
          v35 = objc_msgSend_pathType(v29, v31, v32, v33, v34);
          isEqual = objc_msgSend_isEqual_(v30, v36, v37, v38, v39, v35);

          if ((isEqual & 1) != 0 || (objc_msgSend_seriesSymbolType(TSCHSelectionPathType, v41, v42, v43, v44), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend_pathType(v29, v46, v47, v48, v49), v50 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend_isEqual_(v45, v51, v52, v53, v54, v50), v50, v45, v55))
          {
            objc_opt_class();
            v64 = objc_msgSend_argumentAtIndex_(v29, v60, v61, v62, v63, 0);
            v65 = TSUDynamicCast();

            if (v65)
            {
              v70 = objc_msgSend_unsignedIntegerValue(v65, v66, v67, v68, v69);
              v75 = v70;
              if (v70 != 0x7FFFFFFFFFFFFFFFLL && v70 < v392)
              {
                v76 = objc_msgSend_model(v395, v71, v72, v73, v74);
                v81 = objc_msgSend_seriesAtIndex_(v76, v77, v78, v79, v80, v75);

                v86 = objc_msgSend_seriesType(v81, v82, v83, v84, v85);
                v91 = objc_msgSend_elementBuilder(v86, v87, v88, v89, v90);
                v397[0] = 0;
                v97 = objc_msgSend_countOfHitCheckRegionsInSeries_forGroups_forBodyLayout_outNewElementPaths_outSelectionKnobLocations_forHighlightPath_(v91, v92, v93, v94, v95, v81, 0, v395, v397, 0, 1);
                if (isEqual)
                {
                  v101 = 1;
                }

                else
                {
                  v102 = objc_msgSend_seriesType(v81, v96, v98, v99, v100);
                  v107 = objc_msgSend_supportsSymbolDrawing(v102, v103, v104, v105, v106);
                  if (v97 == 4)
                  {
                    v108 = v107;
                  }

                  else
                  {
                    v108 = 0;
                  }

                  v101 = v108 != 1 || (v109 = *(v397[0] + 3)) == 0 || CGPathIsEmpty(v109);
                }

                if (v97)
                {
                  for (j = 0; j != v97; ++j)
                  {
                    v111 = *(v397[0] + j);
                    if (v111)
                    {
                      IsEmpty = CGPathIsEmpty(*(v397[0] + j));
                      v113 = j == 3 || v101;
                      if (!IsEmpty && v113)
                      {
                        CGPathAddPathSafe();
                      }

                      CGPathRelease(v111);
                    }
                  }
                }

                free(v397[0]);

                v4 = v390;
              }
            }
          }

          v114 = objc_msgSend_chartBodyType(TSCHSelectionPathType, v56, v57, v58, v59);
          v119 = objc_msgSend_pathType(v29, v115, v116, v117, v118);
          v124 = objc_msgSend_isEqual_(v114, v120, v121, v122, v123, v119);

          if (v124)
          {
            objc_msgSend_rootedLayoutRect(v395, v125, v126, v127, v128);
            CGPathAddRectSafe();
          }

          if (!objc_msgSend_argumentsCount(v29, v125, v126, v127, v128))
          {
            v138 = 0;
LABEL_44:
            v139 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_45;
          }

          objc_opt_class();
          v137 = objc_msgSend_argumentAtIndex_(v29, v133, v134, v135, v136, 0);
          v138 = TSUDynamicCast();

          if (!v138)
          {
            goto LABEL_44;
          }

          v139 = objc_msgSend_unsignedIntegerValue(v138, v129, v130, v131, v132);
LABEL_45:
          v140 = objc_msgSend_trendLineEquationType(TSCHSelectionPathType, v129, v130, v131, v132);
          v145 = objc_msgSend_pathType(v29, v141, v142, v143, v144);
          if (!objc_msgSend_isEqual_(v140, v146, v147, v148, v149, v145) || !objc_msgSend_argumentsCount(v29, v150, v151, v152, v153))
          {
            goto LABEL_55;
          }

          if (v139 < v392)
          {
            v158 = objc_msgSend_model(v395, v154, v155, v156, v157);
            v140 = objc_msgSend_seriesAtIndex_(v158, v159, v160, v161, v162, v139);

            v145 = objc_msgSend_seriesType(v140, v163, v164, v165, v166);
            v171 = objc_msgSend_elementBuilder(v145, v167, v168, v169, v170);
            objc_opt_class();
            v176 = objc_msgSend_parent(v395, v172, v173, v174, v175);
            v177 = TSUDynamicCast();

            v180 = *(MEMORY[0x277CBF398] + 16);
            v401.origin = *MEMORY[0x277CBF398];
            v401.size = v180;
            v181 = *MEMORY[0x277CBF3A8];
            v399 = 0u;
            v400 = v181;
            *v397 = 0u;
            v398 = 0u;
            if (v171)
            {
              objc_msgSend_transformForRenderingTrendlineTextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outNewString_(v171, v178, 0.0, *&v181, v179, v140, v177, &v400, &v401, 0, 0);
            }

            if (!CGRectIsNull(v401) && (*MEMORY[0x277CBF3A8] != *&v400 || *(MEMORY[0x277CBF3A8] + 8) != *(&v400 + 1)))
            {
              TSURectWithSize();
              CGPathAddRectSafe();
            }

LABEL_55:
          }

          v182 = objc_msgSend_trendLineR2Type(TSCHSelectionPathType, v154, v155, v156, v157);
          v187 = objc_msgSend_pathType(v29, v183, v184, v185, v186);
          if (objc_msgSend_isEqual_(v182, v188, v189, v190, v191, v187) && objc_msgSend_argumentsCount(v29, v192, v193, v194, v195))
          {

            if (v139 >= v392)
            {
              goto LABEL_67;
            }

            v200 = objc_msgSend_model(v395, v196, v197, v198, v199);
            v182 = objc_msgSend_seriesAtIndex_(v200, v201, v202, v203, v204, v139);

            objc_opt_class();
            v209 = objc_msgSend_parent(v395, v205, v206, v207, v208);
            v187 = TSUDynamicCast();

            v214 = objc_msgSend_seriesType(v182, v210, v211, v212, v213);
            v219 = objc_msgSend_elementBuilder(v214, v215, v216, v217, v218);
            v222 = v219;
            v223 = *(MEMORY[0x277CBF398] + 16);
            v401.origin = *MEMORY[0x277CBF398];
            v401.size = v223;
            v224 = *MEMORY[0x277CBF3A8];
            v399 = 0u;
            v400 = v224;
            *v397 = 0u;
            v398 = 0u;
            if (v219)
            {
              objc_msgSend_transformForRenderingR2TextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outString_(v219, v220, 0.0, *&v224, v221, v182, v187, &v400, &v401, 0, 0);
            }

            if (!CGRectIsNull(v401) && (*MEMORY[0x277CBF3A8] != *&v400 || *(MEMORY[0x277CBF3A8] + 8) != *(&v400 + 1)))
            {
              TSURectWithSize();
              CGPathAddRectSafe();
            }
          }

LABEL_67:
          v225 = objc_msgSend_pathType(v29, v196, v197, v198, v199);
          v230 = objc_msgSend_gridLineType(TSCHSelectionPathType, v226, v227, v228, v229);
          if (objc_msgSend_isEqual_(v225, v231, v232, v233, v234, v230))
          {
            v239 = objc_msgSend_argumentsCount(v29, v235, v236, v237, v238) > 1;

            if (!v239)
            {
              goto LABEL_76;
            }

            v244 = objc_msgSend_model(v395, v240, v241, v242, v243);
            v249 = objc_msgSend_seriesList(v244, v245, v246, v247, v248);
            v254 = objc_msgSend_firstObject(v249, v250, v251, v252, v253);
            v259 = objc_msgSend_seriesType(v254, v255, v256, v257, v258);
            v225 = objc_msgSend_elementBuilder(v259, v260, v261, v262, v263);

            v230 = objc_msgSend_argumentAtIndex_(v29, v264, v265, v266, v267, 0);
            objc_opt_class();
            v272 = objc_msgSend_argumentAtIndex_(v29, v268, v269, v270, v271, 1);
            v273 = TSUCheckedDynamicCast();
            v278 = objc_msgSend_BOOLValue(v273, v274, v275, v276, v277);

            v283 = objc_msgSend_model(v395, v279, v280, v281, v282);
            v288 = objc_msgSend_axisForID_(v283, v284, v285, v286, v287, v230);

            v397[0] = 0;
            v293 = objc_msgSend_countOfGridLinesInBody_forAxis_minor_outNewLineDescriptors_(v225, v289, v290, v291, v292, v395, v288, v278, v397);
            v298 = objc_msgSend_objectValueForProperty_(v288, v294, v295, v296, v297, 1038);
            objc_msgSend_width(v298, v299, v300, v301, v302);
            if (v293)
            {
              v304 = 0;
              if (v303 >= 1.0)
              {
                v305 = -1.0;
              }

              else
              {
                v305 = -v303;
              }

              do
              {
                TSURectWithPoints();
                CGRectInset(v409, v305, v305);
                CGPathAddRectSafe();
                v304 += 32;
                --v293;
              }

              while (v293);
            }

            free(v397[0]);
          }

LABEL_76:
          v306 = objc_msgSend_pathType(v29, v240, v241, v242, v243);
          v311 = objc_msgSend_axisLineType(TSCHSelectionPathType, v307, v308, v309, v310);
          if (objc_msgSend_isEqual_(v306, v312, v313, v314, v315, v311))
          {
            v320 = objc_msgSend_argumentsCount(v29, v316, v317, v318, v319) == 0;

            if (v320)
            {
              goto LABEL_84;
            }

            v325 = objc_msgSend_model(v395, v321, v322, v323, v324);
            v330 = objc_msgSend_seriesList(v325, v326, v327, v328, v329);
            v335 = objc_msgSend_firstObject(v330, v331, v332, v333, v334);
            v340 = objc_msgSend_seriesType(v335, v336, v337, v338, v339);
            v306 = objc_msgSend_elementBuilder(v340, v341, v342, v343, v344);

            v311 = objc_msgSend_argumentAtIndex_(v29, v345, v346, v347, v348, 0);
            v353 = objc_msgSend_model(v395, v349, v350, v351, v352);
            v358 = objc_msgSend_axisForID_(v353, v354, v355, v356, v357, v311);

            v363 = objc_msgSend_model(v358, v359, v360, v361, v362);
            v368 = objc_msgSend_chartInfo(v363, v364, v365, v366, v367);
            v373 = objc_msgSend_objectValueForProperty_(v368, v369, v370, v371, v372, 1080);

            objc_msgSend_width(v373, v374, v375, v376, v377);
            v379 = v378;
            v380 = *(MEMORY[0x277CBF2C0] + 16);
            *v397 = *MEMORY[0x277CBF2C0];
            v398 = v380;
            v399 = *(MEMORY[0x277CBF2C0] + 32);
            if (objc_msgSend_hasAxisLineInBody_forAxis_outTransform_outLine_(v306, v381, *&v399, *&v380, v382, v395, v358, v397, &v401))
            {
              v383 = v379 * 0.5;
              TSURectWithPoints();
              v388 = -v383;
              if (v383 >= 1.0)
              {
                v388 = -1.0;
              }

              CGRectInset(*&v384, v388, v388);
              CGPathAddRectSafe();
            }
          }

LABEL_84:
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, v25, v26, v27, &v402, v407, 16);
      }

      while (v23);
    }
  }

  return path;
}

@end