@interface TSCHChartModel
- (BOOL)hasReferenceLines;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison;
- (BOOL)isMultiData;
- (BOOL)p_disableCachingMediatorData;
- (BOOL)p_shouldLoadDefaultData;
- (NSArray)axisList;
- (NSArray)categoryAxisList;
- (NSArray)seriesList;
- (NSArray)valueAxisList;
- (NSDictionary)referenceLinesMap;
- (TSCHChartInfo)chartInfo;
- (TSCHChartModel)initWithChartInfo:(id)info;
- (TSCHChartModel)initWithChartInfo:(id)info dataSetIndex:(unint64_t)index;
- (id)addAxisOfClass:(Class)class forIDForPresetImport:(id)import;
- (id)addSeriesAtIndexForPresetImport:(unint64_t)import;
- (id)allGroupsIndexSetForSeries:(id)series;
- (id)axisForID:(id)d;
- (id)barModelCacheForSeries:(unint64_t)series;
- (id)barStackRectsWithFrame:(CGRect)frame withBlock:(id)block;
- (id)cachedDataFormatterPersistableStyleObjectAtSeriesIndex:(unint64_t)index;
- (id)cachedDataFormatterPersistableStyleObjectForID:(id)d;
- (id)cachedObjectForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataSetNameForMultiDataModel;
- (id)firstValueAxis;
- (id)i_axisForID:(id)d;
- (id)initForPresetImportWithChartInfo:(id)info;
- (id)legendModelCacheForStyleProvidingSource:(id)source;
- (id)lineAreaModelCacheForSeries:(unint64_t)series;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)nameForCategory:(unint64_t)category;
- (id)nameForMultiDataSetCategory:(unint64_t)category;
- (id)nameForSeries:(unint64_t)series;
- (id)noSyncAxisList;
- (id)noSyncSeriesList;
- (id)pieSeriesModelCacheForSeries:(unint64_t)series;
- (id)referenceLineForStyleSwapIndex:(unint64_t)index;
- (id)seriesAtIndex:(unint64_t)index;
- (id)seriesDimensionForGridIndex:(unint64_t)index;
- (id)seriesForHiddenDataExportAtIndex:(unint64_t)index;
- (id)syncRoot;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)categoryForMultiDataSetCategoryIndex:(unint64_t)index;
- (unint64_t)gridIndexForSeriesDimension:(id)dimension;
- (unint64_t)maxNumberOfReferenceLines;
- (unint64_t)multiDataSetCategoryIndexForCategory:(unint64_t)category;
- (unint64_t)multiDataSetIndex;
- (unint64_t)numberOfChunkableMultiDataSets;
- (unint64_t)numberOfGridValues;
- (unint64_t)numberOfGroupsInSeriesAtIndex:(unint64_t)index;
- (unint64_t)numberOfMultiDataSets;
- (unint64_t)numberOfSeries;
- (unint64_t)numberOfSeriesForCalculatingBarWidth;
- (unint64_t)numberOfValues;
- (unint64_t)p_lastMultiDataSetIndex;
- (unint64_t)p_numberOfGroupsInSeries:(id)series;
- (unint64_t)styleSwapIndexForReferenceLine:(id)line;
- (void)clearTextEditingSelectionPath;
- (void)disableCachingMediatorDataDuringBlock:(id)block;
- (void)enumerateMultiDataModelsUsingBlock:(id)block;
- (void)invalidateCaches;
- (void)invalidateModel;
- (void)loadDefaultDataIfNotDirty;
- (void)loadDefaultDataIfNotDirtyWithGridRowIds:(id)ids gridColumnIds:(id)columnIds forDocumentLocale:(id)locale;
- (void)loadFromPreUFFArchive:(const void *)archive unarchiver:(id)unarchiver contextForUpgradeOnly:(id)only;
- (void)loadFromUnityArchive:(const void *)archive unarchiver:(id)unarchiver contextForUpgradeOnly:(id)only chartInfo:(id)info;
- (void)p_cacheAxisDataFormatters;
- (void)p_cacheMediatorChartGridDirection;
- (void)p_cacheSeriesDataFormatters;
- (void)p_cacheSummaryLabelDataFormatter;
- (void)p_loadDefaultData;
- (void)p_loadDefaultDataWithGridRowIds:(id)ids gridColumnIds:(id)columnIds forDocumentLocale:(id)locale;
- (void)p_postSynchronizeAxisList;
- (void)p_setBimapEntryForSeriesDimension:(id)dimension andGridIndex:(unint64_t)index;
- (void)p_synchronizeAxis:(id)axis class:(Class)class axisID:(id)d axisIndex:(unint64_t)index styleIndex:(unint64_t)styleIndex usedAxes:(id)axes unusedAxes:(id)unusedAxes;
- (void)p_synchronizeAxisList;
- (void)p_synchronizeModelWithSeriesNonStyleMigration:(BOOL)migration;
- (void)p_synchronizeReferenceLines;
- (void)p_synchronizeSeriesListWithSeriesNonStyleMigration:(BOOL)migration;
- (void)resetSeriesStorage;
- (void)saveToUnityArchive:(void *)archive forCopy:(BOOL)copy;
- (void)setCacheObject:(id)object forKey:(id)key;
- (void)setChartInfo:(id)info;
- (void)setGrid:(id)grid;
- (void)setMultiDataSetIndex:(unint64_t)index;
- (void)setNameForCategory:(unint64_t)category toName:(id)name;
- (void)setNameForMultiDataSetCategory:(unint64_t)category toName:(id)name;
- (void)setNameForSeries:(unint64_t)series toName:(id)name;
- (void)setScatterFormat:(int)format;
- (void)setShouldCacheMediatorData:(BOOL)data;
- (void)setTextEditingSelectionPath:(id)path string:(id)string;
- (void)updateTransientModelFromInfoModel;
- (void)validateIfNeededWithSeriesNonStyleMigration:(BOOL)migration;
- (void)willModify;
@end

@implementation TSCHChartModel

- (TSCHChartModel)initWithChartInfo:(id)info
{
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = TSCHChartModel;
  v5 = [(TSCHChartModel *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_chartInfo, infoCopy);
    v7 = objc_alloc_init(TSCHChartGrid);
    grid = v6->_grid;
    v6->_grid = v7;

    objc_msgSend_setObjectToNotify_(v6->_grid, v9, v10, v11, v12, v6);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    seriesList = v6->_seriesList;
    v6->_seriesList = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    axisList = v6->_axisList;
    v6->_axisList = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    referenceLinesMap = v6->_referenceLinesMap;
    v6->_referenceLinesMap = v17;

    v6->_modelInvalid = 1;
    v6->_scatterFormat = 2;
  }

  return v6;
}

- (TSCHChartModel)initWithChartInfo:(id)info dataSetIndex:(unint64_t)index
{
  infoCopy = info;
  v49.receiver = self;
  v49.super_class = TSCHChartModel;
  v8 = [(TSCHChartModel *)&v49 init];
  if (v8)
  {
    v13 = objc_msgSend_model(infoCopy, v7, v9, v10, v11);
    if (!v13)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCHChartModel initWithChartInfo:dataSetIndex:]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 174, 0, "invalid nil value for '%{public}s'", "model");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }

    objc_storeWeak(&v8->_chartInfo, infoCopy);
    v36 = objc_msgSend_grid(v13, v32, v33, v34, v35);
    grid = v8->_grid;
    v8->_grid = v36;

    v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
    seriesList = v8->_seriesList;
    v8->_seriesList = v38;

    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    axisList = v8->_axisList;
    v8->_axisList = v40;

    v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
    referenceLinesMap = v8->_referenceLinesMap;
    v8->_referenceLinesMap = v42;

    v8->_modelInvalid = 1;
    v8->_scatterFormat = objc_msgSend_scatterFormat(v13, v44, v45, v46, v47);
    v8->_multiDataSetIndex = index;
    v8->_isTransient = 1;
  }

  return v8;
}

- (id)initForPresetImportWithChartInfo:(id)info
{
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = TSCHChartModel;
  v5 = [(TSCHChartModel *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_chartInfo, infoCopy);
    v7 = objc_alloc_init(TSCHChartGrid);
    grid = v6->_grid;
    v6->_grid = v7;

    objc_msgSend_setObjectToNotify_(v6->_grid, v9, v10, v11, v12, v6);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    seriesList = v6->_seriesList;
    v6->_seriesList = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    axisList = v6->_axisList;
    v6->_axisList = v15;

    v6->_modelInvalid = 0;
    v6->_scatterFormat = 1;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_isTransient)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCHChartModel copyWithZone:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 214, 0, "non-persistent chart model does not support copying yet %@", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_alloc_init(objc_opt_class());
  v28 = v23;
  if (v23)
  {
    objc_msgSend_setObjectToNotify_(v23[2], v24, v25, v26, v27, 0);
    v33 = objc_msgSend_grid(self, v29, v30, v31, v32);
    v38 = objc_msgSend_copyWithZone_(v33, v34, v35, v36, v37, zone);

    v39 = v28[2];
    v28[2] = v38;
    v40 = v38;

    objc_msgSend_setObjectToNotify_(v28[2], v41, v42, v43, v44, v28);
    v49 = objc_msgSend_chartInfo(self, v45, v46, v47, v48);
    objc_storeWeak(v28 + 1, v49);

    *(v28 + 6) = self->_scatterFormat;
    v28[10] = self->_multiDataSetIndex;
  }

  return v28;
}

- (id)syncRoot
{
  if (self->_isTransient)
  {
    v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
    selfCopy = objc_msgSend_model(v5, v6, v7, v8, v9);

    if (!selfCopy)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHChartModel syncRoot]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 264, 0, "invalid nil value for '%{public}s'", "syncRoot");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)willModify
{
  if (!self->_isTransient)
  {
    v10 = objc_msgSend_chartInfo(self, a2, v3, v4, v5);
    objc_msgSend_willModify(v10, v6, v7, v8, v9);
  }
}

- (void)setChartInfo:(id)info
{
  obj = info;
  v8 = objc_msgSend_syncRoot(self, v4, v5, v6, v7);
  objc_sync_enter(v8);
  objc_storeWeak(&self->_chartInfo, obj);
  objc_msgSend_invalidateModel(self, v9, v10, v11, v12);
  objc_sync_exit(v8);
}

- (void)setGrid:(id)grid
{
  gridCopy = grid;
  if (self->_grid != gridCopy)
  {
    v22 = gridCopy;
    objc_msgSend_willModify(self, v6, v7, v8, v9);
    objc_msgSend_setObjectToNotify_(self->_grid, v10, v11, v12, v13, 0);
    objc_storeStrong(&self->_grid, grid);
    gridCopy = v22;
    if (!self->_isTransient)
    {
      objc_msgSend_setObjectToNotify_(self->_grid, v14, v15, v16, v17, self);
      objc_msgSend_invalidateModel(self, v18, v19, v20, v21);
      gridCopy = v22;
    }
  }
}

- (void)setScatterFormat:(int)format
{
  if (self->_scatterFormat != format)
  {
    objc_msgSend_willModify(self, a2, v4, v5, v6);
    self->_scatterFormat = format;

    objc_msgSend_invalidateModel(self, v9, v10, v11, v12);
  }
}

- (BOOL)isMultiData
{
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHChartModel isMultiData]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 308, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_chartType(v6, v5, v7, v8, v9);
  isMultiData = objc_msgSend_isMultiData(v25, v26, v27, v28, v29);

  return isMultiData;
}

- (void)enumerateMultiDataModelsUsingBlock:(id)block
{
  blockCopy = block;
  if ((objc_msgSend_isMultiData(self, v5, v6, v7, v8) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartModel enumerateMultiDataModelsUsingBlock:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 314, 0, "Only use this method for multi data models");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_numberOfMultiDataSets(self, v9, v10, v11, v12);
  v42 = 0;
  if (v28)
  {
    v29 = v28;
    v30 = 1;
    do
    {
      v31 = [TSCHChartModel alloc];
      v36 = objc_msgSend_chartInfo(self, v32, v33, v34, v35);
      v41 = objc_msgSend_initWithChartInfo_dataSetIndex_(v31, v37, v38, v39, v40, v36, v30 - 1);

      blockCopy[2](blockCopy, v41, &v42);
      if (v30 >= v29)
      {
        break;
      }

      ++v30;
    }

    while ((v42 & 1) == 0);
  }
}

- (unint64_t)p_lastMultiDataSetIndex
{
  result = objc_msgSend_numberOfMultiDataSets(self, a2, v2, v3, v4);
  if (result)
  {
    return objc_msgSend_numberOfMultiDataSets(self, v7, v8, v9, v10) - 1;
  }

  return result;
}

- (unint64_t)multiDataSetIndex
{
  if (self->_isTransient)
  {
    if (objc_msgSend_isMultiData(self, a2, v2, v3, v4))
    {
      multiDataSetIndex = self->_multiDataSetIndex;
      result = objc_msgSend_p_lastMultiDataSetIndex(self, v6, v7, v8, v9);
      if (multiDataSetIndex < result)
      {
        return multiDataSetIndex;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
    v17 = objc_msgSend_multiDataSetIndex(v12, v13, v14, v15, v16);

    return v17;
  }

  return result;
}

- (void)setMultiDataSetIndex:(unint64_t)index
{
  v52 = *MEMORY[0x277D85DE8];
  if (!self->_isTransient)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCHChartModel setMultiDataSetIndex:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 345, 0, "Don't set the multiDataSetIndex on non-transient chart models.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (objc_msgSend_isMultiData(self, a2, v3, v4, v5) && self->_multiDataSetIndex != index)
  {
    objc_msgSend_willModify(self, v23, v24, v25, v26);
    self->_multiDataSetIndex = index;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v30 = objc_msgSend_axisList(self, v27, 0.0, v28, v29, 0);
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, v32, v33, v34, &v47, v51, 16);
    if (v35)
    {
      v40 = v35;
      v41 = *v48;
      do
      {
        v42 = 0;
        do
        {
          if (*v48 != v41)
          {
            objc_enumerationMutation(v30);
          }

          objc_msgSend_invalidateMultiDataSetAnalysis(*(*(&v47 + 1) + 8 * v42++), v36, v37, v38, v39);
        }

        while (v40 != v42);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v36, v37, v38, v39, &v47, v51, 16);
      }

      while (v40);
    }

    objc_msgSend_invalidateModel(self, v43, v44, v45, v46);
  }
}

- (id)firstValueAxis
{
  v5 = objc_msgSend_valueAxisList(self, a2, v2, v3, v4);
  v10 = objc_msgSend_firstObject(v5, v6, v7, v8, v9);

  return v10;
}

- (void)updateTransientModelFromInfoModel
{
  if (!self->_isTransient)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHChartModel updateTransientModelFromInfoModel]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 364, 0, "can only update transient model");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v103 = objc_msgSend_model(v21, v22, v23, v24, v25);

  if (!v103)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "[TSCHChartModel updateTransientModelFromInfoModel]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 366, 0, "invalid nil value for '%{public}s'", "model");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
  }

  v45 = objc_msgSend_chartInfo(self, v26, v27, v28, v29);
  v50 = objc_msgSend_chartInfo(v103, v46, v47, v48, v49);

  if (v45 != v50)
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "[TSCHChartModel updateTransientModelFromInfoModel]");
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    v66 = objc_msgSend_chartInfo(self, v62, v63, v64, v65);
    v71 = objc_msgSend_chartInfo(v103, v67, v68, v69, v70);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v72, v73, v74, v75, v56, v61, 367, 0, "chart info mismatch %@ should be %@", v66, v71);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77, v78, v79);
  }

  v80 = objc_msgSend_grid(v103, v51, v52, v53, v54);
  objc_msgSend_setGrid_(self, v81, v82, v83, v84, v80);

  v89 = objc_msgSend_scatterFormat(v103, v85, v86, v87, v88);
  objc_msgSend_setScatterFormat_(self, v90, v91, v92, v93, v89);
  v98 = objc_msgSend_multiDataSetIndex(v103, v94, v95, v96, v97);
  objc_msgSend_setMultiDataSetIndex_(self, v99, v100, v101, v102, v98);
}

- (id)i_axisForID:(id)d
{
  v54 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = objc_msgSend_chartInfo(self, v5, v6, v7, v8);

  if (!v9)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartModel i_axisForID:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 384, 0, "invalid nil value for '%{public}s'", "self.chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v29 = self->_axisList;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, v31, v32, v33, &v49, v53, 16);
  if (v35)
  {
    v39 = *v50;
    while (2)
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v50 != v39)
        {
          objc_enumerationMutation(v29);
        }

        v41 = *(*(&v49 + 1) + 8 * i);
        v42 = objc_msgSend_axisID(v41, v34, v36, v37, v38);
        isEqual = objc_msgSend_isEqual_(v42, v43, v44, v45, v46, dCopy);

        if (isEqual)
        {
          v35 = v41;
          goto LABEL_13;
        }
      }

      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v34, v36, v37, v38, &v49, v53, 16);
      if (v35)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v35;
}

- (void)p_synchronizeAxis:(id)axis class:(Class)class axisID:(id)d axisIndex:(unint64_t)index styleIndex:(unint64_t)styleIndex usedAxes:(id)axes unusedAxes:(id)unusedAxes
{
  axisCopy = axis;
  dCopy = d;
  unusedAxesCopy = unusedAxes;
  axesCopy = axes;
  v22 = objc_msgSend_chartInfo(self, v17, v18, v19, v20);
  if (!v22)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v23, v24, v25, "[TSCHChartModel p_synchronizeAxis:class:axisID:axisIndex:styleIndex:usedAxes:unusedAxes:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 400, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  if (objc_opt_class() == class)
  {
    objc_msgSend_removeObject_(unusedAxesCopy, v41, v42, v43, v44, axisCopy);
    v55 = axisCopy;
  }

  else
  {
    v45 = [class alloc];
    v50 = objc_msgSend_initWithAxisID_model_(v45, v46, v47, v48, v49, dCopy, self);

    v55 = v50;
  }

  v83 = v55;
  if (objc_msgSend_isCategory(v55, v51, v52, v53, v54))
  {
    objc_msgSend_categoryAxisStyleAtIndex_(v22, v56, v57, v58, v59, styleIndex);
  }

  else
  {
    objc_msgSend_valueAxisStyleAtIndex_(v22, v56, v57, v58, v59, styleIndex);
  }
  v60 = ;
  if (objc_msgSend_isCategory(v83, v61, v62, v63, v64))
  {
    objc_msgSend_categoryAxisNonstyleAtIndex_(v22, v65, v66, v67, v68, styleIndex);
  }

  else
  {
    objc_msgSend_valueAxisNonstyleAtIndex_(v22, v65, v66, v67, v68, styleIndex);
  }
  v69 = ;
  objc_msgSend_setStyle_index_(v83, v70, v71, v72, v73, v60, styleIndex);
  objc_msgSend_setNonStyle_index_(v83, v74, v75, v76, v77, v69, styleIndex);
  objc_msgSend_addObject_(axesCopy, v78, v79, v80, v81, v83);
}

- (void)p_synchronizeAxisList
{
  v146 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartModel p_synchronizeAxisList]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 419, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_chartType(v7, v6, v8, v9, v10);
  v135 = objc_msgSend_array(MEMORY[0x277CBEB18], v27, v28, v29, v30);
  selfCopy = self;
  v134 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB58], v31, v32, v33, v34, self->_axisList);
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  obj = objc_msgSend_valueAxisIDs(v26, v35, 0.0, v36, v37);
  v129 = v7;
  v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, v39, v40, v41, &v140, v145, 16);
  v46 = 0;
  if (v133)
  {
    v131 = *v141;
    do
    {
      for (i = 0; i != v133; ++i)
      {
        if (*v141 != v131)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v140 + 1) + 8 * i);
        v49 = objc_msgSend_styleIndexForAxisID_(v26, v42, v43, v44, v45, v48);
        v54 = objc_msgSend_valueAxisNonstyleAtIndex_(v7, v50, v51, v52, v53, v49);
        v59 = v54;
        if (v54)
        {
          v60 = objc_msgSend_intValueForProperty_(v54, v55, v56, v57, v58, 1264);
          v65 = objc_msgSend_valueAxisClassForID_scale_(v26, v61, v62, v63, v64, v48, v60);
        }

        else
        {
          v65 = objc_msgSend_valueAxisClassForID_scale_(v26, v55, v56, v57, v58, v48, 1);
        }

        v70 = v65;
        if (!v65)
        {
          v71 = MEMORY[0x277D81150];
          v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, v67, v68, v69, "[TSCHChartModel p_synchronizeAxisList]");
          v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, v74, v75, v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v78, v79, v80, v81, v72, v77, 444, 0, "chart type has no axis class");

          v7 = v129;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85);
        }

        v86 = objc_msgSend_i_axisForID_(selfCopy, v66, v67, v68, v69, v48);
        objc_msgSend_p_synchronizeAxis_class_axisID_axisIndex_styleIndex_usedAxes_unusedAxes_(selfCopy, v87, v88, v89, v90, v86, v70, v48, v46++, v49, v135, v134);
      }

      v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, v43, v44, v45, &v140, v145, 16);
    }

    while (v133);
  }

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v94 = objc_msgSend_categoryAxisIDs(v26, v91, 0.0, v92, v93);
  v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v94, v95, v96, v97, v98, &v136, v144, 16);
  if (v99)
  {
    v104 = v99;
    v105 = *v137;
    do
    {
      for (j = 0; j != v104; ++j)
      {
        if (*v137 != v105)
        {
          objc_enumerationMutation(v94);
        }

        v107 = *(*(&v136 + 1) + 8 * j);
        v108 = objc_msgSend_i_axisForID_(selfCopy, v100, v101, v102, v103, v107);
        v113 = objc_msgSend_styleIndexForAxisID_(v26, v109, v110, v111, v112, v107);
        v118 = objc_msgSend_categoryAxisClass(v26, v114, v115, v116, v117);
        objc_msgSend_p_synchronizeAxis_class_axisID_axisIndex_styleIndex_usedAxes_unusedAxes_(selfCopy, v119, v120, v121, v122, v108, v118, v107, v46++, v113, v135, v134);
      }

      v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(v94, v100, v101, v102, v103, &v136, v144, 16);
    }

    while (v104);
  }

  v127 = objc_msgSend_mutableCopy(v135, v123, v124, v125, v126);
  axisList = selfCopy->_axisList;
  selfCopy->_axisList = v127;
}

- (void)p_synchronizeSeriesListWithSeriesNonStyleMigration:(BOOL)migration
{
  migrationCopy = migration;
  selfCopy = self;
  v398 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_chartInfo(self, a2, v3, v4, v5);
  if (!v9)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartModel p_synchronizeSeriesListWithSeriesNonStyleMigration:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 470, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v385 = objc_msgSend_direction(selfCopy->_grid, v8, v10, v11, v12);
  v32 = objc_msgSend_chartType(v9, v28, v29, v30, v31);
  v38 = objc_msgSend_scatterChart(TSCHChartType, v33, v34, v35, v36);
  if (v32 == v38)
  {
    v43 = 1;
  }

  else
  {
    v42 = objc_msgSend_multiDataScatterChart(TSCHChartType, v37, v39, v40, v41);
    v43 = v32 == v42;
  }

  v48 = objc_msgSend_bubbleChart(TSCHChartType, v44, v45, v46, v47);
  v53 = v48;
  if (v32 == v48)
  {

LABEL_13:
    v381 = selfCopy->_scatterFormat == 2;
    goto LABEL_14;
  }

  v54 = objc_msgSend_multiDataBubbleChart(TSCHChartType, v49, v50, v51, v52);

  v55 = v32 == v54 || v43;
  if (v55 == 1)
  {
    goto LABEL_13;
  }

  v381 = 0;
LABEL_14:
  v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
  seriesDimensionsByGridIndex = selfCopy->_seriesDimensionsByGridIndex;
  selfCopy->_seriesDimensionsByGridIndex = v56;

  v58 = objc_alloc_init(MEMORY[0x277CBEB38]);
  gridIndexesBySeriesDimension = selfCopy->_gridIndexesBySeriesDimension;
  selfCopy->_gridIndexesBySeriesDimension = v58;

  grid = selfCopy->_grid;
  if (v385 == 1)
  {
    v65 = objc_msgSend_numberOfRows(grid, v60, v61, v62, v63);
  }

  else
  {
    v65 = objc_msgSend_numberOfColumns(grid, v60, v61, v62, v63);
  }

  v378 = v65;
  v70 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v66, v67, v68, v69, selfCopy->_seriesList);
  v75 = objc_msgSend_count(v70, v71, v72, v73, v74);
  if (v75)
  {
    v76 = migrationCopy;
  }

  else
  {
    v76 = 0;
  }

  v370 = v76;
  if (v76)
  {
    v77 = [TSCHPropertyMigrator alloc];
    v82 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], v78, v79, v80, v81, 1181, 1178, 1163, 1138, 0);
    v379 = objc_msgSend_initWithProperties_(v77, v83, v84, v85, v86, v82);
  }

  else
  {
    v379 = 0;
  }

  if (v378 > 1)
  {
    v87 = v381;
  }

  else
  {
    v87 = 0;
  }

  v368 = selfCopy->_axisList;
  if (v378 <= v87)
  {
    v387 = 0;
    v371 = 0;
    v93 = 0;
    goto LABEL_133;
  }

  v92 = v87;
  v93 = 0;
  v386 = selfCopy;
  v387 = 0;
  v371 = 0;
  v372 = v381 << 63 >> 63;
  v375 = 1;
  v366 = v32;
  v367 = v9;
  v369 = v75;
  v365 = v70;
  do
  {
    if (!v375)
    {
      v332 = MEMORY[0x277D81150];
      v333 = selfCopy;
      v334 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, v89, v90, v91, "[TSCHChartModel p_synchronizeSeriesListWithSeriesNonStyleMigration:]");
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v335, v336, v337, v338, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
      v340 = v339 = v93;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v332, v341, v342, v343, v344, v334, v340, 515, 0, "incorrect number of value dimensions. breaking early to avoid infinite loop.");

      v93 = v339;
      selfCopy = v333;

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v345, v346, v347, v348);
      break;
    }

    v376 = v92;
    if (v93 >= v75)
    {
      v99 = [TSCHChartSeries alloc];
      v95 = objc_msgSend_initWithChartModel_index_(v99, v100, v101, v102, v103, selfCopy, v93);
      objc_msgSend_addObject_(v70, v104, v105, v106, v107, v95);
    }

    else
    {
      v95 = objc_msgSend_objectAtIndexedSubscript_(v70, v88, v89, v90, v91, v93);
    }

    v108 = objc_msgSend_seriesStyleForSeriesIndex_(v9, v94, v96, v97, v98, v93);
    objc_msgSend_modelSyncSetStyle_(v95, v109, v110, v111, v112, v108);

    v374 = objc_msgSend_seriesNonstyleForSeriesIndex_(v9, v113, v114, v115, v116, v93);
    objc_msgSend_modelSyncSetNonStyle_(v95, v117, v118, v119, v120);
    v125 = objc_msgSend_defaultSeriesType_(v32, v121, v122, v123, v124, v93);
    objc_msgSend_setSeriesType_(v95, v126, v127, v128, v129, v125);

    if (objc_msgSend_supportsMultipleSeriesTypes(v32, v130, v131, v132, v133))
    {
      v138 = objc_msgSend_intValueForProperty_defaultValue_(v95, v134, v135, v136, v137, 1171, 0xFFFFFFFFLL);
      v143 = objc_msgSend_seriesTypeForSeriesElementType_defaultSeriesIndex_(v32, v139, v140, v141, v142, v138, v93);
      objc_msgSend_setSeriesType_(v95, v144, v145, v146, v147, v143);
    }

    v380 = v93;
    v148 = !v370;
    if (v93 >= v75)
    {
      v148 = 1;
    }

    if ((v148 & 1) == 0)
    {
      objc_msgSend_visitExistingSeries_(v379, v134, v135, v136, v137, v95);
    }

    v149 = objc_msgSend_seriesType(v95, v134, v135, v136, v137);
    v154 = objc_msgSend_useInBarGapCalculations(v149, v150, v151, v152, v153);

    if (v154)
    {
      objc_msgSend_setBarGapIndex_(v95, v155, v156, v157, v158);
      ++v371;
      v75 = v369;
    }

    v159 = objc_msgSend_seriesType(v95, v155, v156, v157, v158);
    v164 = objc_msgSend_valueDimensions(v159, v160, v161, v162, v163);

    v373 = v164;
    v169 = v378;
    v375 = v164 + v372;
    if (v378 <= v164 + v372)
    {
      v171 = objc_msgSend_seriesType(v95, v165, v166, v167, v168);
      v177 = objc_msgSend_scatterSeries(TSCHChartSeriesType, v172, v173, v174, v175);
      if (v171 == v177)
      {
        v170 = 1;
      }

      else
      {
        objc_msgSend_seriesType(v95, v176, v178, v179, v180);
        v181 = v70;
        v182 = v32;
        v183 = v9;
        v185 = v184 = selfCopy;
        v190 = objc_msgSend_bubbleSeries(TSCHChartSeriesType, v186, v187, v188, v189);
        v170 = v185 == v190;

        selfCopy = v184;
        v9 = v183;
        v32 = v182;
        v70 = v181;
      }

      v169 = v378;
    }

    else
    {
      v170 = 0;
    }

    v93 = v380;
    v191 = v375 + v376;
    if (v375 + v376 > v169 && !v170)
    {
      if (v380 >= v75)
      {
        objc_msgSend_removeObject_(v70, v165, v166, v167, v168, v95);
      }

      goto LABEL_128;
    }

    v377 = v170;
    objc_msgSend_clearAxisIDs(v95, v165, v166, v167, v168);
    if (objc_msgSend_requiresYAxisOrdinal(v32, v192, v193, v194, v195))
    {
      v200 = objc_msgSend_seriesIndex(v95, v196, v197, v198, v199);
      v205 = objc_msgSend_defaultOrdinalForAxisType_seriesIndex_(selfCopy, v201, v202, v203, v204, 2, v200);
      if (v205 >> 31)
      {
        sub_2764A6ECC();
        v210 = objc_msgSend_intValueForProperty_defaultValue_(v95, v328, v329, v330, v331, 1212, 0x7FFFFFFFLL);
      }

      else
      {
        v210 = objc_msgSend_intValueForProperty_defaultValue_(v95, v206, v207, v208, v209, 1212, v205);
      }

      v383 = v210;
    }

    else
    {
      v383 = 0;
    }

    v394 = 0u;
    v395 = 0u;
    v392 = 0u;
    v393 = 0u;
    obj = v368;
    v215 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v211, v212, v213, v214, &v392, v397, 16);
    if (!v215)
    {
      v221 = 0;
      goto LABEL_125;
    }

    v220 = v215;
    v382 = 0;
    v221 = 0;
    v222 = *v393;
    do
    {
      v223 = 0;
      do
      {
        if (*v393 != v222)
        {
          objc_enumerationMutation(obj);
        }

        v224 = *(*(&v392 + 1) + 8 * v223);
        v225 = objc_msgSend_axisID(v224, v216, v217, v218, v219);
        v230 = objc_msgSend_type(v225, v226, v227, v228, v229);

        if (v230 != 2 || (objc_msgSend_axisID(v224, v216, v217, v218, v219), v231 = objc_claimAutoreleasedReturnValue(), v236 = objc_msgSend_ordinal(v231, v232, v233, v234, v235), v231, v236 == v383))
        {
          v237 = objc_msgSend_axisID(v224, v216, v217, v218, v219);
          objc_msgSend_setAxisID_forAxisType_(v95, v238, v239, v240, v241, v237, v230);

          if (objc_msgSend_isCategory(v224, v242, v243, v244, v245))
          {
            v250 = v386->_grid;
            if (v385 == 1)
            {
              objc_msgSend_gridAdapterForColumnCount(v250, v246, v247, v248, v249);
            }

            else
            {
              objc_msgSend_gridAdapterForRowCount(v250, v246, v247, v248, v249);
            }
            v253 = ;
            v251 = 0;
            if (!v253)
            {
              goto LABEL_106;
            }

LABEL_105:
            objc_msgSend_setGridAdapter_forAxisType_(v95, v263, v264, v265, v266, v253, v230);
LABEL_106:
            if (v251)
            {
              objc_msgSend_setGridAdapterForName_(v95, v263, v264, v265, v266, v253);
            }

            goto LABEL_109;
          }

          if (v381)
          {
            v251 = v230 == 2;
          }

          else
          {
            v251 = v382 == 0;
          }

          if (v387)
          {
            v252 = v381;
          }

          else
          {
            v252 = 0;
          }

          if (v252 == 1 && v230 == 1)
          {
            v253 = v387;
            v258 = objc_msgSend_seriesDimensionWithSeriesIndex_axisType_(TSCHSeriesDimension, v254, v255, v256, v257, v380, 1);
            objc_msgSend_p_setBimapEntryForSeriesDimension_andGridIndex_(v386, v259, v260, v261, v262, v258, 0);

            goto LABEL_103;
          }

          if (v230 == 1)
          {
            v267 = v381;
          }

          else
          {
            v267 = 0;
          }

          if (v267 == 1)
          {
            v268 = v386->_grid;
            if (v385 == 1)
            {
              objc_msgSend_gridAdapterForRow_(v268, v246, v247, v248, v249, 0);
            }

            else
            {
              objc_msgSend_gridAdapterForColumn_(v268, v246, v247, v248, v249, 0);
            }
            v275 = ;
            v280 = objc_msgSend_seriesDimensionWithSeriesIndex_axisType_(TSCHSeriesDimension, v276, v277, v278, v279, v380, 1);
            objc_msgSend_p_setBimapEntryForSeriesDimension_andGridIndex_(v386, v281, v282, v283, v284, v280, 0);

            v253 = v275;
LABEL_103:
            v387 = v253;
LABEL_104:
            ++v221;
            if (v253)
            {
              goto LABEL_105;
            }

            goto LABEL_106;
          }

          v269 = v230 == 1 && v377;
          if (!v269 || v378 > 1)
          {
            v271 = v230 == 4 && v377;
            v272 = v386->_grid;
            if (!v271 || v378 > 2)
            {
              v274 = v382 + v376;
              if (v385 == 1)
              {
                objc_msgSend_gridAdapterForRow_(v272, v246, v247, v248, v249, v274);
              }

              else
              {
                objc_msgSend_gridAdapterForColumn_(v272, v246, v247, v248, v249, v274);
              }
              v253 = ;
              v295 = objc_msgSend_seriesDimensionWithSeriesIndex_axisType_(TSCHSeriesDimension, v291, v292, v293, v294, v380, v230);
              objc_msgSend_p_setBimapEntryForSeriesDimension_andGridIndex_(v386, v296, v297, v298, v299, v295, v382 + v376);

              ++v382;
              goto LABEL_104;
            }

            if (v385 == 1)
            {
              objc_msgSend_gridAdapterForColumnConstant(v272, v246, v247, v248, v249);
            }

            else
            {
              objc_msgSend_gridAdapterForRowConstant(v272, v246, v247, v248, v249);
            }
            v253 = ;
            objc_opt_class();
            v286 = TSUDynamicCast();
            objc_msgSend_setCountFromOne_(v286, v300, v301, v302, v303, 1);
            objc_msgSend_setIndexFactor_(v286, v304, v305, v306, v307, 0);
          }

          else
          {
            v285 = v386->_grid;
            if (v385 == 1)
            {
              objc_msgSend_gridAdapterForColumnCount(v285, v246, v247, v248, v249);
            }

            else
            {
              objc_msgSend_gridAdapterForRowCount(v285, v246, v247, v248, v249);
            }
            v253 = ;
            objc_opt_class();
            v286 = TSUDynamicCast();
            objc_msgSend_setCountFromOne_(v286, v287, v288, v289, v290, 1);
          }

          v251 = 0;
          goto LABEL_104;
        }

LABEL_109:
        ++v223;
      }

      while (v220 != v223);
      v308 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v216, v217, v218, v219, &v392, v397, 16);
      v220 = v308;
    }

    while (v308);
LABEL_125:
    v93 = v380 + 1;

    if (v373 != v221)
    {
      v313 = MEMORY[0x277D81150];
      v314 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v309, v310, v311, v312, "[TSCHChartModel p_synchronizeSeriesListWithSeriesNonStyleMigration:]");
      v319 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v315, v316, v317, v318, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v313, v320, v321, v322, v323, v314, v319, 695, 0, "series expected %lu valueDimensions but only found %lu", v375, v221 + v372);

      v93 = v380 + 1;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v324, v325, v326, v327);
    }

    v32 = v366;
    v9 = v367;
    selfCopy = v386;
    v70 = v365;
    v191 = v375 + v376;
    v75 = v369;
LABEL_128:

    v92 = v191;
  }

  while (v191 < v378);
LABEL_133:
  v349 = v75 - v93;
  if (v75 > v93)
  {
    do
    {
      objc_msgSend_removeObjectAtIndex_(v70, v88, v89, v90, v91, v93);
      --v349;
    }

    while (v349);
  }

  if (v370)
  {
    v390 = 0u;
    v391 = 0u;
    v388 = 0u;
    v389 = 0u;
    v350 = v70;
    v355 = objc_msgSend_countByEnumeratingWithState_objects_count_(v350, v351, v352, v353, v354, &v388, v396, 16);
    if (v355)
    {
      v360 = v355;
      v361 = *v389;
      do
      {
        for (i = 0; i != v360; ++i)
        {
          if (*v389 != v361)
          {
            objc_enumerationMutation(v350);
          }

          objc_msgSend_migrateToSeries_(v379, v356, v357, v358, v359, *(*(&v388 + 1) + 8 * i));
        }

        v360 = objc_msgSend_countByEnumeratingWithState_objects_count_(v350, v356, v357, v358, v359, &v388, v396, 16);
      }

      while (v360);
    }
  }

  selfCopy->_numberOfSeriesForCalculatingBarWidth = v371;
  v363 = objc_msgSend_mutableCopy(v70, v88, v89, v90, v91);
  seriesList = selfCopy->_seriesList;
  selfCopy->_seriesList = v363;
}

- (void)p_postSynchronizeAxisList
{
  v151 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartModel p_postSynchronizeAxisList]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 718, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_chartType(v7, v6, v8, v9, v10);
  if (objc_msgSend_requiresYAxisOrdinal(v26, v27, v28, v29, v30))
  {
    v130 = v26;
    v131 = v7;
    v135 = objc_msgSend_copy(self->_axisList, v31, v32, v33, v34);
    v39 = objc_msgSend_set(MEMORY[0x277CBEB58], v35, v36, v37, v38);
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    selfCopy = self;
    obj = self->_seriesList;
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, v41, v42, v43, &v144, v150, 16);
    if (v44)
    {
      v45 = v44;
      v134 = *v145;
LABEL_6:
      v46 = 0;
      while (1)
      {
        if (*v145 != v134)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v144 + 1) + 8 * v46);
        v140 = 0u;
        v141 = 0u;
        v142 = 0u;
        v143 = 0u;
        v48 = v135;
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, v50, v51, v52, &v140, v149, 16);
        if (v53)
        {
          v58 = v53;
          v59 = *v141;
LABEL_11:
          v60 = 0;
          while (1)
          {
            if (*v141 != v59)
            {
              objc_enumerationMutation(v48);
            }

            v61 = objc_msgSend_axisID(*(*(&v140 + 1) + 8 * v60), v54, v55, v56, v57);
            v66 = objc_msgSend_type(v61, v62, v63, v64, v65);
            v71 = objc_msgSend_axisIDForAxisType_(v47, v67, v68, v69, v70, v66);
            objc_msgSend_addObject_(v39, v72, v73, v74, v75, v71);

            v80 = objc_msgSend_count(v48, v76, v77, v78, v79);
            if (v80 == objc_msgSend_count(v39, v81, v82, v83, v84))
            {
              break;
            }

            if (v58 == ++v60)
            {
              v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v54, v55, v56, v57, &v140, v149, 16);
              if (v58)
              {
                goto LABEL_11;
              }

              break;
            }
          }
        }

        v89 = objc_msgSend_count(v48, v85, v86, v87, v88);
        if (v89 == objc_msgSend_count(v39, v90, v91, v92, v93))
        {
          break;
        }

        if (++v46 == v45)
        {
          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v94, v95, v96, v97, &v144, v150, 16);
          if (v45)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    v102 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v98, v99, v100, v101, selfCopy->_axisList);
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v103 = v135;
    v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v104, v105, v106, v107, &v136, v148, 16);
    if (v108)
    {
      v113 = v108;
      v114 = *v137;
      v115 = 1;
      do
      {
        for (i = 0; i != v113; ++i)
        {
          if (*v137 != v114)
          {
            objc_enumerationMutation(v103);
          }

          v117 = *(*(&v136 + 1) + 8 * i);
          if ((v115 & 1) != 0 && !objc_msgSend_count(v39, v109, v110, v111, v112))
          {
            v115 = 1;
          }

          else if ((objc_msgSend_isCategory(v117, v109, v110, v111, v112) & 1) == 0)
          {
            v118 = objc_msgSend_axisID(v117, v109, v110, v111, v112);
            v123 = objc_msgSend_containsObject_(v39, v119, v120, v121, v122, v118);

            if ((v123 & 1) == 0)
            {
              objc_msgSend_removeObject_(v102, v109, v110, v111, v112, v117);
            }

            v115 = 0;
          }
        }

        v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v109, v110, v111, v112, &v136, v148, 16);
      }

      while (v113);
    }

    v128 = objc_msgSend_mutableCopy(v102, v124, v125, v126, v127);
    axisList = selfCopy->_axisList;
    selfCopy->_axisList = v128;

    v26 = v130;
    v7 = v131;
  }
}

- (BOOL)p_disableCachingMediatorData
{
  if (self->_disableCachingMediatorData || self->_isTransient)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a2, v2, v3, v4);
    v5 = objc_msgSend_supportsNumberFormatSameAsSource(v6, v7, v8, v9, v10) ^ 1;
  }

  return v5;
}

- (void)p_cacheAxisDataFormatters
{
  selfCopy = self;
  v105 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_p_disableCachingMediatorData(self, a2, v2, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHChartModel p_cacheAxisDataFormatters]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 765, 0, "Axis data formatter caching is disabled");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if ((objc_msgSend_p_disableCachingMediatorData(selfCopy, v6, v7, v8, v9) & 1) == 0)
  {
    v29 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v25, v26, v27, v28);
    v35 = objc_msgSend_chartInfo(selfCopy, v30, v31, v32, v33);
    if (!v35)
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v36, v37, v38, "[TSCHChartModel p_cacheAxisDataFormatters]");
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 773, 0, "invalid nil value for '%{public}s'", "chart");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
    }

    v55 = objc_msgSend_mediator(v35, v34, v36, v37, v38);
    if (v55)
    {
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v99 = selfCopy;
      v59 = selfCopy->_axisList;
      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, v61, v62, v63, &v100, v104, 16);
      if (v64)
      {
        v69 = v64;
        v70 = *v101;
        do
        {
          for (i = 0; i != v69; ++i)
          {
            if (*v101 != v70)
            {
              objc_enumerationMutation(v59);
            }

            v72 = *(*(&v100 + 1) + 8 * i);
            if (objc_msgSend_adjustedNumberFormatType(v72, v65, v66, v67, v68) == 1)
            {
              v73 = objc_msgSend_documentRoot(v35, v65, v66, v67, v68);
              v78 = objc_msgSend_dataFormatterForAxis_documentRoot_(v55, v74, v75, v76, v77, v72, v73);

              v84 = objc_msgSend_convertToPersistableStyleObject(v78, v79, v80, v81, v82);
              if (v84)
              {
                v88 = objc_msgSend_axisID(v72, v83, v85, v86, v87);
                objc_msgSend_setObject_forKeyedSubscript_(v29, v89, v90, v91, v92, v84, v88);
              }
            }
          }

          v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v65, v66, v67, v68, &v100, v104, 16);
        }

        while (v69);
      }

      selfCopy = v99;
    }

    if ((objc_msgSend_isEqual_(selfCopy->_axisIDToDataFormatterPersistableStyleObjectsMap, v54, v56, v57, v58, v29) & 1) == 0)
    {
      v97 = objc_msgSend_copy(v29, v93, v94, v95, v96);
      axisIDToDataFormatterPersistableStyleObjectsMap = selfCopy->_axisIDToDataFormatterPersistableStyleObjectsMap;
      selfCopy->_axisIDToDataFormatterPersistableStyleObjectsMap = v97;
    }
  }
}

- (void)p_cacheSeriesDataFormatters
{
  selfCopy = self;
  v133 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_p_disableCachingMediatorData(self, a2, v2, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHChartModel p_cacheSeriesDataFormatters]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 793, 0, "Series data formatter caching is disabled");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if ((objc_msgSend_p_disableCachingMediatorData(selfCopy, v6, v7, v8, v9) & 1) == 0)
  {
    v29 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v25, v26, v27, v28);
    v35 = objc_msgSend_chartInfo(selfCopy, v30, v31, v32, v33);
    if (!v35)
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v36, v37, v38, "[TSCHChartModel p_cacheSeriesDataFormatters]");
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 801, 0, "invalid nil value for '%{public}s'", "chart");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
    }

    v127 = objc_msgSend_mediator(v35, v34, v36, v37, v38);
    if (v127)
    {
      v58 = v35;
      v125 = selfCopy;
      v126 = v29;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v59 = selfCopy->_seriesList;
      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, v61, v62, v63, &v128, v132, 16);
      if (v64)
      {
        v69 = v64;
        v70 = *v129;
        do
        {
          for (i = 0; i != v69; ++i)
          {
            if (*v129 != v70)
            {
              objc_enumerationMutation(v59);
            }

            v72 = *(*(&v128 + 1) + 8 * i);
            if (objc_msgSend_adjustedNumberFormatType(v72, v65, v66, v67, v68) == 1)
            {
              v73 = objc_msgSend_axisTypesForValueLabelString(v72, v65, v66, v67, v68);
              if (objc_msgSend_count(v73, v74, v75, v76, v77))
              {
                objc_opt_class();
                v86 = objc_msgSend_objectAtIndexedSubscript_(v73, v82, v83, v84, v85, 0);
                v87 = TSUCheckedDynamicCast();
                v92 = objc_msgSend_integerValue(v87, v88, v89, v90, v91);
              }

              else
              {
                v92 = 0;
              }

              v93 = objc_msgSend_documentRoot(v58, v78, v79, v80, v81);
              v98 = objc_msgSend_dataFormatterForSeries_index_axisType_documentRoot_(v127, v94, v95, v96, v97, v72, 0, v92, v93);

              v104 = objc_msgSend_convertToPersistableStyleObject(v98, v99, v100, v101, v102);
              if (v104)
              {
                v108 = MEMORY[0x277CCABB0];
                v109 = objc_msgSend_seriesIndex(v72, v103, v105, v106, v107);
                v114 = objc_msgSend_numberWithUnsignedInteger_(v108, v110, v111, v112, v113, v109);
                objc_msgSend_setObject_forKeyedSubscript_(v126, v115, v116, v117, v118, v104, v114);
              }
            }
          }

          v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v65, v66, v67, v68, &v128, v132, 16);
        }

        while (v69);
      }

      selfCopy = v125;
      v29 = v126;
      v35 = v58;
    }

    if ((objc_msgSend_isEqual_(selfCopy->_seriesIndexToDataFormatterPersistableStyleObjectsMap, v54, v55, v56, v57, v29) & 1) == 0)
    {
      v123 = objc_msgSend_copy(v29, v119, v120, v121, v122);
      seriesIndexToDataFormatterPersistableStyleObjectsMap = selfCopy->_seriesIndexToDataFormatterPersistableStyleObjectsMap;
      selfCopy->_seriesIndexToDataFormatterPersistableStyleObjectsMap = v123;
    }
  }
}

- (void)p_cacheSummaryLabelDataFormatter
{
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v72 = v6;
  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCHChartModel p_cacheSummaryLabelDataFormatter]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 824, 0, "invalid nil value for '%{public}s'", "chart");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    v6 = 0;
  }

  v26 = objc_msgSend_mediator(v6, v7, v8, v9, v10);
  v31 = objc_msgSend_model(v72, v27, v28, v29, v30);
  v36 = objc_msgSend_firstValueAxis(v31, v32, v33, v34, v35);

  if (v36)
  {
    if (v26 && objc_msgSend_adjustedSummaryLabelNumberFormatType(v72, v37, v38, v39, v40) == 1)
    {
      v45 = objc_msgSend_documentRoot(v72, v41, v42, v43, v44);
      v50 = objc_msgSend_dataFormatterForAxis_documentRoot_(v26, v46, v47, v48, v49, v36, v45);

      v55 = objc_msgSend_convertToPersistableStyleObject(v50, v51, v52, v53, v54);
      summaryLabelDataFormatterPersistableStyleObject = self->_summaryLabelDataFormatterPersistableStyleObject;
      self->_summaryLabelDataFormatterPersistableStyleObject = v55;
    }
  }

  else
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "[TSCHChartModel p_cacheSummaryLabelDataFormatter]");
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v64, v65, v66, v67, v58, v63, 827, 0, "invalid nil value for '%{public}s'", "firstValueAxis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
  }
}

- (void)p_cacheMediatorChartGridDirection
{
  if (objc_msgSend_p_disableCachingMediatorData(self, a2, v2, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHChartModel p_cacheMediatorChartGridDirection]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 837, 0, "Grid direction caching is disabled");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if ((objc_msgSend_p_disableCachingMediatorData(self, v6, v7, v8, v9) & 1) == 0)
  {
    v38 = objc_msgSend_chartInfo(self, v25, v26, v27, v28);
    v33 = objc_msgSend_mediator(v38, v29, v30, v31, v32);
    self->_cachedChartMediatorGridDirection = objc_msgSend_direction(v33, v34, v35, v36, v37);
  }
}

- (void)p_synchronizeReferenceLines
{
  v213 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v7, v8, v9, v10, self->_referenceLinesMap);
  v12 = MEMORY[0x277CBEB58];
  v17 = objc_msgSend_allKeys(v11, v13, v14, v15, v16);
  v194 = objc_msgSend_setWithArray_(v12, v18, v19, v20, v21, v17);

  v209 = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  selfCopy = self;
  v22 = self->_axisList;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, v24, v25, v26, &v207, v212, 16);
  if (v27)
  {
    v32 = v27;
    v33 = *v208;
    p_vtable = TSCH3DTextureTiling.vtable;
    v192 = v22;
    v193 = v11;
    v191 = *v208;
    do
    {
      v35 = 0;
      v195 = v32;
      do
      {
        if (*v208 != v33)
        {
          objc_enumerationMutation(v22);
        }

        v36 = *(*(&v207 + 1) + 8 * v35);
        v37 = objc_msgSend_axisID(v36, v28, v29, v30, v31, v191, v192);
        if ((objc_msgSend_isCategory(v36, v38, v39, v40, v41) & 1) == 0 && objc_msgSend_type(v37, v42, v43, v44, v45) != 4)
        {
          v196 = v35;
          objc_opt_class();
          v50 = objc_msgSend_objectForKeyedSubscript_(v11, v46, v47, v48, v49, v37);
          v51 = TSUCheckedDynamicCast();
          v52 = v51;
          v53 = MEMORY[0x277CBEBF8];
          if (v51)
          {
            v53 = v51;
          }

          v54 = v53;

          v59 = objc_msgSend_axisID(v36, v55, v56, v57, v58);
          v64 = objc_msgSend_referenceLineNonStyleItemsForAxisID_(v6, v60, v61, v62, v63, v59);

          v65 = MEMORY[0x277CBEB18];
          v70 = objc_msgSend_count(v64, v66, v67, v68, v69);
          v201 = objc_msgSend_arrayWithCapacity_(v65, v71, v72, v73, v74, v70);
          v202 = v54;
          v197 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB58], v75, v76, v77, v78, v54);
          if (objc_msgSend_count(v64, v79, v80, v81, v82))
          {
            v87 = 0;
            v198 = v36;
            v200 = v64;
            while (1)
            {
              objc_opt_class();
              v92 = objc_msgSend_objectAtIndexedSubscript_(v64, v88, v89, v90, v91, v87);
              v93 = TSUCheckedDynamicCast();

              v98 = objc_msgSend_axisID(v36, v94, v95, v96, v97);
              v103 = objc_msgSend_referenceLineStyleForAxisID_atIndex_(v6, v99, v100, v101, v102, v98, v87);

              if (v87 >= objc_msgSend_count(v202, v104, v105, v106, v107))
              {
                goto LABEL_17;
              }

              v108 = v37;
              v109 = p_vtable;
              v110 = v6;
              objc_opt_class();
              v115 = objc_msgSend_objectAtIndexedSubscript_(v202, v111, v112, v113, v114, v87);
              v116 = TSUCheckedDynamicCast();

              v121 = objc_msgSend_uuid(v116, v117, v118, v119, v120);
              v126 = objc_msgSend_uuid(v93, v122, v123, v124, v125);
              isEqual = objc_msgSend_isEqual_(v121, v127, v128, v129, v130, v126);

              if ((isEqual & 1) == 0)
              {
                break;
              }

              objc_msgSend_removeObject_(v197, v132, v133, v134, v135, v116);
              v6 = v110;
              p_vtable = v109;
              v37 = v108;
              v36 = v198;
              if (!v116)
              {
                goto LABEL_17;
              }

LABEL_18:
              v150 = objc_msgSend_nonStyle(v93, v136, v137, v138, v139);
              objc_msgSend_setStyle_nonStyle_(v116, v151, v152, v153, v154, v103, v150);

              objc_msgSend_addObject_(v201, v155, v156, v157, v158, v116);
              ++v87;
              v64 = v200;
              if (v87 >= objc_msgSend_count(v200, v159, v160, v161, v162))
              {
                goto LABEL_19;
              }
            }

            v6 = v110;
            p_vtable = v109;
            v37 = v108;
            v36 = v198;
LABEL_17:
            v140 = [TSCHReferenceLine alloc];
            v145 = objc_msgSend_uuid(v93, v141, v142, v143, v144);
            v116 = objc_msgSend_initWithModel_axisID_index_uuid_(v140, v146, v147, v148, v149, selfCopy, v37, v87, v145);

            goto LABEL_18;
          }

LABEL_19:
          v163 = objc_msgSend_copy(v201, v83, v84, v85, v86);
          v11 = v193;
          objc_msgSend_setObject_forKeyedSubscript_(v193, v164, v165, v166, v167, v163, v37);

          objc_msgSend_removeObject_(v194, v168, v169, v170, v171, v37);
          v33 = v191;
          v22 = v192;
          v32 = v195;
          v35 = v196;
        }

        ++v35;
      }

      while (v35 != v32);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v28, v29, v30, v31, &v207, v212, 16);
    }

    while (v32);
  }

  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  v172 = v194;
  v177 = objc_msgSend_countByEnumeratingWithState_objects_count_(v172, v173, v174, v175, v176, &v203, v211, 16);
  if (v177)
  {
    v182 = v177;
    v183 = *v204;
    do
    {
      for (i = 0; i != v182; ++i)
      {
        if (*v204 != v183)
        {
          objc_enumerationMutation(v172);
        }

        objc_msgSend_removeObjectForKey_(v11, v178, v179, v180, v181, *(*(&v203 + 1) + 8 * i));
      }

      v182 = objc_msgSend_countByEnumeratingWithState_objects_count_(v172, v178, v179, v180, v181, &v203, v211, 16);
    }

    while (v182);
  }

  v189 = objc_msgSend_copy(v11, v185, v186, v187, v188);
  referenceLinesMap = selfCopy->_referenceLinesMap;
  selfCopy->_referenceLinesMap = v189;
}

- (void)p_synchronizeModelWithSeriesNonStyleMigration:(BOOL)migration
{
  migrationCopy = migration;
  obj = objc_msgSend_syncRoot(self, a2, v3, v4, v5);
  objc_sync_enter(obj);
  objc_msgSend_p_synchronizeAxisList(self, v8, v9, v10, v11);
  objc_msgSend_p_synchronizeSeriesListWithSeriesNonStyleMigration_(self, v12, v13, v14, v15, migrationCopy);
  objc_msgSend_p_postSynchronizeAxisList(self, v16, v17, v18, v19);
  objc_msgSend_p_synchronizeReferenceLines(self, v20, v21, v22, v23);
  objc_msgSend_makeObjectsPerformSelector_(self->_seriesList, v24, v25, v26, v27, sel_invalidateCacheDataForSynchronization);
  objc_msgSend_makeObjectsPerformSelector_(self->_axisList, v28, v29, v30, v31, sel_invalidateTransientState);
  self->_modelInvalid = 0;
  objc_msgSend_resetSeriesStorage(self, v32, v33, v34, v35);
  if ((objc_msgSend_p_disableCachingMediatorData(self, v36, v37, v38, v39) & 1) == 0)
  {
    objc_msgSend_p_cacheAxisDataFormatters(self, v40, v41, v42, v43);
    objc_msgSend_p_cacheSeriesDataFormatters(self, v44, v45, v46, v47);
    objc_msgSend_p_cacheSummaryLabelDataFormatter(self, v48, v49, v50, v51);
    objc_msgSend_p_cacheMediatorChartGridDirection(self, v52, v53, v54, v55);
  }

  objc_sync_exit(obj);
}

- (void)resetSeriesStorage
{
  obj = objc_msgSend_syncRoot(self, a2, v2, v3, v4);
  objc_sync_enter(obj);
  objc_msgSend_makeObjectsPerformSelector_(self->_seriesList, v6, v7, v8, v9, sel_resetSeriesStorage);
  objc_sync_exit(obj);
}

- (void)invalidateCaches
{
  obj = objc_msgSend_syncRoot(self, a2, v2, v3, v4);
  objc_sync_enter(obj);
  modelManagedCaches = self->_modelManagedCaches;
  self->_modelManagedCaches = 0;

  objc_msgSend_makeObjectsPerformSelector_(self->_seriesList, v7, v8, v9, v10, sel_invalidateCacheDataForSynchronization);
  objc_msgSend_makeObjectsPerformSelector_(self->_axisList, v11, v12, v13, v14, sel_invalidateTransientState);
  objc_sync_exit(obj);
}

- (void)setCacheObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (objc_msgSend_length(keyCopy, v7, v8, v9, v10))
  {
    if (!keyCopy)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHChartModel setCacheObject:forKey:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 948, 0, "invalid nil value for '%{public}s'", "key");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }

    v30 = objc_msgSend_syncRoot(self, v11, v12, v13, v14);
    objc_sync_enter(v30);
    modelManagedCaches = self->_modelManagedCaches;
    if (modelManagedCaches)
    {
      v32 = modelManagedCaches;
    }

    else
    {
      v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v33 = self->_modelManagedCaches;
    self->_modelManagedCaches = v32;

    v38 = self->_modelManagedCaches;
    if (objectCopy)
    {
      objc_msgSend_setObject_forKey_(v38, v34, v35, v36, v37, objectCopy, keyCopy);
    }

    else
    {
      objc_msgSend_removeObjectForKey_(v38, v34, v35, v36, v37, keyCopy);
    }

    objc_sync_exit(v30);
  }
}

- (id)cachedObjectForKey:(id)key
{
  keyCopy = key;
  if (objc_msgSend_length(keyCopy, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_syncRoot(self, v9, v10, v11, v12);
    objc_sync_enter(v13);
    v18 = objc_msgSend_objectForKey_(self->_modelManagedCaches, v14, v15, v16, v17, keyCopy);
    objc_sync_exit(v13);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)invalidateModel
{
  v6 = objc_msgSend_syncRoot(self, a2, v2, v3, v4);
  objc_sync_enter(v6);
  self->_modelInvalid = 1;
  objc_msgSend_invalidateCaches(self, v7, v8, v9, v10);
  seriesDimensionsByGridIndex = self->_seriesDimensionsByGridIndex;
  self->_seriesDimensionsByGridIndex = 0;

  gridIndexesBySeriesDimension = self->_gridIndexesBySeriesDimension;
  self->_gridIndexesBySeriesDimension = 0;

  if (!self->_isTransient)
  {
    v17 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v13, v14, v15, v16);
    objc_msgSend_postNotificationName_object_(v17, v18, v19, v20, v21, @"kTSCHChartModelInvalidatedNotification", self);
  }

  objc_sync_exit(v6);

  if (!self->_isTransient)
  {
    v30 = objc_msgSend_chartInfo(self, v22, v23, v24, v25);
    objc_msgSend_modelDidInvalidateWithDetails_(v30, v26, v27, v28, v29, 0);
  }
}

- (void)validateIfNeededWithSeriesNonStyleMigration:(BOOL)migration
{
  migrationCopy = migration;
  obj = objc_msgSend_syncRoot(self, a2, v3, v4, v5);
  objc_sync_enter(obj);
  if (self->_modelInvalid)
  {
    objc_msgSend_p_synchronizeModelWithSeriesNonStyleMigration_(self, v8, v9, v10, v11, migrationCopy);
  }

  objc_sync_exit(obj);
}

- (NSArray)axisList
{
  v6 = objc_msgSend_syncRoot(self, a2, v2, v3, v4);
  objc_sync_enter(v6);
  if (self->_modelInvalid)
  {
    objc_msgSend_p_synchronizeModel(self, v7, v8, v9, v10);
  }

  v11 = objc_msgSend_copy(self->_axisList, v7, v8, v9, v10);
  objc_sync_exit(v6);

  return v11;
}

- (id)noSyncAxisList
{
  v6 = objc_msgSend_syncRoot(self, a2, v2, v3, v4);
  objc_sync_enter(v6);
  if (self->_modelInvalid)
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_msgSend_axisList(self, v7, v8, v9, v10);
  }

  objc_sync_exit(v6);

  return v11;
}

- (NSArray)valueAxisList
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = objc_msgSend_axisList(self, v7, 0.0, v8, v9, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, &v30, v34, 16);
  if (v15)
  {
    v20 = v15;
    v21 = *v31;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v10);
        }

        v23 = *(*(&v30 + 1) + 8 * i);
        if ((objc_msgSend_isCategory(v23, v16, v17, v18, v19) & 1) == 0)
        {
          objc_msgSend_addObject_(v6, v16, v17, v18, v19, v23);
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, v17, v18, v19, &v30, v34, 16);
    }

    while (v20);
  }

  v28 = objc_msgSend_copy(v6, v24, v25, v26, v27);

  return v28;
}

- (NSArray)categoryAxisList
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = objc_msgSend_axisList(self, v7, 0.0, v8, v9, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, &v30, v34, 16);
  if (v15)
  {
    v20 = v15;
    v21 = *v31;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v10);
        }

        v23 = *(*(&v30 + 1) + 8 * i);
        if (objc_msgSend_isCategory(v23, v16, v17, v18, v19))
        {
          objc_msgSend_addObject_(v6, v16, v17, v18, v19, v23);
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, v17, v18, v19, &v30, v34, 16);
    }

    while (v20);
  }

  v28 = objc_msgSend_copy(v6, v24, v25, v26, v27);

  return v28;
}

- (id)axisForID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = objc_msgSend_axisList(self, v5, 0.0, v6, v7, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v28, v32, 16);
  if (v14)
  {
    v18 = *v29;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v8);
        }

        v20 = *(*(&v28 + 1) + 8 * i);
        v21 = objc_msgSend_axisID(v20, v13, v15, v16, v17);
        isEqual = objc_msgSend_isEqual_(v21, v22, v23, v24, v25, dCopy);

        if (isEqual)
        {
          v14 = v20;
          goto LABEL_11;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v13, v15, v16, v17, &v28, v32, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v14;
}

- (NSArray)seriesList
{
  v6 = objc_msgSend_syncRoot(self, a2, v2, v3, v4);
  objc_sync_enter(v6);
  if (self->_modelInvalid)
  {
    objc_msgSend_p_synchronizeModel(self, v7, v8, v9, v10);
  }

  v11 = objc_msgSend_copy(self->_seriesList, v7, v8, v9, v10);
  objc_sync_exit(v6);

  return v11;
}

- (void)setShouldCacheMediatorData:(BOOL)data
{
  obj = objc_msgSend_syncRoot(self, a2, v3, v4, v5);
  objc_sync_enter(obj);
  self->_disableCachingMediatorData = !data;
  objc_sync_exit(obj);
}

- (void)disableCachingMediatorDataDuringBlock:(id)block
{
  blockCopy = block;
  v8 = objc_msgSend_syncRoot(self, v4, v5, v6, v7);
  objc_sync_enter(v8);
  disableCachingMediatorData = self->_disableCachingMediatorData;
  self->_disableCachingMediatorData = 1;
  blockCopy[2]();
  self->_disableCachingMediatorData = disableCachingMediatorData;
  objc_sync_exit(v8);
}

- (id)cachedDataFormatterPersistableStyleObjectForID:(id)d
{
  dCopy = d;
  axisIDToDataFormatterPersistableStyleObjectsMap = self->_axisIDToDataFormatterPersistableStyleObjectsMap;
  if (!axisIDToDataFormatterPersistableStyleObjectsMap)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHChartModel cachedDataFormatterPersistableStyleObjectForID:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 1091, 0, "invalid nil value for '%{public}s'", "_axisIDToDataFormatterPersistableStyleObjectsMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    axisIDToDataFormatterPersistableStyleObjectsMap = self->_axisIDToDataFormatterPersistableStyleObjectsMap;
  }

  v25 = objc_msgSend_objectForKeyedSubscript_(axisIDToDataFormatterPersistableStyleObjectsMap, v4, v6, v7, v8, dCopy);
  v26 = TSUCheckedProtocolCast();

  return v26;
}

- (id)cachedDataFormatterPersistableStyleObjectAtSeriesIndex:(unint64_t)index
{
  seriesIndexToDataFormatterPersistableStyleObjectsMap = self->_seriesIndexToDataFormatterPersistableStyleObjectsMap;
  if (!seriesIndexToDataFormatterPersistableStyleObjectsMap)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCHChartModel cachedDataFormatterPersistableStyleObjectAtSeriesIndex:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 1097, 0, "invalid nil value for '%{public}s'", "_seriesIndexToDataFormatterPersistableStyleObjectsMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    seriesIndexToDataFormatterPersistableStyleObjectsMap = self->_seriesIndexToDataFormatterPersistableStyleObjectsMap;
  }

  v24 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, v3, v4, v5, index);
  v29 = objc_msgSend_objectForKeyedSubscript_(seriesIndexToDataFormatterPersistableStyleObjectsMap, v25, v26, v27, v28, v24);
  v30 = TSUCheckedProtocolCast();

  return v30;
}

- (NSDictionary)referenceLinesMap
{
  v6 = objc_msgSend_syncRoot(self, a2, v2, v3, v4);
  objc_sync_enter(v6);
  if (self->_modelInvalid)
  {
    objc_msgSend_p_synchronizeModel(self, v7, v8, v9, v10);
  }

  v11 = objc_msgSend_copy(self->_referenceLinesMap, v7, v8, v9, v10);
  objc_sync_exit(v6);

  return v11;
}

- (id)noSyncSeriesList
{
  v6 = objc_msgSend_syncRoot(self, a2, v2, v3, v4);
  objc_sync_enter(v6);
  if (self->_modelInvalid)
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_msgSend_seriesList(self, v7, v8, v9, v10);
  }

  objc_sync_exit(v6);

  return v11;
}

- (unint64_t)numberOfSeries
{
  v5 = objc_msgSend_seriesList(self, a2, v2, v3, v4);
  v10 = objc_msgSend_count(v5, v6, v7, v8, v9);

  return v10;
}

- (unint64_t)maxNumberOfReferenceLines
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = objc_msgSend_axisList(self, a2, COERCE_DOUBLE(0x2020000000), v2, v3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276237438;
  v10[3] = &unk_27A6B6DD8;
  v10[4] = &v11;
  objc_msgSend_enumerateObjectsUsingBlock_(v4, v5, COERCE_DOUBLE(3221225472), v6, v7, v10);

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (unint64_t)numberOfSeriesForCalculatingBarWidth
{
  v6 = objc_msgSend_syncRoot(self, a2, v2, v3, v4);
  objc_sync_enter(v6);
  if (self->_modelInvalid)
  {
    objc_msgSend_p_synchronizeModel(self, v7, v8, v9, v10);
  }

  numberOfSeriesForCalculatingBarWidth = self->_numberOfSeriesForCalculatingBarWidth;
  objc_sync_exit(v6);

  return numberOfSeriesForCalculatingBarWidth;
}

- (id)seriesAtIndex:(unint64_t)index
{
  v7 = objc_msgSend_seriesList(self, a2, v3, v4, v5);
  v12 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, v9, v10, v11, index);

  return v12;
}

- (id)seriesForHiddenDataExportAtIndex:(unint64_t)index
{
  v147 = *MEMORY[0x277D85DE8];
  v5 = [TSCHChartSeries alloc];
  v10 = objc_msgSend_initWithChartModel_index_(v5, v6, v7, v8, v9, self, index);
  objc_msgSend_setIsFakeSeriesForHiddenDataExport_(v10, v11, v12, v13, v14, 1);
  WeakRetained = objc_loadWeakRetained(&self->_chartInfo);
  v20 = objc_msgSend_chartType(WeakRetained, v16, v17, v18, v19);
  v25 = objc_msgSend_defaultSeriesType_(v20, v21, v22, v23, v24, index);
  objc_msgSend_setSeriesType_(v10, v26, v27, v28, v29, v25);

  v30 = objc_loadWeakRetained(&self->_chartInfo);
  v35 = objc_msgSend_getSeriesStyleForSeriesIndex_(v30, v31, v32, v33, v34, index);
  objc_msgSend_setStyle_(v10, v36, v37, v38, v39, v35);

  v40 = objc_loadWeakRetained(&self->_chartInfo);
  v45 = objc_msgSend_getSeriesNonstyleForSeriesIndex_(v40, v41, v42, v43, v44, index);
  objc_msgSend_setNonStyle_(v10, v46, v47, v48, v49, v45);

  v54 = objc_msgSend_chartInfo(self, v50, v51, v52, v53);
  v59 = objc_msgSend_chartType(v54, v55, v56, v57, v58);
  LODWORD(v35) = objc_msgSend_supportsMultipleSeriesTypes(v59, v60, v61, v62, v63);

  if (v35)
  {
    v68 = objc_msgSend_intValueForProperty_defaultValue_(v10, v64, v65, v66, v67, 1171, 0xFFFFFFFFLL);
    if (v68 == 2)
    {
      v69 = objc_msgSend_mixedColumnSeries(TSCHChartSeriesType, v64, v65, v66, v67);
    }

    else if (v68 == 1)
    {
      v69 = objc_msgSend_mixedAreaSeries(TSCHChartSeriesType, v64, v65, v66, v67);
    }

    else
    {
      if (v68)
      {
        goto LABEL_9;
      }

      v69 = objc_msgSend_mixedLineSeries(TSCHChartSeriesType, v64, v65, v66, v67);
    }

    v74 = v69;
    objc_msgSend_setSeriesType_(v10, v70, v71, v72, v73, v69);
  }

LABEL_9:
  objc_msgSend_clearAxisIDs(v10, v64, v65, v66, v67);
  v79 = objc_msgSend_chartInfo(self, v75, v76, v77, v78);
  v84 = objc_msgSend_chartType(v79, v80, v81, v82, v83);
  v89 = objc_msgSend_requiresYAxisOrdinal(v84, v85, v86, v87, v88);

  if (v89)
  {
    v94 = objc_msgSend_seriesIndex(v10, v90, v91, v92, v93);
    v99 = objc_msgSend_defaultOrdinalForAxisType_seriesIndex_(self, v95, v96, v97, v98, 2, v94);
    if (v99 >> 31)
    {
      sub_2764A6F50();
      v104 = objc_msgSend_intValueForProperty_defaultValue_(v10, v138, v139, v140, v141, 1212, 0x7FFFFFFFLL);
    }

    else
    {
      v104 = objc_msgSend_intValueForProperty_defaultValue_(v10, v100, v101, v102, v103, 1212, v99);
    }

    v105 = v104;
  }

  else
  {
    v105 = 0;
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v106 = objc_msgSend_axisList(self, v90, 0.0, v92, v93, 0);
  v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v107, v108, v109, v110, &v142, v146, 16);
  if (v111)
  {
    v116 = v111;
    v117 = *v143;
    do
    {
      for (i = 0; i != v116; ++i)
      {
        if (*v143 != v117)
        {
          objc_enumerationMutation(v106);
        }

        v119 = *(*(&v142 + 1) + 8 * i);
        v120 = objc_msgSend_axisID(v119, v112, v113, v114, v115);
        v125 = objc_msgSend_type(v120, v121, v122, v123, v124);

        if (v125 == 2)
        {
          v126 = objc_msgSend_axisID(v119, v112, v113, v114, v115);
          v131 = objc_msgSend_ordinal(v126, v127, v128, v129, v130);

          if (v131 != v105)
          {
            continue;
          }
        }

        v132 = objc_msgSend_axisID(v119, v112, v113, v114, v115);
        objc_msgSend_setAxisID_forAxisType_(v10, v133, v134, v135, v136, v132, v125);
      }

      v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v112, v113, v114, v115, &v142, v146, 16);
    }

    while (v116);
  }

  return v10;
}

- (unint64_t)numberOfGridValues
{
  v7 = objc_msgSend_direction(self->_grid, a2, v2, v3, v4);
  grid = self->_grid;
  if (v7 == 2)
  {

    return objc_msgSend_numberOfRows(grid, v6, v8, v9, v10);
  }

  else
  {

    return objc_msgSend_numberOfColumns(grid, v6, v8, v9, v10);
  }
}

- (unint64_t)numberOfChunkableMultiDataSets
{
  if (!objc_msgSend_isMultiData(self, a2, v2, v3, v4))
  {
    return 1;
  }

  return objc_msgSend_numberOfGridValues(self, v6, v7, v8, v9);
}

- (unint64_t)numberOfMultiDataSets
{
  if (!objc_msgSend_isMultiData(self, a2, v2, v3, v4))
  {
    return 1;
  }

  result = objc_msgSend_numberOfGridValues(self, v6, v7, v8, v9);
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (unint64_t)numberOfValues
{
  isMultiData = objc_msgSend_isMultiData(self, a2, v2, v3, v4);
  result = objc_msgSend_numberOfGridValues(self, v7, v8, v9, v10);
  if (isMultiData)
  {
    return result != 0;
  }

  return result;
}

- (id)allGroupsIndexSetForSeries:(id)series
{
  v6 = MEMORY[0x277CCAA78];
  v8 = objc_msgSend_numberOfGroupsInSeries_(self, a2, v3, v4, v5, series);

  return objc_msgSend_indexSetWithIndexesInRange_(v6, v7, v9, v10, v11, 0, v8);
}

- (unint64_t)p_numberOfGroupsInSeries:(id)series
{
  v80 = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  v9 = seriesCopy;
  if (seriesCopy)
  {
    v11 = objc_msgSend_numberOfGroups(seriesCopy, v5, v6, v7, v8);
  }

  else
  {
    v15 = objc_msgSend_seriesList(self, v5, v6, v7, v8);
    v20 = objc_msgSend_firstObject(v15, v16, v17, v18, v19);
    v11 = objc_msgSend_numberOfGroups(v20, v21, v22, v23, v24);
  }

  v25 = objc_msgSend_seriesType(v9, v10, v12, v13, v14);
  v30 = objc_msgSend_scatterSeries(TSCHChartSeriesType, v26, v27, v28, v29);
  v35 = v30;
  v74 = v9;
  if (v25 == v30)
  {
  }

  else
  {
    v36 = objc_msgSend_seriesType(v9, v31, v32, v33, v34);
    v41 = objc_msgSend_bubbleSeries(TSCHChartSeriesType, v37, v38, v39, v40);

    if (v36 != v41)
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v45 = objc_msgSend_seriesList(self, v42, 0.0, v43, v44);
      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, v47, v48, v49, &v75, v79, 16);
      if (v50)
      {
        v55 = v50;
        v56 = *v76;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v76 != v56)
            {
              objc_enumerationMutation(v45);
            }

            if (objc_msgSend_numberOfGroups(*(*(&v75 + 1) + 8 * i), v51, v52, v53, v54) != v11)
            {
              v58 = MEMORY[0x277D81150];
              v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "[TSCHChartModel p_numberOfGroupsInSeries:]");
              v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v65, v66, v67, v68, v59, v64, 1242, 0, "expect all series to have the same number of groups for this series type");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
            }
          }

          v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v51, v52, v53, v54, &v75, v79, 16);
        }

        while (v55);
      }
    }
  }

  return v11;
}

- (unint64_t)numberOfGroupsInSeriesAtIndex:(unint64_t)index
{
  v7 = objc_msgSend_seriesAtIndex_(self, a2, v3, v4, v5, index);
  v12 = objc_msgSend_p_numberOfGroupsInSeries_(self, v8, v9, v10, v11, v7);

  return v12;
}

- (id)nameForSeries:(unint64_t)series
{
  v9 = objc_msgSend_direction(self->_grid, a2, v3, v4, v5);
  grid = self->_grid;
  if (v9 == 1)
  {
    objc_msgSend_nameForRow_(grid, v8, v10, v11, v12, series);
  }

  else
  {
    objc_msgSend_nameForColumn_(grid, v8, v10, v11, v12, series);
  }
  v14 = ;

  return v14;
}

- (void)setNameForSeries:(unint64_t)series toName:(id)name
{
  grid = self->_grid;
  nameCopy = name;
  v12 = objc_msgSend_direction(grid, v7, v8, v9, v10);
  v16 = self->_grid;
  if (v12 == 1)
  {
    objc_msgSend_setNameForRow_toName_(v16, v11, v13, v14, v15, series, nameCopy);
  }

  else
  {
    objc_msgSend_setNameForColumn_toName_(v16, v11, v13, v14, v15, series, nameCopy);
  }
}

- (id)dataSetNameForMultiDataModel
{
  if ((objc_msgSend_isMultiData(self, a2, v2, v3, v4) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHChartModel dataSetNameForMultiDataModel]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 1277, 0, "should not be called for non-multi data chart model");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_p_multiDataSetCategoryIndexForCategory_(self, v6, v7, v8, v9, 0);
  v31 = objc_msgSend_numberOfMultiDataSetCategories(self, v26, v27, v28, v29);
  v35 = 0;
  if (v25 < v31)
  {
    v35 = objc_msgSend_nameForCategory_(self, v30, v32, v33, v34, 0);
  }

  return v35;
}

- (unint64_t)categoryForMultiDataSetCategoryIndex:(unint64_t)index
{
  multiDataSetIndex = self->_multiDataSetIndex;
  v4 = index >= multiDataSetIndex;
  v5 = index - multiDataSetIndex;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)multiDataSetCategoryIndexForCategory:(unint64_t)category
{
  v8 = objc_msgSend_p_multiDataSetCategoryIndexForCategory_(self, a2, v3, v4, v5);
  if (v8 >= objc_msgSend_numberOfMultiDataSetCategories(self, v9, v10, v11, v12))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCHChartModel multiDataSetCategoryIndexForCategory:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    v28 = objc_msgSend_numberOfMultiDataSetCategories(self, v24, v25, v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v29, v30, v31, v32, v18, v23, 1293, 0, "multiDataSetIndex out of bounds %lu converted to %lu < %lu", category, v8, v28);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  return v8;
}

- (id)nameForCategory:(unint64_t)category
{
  v8 = objc_msgSend_multiDataSetCategoryIndexForCategory_(self, a2, v3, v4, v5, category);

  return objc_msgSend_nameForMultiDataSetCategory_(self, v7, v9, v10, v11, v8);
}

- (id)nameForMultiDataSetCategory:(unint64_t)category
{
  v9 = objc_msgSend_direction(self->_grid, a2, v3, v4, v5);
  grid = self->_grid;
  if (v9 == 2)
  {
    objc_msgSend_nameForRow_(grid, v8, v10, v11, v12, category);
  }

  else
  {
    objc_msgSend_nameForColumn_(grid, v8, v10, v11, v12, category);
  }
  v14 = ;

  return v14;
}

- (void)setNameForCategory:(unint64_t)category toName:(id)name
{
  nameCopy = name;
  v10 = objc_msgSend_multiDataSetCategoryIndexForCategory_(self, v6, v7, v8, v9, category);
  objc_msgSend_setNameForMultiDataSetCategory_toName_(self, v11, v12, v13, v14, v10, nameCopy);
}

- (void)setNameForMultiDataSetCategory:(unint64_t)category toName:(id)name
{
  grid = self->_grid;
  nameCopy = name;
  v12 = objc_msgSend_direction(grid, v7, v8, v9, v10);
  v16 = self->_grid;
  if (v12 == 2)
  {
    objc_msgSend_setNameForRow_toName_(v16, v11, v13, v14, v15, category, nameCopy);
  }

  else
  {
    objc_msgSend_setNameForColumn_toName_(v16, v11, v13, v14, v15, category, nameCopy);
  }
}

- (BOOL)p_shouldLoadDefaultData
{
  v5 = objc_msgSend_grid(self, a2, v2, v3, v4);
  v10 = objc_msgSend_dirty(v5, v6, v7, v8, v9);

  return v10 ^ 1;
}

- (void)p_loadDefaultDataWithGridRowIds:(id)ids gridColumnIds:(id)columnIds forDocumentLocale:(id)locale
{
  idsCopy = ids;
  columnIdsCopy = columnIds;
  localeCopy = locale;
  v15 = objc_msgSend_grid(self, v10, v11, v12, v13);
  if (!v15)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v16, v17, v18, "[TSCHChartModel p_loadDefaultDataWithGridRowIds:gridColumnIds:forDocumentLocale:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 1325, 0, "invalid nil value for '%{public}s'", "grid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  v35 = objc_msgSend_chartInfo(self, v14, v16, v17, v18);
  if (!v35)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v36, v37, v38, "[TSCHChartModel p_loadDefaultDataWithGridRowIds:gridColumnIds:forDocumentLocale:]");
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 1327, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
  }

  v54 = objc_msgSend_chartType(v35, v34, v36, v37, v38);
  v60 = objc_msgSend_defaultDataFileName(v54, v55, v56, v57, v58);
  if (v60)
  {
    if (!localeCopy)
    {
      v64 = MEMORY[0x277D81150];
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v61, v62, v63, "[TSCHChartModel p_loadDefaultDataWithGridRowIds:gridColumnIds:forDocumentLocale:]");
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, v67, v68, v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v71, v72, v73, v74, v65, v70, 1332, 0, "invalid nil value for '%{public}s'", "documentLocale");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77, v78);
    }

    v80 = objc_msgSend_URLForResource_withExtension_subdirectory_(localeCopy, v59, v61, v62, v63, v60, 0, 0);
    if (v80)
    {
      v84 = objc_msgSend_dictionaryWithContentsOfURL_(MEMORY[0x277CBEAC0], v79, v81, v82, v83, v80);
      v89 = v84;
      if (v84)
      {
        v90 = objc_msgSend_objectForKey_(v84, v85, v86, v87, v88, @"Grid");
        objc_msgSend_takeDataFromDictionary_rowIds_columnIds_(v15, v91, v92, v93, v94, v90, idsCopy, columnIdsCopy);
      }
    }
  }

  objc_msgSend_setDirty_(v15, v59, v61, v62, v63, 0);
  objc_msgSend_invalidateModel(self, v95, v96, v97, v98);
}

- (void)loadDefaultDataIfNotDirtyWithGridRowIds:(id)ids gridColumnIds:(id)columnIds forDocumentLocale:(id)locale
{
  idsCopy = ids;
  columnIdsCopy = columnIds;
  localeCopy = locale;
  if (objc_msgSend_p_shouldLoadDefaultData(self, v10, v11, v12, v13))
  {
    objc_msgSend_p_loadDefaultDataWithGridRowIds_gridColumnIds_forDocumentLocale_(self, v14, v15, v16, v17, idsCopy, columnIdsCopy, localeCopy);
  }
}

- (void)p_loadDefaultData
{
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v81 = v6;
  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCHChartModel p_loadDefaultData]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 1363, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    v6 = 0;
  }

  v26 = objc_msgSend_chartType(v6, v7, v8, v9, v10);
  v31 = objc_msgSend_documentRoot(v81, v27, v28, v29, v30);
  v36 = objc_msgSend_documentLocale(v31, v32, v33, v34, v35);

  v41 = objc_msgSend_defaultDataRowCountForChartType_forDocumentLocale_(v81, v37, v38, v39, v40, v26, v36);
  v46 = objc_msgSend_defaultDataColumnCountForChartType_forDocumentLocale_(v81, v42, v43, v44, v45, v26, v36);
  v52 = objc_msgSend_grid(self, v47, v48, v49, v50);
  if (!v52)
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v53, v54, v55, "[TSCHChartModel p_loadDefaultData]");
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v63, v64, v65, v66, v57, v62, 1369, 0, "invalid nil value for '%{public}s'", "grid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
  }

  v71 = objc_msgSend_createUUIDArrayWithCount_(v52, v51, v53, v54, v55, v41);
  v76 = objc_msgSend_createUUIDArrayWithCount_(v52, v72, v73, v74, v75, v46);
  objc_msgSend_p_loadDefaultDataWithGridRowIds_gridColumnIds_forDocumentLocale_(self, v77, v78, v79, v80, v71, v76, v36);
}

- (void)loadDefaultDataIfNotDirty
{
  if (objc_msgSend_p_shouldLoadDefaultData(self, a2, v2, v3, v4))
  {

    MEMORY[0x2821F9670](self, sel_p_loadDefaultData, v6, v7, v8);
  }
}

- (void)p_setBimapEntryForSeriesDimension:(id)dimension andGridIndex:(unint64_t)index
{
  dimensionCopy = dimension;
  if (!dimensionCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHChartModel p_setBimapEntryForSeriesDimension:andGridIndex:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 1387, 0, "invalid nil value for '%{public}s'", "dim");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v6, v7, v8, v9, index);
  objc_msgSend_setObject_forKey_(self->_gridIndexesBySeriesDimension, v26, v27, v28, v29, v25, dimensionCopy);
  objc_msgSend_setObject_forKey_(self->_seriesDimensionsByGridIndex, v30, v31, v32, v33, dimensionCopy, v25);
}

- (id)seriesDimensionForGridIndex:(unint64_t)index
{
  v8 = objc_msgSend_syncRoot(self, a2, v3, v4, v5);
  objc_sync_enter(v8);
  if (self->_modelInvalid)
  {
    objc_msgSend_p_synchronizeModel(self, v9, v10, v11, v12);
  }

  seriesDimensionsByGridIndex = self->_seriesDimensionsByGridIndex;
  if (!seriesDimensionsByGridIndex)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartModel seriesDimensionForGridIndex:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 1400, 0, "invalid nil value for '%{public}s'", "_seriesDimensionsByGridIndex");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    seriesDimensionsByGridIndex = self->_seriesDimensionsByGridIndex;
  }

  v29 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v9, v10, v11, v12, index);
  v34 = objc_msgSend_objectForKey_(seriesDimensionsByGridIndex, v30, v31, v32, v33, v29);

  objc_sync_exit(v8);

  return v34;
}

- (unint64_t)gridIndexForSeriesDimension:(id)dimension
{
  dimensionCopy = dimension;
  if (!dimensionCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHChartModel gridIndexForSeriesDimension:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 1407, 0, "invalid nil value for '%{public}s'", "seriesDim");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_syncRoot(self, v4, v6, v7, v8);
  objc_sync_enter(v24);
  if (self->_modelInvalid)
  {
    objc_msgSend_p_synchronizeModel(self, v25, v26, v27, v28);
  }

  v29 = objc_msgSend_objectForKey_(self->_gridIndexesBySeriesDimension, v25, v26, v27, v28, dimensionCopy);
  objc_sync_exit(v24);

  if (v29)
  {
    v34 = objc_msgSend_unsignedIntegerValue(v29, v30, v31, v32, v33);
  }

  else
  {
    v34 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v34;
}

- (BOOL)hasReferenceLines
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chartType(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_supportsReferenceLines(v11, v12, v13, v14, v15);

  if (v16)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v20 = objc_msgSend_axisList(self, v17, 0.0, v18, v19, 0);
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, v22, v23, v24, &v40, v44, 16);
    if (v26)
    {
      v30 = *v41;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(v20);
          }

          v32 = *(*(&v40 + 1) + 8 * i);
          if (objc_msgSend_supportsReferenceLines(v32, v25, v27, v28, v29))
          {
            v33 = objc_msgSend_referenceLines(v32, v25, v27, v28, v29);
            v38 = objc_msgSend_count(v33, v34, v35, v36, v37);

            if (v38)
            {
              LOBYTE(v26) = 1;
              goto LABEL_14;
            }
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v25, v27, v28, v29, &v40, v44, 16);
        if (v26)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v26) = 0;
  }

  return v26;
}

- (id)referenceLineForStyleSwapIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v9 = objc_msgSend_axisIDFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, a2, v3, v4, v5);
    v14 = objc_msgSend_refLineIndexFromStyleSwapOrStyleOwnerIndex_(TSCHReferenceLine, v10, v11, v12, v13, index);
    v19 = objc_msgSend_referenceLinesMap(self, v15, v16, v17, v18);
    v24 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v21, v22, v23, v9);

    if (v14 >= objc_msgSend_count(v24, v25, v26, v27, v28))
    {
      v6 = 0;
    }

    else
    {
      v6 = objc_msgSend_objectAtIndexedSubscript_(v24, v29, v30, v31, v32, v14);
    }
  }

  return v6;
}

- (unint64_t)styleSwapIndexForReferenceLine:(id)line
{
  if (line)
  {
    return objc_msgSend_styleSwapIndex(line, a2, v3, v4, v5);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison
{
  if (self == comparison)
  {
    return 1;
  }

  comparisonCopy = comparison;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && self->_scatterFormat == v5[6])
  {
    v10 = objc_msgSend_grid(self, v6, v7, v8, v9);
    v15 = objc_msgSend_grid(v5, v11, v12, v13, v14);
    isEquivalentForCrossDocumentPasteMasterComparison = objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_(v10, v16, v17, v18, v19, v15);
  }

  else
  {
    isEquivalentForCrossDocumentPasteMasterComparison = 0;
  }

  return isEquivalentForCrossDocumentPasteMasterComparison;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  contextCopy = context;
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();

  if (!v7)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHChartModel mixingTypeWithObject:context:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 1475, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  TSDMixingTypeWithObjects();
  v27 = TSDMixingTypeBestFromMixingTypes();

  return v27;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();

  v8 = objc_alloc_init(TSCHChartModel);
  v13 = objc_msgSend_grid(self, v9, v10, v11, v12);
  v18 = objc_msgSend_grid(v7, v14, v15, v16, v17);
  v22 = objc_msgSend_mixedObjectWithFraction_ofObject_(v13, v19, fraction, v20, v21, v18);
  objc_msgSend_setGrid_(v8, v23, v24, v25, v26, v22);

  return v8;
}

- (id)addSeriesAtIndexForPresetImport:(unint64_t)import
{
  if (objc_msgSend_count(self->_seriesList, a2, v3, v4, v5) <= import)
  {
    do
    {
      v12 = [TSCHChartSeries alloc];
      v17 = objc_msgSend_count(self->_seriesList, v13, v14, v15, v16);
      v22 = objc_msgSend_initWithChartModel_index_(v12, v18, v19, v20, v21, self, v17);
      v27 = objc_msgSend_chartInfo(self, v23, v24, v25, v26);
      v32 = objc_msgSend_chartType(v27, v28, v29, v30, v31);
      v37 = objc_msgSend_defaultSeriesType_(v32, v33, v34, v35, v36, import);
      objc_msgSend_setSeriesType_(v22, v38, v39, v40, v41, v37);

      objc_msgSend_addObject_(self->_seriesList, v42, v43, v44, v45, v22);
    }

    while (objc_msgSend_count(self->_seriesList, v46, v47, v48, v49) <= import);
  }

  seriesList = self->_seriesList;

  return objc_msgSend_objectAtIndex_(seriesList, v8, v9, v10, v11, import);
}

- (id)addAxisOfClass:(Class)class forIDForPresetImport:(id)import
{
  importCopy = import;
  v7 = [class alloc];
  v12 = objc_msgSend_initWithAxisID_model_(v7, v8, v9, v10, v11, importCopy, self);

  v13 = objc_opt_class();
  if ((objc_msgSend_isSubclassOfClass_(class, v14, v15, v16, v17, v13) & 1) == 0)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCHChartModel addAxisOfClass:forIDForPresetImport:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 1507, 0, "Bad axis class");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  if (v12)
  {
    objc_msgSend_addObject_(self->_axisList, v18, v19, v20, v21, v12);
  }

  return v12;
}

- (TSCHChartInfo)chartInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_chartInfo);

  return WeakRetained;
}

- (void)loadFromPreUFFArchive:(const void *)archive unarchiver:(id)unarchiver contextForUpgradeOnly:(id)only
{
  unarchiverCopy = unarchiver;
  onlyCopy = only;
  if (self->_isTransient)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCHChartModel(NewArchiving) loadFromPreUFFArchive:unarchiver:contextForUpgradeOnly:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_PreUFFArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 951, 0, "non-persistent chart model does not support archiving %@", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = *(archive + 4);
  if ((v29 & 2) != 0)
  {
    v30 = *(archive + 6);
    if (*(v30 + 24) != -1)
    {
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = sub_2762ABB14;
      v73[3] = &unk_27A6B7570;
      v73[4] = self;
      v31 = unarchiverCopy;
      v32 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v31, v33, v34, v35, v36, v30, v32, 0, v73);

      v29 = *(archive + 4);
    }
  }

  if ((v29 & 4) != 0)
  {
    v37 = objc_alloc_init(TSCHChartGrid);
    v42 = v37;
    if (*(archive + 7))
    {
      objc_msgSend_loadFromPreUFFArchive_(v37, v38, v39, v40, v41, *(archive + 7));
    }

    else
    {
      objc_msgSend_loadFromPreUFFArchive_(v37, v38, v39, v40, v41, &unk_2812F26C0);
    }

    objc_msgSend_setGrid_(self, v43, v44, v45, v46, v42);
    v51 = objc_msgSend_grid(self, v47, v48, v49, v50);
    objc_msgSend_adjustRowAndColumnNameListLength(v51, v52, v53, v54, v55);

    v60 = objc_msgSend_grid(self, v56, v57, v58, v59);
    objc_msgSend_generateRowColumnIdMaps(v60, v61, v62, v63, v64);

    v29 = *(archive + 4);
  }

  if ((v29 & 8) != 0)
  {
    self->_scatterFormat = *(archive + 16);
  }

  v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
  seriesList = self->_seriesList;
  self->_seriesList = v65;

  v67 = objc_alloc_init(MEMORY[0x277CBEB18]);
  axisList = self->_axisList;
  self->_axisList = v67;

  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = sub_2762ABBC0;
  v72[3] = &unk_27A6B6888;
  v72[4] = self;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v69, COERCE_DOUBLE(3221225472), v70, v71, v72);
}

- (id)pieSeriesModelCacheForSeries:(unint64_t)series
{
  v8 = objc_msgSend_syncRoot(self, a2, v3, v4, v5);
  objc_sync_enter(v8);
  v13 = objc_msgSend_cachedObjectForKey_(self, v9, v10, v11, v12, @"TSCHPieSeriesModelCache");
  v18 = v13;
  if (!v13 || objc_msgSend_seriesIndex(v13, v14, v15, v16, v17) != series)
  {
    v19 = [TSCHPieSeriesModelCache alloc];
    v24 = objc_msgSend_initWithPrior_orChartModel_forSeries_(v19, v20, v21, v22, v23, v18, self, series);

    objc_msgSend_setCacheObject_forKey_(self, v25, v26, v27, v28, v24, @"TSCHPieSeriesModelCache");
    v18 = v24;
  }

  objc_sync_exit(v8);

  return v18;
}

- (id)barModelCacheForSeries:(unint64_t)series
{
  v8 = objc_msgSend_syncRoot(self, a2, v3, v4, v5);
  objc_sync_enter(v8);
  v13 = objc_msgSend_cachedObjectForKey_(self, v9, v10, v11, v12, @"TSCHBarSeriesModelCache");
  v18 = v13;
  if (!v13 || objc_msgSend_seriesIndex(v13, v14, v15, v16, v17) != series)
  {
    v19 = [TSCHBarSeriesModelCache alloc];
    v24 = objc_msgSend_initWithChartModel_forSeries_(v19, v20, v21, v22, v23, self, series);

    objc_msgSend_setCacheObject_forKey_(self, v25, v26, v27, v28, v24, @"TSCHBarSeriesModelCache");
    v18 = v24;
  }

  objc_sync_exit(v8);

  return v18;
}

- (id)lineAreaModelCacheForSeries:(unint64_t)series
{
  v8 = objc_msgSend_syncRoot(self, a2, v3, v4, v5);
  objc_sync_enter(v8);
  v13 = objc_msgSend_cachedObjectForKey_(self, v9, v10, v11, v12, @"TSCHLineAreaSeriesModelCache");
  v18 = v13;
  if (!v13 || objc_msgSend_seriesIndex(v13, v14, v15, v16, v17) != series)
  {
    v19 = [TSCHLineAreaSeriesModelCache alloc];
    v24 = objc_msgSend_initWithChartModel_forSeries_(v19, v20, v21, v22, v23, self, series);

    objc_msgSend_setCacheObject_forKey_(self, v25, v26, v27, v28, v24, @"TSCHLineAreaSeriesModelCache");
    v18 = v24;
  }

  objc_sync_exit(v8);

  return v18;
}

- (id)legendModelCacheForStyleProvidingSource:(id)source
{
  sourceCopy = source;
  v9 = objc_msgSend_syncRoot(self, v5, v6, v7, v8);
  objc_sync_enter(v9);
  objc_opt_class();
  v14 = objc_msgSend_cachedObjectForKey_(self, v10, v11, v12, v13, @"TSCHLegendModelCacheMap");
  v15 = TSUCheckedDynamicCast();

  if (!v15)
  {
    objc_opt_class();
    v24 = objc_msgSend_cachedObjectForKey_(self, v20, v21, v22, v23, @"TSCHLegendModelTextEditingCache");
    v25 = TSUCheckedDynamicCast();

    v26 = [TSCHLegendModelCacheMap alloc];
    v15 = objc_msgSend_initWithChartModel_textEditingSelectionPair_(v26, v27, v28, v29, v30, self, v25);
    objc_msgSend_setCacheObject_forKey_(self, v31, v32, v33, v34, v15, @"TSCHLegendModelCacheMap");
  }

  v35 = objc_msgSend_textCacheForStyleProvidingSource_(v15, v16, v17, v18, v19, sourceCopy);

  objc_sync_exit(v9);

  return v35;
}

- (void)setTextEditingSelectionPath:(id)path string:(id)string
{
  pathCopy = path;
  stringCopy = string;
  v11 = objc_msgSend_syncRoot(self, v7, v8, v9, v10);
  objc_sync_enter(v11);
  v16 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v12, v13, v14, v15, pathCopy, stringCopy);
  objc_msgSend_setCacheObject_forKey_(self, v17, v18, v19, v20, v16, @"TSCHLegendModelTextEditingCache");

  objc_msgSend_setCacheObject_forKey_(self, v21, v22, v23, v24, 0, @"TSCHLegendModelCacheMap");
  objc_sync_exit(v11);
}

- (void)clearTextEditingSelectionPath
{
  obj = objc_msgSend_syncRoot(self, a2, v2, v3, v4);
  objc_sync_enter(obj);
  objc_msgSend_setCacheObject_forKey_(self, v6, v7, v8, v9, 0, @"TSCHLegendModelTextEditingCache");
  objc_msgSend_setCacheObject_forKey_(self, v10, v11, v12, v13, 0, @"TSCHLegendModelCacheMap");
  objc_sync_exit(obj);
}

- (id)barStackRectsWithFrame:(CGRect)frame withBlock:(id)block
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  blockCopy = block;
  v14 = objc_msgSend_syncRoot(self, v10, v11, v12, v13);
  objc_sync_enter(v14);
  v19 = objc_msgSend_cachedObjectForKey_(self, v15, v16, v17, v18, @"TSCHBarSeriesModelSummaryCacheTest");
  v24 = v19;
  if (!v19 || (objc_msgSend_frame(v19, v20, v21, v22, v23), v41.origin.x = x, v41.origin.y = y, v41.size.width = width, v41.size.height = height, !CGRectEqualToRect(v40, v41)))
  {
    v25 = [TSCHBarStackRectsCache alloc];
    v26 = blockCopy[2](blockCopy);
    v28 = objc_msgSend_initWithFrame_dictionary_(v25, v27, x, y, width, v26, height);

    objc_msgSend_setCacheObject_forKey_(self, v29, v30, v31, v32, v28, @"TSCHBarSeriesModelSummaryCacheTest");
    v24 = v28;
  }

  objc_sync_exit(v14);

  v37 = objc_msgSend_groupToSingleStackMap(v24, v33, v34, v35, v36);

  return v37;
}

- (void)loadFromUnityArchive:(const void *)archive unarchiver:(id)unarchiver contextForUpgradeOnly:(id)only chartInfo:(id)info
{
  unarchiverCopy = unarchiver;
  onlyCopy = only;
  infoCopy = info;
  if (self->_isTransient)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCHChartModel(NewArchiving) loadFromUnityArchive:unarchiver:contextForUpgradeOnly:chartInfo:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 1280, 0, "non-persistent chart model does not support archiving %@", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v32 = objc_msgSend_isFromCopy(unarchiverCopy, v12, v14, v15, v16);
  v33 = *(archive + 10);
  if ((v33 & 4) != 0)
  {
    v34 = objc_alloc_init(TSCHChartGrid);
    objc_msgSend_loadFromUnityArchive_chartInfo_(v34, v35, v36, v37, v38, archive, infoCopy);
    objc_msgSend_setGrid_(self, v39, v40, v41, v42, v34);

    v33 = *(archive + 10);
  }

  if ((v33 & 0x1000) != 0)
  {
    self->_scatterFormat = *(archive + 71);
  }

  if (v32 & 1 | ((google::protobuf::internal::ExtensionSet::Has((archive + 16)) & 1) == 0))
  {
    v47 = *(archive + 10);
    if ((v47 & 0x20000) != 0)
    {
      v48 = 0;
    }

    else
    {
      v48 = v32;
    }

    if (v48 == 1)
    {
      v49 = MEMORY[0x277D81150];
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCHChartModel(NewArchiving) loadFromUnityArchive:unarchiver:contextForUpgradeOnly:chartInfo:]");
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v56, v57, v58, v59, v50, v55, 1300, 0, "Archive from copy but does not have multidatasetindex");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
    }

    else if ((v47 & 0x20000) != 0)
    {
      self->_multiDataSetIndex = *(archive + 74);
    }
  }

  v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
  seriesList = self->_seriesList;
  self->_seriesList = v64;

  v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
  axisList = self->_axisList;
  self->_axisList = v66;

  v149[0] = MEMORY[0x277D85DD0];
  v149[1] = 3221225472;
  v149[2] = sub_27637F2E4;
  v149[3] = &unk_27A6B6888;
  v149[4] = self;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v68, COERCE_DOUBLE(3221225472), v69, v70, v149);
  v75 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v71, v72, v73, v74);
  if (google::protobuf::internal::ExtensionSet::Has((archive + 16)))
  {
    v141 = onlyCopy;
    v142 = unarchiverCopy;
    Message = google::protobuf::internal::ExtensionSet::GetMessage();
    TSCH::CachedDataFormatterPersistableStyleObjects::CachedDataFormatterPersistableStyleObjects(v143, Message);
    v77 = v144;
    v78 = MEMORY[0x277D80740];
    if (v144 >= 1)
    {
      v79 = 8;
      do
      {
        v80 = *(v145 + v79);
        v81 = [TSCHChartAxisID alloc];
        if (*(v80 + 24))
        {
          v86 = objc_msgSend_initWithArchive_(v81, v82, v83, v84, v85, *(v80 + 24));
        }

        else
        {
          v86 = objc_msgSend_initWithArchive_(v81, v82, v83, v84, v85, &TSCH::_ChartAxisIDArchive_default_instance_);
        }

        v91 = v86;
        if (*(v80 + 32))
        {
          v92 = *(v80 + 32);
        }

        else
        {
          v92 = v78;
        }

        v93 = sub_2762A8004(v92, v87, v88, v89, v90);
        objc_msgSend_setObject_forKeyedSubscript_(v75, v94, v95, v96, v97, v93, v91);

        v79 += 8;
        --v77;
      }

      while (v77);
    }

    v98 = objc_alloc(MEMORY[0x277CBEAC0]);
    v103 = objc_msgSend_initWithDictionary_(v98, v99, v100, v101, v102, v75);
    axisIDToDataFormatterPersistableStyleObjectsMap = self->_axisIDToDataFormatterPersistableStyleObjectsMap;
    self->_axisIDToDataFormatterPersistableStyleObjectsMap = v103;

    v110 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v105, v106, v107, v108);
    v114 = v146;
    if (v146 >= 1)
    {
      v115 = 8;
      do
      {
        v116 = *(v147 + v115);
        v118 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v109, v111, v112, v113, *(v116 + 32));
        if (*(v116 + 24))
        {
          v122 = *(v116 + 24);
        }

        else
        {
          v122 = v78;
        }

        v123 = sub_2762A8004(v122, v117, v119, v120, v121);
        objc_msgSend_setObject_forKeyedSubscript_(v110, v124, v125, v126, v127, v123, v118);

        v115 += 8;
        --v114;
      }

      while (v114);
    }

    v128 = objc_alloc(MEMORY[0x277CBEAC0]);
    v133 = objc_msgSend_initWithDictionary_(v128, v129, v130, v131, v132, v110);
    seriesIndexToDataFormatterPersistableStyleObjectsMap = self->_seriesIndexToDataFormatterPersistableStyleObjectsMap;
    self->_seriesIndexToDataFormatterPersistableStyleObjectsMap = v133;

    onlyCopy = v141;
    unarchiverCopy = v142;
    if (v143[16])
    {
      v139 = sub_2762A8004(v148, v135, v136, v137, v138);
      summaryLabelDataFormatterPersistableStyleObject = self->_summaryLabelDataFormatterPersistableStyleObject;
      self->_summaryLabelDataFormatterPersistableStyleObject = v139;
    }

    TSCH::CachedDataFormatterPersistableStyleObjects::~CachedDataFormatterPersistableStyleObjects(v143);
  }
}

- (void)saveToUnityArchive:(void *)archive forCopy:(BOOL)copy
{
  copyCopy = copy;
  v184 = *MEMORY[0x277D85DE8];
  if (self->_isTransient)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCHChartModel(NewArchiving) saveToUnityArchive:forCopy:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 1355, 0, "non-persistent chart model does not support archiving %@", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  objc_msgSend_saveToUnityArchive_forCopy_(self->_grid, a2, v4, v5, v6, archive, copyCopy);
  scatterFormat = self->_scatterFormat;
  *(archive + 10) |= 0x1000u;
  *(archive + 71) = scatterFormat;
  v29 = objc_msgSend_chartInfo(self, v25, v26, v27, v28);
  v34 = objc_msgSend_drawableInfo(v29, v30, v31, v32, v33);

  v169 = v34;
  v39 = objc_msgSend_documentRoot(v34, v35, v36, v37, v38);
  v44 = objc_msgSend_UIStateForChart_(v39, v40, v41, v42, v43, v34);

  v170 = v44;
  if (objc_msgSend_isValidMultiDataSetIndex(v44, v45, v46, v47, v48))
  {
    google::protobuf::internal::ExtensionSet::SetBool((archive + 16), TSCH::ChartMultiDataIndexUpgrade::upgraded_to_ui_state, 8, 1, 0);
  }

  v53 = objc_msgSend_multiDataSetIndex(self, v49, v50, v51, v52);
  *(archive + 10) |= 0x20000u;
  *(archive + 74) = v53;
  v58 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, v54, v55, v56, v57);
  v63 = objc_msgSend_supportsNumberFormatSameAsSource(v58, v59, v60, v61, v62);

  if (v63)
  {
    TSCH::CachedDataFormatterPersistableStyleObjects::default_instance(v64);
    v65 = google::protobuf::internal::ExtensionSet::MutableMessage();
    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    v66 = self->_axisIDToDataFormatterPersistableStyleObjectsMap;
    v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, v68, v69, v70, &v178, v183, 16);
    if (!v72)
    {
      goto LABEL_32;
    }

    obj = *v179;
    while (1)
    {
      for (i = 0; i != v72; ++i)
      {
        if (*v179 != obj)
        {
          objc_enumerationMutation(v66);
        }

        v77 = *(*(&v178 + 1) + 8 * i);
        v78 = *(v65 + 40);
        if (!v78)
        {
          goto LABEL_16;
        }

        v79 = *(v65 + 32);
        v80 = *v78;
        if (v79 < *v78)
        {
          *(v65 + 32) = v79 + 1;
          v81 = *&v78[2 * v79 + 2];
          goto LABEL_18;
        }

        if (v80 == *(v65 + 36))
        {
LABEL_16:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v65 + 24));
          v78 = *(v65 + 40);
          v80 = *v78;
        }

        *v78 = v80 + 1;
        v81 = google::protobuf::Arena::CreateMaybeMessage<TSCH::CachedAxisDataFormatterPersistableStyleObject>(*(v65 + 24));
        v82 = *(v65 + 32);
        v83 = *(v65 + 40) + 8 * v82;
        *(v65 + 32) = v82 + 1;
        *(v83 + 8) = v81;
LABEL_18:
        *(v81 + 16) |= 1u;
        v84 = *(v81 + 24);
        if (!v84)
        {
          v85 = *(v81 + 8);
          if (v85)
          {
            v85 = *(v85 & 0xFFFFFFFFFFFFFFFELL);
          }

          v84 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v85);
          *(v81 + 24) = v84;
        }

        objc_msgSend_saveToArchive_(v77, v71, v73, v74, v75, v84, v168);
        axisIDToDataFormatterPersistableStyleObjectsMap = self->_axisIDToDataFormatterPersistableStyleObjectsMap;
        if (!axisIDToDataFormatterPersistableStyleObjectsMap)
        {
          v91 = MEMORY[0x277D81150];
          v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, v87, v88, v89, "[TSCHChartModel(NewArchiving) saveToUnityArchive:forCopy:]");
          v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, v94, v95, v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v98, v99, v100, v101, v92, v97, 1384, 0, "invalid nil value for '%{public}s'", "_axisIDToDataFormatterPersistableStyleObjectsMap");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v102, v103, v104, v105);
          axisIDToDataFormatterPersistableStyleObjectsMap = self->_axisIDToDataFormatterPersistableStyleObjectsMap;
        }

        v106 = objc_msgSend_objectForKeyedSubscript_(axisIDToDataFormatterPersistableStyleObjectsMap, v86, v87, v88, v89, v77);
        v168 = &unk_288578E50;
        v107 = TSUCheckedProtocolCast();

        if (v107)
        {
          *(v81 + 16) |= 2u;
          v112 = *(v81 + 32);
          if (!v112)
          {
            v113 = *(v81 + 8);
            if (v113)
            {
              v113 = *(v113 & 0xFFFFFFFFFFFFFFFELL);
            }

            v112 = MEMORY[0x277C97B00](v113);
            *(v81 + 32) = v112;
          }

          objc_msgSend_saveToArchive_archiver_(v107, v108, v109, v110, v111, v112, 0, &unk_288578E50);
        }
      }

      v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v71, v73, v74, v75, &v178, v183, 16);
      if (!v72)
      {
LABEL_32:

        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        obja = self->_seriesIndexToDataFormatterPersistableStyleObjectsMap;
        v119 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v114, v115, v116, v117, &v174, v182, 16);
        if (!v119)
        {
          goto LABEL_54;
        }

        v123 = *v175;
        while (1)
        {
          for (j = 0; j != v119; ++j)
          {
            if (*v175 != v123)
            {
              objc_enumerationMutation(obja);
            }

            v125 = *(*(&v174 + 1) + 8 * j);
            v126 = *(v65 + 64);
            if (!v126)
            {
              goto LABEL_42;
            }

            v127 = *(v65 + 56);
            v128 = *v126;
            if (v127 < *v126)
            {
              *(v65 + 56) = v127 + 1;
              v129 = *&v126[2 * v127 + 2];
              goto LABEL_44;
            }

            if (v128 == *(v65 + 60))
            {
LABEL_42:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v65 + 48));
              v126 = *(v65 + 64);
              v128 = *v126;
            }

            *v126 = v128 + 1;
            v129 = google::protobuf::Arena::CreateMaybeMessage<TSCH::CachedSeriesDataFormatterPersistableStyleObject>(*(v65 + 48));
            v130 = *(v65 + 56);
            v131 = *(v65 + 64) + 8 * v130;
            *(v65 + 56) = v130 + 1;
            *(v131 + 8) = v129;
LABEL_44:
            v132 = objc_msgSend_intValue(v125, v118, v120, v121, v122, v168);
            *(v129 + 16) |= 2u;
            *(v129 + 32) = v132;
            seriesIndexToDataFormatterPersistableStyleObjectsMap = self->_seriesIndexToDataFormatterPersistableStyleObjectsMap;
            if (!seriesIndexToDataFormatterPersistableStyleObjectsMap)
            {
              v138 = MEMORY[0x277D81150];
              v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, v134, v135, v136, "[TSCHChartModel(NewArchiving) saveToUnityArchive:forCopy:]");
              v144 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, v141, v142, v143, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v138, v145, v146, v147, v148, v139, v144, 1397, 0, "invalid nil value for '%{public}s'", "_seriesIndexToDataFormatterPersistableStyleObjectsMap");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v149, v150, v151, v152);
              seriesIndexToDataFormatterPersistableStyleObjectsMap = self->_seriesIndexToDataFormatterPersistableStyleObjectsMap;
            }

            v153 = objc_msgSend_objectForKeyedSubscript_(seriesIndexToDataFormatterPersistableStyleObjectsMap, v133, v134, v135, v136, v125);
            v168 = &unk_288578E50;
            v154 = TSUCheckedProtocolCast();

            if (v154)
            {
              *(v129 + 16) |= 1u;
              v159 = *(v129 + 24);
              if (!v159)
              {
                v160 = *(v129 + 8);
                if (v160)
                {
                  v160 = *(v160 & 0xFFFFFFFFFFFFFFFELL);
                }

                v159 = MEMORY[0x277C97B00](v160);
                *(v129 + 24) = v159;
              }

              objc_msgSend_saveToArchive_archiver_(v154, v155, v156, v157, v158, v159, 0, &unk_288578E50);
            }
          }

          v119 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v118, v120, v121, v122, &v174, v182, 16);
          if (!v119)
          {
LABEL_54:

            v162 = self->_summaryLabelDataFormatterPersistableStyleObject;
            if (v162)
            {
              *(v65 + 16) |= 1u;
              v166 = *(v65 + 72);
              if (!v166)
              {
                v167 = *(v65 + 8);
                if (v167)
                {
                  v167 = *(v167 & 0xFFFFFFFFFFFFFFFELL);
                }

                v166 = MEMORY[0x277C97B00](v167);
                *(v65 + 72) = v166;
              }

              objc_msgSend_saveToArchive_archiver_(v162, v161, v163, v164, v165, v166, 0, v168);
            }

            goto LABEL_61;
          }
        }
      }
    }
  }

LABEL_61:
}

@end