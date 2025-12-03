@interface TSCHReferenceLine
+ (id)defaultNonStyleWithContext:(id)context referenceLineType:(unint64_t)type axis:(id)axis;
+ (id)p_lineLabelForType:(unint64_t)type;
+ (unint64_t)maxNumberOfReferenceLinesOfType:(unint64_t)type;
+ (unint64_t)styleSwapOrStyleOwnerIndexFromAxisID:(id)d refLineIndex:(unint64_t)index;
- (BOOL)labelShowing;
- (BOOL)valueLabelShowing;
- (TSCHChartAxis)axis;
- (TSCHReferenceLine)initWithModel:(id)model axisID:(id)d index:(unint64_t)index uuid:(id)uuid;
- (double)referenceLineAxisValue;
- (float)floatValueForProperty:(int)property defaultValue:(float)value;
- (id)chartInfo;
- (id)context;
- (id)defaultProperties;
- (id)drawableInfo;
- (id)g_genericToDefaultPropertyMap;
- (id)g_operationPropertyNameForGenericProperty:(int)property;
- (id)localizedTypeName;
- (id)model;
- (id)nonstyle;
- (id)objectValueForProperty:(int)property;
- (id)style;
- (id)swapTuplesForMutations:(id)mutations forImport:(BOOL)import;
- (id)transformedTuplesWithTuple:(id)tuple;
- (int)defaultPropertyForGeneric:(int)generic;
- (int)intValueForProperty:(int)property defaultValue:(int)value;
- (void)setStyle:(id)style nonStyle:(id)nonStyle;
@end

@implementation TSCHReferenceLine

- (TSCHReferenceLine)initWithModel:(id)model axisID:(id)d index:(unint64_t)index uuid:(id)uuid
{
  modelCopy = model;
  dCopy = d;
  uuidCopy = uuid;
  v44.receiver = self;
  v44.super_class = TSCHReferenceLine;
  v14 = [(TSCHReferenceLine *)&v44 init];
  if (v14)
  {
    if (!modelCopy)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCHReferenceLine initWithModel:axisID:index:uuid:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLine.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 65, 0, "invalid nil value for '%{public}s'", "model");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }

    objc_storeWeak(&v14->_model, modelCopy);
    objc_storeStrong(&v14->_axisID, d);
    v14->_styleSwapIndex = objc_msgSend_styleSwapOrStyleOwnerIndexFromAxisID_refLineIndex_(TSCHReferenceLine, v33, v34, v35, v36, dCopy, index);
    v41 = objc_msgSend_copy(uuidCopy, v37, v38, v39, v40);
    UUID = v14->_UUID;
    v14->_UUID = v41;
  }

  return v14;
}

+ (unint64_t)maxNumberOfReferenceLinesOfType:(unint64_t)type
{
  if (type - 1 < 4)
  {
    return 1;
  }

  if (type == 5)
  {
    return objc_msgSend_maxNumberOfReferenceLines(self, a2, v3, v4, v5);
  }

  return 0;
}

+ (unint64_t)styleSwapOrStyleOwnerIndexFromAxisID:(id)d refLineIndex:(unint64_t)index
{
  dCopy = d;
  v10 = objc_msgSend_type(dCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_ordinal(dCopy, v11, v12, v13, v14);

  if (v10 >= 8)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "+[TSCHReferenceLine styleSwapOrStyleOwnerIndexFromAxisID:refLineIndex:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLine.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 111, 0, "Axis type can't fit into reserved # bits.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  if (v15 >= 4)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "+[TSCHReferenceLine styleSwapOrStyleOwnerIndexFromAxisID:refLineIndex:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLine.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v43, v44, v45, v36, v41, 112, 0, "Axis ordinal can't fit into reserved # bits.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  return v10 | (32 * index) | (8 * v15);
}

+ (id)defaultNonStyleWithContext:(id)context referenceLineType:(unint64_t)type axis:(id)axis
{
  axisCopy = axis;
  v13 = objc_msgSend_defaultStyleWithContext_(TSCHReferenceLineNonStyle, v9, v10, v11, v12, context);
  v18 = v13;
  if (type >> 31)
  {
    sub_2764A6CDC(v15, v16, v17, v13, v14);
    objc_msgSend_setIntValue_forProperty_(v18, v59, v60, v61, v62, 0x7FFFFFFFLL, 1592);
  }

  else
  {
    objc_msgSend_setIntValue_forProperty_(v13, v14, v15, v16, v17, type, 1592);
  }

  objc_msgSend_setIntValue_forProperty_(v18, v19, v20, v21, v22, 1, 1589);
  objc_msgSend_setIntValue_forProperty_(v18, v23, v24, v25, v26, 1, 1588);
  v31 = objc_msgSend_p_lineLabelForType_(self, v27, v28, v29, v30, type);
  objc_msgSend_setValue_forProperty_(v18, v32, v33, v34, v35, v31, 1585);

  objc_msgSend_setIntValue_forProperty_(v18, v36, v37, v38, v39, type == 5, 1590);
  if (type == 5)
  {
    v44 = MEMORY[0x277CCABB0];
    objc_msgSend_min(axisCopy, v40, v41, v42, v43);
    v46 = v45;
    objc_msgSend_max(axisCopy, v47, v45, v48, v49);
    v53 = objc_msgSend_numberWithDouble_(v44, v51, (v46 + v50) * 0.5, 0.5, v52);
    objc_msgSend_setValue_forProperty_(v18, v54, v55, v56, v57, v53, 1584);
  }

  return v18;
}

+ (id)p_lineLabelForType:(unint64_t)type
{
  if (type - 1 > 4)
  {
    v12 = 0;
  }

  else
  {
    v6 = off_27A6B6858[type - 1];
    v7 = sub_276360774(v3, v4, v5);
    v12 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, v9, v10, v11, v6, &stru_288528678, @"TSCharts");
  }

  return v12;
}

- (double)referenceLineAxisValue
{
  v6 = objc_msgSend_intValueForProperty_defaultValue_(self, a2, v2, v3, v4, 1226, 0);
  v11 = objc_msgSend_axis(self, v7, v8, v9, v10);
  v16 = v11;
  v17 = NAN;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v18 = MEMORY[0x277CCABB0];
        objc_msgSend_currentDataSetModelAverage(v11, v12, v13, v14, v15);
        break;
      case 4:
        v18 = MEMORY[0x277CCABB0];
        objc_msgSend_currentDataSetModelMedian(v11, v12, v13, v14, v15);
        break;
      case 5:
        objc_opt_class();
        v27 = objc_msgSend_objectValueForProperty_(self, v23, v24, v25, v26, 1218);
        v28 = TSUDynamicCast();

        if (v28)
        {
LABEL_16:
          objc_msgSend_doubleValue(v28, v29, v30, v31, v32);
          objc_msgSend_doubleModelToAxisValue_forSeries_(v16, v48, v49, v50, v51, 0);
          v17 = v52;

          goto LABEL_18;
        }

LABEL_17:
        v17 = NAN;
        goto LABEL_18;
      default:
        goto LABEL_18;
    }

LABEL_15:
    v28 = objc_msgSend_numberWithDouble_(v18, v19, v20, v21, v22);
    if (v28)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  switch(v6)
  {
    case 0:
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHReferenceLine referenceLineAxisValue]");
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLine.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 172, 0, "unknown reference line type not expected");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
      goto LABEL_17;
    case 1:
      v18 = MEMORY[0x277CCABB0];
      objc_msgSend_currentDataSetModelMin(v11, v12, v13, v14, v15);
      goto LABEL_15;
    case 2:
      v18 = MEMORY[0x277CCABB0];
      objc_msgSend_currentDataSetModelMax(v11, v12, v13, v14, v15);
      goto LABEL_15;
  }

LABEL_18:

  return v17;
}

- (id)localizedTypeName
{
  v5 = objc_msgSend_intValueForProperty_defaultValue_(self, a2, v2, v3, v4, 1226, 0);
  v10 = 0;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v11 = sub_276360774(v7, v8, v9);
        objc_msgSend_localizedStringForKey_value_table_(v11, v35, v36, v37, v38, @"Average", &stru_288528678, @"TSCharts");
        break;
      case 4:
        v11 = sub_276360774(v7, v8, v9);
        objc_msgSend_localizedStringForKey_value_table_(v11, v43, v44, v45, v46, @"Median", &stru_288528678, @"TSCharts");
        break;
      case 5:
        v11 = sub_276360774(v7, v8, v9);
        objc_msgSend_localizedStringForKey_value_table_(v11, v16, v17, v18, v19, @"Custom", &stru_288528678, @"TSCharts");
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(v5)
    {
      case 0:
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHReferenceLine localizedTypeName]");
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLine.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 207, 0, "Reference line type should never be unknown here");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
        v10 = 0;
        goto LABEL_15;
      case 1:
        v11 = sub_276360774(v7, v8, v9);
        objc_msgSend_localizedStringForKey_value_table_(v11, v39, v40, v41, v42, @"Minimum", &stru_288528678, @"TSCharts");
        break;
      case 2:
        v11 = sub_276360774(v7, v8, v9);
        objc_msgSend_localizedStringForKey_value_table_(v11, v12, v13, v14, v15, @"Maximum", &stru_288528678, @"TSCharts");
        break;
      default:
        goto LABEL_15;
    }
  }
  v10 = ;

LABEL_15:

  return v10;
}

- (BOOL)labelShowing
{
  if (!objc_msgSend_lineShowing(self, a2, v2, v3, v4) || !objc_msgSend_intValueForProperty_defaultValue_(self, v6, v7, v8, v9, 1222, 0))
  {
    return 0;
  }

  v14 = objc_msgSend_objectValueForProperty_(self, v10, v11, v12, v13, 1219);
  v19 = objc_msgSend_length(v14, v15, v16, v17, v18) != 0;

  return v19;
}

- (BOOL)valueLabelShowing
{
  v6 = objc_msgSend_lineShowing(self, a2, v2, v3, v4);
  if (v6)
  {
    LOBYTE(v6) = objc_msgSend_intValueForProperty_defaultValue_(self, v7, v8, v9, v10, 1224, 0) != 0;
  }

  return v6;
}

- (id)defaultProperties
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v11 = objc_msgSend_g_genericToDefaultPropertyMap(self, v7, v8, v9, v10);
  v16 = objc_msgSend_arrayOfBoxedKeys(v11, v12, v13, v14, v15);
  objc_msgSend_addObjectsFromArray_(v6, v17, v18, v19, v20, v16);

  return v6;
}

- (int)defaultPropertyForGeneric:(int)generic
{
  v7 = objc_msgSend_p_genericToDefaultPropertyMap(self, a2, v3, v4, v5);
  if (objc_msgSend_containsKey_(v7, v8, v9, v10, v11, generic))
  {
    v16 = objc_msgSend_intForKey_(v7, v12, v13, v14, v15, generic);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (int)intValueForProperty:(int)property defaultValue:(int)value
{
  v6 = 0;
  if (sub_2762E5130(self, self->_style, self->_nonStyle, *&property, &v6))
  {
    return v6;
  }

  else
  {
    return value;
  }
}

- (float)floatValueForProperty:(int)property defaultValue:(float)value
{
  v7 = 0.0;
  v5 = sub_2762E5658(self, self->_style, self->_nonStyle, *&property, &v7);
  result = v7;
  if (!v5)
  {
    return value;
  }

  return result;
}

- (id)objectValueForProperty:(int)property
{
  v3 = *&property;
  style = self->_style;
  nonStyle = self->_nonStyle;
  v9 = 0;
  v6 = sub_2762E579C(self, style, nonStyle, v3, &v9);
  v7 = v9;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    v7 = 0;
  }

  return v7;
}

- (id)chartInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v7 = objc_msgSend_chartInfo(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (id)drawableInfo
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_drawableInfo(v5, v6, v7, v8, v9);

  return v10;
}

- (id)context
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_context(v5, v6, v7, v8, v9);

  return v10;
}

- (id)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (TSCHChartAxis)axis
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v8 = objc_msgSend_axisForID_(WeakRetained, v4, v5, v6, v7, self->_axisID);

  return v8;
}

- (id)swapTuplesForMutations:(id)mutations forImport:(BOOL)import
{
  importCopy = import;
  mutationsCopy = mutations;
  objc_initWeak(&location, self);
  styleSwapIndex = self->_styleSwapIndex;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2761CC4CC;
  v14[3] = &unk_27A6B6838;
  objc_copyWeak(&v15, &location);
  v12 = objc_msgSend_convertToStyleSwapTuplesForStyleOwner_styleSwapType_nonStyleSwapType_index_fromMutations_forImport_withOptionalStyleValueConversionBlock_(TSCHPropertyMutationHelper, v8, v9, v10, v11, self, 13, 14, styleSwapIndex, mutationsCopy, importCopy, v14);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v12;
}

- (id)style
{
  objc_opt_class();

  return TSUDynamicCast();
}

- (id)nonstyle
{
  objc_opt_class();

  return TSUDynamicCast();
}

- (id)transformedTuplesWithTuple:(id)tuple
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = tuple;
  v3 = MEMORY[0x277CBEA60];
  tupleCopy = tuple;
  v9 = objc_msgSend_arrayWithObjects_count_(v3, v5, v6, v7, v8, v11, 1);

  return v9;
}

- (void)setStyle:(id)style nonStyle:(id)nonStyle
{
  styleCopy = style;
  nonStyleCopy = nonStyle;
  style = self->_style;
  self->_style = styleCopy;
  v10 = styleCopy;

  nonStyle = self->_nonStyle;
  self->_nonStyle = nonStyleCopy;
}

- (id)g_genericToDefaultPropertyMap
{
  if (qword_280A472B0 != -1)
  {
    sub_2764A77A8();
  }

  v3 = qword_280A472A8;

  return v3;
}

- (id)g_operationPropertyNameForGenericProperty:(int)property
{
  v6 = *&property;
  v8 = objc_msgSend_specificPropertyForGeneric_(self, a2, v3, v4, v5);
  if (v8 || (v8 = objc_msgSend_defaultPropertyForGeneric_(self, v9, v10, v11, v12, v6), v8))
  {
    v13 = v8;
  }

  else
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHReferenceLine(__PropertyMaps_GEN) g_operationPropertyNameForGenericProperty:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMaps.GEN.m");
    v33 = String();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v34, v35, v36, v37, v27, v32, 316, 0, "No specific property found for generic %@", v33);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    v13 = 0;
  }

  v14 = objc_msgSend_g_specificPropertyToOperationNameBimap(TSCHBaseStyle, v9, v10, v11, v12);
  v19 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, v16, v17, v18, v13);
  v24 = objc_msgSend_objectForKeyedSubscript_(v14, v20, v21, v22, v23, v19);

  return v24;
}

@end