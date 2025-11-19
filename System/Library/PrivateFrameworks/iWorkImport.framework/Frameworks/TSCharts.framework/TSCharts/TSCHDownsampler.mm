@interface TSCHDownsampler
+ (id)downsampleDataForSeries:(id)a3 threshold:(unint64_t)a4;
+ (id)p_downsampleDataUsingGridPartitioningWithSeries:(id)a3 xAxis:(id)a4 yAxis:(id)a5;
+ (id)p_downsampleDataUsingGridPartitioningWithSeries:(id)a3 xAxis:(id)a4 yAxis:(id)a5 sizeAxis:(id)a6;
+ (id)p_downsampleDataUsingTrianglesWithSeries:(id)a3 toValueCount:(unint64_t)a4 radiusAxis:(id)a5 angleAxis:(id)a6;
+ (id)p_downsampleDataUsingTrianglesWithSeries:(id)a3 toValueCount:(unint64_t)a4 xAxis:(id)a5 yAxis:(id)a6 stacked:(BOOL)a7;
@end

@implementation TSCHDownsampler

+ (id)downsampleDataForSeries:(id)a3 threshold:(unint64_t)a4
{
  v6 = a3;
  v11 = objc_msgSend_model(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_axisIDForAxisType_(v6, v12, v13, v14, v15, 1);
  v21 = objc_msgSend_axisForID_(v11, v17, v18, v19, v20, v16);

  v26 = objc_msgSend_axisIDForAxisType_(v6, v22, v23, v24, v25, 2);
  v31 = objc_msgSend_axisForID_(v11, v27, v28, v29, v30, v26);

  v36 = objc_msgSend_seriesType(v6, v32, v33, v34, v35);
  v41 = objc_msgSend_scatterSeries(TSCHChartSeriesType, v37, v38, v39, v40);

  if (v36 == v41)
  {
    v72 = objc_msgSend_p_downsampleDataUsingGridPartitioningWithSeries_xAxis_yAxis_(a1, v42, v43, v44, v45, v6, v21, v31);
LABEL_17:
    v98 = v72;
    goto LABEL_18;
  }

  v46 = objc_msgSend_bubbleSeries(TSCHChartSeriesType, v42, v43, v44, v45);

  if (v36 != v46)
  {
    v51 = objc_msgSend_radarAreaSeries(TSCHChartSeriesType, v47, v48, v49, v50);

    if (v36 == v51)
    {
      v99 = objc_msgSend_axisIDForAxisType_(v6, v52, v53, v54, v55, 5);
      v104 = objc_msgSend_axisForID_(v11, v100, v101, v102, v103, v99);

      v109 = objc_msgSend_axisIDForAxisType_(v6, v105, v106, v107, v108, 6);
      v114 = objc_msgSend_axisForID_(v11, v110, v111, v112, v113, v109);

      v98 = objc_msgSend_p_downsampleDataUsingTrianglesWithSeries_toValueCount_radiusAxis_angleAxis_(a1, v115, v116, v117, v118, v6, a4, v104, v114);

      goto LABEL_18;
    }

    v57 = objc_msgSend_stackedBarSeries(TSCHChartSeriesType, v52, v53, v54, v55);
    if (v36 != v57)
    {
      v61 = objc_msgSend_stackedColumnSeries(TSCHChartSeriesType, v56, v58, v59, v60);
      v66 = v61;
      if (v36 != v61)
      {
        v67 = objc_msgSend_stackedAreaSeries(TSCHChartSeriesType, v62, v63, v64, v65);

        if (v36 != v67)
        {
          objc_msgSend_p_downsampleDataUsingTrianglesWithSeries_toValueCount_xAxis_yAxis_stacked_(a1, v68, v69, v70, v71, v6, a4, v21, v31, 0);
          v72 = LABEL_16:;
          goto LABEL_17;
        }

LABEL_15:
        objc_msgSend_p_downsampleDataUsingTrianglesWithSeries_toValueCount_xAxis_yAxis_stacked_(a1, v68, v69, v70, v71, v6, a4, v21, v31, 1);
        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  v73 = objc_msgSend_axisIDForAxisType_(v6, v47, v48, v49, v50, 4);
  v78 = objc_msgSend_axisForID_(v11, v74, v75, v76, v77, v73);

  if (!v78)
  {
    v83 = MEMORY[0x277D81150];
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v80, v81, v82, "+[TSCHDownsampler downsampleDataForSeries:threshold:]");
    v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, v86, v87, v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDownsampler.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v90, v91, v92, v93, v84, v89, 194, 0, "invalid nil value for '%{public}s'", "sizeAxis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95, v96, v97);
  }

  v98 = objc_msgSend_p_downsampleDataUsingGridPartitioningWithSeries_xAxis_yAxis_sizeAxis_(a1, v79, v80, v81, v82, v6, v21, v31, v78);

LABEL_18:

  return v98;
}

+ (id)p_downsampleDataUsingTrianglesWithSeries:(id)a3 toValueCount:(unint64_t)a4 xAxis:(id)a5 yAxis:(id)a6 stacked:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = a6;
  v13 = a5;
  v18 = objc_msgSend_model(v11, v14, v15, v16, v17);
  v23 = objc_msgSend_numberOfValues(v18, v19, v20, v21, v22);

  objc_opt_class();
  v24 = TSUDynamicCast();

  objc_opt_class();
  v25 = TSUDynamicCast();

  if (v24 | v25)
  {
    if (v7)
    {
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = sub_27628F448;
      v61[3] = &unk_27A6B7310;
      v62 = v11;
      v63 = v24;
      v64 = v25;
      v30 = sub_27628EC28(v23, a4, v61);

      v31 = v62;
    }

    else
    {
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = sub_27628F6A8;
      v57[3] = &unk_27A6B7310;
      v58 = v11;
      v59 = v24;
      v60 = v25;
      v30 = sub_27628EC28(v23, a4, v57);

      v31 = v58;
    }
  }

  else
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "+[TSCHDownsampler p_downsampleDataUsingTrianglesWithSeries:toValueCount:xAxis:yAxis:stacked:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDownsampler.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 216, 0, "Expected a value axis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
    v51 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v47, v48, v49, v50, 0, v23);
    v30 = objc_msgSend_dataWithIndexSet_(TSCHDownsampleData, v52, v53, v54, v55, v51);
  }

  return v30;
}

+ (id)p_downsampleDataUsingTrianglesWithSeries:(id)a3 toValueCount:(unint64_t)a4 radiusAxis:(id)a5 angleAxis:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v16 = objc_msgSend_model(v9, v12, v13, v14, v15);
  v21 = objc_msgSend_numberOfValues(v16, v17, v18, v19, v20);

  objc_opt_class();
  v22 = TSUDynamicCast();

  if (v10 && v22)
  {
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_27628F994;
    v53[3] = &unk_27A6B7310;
    v54 = v9;
    v55 = v22;
    v56 = v10;
    v27 = sub_27628EC28(v21, a4, v53);
  }

  else
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "+[TSCHDownsampler p_downsampleDataUsingTrianglesWithSeries:toValueCount:radiusAxis:angleAxis:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDownsampler.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 236, 0, "These axes should not be nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
    v47 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v43, v44, v45, v46, 0, v21);
    v27 = objc_msgSend_dataWithIndexSet_(TSCHDownsampleData, v48, v49, v50, v51, v47);
  }

  return v27;
}

+ (id)p_downsampleDataUsingGridPartitioningWithSeries:(id)a3 xAxis:(id)a4 yAxis:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v138 = v7;
  v14 = objc_msgSend_model(v7, v10, v11, v12, v13);
  v19 = objc_msgSend_numberOfValues(v14, v15, v16, v17, v18);

  objc_opt_class();
  v131 = v8;
  v20 = TSUDynamicCast();
  objc_opt_class();
  v130 = v9;
  v21 = TSUDynamicCast();
  v135 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v22, v23, v24, v25);
  v134 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v26, v27, v28, v29);
  v133 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v30, v31, v32, v33);
  v34 = [TSCHGridPartitioner alloc];
  v137 = objc_msgSend_initWithSourceSize_gridWidth_gridHeight_(v34, v35, *MEMORY[0x277D814F0], *(MEMORY[0x277D814F0] + 8), v36, 400, 400);
  v42 = objc_msgSend_set(MEMORY[0x277CBEB58], v37, v38, v39, v40);
  v136 = v19;
  if (v19)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0x277CCA000uLL;
    v132 = v21;
    do
    {
      v49 = v48;
      v50 = v42;
      v51 = v138;
      v52 = v20;
      v54 = v21;
      if (v20)
      {
        v58 = objc_msgSend_valueForAxis_valueIndex_(v51, v53, v55, v56, v57, v52, v47);
        v63 = v58;
        if (v58)
        {
          objc_msgSend_doubleValue(v58, v59, v60, v61, v62);
          v65 = v64;
        }

        else
        {
          v65 = 0.0;
        }

        if (v21)
        {
LABEL_10:
          v67 = objc_msgSend_valueForAxis_valueIndex_(v51, v53, v55, v56, v57, v54, v47);
          v72 = v67;
          if (v67)
          {
            objc_msgSend_doubleValue(v67, v68, v69, v70, v71);
            v66 = v73;
          }

          else
          {
            v66 = 0.0;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v65 = v47;
        if (v21)
        {
          goto LABEL_10;
        }
      }

      v66 = v47;
LABEL_14:
      objc_msgSend_unitSpaceValueForDataSpaceValue_(v52, v53, v65, v56, v57);
      v75 = v74;
      objc_msgSend_unitSpaceValueForDataSpaceValue_(v54, v76, v66, v77, v78);
      v80 = v79;

      v83 = objc_msgSend_gridKeyForSourcePoint_(v137, v81, v75, v80, v82);
      if (v83 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v42 = v50;
        v48 = v49;
      }

      else
      {
        v48 = v49;
        v84 = objc_msgSend_numberWithUnsignedInteger_(*(v49 + 2992), v41, v43, v44, v45, v83);
        v42 = v50;
        if ((objc_msgSend_containsObject_(v50, v85, v86, v87, v88, v84) & 1) == 0)
        {
          v89 = v133;
          v90 = v134;
          objc_msgSend_addIndex_(v135, v91, v92, v93, v94, v47);
          v99 = objc_msgSend_numberWithUnsignedInteger_(*(v49 + 2992), v95, v96, v97, v98, v47);
          objc_msgSend_numberWithUnsignedInteger_(*(v49 + 2992), v100, v101, v102, v103, v46);
          v105 = v104 = v20;
          objc_msgSend_setObject_forKeyedSubscript_(v90, v106, v107, v108, v109, v99, v105);

          v42 = v50;
          v114 = objc_msgSend_numberWithUnsignedInteger_(*(v49 + 2992), v110, v111, v112, v113, v46);
          v119 = objc_msgSend_numberWithUnsignedInteger_(*(v49 + 2992), v115, v116, v117, v118, v47);
          objc_msgSend_setObject_forKeyedSubscript_(v89, v120, v121, v122, v123, v114, v119);

          v48 = v49;
          v20 = v104;
          v21 = v132;

          ++v46;
          objc_msgSend_addObject_(v50, v124, v125, v126, v127, v84);
        }
      }

      ++v47;
    }

    while (v136 != v47);
  }

  v128 = objc_msgSend_dataWithIndexSet_indexToPositionMap_positionToIndexMap_(TSCHDownsampleData, v41, v43, v44, v45, v135, v133, v134);

  return v128;
}

+ (id)p_downsampleDataUsingGridPartitioningWithSeries:(id)a3 xAxis:(id)a4 yAxis:(id)a5 sizeAxis:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v147 = a6;
  v16 = objc_msgSend_model(v9, v12, v13, v14, v15);
  v21 = objc_msgSend_numberOfValues(v16, v17, v18, v19, v20);

  objc_opt_class();
  v144 = v10;
  v22 = TSUDynamicCast();
  objc_opt_class();
  v142 = v11;
  v23 = TSUDynamicCast();
  v146 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v24, v25, v26, v27);
  v148 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v28, v29, v30, v31);
  v32 = [TSCHGridPartitioner alloc];
  v36 = objc_msgSend_initWithSourceSize_gridWidth_gridHeight_(v32, v33, *MEMORY[0x277D814F0], *(MEMORY[0x277D814F0] + 8), v34, 400, 400);
  if (v21)
  {
    v40 = 0;
    v145 = v9;
    do
    {
      v41 = v9;
      v42 = v22;
      v44 = v23;
      if (v22)
      {
        v48 = objc_msgSend_valueForAxis_valueIndex_(v41, v43, v45, v46, v47, v42, v40, v142, v144);
        v53 = v48;
        if (v48)
        {
          objc_msgSend_doubleValue(v48, v49, v50, v51, v52);
          v55 = v54;
        }

        else
        {
          v55 = 0.0;
        }

        if (!v23)
        {
LABEL_7:
          v56 = v40;
          goto LABEL_14;
        }
      }

      else
      {
        v55 = v40;
        if (!v23)
        {
          goto LABEL_7;
        }
      }

      v57 = objc_msgSend_valueForAxis_valueIndex_(v41, v43, v45, v46, v47, v44, v40, v142);
      v62 = v57;
      if (v57)
      {
        objc_msgSend_doubleValue(v57, v58, v59, v60, v61);
        v56 = v63;
      }

      else
      {
        v56 = 0.0;
      }

LABEL_14:
      objc_msgSend_unitSpaceValueForDataSpaceValue_(v42, v43, v55, v46, v47, v142);
      v65 = v64;
      objc_msgSend_unitSpaceValueForDataSpaceValue_(v44, v66, v56, v67, v68);
      v70 = v69;

      v73 = objc_msgSend_gridKeyForSourcePoint_(v36, v71, v65, v70, v72);
      if (v73 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v74 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v35, v37, v38, v39, v73);
        v75 = MEMORY[0x277CCABB0];
        v80 = objc_msgSend_valueForAxis_valueIndex_(v41, v76, v77, v78, v79, v147, v40);
        objc_msgSend_doubleValue(v80, v81, v82, v83, v84);
        v89 = objc_msgSend_numberWithDouble_(v75, v85, v86, v87, v88);

        v94 = objc_msgSend_objectForKeyedSubscript_(v148, v90, v91, v92, v93, v74);
        v99 = v94;
        if (!v94)
        {
          goto LABEL_18;
        }

        v100 = objc_msgSend_second(v94, v95, v96, v97, v98);
        objc_msgSend_tsu_CGFloatValue(v100, v101, v102, v103, v104);
        v106 = v105;

        objc_msgSend_tsu_CGFloatValue(v89, v107, v108, v109, v110);
        if (v106 < v112)
        {
          v115 = objc_msgSend_first(v99, v111, v112, v113, v114);
          v120 = objc_msgSend_unsignedIntegerValue(v115, v116, v117, v118, v119);

          objc_msgSend_removeIndex_(v146, v121, v122, v123, v124, v120);
LABEL_18:
          objc_msgSend_addIndex_(v146, v95, v96, v97, v98, v40);
          v125 = MEMORY[0x277D812A8];
          v130 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v126, v127, v128, v129, v40);
          v135 = objc_msgSend_pairWithFirst_second_(v125, v131, v132, v133, v134, v130, v89);
          objc_msgSend_setObject_forKeyedSubscript_(v148, v136, v137, v138, v139, v135, v74);

          v9 = v145;
        }
      }

      ++v40;
    }

    while (v21 != v40);
  }

  v140 = objc_msgSend_dataWithIndexSet_(TSCHDownsampleData, v35, v37, v38, v39, v146, v142);

  return v140;
}

@end