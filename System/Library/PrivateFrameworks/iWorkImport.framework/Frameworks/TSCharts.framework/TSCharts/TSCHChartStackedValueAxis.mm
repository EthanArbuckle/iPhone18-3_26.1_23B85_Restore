@interface TSCHChartStackedValueAxis
- (double)interceptForAxis:(id)a3;
- (double)totalForGroupIndex:(unint64_t)a3;
- (double)totalForValueIndex:(unint64_t)a3;
- (double)unitSpaceValueForSeries:(id)a3 groupIndex:(unint64_t)a4 min:(double)a5 max:(double)a6;
- (double)unitSpaceValuesForSeries:(id)a3 groupIndexSet:(id)a4 min:(double)a5 max:(double)a6;
- (id)groupIndexesWhereSeriesIsLastSeries:(id)a3 fromRenderGroupIndexSet:(id)a4;
- (id)p_orthogonalAxisForSeries:(id)a3;
- (void)updateGridValueTypeInterceptInAnalysis:(id)a3;
- (void)updateModelAxisAnalysis:(id)a3;
- (void)updateMultiDataModelAxisAnalysis:(id)a3;
@end

@implementation TSCHChartStackedValueAxis

- (id)p_orthogonalAxisForSeries:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_axisID(self, v5, v6, v7, v8);
  v14 = objc_msgSend_type(v9, v10, v11, v12, v13);

  if (v14 == 2)
  {
    objc_msgSend_axisIDForAxisType_(v4, v15, v16, v17, v18, 1);
    goto LABEL_5;
  }

  if (v14 == 1)
  {
    objc_msgSend_axisIDForAxisType_(v4, v15, v16, v17, v18, 2);
    v19 = LABEL_5:;
    v24 = objc_msgSend_model(self, v20, v21, v22, v23);
    v29 = objc_msgSend_axisForID_(v24, v25, v26, v27, v28, v19);

    goto LABEL_7;
  }

  v30 = MEMORY[0x277D81150];
  v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCHChartStackedValueAxis p_orthogonalAxisForSeries:]");
  v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStackedValueAxis.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 48, 0, "don't know of an axis orthogonal to axisType: %ld", v14);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
  v29 = 0;
LABEL_7:

  return v29;
}

- (void)updateModelAxisAnalysis:(id)a3
{
  v214 = *MEMORY[0x277D85DE8];
  v191 = a3;
  objc_msgSend_setTotals_(v191, v4, v5, v6, v7, 0);
  v193 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v198 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9, v10, v11);
  v190 = objc_msgSend_axisID(self, v12, v13, v14, v15);
  v20 = objc_msgSend_model(self, v16, v17, v18, v19);
  v196 = objc_msgSend_seriesList(v20, v21, v22, v23, v24);

  v29 = objc_msgSend_model(self, v25, v26, v27, v28);
  v34 = objc_msgSend_numberOfMultiDataSets(v29, v30, v31, v32, v33);

  v39 = objc_msgSend_model(self, v35, v36, v37, v38);
  v194 = objc_msgSend_numberOfValues(v39, v40, v41, v42, v43);

  v192 = v34;
  if (v34)
  {
    v47 = 0;
    v48 = 1;
    v49 = 0.0;
    v50 = 0.0;
    do
    {
      if (v194)
      {
        for (i = 0; i != v194; ++i)
        {
          v195 = v48;
          v209 = 0u;
          v210 = 0u;
          v207 = 0u;
          v208 = 0u;
          obj = objc_msgSend_reverseObjectEnumerator(v196, v44, 0.0, v45, v46);
          v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, v53, v54, v55, &v207, v213, 16);
          if (v56)
          {
            v61 = v56;
            v62 = *v208;
            while (2)
            {
              for (j = 0; j != v61; ++j)
              {
                if (*v208 != v62)
                {
                  objc_enumerationMutation(obj);
                }

                v64 = *(*(&v207 + 1) + 8 * j);
                v65 = objc_msgSend_seriesIndex(v64, v57, v58, v59, v60);
                v70 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v66, v67, v68, v69, v65);
                v75 = objc_msgSend_objectForKeyedSubscript_(v198, v71, v72, v73, v74, v70);

                if (!v75)
                {
                  v80 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v76, v77, v78, v79);
                  v85 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v81, v82, v83, v84, v65);
                  objc_msgSend_setObject_forKeyedSubscript_(v198, v86, v87, v88, v89, v80, v85);
                }

                v91 = objc_msgSend_valueForAxis_valueIndex_multiDataSetIndex_(v64, v76, v77, v78, v79, self, i, v47);
                if (v91)
                {
                  v95 = objc_msgSend_seriesType(v64, v90, v92, v93, v94);
                  IsLastSeriesWithData = objc_msgSend_excludesZeroValuesWhenDeterminingIfSeriesIsLastSeriesWithData(v95, v96, v97, v98, v99);

                  if (!IsLastSeriesWithData || (objc_msgSend_doubleValue(v91, v101, v102, v103, v104), v102 != 0.0))
                  {
                    v105 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v101, v102, v103, v104, v65);
                    v110 = objc_msgSend_objectForKeyedSubscript_(v198, v106, v107, v108, v109, v105);
                    objc_msgSend_addIndex_(v110, v111, v112, v113, v114, i);

                    goto LABEL_19;
                  }
                }
              }

              v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v57, v58, v59, v60, &v207, v213, 16);
              if (v61)
              {
                continue;
              }

              break;
            }
          }

LABEL_19:

          v205 = 0u;
          v206 = 0u;
          v203 = 0u;
          v204 = 0u;
          v115 = v196;
          v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v115, v116, v117, v118, v119, &v203, v212, 16);
          if (v120)
          {
            v125 = v120;
            v126 = *v204;
            v127 = 0.0;
            v128 = 0.0;
            v129 = 0.0;
            do
            {
              for (k = 0; k != v125; ++k)
              {
                if (*v204 != v126)
                {
                  objc_enumerationMutation(v115);
                }

                v131 = *(*(&v203 + 1) + 8 * k);
                v132 = objc_msgSend_p_orthogonalAxisForSeries_(self, v121, v122, v123, v124, v131);
                objc_msgSend_interceptForAxis_(self, v133, v134, v135, v136, v132);
                v138 = v137;
                v142 = objc_msgSend_valueForAxis_valueIndex_multiDataSetIndex_(v131, v139, v137, v140, v141, self, i, v47);
                v147 = v142;
                if (v142)
                {
                  objc_msgSend_doubleValue(v142, v143, v144, v145, v146);
                  v149 = v148;
                  objc_msgSend_doubleModelToAxisValue_forSeries_(self, v150, v148, v151, v152, v131);
                  v129 = v129 + v149;
                  v154 = v153 < v138;
                  v155 = v128 + v153;
                  v156 = v127 + v153;
                  if (v154)
                  {
                    v128 = v155;
                  }

                  else
                  {
                    v127 = v156;
                  }
                }
              }

              v125 = objc_msgSend_countByEnumeratingWithState_objects_count_(v115, v121, v122, v123, v124, &v203, v212, 16);
            }

            while (v125);
          }

          else
          {
            v127 = 0.0;
            v128 = 0.0;
            v129 = 0.0;
          }

          v160 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v157, v129, v158, v159);
          objc_msgSend_addObject_(v193, v161, v162, v163, v164, v160);

          if ((v195 & 1) == 0)
          {
            if (v127 <= v50)
            {
              v127 = v50;
            }

            if (v128 >= v49)
            {
              v128 = v49;
            }
          }

          v165 = 0;
          LOBYTE(v48) = 0;
          v49 = v128;
          v50 = v127;
        }
      }

      else
      {
        v165 = v48;
        v127 = v50;
        v128 = v49;
      }

      ++v47;
      v49 = v128;
      v50 = v127;
      v48 = v165;
    }

    while (v47 != v192);
  }

  else
  {
    v127 = 0.0;
    v128 = 0.0;
  }

  objc_msgSend_setModelMax_(v191, v44, v127, v45, v46);
  objc_msgSend_setModelMin_(v191, v166, v128, v167, v168);
  objc_msgSend_setTotals_(v191, v169, v170, v171, v172, v193);
  objc_msgSend_setSeriesIndexToValueIndexesWhereSeriesIsLastSeries_(v191, v173, v174, v175, v176, v198);
  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  v177 = v196;
  v182 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v178, v179, v180, v181, &v199, v211, 16);
  if (v182)
  {
    v187 = v182;
    v188 = *v200;
    do
    {
      for (m = 0; m != v187; ++m)
      {
        if (*v200 != v188)
        {
          objc_enumerationMutation(v177);
        }

        objc_msgSend_updateModelMinMaxForErrorBarsOnSeries_axisID_analysis_(self, v183, v184, v185, v186, *(*(&v199 + 1) + 8 * m), v190, v191);
      }

      v187 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v183, v184, v185, v186, &v199, v211, 16);
    }

    while (v187);
  }
}

- (void)updateMultiDataModelAxisAnalysis:(id)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCHChartStackedValueAxis updateMultiDataModelAxisAnalysis:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStackedValueAxis.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 184, 0, "Should not be called for this axis since it doesn't support reference lines");

  v21 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v21, v17, v18, v19, v20);
}

- (double)unitSpaceValueForSeries:(id)a3 groupIndex:(unint64_t)a4 min:(double)a5 max:(double)a6
{
  v75 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v69 = objc_msgSend_p_orthogonalAxisForSeries_(self, v11, v12, v13, v14, v10);
  objc_msgSend_interceptForAxis_(self, v15, v16, v17, v18);
  v20 = v19;
  objc_msgSend_axisInterceptPosition(self, v21, v19, v22, v23);
  v25 = v24;
  v29 = objc_msgSend_valueForAxis_groupIndex_(v10, v26, v24, v27, v28, self, a4);
  v34 = v29;
  if (v29)
  {
    objc_msgSend_doubleValue(v29, v30, v31, v32, v33);
    v36 = v35 - v25;
  }

  else
  {
    v36 = 0.0;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v37 = objc_msgSend_model(self, v30, 0.0, v32, v33);
  v42 = objc_msgSend_seriesList(v37, v38, v39, v40, v41);

  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, v44, v45, v46, &v70, v74, 16);
  if (v47)
  {
    v52 = v47;
    v53 = *v71;
    v54 = v36;
    while (2)
    {
      v55 = 0;
      v56 = v34;
      do
      {
        if (*v71 != v53)
        {
          objc_enumerationMutation(v42);
        }

        v57 = *(*(&v70 + 1) + 8 * v55);
        if (v57 == v10)
        {
          v34 = v56;
          goto LABEL_18;
        }

        v34 = objc_msgSend_valueForAxis_groupIndex_(v57, v48, v49, v50, v51, self, a4);

        if (v34)
        {
          objc_msgSend_doubleValue(v34, v48, v49, v50, v51);
          v59 = v58 - v25;
          v60 = v59 >= v20;
          v49 = v54 + v59;
          if ((((v36 >= v20) ^ v60) & 1) == 0)
          {
            v54 = v49;
          }
        }

        ++v55;
        v56 = v34;
      }

      while (v52 != v55);
      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v48, v49, v50, v51, &v70, v74, 16);
      if (v52)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v54 = v36;
  }

LABEL_18:

  objc_msgSend_doubleModelToAxisValue_forSeries_(self, v61, v25 + v54, v62, v63, v10);
  objc_msgSend_unitSpaceValueForDataSpaceValue_min_max_(self, v64, v65, a5, a6);
  v67 = v66;

  return v67;
}

- (double)unitSpaceValuesForSeries:(id)a3 groupIndexSet:(id)a4 min:(double)a5 max:(double)a6
{
  v145 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v12 = a4;
  if (!v10)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCHChartStackedValueAxis unitSpaceValuesForSeries:groupIndexSet:min:max:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStackedValueAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 238, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v129 = objc_msgSend_p_orthogonalAxisForSeries_(self, v11, v13, v14, v15, v10);
  objc_msgSend_interceptForAxis_(self, v31, v32, v33, v34);
  v36 = v35;
  v40 = objc_msgSend_count(v12, v37, v35, v38, v39);
  v128 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v41, v42, v43, v44, 8 * v40);
  v49 = objc_msgSend_mutableBytes(v128, v45, v46, v47, v48);
  objc_msgSend_axisInterceptPosition(self, v50, v51, v52, v53);
  v55 = v54;
  context = objc_autoreleasePoolPush();
  v127 = v40;
  v125 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v56, v57, v58, v59, v40);
  v64 = objc_msgSend_mutableBytes(v125, v60, v61, v62, v63);
  v65 = objc_autoreleasePoolPush();
  v137[0] = MEMORY[0x277D85DD0];
  v137[1] = 3221225472;
  v137[2] = sub_2762A2FC0;
  v137[3] = &unk_27A6B7368;
  v66 = v10;
  v138 = v66;
  v139 = self;
  v131 = v49;
  v140 = v49;
  v141 = v55;
  v142 = v64;
  v143 = v36;
  objc_msgSend_tsu_enumerateIndexesAndPositionsUsingBlock_(v12, v67, v68, v69, v70, v137);

  objc_autoreleasePoolPop(v65);
  v71 = self;
  v76 = objc_msgSend_model(self, v72, v73, v74, v75);
  v81 = objc_msgSend_seriesList(v76, v77, v78, v79, v80);
  v124 = v66;
  v86 = objc_msgSend_seriesIndex(v66, v82, v83, v84, v85);
  v91 = objc_msgSend_subarrayWithRange_(v81, v87, v88, v89, v90, 0, v86);

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v123 = v91;
  obj = objc_msgSend_reverseObjectEnumerator(v91, v92, 0.0, v93, v94);
  v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v95, v96, v97, v98, &v133, v144, 16);
  if (v99)
  {
    v100 = v99;
    v101 = *v134;
    do
    {
      for (i = 0; i != v100; ++i)
      {
        v103 = v12;
        if (*v134 != v101)
        {
          objc_enumerationMutation(obj);
        }

        v104 = *(*(&v133 + 1) + 8 * i);
        v105 = objc_autoreleasePoolPush();
        v132[0] = MEMORY[0x277D85DD0];
        v132[1] = 3221225472;
        v132[2] = sub_2762A304C;
        v132[3] = &unk_27A6B7368;
        v132[4] = v104;
        v132[5] = v71;
        *&v132[6] = v55;
        *&v132[7] = v36;
        v132[8] = v64;
        v132[9] = v131;
        v12 = v103;
        objc_msgSend_tsu_enumerateIndexesAndPositionsUsingBlock_(v103, v106, v107, v108, v109, v132);
        objc_autoreleasePoolPop(v105);
      }

      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v110, v111, v112, v113, &v133, v144, 16);
    }

    while (v100);
  }

  v117 = v127;
  if (v127)
  {
    v118 = v131;
    do
    {
      objc_msgSend_doubleModelToAxisValue_forSeries_(v71, v114, v55 + *v118, v115, v116, v124);
      objc_msgSend_unitSpaceValueForDataSpaceValue_min_max_(v71, v119, v120, a5, a6);
      *v118++ = v121;
      --v117;
    }

    while (v117);
  }

  objc_autoreleasePoolPop(context);
  return v131;
}

- (void)updateGridValueTypeInterceptInAnalysis:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TSCHChartStackedValueAxis;
  [(TSCHChartAxis *)&v13 updateGridValueTypeInterceptInAnalysis:v4];
  if (objc_msgSend_gridValueType(v4, v5, v6, v7, v8) == 2)
  {
    objc_msgSend_updateAxisDateInterceptInAnalysis_(self, v9, v10, v11, v12, v4);
  }
}

- (double)interceptForAxis:(id)a3
{
  v4 = a3;
  v9 = v4;
  v10 = NAN;
  if (v4 && v4 != self)
  {
    v11 = objc_msgSend_model(self, v5, v6, v7, v8);
    v16 = objc_msgSend_model(v9, v12, v13, v14, v15);

    if (v11 == v16)
    {
      v21 = objc_msgSend_axisID(self, v17, v18, v19, v20);
      v26 = objc_msgSend_axisID(v9, v22, v23, v24, v25);
      v31 = objc_msgSend_intersectsAxisID_(v21, v27, v28, v29, v30, v26);

      if (v31)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = NAN;
      }
    }

    else
    {
      v10 = NAN;
    }
  }

  return v10;
}

- (double)totalForGroupIndex:(unint64_t)a3
{
  v8 = objc_msgSend_model(self, a2, v3, v4, v5);
  v13 = objc_msgSend_seriesList(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_lastObject(v13, v14, v15, v16, v17);

  v23 = objc_msgSend_valueIndexAtGroupIndex_(v18, v19, v20, v21, v22, a3);
  objc_msgSend_totalForValueIndex_(self, v24, v25, v26, v27, v23);
  v29 = v28;

  return v29;
}

- (double)totalForValueIndex:(unint64_t)a3
{
  v7 = objc_msgSend_analysis(self, a2, v3, v4, v5);
  v12 = objc_msgSend_totals(v7, v8, v9, v10, v11);

  v21 = 0.0;
  if (objc_msgSend_count(v12, v13, v14, v15, v16) > a3)
  {
    v22 = objc_msgSend_objectAtIndexedSubscript_(v12, v17, v18, v19, v20, a3);
    objc_msgSend_doubleValue(v22, v23, v24, v25, v26);
    v21 = v27;
  }

  return v21;
}

- (id)groupIndexesWhereSeriesIsLastSeries:(id)a3 fromRenderGroupIndexSet:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CCAB58];
  v8 = a4;
  v13 = objc_msgSend_indexSet(v7, v9, v10, v11, v12);
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = sub_2762A35A0;
  v74[3] = &unk_27A6B7390;
  v75 = v13;
  v14 = v6;
  v76 = v14;
  v15 = v13;
  objc_msgSend_enumerateIndexesUsingBlock_(v8, v16, v17, v18, v19, v74);

  v24 = objc_msgSend_analysis(self, v20, v21, v22, v23);
  v29 = objc_msgSend_seriesIndexToValueIndexesWhereSeriesIsLastSeries(v24, v25, v26, v27, v28);
  v30 = MEMORY[0x277CCABB0];
  v35 = objc_msgSend_seriesIndex(v14, v31, v32, v33, v34);
  v40 = objc_msgSend_numberWithUnsignedInteger_(v30, v36, v37, v38, v39, v35);
  v45 = objc_msgSend_objectForKeyedSubscript_(v29, v41, v42, v43, v44, v40);

  v50 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v15, v46, v47, v48, v49, v45);
  v55 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v51, v52, v53, v54);
  v68 = MEMORY[0x277D85DD0];
  v69 = 3221225472;
  v70 = sub_2762A35E0;
  v71 = &unk_27A6B7390;
  v72 = v55;
  v73 = v14;
  v56 = v14;
  v57 = v55;
  objc_msgSend_enumerateIndexesUsingBlock_(v50, v58, v59, v60, v61, &v68);
  v66 = objc_msgSend_copy(v57, v62, v63, v64, v65, v68, v69, v70, v71);

  return v66;
}

@end