@interface TSCH3DChartModelEnumerator
+ (TSCH3DChartModelEnumerator)enumeratorWithModel:(id)model chartType:(id)type seriesType:(id)seriesType;
- (BOOL)isStackedPercentageThatRoundsDownToZero;
- (BOOL)isValidNonZero;
- (BOOL)showSeriesName;
- (BOOL)showValueLabels;
- (TSCH3DChartModelEnumerator)initWithModel:(id)model chartType:(id)type seriesType:(id)seriesType;
- (double)axisSpaceValue;
- (id).cxx_construct;
- (id)nextElement:(unint64_t)element;
- (id)nextSeries;
- (id)nextSeries:(unint64_t)series;
- (id)p_resetCoordinateEnumeration;
- (id)seriesFill;
- (id)seriesFillOrStrokeColor;
- (id)seriesName;
- (id)valueString;
- (id)valueStringForLabelResources:(id)resources;
- (tvec2<int>)position;
- (tvec2<int>)size;
- (unint64_t)countSeries;
- (unint64_t)numberOfSeries;
- (unsigned)valueLabelPositionForAxisValue:(double)value;
- (void)resetForReverseSeriesEnumeration:(BOOL)enumeration;
- (void)updateAxes;
- (void)updateValue;
@end

@implementation TSCH3DChartModelEnumerator

+ (TSCH3DChartModelEnumerator)enumeratorWithModel:(id)model chartType:(id)type seriesType:(id)seriesType
{
  modelCopy = model;
  typeCopy = type;
  seriesTypeCopy = seriesType;
  v11 = [self alloc];
  v16 = objc_msgSend_initWithModel_chartType_seriesType_(v11, v12, v13, v14, v15, modelCopy, typeCopy, seriesTypeCopy);

  return v16;
}

- (TSCH3DChartModelEnumerator)initWithModel:(id)model chartType:(id)type seriesType:(id)seriesType
{
  modelCopy = model;
  typeCopy = type;
  seriesTypeCopy = seriesType;
  objc_opt_class();
  v13 = TSUDynamicCast();
  if (!v13)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCH3DChartModelEnumerator initWithModel:chartType:seriesType:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartModelEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 68, 0, "invalid nil value for '%{public}s'", "ct3d");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v39.receiver = self;
  v39.super_class = TSCH3DChartModelEnumerator;
  v32 = [(TSCH3DChartModelEnumerator *)&v39 init];
  v33 = v32;
  if (v32)
  {
    objc_storeStrong(&v32->_model, model);
    objc_storeStrong(&v33->_chartType, v13);
    objc_storeStrong(&v33->_seriesType, seriesType);
    objc_msgSend_resetForReverseSeriesEnumeration_(v33, v34, v35, v36, v37, 0);
  }

  return v33;
}

- (void)updateAxes
{
  seriesType = self->_seriesType;
  v68 = objc_msgSend_series(self, a2, v2, v3, v4);
  v11 = objc_msgSend_valueAxisForSeries_(seriesType, v7, v8, v9, v10);
  valueAxis = self->_valueAxis;
  self->_valueAxis = v11;

  v13 = self->_seriesType;
  v69 = objc_msgSend_series(self, v14, v15, v16, v17);
  v22 = objc_msgSend_coordinateAxisForSeries_(v13, v18, v19, v20, v21);
  coordinateAxis = self->_coordinateAxis;
  self->_coordinateAxis = v22;

  objc_msgSend_interceptForAxis_(self->_valueAxis, v24, v25, v26, v27, self->_coordinateAxis);
  self->_intercept = v28;
  objc_msgSend_unitSpaceValueForDataSpaceValue_(self->_valueAxis, v29, v28, v30, v31);
  self->_unitSpaceIntercept = v32;
  sub_276220EB4(&self->_seriesValues.__begin_, self->_numberOfValues);
  sub_276220EB4(&self->_coordinateValues.__begin_, self->_numberOfValues);
  if (self->_numberOfValues)
  {
    v70 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v33, v34, v35, v36, 0);
    v37 = self->_valueAxis;
    v42 = objc_msgSend_series(self, v38, v39, v40, v41);
    v47 = objc_msgSend_unitSpaceValuesForSeries_groupIndexSet_(v37, v43, v44, v45, v46, v42, v70);

    memcpy(self->_seriesValues.__begin_, v47, 8 * self->_numberOfValues);
    if (objc_msgSend_isRangeContinuous(self->_coordinateAxis, v48, v49, v50, v51))
    {
      v56 = self->_coordinateAxis;
      v57 = objc_msgSend_series(self, v52, v53, v54, v55);
      v62 = objc_msgSend_unitSpaceValuesForSeries_groupIndexSet_(v56, v58, v59, v60, v61, v57, v70);

      memcpy(self->_coordinateValues.__begin_, v62, 8 * self->_numberOfValues);
      v63 = v70;
    }

    else
    {
      numberOfValues = self->_numberOfValues;
      v63 = v70;
      if (numberOfValues)
      {
        for (i = 0; i < numberOfValues; ++i)
        {
          v66 = self->_coordinateAxis;
          if (v66)
          {
            objc_msgSend_unitSpaceValueForCountSpaceValue_(v66, v63, i, v54, v55);
            numberOfValues = self->_numberOfValues;
            v63 = v70;
          }

          else
          {
            v67 = 0.0;
          }

          self->_coordinateValues.__begin_[i] = v67;
        }
      }
    }
  }
}

- (id)p_resetCoordinateEnumeration
{
  numberOfValues = self->_numberOfValues;
  result = self;
  *(result + 21) = -1;
  *(result + 22) = numberOfValues;
  *(result + 23) = 0x7FF8000000000000;
  *(result + 160) = 1;
  return result;
}

- (void)resetForReverseSeriesEnumeration:(BOOL)enumeration
{
  enumerationCopy = enumeration;
  v8 = objc_msgSend_seriesList(self->_model, a2, v3, v4, v5);
  seriesList = self->_seriesList;
  self->_seriesList = v8;

  self->_numberOfValues = objc_msgSend_numberOfGroupsInAllSeries(self->_model, v10, v11, v12, v13);
  v18 = objc_msgSend_numberOfSeries(self, v14, v15, v16, v17);
  selfCopy = self;
  v20 = selfCopy;
  if (enumerationCopy)
  {
    v21 = v18;
  }

  else
  {
    v21 = -1;
  }

  selfCopy->_seriesEnumerator._index = v21;
  selfCopy->_seriesEnumerator._max = v18;
  selfCopy->_seriesEnumerator._value = NAN;
  self->_seriesEnumerator._forward = !enumerationCopy;

  v26 = objc_msgSend_p_resetCoordinateEnumeration(v20, v22, v23, v24, v25);
}

- (unint64_t)countSeries
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = self->_seriesList;
  v7 = 0;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, v4, v5, v6, &v18, v22, 16);
  if (v9)
  {
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v2);
        }

        v15 = objc_msgSend_seriesType(*(*(&v18 + 1) + 8 * v14), v8, v10, v11, v12, v18);
        v16 = objc_opt_class();
        if (v16 == objc_opt_class())
        {
          ++v7;
        }

        ++v14;
      }

      while (v9 != v14);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v8, v10, v11, v12, &v18, v22, 16);
    }

    while (v9);
  }

  return v7;
}

- (unint64_t)numberOfSeries
{
  if (objc_msgSend_isHomogeneous(self->_chartType, a2, v2, v3, v4))
  {
    seriesList = self->_seriesList;

    return objc_msgSend_count(seriesList, v6, v7, v8, v9);
  }

  else
  {

    return MEMORY[0x2821F9670](self, sel_countSeries, v7, v8, v9);
  }
}

- (tvec2<int>)size
{
  v7 = v2;
  v8 = objc_msgSend_numberOfSeries(self, a2, v3, v4, v5);
  *v7 = self->_numberOfValues;
  v7[1] = v8;
  return v8;
}

- (id)nextSeries
{
  self->_coordinateEnumerator._index = 0;
  sub_276220EB4(&self->_seriesValues.__begin_, 0);
  sub_276220EB4(&self->_coordinateValues.__begin_, 0);

  return sub_2762205E0(&self->_seriesEnumerator, self, sel_updateAxes);
}

- (id)nextSeries:(unint64_t)series
{
  if (self->_seriesEnumerator._forward)
  {
    v6 = series - 1;
  }

  else
  {
    v6 = series + 1;
  }

  self->_seriesEnumerator._index = v6;
  return objc_msgSend_nextSeries(self, a2, v3, v4, v5);
}

- (tvec2<int>)position
{
  index = self->_seriesEnumerator._index;
  *v2 = self->_coordinateEnumerator._index;
  v2[1] = index;
  return self;
}

- (void)updateValue
{
  index = self->_coordinateEnumerator._index;
  if (index >= self->_seriesValues.__end_ - self->_seriesValues.__begin_)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartModelEnumerator updateValue]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartModelEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 195, 0, "index out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  begin = self->_coordinateValues.__begin_;
  if (index >= self->_coordinateValues.__end_ - begin)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DChartModelEnumerator updateValue]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartModelEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 196, 0, "index out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    begin = self->_coordinateValues.__begin_;
  }

  self->_seriesEnumerator._value = self->_seriesValues.__begin_[index];
  self->_coordinateEnumerator._value = begin[index];
}

- (id)nextElement:(unint64_t)element
{
  if (element)
  {
    self->_coordinateEnumerator._index = element - 1;
  }

  else
  {
    v7 = objc_msgSend_p_resetCoordinateEnumeration(self, a2, v3, v4, v5);
  }

  return objc_msgSend_nextElement(self, a2, v3, v4, v5);
}

- (double)axisSpaceValue
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(self->_seriesList, a2, v2, v3, v4, self->_seriesEnumerator._index);
  v11 = objc_msgSend_valueForAxis_groupIndex_(v6, v7, v8, v9, v10, self->_valueAxis, self->_coordinateEnumerator._index);
  valueAxis = self->_valueAxis;
  objc_msgSend_doubleValue(v11, v13, v14, v15, v16);
  objc_msgSend_doubleModelToAxisValue_forSeries_(valueAxis, v17, v18, v19, v20, v6);
  v22 = v21;

  return v22;
}

- (BOOL)isStackedPercentageThatRoundsDownToZero
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(self->_seriesList, v3, v5, v6, v7, self->_seriesEnumerator._index);
    index = self->_coordinateEnumerator._index;
    v14 = objc_msgSend_dataFormatterForSeries_groupIndex_(self->_valueAxis, v10, v11, v12, v13, v8, index);
    if (objc_msgSend_usesNumberFormatStructForDataFormatter_(TSCHDataFormatterSupport, v15, v16, v17, v18, v14) && (v24 = objc_msgSend_numberOfDecimalPlaces(v14, v19, v20, v21, v22), v24 != 253))
    {
      objc_msgSend_totalForGroupIndex_series_(v4, v23, v25, v26, v27, index, v8);
      v30 = v29;
      objc_msgSend_axisSpaceValue(self, v31, v29, v32, v33);
      v35 = v34 / v30 * 100.0;
      v36 = __exp10(v24);
      v28 = round(v36 * v35) / v36 == 0.0;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)isValidNonZero
{
  if ((*&self->_coordinateEnumerator._value & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v3 = *&self->_seriesEnumerator._value & 0x7FFFFFFFFFFFFFFFLL;
  return (v3 - 1) < 0xFFFFFFFFFFFFFLL || (v3 - 0x10000000000000) >> 53 < 0x3FF;
}

- (id)valueString
{
  if (objc_msgSend_isValid(self, a2, v2, v3, v4))
  {
    valueAxis = self->_valueAxis;
    v11 = objc_msgSend_series(self, v6, v7, v8, v9);
    v16 = objc_msgSend_elementIndex(self, v12, v13, v14, v15);
    v21 = objc_msgSend_formattedStringForSeries_groupIndex_(valueAxis, v17, v18, v19, v20, v11, v16);

    if (objc_msgSend_length(v21, v22, v23, v24, v25))
    {
      v26 = v21;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)valueStringForLabelResources:(id)resources
{
  resourcesCopy = resources;
  if (objc_msgSend_isValid(self, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_elementIndex(self, v9, v10, v11, v12);
    index = self->_seriesEnumerator._index;
    v40[0] = v13;
    v40[1] = index;
    if (!objc_msgSend_hasResourceAtIndex_(resourcesCopy, v15, v16, v17, v18, v40) || (objc_opt_class(), objc_msgSend_resourceAtIndex_(resourcesCopy, v23, v24, v25, v26, v40), v27 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(), v28 = objc_claimAutoreleasedReturnValue(), v27, objc_msgSend_attributes(v28, v29, v30, v31, v32), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend_string(v33, v34, v35, v36, v37), v38 = objc_claimAutoreleasedReturnValue(), v33, v28, !v38))
    {
      v38 = objc_msgSend_valueString(self, v19, v20, v21, v22);
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (BOOL)showValueLabels
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(self->_seriesList, a2, v2, v3, v4, self->_seriesEnumerator._index);
  v10 = objc_msgSend_intValueForProperty_defaultValue_(v5, v6, v7, v8, v9, 1181, 0) != 0;

  return v10;
}

- (BOOL)showSeriesName
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(self->_seriesList, a2, v2, v3, v4, self->_seriesEnumerator._index);
  v10 = objc_msgSend_intValueForProperty_defaultValue_(v5, v6, v7, v8, v9, 1178, 0) != 0;

  return v10;
}

- (id)seriesName
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(self->_seriesList, a2, v2, v3, v4, self->_seriesEnumerator._index);
  v10 = objc_msgSend_name(v5, v6, v7, v8, v9);

  return v10;
}

- (id)seriesFill
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(self->_seriesList, a2, v2, v3, v4, self->_seriesEnumerator._index);
  v10 = objc_msgSend_objectValueForProperty_(v5, v6, v7, v8, v9, 1160);

  return v10;
}

- (id)seriesFillOrStrokeColor
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(self->_seriesList, a2, v2, v3, v4, self->_seriesEnumerator._index);
  if (objc_msgSend_intValueForProperty_defaultValue_(v5, v6, v7, v8, v9, 1186, 0))
  {
    v15 = objc_msgSend_objectValueForProperty_(v5, v10, v11, v12, v13, 1160);
    if (v15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v19 = objc_msgSend_objectValueForProperty_(v5, v10, v11, v12, v13, 1184);
    v24 = v19;
    if (v19)
    {
      v25 = MEMORY[0x277D801F8];
      v26 = objc_msgSend_color(v19, v20, v21, v22, v23);
      v15 = objc_msgSend_colorWithColor_(v25, v27, v28, v29, v30, v26);
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      goto LABEL_9;
    }
  }

  v15 = objc_msgSend_objectValueForProperty_(v5, v14, v16, v17, v18, 1185);
LABEL_9:

  return v15;
}

- (unsigned)valueLabelPositionForAxisValue:(double)value
{
  selfCopy = self;
  v7 = objc_msgSend_objectAtIndexedSubscript_(self->_seriesList, a2, value, v3, v4, self->_seriesEnumerator._index);
  seriesType = selfCopy->_seriesType;
  v13 = objc_msgSend_intValueForProperty_defaultValue_(v7, v9, v10, v11, v12, 1208, 0);
  v18 = objc_msgSend_filterChartLabelPosition_forSeries_(seriesType, v14, v15, v16, v17, v13, v7);
  v19 = selfCopy->_seriesType;
  objc_msgSend_intercept(selfCopy, v20, v21, v22, v23);
  LODWORD(selfCopy) = objc_msgSend_adjustLabelPosition_forAxisValue_intercept_(v19, v24, value, v25, v26, v18);

  return selfCopy;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 128) = 1;
  *(self + 160) = 1;
  return self;
}

@end