@interface TSCHErrorBarData
+ (BOOL)errorBarIsVerticalForAxisID:(id)d series:(id)series;
+ (BOOL)hasErrorBarsForSeries:(id)series;
+ (int64_t)errorBarTypeForAxisID:(id)d series:(id)series;
+ (int64_t)p_errorBarSettingForSeries:(id)series useXAxis:(BOOL)axis axisID:(id)d;
- (BOOL)hasErrorDataForInputAxis:(id)axis outputAxis:(id)outputAxis inputAxisContinuous:(BOOL)continuous outputAxisContinuous:(BOOL)axisContinuous groupIndex:(unint64_t)index groupsCount:(unint64_t)count barVertical:(BOOL)vertical barType:(int64_t)self0 outUnitValue:(CGPoint *)self1 outUnitPositive:(CGPoint *)self2 outUnitNegative:(CGPoint *)self3;
- (BOOL)showErrorBarsForAxisID:(id)d;
- (CGPoint)p_getValuePointForGroupIndex:(unint64_t)index inputAxis:(id)axis inputAxisContinuous:(BOOL)continuous outputAxis:(id)outputAxis barVertical:(BOOL)vertical;
- (TSCHErrorBarData)initWithSeries:(id)series;
- (double)maxValueForAxisID:(id)d;
- (double)minValueForAxisID:(id)d;
- (double)p_createArrayOfSeriesOffsetsForAxisID:(id)d count:(unint64_t)count;
- (double)p_createArrayOfSeriesValuesForAxisID:(id)d count:(unint64_t)count;
- (double)p_customErrorForAxisID:(id)d valueIndex:(unint64_t)index positive:(BOOL)positive;
- (double)p_errorForValue:(double *)value onAxisID:(id)d valueIndex:(unint64_t)index positive:(BOOL)positive;
- (double)p_fixedErrorForAxisID:(id)d;
- (double)p_percentageErrorForAxisID:(id)d;
- (double)p_stdDevErrorForAxisID:(id)d;
- (double)p_stdDevFactorForAxisID:(id)d;
- (double)p_stdDevMeanForAxisID:(id)d;
- (double)p_stdErrorErrorForAxisID:(id)d;
- (float)opacityForAxisID:(id)d;
- (id)lineEndForAxisID:(id)d;
- (id)shadowForAxisID:(id)d;
- (id)strokeForAxisID:(id)d;
- (int64_t)p_errorBarSettingForAxisID:(id)d value:(double)value barType:(int64_t)type;
- (int64_t)p_errorBarTypeForAxisID:(id)d;
- (unint64_t)p_stripBadValuesInArray:(double *)array numberOfModelValues:(unint64_t)values;
- (void)p_clearData;
- (void)p_updateDataForAxisID:(id)d;
- (void)p_updateMinMaxForAxisID:(id)d forValues:(double *)values withOffsets:(double *)offsets numberOfModelValues:(unint64_t)modelValues;
- (void)p_updateMinMaxForStackedPercentageAxis:(id)axis forValues:(double *)values withOffsets:(double *)offsets numberOfModelValues:(unint64_t)modelValues;
- (void)p_updateStdDeviationForAxisID:(id)d forValues:(double *)values withOffsets:(double *)offsets numberOfModelValues:(unint64_t)modelValues;
- (void)p_updateStdErrorForAxisID:(id)d forValues:(double *)values withOffsets:(double *)offsets numberOfModelValues:(unint64_t)modelValues;
- (void)updateIfNeeded;
@end

@implementation TSCHErrorBarData

+ (BOOL)hasErrorBarsForSeries:(id)series
{
  v54 = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  v8 = objc_msgSend_model(seriesCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_chartInfo(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_chartType(v13, v14, v15, v16, v17);
  if (objc_msgSend_supportsErrorBars(v18, v19, v20, v21, v22))
  {
    v27 = objc_msgSend_supportsErrorBarsScatterX(v18, v23, v24, v25, v26);
    objc_msgSend_valueAxisIDs(v18, v28, v29, v30, v31);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v32 = v52 = 0u;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, v34, v35, v36, &v49, v53, 16);
    if (v37)
    {
      v42 = v37;
      v48 = v8;
      v43 = *v50;
      while (2)
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v50 != v43)
          {
            objc_enumerationMutation(v32);
          }

          v45 = *(*(&v49 + 1) + 8 * i);
          if (objc_msgSend_type(v45, v38, v39, v40, v41) - 1 <= 1 && objc_msgSend_p_errorBarSettingForSeries_useXAxis_axisID_(TSCHErrorBarData, v38, v39, v40, v41, seriesCopy, v27, v45))
          {
            v46 = 1;
            goto LABEL_14;
          }
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v38, v39, v40, v41, &v49, v53, 16);
        if (v42)
        {
          continue;
        }

        break;
      }

      v46 = 0;
LABEL_14:
      v8 = v48;
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

+ (BOOL)errorBarIsVerticalForAxisID:(id)d series:(id)series
{
  dCopy = d;
  seriesCopy = series;
  v11 = objc_msgSend_seriesType(seriesCopy, v7, v8, v9, v10);
  isVertical = objc_msgSend_isVertical(v11, v12, v13, v14, v15);

  if (isVertical)
  {
    v21 = objc_msgSend_model(seriesCopy, v17, v18, v19, v20);
    v26 = objc_msgSend_chartInfo(v21, v22, v23, v24, v25);
    v31 = objc_msgSend_chartType(v26, v27, v28, v29, v30);
    v36 = objc_msgSend_supportsErrorBarsScatterX(v31, v32, v33, v34, v35);

    if (v36)
    {
      v41 = objc_msgSend_type(dCopy, v37, v38, v39, v40) != 1;
    }

    else
    {
      v41 = 1;
    }
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

+ (int64_t)errorBarTypeForAxisID:(id)d series:(id)series
{
  seriesCopy = series;
  v10 = objc_msgSend_type(d, v6, v7, v8, v9);
  if ((v10 - 3) >= 0xFFFFFFFE)
  {
    v16 = v10;
    v17 = objc_msgSend_model(seriesCopy, v11, v12, v13, v14);
    v22 = objc_msgSend_chartInfo(v17, v18, v19, v20, v21);
    v27 = objc_msgSend_chartType(v22, v23, v24, v25, v26);
    v32 = objc_msgSend_supportsErrorBarsScatterX(v27, v28, v29, v30, v31);

    if (((v16 == 1) & v32) != 0)
    {
      v37 = objc_msgSend_intValueForProperty_defaultValue_(seriesCopy, v33, v34, v35, v36, 1159, 0);
    }

    else
    {
      v37 = objc_msgSend_intValueForProperty_defaultValue_(seriesCopy, v33, v34, v35, v36, 1158, 0);
    }

    v15 = v37;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (TSCHErrorBarData)initWithSeries:(id)series
{
  seriesCopy = series;
  v26.receiver = self;
  v26.super_class = TSCHErrorBarData;
  v6 = [(TSCHErrorBarData *)&v26 init];
  if (v6)
  {
    v10 = objc_msgSend_model(seriesCopy, v5, v7, v8, v9);
    v15 = objc_msgSend_chartInfo(v10, v11, v12, v13, v14);
    v20 = objc_msgSend_chartType(v15, v16, v17, v18, v19);
    v6->_supportsXAxisBars = objc_msgSend_supportsErrorBarsScatterX(v20, v21, v22, v23, v24);
    objc_storeWeak(&v6->_series, seriesCopy);
    v6->_errorBarsInvalid = 1;
    v6->_maxValueGroupIndex = -1;
    v6->_minValueGroupIndex = -1;
  }

  return v6;
}

- (BOOL)showErrorBarsForAxisID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v10 = objc_msgSend_type(dCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_axisForAxisType_(WeakRetained, v11, v12, v13, v14, v10);

  v20 = objc_msgSend_axisID(v15, v16, v17, v18, v19);
  isEqual = objc_msgSend_isEqual_(dCopy, v21, v22, v23, v24, v20);

  if (isEqual && (objc_msgSend_isCategory(v15, v26, v27, v28, v29) & 1) == 0)
  {
    v31 = objc_loadWeakRetained(&self->_series);
    v36 = objc_msgSend_model(v31, v32, v33, v34, v35);

    v41 = objc_msgSend_chartInfo(v36, v37, v38, v39, v40);
    v46 = objc_msgSend_chartType(v41, v42, v43, v44, v45);
    v51 = objc_msgSend_supportsErrorBarsScatterX(v46, v47, v48, v49, v50);
    objc_msgSend_updateIfNeeded(self, v52, v53, v54, v55);
    if ((*&self->_minValue & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&self->_maxValue & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v56 = objc_loadWeakRetained(&self->_series), v61 = objc_msgSend_p_errorBarSettingForSeries_useXAxis_axisID_(TSCHErrorBarData, v57, v58, v59, v60, v56, v51, dCopy), v56, v61))
    {
      v66 = objc_msgSend_strokeForAxisID_(self, v62, v63, v64, v65, dCopy);
      v71 = v66;
      if (v66)
      {
        shouldRender = objc_msgSend_shouldRender(v66, v67, v68, v69, v70);
      }

      else
      {
        shouldRender = 0;
      }
    }

    else
    {
      shouldRender = 0;
    }
  }

  else
  {
    shouldRender = 0;
  }

  return shouldRender;
}

- (float)opacityForAxisID:(id)d
{
  WeakRetained = objc_loadWeakRetained(&self->_series);
  LODWORD(v4) = 1.0;
  objc_msgSend_floatValueForProperty_defaultValue_(WeakRetained, v5, v4, v6, v7, 1168);
  v9 = v8;

  return v9;
}

- (id)strokeForAxisID:(id)d
{
  v7 = objc_msgSend_type(d, a2, v3, v4, v5);
  v12 = v7;
  if ((v7 - 1) >= 2)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHErrorBarData strokeForAxisID:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 153, 0, "Invalid axis type sent to strokeForAxisID. (%ld)", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  else if (v7 == 1 && self->_supportsXAxisBars)
  {
    v13 = 1157;
    goto LABEL_7;
  }

  v13 = 1156;
LABEL_7:
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v34 = objc_msgSend_objectValueForProperty_(WeakRetained, v30, v31, v32, v33, v13);

  return v34;
}

- (id)shadowForAxisID:(id)d
{
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v8 = objc_msgSend_objectValueForProperty_(WeakRetained, v4, v5, v6, v7, 1151);

  return v8;
}

- (id)lineEndForAxisID:(id)d
{
  v7 = objc_msgSend_type(d, a2, v3, v4, v5);
  v12 = v7;
  if ((v7 - 1) >= 2)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHErrorBarData lineEndForAxisID:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 170, 0, "Invalid axis type sent to lineEndForAxisID. (%ld)", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  else if (v7 == 1 && self->_supportsXAxisBars)
  {
    v13 = 1146;
    goto LABEL_7;
  }

  v13 = 1145;
LABEL_7:
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v34 = objc_msgSend_objectValueForProperty_(WeakRetained, v30, v31, v32, v33, v13);

  return v34;
}

- (BOOL)hasErrorDataForInputAxis:(id)axis outputAxis:(id)outputAxis inputAxisContinuous:(BOOL)continuous outputAxisContinuous:(BOOL)axisContinuous groupIndex:(unint64_t)index groupsCount:(unint64_t)count barVertical:(BOOL)vertical barType:(int64_t)self0 outUnitValue:(CGPoint *)self1 outUnitPositive:(CGPoint *)self2 outUnitNegative:(CGPoint *)self3
{
  axisContinuousCopy = axisContinuous;
  continuousCopy = continuous;
  axisCopy = axis;
  outputAxisCopy = outputAxis;
  if (value)
  {
    v25 = positive == 0;
  }

  else
  {
    v25 = 1;
  }

  if (!v25 && negative != 0)
  {
    v42 = vdupq_n_s64(0x7FF8000000000000uLL);
    *value = v42;
    *positive = v42;
    *negative = v42;
    objc_msgSend_p_getValuePointForGroupIndex_inputAxis_inputAxisContinuous_outputAxis_barVertical_(self, v20, v42.x, v23, v24, index, axisCopy, continuousCopy, outputAxisCopy, vertical);
    v45 = v44;
    v47 = v46;
    countCopy = count;
    v173 = axisCopy;
    indexCopy = index;
    v175 = objc_msgSend_axisID(outputAxisCopy, v48, v44, v46, v49);
    WeakRetained = objc_loadWeakRetained(&self->_series);
    v55 = objc_msgSend_seriesType(WeakRetained, v51, v52, v53, v54);

    v56 = 0.0;
    if (type != 3)
    {
      v57 = objc_loadWeakRetained(&self->_series);
      objc_msgSend_beginDataValueForSeries_groupIndex_valueAxisID_(v55, v58, v59, v60, v61, v57, indexCopy, v175);
      v56 = v62;
    }

    v172 = v55;
    v176 = 0.0;
    v63 = objc_loadWeakRetained(&self->_series);
    v68 = objc_msgSend_valueIndexAtGroupIndex_(v63, v64, v65, v66, v67, indexCopy);

    if (vertical)
    {
      if (type != 2 || v47 != 0.0)
      {
        v73 = objc_msgSend_p_errorBarSettingForAxisID_value_barType_(self, v69, v47, v70, v71, v175, type);
        if ((v73 - 1) <= 1)
        {
          v176 = v47;
          objc_msgSend_p_positiveErrorForValue_onAxisID_valueIndex_(self, v72, v74, v75, v76, &v176, v175, v68);
          v74 = v56 + v77;
          positive->y = v74;
        }

        if ((v73 & 0xFFFFFFFFFFFFFFFDLL) == 1)
        {
          v176 = v47;
          objc_msgSend_p_negativeErrorForValue_onAxisID_valueIndex_(self, v72, v74, v75, v76, &v176, v175, v68);
          negative->y = v56 + v78;
        }

        v79 = v56 + v176;
        value->x = v45;
        value->y = v79;
        positive->x = v45;
        negative->x = v45;
        v80 = outputAxisCopy;
        v81 = v173;
LABEL_28:
        v89 = v81;
        v91 = v80;
        if (vertical)
        {
          v95 = continuousCopy;
        }

        else
        {
          v95 = axisContinuousCopy;
        }

        if (vertical)
        {
          v96 = axisContinuousCopy;
        }

        else
        {
          v96 = continuousCopy;
        }

        x = value->x;
        if (v95)
        {
          v98 = objc_loadWeakRetained(&self->_series);
          objc_msgSend_unitSpaceValueForDataSpaceValue_series_groupIndex_addValuesFromAllPreviousSeries_(v89, v99, x, v100, v101, v98, indexCopy, 0);
          value->x = v102;

          v103 = positive->x;
          v104 = objc_loadWeakRetained(&self->_series);
          objc_msgSend_unitSpaceValueForDataSpaceValue_series_groupIndex_addValuesFromAllPreviousSeries_(v89, v105, v103, v106, v107, v104, indexCopy, 0);
          positive->x = v108;

          v109 = negative->x;
          v110 = objc_loadWeakRetained(&self->_series);
          objc_msgSend_unitSpaceValueForDataSpaceValue_series_groupIndex_addValuesFromAllPreviousSeries_(v89, v111, v109, v112, v113, v110, indexCopy, 0);
          negative->x = v114;
        }

        else
        {
          objc_msgSend_min(v89, v90, v92, v93, v94);
          objc_msgSend_unitSpaceValueForCountSpaceValue_min_count_(v89, v119, x, v120, countCopy);
          value->x = v121;
          v122 = positive->x;
          objc_msgSend_min(v89, v123, v121, v124, v125);
          objc_msgSend_unitSpaceValueForCountSpaceValue_min_count_(v89, v126, v122, v127, countCopy);
          positive->x = v128;
          v129 = negative->x;
          objc_msgSend_min(v89, v130, v128, v131, v132);
          objc_msgSend_unitSpaceValueForCountSpaceValue_min_count_(v89, v133, v129, v134, countCopy);
          negative->x = v116;
        }

        y = value->y;
        if (v96)
        {
          v136 = objc_loadWeakRetained(&self->_series);
          objc_msgSend_unitSpaceValueForDataSpaceValue_series_groupIndex_addValuesFromAllPreviousSeries_(v91, v137, y, v138, v139, v136, indexCopy, 0);
          value->y = v140;

          v141 = positive->y;
          v142 = objc_loadWeakRetained(&self->_series);
          objc_msgSend_unitSpaceValueForDataSpaceValue_series_groupIndex_addValuesFromAllPreviousSeries_(v91, v143, v141, v144, v145, v142, indexCopy, 0);
          positive->y = v146;

          v147 = negative->y;
          v148 = objc_loadWeakRetained(&self->_series);
          objc_msgSend_unitSpaceValueForDataSpaceValue_series_groupIndex_addValuesFromAllPreviousSeries_(v91, v149, v147, v150, v151, v148, indexCopy, 0);
          negative->y = v152;
        }

        else
        {
          objc_msgSend_min(v91, v115, v116, v117, v118);
          objc_msgSend_unitSpaceValueForCountSpaceValue_min_count_(v91, v153, y, v154, countCopy);
          value->y = v155;
          v156 = positive->y;
          objc_msgSend_min(v91, v157, v155, v158, v159);
          objc_msgSend_unitSpaceValueForCountSpaceValue_min_count_(v91, v160, v156, v161, countCopy);
          positive->y = v162;
          v163 = negative->y;
          objc_msgSend_min(v91, v164, v162, v165, v166);
          objc_msgSend_unitSpaceValueForCountSpaceValue_min_count_(v91, v167, v163, v168, countCopy);
          negative->y = v169;
        }

        axisCopy = v173;
        v43 = (*&value->y & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&value->x & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;

        goto LABEL_44;
      }
    }

    else if (type != 2 || v45 != 0.0)
    {
      v83 = objc_msgSend_p_errorBarSettingForAxisID_value_barType_(self, v69, v45, v70, v71, v175, type);
      if ((v83 - 1) <= 1)
      {
        v176 = v45;
        objc_msgSend_p_positiveErrorForValue_onAxisID_valueIndex_(self, v82, v84, v85, v86, &v176, v175, v68);
        v84 = v56 + v87;
        positive->x = v84;
      }

      if ((v83 & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        v176 = v45;
        objc_msgSend_p_negativeErrorForValue_onAxisID_valueIndex_(self, v82, v84, v85, v86, &v176, v175, v68);
        negative->x = v56 + v88;
      }

      value->x = v56 + v176;
      value->y = v47;
      positive->y = v47;
      negative->y = v47;
      v80 = v173;
      v81 = outputAxisCopy;
      goto LABEL_28;
    }

    v43 = 0;
    axisCopy = v173;
LABEL_44:

    goto LABEL_45;
  }

  v27 = MEMORY[0x277D81150];
  v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v22, v23, v24, "[TSCHErrorBarData hasErrorDataForInputAxis:outputAxis:inputAxisContinuous:outputAxisContinuous:groupIndex:groupsCount:barVertical:barType:outUnitValue:outUnitPositive:outUnitNegative:]");
  v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 191, 0, "These pointers are not optional! Wish I had 'pass by reference'!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  v43 = 0;
LABEL_45:

  return v43;
}

- (void)updateIfNeeded
{
  v50 = *MEMORY[0x277D85DE8];
  if (self->_errorBarsInvalid)
  {
    objc_msgSend_p_clearData(self, a2, v2, v3, v4);
    WeakRetained = objc_loadWeakRetained(&self->_series);
    v11 = objc_msgSend_model(WeakRetained, v7, v8, v9, v10);

    v16 = objc_msgSend_chartInfo(v11, v12, v13, v14, v15);
    v21 = objc_msgSend_chartType(v16, v17, v18, v19, v20);
    v26 = objc_msgSend_valueAxisIDs(v21, v22, v23, v24, v25);
    self->_supportsXAxisBars = objc_msgSend_supportsErrorBarsScatterX(v21, v27, v28, v29, v30);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v31 = v26;
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, v33, v34, v35, &v45, v49, 16);
    if (v36)
    {
      v41 = v36;
      v42 = *v46;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v46 != v42)
          {
            objc_enumerationMutation(v31);
          }

          v44 = *(*(&v45 + 1) + 8 * i);
          if (objc_msgSend_type(v44, v37, v38, v39, v40, v45) - 1 <= 1)
          {
            objc_msgSend_p_updateDataForAxisID_(self, v37, v38, v39, v40, v44);
          }
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v37, v38, v39, v40, &v45, v49, 16);
      }

      while (v41);
    }

    self->_errorBarsInvalid = 0;
  }
}

- (double)minValueForAxisID:(id)d
{
  dCopy = d;
  objc_msgSend_updateIfNeeded(self, v5, v6, v7, v8);
  v13 = objc_msgSend_type(dCopy, v9, v10, v11, v12);

  if ((v13 - 1) >= 2)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCHErrorBarData minValueForAxisID:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 340, 0, "Invalid axis type sent to minValueForAxisID. (%ld)", v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  WeakRetained = objc_loadWeakRetained(&self->_series);
  v38 = objc_msgSend_axisForAxisType_(WeakRetained, v34, v35, v36, v37, v13);

  if (objc_msgSend_isCategory(v38, v39, v40, v41, v42))
  {
    v43 = INFINITY;
  }

  else
  {
    v44 = 32;
    if (v13 == 1 && self->_supportsXAxisBars)
    {
      v44 = 64;
    }

    v43 = *(&self->super.isa + v44);
  }

  return v43;
}

- (double)maxValueForAxisID:(id)d
{
  dCopy = d;
  objc_msgSend_updateIfNeeded(self, v5, v6, v7, v8);
  v13 = objc_msgSend_type(dCopy, v9, v10, v11, v12);

  if ((v13 - 1) >= 2)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCHErrorBarData maxValueForAxisID:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 360, 0, "Invalid axis type sent to maxValueForAxisID. (%ld)", v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  WeakRetained = objc_loadWeakRetained(&self->_series);
  v38 = objc_msgSend_axisForAxisType_(WeakRetained, v34, v35, v36, v37, v13);

  if (objc_msgSend_isCategory(v38, v39, v40, v41, v42))
  {
    v43 = -INFINITY;
  }

  else
  {
    v44 = 24;
    if (v13 == 1 && self->_supportsXAxisBars)
    {
      v44 = 56;
    }

    v43 = *(&self->super.isa + v44);
  }

  return v43;
}

- (void)p_clearData
{
  v2 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&self->_maxValue = v2;
  *&self->_maxValueScatterX = v2;
  *&self->_standardError = v2;
  *&self->_standardDeviationMean = v2;
  *&self->_standardDeviationScatterX = v2;
}

- (int64_t)p_errorBarSettingForAxisID:(id)d value:(double)value barType:(int64_t)type
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v14 = objc_msgSend_p_errorBarSettingForSeries_useXAxis_axisID_(TSCHErrorBarData, v10, v11, v12, v13, WeakRetained, self->_supportsXAxisBars, dCopy);

  v15 = 3;
  v16 = 2;
  if (v14 != 3)
  {
    v16 = v14;
  }

  if (v14 != 2)
  {
    v15 = v16;
  }

  if (type != 2)
  {
    v15 = v14;
  }

  if (value < 0.0)
  {
    return v15;
  }

  else
  {
    return v14;
  }
}

+ (int64_t)p_errorBarSettingForSeries:(id)series useXAxis:(BOOL)axis axisID:(id)d
{
  axisCopy = axis;
  seriesCopy = series;
  v12 = objc_msgSend_type(d, v8, v9, v10, v11);
  if ((v12 - 3) >= 0xFFFFFFFE)
  {
    v14 = v12;
    v15 = seriesCopy;
    v20 = v15;
    if (v14 == 1 && axisCopy)
    {
      if (objc_msgSend_intValueForProperty_defaultValue_(v15, v16, v17, v18, v19, 1174, 0))
      {
        v25 = objc_msgSend_intValueForProperty_defaultValue_(v20, v21, v22, v23, v24, 1150, 0);
LABEL_9:
        v13 = v25;
LABEL_11:

        goto LABEL_12;
      }
    }

    else if (objc_msgSend_intValueForProperty_defaultValue_(v15, v16, v17, v18, v19, 1173, 0))
    {
      v25 = objc_msgSend_intValueForProperty_defaultValue_(v20, v26, v27, v28, v29, 1149, 0);
      goto LABEL_9;
    }

    v13 = 0;
    goto LABEL_11;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (int64_t)p_errorBarTypeForAxisID:(id)d
{
  dCopy = d;
  v5 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v11 = objc_msgSend_errorBarTypeForAxisID_series_(v5, v7, v8, v9, v10, dCopy, WeakRetained);

  return v11;
}

- (double)p_fixedErrorForAxisID:(id)d
{
  v7 = objc_msgSend_type(d, a2, v3, v4, v5);
  v12 = v7;
  if ((v7 - 1) >= 2)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHErrorBarData p_fixedErrorForAxisID:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 432, 0, "Invalid axis type sent to p_fixedErrorForAxisID. (%ld)", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
LABEL_6:
    v13 = 1143;
    goto LABEL_7;
  }

  if (v7 != 1 || !self->_supportsXAxisBars)
  {
    goto LABEL_6;
  }

  v13 = 1144;
LABEL_7:
  WeakRetained = objc_loadWeakRetained(&self->_series);
  LODWORD(v30) = 10.0;
  objc_msgSend_floatValueForProperty_defaultValue_(WeakRetained, v31, v30, v32, v33, v13);
  v35 = v34;

  return v35;
}

- (double)p_percentageErrorForAxisID:(id)d
{
  v7 = objc_msgSend_type(d, a2, v3, v4, v5);
  v12 = v7;
  if ((v7 - 1) >= 2)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHErrorBarData p_percentageErrorForAxisID:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 444, 0, "Invalid axis type sent to p_percentageErrorForAxisID. (%ld)", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
LABEL_6:
    v13 = 1147;
    goto LABEL_7;
  }

  if (v7 != 1 || !self->_supportsXAxisBars)
  {
    goto LABEL_6;
  }

  v13 = 1148;
LABEL_7:
  WeakRetained = objc_loadWeakRetained(&self->_series);
  LODWORD(v30) = 5.0;
  objc_msgSend_floatValueForProperty_defaultValue_(WeakRetained, v31, v30, v32, v33, v13);
  v35 = v34;

  return v35;
}

- (double)p_stdErrorErrorForAxisID:(id)d
{
  v8 = objc_msgSend_type(d, a2, v3, v4, v5);
  if ((v8 - 1) >= 2)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHErrorBarData p_stdErrorErrorForAxisID:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 456, 0, "Invalid axis type sent to p_stdErrorErrorForAxisID. (%ld)", v8);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = 72;
  if (v8 == 1 && self->_supportsXAxisBars)
  {
    v27 = 96;
  }

  return *(&self->super.isa + v27);
}

- (double)p_stdDevErrorForAxisID:(id)d
{
  v8 = objc_msgSend_type(d, a2, v3, v4, v5);
  if ((v8 - 1) >= 2)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHErrorBarData p_stdDevErrorForAxisID:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 468, 0, "Invalid axis type sent to p_stdDevErrorForAxisID. (%ld)", v8);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = 80;
  if (v8 == 1 && self->_supportsXAxisBars)
  {
    v27 = 104;
  }

  return *(&self->super.isa + v27);
}

- (double)p_stdDevMeanForAxisID:(id)d
{
  v8 = objc_msgSend_type(d, a2, v3, v4, v5);
  if ((v8 - 1) >= 2)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHErrorBarData p_stdDevMeanForAxisID:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 480, 0, "Invalid axis type sent to p_stdDevMeanForAxisID. (%ld)", v8);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = 88;
  if (v8 == 1 && self->_supportsXAxisBars)
  {
    v27 = 112;
  }

  return *(&self->super.isa + v27);
}

- (double)p_stdDevFactorForAxisID:(id)d
{
  v7 = objc_msgSend_type(d, a2, v3, v4, v5);
  v12 = v7;
  if ((v7 - 1) >= 2)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHErrorBarData p_stdDevFactorForAxisID:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 492, 0, "Invalid axis type sent to p_stdDevFactorForAxisID. (%ld)", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
LABEL_6:
    v13 = 1154;
    goto LABEL_7;
  }

  if (v7 != 1 || !self->_supportsXAxisBars)
  {
    goto LABEL_6;
  }

  v13 = 1155;
LABEL_7:
  WeakRetained = objc_loadWeakRetained(&self->_series);
  LODWORD(v30) = 1.0;
  objc_msgSend_floatValueForProperty_defaultValue_(WeakRetained, v31, v30, v32, v33, v13);
  v35 = v34;

  return v35;
}

- (double)p_customErrorForAxisID:(id)d valueIndex:(unint64_t)index positive:(BOOL)positive
{
  positiveCopy = positive;
  v11 = objc_msgSend_type(d, a2, v5, v6, v7);
  v16 = v11;
  if ((v11 - 1) >= 2)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHErrorBarData p_customErrorForAxisID:valueIndex:positive:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 506, 0, "Invalid axis type sent to p_percentageErrorForAxisID. (%ld)", v16);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  else if (v11 == 1 && self->_supportsXAxisBars)
  {
    WeakRetained = objc_loadWeakRetained(&self->_series);
    v22 = WeakRetained;
    if (positiveCopy)
    {
      objc_msgSend_objectValueForProperty_(WeakRetained, v18, v19, v20, v21, 1142);
    }

    else
    {
      objc_msgSend_objectValueForProperty_(WeakRetained, v18, v19, v20, v21, 1140);
    }

    goto LABEL_11;
  }

  v38 = objc_loadWeakRetained(&self->_series);
  v22 = v38;
  if (positiveCopy)
  {
    objc_msgSend_objectValueForProperty_(v38, v39, v40, v41, v42, 1141);
  }

  else
  {
    objc_msgSend_objectValueForProperty_(v38, v39, v40, v41, v42, 1139);
  }

  v43 = LABEL_11:;

  v48 = 0.0;
  if (v43)
  {
    v49 = objc_msgSend_count(v43, v44, v45, v46, v47);
    if (v49 > index)
    {
      objc_opt_class();
      v54 = objc_msgSend_objectAtIndexedSubscript_(v43, v50, v51, v52, v53, index);
      v55 = TSUDynamicCast();

      if (v55)
      {
LABEL_14:
        objc_msgSend_doubleValue(v55, v56, v57, v58, v59);
        v48 = v60;
LABEL_18:

        goto LABEL_19;
      }

LABEL_17:
      v48 = NAN;
      goto LABEL_18;
    }

    v61 = v49;
    if (v49)
    {
      objc_opt_class();
      v66 = objc_msgSend_objectAtIndexedSubscript_(v43, v62, v63, v64, v65, v61 - 1);
      v55 = TSUDynamicCast();

      if (v55)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }
  }

LABEL_19:

  return v48;
}

- (double)p_createArrayOfSeriesValuesForAxisID:(id)d count:(unint64_t)count
{
  dCopy = d;
  v7 = malloc_type_malloc(8 * count, 0x100004000313F17uLL);
  if (count)
  {
    v8 = 0;
    do
    {
      WeakRetained = objc_loadWeakRetained(&self->_series);
      v14 = objc_msgSend_valueForAxisID_valueIndex_(WeakRetained, v10, v11, v12, v13, dCopy, v8);

      if (v14)
      {
        objc_msgSend_doubleValue(v14, v15, v16, v17, v18);
      }

      else
      {
        v19 = 0x7FF8000000000000;
      }

      *&v7[v8] = v19;

      ++v8;
    }

    while (count != v8);
  }

  return v7;
}

- (double)p_createArrayOfSeriesOffsetsForAxisID:(id)d count:(unint64_t)count
{
  dCopy = d;
  if (count)
  {
    WeakRetained = objc_loadWeakRetained(&self->_series);
    v12 = objc_msgSend_seriesType(WeakRetained, v8, v9, v10, v11);

    v13 = malloc_type_malloc(8 * count, 0x100004000313F17uLL);
    v14 = 0;
    do
    {
      v15 = objc_loadWeakRetained(&self->_series);
      objc_msgSend_beginDataValueForSeries_valueIndex_valueAxisID_(v12, v16, v17, v18, v19, v15, v14, dCopy);
      v21 = v20;

      v13[v14++] = v21;
    }

    while (count != v14);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)p_stripBadValuesInArray:(double *)array numberOfModelValues:(unint64_t)values
{
  result = 0;
  if (values)
  {
    arrayCopy = array;
    do
    {
      if ((*arrayCopy & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        array[result++] = *arrayCopy;
      }

      ++arrayCopy;
      --values;
    }

    while (values);
  }

  return result;
}

- (void)p_updateStdErrorForAxisID:(id)d forValues:(double *)values withOffsets:(double *)offsets numberOfModelValues:(unint64_t)modelValues
{
  dCopy = d;
  v15 = objc_msgSend_type(dCopy, v10, v11, v12, v13);
  if ((v15 - 1) >= 2)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v16, v17, v18, "[TSCHErrorBarData p_updateStdErrorForAxisID:forValues:withOffsets:numberOfModelValues:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 590, 0, "Invalid axis type sent to p_updateStdErrorForAxisID. (%ld)", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  if (modelValues)
  {
    modelValuesCopy = modelValues;
    valuesCopy = values;
    do
    {
      v36 = *offsets++;
      v17 = *valuesCopy;
      v16 = v36 + *valuesCopy;
      *valuesCopy++ = v16;
      --modelValuesCopy;
    }

    while (modelValuesCopy);
  }

  objc_msgSend_p_stripBadValuesInArray_numberOfModelValues_(self, v14, v16, v17, v18, values, modelValues);
  supportsXAxisBars = self->_supportsXAxisBars;
  TSUStandardError();
  v39 = 72;
  if (v15 == 1 && supportsXAxisBars)
  {
    v39 = 96;
  }

  *(&self->super.isa + v39) = v38;
}

- (void)p_updateStdDeviationForAxisID:(id)d forValues:(double *)values withOffsets:(double *)offsets numberOfModelValues:(unint64_t)modelValues
{
  dCopy = d;
  objc_msgSend_p_stdDevFactorForAxisID_(self, v11, v12, v13, v14, dCopy);
  v19 = v16;
  if (modelValues)
  {
    modelValuesCopy = modelValues;
    valuesCopy = values;
    do
    {
      v22 = *offsets++;
      v17 = *valuesCopy;
      v16 = v22 + *valuesCopy;
      *valuesCopy++ = v16;
      --modelValuesCopy;
    }

    while (modelValuesCopy);
  }

  objc_msgSend_p_stripBadValuesInArray_numberOfModelValues_(self, v15, v16, v17, v18, values, modelValues);
  TSUStandardDeviationAndMean();
  v26 = objc_msgSend_type(dCopy, v23, v19 * 0.0, v24, v25);
  v31 = v26;
  if ((v26 - 1) >= 2)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "[TSCHErrorBarData p_updateStdDeviationForAxisID:forValues:withOffsets:numberOfModelValues:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 625, 0, "Invalid axis type sent to p_updateStdDeviationForAxisID. (%ld)", v31);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
LABEL_9:
    v32 = 88;
    v33 = 80;
    goto LABEL_10;
  }

  if (v26 != 1 || !self->_supportsXAxisBars)
  {
    goto LABEL_9;
  }

  v32 = 112;
  v33 = 104;
LABEL_10:
  *(&self->super.isa + v33) = v19 * 0.0;
  *(&self->super.isa + v32) = 0;
}

- (double)p_errorForValue:(double *)value onAxisID:(id)d valueIndex:(unint64_t)index positive:(BOOL)positive
{
  positiveCopy = positive;
  dCopy = d;
  v15 = objc_msgSend_p_errorBarTypeForAxisID_(self, v11, v12, v13, v14, dCopy);
  v20 = v15;
  if (v15 <= 2)
  {
    if (v15 == 1)
    {
      objc_msgSend_p_fixedErrorForAxisID_(self, v16, v17, v18, v19, dCopy);
      goto LABEL_12;
    }

    if (v15 != 2)
    {
      goto LABEL_13;
    }

    v22 = fabs(*value);
    objc_msgSend_p_percentageErrorForAxisID_(self, v16, *value, v18, v19, dCopy);
    v24 = v22 * v23 / 100.0;
  }

  else
  {
    if (v15 != 3)
    {
      if (v15 == 4)
      {
        objc_msgSend_p_stdErrorErrorForAxisID_(self, v16, v17, v18, v19, dCopy);
        goto LABEL_12;
      }

      if (v15 == 5)
      {
        objc_msgSend_p_customErrorForAxisID_valueIndex_positive_(self, v16, v17, v18, v19, dCopy, index, positiveCopy);
LABEL_12:
        v24 = v21;
        goto LABEL_14;
      }

LABEL_13:
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHErrorBarData p_errorForValue:onAxisID:valueIndex:positive:]");
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 664, 0, "Uunexpected error bar type at use in p_errorForValue. (%ld)", v20);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
      v24 = NAN;
      goto LABEL_14;
    }

    objc_msgSend_p_stdDevErrorForAxisID_(self, v16, v17, v18, v19, dCopy);
    v24 = v25;
    objc_msgSend_p_stdDevMeanForAxisID_(self, v26, v25, v27, v28, dCopy);
    *value = v29;
  }

LABEL_14:

  return v24;
}

- (void)p_updateMinMaxForAxisID:(id)d forValues:(double *)values withOffsets:(double *)offsets numberOfModelValues:(unint64_t)modelValues
{
  dCopy = d;
  if (!values)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "[TSCHErrorBarData p_updateMinMaxForAxisID:forValues:withOffsets:numberOfModelValues:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 684, 0, "There must be a list of values in order to calculate the min & max for this series.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = objc_msgSend_p_errorBarTypeForAxisID_(self, v10, v12, v13, v14, dCopy);
  if (modelValues)
  {
    v35 = v30;
    v36 = 0;
    v37 = -1;
    v38 = INFINITY;
    v39 = -INFINITY;
    v40 = -1;
    v95 = v30;
    valuesCopy = values;
    while (1)
    {
      v41 = values[v36];
      v98 = v41;
      if (offsets)
      {
        v42 = *offsets;
      }

      else
      {
        v42 = 0.0;
      }

      v43 = objc_msgSend_p_errorBarSettingForAxisID_value_barType_(self, v31, v41, v33, v34, dCopy, v35);
      v46 = v43;
      if (v43 > 1)
      {
        if (v43 == 2)
        {
          objc_msgSend_p_positiveErrorForValue_onAxisID_valueIndex_(self, v31, v44, v45, v34, &v98, dCopy, v36);
          v48 = v73;
          v52 = values[v36];
          goto LABEL_18;
        }

        if (v43 != 3)
        {
          goto LABEL_15;
        }

        v48 = values[v36];
        objc_msgSend_p_negativeErrorForValue_onAxisID_valueIndex_(self, v31, v44, v45, v34, &v98, dCopy, v36);
      }

      else
      {
        if (!v43)
        {
          v48 = values[v36];
          v52 = v48;
          goto LABEL_18;
        }

        if (v43 != 1)
        {
LABEL_15:
          v97 = v40;
          v53 = v37;
          modelValuesCopy = modelValues;
          selfCopy = self;
          v56 = dCopy;
          v57 = MEMORY[0x277D81150];
          v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v44, v45, v34, "[TSCHErrorBarData p_updateMinMaxForAxisID:forValues:withOffsets:numberOfModelValues:]");
          v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
          v64 = v57;
          dCopy = v56;
          self = selfCopy;
          modelValues = modelValuesCopy;
          v37 = v53;
          v40 = v97;
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v65, v66, v67, v68, v58, v63, 726, 0, "Bad error bar setting in p_updateMinMaxForAxisID. (%ld)", v46);

          v35 = v95;
          values = valuesCopy;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
          v52 = INFINITY;
          v48 = -INFINITY;
          goto LABEL_18;
        }

        objc_msgSend_p_positiveErrorForValue_onAxisID_valueIndex_(self, v31, v44, v45, v34, &v98, dCopy, v36);
        v48 = v47;
        v98 = values[v36];
        objc_msgSend_p_negativeErrorForValue_onAxisID_valueIndex_(self, v49, v98, v50, v51, &v98, dCopy, v36);
      }

LABEL_18:
      v33 = v42 + v48;
      v32 = v42 + v52;
      if (v42 + v48 > v39)
      {
        v37 = v36;
        v39 = v42 + v48;
      }

      if (v32 < v38)
      {
        v40 = v36;
        v38 = v32;
      }

      v74 = 1;
      if (offsets)
      {
        ++offsets;
      }

      else
      {
        offsets = 0;
      }

      if (modelValues == ++v36)
      {
        goto LABEL_28;
      }
    }
  }

  v74 = 0;
  v40 = -1;
  v39 = -INFINITY;
  v38 = INFINITY;
  v37 = -1;
LABEL_28:
  v76 = objc_msgSend_type(dCopy, v31, v32, v33, v34);
  if ((v76 - 1) >= 2)
  {
    v80 = MEMORY[0x277D81150];
    v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, v77, v78, v79, "[TSCHErrorBarData p_updateMinMaxForAxisID:forValues:withOffsets:numberOfModelValues:]");
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, v83, v84, v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v87, v88, v89, v90, v81, v86, 753, 0, "Invalid axis type sent to p_updateMinMaxForAxisID. (%ld)", v76);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92, v93, v94);
  }

  if (v74)
  {
    if (v76 == 1 && self->_supportsXAxisBars)
    {
      self->_maxValueScatterX = v39;
      self->_minValueScatterX = v38;
    }

    else
    {
      self->_maxValue = v39;
      self->_minValue = v38;
      self->_maxValueGroupIndex = v37;
      self->_minValueGroupIndex = v40;
    }
  }

  else
  {
    *&self->_maxValueScatterX = 0u;
    *&self->_maxValueGroupIndex = 0u;
    *&self->_maxValue = 0u;
  }
}

- (void)p_updateMinMaxForStackedPercentageAxis:(id)axis forValues:(double *)values withOffsets:(double *)offsets numberOfModelValues:(unint64_t)modelValues
{
  modelValuesCopy5 = modelValues;
  axisCopy = axis;
  offsetsCopy = offsets;
  if (values)
  {
    if (offsets)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v79 = MEMORY[0x277D81150];
    v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHErrorBarData p_updateMinMaxForStackedPercentageAxis:forValues:withOffsets:numberOfModelValues:]");
    v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, v82, v83, v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    v86 = v79;
    offsets = offsetsCopy;
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v87, v88, v89, v90, v80, v85, 776, 0, "There must be a list of values in order to calculate the min & max for this series.");

    modelValuesCopy5 = modelValues;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92, v93, v94);
    if (offsetsCopy)
    {
      goto LABEL_3;
    }
  }

  v95 = MEMORY[0x277D81150];
  v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHErrorBarData p_updateMinMaxForStackedPercentageAxis:forValues:withOffsets:numberOfModelValues:]");
  v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, v98, v99, v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
  v102 = v95;
  offsets = offsetsCopy;
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v102, v103, v104, v105, v106, v96, v101, 777, 0, "There must be a list of offsets in order to calculate the min & max for this series.");

  modelValuesCopy5 = modelValues;
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108, v109, v110);
LABEL_3:
  v14 = objc_msgSend_axisID(axisCopy, v10, v11, v12, v13);
  objc_msgSend_p_fixedErrorForAxisID_(self, v15, v16, v17, v18, v14);
  v20 = v19;
  v25 = objc_msgSend_p_errorBarTypeForAxisID_(self, v21, v19, v22, v23, v14);
  if (v25 != 1)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v26, v27, v28, "[TSCHErrorBarData p_updateMinMaxForStackedPercentageAxis:forValues:withOffsets:numberOfModelValues:]");
    offsets = offsetsCopy;
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 782, 0, "This method only works with fized value error bars.");

    modelValuesCopy5 = modelValues;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
  }

  selfCopy = self;
  v157 = v14;
  if (modelValuesCopy5)
  {
    v44 = 0;
    v45 = -1;
    v46 = INFINITY;
    v47 = -INFINITY;
    v48 = -1;
    while (1)
    {
      objc_msgSend_totalForValueIndex_(axisCopy, v24, v26, v27, v28, v44);
      v49 = values[v44];
      v51 = v50;
      v52 = offsets[v44];
      v56 = objc_msgSend_p_errorBarSettingForAxisID_value_barType_(self, v53, v49, v54, v55, v14, v25);
      if (v56 == 3)
      {
        break;
      }

      v59 = v56;
      if (v56 != 2)
      {
        if (v56 != 1)
        {
          v62 = MEMORY[0x277D81150];
          v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v57, v58, v28, "[TSCHErrorBarData p_updateMinMaxForStackedPercentageAxis:forValues:withOffsets:numberOfModelValues:]");
          v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
          v69 = v62;
          modelValuesCopy5 = modelValues;
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v70, v71, v72, v73, v63, v68, 820, 0, "Bad error bar setting in p_updateMinMaxForAxisID. (%ld)", v59);

          v14 = v157;
          offsets = offsetsCopy;
          self = selfCopy;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76, v77);
          v26 = INFINITY;
          v27 = -INFINITY;
          goto LABEL_16;
        }

        v60 = v49 + v52;
        v27 = (v20 + v49 + v52) / v51;
        goto LABEL_13;
      }

      v61 = v49 + v52;
      v27 = (v20 + v49 + v52) / v51;
LABEL_14:
      v26 = v61 / v51;
LABEL_16:
      if (v27 > v47)
      {
        v48 = v44;
        v47 = v27;
      }

      if (v26 < v46)
      {
        v45 = v44;
        v46 = v26;
      }

      v78 = 1;
      if (modelValuesCopy5 == ++v44)
      {
        goto LABEL_25;
      }
    }

    v60 = v49 + v52;
    v27 = (v49 + v52) / v51;
LABEL_13:
    v61 = v60 - v20;
    goto LABEL_14;
  }

  v78 = 0;
  v48 = -1;
  v47 = -INFINITY;
  v46 = INFINITY;
  v45 = -1;
LABEL_25:
  objc_msgSend_totalForValueIndex_(axisCopy, v24, v26, v27, v28, v48);
  v112 = v111;
  objc_msgSend_totalForValueIndex_(axisCopy, v113, v111, v114, v115, v45);
  v117 = v116;
  v122 = objc_msgSend_type(v14, v118, v116, v119, v120);
  if ((v122 - 1) >= 2)
  {
    v126 = MEMORY[0x277D81150];
    v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, v123, v124, v125, "[TSCHErrorBarData p_updateMinMaxForStackedPercentageAxis:forValues:withOffsets:numberOfModelValues:]");
    v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, v129, v130, v131, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v126, v133, v134, v135, v136, v127, v132, 844, 0, "Invalid axis type sent to p_updateMinMaxForAxisID. (%ld)", v122);

    self = selfCopy;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v137, v138, v139, v140);
  }

  if (v78)
  {
    if (v122 == 1 && self->_supportsXAxisBars)
    {
      v141 = MEMORY[0x277D81150];
      v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, v123, v124, v125, "[TSCHErrorBarData p_updateMinMaxForStackedPercentageAxis:forValues:withOffsets:numberOfModelValues:]");
      v147 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v143, v144, v145, v146, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v141, v148, v149, v150, v151, v142, v147, 848, 0, "A percentage, stacked, scatter chart?????");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v152, v153, v154, v155);
    }

    else
    {
      self->_maxValue = v47 * v112;
      self->_minValue = v46 * v117;
      self->_maxValueGroupIndex = v48;
      self->_minValueGroupIndex = v45;
    }
  }

  else
  {
    *&self->_maxValueScatterX = 0u;
    *&self->_maxValueGroupIndex = 0u;
    *&self->_maxValue = 0u;
  }
}

- (void)p_updateDataForAxisID:(id)d
{
  dCopy = d;
  v8 = objc_msgSend_p_errorBarTypeForAxisID_(self, v4, v5, v6, v7, dCopy);
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v14 = objc_msgSend_model(WeakRetained, v10, v11, v12, v13);
  v19 = objc_msgSend_numberOfValues(v14, v15, v16, v17, v18);

  ArrayOfSeriesValuesForAxisID_count = objc_msgSend_p_createArrayOfSeriesValuesForAxisID_count_(self, v20, v21, v22, v23, dCopy, v19);
  ArrayOfSeriesOffsetsForAxisID_count = objc_msgSend_p_createArrayOfSeriesOffsetsForAxisID_count_(self, v25, v26, v27, v28, dCopy, v19);
  v30 = objc_loadWeakRetained(&self->_series);
  v35 = objc_msgSend_type(dCopy, v31, v32, v33, v34);
  v40 = objc_msgSend_axisForAxisType_(v30, v36, v37, v38, v39, v35);

  v45 = objc_msgSend_currentAxisScaleSetting(v40, v41, v42, v43, v44);
  if (v8 == 3)
  {
    objc_msgSend_p_updateStdDeviationForAxisID_forValues_withOffsets_numberOfModelValues_(self, v46, v47, v48, v49, dCopy, ArrayOfSeriesValuesForAxisID_count, ArrayOfSeriesOffsetsForAxisID_count, v19);
    goto LABEL_5;
  }

  if (v8 == 4)
  {
    objc_msgSend_p_updateStdErrorForAxisID_forValues_withOffsets_numberOfModelValues_(self, v46, v47, v48, v49, dCopy, ArrayOfSeriesValuesForAxisID_count, ArrayOfSeriesOffsetsForAxisID_count, v19);
LABEL_5:
    objc_msgSend_p_updateMinMaxForAxisID_forValues_withOffsets_numberOfModelValues_(self, v50, v51, v52, v53, dCopy, ArrayOfSeriesValuesForAxisID_count, 0, v19);
    goto LABEL_6;
  }

  if (v8 == 1 && v45 == 3)
  {
    objc_opt_class();
    v55 = TSUDynamicCast();
    if (!v55)
    {
      v59 = MEMORY[0x277D81150];
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v56, v57, v58, "[TSCHErrorBarData p_updateDataForAxisID:]");
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHErrorBarData.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v66, v67, v68, v69, v60, v65, 884, 0, "invalid nil value for '%{public}s'", "axis");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
    }

    objc_msgSend_p_updateMinMaxForStackedPercentageAxis_forValues_withOffsets_numberOfModelValues_(self, v54, v56, v57, v58, v55, ArrayOfSeriesValuesForAxisID_count, ArrayOfSeriesOffsetsForAxisID_count, v19);
  }

  else
  {
    objc_msgSend_p_updateMinMaxForAxisID_forValues_withOffsets_numberOfModelValues_(self, v46, v47, v48, v49, dCopy, ArrayOfSeriesValuesForAxisID_count, ArrayOfSeriesOffsetsForAxisID_count, v19);
  }

LABEL_6:
  free(ArrayOfSeriesValuesForAxisID_count);
  free(ArrayOfSeriesOffsetsForAxisID_count);
}

- (CGPoint)p_getValuePointForGroupIndex:(unint64_t)index inputAxis:(id)axis inputAxisContinuous:(BOOL)continuous outputAxis:(id)outputAxis barVertical:(BOOL)vertical
{
  verticalCopy = vertical;
  axisCopy = axis;
  outputAxisCopy = outputAxis;
  if (continuous)
  {
    WeakRetained = objc_loadWeakRetained(&self->_series);
    objc_msgSend_valueForAxis_groupIndex_(WeakRetained, v19, v20, v21, v22, axisCopy, index);
  }

  else
  {
    WeakRetained = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v13, v15, v16, v17, index);
    TSUProtocolCast();
  }
  v23 = ;

  v24 = objc_loadWeakRetained(&self->_series);
  v29 = objc_msgSend_valueForAxis_groupIndex_(v24, v25, v26, v27, v28, outputAxisCopy, index);

  if (v29)
  {
    objc_msgSend_doubleValue(v29, v30, v31, v32, v33);
    v35 = v34;
    v36 = objc_loadWeakRetained(&self->_series);
    objc_msgSend_doubleModelToAxisValue_forSeries_(outputAxisCopy, v37, v35, v38, v39, v36);
    v41 = v40;

    objc_msgSend_doubleValue(v23, v42, v43, v44, v45);
    if (verticalCopy)
    {
      v47 = v46;
    }

    else
    {
      v47 = v41;
    }

    if (!verticalCopy)
    {
      v41 = v46;
    }
  }

  else
  {
    v47 = NAN;
    v41 = NAN;
  }

  v48 = v47;
  v49 = v41;
  result.y = v49;
  result.x = v48;
  return result;
}

@end