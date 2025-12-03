@interface TSCHChartFeature
- (Class)p_selectAxisClassForScale:(int64_t)scale linearClass:(Class)class logClass:(Class)logClass percentClass:(Class)percentClass;
- (NSSet)supportedSeriesTypes;
- (TSCHChartFeature)initWithChartType:(id)type valueAxisIDs:(id)ds categoryAxisIDs:(id)iDs;
- (TSCHChartType)chartType;
- (TSUIntToIntDictionary)genericToSpecificPropertyMap;
- (id)initialSceneWithChartInfo:(id)info layoutSettings:(id *)settings;
- (id)userInterfaceNameForPlaceTitleAtCenter:(BOOL)center;
@end

@implementation TSCHChartFeature

- (TSCHChartFeature)initWithChartType:(id)type valueAxisIDs:(id)ds categoryAxisIDs:(id)iDs
{
  typeCopy = type;
  dsCopy = ds;
  iDsCopy = iDs;
  v14.receiver = self;
  v14.super_class = TSCHChartFeature;
  v11 = [(TSCHChartFeature *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_chartType, typeCopy);
    objc_storeStrong(&v12->_valueAxisIDs, ds);
    objc_storeStrong(&v12->_categoryAxisIDs, iDs);
  }

  return v12;
}

- (Class)p_selectAxisClassForScale:(int64_t)scale linearClass:(Class)class logClass:(Class)logClass percentClass:(Class)percentClass
{
  logClassCopy = class;
  switch(scale)
  {
    case 3:
      if (percentClass)
      {
        logClassCopy = percentClass;
      }

      break;
    case 2:
      if (logClass)
      {
        logClassCopy = logClass;
      }

      break;
    case 1:
      if (!class)
      {
        v12 = MEMORY[0x277D81150];
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, "[TSCHChartFeature p_selectAxisClassForScale:linearClass:logClass:percentClass:]", 0, logClass, percentClass);
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 121, 0, "linear axis not supported for %@", self);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
        logClassCopy = 0;
      }

      break;
    default:
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, "[TSCHChartFeature p_selectAxisClassForScale:linearClass:logClass:percentClass:]", class, logClass, percentClass);
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 136, 0, "invalid value axis scale: %ld", scale);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
      break;
  }

  return logClassCopy;
}

- (TSUIntToIntDictionary)genericToSpecificPropertyMap
{
  if (qword_280A47B10 != -1)
  {
    sub_2764A87D4();
  }

  v3 = qword_280A47B08;

  return v3;
}

- (NSSet)supportedSeriesTypes
{
  v2 = MEMORY[0x277CBEB98];
  WeakRetained = objc_loadWeakRetained(&self->_chartType);
  v8 = objc_msgSend_defaultSeriesType_(WeakRetained, v4, v5, v6, v7, 0);
  v13 = objc_msgSend_setWithObject_(v2, v9, v10, v11, v12, v8);

  return v13;
}

- (id)userInterfaceNameForPlaceTitleAtCenter:(BOOL)center
{
  centerCopy = center;
  v7 = sub_276360774(v3, v4, v5);
  v12 = v7;
  if (centerCopy)
  {
    objc_msgSend_localizedStringForKey_value_table_(v7, v8, v9, v10, v11, @"Center", &stru_288528678, @"TSCharts");
  }

  else
  {
    objc_msgSend_localizedStringForKey_value_table_(v7, v8, v9, v10, v11, @"Top", &stru_288528678, @"TSCharts");
  }
  v13 = ;

  return v13;
}

- (id)initialSceneWithChartInfo:(id)info layoutSettings:(id *)settings
{
  infoCopy = info;
  v10 = objc_msgSend_scene(TSCH3DScene, v6, v7, v8, v9);
  v11 = objc_opt_class();
  objc_msgSend_setAccessorFactory_(v10, v12, v13, v14, v15, v11);
  v20 = objc_msgSend_objectValueForProperty_(infoCopy, v16, v17, v18, v19, 1073);
  v25 = v20;
  if (v20)
  {
    objc_msgSend_w(v20, v21, v22, v23, v24);
    if (*&v27 == 0.0 && !settings->var7)
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "[TSCHChartFeature initialSceneWithChartInfo:layoutSettings:]");
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 418, 0, "invalid w coordinate for 3D scaleVector %@", v25);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
    }

    objc_msgSend_value4(v25, v26, v27, v28, v29);
    LODWORD(v48) = HIDWORD(v58);
    if (*(&v58 + 3) == 0.0)
    {
      LODWORD(v48) = DWORD2(v58);
      HIDWORD(v58) = DWORD2(v58);
    }

    v49 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v45, v48, v46, v47, v10);
    v57 = v58;
    objc_msgSend_setInitialInfoChartScale_(v49, v50, *&v58, v51, v52, &v57);
    v57 = v58;
    objc_msgSend_setInfoChartScale_(v49, v53, *&v58, v54, v55, &v57);
  }

  return v10;
}

- (TSCHChartType)chartType
{
  WeakRetained = objc_loadWeakRetained(&self->_chartType);

  return WeakRetained;
}

@end