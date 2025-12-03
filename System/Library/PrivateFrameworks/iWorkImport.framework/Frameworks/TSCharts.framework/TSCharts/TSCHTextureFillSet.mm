@interface TSCHTextureFillSet
- (id)fillForSeriesIndex:(unint64_t)index seriesType:(id)type context:(id)context;
- (id)fillSetIdentifierForSeriesType:(id)type seriesIndex:(unint64_t)index;
- (id)fillsForDefaultSeriesType;
- (id)swatchFillsWithSwatchSize:(CGSize)size scaleFactor:(double)factor;
- (unint64_t)countOfDefinedSeriesForSeriesType:(id)type;
@end

@implementation TSCHTextureFillSet

- (id)fillSetIdentifierForSeriesType:(id)type seriesIndex:(unint64_t)index
{
  v9 = objc_msgSend_fillPropertyType(type, a2, v4, v5, v6);
  v14 = objc_msgSend_identifier(self, v10, v11, v12, v13);
  v19 = objc_msgSend_identifierWithFillPropertyType_seriesIndex_textureSetID_(TSCH3DFillSetIdentifier, v15, v16, v17, v18, v9, index, v14);

  return v19;
}

- (unint64_t)countOfDefinedSeriesForSeriesType:(id)type
{
  v7 = objc_msgSend_fillSetIdentifierForSeriesType_seriesIndex_(self, a2, v3, v4, v5, type, 0);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHTextureFillSet countOfDefinedSeriesForSeriesType:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 504, 0, "invalid nil value for '%{public}s'", "identifier");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (objc_msgSend_seriesIndex(v7, v6, v8, v9, v10))
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "[TSCHTextureFillSet countOfDefinedSeriesForSeriesType:]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
    v41 = objc_msgSend_seriesIndex(v7, v37, v38, v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v42, v43, v44, v45, v31, v36, 505, 0, "Invalid series index %lu expects 0", v41);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  v50 = objc_msgSend_countOfSeriesInFillSet(v7, v26, v27, v28, v29);

  return v50;
}

- (id)fillForSeriesIndex:(unint64_t)index seriesType:(id)type context:(id)context
{
  typeCopy = type;
  contextCopy = context;
  v14 = objc_msgSend_countOfDefinedSeriesForSeriesType_(self, v10, v11, v12, v13, typeCopy);
  if (v14)
  {
    v19 = index % v14;
    v20 = objc_msgSend_fillSetIdentifierForSeriesType_seriesIndex_(self, v15, v16, v17, v18, typeCopy, v19);
    if (objc_msgSend_seriesIndex(v20, v21, v22, v23, v24) != v19)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCHTextureFillSet fillForSeriesIndex:seriesType:context:]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
      v40 = objc_msgSend_seriesIndex(v20, v36, v37, v38, v39);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v41, v42, v43, v44, v30, v35, 517, 0, "Invalid series index %lu expects %lu", v40, v19);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    }

    objc_opt_class();
    v53 = objc_msgSend_fillWithIdentifier_(TSCH3DFill, v49, v50, v51, v52, v20);
    v54 = TSUCheckedDynamicCast();

    v59 = objc_msgSend_convertForChartSeriesType_context_(v54, v55, v56, v57, v58, typeCopy, contextCopy);
  }

  else
  {
    v59 = 0;
  }

  return v59;
}

- (id)fillsForDefaultSeriesType
{
  v6 = objc_msgSend_column3DSeries(TSCHChartSeriesType, a2, v2, v3, v4);
  v11 = objc_msgSend_fillsForSeriesType_context_(self, v7, v8, v9, v10, v6, 0);

  return v11;
}

- (id)swatchFillsWithSwatchSize:(CGSize)size scaleFactor:(double)factor
{
  height = size.height;
  width = size.width;
  v67 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_fillsForDefaultSeriesType(self, a2, size.width, size.height, factor);
  v8 = MEMORY[0x277CBEB18];
  v13 = objc_msgSend_count(v7, v9, v10, v11, v12);
  v18 = objc_msgSend_arrayWithCapacity_(v8, v14, v15, v16, v17, v13);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v7;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, v20, v21, v22, &v62, v66, 16);
  if (v23)
  {
    v24 = v23;
    p_vtable = TSCH3DTextureTiling.vtable;
    v26 = *v63;
    v60 = *v63;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v63 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v62 + 1) + 8 * i);
        objc_opt_class();
        v29 = TSUCheckedDynamicCast();
        v32 = objc_msgSend_swatchFillWithSize_scaleFactor_(v29, v30, width, height, factor);
        v36 = v32;
        if (!v32)
        {
          v37 = MEMORY[0x277D81150];
          objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v33, v34, v35, "[TSCHTextureFillSet swatchFillsWithSwatchSize:scaleFactor:]");
          v38 = v24;
          v39 = v18;
          v41 = v40 = p_vtable;
          v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v47, v48, v49, v50, v41, v46, 536, 0, "invalid nil value for '%{public}s'", "swatchFill");

          p_vtable = v40;
          v18 = v39;
          v24 = v38;
          v26 = v60;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
          v36 = v28;
        }

        objc_msgSend_addObject_(v18, v31, v33, v34, v35, v36);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v55, v56, v57, v58, &v62, v66, 16);
    }

    while (v24);
  }

  return v18;
}

@end