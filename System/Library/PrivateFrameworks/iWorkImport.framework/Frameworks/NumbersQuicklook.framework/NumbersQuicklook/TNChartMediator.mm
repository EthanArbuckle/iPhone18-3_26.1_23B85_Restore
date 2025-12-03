@interface TNChartMediator
+ (id)defaultErrorBarFormulaWrapper;
+ (id)propertiesThatInvalidateMediator;
- (BOOL)categoryLabelFormulasAreAllStatic;
- (BOOL)hasCategoryReferences;
- (BOOL)hasTractReference;
- (BOOL)isPhantom;
- (BOOL)labelFormulasAreAllStatic;
- (BOOL)labelFormulasAreAllStaticInFormulaStorage:(id)storage;
- (BOOL)p_didHeaderRowRangesChangeForCalcEngine:(id)engine;
- (BOOL)p_isScatterOrBubble;
- (BOOL)p_labelsAreStaticInMap:(id)map ofType:(unint64_t)type;
- (BOOL)p_tableHasBaseCell:(TSCECellRef *)cell withCalcEngine:(id)engine;
- (BOOL)p_tableHasBaseRange:(TSCERangeRef *)range withCalcEngine:(id)engine;
- (BOOL)p_tabularCategoryLabelsAppearRegularInMap:(id)map;
- (BOOL)repairBadRefsInFormulas:(id)formulas;
- (BOOL)seriesLabelFormulasAreAllStatic;
- (BOOL)shouldSkipHiddenData;
- (TNChartFormulaStorage)formulaStorage;
- (TNChartMediator)initWithChartInfo:(id)info;
- (TNChartMediator)initWithChartInfo:(id)info withTable:(id)table direction:(int)direction;
- (TNChartMediator)initWithChartInfo:(id)info withTable:(id)table selection:(id)selection direction:(int)direction;
- (TNChartMediator)initWithChartInfo:(id)info withTable:(id)table selection:(id)selection direction:(int)direction scheme:(int)scheme;
- (TSCECalculationEngine)calculationEngine;
- (TSCERangeRef)p_headerRowRangeRefForTableInfo:(SEL)info;
- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options;
- (TSCERecalculationState)multiEvaluateFormulasAt:(const void *)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options;
- (TSKUIDStruct)entityUID;
- (TSKUIDStruct)formulaOwnerUID;
- (id).cxx_construct;
- (id)categoryLabelFormulas;
- (id)columnFormulas;
- (id)commandSetCategoryName:(id)name forCategoryIndex:(unint64_t)index;
- (id)commandSetSeriesName:(id)name forSeriesIndex:(unint64_t)index;
- (id)commandToChangeCategoryLabelFormulas:(id)formulas;
- (id)commandToSetSeriesNameFormula:(id)formula seriesIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customNegFormulas;
- (id)customNegScatterXFormulas;
- (id)customPosFormulas;
- (id)customPosScatterXFormulas;
- (id)dataFormatterForAxis:(id)axis documentRoot:(id)root;
- (id)dataFormatterForSeries:(id)series index:(unint64_t)index axisType:(int)type documentRoot:(id)root;
- (id)dataFormatterFromFormat:(id)format in:(id)in;
- (id)dataFormulas;
- (id)descriptorForChartSeries:(int64_t)series inTable:(id)table;
- (id)descriptorForSummaryChart;
- (id)errorBarCustomFormulaForSeriesIndex:(unint64_t)index dataType:(int)type;
- (id)formulaStorageFromCatTable:(id)table selection:(id)selection direction:(int)direction;
- (id)formulaStorageFromPivotTable:(id)table;
- (id)formulaStorageFromPivotTable:(id)table cellRect:(TSUCellRect *)rect;
- (id)formulaStorageFromPivotTable:(id)table cellRect:(TSUCellRect *)rect aggregateIndex:(unsigned __int16)index plotDirection:(int)direction groupLabelOptions:(unsigned __int8)options;
- (id)formulaStorageFromPivotTable:(id)table cellRegion:(id)region;
- (id)formulaStorageFromPivotTable:(id)table rowLevel:(unsigned __int8)level columnLevel:(unsigned __int8)columnLevel aggregateIndex:(unsigned __int16)index plotDirection:(int)direction;
- (id)formulaStorageFromPivotTable:(id)table rowLevel:(unsigned __int8)level columnLevel:(unsigned __int8)columnLevel aggregateIndex:(unsigned __int16)index plotDirection:(int)direction groupLabelOptions:(unsigned __int8)options;
- (id)formulaStorageFromTable:(id)table selection:(id)selection direction:(int)direction scheme:(int)scheme;
- (id)hubFormulaPrecedentsWithCalcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d;
- (id)initFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (id)labelFormulasForType:(unint64_t)type;
- (id)nonDefaultDataFormatterForSeries:(id)series index:(unint64_t)index axisType:(int)type documentRoot:(id)root;
- (id)nonDefaultDataFormatterForSummarySeries:(id)series index:(unint64_t)index axisType:(int)type documentRoot:(id)root;
- (id)objectToArchiveInDependencyTracker;
- (id)ownerUIDMapper;
- (id)p_chartFormulaStorageForEditingOverride;
- (id)p_formulaWrapperFromTSTFormula:(id)formula;
- (id)p_newStaticNameForCategoryAvoidingExistingNames:(id)names runningCount:(unint64_t *)count;
- (id)p_tstFormulaFromForumulaWrapper:(id)wrapper;
- (id)p_untitledLabelWithIndex:(unint64_t)index;
- (id)referencedEntities;
- (id)rowFormulas;
- (id)seriesDataFormulaForSeriesDimension:(id)dimension;
- (id)seriesDimensionForFormulaIndex:(unint64_t)index;
- (id)seriesNameFormulaForSeriesIndex:(unint64_t)index;
- (id)untitledLabelOfType:(unint64_t)type formulaMap:(id)map existingLabels:(id)labels runningIndex:(unint64_t *)index;
- (int)direction;
- (int)formulasDirection;
- (int)scatterFormat;
- (unint64_t)formulaIndexForSeriesDimension:(id)dimension;
- (unint64_t)formulaTypeFromDataType:(int)type;
- (unint64_t)labelIndexForSeriesNameSeriesIndex:(unint64_t)index;
- (unint64_t)p_formulaComponents:(id)components;
- (unint64_t)p_formulaComponentsInMap:(id)map ofType:(unint64_t)type;
- (unint64_t)p_numberOfLabelsFromExpandedGeometricRangeRefsWithFormulas:(id)formulas formulaType:(unint64_t)type;
- (unint64_t)referenceType;
- (vector<TSCERangeRef,)expandSingleTractForProposedCategoryLabels:(TNChartMediator *)self byRow:(SEL)row;
- (vector<TSCERangeRef,)p_expandSingleRangeForLabels:()vector<TSCERangeRef iterateOverRowsNotColumns:(std:(SEL)columns :(const TSCERangeRef *)a4 allocator<TSCERangeRef>> *)self;
- (void)amendRewriteSpec:(id)spec withPostCellRefs:(const void *)refs calcEngine:(id)engine;
- (void)copyValuesIntoChartModelOutOfBandUsingCalcEngine:(id)engine formulaMap:(id)map;
- (void)invalidateForCalcEngine:(id)engine;
- (void)localizeFormulaLiteralsWithTemplateBundle:(id)bundle locale:(id)locale;
- (void)p_copyValuesIntoToChartModel:(id)model formulaMap:(id)map;
- (void)p_detectAndRepairInsertedCategoryConditionFromPreviousState:(id)state andEditingState:(id)editingState rewriteSpec:(id)spec;
- (void)p_detectAndRepairInsertedSeriesConditionFromPreviousState:(id)state andEditingState:(id)editingState rewriteSpec:(id)spec;
- (void)p_disconnectLabelsInMap:(id)map ofType:(unint64_t)type;
- (void)p_hackSetCalcEngineLegacyGlobalID;
- (void)p_promoteSpanningCategorizedCategoryLabelsInMap:(id)map;
- (void)p_registerAreaFormulaForMap:(id)map withCalcEngine:(id)engine;
- (void)p_registerFormulaeWithCalcEngine:(id)engine;
- (void)p_registerHubFormulaWithCalcEngine:(id)engine;
- (void)p_removeDeletedFormulas:(id)formulas;
- (void)p_repairCategorizedCategoryLabelsInMap:(id)map;
- (void)p_repairMissingCategoryLabelsInMap:(id)map;
- (void)p_repairMissingStaticCategoryLabelsInMap:(id)map;
- (void)p_repairMissingTabularCategoryLabelsIrregularInMap:(id)map;
- (void)p_repairMissingTabularCategoryLabelsRegularInMap:(id)map;
- (void)p_reregister:(BOOL)p_reregister withCalculationEngine:(id)engine;
- (void)p_transposeSeriesAndCategoryLabelsInMap:(id)map;
- (void)pauseCalculationEngine;
- (void)prepareRewriteSpec:(id)spec withPreCellRefs:(const void *)refs calcEngine:(id)engine;
- (void)registerWithCalcEngineForDocumentLoad:(id)load ownerKind:(unsigned __int16)kind;
- (void)repairMissingCategoryLabelsInMap:(id)map ignoringNonVisibleLabels:(BOOL)labels;
- (void)repairMissingSeriesLabelsInMap:(id)map;
- (void)resetFormulasForCellRefs:(const void *)refs calcEngine:(id)engine;
- (void)resumeCalculationEngine;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setEditingStorageOverride:(id)override;
- (void)setFormulaStorage:(id)storage doRegistration:(BOOL)registration;
- (void)synchronizeModelFromFormulaStorage;
- (void)synchronizeModelFromFormulaStorage:(id)storage;
- (void)unregisterFromCalcEngine:(id)engine;
- (void)updateForTableIDHistoryWithCalcEngine:(id)engine;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
- (void)writeResultsForCalcEngine:(id)engine;
@end

@implementation TNChartMediator

- (TSKUIDStruct)formulaOwnerUID
{
  p_entityUID = &self->_entityUID;
  lower = self->_entityUID._lower;
  upper = p_entityUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id)ownerUIDMapper
{
  v3 = objc_alloc(MEMORY[0x277D80D30]);
  v9[0] = objc_msgSend_formulaOwnerUID(self, v4, v5);
  v9[1] = v6;
  v7 = objc_msgSend_initWithFormulaOwnerUID_(v3, v6, v9);

  return v7;
}

- (TNChartMediator)initWithChartInfo:(id)info
{
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = TNChartMediator;
  v5 = [(TSCHChartMediator *)&v10 initWithChartInfo:infoCopy];
  if (v5)
  {
    v5->_entityUID._lower = TSKMakeUIDStructRandom();
    v5->_entityUID._upper = v6;
    v7 = objc_alloc_init(TNChartFormulaStorage);
    formulaStorage = v5->_formulaStorage;
    v5->_formulaStorage = v7;
  }

  return v5;
}

- (TNChartMediator)initWithChartInfo:(id)info withTable:(id)table selection:(id)selection direction:(int)direction scheme:(int)scheme
{
  v7 = *&scheme;
  v8 = *&direction;
  infoCopy = info;
  tableCopy = table;
  selectionCopy = selection;
  if (!infoCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TNChartMediator initWithChartInfo:withTable:selection:direction:scheme:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 520, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  v23 = objc_msgSend_initWithChartInfo_(self, v14, infoCopy);
  v25 = v23;
  if (selectionCopy && v23)
  {
    v26 = objc_msgSend_formulaStorageFromTable_selection_direction_scheme_(v23, v24, tableCopy, selectionCopy, v8, v7);
    formulaStorage = v25->_formulaStorage;
    v25->_formulaStorage = v26;

    objc_storeStrong(&v25->_cleanFormulaStorage, v25->_formulaStorage);
  }

  return v25;
}

- (TNChartMediator)initWithChartInfo:(id)info withTable:(id)table selection:(id)selection direction:(int)direction
{
  v6 = *&direction;
  infoCopy = info;
  tableCopy = table;
  selectionCopy = selection;
  v15 = objc_msgSend_defaultScheme(TNChartFormulaStorage, v13, v14);
  v17 = objc_msgSend_initWithChartInfo_withTable_selection_direction_scheme_(self, v16, infoCopy, tableCopy, selectionCopy, v6, v15);

  return v17;
}

- (TNChartMediator)initWithChartInfo:(id)info withTable:(id)table direction:(int)direction
{
  v5 = *&direction;
  infoCopy = info;
  tableCopy = table;
  if (!infoCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TNChartMediator initWithChartInfo:withTable:direction:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 539, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  if (tableCopy)
  {
    v18 = objc_alloc(MEMORY[0x277D80CE8]);
    v21 = objc_msgSend_bodyRange(tableCopy, v19, v20);
    v23 = objc_msgSend_initWithTableInfo_andCellRange_(v18, v22, tableCopy, v21, v22);
    v25 = objc_msgSend_initWithChartInfo_withTable_selection_direction_(self, v24, infoCopy, tableCopy, v23, v5);
  }

  else
  {
    v25 = objc_msgSend_initWithChartInfo_(self, v9, infoCopy);
  }

  return v25;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30.receiver = self;
  v30.super_class = TNChartMediator;
  v5 = [(TSCHChartMediator *)&v30 copyWithZone:?];
  v7 = v5;
  if (v5)
  {
    *(v5 + 40) = self->_entityUID;
    v8 = objc_msgSend_copyWithZone_(self->_formulaStorage, v6, zone);
    v9 = v7[7];
    v7[7] = v8;

    v10 = v7[8];
    v7[8] = 0;

    if (self->_formulasToRecalculate.__table_.__size_)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TNChartMediator copyWithZone:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 563, 0, "[TNChartMediator copyWithZone:] called during an in-flight recalc. This is not supported.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    *(v7 + 116) = 0;
    if (self->_isEditing)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TNChartMediator copyWithZone:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 567, 0, "[TNChartMediator copyWithZone:] called during a modal editing session. This is not supported.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    }

    *(v7 + 117) = 0;
    *(v7 + 118) = 0;
    *(v7 + 119) = 0;
    v26 = v7[15];
    v7[15] = 0;

    v27 = v7[16];
    v7[16] = 0;

    v28 = v7[17];
    v7[17] = 0;
  }

  return v7;
}

- (BOOL)labelFormulasAreAllStaticInFormulaStorage:(id)storage
{
  storageCopy = storage;
  v7 = objc_msgSend_calculationEngine(self, v5, v6);
  v10 = objc_msgSend_entityUID(self, v8, v9);
  LOBYTE(self) = objc_msgSend_labelFormulasAreAllStaticWithCalcEngine_inEntity_(storageCopy, v11, v7, v10, v11);

  return self;
}

- (BOOL)labelFormulasAreAllStatic
{
  selfCopy = self;
  v4 = objc_msgSend_formulaStorage(self, a2, v2);
  LOBYTE(selfCopy) = objc_msgSend_labelFormulasAreAllStaticInFormulaStorage_(selfCopy, v5, v4);

  return selfCopy;
}

- (BOOL)seriesLabelFormulasAreAllStatic
{
  v4 = objc_msgSend_formulaStorage(self, a2, v2);
  if (objc_msgSend_isPhantom(self, v5, v6))
  {
    v9 = 2;
  }

  else
  {
    v9 = objc_msgSend_seriesLabelFormulaType(v4, v7, v8);
  }

  v10 = objc_msgSend_calculationEngine(self, v7, v8);
  v13 = objc_msgSend_entityUID(self, v11, v12);
  v15 = objc_msgSend_formulasOfType_areAllStaticWithCalcEngine_inEntity_(v4, v14, v9, v10, v13, v14);

  return v15;
}

- (BOOL)categoryLabelFormulasAreAllStatic
{
  v4 = objc_msgSend_formulaStorage(self, a2, v2);
  if (objc_msgSend_isPhantom(self, v5, v6))
  {
    v9 = 2;
  }

  else
  {
    v9 = objc_msgSend_categoryLabelFormulaType(v4, v7, v8);
  }

  v10 = objc_msgSend_calculationEngine(self, v7, v8);
  v13 = objc_msgSend_entityUID(self, v11, v12);
  v15 = objc_msgSend_formulasOfType_areAllStaticWithCalcEngine_inEntity_(v4, v14, v9, v10, v13, v14);

  return v15;
}

- (int)scatterFormat
{
  v3 = objc_msgSend_chartInfo(self, a2, v2);
  v6 = objc_msgSend_model(v3, v4, v5);
  v9 = objc_msgSend_scatterFormat(v6, v7, v8);

  return v9;
}

- (BOOL)isPhantom
{
  if (self->_isEditing && self->_editingHasIsPhantomOverride)
  {
    return self->_editingIsPhantomOverride;
  }

  else
  {
    v4 = objc_msgSend_formulaStorage(self, a2, v2);
    v6 = objc_msgSend_formulaListForType_(v4, v5, 1);
    v3 = objc_msgSend_count(v6, v7, v8) == 0;
  }

  return v3;
}

- (TSCECalculationEngine)calculationEngine
{
  v3 = objc_msgSend_chartInfo(self, a2, v2);
  v6 = objc_msgSend_drawableInfo(v3, v4, v5);
  v9 = objc_msgSend_documentRoot(v6, v7, v8);

  v12 = objc_msgSend_calculationEngine(v9, v10, v11);

  return v12;
}

- (id)formulaStorageFromTable:(id)table selection:(id)selection direction:(int)direction scheme:(int)scheme
{
  v6 = *&scheme;
  tableCopy = table;
  selectionCopy = selection;
  v288 = selectionCopy;
  if (!tableCopy || !selectionCopy)
  {
    if (!selectionCopy)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TNChartMediator formulaStorageFromTable:selection:direction:scheme:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 626, 0, "invalid nil value for '%{public}s'", "cellSelection");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
    }

    v34 = [TNChartFormulaStorage alloc];
    v36 = objc_msgSend_initWithDirection_scheme_(v34, v35, direction, v6);
    goto LABEL_36;
  }

  v12 = objc_msgSend_cellRegion(selectionCopy, v10, v11);
  objc_msgSend_boundingCellRange(v12, v13, v14);

  v322 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v323[0] = v322;
  v321 = v322;
  v15 = __C();
  BodyRange_headerColumnRange_headerRowRange = objc_msgSend_findChartableRangesFromTableRange_getBodyRange_headerColumnRange_headerRowRange_(tableCopy, v16, v15, v16, v323, &v322, &v321);
  isCategorized = objc_msgSend_isCategorized(tableCopy, v18, v19);
  if (isCategorized)
  {
    v23 = objc_msgSend_formulaStorageFromCatTable_selection_direction_(self, v20, tableCopy, v288, direction);
    v26 = v23;
    if (v23 && objc_msgSend_numberOfDataFormulas(v23, v24, v25))
    {
      goto LABEL_199;
    }
  }

  else if (objc_msgSend_isAPivotTable(tableCopy, v20, v21))
  {
    v296 = objc_msgSend_cellRegion(v288, v37, v38);
    v26 = objc_msgSend_formulaStorageFromPivotTable_cellRegion_(self, v39, tableCopy);

    goto LABEL_199;
  }

  if ((BodyRange_headerColumnRange_headerRowRange & 1) == 0)
  {
    v103 = [TNChartFormulaStorage alloc];
    v36 = objc_msgSend_initWithDirection_scheme_(v103, v104, direction, v6);
LABEL_36:
    v26 = v36;
    goto LABEL_199;
  }

  v289 = tableCopy;
  v290 = TSUCellRectFromTSCERangeCoordinate();
  v41 = v40;
  v274 = TSUCellRectFromTSCERangeCoordinate();
  v43 = v42;
  v44 = TSUCellRectFromTSCERangeCoordinate();
  v46 = v45;
  objc_msgSend_bodyRange(v289, v45, v47);
  v50 = objc_msgSend_cellRegion(v288, v48, v49);
  v297 = objc_msgSend_regionByIntersectingRange_(v50, v51, v290, v41);

  v275 = objc_msgSend_regionFromRange_(MEMORY[0x277D80CE0], v52, v274, v43);
  if (isCategorized)
  {
    v55 = objc_msgSend_intersectingRowsIndexSet(v297, v53, v54);
    v57 = objc_msgSend_indexesOfVisibleRowsInRowRange_(v289, v56, v55);
    v59 = objc_msgSend_regionByIntersectingRowIndices_(v297, v58, v57);

    v62 = objc_msgSend_translator(v289, v60, v61);
    v64 = objc_msgSend_baseCellRegionForViewCellRegion_(v62, v63, v59);

    v297 = v64;
    v290 = objc_msgSend_boundingCellRange(v64, v65, v66);
    v41 = v67;
    v69 = objc_msgSend_intersectingRowsIndexSet(v275, v67, v68);
    v71 = objc_msgSend_indexesOfVisibleRowsInRowRange_(v289, v70, v69);
    v73 = objc_msgSend_regionByIntersectingRowIndices_(v275, v72, v71);

    v76 = objc_msgSend_translator(v289, v74, v75);
    v78 = objc_msgSend_baseCellRegionForViewCellRegion_(v76, v77, v73);

    v275 = v78;
    v274 = objc_msgSend_boundingCellRange(v78, v79, v80);
    v43 = v81;
    v82 = objc_msgSend_regionFromRange_(MEMORY[0x277D80CE0], v81, v44, v46);
    v85 = objc_msgSend_intersectingRowsIndexSet(v82, v83, v84);
    v87 = objc_msgSend_indexesOfVisibleRowsInRowRange_(v289, v86, v85);
    v89 = objc_msgSend_regionByIntersectingRowIndices_(v82, v88, v87);

    v92 = objc_msgSend_translator(v289, v90, v91);
    v94 = objc_msgSend_baseCellRegionForViewCellRegion_(v92, v93, v89);

    v44 = objc_msgSend_boundingCellRange(v94, v95, v96);
    v46 = v97;
  }

  v98 = 0;
  v272 = v274 & 0xFFFF00000000;
  if (v274 != 0x7FFFFFFFLL && (v274 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    if (v43 >> 32)
    {
      v99 = v43 == 0;
    }

    else
    {
      v99 = 1;
    }

    v98 = !v99;
  }

  v273 = v46 >> 32;
  v269 = v44;
  v271 = v44 & 0xFFFF00000000;
  if (v44 == 0x7FFFFFFFLL || (v44 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v278 = 0;
    if (v98)
    {
      v105 = HIDWORD(v43);
    }

    else
    {
      v105 = 0;
    }

    v268 = v105;
  }

  else
  {
    if (v98)
    {
      v100 = HIDWORD(v43);
    }

    else
    {
      v100 = 0;
    }

    v268 = v100;
    v101 = v46;
    if (v46)
    {
      v102 = v273 == 0;
    }

    else
    {
      v102 = 1;
    }

    if (v102)
    {
      v101 = 0;
    }

    v278 = v101;
  }

  if (!direction)
  {
    if (objc_msgSend_preferSeriesToValues(self, v53, v54))
    {
      v108 = objc_msgSend_numberOfIntersectingRows(v297, v106, v107);
      if (v108 > objc_msgSend_numberOfIntersectingColumns(v297, v109, v110))
      {
        v111 = 1;
      }

      else
      {
        v111 = 2;
      }
    }

    else
    {
      v112 = objc_msgSend_numberOfIntersectingRows(v297, v106, v107);
      if (v112 < objc_msgSend_numberOfIntersectingColumns(v297, v113, v114))
      {
        v111 = 1;
      }

      else
      {
        v111 = 2;
      }
    }

    direction = v111;
  }

  v115 = [TNMutableChartFormulaStorage alloc];
  v293 = objc_msgSend_initWithDirection_scheme_(v115, v116, direction, v6);
  if (direction == 2)
  {
    v119 = v41;
  }

  else
  {
    v119 = HIDWORD(v41);
  }

  if (direction == 2)
  {
    v120 = HIDWORD(v41);
  }

  else
  {
    v120 = v41;
  }

  v280 = v120;
  v298 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v117, v118);
  v270 = v44;
  v267 = v43;
  v265 = HIDWORD(v44);
  v266 = v274 + (v43 << 32);
  v294 = v119;
  if (v119)
  {
    v123 = 0;
    v283 = v290 + HIDWORD(v41) - 1;
    v281 = v41 + WORD2(v290) - 1;
    do
    {
      v124 = v290 + v123;
      if (direction == 2)
      {
        v125 = v290;
      }

      else
      {
        v125 = v124;
      }

      if (direction == 2)
      {
        v126 = WORD2(v290) + v123;
      }

      else
      {
        v126 = WORD2(v290);
      }

      if (direction == 2)
      {
        v127 = v283;
      }

      else
      {
        v127 = v124;
      }

      v128 = v281;
      if (direction == 2)
      {
        v128 = WORD2(v290) + v123;
      }

      v129 = v126;
      *&v315 = v125 & 0xFFFF0000FFFFFFFFLL | (v126 << 32);
      v130 = v128;
      *&v319 = v127 & 0xFFFF0000FFFFFFFFLL | (v128 << 32);
      v131 = __C();
      v133 = v132;
      v134 = TSUCellRectFromTSCERangeCoordinate();
      v136 = objc_msgSend_regionByIntersectingRange_(v297, v135, v134, v135);
      if (objc_msgSend_cellCount(v136, v137, v138))
      {
        if (objc_msgSend_isRectangle(v136, v139, v140) && (v143 = objc_msgSend_boundingCellRange(v136, v141, v142), v145 = v144, v146 = TSUCellRectFromTSCERangeCoordinate(), v143 == v146) && ((v146 ^ v143) & 0x101FFFF00000000) == 0 && v145 == v147)
        {
          v149 = __C();
          if (direction == 2)
          {
            v150 = (v129 << 32) | 0x7FFFFFFF;
            v151 = (v130 << 32) | 0x7FFFFFFF;
          }

          else
          {
            v150 = v125 | 0x7FFF00000000;
            v151 = v127 | 0x7FFF00000000;
          }

          v165 = sub_275EF48FC(v150, v151, v149, v148);
          if (v131 == v165 && ((v165 ^ v131) & 0xFFFF00000000) == 0 && ((v166 ^ v133) & 0xFFFF00000000) == 0 && v133 == v166)
          {
            v133 = v151;
            v131 = v150;
          }

          v168 = objc_msgSend_tableUID(v289, v166, v167);
          *&v315 = v131;
          *(&v315 + 1) = v133;
          *&v316 = v168;
          *(&v316 + 1) = v169;
          if (objc_msgSend_isCategorized(v289, v169, v170))
          {
            v172 = objc_alloc(MEMORY[0x277D80C38]);
            v174 = objc_msgSend_initWithRangeRef_(v172, v173, &v315);
            v176 = objc_msgSend_chartFormulaForTractReference_(TNChartFormulaWrapper, v175, v174);
          }

          else
          {
            v319 = v315;
            v320 = v316;
            v176 = objc_msgSend_chartFormulaForRangeReference_(TNChartFormulaWrapper, v171, &v319);
          }

          v179 = objc_msgSend_count(v298, v177, v178);
          objc_msgSend_addFormula_withFormulaID_(v293, v180, v176, v179 | 0x100000000);
          objc_msgSend_addIndex_(v298, v181, v123);
        }

        else
        {
          *&v315 = 0;
          *(&v315 + 1) = &v315;
          *&v316 = 0x3032000000;
          *(&v316 + 1) = sub_275EF4B94;
          v317 = sub_275EF4BA4;
          v318 = 0;
          v311[0] = MEMORY[0x277D85DD0];
          v311[1] = 3221225472;
          v311[2] = sub_275EF4BAC;
          v311[3] = &unk_27A6A2728;
          v313 = &v315;
          v314 = direction == 2;
          v152 = v289;
          v312 = v152;
          objc_msgSend_enumerateCellRangesUsingBlock_(v136, v153, v311);
          v156 = objc_msgSend_count(v298, v154, v155);
          v160 = objc_msgSend_isCategorized(v152, v157, v158);
          v161 = *(*(&v315 + 1) + 40);
          if (v160)
          {
            objc_msgSend_chartFormulaForTractReference_(TNChartFormulaWrapper, v159, v161);
          }

          else
          {
            objc_msgSend_chartFormulaForTractAsRangeReferences_(TNChartFormulaWrapper, v159, v161);
          }
          v162 = ;
          objc_msgSend_addFormula_withFormulaID_(v293, v163, v162, v156 | 0x100000000);
          objc_msgSend_addIndex_(v298, v164, v123);

          _Block_object_dispose(&v315, 8);
        }
      }

      ++v123;
    }

    while (v294 != v123);
    v182 = 0;
    v183 = 0;
    v184 = v269 == 0x7FFFFFFF;
    v185 = v269 != 0x7FFFFFFF && v271 == 0x7FFF00000000;
    v186 = v265;
    if (v185)
    {
      v186 = 0;
    }

    v187 = 0x200000000;
    if (direction == 2)
    {
      v187 = 0x300000000;
    }

    v291 = v187;
    v188 = v272 == 0x7FFF00000000;
    if (v272 != 0x7FFF00000000 && v274 == 0x7FFFFFFFLL)
    {
      v190 = 0;
    }

    else
    {
      v190 = v274;
    }

    if (v188 && v274 != 0x7FFFFFFFLL)
    {
      v191 = 0;
    }

    else
    {
      v191 = v274 & 0xFFFF00000000;
    }

    v277 = v191;
    v192 = (v266 + 0xFFFF00000000) & 0xFFFF00000000;
    if (!v267)
    {
      v188 = 1;
    }

    if (v188)
    {
      v192 = 0x7FFF00000000;
    }

    v276 = v192;
    if (v184 && v271 != 0x7FFF00000000)
    {
      v193 = 0;
    }

    else
    {
      v193 = v269;
    }

    v286 = v193;
    if (!v273)
    {
      v184 = 1;
    }

    if (v184)
    {
      v194 = 0x7FFFFFFFLL;
    }

    else
    {
      v194 = (v270 + v273 - 1);
    }

    v284 = v194;
    v195 = v186 << 32;
    while ((objc_msgSend_containsIndex_(v298, v121, v182) & 1) == 0)
    {
LABEL_139:
      ++v182;
      ++v190;
      v195 += 0x100000000;
      if (v294 == v182)
      {
        goto LABEL_142;
      }
    }

    if (direction == 2 && v182 < v278)
    {
      *&v315 = v195 & 0xFFFF00000000 | v286;
      *&v319 = v195 & 0xFFFF00000000 | v284;
      __C();
      v196 = TSUCellRectFromTSCERangeCoordinate();
      v197 = v121;
    }

    else
    {
      v197 = 0;
      v196 = 0x7FFF7FFFFFFFLL;
      if (direction != 2 && v182 < v268)
      {
        *&v315 = v277 | v190;
        *&v319 = v276 | v190;
        __C();
        v196 = TSUCellRectFromTSCERangeCoordinate();
        v197 = v198;
        if ((objc_msgSend_intersectsCellRange_(v275, v198, v196, v198) & 1) == 0)
        {
          v208 = 0;
LABEL_138:
          ++v183;

          goto LABEL_139;
        }
      }
    }

    if (v196 == 0x7FFFFFFF || (v196 & 0xFFFF00000000) == 0x7FFF00000000 || !(v197 >> 32) || !v197)
    {
      v201 = objc_msgSend_p_untitledLabelWithIndex_(self, v121, v183 + 1);
      v206 = objc_msgSend_chartFormulaForString_(TNChartFormulaWrapper, v207, v201);
    }

    else
    {
      v199 = objc_msgSend_cellRegion(v288, v121, v122);
      v201 = objc_msgSend_regionByIntersectingRange_(v199, v200, v196, v197);

      if (!objc_msgSend_cellCount(v201, v202, v203))
      {
        v205 = objc_msgSend_regionFromRange_(MEMORY[0x277D80CE0], v204, v196, v197);

        v201 = v205;
      }

      v206 = objc_msgSend_chartFormulaForCellRegion_inTable_(TNChartFormulaWrapper, v204, v201, v289);
    }

    v208 = v206;

    if (!v208)
    {
      v210 = MEMORY[0x277D81150];
      v211 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v209, "[TNChartMediator formulaStorageFromTable:selection:direction:scheme:]");
      v213 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v212, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v210, v214, v211, v213, 839, 0, "invalid nil value for '%{public}s'", "labelFormula");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v215, v216);
    }

    objc_msgSend_addFormula_withFormulaID_(v293, v209, v208, v183 | v291);
    goto LABEL_138;
  }

LABEL_142:
  v295 = objc_msgSend_array(MEMORY[0x277CBEB18], v121, v122);
  v219 = objc_msgSend_scheme(v293, v217, v218);
  if (objc_msgSend_maxLabeledGroupsForScheme_(TNChartFormulaStorage, v220, v219) >= v280 && v280)
  {
    v223 = 0;
    v224 = v272 == 0x7FFF00000000;
    if (v272 != 0x7FFF00000000 && v274 == 0x7FFFFFFF)
    {
      v226 = 0;
    }

    else
    {
      v226 = v274;
    }

    v227 = v265;
    if (v271 == 0x7FFF00000000 && v269 != 0x7FFFFFFF)
    {
      v228 = 0;
    }

    else
    {
      v228 = v265;
    }

    if (v271 == 0x7FFF00000000 && v269 != 0x7FFFFFFF)
    {
      v227 = 0;
    }

    if (v269 == 0x7FFFFFFF && v271 != 0x7FFF00000000)
    {
      v229 = 0;
    }

    else
    {
      v229 = v269;
    }

    v292 = v229;
    if (v273)
    {
      v230 = v269 == 0x7FFFFFFF;
    }

    else
    {
      v230 = 1;
    }

    v231 = (v270 + v273 - 1);
    if (v230)
    {
      v231 = 0x7FFFFFFFLL;
    }

    if (v224 && v274 != 0x7FFFFFFFLL)
    {
      v232 = 0;
    }

    else
    {
      v232 = v274 & 0xFFFF00000000;
    }

    v285 = v232;
    v287 = v231;
    if (!v267)
    {
      v224 = 1;
    }

    if (v224)
    {
      v233 = 0x7FFF00000000;
    }

    else
    {
      v233 = (v266 + 0xFFFF00000000) & 0xFFFF00000000;
    }

    v282 = v233;
    v234 = v227 << 32;
    do
    {
      if (direction == 2)
      {
        v235 = v226 + v223;
        if (objc_msgSend_intersectsRow_(v297, v221, v226 + v223))
        {
          if (v223 >= v268)
          {
            goto LABEL_180;
          }

          *&v315 = v285 | v235;
          *&v319 = v282 | v235;
          __C();
          v236 = TSUCellRectFromTSCERangeCoordinate();
          v238 = v237;
          if (objc_msgSend_intersectsCellRange_(v275, v237, v236, v237))
          {
            goto LABEL_181;
          }
        }
      }

      else if (objc_msgSend_intersectsColumn_(v297, v221, (v228 + v223)))
      {
        if (v223 >= v278)
        {
LABEL_180:
          v238 = 0;
          v236 = 0x7FFF7FFFFFFFLL;
        }

        else
        {
          *&v315 = v234 & 0xFFFF00000000 | v292;
          *&v319 = v234 & 0xFFFF00000000 | v287;
          __C();
          v236 = TSUCellRectFromTSCERangeCoordinate();
          v238 = v221;
        }

LABEL_181:
        if (v236 == 0x7FFFFFFF || (v236 & 0xFFFF00000000) == 0x7FFF00000000 || !(v238 >> 32) || !v238)
        {
          v246 = objc_msgSend_invalidRangeRef(MEMORY[0x277D80CC8], v221, v222);
          objc_msgSend_addObject_(v295, v248, v246);
        }

        else
        {
          v239 = objc_alloc(MEMORY[0x277D80CC8]);
          v240 = __C();
          v242 = v241;
          v244 = objc_msgSend_tableUID(v289, v241, v243);
          v246 = objc_msgSend_initWithRangeCoord_tableUID_(v239, v245, v240, v242, v244, v245);
          objc_msgSend_addObject_(v295, v247, v246);
        }
      }

      ++v223;
      v234 += 0x100000000;
    }

    while (v280 != v223);
  }

  if (direction == 2)
  {
    v249 = 2;
  }

  else
  {
    v249 = 3;
  }

  *&v319 = 0;
  *(&v319 + 1) = &v319;
  v320 = 0x2020000000uLL;
  tableCopy = v289;
  if (objc_msgSend_isCategorized(v289, v221, v222))
  {
    *&v315 = 0;
    *(&v315 + 1) = &v315;
    *&v316 = 0x3032000000;
    *(&v316 + 1) = sub_275EF4B94;
    v317 = sub_275EF4BA4;
    v318 = 0;
    v307[0] = MEMORY[0x277D85DD0];
    v307[1] = 3221225472;
    v307[2] = sub_275EF4C9C;
    v307[3] = &unk_27A6A27A0;
    v309 = &v315;
    v308 = v288;
    v310 = direction != 2;
    objc_msgSend_enumerateObjectsUsingBlock_(v295, v250, v307);
    v251 = *(*(&v319 + 1) + 24);
    *(*(&v319 + 1) + 24) = v251 + 1;
    v255 = v251;
    if (objc_msgSend_isValid(*(*(&v315 + 1) + 40), v252, v253))
    {
      v257 = objc_msgSend_chartFormulaForTractReference_(TNChartFormulaWrapper, v254, *(*(&v315 + 1) + 40));
    }

    else
    {
      v260 = objc_msgSend_p_untitledLabelWithIndex_(self, v254, v251 + 1);
      v257 = objc_msgSend_chartFormulaForString_(TNChartFormulaWrapper, v261, v260);
    }

    objc_msgSend_addFormula_withFormulaID_(v293, v256, v257, v255 | (v249 << 32));

    _Block_object_dispose(&v315, 8);
    v259 = v318;
  }

  else
  {
    v300[0] = MEMORY[0x277D85DD0];
    v300[1] = 3221225472;
    v300[2] = sub_275EF4F3C;
    v300[3] = &unk_27A6A27C8;
    v305 = &v319;
    v306 = v249;
    v301 = v288;
    v302 = v289;
    selfCopy = self;
    v304 = v293;
    objc_msgSend_enumerateObjectsUsingBlock_(v295, v258, v300);

    v259 = v301;
  }

  _Block_object_dispose(&v319, 8);
  v262 = [TNChartFormulaStorage alloc];
  v26 = objc_msgSend_initWithChartFormulaStorage_(v262, v263, v293);

LABEL_199:

  return v26;
}

- (id)formulaStorageFromCatTable:(id)table selection:(id)selection direction:(int)direction
{
  v5 = *&direction;
  tableCopy = table;
  selectionCopy = selection;
  v12 = selectionCopy;
  v111 = tableCopy;
  if (!tableCopy || !selectionCopy)
  {
    if (!selectionCopy)
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TNChartMediator formulaStorageFromCatTable:selection:direction:]");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 960, 0, "invalid nil value for '%{public}s'", "cellSelection");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    }

    v38 = objc_alloc_init(TNChartFormulaStorage);
    goto LABEL_13;
  }

  v13 = objc_msgSend_cellRegion(selectionCopy, v10, v11);
  objc_msgSend_boundingCellRange(v13, v14, v15);

  v118 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v119[0] = v118;
  v117 = v118;
  v16 = __C();
  if ((objc_msgSend_findChartableRangesFromTableRange_getBodyRange_headerColumnRange_headerRowRange_(tableCopy, v17, v16, v17, v119, &v118, &v117) & 1) == 0)
  {
    v38 = objc_alloc_init(TNChartFormulaStorage);
LABEL_13:
    v39 = v38;
    goto LABEL_56;
  }

  v101 = v12;
  v110 = TSUCellRectFromTSCERangeCoordinate();
  v19 = v18;
  v21 = objc_msgSend_cellRegion(v12, v18, v20);
  v23 = objc_msgSend_regionByIntersectingRange_(v21, v22, v110, v19);

  if (!v5)
  {
    if (objc_msgSend_preferSeriesToValues(self, v24, v25))
    {
      v28 = objc_msgSend_numberOfIntersectingRows(v23, v26, v27);
      if (v28 > objc_msgSend_numberOfIntersectingColumns(v23, v29, v30))
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v40 = objc_msgSend_numberOfIntersectingRows(v23, v26, v27);
      if (v40 < objc_msgSend_numberOfIntersectingColumns(v23, v41, v42))
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }
    }
  }

  v43 = [TNMutableChartFormulaStorage alloc];
  v103 = objc_msgSend_initWithDirection_(v43, v44, v5);
  v108 = objc_msgSend_cellRegionCullingToFirstFoundLevelFrom_inTable_byRows_(TNChartFormulaHelper, v45, v23, v111, v5 != 2);

  if (v5 == 2)
  {
    v48 = v19;
  }

  else
  {
    v48 = HIDWORD(v19);
  }

  v49 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v46, v47);
  v109 = v49;
  if (v48)
  {
    v104 = 0;
    v105 = v48;
    v50 = 0;
    v106 = v19 + WORD2(v110) - 1;
    v107 = v110 + HIDWORD(v19) - 1;
    v51 = 0x300000000;
    if (v5 != 2)
    {
      v51 = 0x200000000;
    }

    v102 = v51;
    while (1)
    {
      LODWORD(v52) = v110 + v50;
      if (v5 == 2)
      {
        v53 = v110;
      }

      else
      {
        v53 = v52;
      }

      v54 = WORD2(v110) + v50;
      if (v5 == 2)
      {
        v55 = WORD2(v110) + v50;
      }

      else
      {
        v55 = WORD2(v110);
      }

      if (v5 == 2)
      {
        v52 = v107;
      }

      else
      {
        v52 = v52;
      }

      if (v5 != 2)
      {
        v54 = v106;
      }

      v116[0] = v53 | (v55 << 32);
      v116[4] = v52 | (v54 << 32);
      __C();
      v56 = TSUCellRectFromTSCERangeCoordinate();
      v58 = objc_msgSend_regionByIntersectingRange_(v108, v57, v56, v57);
      if (!objc_msgSend_cellCount(v58, v59, v60))
      {
        goto LABEL_50;
      }

      v63 = objc_msgSend_count(v49, v61, v62);
      v65 = objc_msgSend_chartFormulasForSummaryRegion_inTable_(TNChartFormulaHelper, v64, v58, v111);
      if (objc_msgSend_count(v65, v66, v67) != 3)
      {
        v69 = MEMORY[0x277D81150];
        v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "[TNChartMediator formulaStorageFromCatTable:selection:direction:]");
        v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v73, v70, v72, 1034, 0, "Bad category formulas");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75);
      }

      v76 = objc_msgSend_objectAtIndexedSubscript_(v65, v68, 0);
      v79 = objc_msgSend_firstObject(v76, v77, v78);

      v81 = objc_msgSend_objectAtIndexedSubscript_(v65, v80, 1);
      v83 = objc_msgSend_objectAtIndexedSubscript_(v65, v82, 2);
      v85 = v83;
      if (!v104)
      {
        break;
      }

      if (v79)
      {
        goto LABEL_45;
      }

LABEL_49:

      v49 = v109;
LABEL_50:

      if (v105 == ++v50)
      {
        goto LABEL_53;
      }
    }

    if (v5 == 2)
    {
      v86 = v83;
    }

    else
    {
      v86 = v81;
    }

    v104 = v86;
    if (!v79)
    {
      goto LABEL_49;
    }

LABEL_45:
    objc_msgSend_addFormula_withFormulaID_(v103, v84, v79, v63 | 0x100000000);
    v89 = objc_msgSend_count(v109, v87, v88);
    objc_msgSend_addIndex_(v109, v90, v50);
    if (v5 == 2)
    {
      objc_msgSend_firstObject(v81, v91, v92);
    }

    else
    {
      objc_msgSend_firstObject(v85, v91, v92);
    }
    v93 = ;
    objc_msgSend_addFormula_withFormulaID_(v103, v94, v93, v89 | v102);

    goto LABEL_49;
  }

  v104 = 0;
LABEL_53:
  v95 = 2;
  if (v5 != 2)
  {
    v95 = 3;
  }

  v116[0] = 0;
  v116[1] = v116;
  v116[2] = 0x2020000000;
  v116[3] = 0;
  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 3221225472;
  v112[2] = sub_275EF57D0;
  v112[3] = &unk_27A6A27F0;
  v114 = v116;
  v115 = v95;
  v96 = v103;
  v113 = v96;
  objc_msgSend_enumerateObjectsUsingBlock_(v104, v97, v112);
  v12 = v101;
  v98 = [TNChartFormulaStorage alloc];
  v39 = objc_msgSend_initWithChartFormulaStorage_(v98, v99, v96);

  _Block_object_dispose(v116, 8);
LABEL_56:

  return v39;
}

- (id)formulaStorageFromPivotTable:(id)table cellRect:(TSUCellRect *)rect
{
  v4 = objc_msgSend_formulaStorageFromPivotTable_cellRect_aggregateIndex_plotDirection_groupLabelOptions_(self, a2, table, rect, 0xFFFFLL, 0, 7);

  return v4;
}

- (id)formulaStorageFromPivotTable:(id)table cellRect:(TSUCellRect *)rect aggregateIndex:(unsigned __int16)index plotDirection:(int)direction groupLabelOptions:(unsigned __int8)options
{
  optionsCopy = options;
  v7 = *&direction;
  tableCopy = table;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = -1;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = -1;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  indexCopy = index;
  v14 = objc_msgSend_translator(tableCopy, v12, v13);
  v17 = objc_msgSend_baseTableModel(tableCopy, v15, v16);
  v20 = objc_msgSend_pivotOwner(v17, v18, v19);
  v23 = objc_msgSend_groupBySet(v20, v21, v22);
  objc_msgSend_activeFlatteningDimension(v23, v24, v25);

  if (TSUCellRect::isSpanning(rect))
  {
    v35.var0 = objc_msgSend_range(tableCopy, v26, v27);
    v35.var1 = v28;
    v36.var0 = TSUCellRect::nonSpanningCellRectWithTableRange(rect, &v35);
    v36.var1 = v29;
  }

  else
  {
    v36 = *rect;
  }

  v34 = v14;
  TSUCellRect::enumerateCoordinatesUsingBlock();
  v31 = objc_msgSend_formulaStorageFromPivotTable_rowLevel_columnLevel_aggregateIndex_plotDirection_groupLabelOptions_(self, v30, tableCopy, *(v46 + 24), *(v42 + 24), *(v38 + 12), v7, optionsCopy);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  return v31;
}

- (id)formulaStorageFromPivotTable:(id)table cellRegion:(id)region
{
  tableCopy = table;
  regionCopy = region;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = -1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = -1;
  v10 = objc_msgSend_translator(tableCopy, v8, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_275EF5D40;
  v16[3] = &unk_27A6A2840;
  v11 = v10;
  v17 = v11;
  v18 = &v24;
  v19 = &v20;
  objc_msgSend_enumerateCellIDsUsingBlock_(regionCopy, v12, v16);
  v14 = objc_msgSend_formulaStorageFromPivotTable_rowLevel_columnLevel_aggregateIndex_plotDirection_(self, v13, tableCopy, *(v25 + 24), *(v21 + 24), 0xFFFFLL, 0);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v14;
}

- (id)formulaStorageFromPivotTable:(id)table
{
  v3 = objc_msgSend_formulaStorageFromPivotTable_rowLevel_columnLevel_aggregateIndex_plotDirection_(self, a2, table, 253, 253, 0xFFFFLL, 0);

  return v3;
}

- (id)formulaStorageFromPivotTable:(id)table rowLevel:(unsigned __int8)level columnLevel:(unsigned __int8)columnLevel aggregateIndex:(unsigned __int16)index plotDirection:(int)direction
{
  v7 = objc_msgSend_formulaStorageFromPivotTable_rowLevel_columnLevel_aggregateIndex_plotDirection_groupLabelOptions_(self, a2, table, level, columnLevel, index, *&direction, 7);

  return v7;
}

- (id)formulaStorageFromPivotTable:(id)table rowLevel:(unsigned __int8)level columnLevel:(unsigned __int8)columnLevel aggregateIndex:(unsigned __int16)index plotDirection:(int)direction groupLabelOptions:(unsigned __int8)options
{
  v8 = *&direction;
  columnLevelCopy = columnLevel;
  levelCopy = level;
  tableCopy = table;
  if (tableCopy)
  {
    if (!v8)
    {
      if (objc_msgSend_preferSeriesToValues(self, v12, v13))
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }
    }

    if (levelCopy == 255)
    {
      v15 = objc_msgSend_translator(tableCopy, v12, v13);
      objc_msgSend_maxVisibleRowLevel(v15, v16, v17);
    }

    if (columnLevelCopy == 255)
    {
      v18 = objc_msgSend_translator(tableCopy, v12, v13);
      objc_msgSend_maxVisibleColumnLevel(v18, v19, v20);
    }

    objc_msgSend_numberOfRowLevels(tableCopy, v12, v13);
    objc_msgSend_numberOfColumnLevels(tableCopy, v21, v22);
    v23 = [TNMutableChartFormulaStorage alloc];
    objc_msgSend_initWithDirection_scheme_(v23, v24, v8, 2);
    operator new();
  }

  v26 = objc_alloc_init(TNChartFormulaStorage);

  return v26;
}

- (void)pauseCalculationEngine
{
  v5 = objc_msgSend_calculationEngine(self, a2, v2);
  objc_msgSend_pauseRecalculation(v5, v3, v4);
}

- (void)resumeCalculationEngine
{
  v5 = objc_msgSend_calculationEngine(self, a2, v2);
  objc_msgSend_resumeRecalculation(v5, v3, v4);
}

- (void)synchronizeModelFromFormulaStorage:(id)storage
{
  storageCopy = storage;
  v6 = objc_msgSend_formulaListForType_(storageCopy, v5, 1);
  if (!objc_msgSend_count(v6, v7, v8))
  {
    v20 = objc_msgSend_chartInfo(self, v9, v10);
    v11 = objc_msgSend_model(v20, v21, v22);

    v25 = objc_msgSend_calculationEngine(self, v23, v24);
    v17 = objc_msgSend_accessController(v25, v26, v27);

    if (!v17 || (objc_msgSend_hasWrite(v17, v28, v29) & 1) != 0)
    {
      objc_msgSend_forceLoadDefaultData(v11, v28, v29);
      goto LABEL_11;
    }

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_275EF6724;
    v37[3] = &unk_27A6A2868;
    v30 = v11;
    v38 = v30;
    objc_msgSend_performWrite_(v17, v33, v37);
    v32 = v38;
LABEL_10:

    v11 = v30;
    goto LABEL_11;
  }

  v11 = objc_msgSend_calculationEngine(self, v9, v10);
  v14 = objc_msgSend_calculationEngine(self, v12, v13);
  v17 = objc_msgSend_accessController(v14, v15, v16);

  if (v17 && (objc_msgSend_hasWrite(v17, v18, v19) & 1) == 0)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_275EF672C;
    v34[3] = &unk_27A6A2890;
    v34[4] = self;
    v30 = v11;
    v35 = v30;
    v36 = storageCopy;
    objc_msgSend_performWrite_(v17, v31, v34);

    v32 = v35;
    goto LABEL_10;
  }

  objc_msgSend_p_copyValuesIntoToChartModel_formulaMap_(self, v18, v11, storageCopy);
LABEL_11:
}

- (void)setEditingStorageOverride:(id)override
{
  overrideCopy = override;
  if (self->_editingStorageOverride != overrideCopy)
  {
    v9 = overrideCopy;
    v7 = objc_msgSend_copy(overrideCopy, v5, v6);
    editingStorageOverride = self->_editingStorageOverride;
    self->_editingStorageOverride = v7;

    overrideCopy = v9;
  }
}

- (int)direction
{
  v3 = objc_msgSend_formulaStorage(self, a2, v2);
  v6 = objc_msgSend_direction(v3, v4, v5);

  return v6;
}

- (unint64_t)referenceType
{
  v4 = objc_msgSend_formulaStorage(self, a2, v2);
  v7 = objc_msgSend_scheme(v4, v5, v6);

  if (v7 == 2)
  {
    return 3;
  }

  v11 = objc_msgSend_formulaStorage(self, v8, v9);
  if (objc_msgSend_scheme(v11, v12, v13))
  {
    v16 = objc_msgSend_formulaStorage(self, v14, v15);
    v19 = objc_msgSend_scheme(v16, v17, v18);

    if (v19 != 1)
    {
      return 0;
    }
  }

  else
  {
  }

  return 2;
}

+ (id)propertiesThatInvalidateMediator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275EF69A0;
  block[3] = &unk_27A6A28B0;
  block[4] = self;
  if (qword_280A3DF10 != -1)
  {
    dispatch_once(&qword_280A3DF10, block);
  }

  v2 = qword_280A3DF08;

  return v2;
}

- (BOOL)p_isScatterOrBubble
{
  v3 = objc_msgSend_chartInfo(self, a2, v2);
  v6 = objc_msgSend_chartType(v3, v4, v5);
  v9 = objc_msgSend_supportsSharedAndSeparateX(v6, v7, v8);

  return v9;
}

- (id)p_chartFormulaStorageForEditingOverride
{
  if (self->_isEditing && (editingStorageOverride = self->_editingStorageOverride) != 0)
  {
    v4 = editingStorageOverride;
  }

  else
  {
    v4 = objc_msgSend_formulaStorage(self, a2, v2);
  }

  return v4;
}

- (id)seriesDimensionForFormulaIndex:(unint64_t)index
{
  v4 = objc_msgSend_p_gridSeriesIndexForRemoteSeriesIndex_(self, a2, index);
  v7 = objc_msgSend_chartInfo(self, v5, v6);
  v10 = objc_msgSend_model(v7, v8, v9);
  v12 = objc_msgSend_seriesDimensionForGridIndex_(v10, v11, v4);

  return v12;
}

- (unint64_t)formulaIndexForSeriesDimension:(id)dimension
{
  dimensionCopy = dimension;
  v7 = objc_msgSend_chartInfo(self, v5, v6);
  v10 = objc_msgSend_model(v7, v8, v9);
  v12 = objc_msgSend_gridIndexForSeriesDimension_(v10, v11, dimensionCopy);

  v14 = objc_msgSend_p_remoteSeriesIndexForGridSeriesIndex_(self, v13, v12);
  return v14;
}

- (id)descriptorForChartSeries:(int64_t)series inTable:(id)table
{
  v100 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  v85 = tableCopy;
  v7 = objc_alloc_init(TNChartReferenceSeriesDescriptor);
  v86 = v7;
  v10 = objc_msgSend_calculationEngine(self, v8, v9);
  seriesCopy = series;
  v97[0] = objc_msgSend_entityUID(self, v11, v12);
  v97[1] = v13;
  v15 = objc_msgSend_tableUID(tableCopy, v13, v14);
  v17 = v16;
  v19 = objc_msgSend_formulaStorage(self, v16, v18);
  v21 = objc_msgSend_formulaListForType_(v19, v20, 1);

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v22 = v21;
  v87 = v22;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v93, v99, 16);
  if (v25)
  {
    v26 = *v94;
    v81 = *v94;
    do
    {
      v27 = 0;
      v82 = v25;
      do
      {
        if (*v94 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(*(*(&v93 + 1) + 8 * v27), v24, v10, v97);
        v83 = v27;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v29 = v28;
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v89, v98, 16);
        if (v32)
        {
          v33 = *v90;
          while (2)
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v90 != v33)
              {
                objc_enumerationMutation(v29);
              }

              v35 = *(*(&v89 + 1) + 8 * i);
              v36 = objc_msgSend_tableUID_(v35, v31, v10);
              v38 = v37;
              isReference = objc_msgSend_isReference(v35, v37, v39);
              if (v15 == v36)
              {
                v42 = isReference;
              }

              else
              {
                v42 = 0;
              }

              if (v42 == 1 && v17 == v38)
              {
                tableCopy = v85;
                v7 = v86;
                v22 = v87;
                isCategorized = objc_msgSend_isCategorized(v85, v31, v41);
                objc_msgSend_setOnCategorizedTable_(v86, v45, isCategorized);
                objc_msgSend_setSeriesIndex_(v86, v46, seriesCopy);
                if (objc_msgSend_type(v35, v47, v48))
                {
                  if (objc_msgSend_type(v35, v49, v50) == 1)
                  {
                    objc_msgSend_setCategoryLevel_(v86, v51, 253);
                    if (v35)
                    {
                      objc_msgSend_rangeReference(v35, v53, v54);
                    }

                    else
                    {
                      memset(&v88, 0, sizeof(v88));
                    }

                    isSpanningAllRows = TSCERangeRef::isSpanningAllRows(&v88);
                    objc_msgSend_setSpanning_(v86, v79, isSpanningAllRows);
                  }

                  else if (objc_msgSend_type(v35, v51, v52) == 2)
                  {
                    objc_msgSend_setCategoryLevel_(v86, v56, 253);
                    v60 = objc_msgSend_tractReference(v35, v58, v59);
                    v63 = objc_msgSend_spansAllRows(v60, v61, v62);
                    objc_msgSend_setSpanning_(v86, v64, v63);
                  }

                  else if (objc_msgSend_type(v35, v56, v57) == 3)
                  {
                    v67 = objc_msgSend_categoryReference(v35, v65, v66);
                    v70 = objc_msgSend_groupLevel(v67, v68, v69);
                    objc_msgSend_setCategoryLevel_(v86, v71, v70);
                    v74 = objc_msgSend_groupBy(v85, v72, v73);
                    isSpanningCategoryRef = objc_msgSend_isSpanningCategoryRef_(v74, v75, v67);
                    objc_msgSend_setSpanning_(v86, v77, isSpanningCategoryRef);
                  }
                }

                else
                {
                  objc_msgSend_setCategoryLevel_(v86, v49, 253);
                  objc_msgSend_setSpanning_(v86, v55, 0);
                }

                goto LABEL_35;
              }
            }

            v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v89, v98, 16);
            if (v32)
            {
              continue;
            }

            break;
          }
        }

        tableCopy = v85;
        v7 = v86;
        v22 = v87;

        v27 = v83 + 1;
        v26 = v81;
      }

      while (v83 + 1 != v82);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v24, &v93, v99, 16);
    }

    while (v25);
  }

LABEL_35:

  return v7;
}

- (id)descriptorForSummaryChart
{
  v4 = objc_msgSend_formulaStorage(self, a2, v2);
  v7 = objc_msgSend_entityUID(self, v5, v6);
  v9 = v8;
  v11 = objc_msgSend_calculationEngine(self, v8, v10);
  v13 = objc_msgSend_descriptorForSummaryChart_withCalcEngine_(v4, v12, v7, v9, v11);

  return v13;
}

- (id)labelFormulasForType:(unint64_t)type
{
  v88 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_formulaStorage(self, a2, type);
  v6 = objc_msgSend_formulaListForType_(v4, v5, type);

  obj = v6;
  objc_msgSend_count(v6, v7, v8);
  v9 = __C();
  v12 = objc_msgSend_maxGroupLabelFormulas(TNChartFormulaStorage, v10, v11);
  if (objc_msgSend_count(v6, v13, v14) > v12)
  {
    v6 = objc_msgSend_subarrayWithRange_(v6, v15, 0, v12);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obja = v6;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v16, &v82, v87, 16);
  v18 = 0;
  if (v17)
  {
    v72 = *v83;
    do
    {
      v19 = 0;
      v74 = v17;
      do
      {
        if (*v83 != v72)
        {
          objc_enumerationMutation(obja);
        }

        v20 = *(*(&v82 + 1) + 8 * v19);
        context = objc_autoreleasePoolPush();
        v23 = objc_msgSend_calculationEngine(self, v21, v22);
        v25 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v20, v24, v23, &self->_entityUID);

        if (objc_msgSend_count(v25, v26, v27))
        {
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v28 = v25;
          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v78, v86, 16);
          if (!v32)
          {
            goto LABEL_34;
          }

          v33 = *v79;
          while (1)
          {
            v34 = 0;
            do
            {
              if (*v79 != v33)
              {
                objc_enumerationMutation(v28);
              }

              v35 = *(*(&v78 + 1) + 8 * v34);
              if (objc_msgSend_isCellReference(v35, v30, v31))
              {
                if (v35)
                {
                  objc_msgSend_cellReference(v35, v36, v37);
                }

                else
                {
                  memset(v76, 0, 24);
                }

                memset(&v77, 0, sizeof(v77));
                TSCEASTNodeArray::appendReference(v9, v76, 0, &v77);
                goto LABEL_28;
              }

              if (objc_msgSend_isRangeReference(v35, v36, v37))
              {
                if (v35)
                {
                  objc_msgSend_rangeReference(v35, v38, v39);
                }

                else
                {
                  memset(v76, 0, 32);
                }

                memset(&v77, 0, sizeof(v77));
                TSCEASTNodeArray::appendRangeReference(v9, v76, 0, &v77);
                goto LABEL_28;
              }

              if (objc_msgSend_isCategoryReference(v35, v38, v39))
              {
                v42 = objc_msgSend_categoryReference(v35, v40, v41);
                TSCEASTCategoryRefElement::appendCategoryRefElement(v9, v42, v43);

LABEL_28:
                v18 = (v18 + 1);
                goto LABEL_29;
              }

              if (objc_msgSend_isTractReference(v35, v40, v41))
              {
                v46 = objc_msgSend_tractReference(v35, v44, v45);
                v47 = sub_275F11A20(v9, v46);

                v18 = (v18 + v47);
                goto LABEL_29;
              }

              if (objc_msgSend_isStaticValue(v35, v44, v45))
              {
                v48 = objc_msgSend_staticValue(v35, v30, v31);
                objc_msgSend_appendASTForConstantToNodeArray_(v48, v49, v9);

                goto LABEL_28;
              }

LABEL_29:
              ++v34;
            }

            while (v32 != v34);
            v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v78, v86, 16);
            v32 = v50;
            if (!v50)
            {
LABEL_34:

              goto LABEL_36;
            }
          }
        }

        TSCEASTTagOnlyElement::appendTagOnlyElement();
        v18 = (v18 + 1);
LABEL_36:

        objc_autoreleasePoolPop(context);
        ++v19;
      }

      while (v19 != v74);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v51, &v82, v87, 16);
    }

    while (v17);
  }

  TSCEASTFunctionElement::appendFunctionElement(v9, 0xAF, v18, 0, v52);
  v55 = objc_msgSend_calculationEngine(self, v53, v54);
  v77.var0 = 0;
  v77.var1 = self->_entityUID;
  MEMORY[0x277C90920](v76, v55, &v77);

  v58 = objc_msgSend_calculationEngine(self, v56, v57);
  v61 = objc_msgSend_context(v58, v59, v60);
  v62 = TSTExpressionTreeCreator::expressionTreeFromASTNodeArray();

  v63 = objc_alloc(MEMORY[0x277D80CF8]);
  v66 = objc_msgSend_calculationEngine(self, v64, v65);
  v68 = objc_msgSend_initWithCalculationEngine_expressionTree_baseHostCell_hostTable_(v63, v67, v66, v62, 0, 0);

  TSCEASTNodeArray::freeNodeArray();

  return v68;
}

- (id)categoryLabelFormulas
{
  v4 = objc_msgSend_formulaStorage(self, a2, v2);
  v7 = objc_msgSend_categoryLabelFormulaType(v4, v5, v6);
  v9 = objc_msgSend_labelFormulasForType_(self, v8, v7);

  return v9;
}

- (id)commandToChangeCategoryLabelFormulas:(id)formulas
{
  formulasCopy = formulas;
  v7 = objc_msgSend_formulaStorage(self, v5, v6);
  v10 = objc_msgSend_categoryLabelFormulaType(v7, v8, v9);
  v12 = objc_msgSend_commandToChangeLabelFormulas_forType_modelUpdateDataType_(self, v11, formulasCopy, v10, 2);

  return v12;
}

- (unint64_t)formulaTypeFromDataType:(int)type
{
  if (type <= 2)
  {
    switch(type)
    {
      case 0:
        return 1;
      case 1:
        v5 = objc_msgSend_formulaStorage(self, a2, *&type);
        v8 = objc_msgSend_seriesLabelFormulaType(v5, v16, v17);
        break;
      case 2:
        v5 = objc_msgSend_formulaStorage(self, a2, *&type);
        v8 = objc_msgSend_categoryLabelFormulaType(v5, v6, v7);
        break;
      default:
        goto LABEL_13;
    }

    v4 = v8;

    return v4;
  }

  if (type > 4)
  {
    if (type == 5)
    {
      return 6;
    }

    if (type == 6)
    {
      return 7;
    }

LABEL_13:
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TNChartMediator formulaTypeFromDataType:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1579, 0, "Invalid model update data type: %ld", type);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (type == 3)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

- (id)p_formulaWrapperFromTSTFormula:(id)formula
{
  formulaCopy = formula;
  v6 = objc_msgSend_expressionTree(formulaCopy, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_geometricFormula(formulaCopy, v7, v8);
    v11 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v10, v9);
  }

  else
  {
    v11 = objc_msgSend_emptyChartFormula(TNChartFormulaWrapper, v7, v8);
  }

  return v11;
}

- (id)p_tstFormulaFromForumulaWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v7 = objc_msgSend_formulaObject(wrapperCopy, v5, v6);

  if (!v7)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TNChartMediator p_tstFormulaFromForumulaWrapper:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1596, 0, "invalid nil value for '%{public}s'", "formulaWrapper.formulaObject");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_alloc(MEMORY[0x277D80D60]);
  v19 = objc_msgSend_calculationEngine(self, v17, v18);
  v22 = objc_msgSend_context(v19, v20, v21);
  v25 = objc_msgSend_calculationEngine(self, v23, v24);
  v28 = objc_msgSend_formulaObject(wrapperCopy, v26, v27);
  v35[0] = objc_msgSend_entityUID(self, v29, v30);
  v35[1] = v31;
  v32 = objc_msgSend_initWithContext_calculationEngine_baseHostCell_formula_ownerUID_(v16, v31, v22, v25, 0, v28, v35);

  objc_msgSend_setFunctionIndex_(v32, v33, 175);

  return v32;
}

- (id)errorBarCustomFormulaForSeriesIndex:(unint64_t)index dataType:(int)type
{
  v6 = objc_msgSend_formulaTypeFromDataType_(self, a2, *&type);
  v9 = objc_msgSend_formulaStorage(self, v7, v8);
  v11 = objc_msgSend_formulaListForType_(v9, v10, v6);

  if (!v11)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TNChartMediator errorBarCustomFormulaForSeriesIndex:dataType:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 1610, 0, "invalid nil value for '%{public}s'", "formulaList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  if (objc_msgSend_count(v11, v12, v13) <= index)
  {
    objc_msgSend_defaultErrorBarFormulaWrapper(TNChartMediator, v21, v22);
  }

  else
  {
    objc_msgSend_objectAtIndex_(v11, v21, index);
  }
  v23 = ;
  v25 = objc_msgSend_p_tstFormulaFromForumulaWrapper_(self, v24, v23);

  return v25;
}

- (id)seriesDataFormulaForSeriesDimension:(id)dimension
{
  v4 = objc_msgSend_formulaIndexForSeriesDimension_(self, a2, dimension);
  v7 = objc_msgSend_formulaStorage(self, v5, v6);
  v9 = objc_msgSend_formulaListForType_(v7, v8, 1);

  if (v4 == 0x7FFFFFFFFFFFFFFFLL || v4 >= objc_msgSend_count(v9, v10, v11))
  {
    v15 = 0;
  }

  else
  {
    v13 = objc_msgSend_objectAtIndex_(v9, v12, v4);
    v15 = objc_msgSend_p_tstFormulaFromForumulaWrapper_(self, v14, v13);
  }

  return v15;
}

- (void)p_hackSetCalcEngineLegacyGlobalID
{
  v3 = objc_msgSend_calculationEngine(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    objc_msgSend_allRefResolverOwnerUIDs(v3, v4, v5);
    v7 = v12;
    if (v12 != v13)
    {
      do
      {
        v8 = TSKUIDStruct::CFUUIDBytes(v7);
        v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], HIBYTE(v9), @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X", v8, BYTE1(v8), BYTE2(v8), BYTE3(v8), BYTE4(v8), BYTE5(v8), BYTE6(v8), HIBYTE(v8), v9, BYTE1(v9), BYTE2(v9), BYTE3(v9), BYTE4(v9), BYTE5(v9), BYTE6(v9), HIBYTE(v9));
        objc_msgSend_setOwnerUIDForLegacyGlobalID_ownerUID_(v6, v11, v10, v7);

        ++v7;
      }

      while (v7 != v13);
      v7 = v12;
    }

    if (v7)
    {
      operator delete(v7);
    }
  }
}

- (TNChartFormulaStorage)formulaStorage
{
  if (!self->_isRegisteredWithCalcEngine || (objc_msgSend_calculationEngine(self, a2, v2), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    p_formulaStorage = &self->_formulaStorage;
    goto LABEL_15;
  }

  p_formulaStorage = &self->_cleanFormulaStorage;
  if (self->_cleanFormulaStorage)
  {
    goto LABEL_15;
  }

  v8 = objc_msgSend_rawFormulaStorage(self, v5, v6);
  v11 = objc_msgSend_scheme(v8, v9, v10);

  if (!v11)
  {
    v62 = objc_msgSend_mutableCopy(self->_formulaStorage, v12, v13);
    objc_msgSend_p_removeDeletedFormulas_(self, v63, v62);
    if (objc_msgSend_direction(v62, v64, v65))
    {
      objc_msgSend_repairMissingSeriesLabelsInMap_(self, v66, v62);
      objc_msgSend_repairMissingCategoryLabelsInMap_(self, v67, v62);
    }

    v68 = *p_formulaStorage;
    *p_formulaStorage = v62;
    v29 = v68;
    goto LABEL_35;
  }

  v14 = objc_msgSend_rawFormulaStorage(self, v12, v13);
  v17 = objc_msgSend_scheme(v14, v15, v16);

  if (v17 != 2)
  {
    goto LABEL_15;
  }

  v20 = objc_msgSend_rawFormulaStorage(self, v18, v19);
  v23 = objc_msgSend_entityUID(self, v21, v22);
  v25 = v24;
  v27 = objc_msgSend_calculationEngine(self, v24, v26);
  v29 = objc_msgSend_descriptorForSummaryChart_withCalcEngine_(v20, v28, v23, v25, v27);

  v32 = objc_msgSend_tableUID(v29, v30, v31);
  v34 = v33;
  v36 = objc_msgSend_calculationEngine(self, v33, v35);
  if (!objc_msgSend_ownerIsRegistered_(v36, v37, v32, v34))
  {
    goto LABEL_33;
  }

  v39 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(MEMORY[0x277D80D40], v38, v32, v34, v36);
  if (objc_msgSend_isAPivotTable(v39, v40, v41))
  {
    v46 = objc_msgSend_rowLevel(v29, v42, v43);
    if (v46 != 253)
    {
      v47 = objc_msgSend_rowLevel(v29, v44, v45);
      v91 = objc_msgSend_translator(v39, v48, v49);
      if (objc_msgSend_numberOfRowLevels(v91, v50, v51) < v47)
      {
        goto LABEL_13;
      }
    }

    v54 = objc_msgSend_columnLevel(v29, v44, v45);
    if (v54 != 253)
    {
      v55 = objc_msgSend_columnLevel(v29, v52, v53);
      v90 = objc_msgSend_translator(v39, v56, v57);
      if (objc_msgSend_numberOfColumnLevels(v90, v58, v59) < v55)
      {

        if (v46 == 253)
        {
LABEL_32:

LABEL_33:
          v84 = [TNChartFormulaStorage alloc];
          v87 = objc_msgSend_direction(self->_formulaStorage, v85, v86);
          v71 = objc_msgSend_initWithDirection_(v84, v88, v87);
          goto LABEL_34;
        }

LABEL_13:

        goto LABEL_32;
      }
    }

    if (objc_msgSend_aggregateIndex(v29, v52, v53) == 0xFFFF)
    {
      v83 = 0;
    }

    else
    {
      v74 = objc_msgSend_aggregateIndex(v29, v72, v73);
      v77 = objc_msgSend_pivotOwner(v39, v75, v76);
      v80 = objc_msgSend_aggregates(v77, v78, v79);
      v83 = objc_msgSend_count(v80, v81, v82) <= v74;
    }

    if (v54 != 253)
    {
    }

    if (v46 == 253)
    {
      if (v83)
      {
        goto LABEL_32;
      }
    }

    else
    {

      if (v83)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    objc_msgSend_isCategorized(v39, v42, v43);
  }

  v71 = objc_msgSend_mutableCopy(self->_formulaStorage, v69, v70);
LABEL_34:
  v89 = *p_formulaStorage;
  *p_formulaStorage = v71;

LABEL_35:
LABEL_15:
  v60 = *p_formulaStorage;

  return v60;
}

- (void)setFormulaStorage:(id)storage doRegistration:(BOOL)registration
{
  registrationCopy = registration;
  obj = storage;
  objc_msgSend_willModify(self, v6, v7);
  if (self->_formulaStorage != obj)
  {
    v10 = objc_msgSend_calculationEngine(self, v8, v9);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [TNChartFormulaStorage alloc];
      v14 = objc_msgSend_initWithChartFormulaStorage_(v12, v13, obj);

      obj = v14;
    }

    if (registrationCopy)
    {
      objc_msgSend_p_unregisterAllFormulaeFromCalcEngine_(self, v11, v10);
      objc_storeStrong(&self->_formulaStorage, obj);
      cleanFormulaStorage = self->_cleanFormulaStorage;
      self->_cleanFormulaStorage = 0;

      objc_msgSend_p_registerFormulaeWithCalcEngine_(self, v16, v10);
    }

    else
    {
      objc_storeStrong(&self->_formulaStorage, obj);
      v19 = self->_cleanFormulaStorage;
      self->_cleanFormulaStorage = 0;
    }

    v20 = objc_msgSend_formulaStorage(self, v17, v18);
    v22 = objc_msgSend_formulaListForType_(v20, v21, 1);
    v25 = objc_msgSend_count(v22, v23, v24);

    if (!v25)
    {
      v28 = objc_msgSend_chartInfo(self, v26, v27);
      v31 = objc_msgSend_model(v28, v29, v30);

      objc_msgSend_forceLoadDefaultData(v31, v32, v33);
    }
  }
}

- (void)synchronizeModelFromFormulaStorage
{
  if (self->_isRegisteredWithCalcEngine)
  {
    v5 = objc_msgSend_formulaStorage(self, a2, v2);
    objc_msgSend_synchronizeModelFromFormulaStorage_(self, v4, v5);
  }
}

- (BOOL)hasCategoryReferences
{
  v3 = [TNChartFormulaTypeEnumerator alloc];
  v6 = objc_msgSend_formulaStorage(self, v4, v5);
  v8 = objc_msgSend_initWithChartFormulaStorage_(v3, v7, v6);

  do
  {
    FormulaType = objc_msgSend_nextFormulaType(v8, v9, v10);
    if (FormulaType == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v14 = objc_msgSend_formulaStorage(self, v11, v12);
    v16 = objc_msgSend_p_formulaComponentsInMap_ofType_(self, v15, v14, FormulaType);
  }

  while ((v16 & 8) == 0);

  return FormulaType != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)hasTractReference
{
  v3 = [TNChartFormulaTypeEnumerator alloc];
  v6 = objc_msgSend_formulaStorage(self, v4, v5);
  v8 = objc_msgSend_initWithChartFormulaStorage_(v3, v7, v6);

  do
  {
    FormulaType = objc_msgSend_nextFormulaType(v8, v9, v10);
    if (FormulaType == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v14 = objc_msgSend_formulaStorage(self, v11, v12);
    v16 = objc_msgSend_p_formulaComponentsInMap_ofType_(self, v15, v14, FormulaType);
  }

  while ((v16 & 4) == 0);

  return FormulaType != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)p_untitledLabelWithIndex:(unint64_t)index
{
  if (!index)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TNChartMediator p_untitledLabelWithIndex:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 1873, 0, "Untitled index for chart labels must be greater than zero.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = objc_msgSend_chartInfo(self, a2, index);
  v15 = objc_msgSend_documentRoot(v12, v13, v14);
  v18 = objc_msgSend_documentLocale(v15, v16, v17);
  v20 = objc_msgSend_localizedStringForKey_value_table_(v18, v19, @"Untitled %d", &stru_2884F65E0, @"Numbers");

  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, v20, index);

  return v22;
}

- (id)untitledLabelOfType:(unint64_t)type formulaMap:(id)map existingLabels:(id)labels runningIndex:(unint64_t *)index
{
  labelsCopy = labels;
  if (index)
  {
    v11 = *index;
  }

  else
  {
    v11 = 1;
  }

  v12 = objc_msgSend_chartInfo(self, v8, v9);
  v15 = objc_msgSend_documentRoot(v12, v13, v14);
  v18 = objc_msgSend_documentLocale(v15, v16, v17);
  v20 = objc_msgSend_localizedStringForKey_value_table_(v18, v19, @"Untitled %d", &stru_2884F65E0, @"Numbers");

  v22 = 0;
  do
  {
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, v20, v11);

    ++v11;
    v22 = v23;
  }

  while ((objc_msgSend_containsObject_(labelsCopy, v24, v23) & 1) != 0);
  if (index)
  {
    *index = v11;
  }

  return v23;
}

+ (id)defaultErrorBarFormulaWrapper
{
  if (qword_280A3DF18 != -1)
  {
    sub_275F4AAB4();
  }

  v3 = qword_280A3DF20;

  return v3;
}

- (BOOL)shouldSkipHiddenData
{
  v3 = objc_msgSend_chartInfo(self, a2, v2);
  v5 = objc_msgSend_intValueForProperty_defaultValue_(v3, v4, 1115, 0) != 0;

  return v5;
}

- (void)p_copyValuesIntoToChartModel:(id)model formulaMap:(id)map
{
  modelCopy = model;
  mapCopy = map;
  v49 = 0;
  v43 = 0;
  shouldSkipHiddenData = objc_msgSend_shouldSkipHiddenData(self, v8, v9, modelCopy);
  selfCopy = self;
  v39 = selfCopy;
  v11 = mapCopy;
  v40 = v11;
  v12 = modelCopy;
  v41 = v12;
  v15 = objc_msgSend_scheme(v11, v13, v14) == 2;
  v42 = objc_msgSend_newEvaluationContextWith_inChart_forSummaryChart_(TNChartFormulaWrapper, v16, v12, &selfCopy->_entityUID, v15);

  v18 = objc_msgSend_numberOfSeriesWithCalcEngine_inEntity_shouldSkipHiddenData_(v11, v17, v12, selfCopy->_entityUID._lower, selfCopy->_entityUID._upper, shouldSkipHiddenData);
  v21 = objc_msgSend_chartInfo(selfCopy, v19, v20);
  v43 = objc_msgSend_functionSpecForFunctionIndex_(MEMORY[0x277D80C78], v22, 175);

  if (shouldSkipHiddenData == 1)
  {
    objc_msgSend_setHidingActionMask_(v42, v23, 19);
  }

  v45 = v18;
  v46 = -1;
  v47 = -1;
  v48 = malloc_type_calloc(v18, 8uLL, 0x100004000313F17uLL);
  v25 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v24, v18);
  v26 = v49;
  v49 = v25;

  if (v18)
  {
    v29 = v18;
    do
    {
      v30 = objc_msgSend_null(MEMORY[0x277CBEB68], v27, v28);
      objc_msgSend_addObject_(v49, v31, v30);

      --v29;
    }

    while (v29);
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 1;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v38[0] = v18;
  v38[1] = sub_275EF8BB4;
  v38[2] = &v39;
  objc_msgSend_updateGridWithSpec_(selfCopy, v27, v38);
  free(v48);
  v32 = v49;
  v49 = 0;

  v35 = objc_msgSend_model(v21, v33, v34);
  objc_msgSend_invalidateModel(v35, v36, v37);
}

- (void)invalidateForCalcEngine:(id)engine
{
  engineCopy = engine;
  if (self->_shouldResetFormulas)
  {
    v7[0] = 0;
    v7[1] = 0;
    v6 = v7;
    objc_msgSend_resetFormulasForCellRefs_calcEngine_(self, v4, &v6, engineCopy);
    sub_275F06F3C(&v6, v7[0]);
  }
}

- (id)hubFormulaPrecedentsWithCalcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  self->_shouldResetFormulas = 0;
  v155 = engineCopy;
  v9 = objc_msgSend_emptyReferenceSetWrapper(engineCopy, v7, v8);
  v12 = objc_msgSend_rawFormulaStorage(self, v10, v11);
  v157 = objc_msgSend_formulaTypeEnumerator(v12, v13, v14);

  v17 = 0;
  selfCopy = self;
  do
  {
    FormulaType = objc_msgSend_nextFormulaType(v157, v15, v16);
    v21 = objc_msgSend_rawFormulaStorage(self, v19, v20);
    v23 = objc_msgSend_formulaListForType_(v21, v22, FormulaType);

    v26 = objc_msgSend_objectEnumerator(v23, v24, v25);

    v30 = objc_msgSend_nextObject(v26, v27, v28);
    if (v30)
    {
      v31 = 0;
      do
      {
        LOWORD(v159.range._topLeft.row) = v31;
        v159.range._topLeft.column = FormulaType;
        *&v159.range._bottomRight.row = *d;
        objc_msgSend_insertCellRef_(v9, v29, &v159);
        v34 = objc_msgSend_nextObject(v26, v32, v33);

        ++v31;
        v30 = v34;
      }

      while (v34);
    }

    v17 = v26;
    self = selfCopy;
  }

  while (FormulaType != 0x7FFFFFFFFFFFFFFFLL);
  v35 = objc_msgSend_referencedEntities(selfCopy, v15, v16);
  v156 = objc_msgSend_objectEnumerator(v35, v36, v37);

  tableUidToHeaderRowRangesInPrecedents = selfCopy->_tableUidToHeaderRowRangesInPrecedents;
  selfCopy->_tableUidToHeaderRowRangesInPrecedents = 0;

  v43 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v39, v40);
  for (i = v43; ; v43 = i)
  {
    v45 = objc_msgSend_nextObject(v156, v41, v42);
    v48 = v45;
    if (!v45)
    {
      break;
    }

    v49 = MEMORY[0x277D80D40];
    v50 = objc_msgSend_ownerUID(v45, v46, v47);
    v52 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(v49, v51, *v50, v50[1], v155);
    v55 = v52;
    if (v52)
    {
      if (objc_msgSend_isAPivotTable(v52, v53, v54))
      {
        v58 = MEMORY[0x277D80C88];
        v59 = objc_msgSend_ownerUID(v48, v56, v57);
        objc_msgSend_summaryModelIsCleanPrecedentForTableUID_(v58, v60, v59);
        objc_msgSend_insertCellRef_(v9, v61, &v159);
        v62 = MEMORY[0x277D80C88];
        v65 = objc_msgSend_ownerUID(v48, v63, v64);
        objc_msgSend_pivotRulesChangedPrecedentForTableUID_(v62, v66, v65);
        objc_msgSend_insertCellRef_(v9, v67, &v159);
        v68 = MEMORY[0x277D80C88];
        v71 = objc_msgSend_ownerUID(v48, v69, v70);
        objc_msgSend_pivotSortChangedPrecedentForTableUID_(v68, v72, v71);
        objc_msgSend_insertCellRef_(v9, v73, &v159);
      }

      else
      {
        v76 = objc_msgSend_groupBy(v55, v56, v57);
        if (v76)
        {
          v77 = objc_alloc(MEMORY[0x277D80C30]);
          v159.range._topLeft = objc_msgSend_groupByUid(v76, v78, v79);
          v159.range._bottomRight = v80;
          v161 = objc_msgSend_topLevelGroupUid(v76, v80, v81);
          v162 = v82;
          v160[0] = 0;
          v160[1] = 0;
          v83 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v77, v82, &v159, &v161, v160, 10, 0);
          v86 = objc_msgSend_referenceSet(v9, v84, v85);
          TSCEReferenceSet::insertRef(v86, v83);
          v89 = objc_msgSend_referenceSet(v9, v87, v88);
          v92 = objc_msgSend_groupingColumnsFormulaCoord(v76, v90, v91);
          v95 = objc_msgSend_groupByUid(v76, v93, v94);
          v159.range._topLeft = v92;
          v159.range._bottomRight = v95;
          v159._tableUID._lower = v96;
          TSCEReferenceSet::insertRef(v89, &v159);
          if (objc_msgSend_isCategorized(v76, v97, v98) && objc_msgSend_numberOfHeaderRows(v55, v99, v100))
          {
            objc_msgSend_p_headerRowRangeRefForTableInfo_(selfCopy, v99, v55);
            if (TSCERangeRef::isValid(&v159))
            {
              objc_msgSend_insertRangeRef_(v9, v99, &v159);
              v101 = TSCERangeRef::wrapped(&v159);
              v104 = objc_msgSend_nsTableUID(v55, v102, v103);
              objc_msgSend_setObject_forKey_(i, v105, v101, v104);
            }
          }

          objc_msgSend_columnOrderChangedPrecedent(v76, v99, v100);
          objc_msgSend_insertCellRef_(v9, v106, &v159);
          objc_msgSend_rowOrderChangedPrecedent(v76, v107, v108);
          objc_msgSend_insertCellRef_(v9, v109, &v159);
        }

        else
        {
          v110 = MEMORY[0x277D81150];
          v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "[TNChartMediator hubFormulaPrecedentsWithCalcEngine:hostOwnerUID:]");
          v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v110, v114, v111, v113, 2601, 0, "invalid nil value for '%{public}s'", "groupBy");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v115, v116);
        }
      }

      v117 = MEMORY[0x277D80C88];
      v161 = objc_msgSend_tableUID(v55, v118, v119);
      v162 = v120;
      objc_msgSend_filteringChangedPrecedentForTableUID_(v117, v120, &v161);
      objc_msgSend_insertCellRef_(v9, v121, &v159);
      v122 = MEMORY[0x277CBEA60];
      v123 = MEMORY[0x277D812A8];
      v125 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v124, 0);
      v127 = objc_msgSend_pairWithFirst_second_(v123, v126, v55, v125);
      v128 = MEMORY[0x277D812A8];
      v130 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v129, 1);
      v132 = objc_msgSend_pairWithFirst_second_(v128, v131, v55, v130);
      v134 = objc_msgSend_arrayWithObjects_(v122, v133, v127, v132, 0);
      v74 = objc_msgSend_objectEnumerator(v134, v135, v136);

      v141 = objc_msgSend_nextObject(v74, v137, v138);
      if (v141)
      {
        while (1)
        {
          v48 = objc_msgSend_first(v141, v139, v140);

          v144 = objc_msgSend_second(v141, v142, v143);
          v147 = objc_msgSend_BOOLValue(v144, v145, v146);

          if (v147)
          {
            if (!v48)
            {
              goto LABEL_26;
            }

            objc_msgSend_referenceToHiddenStateFromRow_toRow_(v48, v148, 0, 999999);
          }

          else
          {
            if (!v48)
            {
LABEL_26:
              memset(&v159, 0, sizeof(v159));
              goto LABEL_27;
            }

            objc_msgSend_referenceToHiddenStateFromColumn_toColumn_(v48, v148, 0, 999);
          }

LABEL_27:
          objc_msgSend_insertRangeRef_(v9, v148, &v159);
          v151 = objc_msgSend_nextObject(v74, v149, v150);

          v141 = v151;
          v55 = v48;
          if (!v151)
          {
            goto LABEL_30;
          }
        }
      }

      v48 = v55;
    }

    else
    {
      v74 = 0;
    }

LABEL_30:
  }

  v152 = objc_msgSend_copy(v43, v46, v47);
  v153 = selfCopy->_tableUidToHeaderRowRangesInPrecedents;
  selfCopy->_tableUidToHeaderRowRangesInPrecedents = v152;

  return v9;
}

- (TSCERangeRef)p_headerRowRangeRefForTableInfo:(SEL)info
{
  v14 = a4;
  objc_msgSend_headerRowRange(v14, v5, v6);
  v7 = TSUCellRectToTSCERangeCoordinate();
  v9 = v8;
  v11 = objc_msgSend_tableUID(v14, v8, v10);
  retstr->range._topLeft = v7;
  retstr->range._bottomRight = v9;
  retstr->_tableUID._lower = v11;
  retstr->_tableUID._upper = v12;

  return result;
}

- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options
{
  engineCopy = engine;
  v14 = *&at & 0xFFFFFFFFFFFFLL;
  if ((*&at & 0xFFFF00000000) == 0xFF00000000)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    sub_275F070E8(&selfCopy->_formulasToRecalculate.__table_.__bucket_list_.__ptr_, &v14);
    objc_msgSend_clearCachesForCalculationEngine_(selfCopy->_formulaStorage, v10, engineCopy);
    cleanFormulaStorage = selfCopy->_cleanFormulaStorage;
    selfCopy->_cleanFormulaStorage = 0;

    selfCopy->_shouldResetFormulas = objc_msgSend_p_didHeaderRowRangesChangeForCalcEngine_(selfCopy, v12, engineCopy);
    objc_sync_exit(selfCopy);
  }

  return options;
}

- (TSCERecalculationState)multiEvaluateFormulasAt:(const void *)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options
{
  engineCopy = engine;
  v14 = 0xFF00000000;
  if (TSCECellCoordSet::containsCellCoord(at, &v14))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v14 = 0xFF00000000;
    sub_275F07588(&selfCopy->_formulasToRecalculate.__table_.__bucket_list_.__ptr_, &v14);
    objc_msgSend_clearCachesForCalculationEngine_(selfCopy->_formulaStorage, v10, engineCopy);
    cleanFormulaStorage = selfCopy->_cleanFormulaStorage;
    selfCopy->_cleanFormulaStorage = 0;

    selfCopy->_shouldResetFormulas = objc_msgSend_p_didHeaderRowRangesChangeForCalcEngine_(selfCopy, v12, engineCopy);
    objc_sync_exit(selfCopy);
  }

  return options;
}

- (BOOL)p_didHeaderRowRangesChangeForCalcEngine:(id)engine
{
  engineCopy = engine;
  v7 = objc_msgSend_referencedEntities(self, v5, v6);
  v10 = objc_msgSend_objectEnumerator(v7, v8, v9);

  v15 = objc_msgSend_nextObject(v10, v11, v12);
  if (v15)
  {
    do
    {
      v16 = MEMORY[0x277D80D40];
      v17 = objc_msgSend_ownerUID(v15, v13, v14);
      v19 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(v16, v18, *v17, v17[1], engineCopy);
      v22 = v19;
      if (v19)
      {
        tableUidToHeaderRowRangesInPrecedents = self->_tableUidToHeaderRowRangesInPrecedents;
        v24 = objc_msgSend_nsTableUID(v19, v20, v21);
        v26 = objc_msgSend_objectForKey_(tableUidToHeaderRowRangesInPrecedents, v25, v24);

        if (v26)
        {
          objc_msgSend_rangeRef(v26, v27, v28);
          objc_msgSend_p_headerRowRangeRefForTableInfo_(self, v29, v22);
          if (v34 != v32 || ((v32 ^ v34) & 0xFFFF00000000) != 0 || v35 != v33 || ((v35 ^ v33) & 0xFFFF00000000) != 0)
          {

            LOBYTE(v15) = 1;
            break;
          }
        }
      }

      v30 = objc_msgSend_nextObject(v10, v20, v21);

      v15 = v30;
    }

    while (v30);
  }

  return v15;
}

- (void)writeResultsForCalcEngine:(id)engine
{
  engineCopy = engine;
  selfCopy = self;
  if (!selfCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TNChartMediator writeResultsForCalcEngine:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 2771, 0, "Something really weird is going on.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  cleanFormulaStorage = selfCopy->_cleanFormulaStorage;
  selfCopy->_cleanFormulaStorage = 0;

  for (i = selfCopy->_formulasToRecalculate.__table_.__first_node_.__next_; i; i = *i)
  {
    if (*(i + 10) << 32 == 0xFF00000000)
    {
      if (objc_msgSend_isPhantom(selfCopy, v14, v15))
      {
        v19 = objc_msgSend_chartInfo(selfCopy, v17, v18);
        v22 = objc_msgSend_model(v19, v20, v21);

        objc_msgSend_forceLoadDefaultData(v22, v23, v24);
      }

      else
      {
        v22 = objc_msgSend_formulaStorage(selfCopy, v17, v18);
        if (objc_msgSend_direction(v22, v25, v26))
        {
          objc_msgSend_p_copyValuesIntoToChartModel_formulaMap_(selfCopy, v27, engineCopy, v22);
        }
      }
    }
  }

  objc_msgSend_clearFormulasToRecalculate(selfCopy, v14, v15);
}

- (void)p_registerHubFormulaWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v6 = objc_msgSend_hubFormulaPrecedentsWithCalcEngine_hostOwnerUID_(self, v5, engineCopy, &self->_entityUID);
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions();
  v10[0] = 0xFF00000000;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions();
  objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(engineCopy, v7, v10, &self->_entityUID, v6, v8);
}

- (void)p_registerAreaFormulaForMap:(id)map withCalcEngine:(id)engine
{
  mapCopy = map;
  engineCopy = engine;
  v27[0] = 0;
  p_entityUID = &self->_entityUID;
  objc_msgSend_removeFormulaAt_inOwner_(engineCopy, v9, v27, &self->_entityUID);
  v11 = objc_msgSend_areaFormulaWithCalcEngine_inOwner_(mapCopy, v10, engineCopy, self->_entityUID._lower, self->_entityUID._upper);
  v16 = objc_msgSend_formulaObject(v11, v12, v13);
  if (v16)
  {
    v17 = objc_msgSend_emptyReferenceSetWrapper(engineCopy, v14, v15);
    if (v17)
    {
      TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions();
      v20 = objc_msgSend_referenceSet(v17, v18, v19);
      v25 = 0;
      v26 = *p_entityUID;
      objc_msgSend_getPrecedents_calcEngine_hostCell_returnUidReferences_(v16, v21, v20, engineCopy, &v25, 1);
      v25 = 0;
      TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions();
      objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(engineCopy, v22, &v25, p_entityUID, v17, v23);
    }
  }
}

- (void)p_registerFormulaeWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v40 = self->_formulaStorage;
  v41 = objc_msgSend_formulaTypeEnumerator(v40, v5, v6);
  while (1)
  {
    FormulaType = objc_msgSend_nextFormulaType(v41, v7, v8);
    if (FormulaType == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v13 = objc_msgSend_formulaListForType_(v40, v9, FormulaType);
    if (!v13)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TNChartMediator p_registerFormulaeWithCalcEngine:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 2840, 0, "invalid nil value for '%{public}s'", "formulaArray");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    }

    v22 = objc_msgSend_count(v13, v11, v12);
    if (v22)
    {
      v23 = 0;
      v24 = FormulaType << 32;
      do
      {
        v25 = objc_msgSend_objectAtIndex_(v13, v21, v23);
        v30 = objc_msgSend_formulaObject(v25, v26, v27);
        if (v30)
        {
          v31 = objc_msgSend_emptyReferenceSetWrapper(engineCopy, v28, v29);
          if (v31)
          {
            TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions();
            v34 = objc_msgSend_referenceSet(v31, v32, v33);
            v44 = 0;
            entityUID = self->_entityUID;
            objc_msgSend_getPrecedents_calcEngine_hostCell_returnUidReferences_(v30, v35, v34, engineCopy, &v44, 1);
            v44 = v23 | v24;
            TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions();
            objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(engineCopy, v36, &v44, &self->_entityUID, v31, v42);
          }
        }

        ++v23;
      }

      while (v22 != v23);
    }
  }

  cleanFormulaStorage = self->_cleanFormulaStorage;
  self->_cleanFormulaStorage = 0;

  objc_msgSend_p_registerAreaFormulaForMap_withCalcEngine_(self, v38, self->_formulaStorage, engineCopy);
  objc_msgSend_p_registerHubFormulaWithCalcEngine_(self, v39, engineCopy);
}

- (void)updateForTableIDHistoryWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v6 = objc_msgSend_tableUIDHistory(engineCopy, v4, v5);
  v9 = v6;
  if (v6 && *(objc_msgSend_tableUIDMap(v6, v7, v8) + 24))
  {
    objc_msgSend_willModify(self, v10, v11);
    selfCopy = self;
    v14 = objc_msgSend_mutableCopy(self->_formulaStorage, v12, v13);
    v54 = objc_msgSend_formulaTypeEnumerator(v14, v15, v16);
    v56 = v14;
    v57[0] = 0;
    v57[1] = objc_msgSend_entityUID(self, v17, v18);
    v57[2] = v19;
    MEMORY[0x277C90920](v58, engineCopy, v57);
    while (1)
    {
      FormulaType = objc_msgSend_nextFormulaType(v54, v20, v21);
      if (FormulaType == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v26 = objc_msgSend_mutableFormulaListForType_(v14, v22, FormulaType);
      v55 = FormulaType;
      if (!v26)
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TNChartMediator updateForTableIDHistoryWithCalcEngine:]");
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 2884, 0, "invalid nil value for '%{public}s'", "formulaArray");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
      }

      v35 = objc_msgSend_count(v26, v24, v25);
      if (v35)
      {
        v36 = 0;
        v37 = 0;
        do
        {
          v38 = objc_msgSend_objectAtIndex_(v26, v34, v36);
          v41 = objc_msgSend_formulaObject(v38, v39, v40);
          v44 = objc_msgSend_tableUIDMap(v9, v42, v43);
          v46 = objc_msgSend_copyByRemappingOwnerUIDs_rewriteContext_outBadRefFound_(v41, v45, v44, v58, 0);
          if (v46 == v41)
          {
            v49 = v38;
          }

          else
          {
            v47 = [TNChartFormulaWrapper alloc];
            v49 = objc_msgSend_initWithFormulaObject_(v47, v48, v46);

            objc_msgSend_replaceObjectAtIndex_withObject_(v26, v50, v36, v49);
            v37 = 1;
          }

          ++v36;
        }

        while (v35 != v36);
        if (v37)
        {
          objc_msgSend_setFormulaList_forKey_(v56, v34, v26, v55);
        }
      }

      v14 = v56;
    }

    formulaStorage = selfCopy->_formulaStorage;
    selfCopy->_formulaStorage = v14;
  }
}

- (void)p_detectAndRepairInsertedCategoryConditionFromPreviousState:(id)state andEditingState:(id)editingState rewriteSpec:(id)spec
{
  v109 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  editingStateCopy = editingState;
  specCopy = spec;
  v13 = objc_msgSend_rowColumnInfo(specCopy, v11, v12);
  if (objc_msgSend_rewriteType(specCopy, v14, v15) != 3 || objc_msgSend_scheme(stateCopy, v16, v17))
  {
    goto LABEL_18;
  }

  if (!v13)
  {
    v22 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
LABEL_16:
    if (!v22)
    {
      goto LABEL_18;
    }

LABEL_17:
    v106 = v22;
    operator delete(v22);
    goto LABEL_18;
  }

  objc_msgSend_coordRangesForInsertRemove(v13, v18, v19);
  v22 = v105;
  if (v106 == v105)
  {
    goto LABEL_16;
  }

  v23 = objc_msgSend_direction(editingStateCopy, v20, v21);
  isColumns = objc_msgSend_isColumns(v13, v24, v25);
  if (v23 && (v23 != 1) | isColumns & 1 && ((v23 == 2) & isColumns) == 0 && objc_msgSend_p_tabularCategoryLabelsAppearRegularInMap_(self, v27, stateCopy) && (objc_msgSend_p_tabularCategoryLabelsAppearRegularInMap_(self, v28, editingStateCopy) & 1) == 0)
  {
    v31 = objc_msgSend_categoryLabelFormulaType(stateCopy, v29, v30);
    v90 = objc_msgSend_formulaListForType_(stateCopy, v32, v31);
    if (!objc_msgSend_count(v90, v33, v34))
    {
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TNChartMediator p_detectAndRepairInsertedCategoryConditionFromPreviousState:andEditingState:rewriteSpec:]");
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v41, v38, v40, 2957, 0, "no labels to fix up");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
    }

    if (objc_msgSend_count(v90, v35, v36))
    {
      v81 = objc_msgSend_calculationEngine(self, v44, v45);
      v47 = objc_msgSend_objectAtIndex_(v90, v46, 0);
      v49 = v47;
      if (v47)
      {
        objc_msgSend_rangeCircumscribingPrecedentsWithCalcEngine_inOwner_(v47, v48, v81, &self->_entityUID);
      }

      else
      {
        memset(&v104, 0, sizeof(v104));
      }

      if (TSCERangeRef::isValid(&v104))
      {
        v52 = objc_msgSend_tableUID(specCopy, v50, v51);
        if (v104._tableUID._lower == v52 && v104._tableUID._upper == v53)
        {
          v80 = v49;
          column = v104.range._topLeft.column;
          row = v104.range._topLeft.row;
          bottomRight = v104.range._bottomRight;
          topLeft = v104.range._topLeft;
          *v95 = v104._tableUID;
          if (specCopy)
          {
            objc_msgSend_updatedCellRefForOriginalCellRef_(specCopy, v53, &topLeft);
            topLeft = bottomRight;
            *v95 = v104._tableUID;
            objc_msgSend_updatedCellRefForOriginalCellRef_(specCopy, v55, &topLeft);
            v56 = v101;
            v57 = v98;
          }

          else
          {
            v57 = 0;
            v56 = 0;
            v101 = 0;
            v102 = 0;
            v103 = 0;
            v99 = 0;
            v100 = 0;
            v98 = 0;
          }

          v96 = v57;
          v97 = v56;
          v58 = __C();
          v84 = v59;
          v85 = v58;
          tableUID = v104._tableUID;
          v61 = v105;
          v89 = v106;
          if (v105 != v106)
          {
            v82 = HIDWORD(v58);
            v83 = HIWORD(v58);
            v88 = WORD2(v58) | (HIWORD(v58) << 16);
            LODWORD(v79) = v58 - 1;
            HIDWORD(v79) = v59 - 1;
            v91 = v59 >> 32;
            v92 = v59 >> 48;
            do
            {
              if (v23 == 2)
              {
                if (v61[2] != row || column < *(v61 + 2) || column > *(v61 + 6))
                {
                  goto LABEL_50;
                }

                v62 = objc_msgSend_categoryLabelFormulaType(editingStateCopy, v59, v60);
                v93 = objc_msgSend_mutableFormulaListForType_(editingStateCopy, v63, v62);
                v65 = v61[2] + 1 - *v61;
                if (v65)
                {
                  if (v65 <= 1)
                  {
                    v66 = 1;
                  }

                  else
                  {
                    v66 = v65;
                  }

                  v68 = v79;
                  v67 = HIDWORD(v79);
                  do
                  {
                    *&v95[8] = tableUID;
                    topLeft = __PAIR64__(v88, v68);
                    *v95 = v67;
                    *&v95[4] = v91;
                    *&v95[6] = v92;
                    v69 = objc_msgSend_chartFormulaForRangeReference_(TNChartFormulaWrapper, v64, &topLeft, v79);
                    objc_msgSend_insertObject_atIndex_(v93, v70, v69, 0);

                    --v67;
                    --v68;
                    --v66;
                  }

                  while (v66);
                }
              }

              else
              {
                if (v23 != 1 || *(v61 + 6) != column || row < *v61 || row > v61[2])
                {
                  goto LABEL_50;
                }

                v71 = objc_msgSend_categoryLabelFormulaType(editingStateCopy, v59, v60);
                v93 = objc_msgSend_mutableFormulaListForType_(editingStateCopy, v72, v71);
                v74 = *(v61 + 6) + 1 - *(v61 + 2);
                if (v74)
                {
                  if (v74 <= 1)
                  {
                    v75 = 1;
                  }

                  else
                  {
                    v75 = *(v61 + 6) + 1 - *(v61 + 2);
                  }

                  v76 = 1;
                  do
                  {
                    *&v95[8] = tableUID;
                    topLeft.row = v85;
                    topLeft.column = v82 - v76;
                    *&topLeft._preserveRow = v83;
                    *v95 = v84;
                    *&v95[4] = v91 - v76;
                    *&v95[6] = v92;
                    v77 = objc_msgSend_chartFormulaForRangeReference_(TNChartFormulaWrapper, v73, &topLeft, v79);
                    objc_msgSend_insertObject_atIndex_(v93, v78, v77, 0);

                    ++v76;
                    --v75;
                  }

                  while (v75);
                }
              }

LABEL_50:
              v61 += 4;
            }

            while (v61 != v89);
          }

          v49 = v80;
        }
      }
    }
  }

  v22 = v105;
  if (v105)
  {
    goto LABEL_17;
  }

LABEL_18:
}

- (void)p_detectAndRepairInsertedSeriesConditionFromPreviousState:(id)state andEditingState:(id)editingState rewriteSpec:(id)spec
{
  stateCopy = state;
  editingStateCopy = editingState;
  specCopy = spec;
  v12 = objc_msgSend_rowColumnInfo(specCopy, v10, v11);
  if (objc_msgSend_rewriteType(specCopy, v13, v14) != 3)
  {
    goto LABEL_12;
  }

  if (!v12)
  {
    v19 = 0;
    v155 = 0;
    v156 = 0;
    v157 = 0;
LABEL_10:
    if (!v19)
    {
      goto LABEL_12;
    }

LABEL_11:
    v156 = v19;
    operator delete(v19);
    goto LABEL_12;
  }

  objc_msgSend_coordRangesForInsertRemove(v12, v15, v16);
  v19 = v155;
  if (v156 == v155)
  {
    goto LABEL_10;
  }

  v127 = v12;
  v20 = objc_msgSend_direction(stateCopy, v17, v18);
  v23 = objc_msgSend_calculationEngine(self, v21, v22);
  p_entityUID = &self->_entityUID;
  v25 = objc_msgSend_dataFormulaAreRegularForSeriesInsertionWithCalcEngine_inOwner_(stateCopy, v24, v23, self->_entityUID._lower, self->_entityUID._upper);

  if ((v25 & 1) != 0 && (((v20 == 2) ^ objc_msgSend_isColumns(v127, v26, v27)) & 1) == 0)
  {
    v30 = objc_msgSend_tableUID(specCopy, v28, v29);
    if (v30 | v31)
    {
      *&v140 = v31;
      *(&v140 + 1) = v30;
      v33 = MEMORY[0x277D80D40];
      v34 = objc_msgSend_calculationEngine(self, v31, v32);
      v122 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(v33, v35, *(&v140 + 1), v140, v34);

      if (v20 == 2)
      {
        v38 = objc_msgSend_numberOfHeaderColumns(v122, v36, v37);
        v41 = objc_msgSend_numberOfColumns(v122, v39, v40);
        v42 = 0;
      }

      else
      {
        v38 = objc_msgSend_numberOfHeaderRows(v122, v36, v37);
        v42 = objc_msgSend_numberOfFooterRows(v122, v43, v44);
        v41 = objc_msgSend_numberOfRows(v122, v45, v46);
      }

      v150[0] = MEMORY[0x277D85DD0];
      v150[1] = 3221225472;
      v150[2] = sub_275EFD398;
      v150[3] = &unk_27A6A2918;
      v154 = v20 == 2;
      v151 = v38;
      v152 = v41;
      v153 = v42;
      v136 = MEMORY[0x277C91D00](v150);
      v138 = v155;
      v128 = v156;
      if (v155 != v156)
      {
        v124 = editingStateCopy;
        v125 = stateCopy;
        v123 = specCopy;
        while (1)
        {
          v132 = objc_msgSend_calculationEngine(self, v47, v48, v122);
          v51 = objc_msgSend_seriesLabelFormulaType(stateCopy, v49, v50);
          v53 = objc_msgSend_formulaListForType_(stateCopy, v52, 1);
          v137 = objc_msgSend_formulaListForType_(stateCopy, v54, v51);
          v57 = objc_msgSend_count(v53, v55, v56);
          if (v57 > objc_msgSend_count(v137, v58, v59))
          {
            v62 = MEMORY[0x277D81150];
            v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "[TNChartMediator p_detectAndRepairInsertedSeriesConditionFromPreviousState:andEditingState:rewriteSpec:]");
            v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v66, v63, v65, 3109, 0, "we expect there to be at least as many series label formula as there are series");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68);
          }

          v69 = objc_msgSend_count(v53, v60, v61);
          if (v69)
          {
            break;
          }

LABEL_60:

          v138 += 4;
          if (v138 == v128)
          {
            goto LABEL_61;
          }
        }

        v71 = v69 - 1;
        while (1)
        {
          v72 = objc_msgSend_objectAtIndex_(v53, v70, v71);
          v76 = objc_msgSend_calculationEngine(self, v73, v74);
          if (v72)
          {
            objc_msgSend_rangeCircumscribingPrecedentsWithCalcEngine_inOwner_(v72, v75, v76, p_entityUID);
          }

          else
          {
            v148 = 0u;
            v149 = 0u;
          }

          if (__PAIR128__(v149, *(&v149 + 1)) != v140)
          {
            goto LABEL_29;
          }

          if (v20 == 2)
          {
            v78 = WORD2(v148);
            v79 = *(v138 + 6);
          }

          else
          {
            if (v20 != 1)
            {
              goto LABEL_29;
            }

            v78 = v148;
            v79 = v138[2];
          }

          if (v78 == v79)
          {
            v133 = objc_msgSend_mutableFormulaListForType_(editingStateCopy, v77, 1);
            v129 = objc_msgSend_mutableFormulaListForType_(editingStateCopy, v80, v51);
            if (v20 == 2)
            {
              v83 = *(v138 + 6);
              v84 = *(v138 + 2);
            }

            else
            {
              v83 = v138[2];
              v84 = *v138;
            }

            v85 = v83 - v84;
            selfCopy2 = self;
            v87 = objc_msgSend_count(v133, v81, v82);
            if (v87 != objc_msgSend_count(v53, v88, v89))
            {
              v91 = MEMORY[0x277D81150];
              v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "[TNChartMediator p_detectAndRepairInsertedSeriesConditionFromPreviousState:andEditingState:rewriteSpec:]");
              v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v95, v92, v94, 3132, 0, "Expect the mutable version to simply have re-written copies of the old state, not to have actually changed");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v96, v97);
              selfCopy2 = self;
            }

            v98 = objc_msgSend_objectAtIndex_(v133, v90, v71);
            v126 = v98;
            v102 = objc_msgSend_calculationEngine(selfCopy2, v99, v100);
            if (v98)
            {
              objc_msgSend_rangeCircumscribingPrecedentsWithCalcEngine_inOwner_(v98, v101, v102, p_entityUID);
            }

            else
            {
              memset(v147, 0, sizeof(v147));
            }

            v135 = (v136)[2](v136, v147);
            v134 = (v85 + 1);
            if (v85 != -1)
            {
              v103 = 0;
              v104 = 0;
              do
              {
                v145 = v148;
                v146 = v149;
                if (v20 == 2)
                {
                  WORD2(v145) -= v104;
                  WORD6(v145) -= v104;
                }

                else
                {
                  LODWORD(v145) = v103 + v145;
                  DWORD2(v145) += v103;
                }

                if (v135 == (v136)[2](v136, &v145))
                {
                  v143 = v145;
                  v144 = v146;
                  v106 = objc_msgSend_chartFormulaForRangeReference_(TNChartFormulaWrapper, v105, &v143);
                  if ((objc_msgSend_containsObject_(v133, v107, v106) & 1) == 0)
                  {
                    v131 = objc_msgSend_objectAtIndex_(v137, v108, v71);
                    v130 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v131, v109, v132, p_entityUID);
                    v112 = objc_msgSend_lastElement(v130, v110, v111);
                    if ((objc_msgSend_isCellReference(v112, v113, v114) & 1) != 0 || objc_msgSend_isRangeReference(v112, v115, v116))
                    {
                      if (v112)
                      {
                        objc_msgSend_rangeReference(v112, v115, v116);
                      }

                      else
                      {
                        v143 = 0u;
                        v144 = 0u;
                      }

                      if (v20 == 2)
                      {
                        WORD2(v143) -= v104;
                        WORD6(v143) -= v104;
                      }

                      else
                      {
                        LODWORD(v143) = v103 + v143;
                        DWORD2(v143) += v103;
                      }

                      v142[0] = v143;
                      v142[1] = v144;
                      v118 = objc_msgSend_chartFormulaForRangeReference_(TNChartFormulaWrapper, v115, v142);
                    }

                    else
                    {
                      v119 = objc_msgSend_p_untitledLabelWithIndex_(self, v115, v104 + 1);
                      v118 = objc_msgSend_chartFormulaForString_(TNChartFormulaWrapper, v120, v119);
                    }

                    objc_msgSend_insertObject_atIndex_(v133, v117, v106, v71);
                    objc_msgSend_insertObject_atIndex_(v129, v121, v118, v71);
                  }
                }

                else
                {
                  v106 = 0;
                }

                ++v104;
                --v103;
              }

              while (v134 != v104);
            }

            editingStateCopy = v124;
            stateCopy = v125;
            specCopy = v123;
            goto LABEL_60;
          }

LABEL_29:

          if (--v71 == -1)
          {
            goto LABEL_60;
          }
        }
      }

LABEL_61:
    }
  }

  v19 = v155;
  v12 = v127;
  if (v155)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (BOOL)repairBadRefsInFormulas:(id)formulas
{
  formulasCopy = formulas;
  v6 = objc_msgSend_calculationEngine(self, v4, v5);
  if (v6)
  {
    v41 = v6;
    if (self->_formulaStorage == self->_cleanFormulaStorage)
    {
      v12 = 0;
    }

    else
    {
      v9 = objc_msgSend_formulaTypeEnumerator(formulasCopy, v7, v8);
      v43 = 0;
      entityUID = self->_entityUID;
      MEMORY[0x277C90920](v45, v41, &v43);
      v12 = 0;
      while (1)
      {
        FormulaType = objc_msgSend_nextFormulaType(v9, v10, v11);
        if (FormulaType == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v17 = objc_msgSend_mutableFormulaListForType_(formulasCopy, v13, FormulaType);
        if (!v17)
        {
          v18 = MEMORY[0x277D81150];
          v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TNChartMediator repairBadRefsInFormulas:]");
          v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 3206, 0, "invalid nil value for '%{public}s'", "formulaArray");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
        }

        v26 = objc_msgSend_count(v17, v15, v16);
        if (v26)
        {
          for (i = 0; i != v26; ++i)
          {
            v28 = objc_msgSend_objectAtIndex_(v17, v25, i);
            v31 = objc_msgSend_formulaObject(v28, v29, v30);
            v34 = objc_msgSend_copyByRepairingBadReferences_clearUidHistory_(v31, v32, v45, 0);
            if (v34 != v31)
            {
              v35 = objc_msgSend_copyByConvertingColonTractToColon_breakUpIntoRefs_(v31, v33, v45, 0);
              v36 = [TNChartFormulaWrapper alloc];
              v38 = objc_msgSend_initWithFormulaObject_(v36, v37, v35);
              objc_msgSend_replaceObjectAtIndex_withObject_(v17, v39, i, v38);

              v12 = 1;
            }
          }
        }
      }
    }

    v6 = v41;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (void)p_removeDeletedFormulas:(id)formulas
{
  formulasCopy = formulas;
  selfCopy = self;
  v8 = objc_msgSend_calculationEngine(self, v4, v5);
  if (v8)
  {
    v63 = objc_msgSend_formulaTypeEnumerator(formulasCopy, v6, v7);
    while (1)
    {
      FormulaType = objc_msgSend_nextFormulaType(v63, v9, v10);
      if (FormulaType == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v15 = objc_msgSend_mutableFormulaListForType_(formulasCopy, v11, FormulaType);
      v66 = v15;
      if (!v15)
      {
        v16 = MEMORY[0x277D81150];
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TNChartMediator p_removeDeletedFormulas:]");
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 3235, 0, "invalid nil value for '%{public}s'", "formulaArray");

        v15 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
      }

      v23 = objc_msgSend_count(v15, v13, v14);
      v25 = v23;
      if (v23)
      {
        v26 = 0;
        v65 = v23;
        do
        {
          v27 = objc_msgSend_objectAtIndex_(v15, v24, v25 + ~v26);
          v28 = [TNChartFormulaArgumentCollection alloc];
          v31 = objc_msgSend_formulaObject(v27, v29, v30);
          v68 = v27;
          v33 = objc_msgSend_initWithFormula_inOwner_usingCalcEngine_storeBadRef_(v28, v32, v31, &selfCopy->_entityUID, v8, 1);

          v37 = objc_msgSend_count(v33, v34, v35);
          if (v37)
          {
            v38 = 1;
            do
            {
              v39 = objc_msgSend_elementAtIndex_(v33, v36, v38 - 1);
              if (objc_msgSend_isCategoryReference(v39, v40, v41))
              {
                v44 = objc_msgSend_categoryReference(v39, v42, v43);
                if (objc_msgSend_isBadRef(v44, v45, v46))
                {
                  isBadRef = 1;
                }

                else
                {
                  v53 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(MEMORY[0x277D80D18], v47, v44, v8);
                  if (objc_msgSend_isEnabled(v53, v54, v55) && (objc_msgSend_isValidCategoryRef_(v53, v56, v44) & 1) != 0)
                  {
                    isBadRef = 0;
                  }

                  else if (objc_msgSend_refersToPivotTable(v44, v56, v57))
                  {
                    v60 = objc_msgSend_pivotTableUid(v44, v58, v59);
                    isBadRef = objc_msgSend_ownerIsRegistered_(v8, v61, v60, v61) ^ 1;
                  }

                  else
                  {
                    isBadRef = 1;
                  }
                }
              }

              else if (objc_msgSend_isReference(v39, v42, v43))
              {
                v51 = objc_msgSend_tableUID_(v39, v49, v8);
                isBadRef = objc_msgSend_ownerIsRegistered_(v8, v52, v51, v52) ^ 1;
              }

              else
              {
                isBadRef = objc_msgSend_isBadRef(v39, v49, v50);
              }

              if (!isBadRef)
              {
                break;
              }
            }

            while (v38++ < v37);
            v25 = v65;
            v15 = v66;
            if (isBadRef)
            {
              objc_msgSend_removeObjectAtIndex_(v66, v36, v65 + ~v26);
            }
          }

          ++v26;
        }

        while (v26 != v25);
      }
    }
  }
}

- (void)prepareRewriteSpec:(id)spec withPreCellRefs:(const void *)refs calcEngine:(id)engine
{
  specCopy = spec;
  v7 = MEMORY[0x277D80C70];
  v10 = objc_msgSend_rewriteType(specCopy, v8, v9);
  if ((objc_msgSend_rewriteTypeUsesAmendRewriteSpec_(v7, v11, v10) & 1) == 0 && objc_msgSend_interestedInRewrite_(self, v12, specCopy))
  {
    v13 = specCopy;
    TSCECellRefSet::enumerateCellRefsUsingBlock();
  }
}

- (void)amendRewriteSpec:(id)spec withPostCellRefs:(const void *)refs calcEngine:(id)engine
{
  specCopy = spec;
  v7 = MEMORY[0x277D80C70];
  v10 = objc_msgSend_rewriteType(specCopy, v8, v9);
  if (objc_msgSend_rewriteTypeUsesAmendRewriteSpec_(v7, v11, v10) && objc_msgSend_interestedInRewrite_(self, v12, specCopy))
  {
    v13 = specCopy;
    TSCECellRefSet::enumerateCellRefsUsingBlock();
  }
}

- (void)resetFormulasForCellRefs:(const void *)refs calcEngine:(id)engine
{
  engineCopy = engine;
  objc_msgSend_p_unregisterAllFormulaeFromCalcEngine_(self, v5, engineCopy);
  objc_msgSend_p_registerFormulaeWithCalcEngine_(self, v6, engineCopy);
}

- (id)objectToArchiveInDependencyTracker
{
  v3 = objc_msgSend_chartInfo(self, a2, v2);
  v6 = objc_msgSend_drawableInfo(v3, v4, v5);

  return v6;
}

- (void)p_reregister:(BOOL)p_reregister withCalculationEngine:(id)engine
{
  engineCopy = engine;
  if (!engineCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TNChartMediator p_reregister:withCalculationEngine:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 3698, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  lower = self->_entityUID._lower;
  upper = self->_entityUID._upper;
  v16 = upper;
  v17 = lower;
  if (!p_reregister)
  {
    objc_msgSend_willModify(self, v6, lower, upper);
    v20 = objc_msgSend_chartInfo(self, v18, v19);
    objc_msgSend_willModify(v20, v21, v22);

    objc_msgSend_willModify(engineCopy, v23, v24);
    v17 = self->_entityUID._lower;
    v16 = self->_entityUID._upper;
  }

  LOWORD(v43) = 2;
  if (!objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(engineCopy, v6, v17, v16, self, 0, lower, upper, v43))
  {
    objc_msgSend_updateForTableIDHistoryWithCalcEngine_(self, v25, engineCopy);
    objc_msgSend_p_registerFormulaeWithCalcEngine_(self, v26, engineCopy);
    v29 = objc_msgSend_calculationEngine(self, v27, v28);
    v34 = objc_msgSend_accessController(v29, v30, v31);
    if (v34)
    {
      v35 = objc_msgSend_calculationEngine(self, v32, v33);
      v38 = objc_msgSend_accessController(v35, v36, v37);
      v41 = objc_msgSend_hasWrite(v38, v39, v40);

      if (!v41)
      {
LABEL_12:
        self->_isRegisteredWithCalcEngine = 1;
        goto LABEL_13;
      }
    }

    else
    {
    }

    if (self->_shouldFixAreaFormula)
    {
      objc_msgSend_p_registerAreaFormulaForMap_withCalcEngine_(self, v42, self->_formulaStorage, engineCopy);
      self->_shouldFixAreaFormula = 0;
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)registerWithCalcEngineForDocumentLoad:(id)load ownerKind:(unsigned __int16)kind
{
  loadCopy = load;
  objc_msgSend_p_reregister_withCalculationEngine_(self, v5, 1);
  if (!objc_msgSend_count(*(&self->super.super.isa + *MEMORY[0x277D80080]), v6, v7) || !objc_msgSend_count(*(&self->super.super.isa + *MEMORY[0x277D80078]), v8, v9))
  {
    v10 = objc_msgSend_entityUID(self, v8, v9);
    objc_msgSend_markOwnerAsDirty_(loadCopy, v11, v10, v11);
  }
}

- (void)unregisterFromCalcEngine:(id)engine
{
  engineCopy = engine;
  if (!engineCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TNChartMediator unregisterFromCalcEngine:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 3755, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  if (self->_isRegisteredWithCalcEngine)
  {
    objc_msgSend_willModify(self, v4, v5);
    v15 = objc_msgSend_chartInfo(self, v13, v14);
    objc_msgSend_willModify(v15, v16, v17);

    objc_msgSend_willModify(engineCopy, v18, v19);
    objc_msgSend_clearCachesForCalculationEngine_(self->_cleanFormulaStorage, v20, engineCopy);
    objc_msgSend_clearCachesForCalculationEngine_(self->_formulaStorage, v21, engineCopy);
    objc_msgSend_unregisterOwner_(engineCopy, v22, self->_entityUID._lower, self->_entityUID._upper);
  }

  self->_isRegisteredWithCalcEngine = 0;
}

- (void)copyValuesIntoChartModelOutOfBandUsingCalcEngine:(id)engine formulaMap:(id)map
{
  engineCopy = engine;
  mapCopy = map;
  if (!engineCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNChartMediator copyValuesIntoChartModelOutOfBandUsingCalcEngine:formulaMap:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 3779, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (!mapCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNChartMediator copyValuesIntoChartModelOutOfBandUsingCalcEngine:formulaMap:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 3780, 0, "invalid nil value for '%{public}s'", "formulaMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  if (objc_msgSend_ownerIsRegistered_(engineCopy, v7, self->_entityUID._lower, self->_entityUID._upper))
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TNChartMediator copyValuesIntoChartModelOutOfBandUsingCalcEngine:formulaMap:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    v28 = NSStringFromSelector(a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v27, 3789, 0, "Don't call %@ on objects that have been added to the document already.", v28);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
  }

  else if (engineCopy && mapCopy)
  {
    objc_msgSend_p_copyValuesIntoToChartModel_formulaMap_(self, v23, engineCopy, mapCopy);
  }
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  cleanFormulaStorage = self->_cleanFormulaStorage;
  self->_cleanFormulaStorage = 0;
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  contextCopy = context;
  v10 = objc_msgSend_calculationEngine(root, v6, v7);
  if (v10 && (objc_msgSend_wasMigratingStyles(contextCopy, v8, v9) & 1) == 0)
  {
    objc_msgSend_p_reregister_withCalculationEngine_(self, v11, 0, v10);
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v5 = objc_msgSend_calculationEngine(root, a2, root);
  if (v5)
  {
    objc_msgSend_unregisterFromCalcEngine_(self, v4, v5);
  }
}

- (id)commandSetSeriesName:(id)name forSeriesIndex:(unint64_t)index
{
  v6 = objc_msgSend_chartFormulaForString_(TNChartFormulaWrapper, a2, name);
  v8 = objc_msgSend_p_commandToSetSeriesNameFormulaWrapper_seriesIndex_(self, v7, v6, index);

  return v8;
}

- (unint64_t)labelIndexForSeriesNameSeriesIndex:(unint64_t)index
{
  v5 = objc_msgSend_chartInfo(self, a2, index);
  v8 = objc_msgSend_chartType(v5, v6, v7);

  v11 = objc_msgSend_valueAxisIDs(v8, v9, v10);
  if (objc_msgSend_count(v11, v12, v13))
  {
    v16 = objc_msgSend_objectAtIndexedSubscript_(v11, v14, 0);
    v19 = objc_msgSend_type(v16, v17, v18);
  }

  else
  {
    v19 = 2;
  }

  if (!objc_msgSend_p_isScatterOrBubble(self, v14, v15))
  {
LABEL_11:
    objc_msgSend_seriesDimensionWithSeriesIndex_axisType_(MEMORY[0x277D80058], v20, index, v19);
    goto LABEL_12;
  }

  if (objc_msgSend_scatterFormat(self, v20, v21) != 2)
  {
    v24 = objc_msgSend_formulaStorage(self, v22, v23);
    if (objc_msgSend_numberOfDataFormulas(v24, v25, v26) >= 2)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    goto LABEL_11;
  }

  objc_msgSend_seriesDimensionWithSeriesIndex_axisType_(MEMORY[0x277D80058], v22, index, 2);
  v27 = LABEL_12:;
  v30 = objc_msgSend_chartInfo(self, v28, v29);
  v33 = objc_msgSend_model(v30, v31, v32);
  v35 = objc_msgSend_gridIndexForSeriesDimension_(v33, v34, v27);

  v37 = objc_msgSend_p_remoteSeriesIndexForGridSeriesIndex_(self, v36, v35);
  return v37;
}

- (id)seriesNameFormulaForSeriesIndex:(unint64_t)index
{
  v5 = objc_msgSend_formulaStorage(self, a2, index);
  if (objc_msgSend_direction(v5, v6, v7) == 2)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v11 = objc_msgSend_formulaStorage(self, v9, v10);
  v13 = objc_msgSend_formulaListForType_(v11, v12, v8);

  v15 = objc_msgSend_labelIndexForSeriesNameSeriesIndex_(self, v14, index);
  if (v15 < objc_msgSend_count(v13, v16, v17) && (objc_msgSend_objectAtIndex_(v13, v18, v15), (v20 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v21 = objc_msgSend_p_tstFormulaFromForumulaWrapper_(self, v19, v20);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)commandToSetSeriesNameFormula:(id)formula seriesIndex:(unint64_t)index
{
  formulaCopy = formula;
  if (objc_msgSend_p_isValidFormulaEditForScheme_(self, v7, formulaCopy))
  {
    v9 = objc_msgSend_p_formulaWrapperFromTSTFormula_(self, v8, formulaCopy);
    v11 = objc_msgSend_p_commandToSetSeriesNameFormulaWrapper_seriesIndex_(self, v10, v9, index);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)commandSetCategoryName:(id)name forCategoryIndex:(unint64_t)index
{
  nameCopy = name;
  if (objc_msgSend_scheme(self->_formulaStorage, v7, v8) == 2)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TNChartMediator commandSetCategoryName:forCategoryIndex:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 3928, 0, "Trying to set formulas on a summary chart!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  else
  {
    v18 = objc_msgSend_formulaStorage(self, v9, v10);
    v21 = objc_msgSend_mutableCopy(v18, v19, v20);

    if (objc_msgSend_direction(v21, v22, v23) == 2)
    {
      v25 = 2;
      objc_msgSend_mutableFormulaListForType_(v21, v24, 2);
    }

    else
    {
      v25 = 3;
      objc_msgSend_mutableFormulaListForType_(v21, v24, 3);
    }
    v26 = ;
    if (objc_msgSend_count(v26, v27, v28) <= index)
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TNChartMediator commandSetCategoryName:forCategoryIndex:]");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 3940, 0, "Trying to replace chart category label (type: %lu) at index %lu but not present!", v25, index);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    }

    if (objc_msgSend_count(v26, v29, v30) > index)
    {
      v39 = objc_msgSend_chartFormulaForString_(TNChartFormulaWrapper, v38, nameCopy);
      objc_msgSend_replaceObjectAtIndex_withObject_(v26, v40, index, v39);
    }
  }

  return 0;
}

- (id)initFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v44.receiver = self;
  v44.super_class = TNChartMediator;
  v7 = [(TSCHChartMediator *)&v44 init];
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x277D80098];
    if (*(archive + 4))
    {
      v10 = *(archive + 4);
    }

    else
    {
      v10 = MEMORY[0x277D80098];
    }

    v43.receiver = v7;
    v43.super_class = TNChartMediator;
    [(TSCHChartMediator *)&v43 loadFromArchive:v10];
    v12 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v11, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
    v8->_entityUID._lower = TSKMakeUIDStructFromString();
    v8->_entityUID._upper = v13;

    if ((*(archive + 16) & 4) != 0)
    {
      v15 = *(archive + 5);
      v16 = [TNChartFormulaStorage alloc];
      v14 = objc_msgSend_initWithArchive_unarchiver_(v16, v17, v15, unarchiverCopy);
    }

    else
    {
      v14 = objc_alloc_init(TNChartFormulaStorage);
    }

    formulaStorage = v8->_formulaStorage;
    v8->_formulaStorage = v14;

    v21 = *(archive + 4);
    if (!v21)
    {
      v21 = v9;
    }

    v22 = *(v21 + 24);
    if (v22 < 0)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TNChartMediator initFromArchive:unarchiver:]");
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 4017, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
    }

    else if (v22 == 1 && **(v21 + 32) == -1)
    {
      v23 = objc_msgSend_formulaStorage(v8, v19, v20);
      v25 = objc_msgSend_formulaListForType_(v23, v24, 1);
      v28 = objc_msgSend_count(v25, v26, v27);

      v29 = *MEMORY[0x277D80080];
      v32 = objc_msgSend_count(*(&v8->super.super.isa + v29), v30, v31);
      if (v32 < v28)
      {
        v33 = MEMORY[0x277D80078];
        do
        {
          objc_msgSend_setInt_forKey_(*(&v8->super.super.isa + v29), v19, v32, v32);
          objc_msgSend_setInt_forKey_(*(&v8->super.super.isa + *v33), v34, v32, v32);
          ++v32;
        }

        while (v28 != v32);
      }
    }

    if (objc_msgSend_preUFFVersion(unarchiverCopy, v19, v20) <= 0x51FF6C32FLL)
    {
      v8->_shouldFixAreaFormula = 1;
    }
  }

  return v8;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 2u;
  v7 = *(archive + 4);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x277C91000](v8);
    *(archive + 4) = v7;
  }

  v19.receiver = self;
  v19.super_class = TNChartMediator;
  [(TSCHChartMediator *)&v19 saveToArchive:v7];
  if (self->_entityUID._lower || self->_entityUID._upper)
  {
    v11 = TSKUIDStruct::description(&self->_entityUID);
  }

  else
  {
    v11 = objc_msgSend_string(MEMORY[0x277CCACA8], v9, v10);
  }

  v14 = v11;
  v15 = objc_msgSend_tsp_protobufString(v11, v12, v13);
  sub_275EFF228(archive, v15);
  *(archive + 4) |= 4u;
  v17 = *(archive + 5);
  if (!v17)
  {
    v18 = *(archive + 1);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = sub_275EEEB54(v18);
    *(archive + 5) = v17;
  }

  objc_msgSend_saveToArchive_archiver_(self->_formulaStorage, v16, v17, archiverCopy);
}

- (unint64_t)p_formulaComponentsInMap:(id)map ofType:(unint64_t)type
{
  v5 = objc_msgSend_formulaListForType_(map, a2, type);
  v7 = objc_msgSend_p_formulaComponents_(self, v6, v5);

  return v7;
}

- (unint64_t)p_formulaComponents:(id)components
{
  v36 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  v7 = objc_msgSend_calculationEngine(self, v4, v5);
  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TNChartMediator p_formulaComponents:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 4058, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = componentsCopy;
  v16 = 0;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v31, v35, 16);
  if (v19)
  {
    v20 = *v32;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = objc_msgSend_formulaObject(*(*(&v31 + 1) + 8 * i), v17, v18);
        v24 = objc_msgSend_argumentCollectionFromFormula_inOwner_usingCalcEngine_(TNChartFormulaArgumentCollection, v23, v22, &self->_entityUID, v7);

        v27 = objc_msgSend_components(v24, v25, v26);
        v16 |= v27;
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v31, v35, 16);
    }

    while (v19);
  }

  return v16;
}

- (BOOL)p_labelsAreStaticInMap:(id)map ofType:(unint64_t)type
{
  v55 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v44 = mapCopy;
  v10 = objc_msgSend_calculationEngine(self, v7, v8);
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TNChartMediator p_labelsAreStaticInMap:ofType:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 4072, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  if ((type & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TNChartMediator p_labelsAreStaticInMap:ofType:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 4075, 0, "You asked if labels were static for a non-label formula type.  You're doing it wrong.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  objc_msgSend_formulaListForType_(mapCopy, v9, type);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v25 = v50 = 0u;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v49, v54, 16);
  if (v29)
  {
    v30 = *v50;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v50 != v30)
        {
          objc_enumerationMutation(v25);
        }

        v32 = objc_msgSend_formulaObject(*(*(&v49 + 1) + 8 * i), v27, v28);
        v34 = objc_msgSend_argumentCollectionFromFormula_inOwner_usingCalcEngine_(TNChartFormulaArgumentCollection, v33, v32, &self->_entityUID, v10);

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v35 = v34;
        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v45, v53, 16);
        if (v39)
        {
          v40 = *v46;
          while (2)
          {
            for (j = 0; j != v39; ++j)
            {
              if (*v46 != v40)
              {
                objc_enumerationMutation(v35);
              }

              if (objc_msgSend_isReference(*(*(&v45 + 1) + 8 * j), v37, v38))
              {

                mapCopy = v44;
                v42 = 0;
                goto LABEL_23;
              }
            }

            v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v45, v53, 16);
            if (v39)
            {
              continue;
            }

            break;
          }
        }

        mapCopy = v44;
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v49, v54, 16);
      v42 = 1;
    }

    while (v29);
  }

  else
  {
    v42 = 1;
  }

LABEL_23:

  return v42;
}

- (BOOL)p_tabularCategoryLabelsAppearRegularInMap:(id)map
{
  mapCopy = map;
  v9 = objc_msgSend_calculationEngine(self, v5, v6);
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNChartMediator p_tabularCategoryLabelsAppearRegularInMap:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 4095, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_categoryLabelFormulaType(mapCopy, v7, v8);
  v19 = objc_msgSend_formulaListForType_(mapCopy, v18, v17);
  v162 = v19;
  v166 = objc_msgSend_formulaListForType_(mapCopy, v20, 1);
  if (objc_msgSend_count(v19, v21, v22))
  {
    v165 = objc_msgSend_objectAtIndex_(v19, v23, 0);
  }

  else
  {
    v165 = 0;
  }

  if (objc_msgSend_count(v166, v23, v24))
  {
    v164 = objc_msgSend_objectAtIndex_(v166, v25, 0);
  }

  else
  {
    v164 = 0;
  }

  v27 = objc_msgSend_formulaObject(v165, v25, v26);
  v29 = objc_msgSend_argumentCollectionFromFormula_inOwner_usingCalcEngine_(TNChartFormulaArgumentCollection, v28, v27, &self->_entityUID, v9);

  v163 = v29;
  v32 = objc_msgSend_formulaObject(v164, v30, v31);
  v34 = objc_msgSend_argumentCollectionFromFormula_inOwner_usingCalcEngine_(TNChartFormulaArgumentCollection, v33, v32, &self->_entityUID, v9);

  if (objc_msgSend_count(v29, v35, v36))
  {
    v39 = objc_msgSend_firstElement(v29, v37, v38);
  }

  else
  {
    v39 = 0;
  }

  if (objc_msgSend_count(v34, v37, v38))
  {
    v42 = objc_msgSend_firstElement(v34, v40, v41);
  }

  else
  {
    v42 = 0;
  }

  v43 = objc_msgSend_direction(mapCopy, v40, v41);
  LOBYTE(v46) = 0;
  if (v39 && v42)
  {
    v47 = v43;
    if (objc_msgSend_isCategoryReference(v42, v44, v45))
    {
      isCategoryReference = objc_msgSend_isCategoryReference(v39, v48, v49);
      v53 = objc_msgSend_categoryReference(v39, v51, v52);
      v58 = objc_msgSend_categoryReference(v42, v54, v55);
      if (isCategoryReference)
      {
        v59 = objc_msgSend_groupByUid(v53, v56, v57);
        v61 = v60;
        v63 = objc_msgSend_groupByUid(v58, v60, v62);
        v64 = 0;
        if (v59 == v63 && v61 == v56)
        {
          v65 = objc_msgSend_absoluteGroupUid(v53, v56, v57);
          v67 = v66;
          v69 = objc_msgSend_absoluteGroupUid(v58, v66, v68);
          v64 = 0;
          if (v65 == v69 && v67 == v56)
          {
            v70 = objc_msgSend_groupLevel(v53, v56, v57);
            v64 = v70 == objc_msgSend_groupLevel(v58, v71, v72);
          }
        }
      }

      else
      {
        v64 = 0;
      }

      if (v47 == 2)
      {
        if (v64 && objc_msgSend_type(v53, v56, v57) == 7)
        {
          goto LABEL_50;
        }
      }

      else if (v47 == 1)
      {
        if (v64 && objc_msgSend_type(v53, v56, v57) == 12)
        {
          goto LABEL_50;
        }
      }

      else if (v64)
      {
LABEL_50:
        LOBYTE(v46) = objc_msgSend_type(v58, v56, v57) == 11;
        goto LABEL_51;
      }

      LOBYTE(v46) = 0;
LABEL_51:

LABEL_68:
      goto LABEL_69;
    }

    if (objc_msgSend_isTractReference(v42, v48, v49))
    {
      v53 = objc_msgSend_tractReference(v42, v73, v74);
      if (v47 == 2)
      {
        if (objc_msgSend_isTractReference(v39, v75, v76))
        {
          v79 = objc_msgSend_tractReference(v39, v101, v102);
          v105 = objc_msgSend_tableUID(v53, v103, v104);
          v107 = v106;
          LOBYTE(v46) = 0;
          if (v105 != objc_msgSend_tableUID(v79, v106, v108) || v107 != v109)
          {
            goto LABEL_57;
          }

          objc_msgSend_rows(v53, v109, v110);
          objc_msgSend_rows(v79, v111, v112);
          v90 = TSUIndexSet::operator==();
          goto LABEL_56;
        }

        if (objc_msgSend_isReference(v39, v101, v102))
        {
          objc_msgSend_rangeReference(v39, v121, v122);
          if (v173 == objc_msgSend_tableUID(v53, v123, v124) && *(&v173 + 1) == v125)
          {
            v127 = objc_msgSend_rows(v53, v125, v126);
            v169 = v172;
            v170 = DWORD2(v172);
            v120 = TSUIndexSet::containsIndexesInRange(v127, &v169);
            goto LABEL_66;
          }
        }
      }

      else if (v47 == 1)
      {
        if (objc_msgSend_isTractReference(v39, v75, v76))
        {
          v79 = objc_msgSend_tractReference(v39, v77, v78);
          v82 = objc_msgSend_tableUID(v53, v80, v81);
          v84 = v83;
          LOBYTE(v46) = 0;
          if (v82 != objc_msgSend_tableUID(v79, v83, v85) || v84 != v86)
          {
            goto LABEL_57;
          }

          objc_msgSend_columns(v53, v86, v87);
          objc_msgSend_columns(v79, v88, v89);
          v90 = TSUIndexSet::operator==();
LABEL_56:
          LOBYTE(v46) = v90;
LABEL_57:

          goto LABEL_68;
        }

        if (objc_msgSend_isReference(v39, v77, v78))
        {
          objc_msgSend_rangeReference(v39, v113, v114);
          if (v173 == objc_msgSend_tableUID(v53, v115, v116) && *(&v173 + 1) == v117)
          {
            v119 = objc_msgSend_columns(v53, v117, v118);
            v169 = WORD2(v172);
            v170 = WORD6(v172);
            v120 = TSUIndexSet::containsIndexesInRange(v119, &v169);
LABEL_66:
            LOBYTE(v46) = v120;
            goto LABEL_68;
          }
        }
      }

      LOBYTE(v46) = 0;
      goto LABEL_68;
    }

    if (!objc_msgSend_isReference(v39, v73, v74) || !objc_msgSend_isReference(v42, v91, v92) || (objc_msgSend_rangeReference(v39, v93, v94), objc_msgSend_rangeReference(v42, v95, v96), v173 != v171))
    {
      LOBYTE(v46) = 0;
      goto LABEL_69;
    }

    v99 = v169 & 0xFFFF00000000;
    v100 = v170 & 0xFFFF00000000;
    if (v169 != 0x7FFFFFFFLL || v99 == 0x7FFF00000000 || v100 == 0x7FFF00000000)
    {
      if (v169 == 0x7FFFFFFFLL || v99 != 0x7FFF00000000 || v100 != 0x7FFF00000000 || v170 == 0x7FFFFFFFLL)
      {
        goto LABEL_76;
      }
    }

    else if (v170 != 0x7FFFFFFF)
    {
LABEL_76:
      if (objc_msgSend_direction(mapCopy, v97, v98) == 2)
      {
        v137 = DWORD2(v172);
        v138 = v169;
      }

      else
      {
        v137 = WORD6(v172);
        v138 = WORD2(v169);
      }

      if (v137 == v138)
      {
        LOBYTE(v46) = 1;
      }

      else
      {
        v139 = objc_msgSend_categoryLabelFormulaType(mapCopy, v135, v136);
        objc_msgSend_expandSingleRangeForLabels_formulaType_(self, v140, &v172, v139);
        if (v168 == __p)
        {
          v143 = &v172;
        }

        else
        {
          v143 = __p;
        }

        v144 = v143[1];
        v172 = *v143;
        v173 = v144;
        if (objc_msgSend_direction(mapCopy, v141, v142) == 2)
        {
          v146 = v172;
          if (v172 != DWORD2(v172))
          {
            v147 = MEMORY[0x277D81150];
            v148 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v145, "[TNChartMediator p_tabularCategoryLabelsAppearRegularInMap:]");
            v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v149, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v147, v151, v148, v150, 4201, 0, "The logic to check if category labels appear regular relies on the label range having a single row. We could be getting false positives/negatives here.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v152, v153);
            v146 = DWORD2(v172);
          }

          v154 = v169;
        }

        else
        {
          v146 = WORD2(v172);
          if (WORD2(v172) != WORD6(v172))
          {
            v155 = MEMORY[0x277D81150];
            v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v145, "[TNChartMediator p_tabularCategoryLabelsAppearRegularInMap:]");
            v158 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v157, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v155, v159, v156, v158, 4204, 0, "The logic to check if category labels appear regular relies on the label range having a single column. We could be getting false positives/negatives here.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v160, v161);
            v146 = WORD6(v172);
          }

          v154 = WORD2(v169);
        }

        LOBYTE(v46) = v146 == v154;
        if (__p)
        {
          operator delete(__p);
        }
      }

      goto LABEL_69;
    }

    v129 = objc_msgSend_tableResolverForTableUID_(v9, v97, &v171);
    v46 = v129;
    if (!v129)
    {
      goto LABEL_69;
    }

    v132 = objc_msgSend_bodyRangeCoordinate(v129, v130, v131);
    v169 = sub_275EF48FC(v132, v133, v169, v170);
    v170 = v134;

    goto LABEL_76;
  }

LABEL_69:

  return v46;
}

- (id)p_newStaticNameForCategoryAvoidingExistingNames:(id)names runningCount:(unint64_t *)count
{
  namesCopy = names;
  if (!namesCopy)
  {
    namesCopy = objc_msgSend_set(MEMORY[0x277CBEB98], v6, v7);
    if (count)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 1;
    goto LABEL_6;
  }

  if (!count)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = *count;
LABEL_6:
  v10 = 0;
  do
  {
    v11 = objc_msgSend_p_untitledLabelWithIndex_(self, v6, v9);

    ++v9;
    v10 = v11;
  }

  while ((objc_msgSend_containsObject_(namesCopy, v12, v11) & 1) != 0);
  if (count)
  {
    *count = v9;
  }

  return v11;
}

- (void)p_repairMissingStaticCategoryLabelsInMap:(id)map
{
  mapCopy = map;
  if (!objc_msgSend_direction(mapCopy, v5, v6))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNChartMediator p_repairMissingStaticCategoryLabelsInMap:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 4233, 0, "How do I fix up category labels when I don't know what direction they are?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v46 = objc_msgSend_calculationEngine(self, v7, v8);
  v18 = objc_msgSend_categoryLabelFormulaType(mapCopy, v16, v17);
  v20 = objc_msgSend_mutableFormulaListForType_(mapCopy, v19, v18);
  shouldSkipHiddenData = objc_msgSend_shouldSkipHiddenData(self, v21, v22);
  v25 = objc_msgSend_numberOfGroupsWithCalcEngine_inEntity_shouldSkipHiddenData_(mapCopy, v24, v46, self->_entityUID._lower, self->_entityUID._upper, shouldSkipHiddenData);
  if (v25 <= objc_msgSend_maxGroupLabelFormulas(TNChartFormulaStorage, v26, v27))
  {
    v28 = objc_alloc(MEMORY[0x277CBEB58]);
    v32 = objc_msgSend_initWithCapacity_(v28, v29, v25);
    v48 = 1;
    while (objc_msgSend_count(v20, v30, v31) > v25)
    {
      objc_msgSend_removeLastObject(v20, v33, v34);
    }

    if (v25)
    {
      v35 = 0;
      v36 = v18 << 32;
      do
      {
        if (v35 < objc_msgSend_count(v20, v33, v34) && (objc_msgSend_objectAtIndex_(v20, v37, v35), (v39 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v47[0] = objc_msgSend_entityUID(self, v37, v38);
          v47[1] = v40;
          v41 = objc_msgSend_stringValueForFormulaWithCalcEngine_inOwner_(v39, v40, v46, v47);
          objc_msgSend_addObject_(v32, v42, v41);
        }

        else
        {
          v39 = objc_msgSend_p_newStaticNameForCategoryAvoidingExistingNames_runningCount_(self, v37, v32, &v48);
          v41 = objc_msgSend_chartFormulaForString_(TNChartFormulaWrapper, v43, v39);
          objc_msgSend_addObject_(v32, v44, v39);
          objc_msgSend_addFormula_withFormulaID_(mapCopy, v45, v41, v35 | v36);
        }

        ++v35;
      }

      while (v25 != v35);
    }
  }
}

- (void)p_disconnectLabelsInMap:(id)map ofType:(unint64_t)type
{
  v49 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 2 && (objc_msgSend_p_labelsAreStaticInMap_ofType_(self, v6, mapCopy, type) & 1) == 0)
  {
    v11 = objc_msgSend_calculationEngine(self, v8, v9);
    if (!v11)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TNChartMediator p_disconnectLabelsInMap:ofType:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 4277, 0, "invalid nil value for '%{public}s'", "calcEngine");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    v42 = objc_msgSend_mutableFormulaListForType_(mapCopy, v10, type);
    v21 = objc_msgSend_count(v42, v19, v20);
    v24 = objc_msgSend_array(MEMORY[0x277CBEB18], v22, v23);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = v42;
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v44, v48, 16);
    if (v29)
    {
      v30 = *v45;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v45 != v30)
          {
            objc_enumerationMutation(v25);
          }

          v32 = *(*(&v44 + 1) + 8 * i);
          v43[0] = objc_msgSend_entityUID(self, v27, v28);
          v43[1] = v33;
          v34 = objc_msgSend_stringValueForFormulaWithCalcEngine_inOwner_(v32, v33, v11, v43);
          objc_msgSend_addObject_(v24, v35, v34);
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v44, v48, 16);
      }

      while (v29);
    }

    if (v21)
    {
      for (j = 0; j != v21; ++j)
      {
        v38 = objc_msgSend_objectAtIndex_(v24, v36, j);
        v40 = objc_msgSend_chartFormulaForString_(TNChartFormulaWrapper, v39, v38);

        objc_msgSend_replaceObjectAtIndex_withObject_(v25, v41, j, v40);
      }
    }
  }
}

- (void)p_repairMissingTabularCategoryLabelsIrregularInMap:(id)map
{
  mapCopy = map;
  v93 = objc_msgSend_direction(mapCopy, v4, v5);
  if (!v93)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TNChartMediator p_repairMissingTabularCategoryLabelsIrregularInMap:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 4300, 0, "How do I repair missing category labels when I don't know what direction they are?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_calculationEngine(self, v6, v7);
  v95 = v15;
  v18 = objc_msgSend_categoryLabelFormulaType(mapCopy, v16, v17);
  v20 = objc_msgSend_mutableFormulaListForType_(mapCopy, v19, v18);
  v94 = v20;
  shouldSkipHiddenData = objc_msgSend_shouldSkipHiddenData(self, v21, v22);
  p_entityUID = &self->_entityUID;
  v96 = objc_msgSend_numberOfGroupsWithCalcEngine_inEntity_shouldSkipHiddenData_(mapCopy, v24, v15, self->_entityUID._lower, self->_entityUID._upper, shouldSkipHiddenData);
  if (v96 - 1 < objc_msgSend_maxGroupLabelFormulas(TNChartFormulaStorage, v25, v26))
  {
    v88 = v18;
    v90 = mapCopy;
    v27 = 0;
    v28 = 0;
    while (1)
    {
      v29 = objc_autoreleasePoolPush();
      if (v28 >= objc_msgSend_count(v20, v30, v31))
      {
        v33 = 0;
      }

      else
      {
        v33 = objc_msgSend_objectAtIndex_(v20, v32, v28);
      }

      v99 = v27;
      v34 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v33, v32, v15, p_entityUID, v88);
      v37 = v34;
      if (v34 && objc_msgSend_count(v34, v35, v36))
      {
        v38 = v33;
      }

      else
      {
        if (v27)
        {
          v40 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v27, v35, v15, p_entityUID);
          v43 = objc_msgSend_lastElement(v40, v41, v42);

          if ((objc_msgSend_isCellReference(v43, v44, v45) & 1) != 0 || objc_msgSend_isRangeReference(v43, v46, v47))
          {
            if (v43)
            {
              objc_msgSend_rangeReference(v43, v46, v47);
              v48 = v102;
              v97 = v103;
              v50 = v100;
              v49 = v101;
            }

            else
            {
              v49 = 0;
              v50 = 0;
              v97 = 0;
              v48 = 0;
            }

            v65 = HIDWORD(v50);
            if (v93 == 2)
            {
              LODWORD(v59) = v50 + 1;
              v67 = 0xFFFFFFFF00000000;
              v68 = 1;
              v69 = 0xFFFFFFFFLL;
            }

            else
            {
              LOWORD(v65) = WORD2(v50) + 1;
              v67 = 0xFFFF0000FFFFFFFFLL;
              v69 = 0xFFFF00000000;
              v68 = 0x100000000;
              LODWORD(v59) = v50;
            }

            v66 = (v49 + v68) & v69 | v49 & v67;
          }

          else
          {
            v50 = 0;
            v48 = 0;
            v97 = 0;
            LODWORD(v59) = 0x7FFFFFFF;
            LOWORD(v65) = 0x7FFF;
            v66 = 0x7FFF7FFFFFFFLL;
          }
        }

        else
        {
          v43 = objc_msgSend_mutableFormulaListForType_(v90, v35, 1);
          v92 = objc_msgSend_objectAtIndex_(v43, v51, 0);
          v53 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v92, v52, v15, p_entityUID);
          v56 = v53;
          if (v53 && objc_msgSend_count(v53, v54, v55))
          {
            v59 = objc_msgSend_firstElement(v56, v57, v58);
            if ((objc_msgSend_isCellReference(v59, v60, v61) & 1) != 0 || objc_msgSend_isRangeReference(v59, v62, v63))
            {
              if (v59)
              {
                objc_msgSend_rangeReference(v59, v62, v63);
                v91 = v102;
                v97 = v103;
                v50 = v100;
                v64 = HIWORD(v101) << 48;
              }

              else
              {
                v64 = 0;
                v50 = 0;
                v97 = 0;
                v91 = 0;
              }

              v70 = v59;
              v65 = HIDWORD(v50);
              if (v93 == 2)
              {
                LOWORD(v65) = WORD2(v50) - 1;
                v71 = v50 | ((WORD2(v50) - 1) << 32);
                LODWORD(v59) = v50;
              }

              else
              {
                v59 = (v50 - 1);
                v71 = v50 & 0xFFFF00000000 | v59;
              }

              v66 = v71 | v64;
            }

            else
            {
              v70 = v59;
              v50 = 0;
              v91 = 0;
              v97 = 0;
              LODWORD(v59) = 0x7FFFFFFF;
              LOWORD(v65) = 0x7FFF;
              v66 = 0x7FFF7FFFFFFFLL;
            }
          }

          else
          {
            v50 = 0;
            v91 = 0;
            v97 = 0;
            LODWORD(v59) = 0x7FFFFFFF;
            LOWORD(v65) = 0x7FFF;
            v66 = 0x7FFF7FFFFFFFLL;
          }

          v48 = v91;
        }

        if (!(v48 | v97))
        {
          v39 = 6;
LABEL_49:
          v20 = v94;
          v15 = v95;
LABEL_51:
          v27 = v99;
          goto LABEL_52;
        }

        v73 = v65;
        v39 = 6;
        if (v65 == 0x7FFF)
        {
          goto LABEL_49;
        }

        v20 = v94;
        if (v59 == 0x7FFFFFFF || v66 == 0x7FFFFFFF || (v66 & 0xFFFF00000000) == 0x7FFF00000000 || v73 > WORD2(v66) || v59 > v66)
        {
          v15 = v95;
          goto LABEL_51;
        }

        v74 = v50 & 0xFFFF000000000000 | v59 | (v73 << 32);
        v100 = v74;
        v101 = v66;
        v102 = v48;
        v103 = v97;
        v15 = v95;
        if (!objc_msgSend_p_tableHasBaseRange_withCalcEngine_(self, v72, &v100, v95))
        {
          objc_msgSend_p_disconnectLabelsInMap_ofType_(self, v75, v90, v88);
          v39 = 1;
          goto LABEL_51;
        }

        v100 = v74;
        v101 = v66;
        v102 = v48;
        v103 = v97;
        v38 = objc_msgSend_chartFormulaForRangeReference_(TNChartFormulaWrapper, v75, &v100);

        if (v28 >= objc_msgSend_count(v94, v76, v77))
        {
          if (v28 == objc_msgSend_count(v94, v78, v79))
          {
            objc_msgSend_addObject_(v94, v80, v38);
          }

          else
          {
            v81 = MEMORY[0x277D81150];
            v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "[TNChartMediator p_repairMissingTabularCategoryLabelsIrregularInMap:]");
            v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v85, v82, v84, 4379, 0, "Can't insert formula past end of label formula array.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87);
          }
        }

        else
        {
          objc_msgSend_replaceObjectAtIndex_withObject_(v94, v78, v28, v38);
        }
      }

      v33 = v38;

      v39 = 0;
      v27 = v33;
LABEL_52:

      objc_autoreleasePoolPop(v29);
      if ((v39 == 6 || !v39) && v96 != ++v28)
      {
        continue;
      }

      mapCopy = v90;
      break;
    }
  }
}

- (void)p_repairMissingTabularCategoryLabelsRegularInMap:(id)map
{
  v177 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  if (!mapCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TNChartMediator p_repairMissingTabularCategoryLabelsRegularInMap:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 4392, 0, "invalid nil value for '%{public}s'", "formulaStorage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v169 = objc_msgSend_calculationEngine(self, v4, v5);
  if (!v169)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TNChartMediator p_repairMissingTabularCategoryLabelsRegularInMap:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 4395, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  v22 = objc_msgSend_categoryLabelFormulaType(mapCopy, v13, v14);
  v162 = objc_msgSend_mutableFormulaListForType_(mapCopy, v23, v22);
  v164 = objc_msgSend_formulaListForType_(mapCopy, v24, 1);
  shouldSkipHiddenData = objc_msgSend_shouldSkipHiddenData(self, v25, v26);
  v161 = objc_msgSend_p_numberOfLabelsFromExpandedGeometricRangeRefsWithFormulas_formulaType_(self, v27, v162, v22);
  p_entityUID = &self->_entityUID;
  v159 = objc_msgSend_numberOfGroupsWithCalcEngine_inEntity_shouldSkipHiddenData_(mapCopy, v28, v169, self->_entityUID._lower, self->_entityUID._upper, shouldSkipHiddenData);
  if (v159 > objc_msgSend_maxGroupLabelFormulas(TNChartFormulaStorage, v29, v30))
  {
    goto LABEL_121;
  }

  v163 = objc_msgSend_count(v164, v31, v32);
  if (v161 >= v159)
  {
    goto LABEL_121;
  }

  v155 = v22;
  selfCopy = self;
  v35 = 0;
  v36 = 0;
  v168 = 0;
  v156 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
LABEL_8:
  if (!v168 || (v175.range._topLeft = objc_msgSend_entityUID(selfCopy, v33, v34), v175.range._bottomRight = v37, objc_msgSend_numberOfValuesWithCalcEngine_inChart_shouldSkipHiddenData_(v168, v37, v169, &v175, shouldSkipHiddenData) <= v35))
  {

    if (v36 >= v163)
    {
      v168 = 0;
    }

    else
    {
      do
      {
        v40 = objc_msgSend_objectAtIndex_(v164, v38, v36);
        v175.range._topLeft = objc_msgSend_entityUID(selfCopy, v41, v42);
        v175.range._bottomRight = v43;
        if (v35 >= objc_msgSend_numberOfValuesWithCalcEngine_inChart_shouldSkipHiddenData_(v40, v43, v169, &v175, shouldSkipHiddenData))
        {
          v168 = 0;
        }

        else
        {
          v168 = v40;
        }

        ++v36;
      }

      while (!v168 && v36 < v163);
    }
  }

  if (v35 >= objc_msgSend_count(v162, v38, v39))
  {
    v45 = 0;
  }

  else
  {
    v45 = objc_msgSend_objectAtIndex_(v162, v44, v35);
  }

  v158 = v45;
  v46 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v45, v44, v169, p_entityUID);
  v160 = objc_msgSend_lastElement(v46, v47, v48);

  if (v160 && objc_msgSend_isReference(v160, v49, v50))
  {
    objc_msgSend_rangeReference(v160, v49, v50);
    row = v175.range._bottomRight.row;
    column = v175.range._bottomRight.column;
    v53 = 1;
    lower = v175._tableUID._lower;
    upper = v175._tableUID._upper;
  }

  else
  {
    upper = 0;
    lower = 0;
    v53 = 0;
    column = 0x7FFF;
    row = 0x7FFFFFFF;
  }

  v175.range = v156;
  v175._tableUID._lower = 0;
  v175._tableUID._upper = 0;
  if (!v168)
  {
    goto LABEL_41;
  }

  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v56 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v168, v49, v169, p_entityUID);
  v151 = upper;
  v152 = lower;
  v149 = row;
  v150 = column;
  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v171, v176, 16);
  if (!v60)
  {
    goto LABEL_40;
  }

  v61 = 0;
  v62 = *v172;
  while (2)
  {
    v63 = 0;
    v64 = v61;
    do
    {
      if (*v172 != v62)
      {
        objc_enumerationMutation(v56);
      }

      v65 = *(*(&v171 + 1) + 8 * v63);
      v66 = objc_msgSend_direction(mapCopy, v58, v59) == 1;
      v68 = objc_msgSend_numberOfValuesWithCalcEngine_plotByRow_(v65, v67, v169, v66);
      v61 = v68 + v64;
      if (v35 + 1 <= v68 + v64)
      {
        isGeometricReference = objc_msgSend_isGeometricReference(v65, v58, v59);
        if ((objc_msgSend_isGeometricReference(v65, v70, v71) & 1) == 0)
        {
          v74 = MEMORY[0x277D81150];
          v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "[TNChartMediator p_repairMissingTabularCategoryLabelsRegularInMap:]");
          v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v78, v75, v77, 4453, 0, "Non-geometric reference using repair missing tabular category label method!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80);
        }

        if (!isGeometricReference)
        {
          goto LABEL_40;
        }

        if (v65)
        {
          objc_msgSend_rangeReference(v65, v72, v73);
        }

        else
        {
          memset(&v170, 0, sizeof(v170));
        }

        v175 = v170;
        bottomRight = v170.range._bottomRight;
        topLeft = v170.range._topLeft;
        if (TSCERangeRef::isSpanning(&v175))
        {
          v88 = objc_msgSend_tableResolverForTableUID_(v169, v86, &v175._tableUID);
          v90 = v88;
          if (v88)
          {
            topLeft = objc_msgSend_apparentRangeForRange_rangeContext_(v88, v89, &v175, 0);
            bottomRight = v91;
            v175.range._topLeft = topLeft;
            v175.range._bottomRight = v91;
          }
        }

        v92 = objc_msgSend_direction(mapCopy, v86, v87);
        v93 = v35 - v64;
        if (v92 == 1)
        {
          v175.range._topLeft.column += v93;
          v175.range._bottomRight.column = v175.range._topLeft.column;
        }

        else
        {
          v175.range._topLeft.row = (LOWORD(v175.range._topLeft.row) + v93);
          v175.range._bottomRight.row = v175.range._topLeft.row;
        }

        if (!TSCERangeRef::isValid(&v175) || TSCERangeRef::isSpanning(&v175))
        {
          v95 = MEMORY[0x277D81150];
          v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "[TNChartMediator p_repairMissingTabularCategoryLabelsRegularInMap:]");
          v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v95, v99, v96, v98, 4472, 0, "Invalid or spanning data range");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v100, v101);
        }

        if (v175.range._topLeft.column < topLeft.column || v175.range._topLeft.row > bottomRight.row || v175.range._topLeft.row < topLeft.row || v175.range._topLeft.column > bottomRight.column || v175.range._bottomRight.column < topLeft.column || v175.range._bottomRight.row > bottomRight.row || v175.range._bottomRight.row < topLeft.row || v175.range._bottomRight.column > bottomRight.column)
        {
          v102 = MEMORY[0x277D81150];
          v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "[TNChartMediator p_repairMissingTabularCategoryLabelsRegularInMap:]");
          v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v102, v106, v103, v105, 4473, 0, "Found range for category alignment that fell outside of data argument range!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108);
        }

        v154 = v175._tableUID._lower;
        v153 = v175._tableUID._upper;
        v111 = v175.range._topLeft;
        v148 = v175.range._bottomRight;
        if (v35 && (v112 = objc_msgSend_count(v162, v109, v110), v110 = v35 - 1, v35 - 1 < v112))
        {
          v113 = objc_msgSend_objectAtIndex_(v162, v109, v110);
          v82 = v113;
          if (v113)
          {
            v114 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v113, v109, v169, p_entityUID);
            v117 = objc_msgSend_lastElement(v114, v115, v116);

            isReference = objc_msgSend_isReference(v117, v118, v119);
            if (isReference)
            {
              v123 = isReference;
              if (v117)
              {
                objc_msgSend_rangeReference(v117, v121, v122);
                v147 = v170.range._bottomRight;
                v124 = v170.range._topLeft;
                v125 = v170._tableUID._upper;
                v126 = v170._tableUID._lower;
              }

              else
              {
                v125 = 0;
                v126 = 0;
                v147 = 0;
                v124 = 0;
              }
            }

            else
            {
              v123 = 0;
              v125 = 0;
              v126 = 0;
              v147 = 0x7FFF7FFFFFFFLL;
              v124 = 0x7FFF7FFFFFFFLL;
            }

LABEL_65:
            v127 = HIDWORD(*&v111);
            if (v53)
            {
              LOWORD(v128) = 0;
              v129 = 0x7FFF00000000;
              v130 = 0x7FFF7FFFFFFFLL;
              v131 = 0x7FFF7FFFFFFFLL;
              if (v152 != v154 || v151 != v153)
              {
                goto LABEL_98;
              }

              if (objc_msgSend_direction(mapCopy, v109, v110) == 2)
              {
                if (v149 == v111.row)
                {
                  goto LABEL_93;
                }
              }

              else if (v150 == v111.column)
              {
LABEL_93:

                ++v35;
                goto LABEL_109;
              }

              if (v123)
              {
                v127 = HIDWORD(*&v124);
                if (objc_msgSend_direction(mapCopy, v109, v110) == 2)
                {
                  v132 = v124.row + 1;
                  v131 = (v147.row + 1) | *&v147 & 0xFFFFFFFF00000000;
LABEL_96:
                  v129 = *&v124 & 0xFFFF000000000000 | (v127 << 32);
                  v130 = (v129 | v132);
                  if (v132 != 0x7FFFFFFF)
                  {
                    goto LABEL_101;
                  }

                  v128 = HIWORD(*&v124);
LABEL_98:
                  if ((v128 & 0x100) == 0 && (v129 & 0x1FFFF00000000) == 0x7FFF00000000 && (v131 & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
                  {
LABEL_102:
                    objc_msgSend_p_repairMissingTabularCategoryLabelsIrregularInMap_(selfCopy, v109, mapCopy);
LABEL_103:
                    v170.range._topLeft = v130;
                    v170.range._bottomRight = v131;
                    v170._tableUID._lower = v154;
                    v170._tableUID._upper = v153;
                    if (!objc_msgSend_p_tableHasBaseRange_withCalcEngine_(selfCopy, v109, &v170, v169))
                    {
                      objc_msgSend_p_disconnectLabelsInMap_ofType_(selfCopy, v134, mapCopy, v155);
                      objc_msgSend_p_repairMissingStaticCategoryLabelsInMap_(selfCopy, v146, mapCopy);

                      goto LABEL_119;
                    }

                    v170.range._topLeft = v130;
                    v170.range._bottomRight = v131;
                    v170._tableUID._lower = v154;
                    v170._tableUID._upper = v153;
                    v135 = objc_msgSend_chartFormulaForRangeReference_(TNChartFormulaWrapper, v134, &v170);
                    objc_msgSend_insertObject_atIndex_(v162, v136, v135, v35);

LABEL_105:
LABEL_106:
                    v137 = objc_msgSend_p_numberOfLabelsFromExpandedGeometricRangeRefsWithFormulas_formulaType_(selfCopy, v49, v162, v155);
                    if (v137 <= v161)
                    {
                      goto LABEL_119;
                    }

                    if (++v35 > v159)
                    {
                      v139 = MEMORY[0x277D81150];
                      v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v138, "[TNChartMediator p_repairMissingTabularCategoryLabelsRegularInMap:]");
                      v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v141, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v139, v143, v140, v142, 4631, 0, "We should already have enough labels here. Bail out to prevent infinite loop.");

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v144, v145);
                      goto LABEL_119;
                    }

                    v161 = v137;
LABEL_109:

                    if (v161 >= v159)
                    {
                      goto LABEL_120;
                    }

                    goto LABEL_8;
                  }

LABEL_101:
                  if (v154 | v153)
                  {
                    goto LABEL_103;
                  }

                  goto LABEL_102;
                }

                LOWORD(v127) = v124.column + 1;
                v131 = *&v147 & 0xFFFF0000FFFFFFFFLL | (((*&v147 + 0x100000000) >> 32) << 32);
                goto LABEL_95;
              }
            }

            else
            {
              if (v126 == v154)
              {
                v133 = v123;
              }

              else
              {
                v133 = 0;
              }

              if (v133 == 1 && v125 == v153)
              {
                if (objc_msgSend_direction(mapCopy, v109, v110) == 2)
                {
                  v127 = HIDWORD(*&v124);
                  v131 = *&v147 & 0xFFFFFFFF00000000 | v111.row;
                  v132 = v111.row;
                  goto LABEL_96;
                }

                v131 = *&v147 & 0xFFFF0000FFFFFFFFLL | (v111.column << 32);
LABEL_95:
                v132 = v124.row;
                goto LABEL_96;
              }
            }

            if (objc_msgSend_direction(mapCopy, v109, v110) == 2)
            {
              LOWORD(v127) = v111.column - 1;
              v131 = *&v148 & 0xFFFF0000FFFFFFFFLL | (((*&v148 + 0xFFFF00000000) >> 32) << 32);
              v132 = v111.row;
            }

            else
            {
              v132 = v111.row - 1;
              v131 = (v148.row - 1) | *&v148 & 0xFFFFFFFF00000000;
            }

            v124 = v111;
            goto LABEL_96;
          }
        }

        else
        {
          v82 = 0;
        }

        v125 = 0;
        v126 = 0;
        v123 = 0;
        v147 = 0x7FFF7FFFFFFFLL;
        v124 = 0x7FFF7FFFFFFFLL;
        goto LABEL_65;
      }

      ++v63;
      v64 += v68;
    }

    while (v60 != v63);
    v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v58, &v171, v176, 16);
    if (v60)
    {
      continue;
    }

    break;
  }

LABEL_40:

LABEL_41:
  if (v158)
  {
    goto LABEL_106;
  }

  if (v35 >= objc_msgSend_count(v162, v49, v50))
  {
    v82 = objc_msgSend_chartFormulaForString_(TNChartFormulaWrapper, v81, &stru_2884F65E0);
    objc_msgSend_addObject_(v162, v83, v82);
    goto LABEL_105;
  }

  objc_msgSend_p_repairMissingTabularCategoryLabelsIrregularInMap_(selfCopy, v81, mapCopy);
LABEL_119:

LABEL_120:
LABEL_121:
}

- (unint64_t)p_numberOfLabelsFromExpandedGeometricRangeRefsWithFormulas:(id)formulas formulaType:(unint64_t)type
{
  v55 = *MEMORY[0x277D85DE8];
  formulasCopy = formulas;
  v37 = objc_msgSend_calculationEngine(self, v6, v7);
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  v49 = 0u;
  obj = formulasCopy;
  v9 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v49, v54, 16);
  if (v10)
  {
    v36 = *v50;
    do
    {
      v11 = 0;
      v12 = v9;
      v35 = v10;
      do
      {
        if (*v50 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v49 + 1) + 8 * v11);
        context = objc_autoreleasePoolPush();
        v15 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_storeBadRef_(v13, v14, v37, &self->_entityUID, 1);
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v16 = v15;
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v45, v53, 16);
        if (!v20)
        {

LABEL_31:
          v9 = v12;
          goto LABEL_32;
        }

        v38 = v12;
        v39 = v11;
        v21 = 0;
        v22 = 0;
        v23 = *v46;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v46 != v23)
            {
              objc_enumerationMutation(v16);
            }

            v25 = *(*(&v45 + 1) + 8 * i);
            if (objc_msgSend_isGeometricReference(v25, v18, v19))
            {
              if (v25)
              {
                objc_msgSend_rangeReference(v25, v26, v27);
              }

              else
              {
                memset(&v44, 0, sizeof(v44));
              }

              if (TSCERangeRef::isValid(&v44))
              {
                if (TSCERangeRef::isSingleCell(&v44))
                {
                  v28 = 1;
                }

                else
                {
                  objc_msgSend_expandSingleRangeForLabels_formulaType_(self, v18, &v44, type);
                  v29 = formulasCopy;
                  v30 = v43;
                  if (v42)
                  {
                    v43 = v42;
                    operator delete(v42);
                  }

                  v28 = (v30 - v42) >> 5;
                  formulasCopy = v29;
                }

                v21 += v28;
              }
            }

            else if (objc_msgSend_isStaticValue(v25, v26, v27))
            {
              ++v21;
            }

            else
            {
              v22 += objc_msgSend_isBadRef(v25, v18, v19) & 1;
            }
          }

          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v45, v53, 16);
        }

        while (v20);

        v10 = v35;
        v12 = v38;
        v11 = v39;
        v9 = v21 + v38;
        if (v22)
        {
          if (v21)
          {
            goto LABEL_32;
          }

          v12 = v38 + 1;
          goto LABEL_31;
        }

        if (!v21)
        {
          goto LABEL_31;
        }

LABEL_32:

        objc_autoreleasePoolPop(context);
        ++v11;
        v12 = v9;
      }

      while (v11 != v10);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v49, v54, 16);
      v10 = v32;
    }

    while (v32);
  }

  return v9;
}

- (void)p_repairCategorizedCategoryLabelsInMap:(id)map
{
  mapCopy = map;
  v7 = objc_msgSend_calculationEngine(self, v5, v6);
  v246[0] = objc_msgSend_entityUID(self, v8, v9);
  v246[1] = v10;
  v12 = objc_msgSend_categoryLabelFormulaType(mapCopy, v10, v11);
  v235 = objc_msgSend_formulaListForType_(mapCopy, v13, v12);
  v231 = objc_msgSend_formulaListForType_(mapCopy, v14, 1);
  v222 = objc_msgSend_mutableCopy(v235, v15, v16);
  shouldSkipHiddenData = objc_msgSend_shouldSkipHiddenData(self, v17, v18);
  v226 = objc_msgSend_numberOfGroupsWithCalcEngine_inEntity_shouldSkipHiddenData_(mapCopy, v20, v7, self->_entityUID._lower, self->_entityUID._upper, shouldSkipHiddenData);
  v23 = objc_msgSend_scheme(mapCopy, v21, v22);
  if (v226 > objc_msgSend_maxLabeledGroupsForScheme_(TNChartFormulaStorage, v24, v23))
  {
    goto LABEL_135;
  }

  v26 = objc_msgSend_numberOfTotalCategoryLabelsWithCalcEngine_inEntity_shouldSkipHiddenData_(mapCopy, v25, v7, self->_entityUID._lower, self->_entityUID._upper, shouldSkipHiddenData);
  v223 = objc_msgSend_count(v231, v27, v28);
  v236 = objc_msgSend_count(v235, v29, v30);
  if (v26 >= v226)
  {
    goto LABEL_135;
  }

  v227 = shouldSkipHiddenData;
  v234 = v12;
  v212 = mapCopy;
  v213 = v7;
  v32 = 0;
  v225 = 0;
  v33 = 0;
  v34 = 0;
  v232 = 0;
  v35 = 0;
  v237 = 0;
  v233 = 0;
  v229 = 0;
  *&v36.f64[0] = 0x8000000080000000;
  *&v36.f64[1] = 0x8000000080000000;
  v210 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v211 = vnegq_f64(v36);
  while (1)
  {
    if (v33 >= v223)
    {
      v203 = MEMORY[0x277D81150];
      v204 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TNChartMediator p_repairCategorizedCategoryLabelsInMap:]");
      v206 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v205, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v203, v207, v204, v206, 4720, 0, "Iterated past last series trying to repair category labels!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v208, v209);
LABEL_132:
      objc_msgSend_setFormulaList_forKey_(v212, v31, v222, v234);
      goto LABEL_134;
    }

    if (!v237)
    {
      if (v33 + 1 < v223)
      {
        do
        {
          v37 = objc_msgSend_objectAtIndexedSubscript_(v231, v31, v33);
          v39 = objc_msgSend_numberOfValuesWithCalcEngine_inChart_shouldSkipHiddenData_(v37, v38, v7, v246, v227);

          if (v229 + 1 < v39)
          {
            break;
          }

          ++v33;
        }

        while (v223 - 1 != v33);
      }

      v40 = objc_msgSend_objectAtIndexedSubscript_(v231, v31, v33);
      v237 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v40, v41, v7, v246);

      for (i = 0; ; i = v50)
      {
        v45 = objc_msgSend_count(v237, v42, v43);
        v46 = v34++;
        if (v34 >= v45)
        {
          v47 = v46;
          goto LABEL_15;
        }

        v47 = v46;
        v48 = objc_msgSend_elementAtIndex_(v237, v31, v46);
        v50 = objc_msgSend_numberOfValuesWithCalcEngine_plotByRow_(v48, v49, v7, v234 != 2) + i;
        if (v50 >= v229 + 1)
        {
          break;
        }
      }

      v232 = v229 - i;

LABEL_15:
      v34 = v47;
      if (!v237)
      {
        v51 = MEMORY[0x277D81150];
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TNChartMediator p_repairCategorizedCategoryLabelsInMap:]");
        v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v55, v52, v54, 4746, 0, "invalid nil value for '%{public}s'", "dataArgCollection");

        v237 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
      }
    }

    v233 |= v32 >= v236;
    if ((v233 & 1) == 0 && !v35)
    {
      v58 = 0;
      while (1)
      {
        v59 = objc_msgSend_objectAtIndexedSubscript_(v235, v31, v32);
        v35 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v59, v60, v7, v246);

        if (objc_msgSend_count(v35, v61, v62))
        {
          break;
        }

        ++v32;
        v58 = v35;
        if (v236 == v32)
        {
          v32 = v236;
          break;
        }
      }

      v233 = !v35 || !objc_msgSend_count(v35, v31, v63);
    }

    v224 = v34;
    v65 = objc_msgSend_elementAtIndex_(v237, v31, v34);
    if (v233)
    {
      v228 = 0;
    }

    else
    {
      v228 = objc_msgSend_elementAtIndex_(v35, v64, v225);
    }

    v66 = objc_msgSend_numberOfValuesWithCalcEngine_plotByRow_(v65, v64, v7, v234 != 2);
    if (objc_msgSend_type(v65, v67, v68) == 3 && !v66)
    {
      break;
    }

    if (!(v233 & 1 | (v228 == 0)) && objc_msgSend_numberOfValuesWithCalcEngine_plotByRow_(v228, v69, v7, v234 != 2) >= v66 - v232)
    {
      goto LABEL_118;
    }

    v230 = __C();
    if (objc_msgSend_isCategoryReference(v65, v73, v74))
    {
      v77 = objc_msgSend_categoryReference(v65, v75, v76);
      v78 = objc_alloc(MEMORY[0x277D80C30]);
      v243.range._topLeft = objc_msgSend_groupByUid(v77, v79, v80);
      v243.range._bottomRight = v81;
      v238.range._topLeft = objc_msgSend_absoluteGroupUid(v77, v81, v82);
      v238.range._bottomRight = v83;
      if (v234 == 2)
      {
        v116 = objc_msgSend_groupLevel(v77, v83, v84);
        v89 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v78, v117, &v243, &v238, MEMORY[0x277D80D68], 7, v116);
      }

      else
      {
        v245[0] = objc_msgSend_columnUid(v77, v83, v84);
        v245[1] = v85;
        v87 = objc_msgSend_groupLevel(v77, v85, v86);
        v89 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v78, v88, &v243, &v238, v245, 12, v87);
      }

      v118 = v89;
      if (v232)
      {
        v217 = v77;
        v221 = v65;
        v119 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(MEMORY[0x277D80D18], v90, v77, v7);
        v214 = v66;
        v215 = v119;
        if (v119)
        {
          objc_msgSend_expandSpanningCategoryRef_(v119, v120, v118);
          topLeft = v243.range._topLeft;
          bottomRight = v243.range._bottomRight;
          if (*&v243.range._topLeft == *&v243.range._bottomRight)
          {
            v124 = 0;
          }

          else
          {
            v123 = 0;
            v124 = 0;
            v125 = 0;
            do
            {
              v127 = *(*&topLeft + 8 * v125);
              if (v125 >= v232)
              {
                v124 = v124 + sub_275F11AB8(v230, v127, v126);
              }

              ++v125;

              v123 += 8;
            }

            while (*&topLeft + v123 != bottomRight);
          }
        }

        else
        {
          v124 = 0;
          memset(&v243, 0, 24);
        }

        v238.range._topLeft = &v243;
        sub_275F077D4(&v238);

        v7 = v213;
        v66 = v214;
        v77 = v217;
        v65 = v221;
      }

      else
      {
        v124 = sub_275F11AB8(v230, v89, v91);
      }

LABEL_111:

LABEL_112:
      if (v124)
      {
        TSCEASTFunctionElement::appendFunctionElement(v230, 0xAF, v124, 0, v179);
        v180 = objc_alloc(MEMORY[0x277D80C60]);
        v182 = objc_msgSend_initWithNodeArray_(v180, v181, v230);
        v185 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v183, v182);
        if (v233)
        {
          objc_msgSend_addObject_(v222, v184, v185);
        }

        else
        {
          objc_msgSend_replaceObjectAtIndex_withObject_(v222, v184, v32, v185);
        }
      }

      goto LABEL_117;
    }

    if (objc_msgSend_isTractReference(v65, v75, v76))
    {
      v94 = objc_msgSend_tractReference(v65, v92, v93);
      v95 = MEMORY[0x277D80D40];
      v98 = objc_msgSend_tableUID(v94, v96, v97);
      v100 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(v95, v99, v98, v99, v7);
      v103 = v100;
      if (v234 == 2)
      {
        objc_msgSend_numberOfBaseHeaderColumns(v100, v101, v102);
        v243.range._topLeft = TSUIndexRange::makeRangeWithLength(0);
        v243.range._bottomRight = v131;
        v132 = TSUIndexSet::TSUIndexSet();
        if (!TSUIndexSet::count(v132))
        {
          goto LABEL_65;
        }

        if (v232 && objc_msgSend_spansAllRows(v94, v133, v134))
        {
          v135 = v103;
          v218 = v103;
          v136 = objc_msgSend_calcEngine(v103, v133, v134);
          v243.range._topLeft = objc_msgSend_tableUID(v135, v137, v138);
          v243.range._bottomRight = v139;
          v140 = objc_msgSend_tableResolverForTableUID_(v136, v139, &v243);

          v103 = v218;
          if (v140)
          {
            if (v94)
            {
              objc_msgSend_cppCellTractRef(v94, v141, v142);
            }

            else
            {
              v242 = 0;
              v240 = 0u;
              v241 = 0u;
              v239 = 0u;
              memset(&v238, 0, sizeof(v238));
            }

            objc_msgSend_apparentTractRefForTractRef_rangeContext_(v140, v141, &v238, 0);
            TSUIndexSet::~TSUIndexSet(&v239);
            TSUIndexSet::~TSUIndexSet(&v238);
            if (sub_275F03548(&v243))
            {
              LOBYTE(v238.range._topLeft.row) = -1;
              *&v238.range._bottomRight.row = v211;
              v238._tableUID._upper = 0;
              TSUIndexSet::operator=();
              objc_msgSend_setRows_(v94, v172, &v238);
              TSUIndexSet::~TSUIndexSet(&v238);
            }

            TSUIndexSet::~TSUIndexSet(v244);
            TSUIndexSet::~TSUIndexSet(&v243);
          }
        }

        objc_msgSend_rows(v94, v133, v134);
        LOBYTE(v243.range._topLeft.row) |= 3u;
        *&v243.range._bottomRight.row = v211;
        v243._tableUID._upper = 0;
        TSUIndexSet::operator=();
        if (v232 && TSUIndexSet::count(&v243) > v232)
        {
          Index = TSUIndexSet::firstIndex(&v243);
          v174 = TSUIndexSet::nthIndex(&v243);
          v238.range._topLeft = Index;
          v238.range._bottomRight = v174;
          TSUIndexSet::removeIndexesInRange();
        }

        v175 = objc_alloc(MEMORY[0x277D80C38]);
        v238.range._topLeft = objc_msgSend_tableUID(v94, v176, v177);
        v238.range._bottomRight = v178;
        v171 = objc_msgSend_initWithColumns_rows_tableUID_(v175, v178, v245, &v243, &v238);
LABEL_106:
        v118 = v171;
        TSUIndexSet::~TSUIndexSet(&v243);
      }

      else
      {
        objc_msgSend_numberOfBaseHeaderRows(v100, v101, v102);
        v243.range._topLeft = TSUIndexRange::makeRangeWithLength(0);
        v243.range._bottomRight = v104;
        v105 = TSUIndexSet::TSUIndexSet();
        if (TSUIndexSet::count(v105))
        {
          if (v232 && objc_msgSend_spansAllColumns(v94, v106, v107))
          {
            v108 = v103;
            v216 = v103;
            v109 = objc_msgSend_calcEngine(v103, v106, v107);
            v243.range._topLeft = objc_msgSend_tableUID(v108, v110, v111);
            v243.range._bottomRight = v112;
            v113 = objc_msgSend_tableResolverForTableUID_(v109, v112, &v243);

            v103 = v216;
            if (v113)
            {
              if (v94)
              {
                objc_msgSend_cppCellTractRef(v94, v114, v115);
              }

              else
              {
                v242 = 0;
                v240 = 0u;
                v241 = 0u;
                v239 = 0u;
                memset(&v238, 0, sizeof(v238));
              }

              objc_msgSend_apparentTractRefForTractRef_rangeContext_(v113, v114, &v238, 0);
              TSUIndexSet::~TSUIndexSet(&v239);
              TSUIndexSet::~TSUIndexSet(&v238);
              if (sub_275F03548(&v243))
              {
                LOBYTE(v238.range._topLeft.row) = -1;
                *&v238.range._bottomRight.row = v211;
                v238._tableUID._upper = 0;
                TSUIndexSet::operator=();
                objc_msgSend_setColumns_(v94, v161, &v238);
                TSUIndexSet::~TSUIndexSet(&v238);
              }

              TSUIndexSet::~TSUIndexSet(v244);
              TSUIndexSet::~TSUIndexSet(&v243);
            }
          }

          objc_msgSend_columns(v94, v106, v107);
          LOBYTE(v243.range._topLeft.row) |= 3u;
          *&v243.range._bottomRight.row = v211;
          v243._tableUID._upper = 0;
          TSUIndexSet::operator=();
          if (v232 && TSUIndexSet::count(&v243) > v232)
          {
            v162 = TSUIndexSet::firstIndex(&v243);
            v163 = TSUIndexSet::nthIndex(&v243);
            v238.range._topLeft = v162;
            v238.range._bottomRight = v163;
            TSUIndexSet::removeIndexesInRange();
          }

          v164 = objc_alloc(MEMORY[0x277D80C38]);
          v167 = objc_msgSend_columns(v94, v165, v166);
          v238.range._topLeft = objc_msgSend_tableUID(v94, v168, v169);
          v238.range._bottomRight = v170;
          v171 = objc_msgSend_initWithColumns_rows_tableUID_(v164, v170, v167, v245, &v238);
          goto LABEL_106;
        }

LABEL_65:
        v118 = 0;
      }

      TSUIndexSet::~TSUIndexSet(v245);
      v77 = v94;
      if (v118)
      {
        v124 = sub_275F11A20(v230, v118);
      }

      else
      {
        v124 = 0;
      }

      goto LABEL_111;
    }

    if (objc_msgSend_isGeometricReference(v65, v92, v93))
    {
      if (v65)
      {
        objc_msgSend_rangeReference(v65, v128, v129);
        objc_msgSend_tableInfoForTableUID_withCalcEngine_(MEMORY[0x277D80D40], v130, v243._tableUID._lower, v243._tableUID._upper, v7);
      }

      else
      {
        memset(&v243, 0, sizeof(v243));
        objc_msgSend_tableInfoForTableUID_withCalcEngine_(MEMORY[0x277D80D40], v128, 0, 0, v7);
      }
      v143 = ;
      v77 = v143;
      v238.range = v210;
      v238._tableUID._lower = 0;
      v238._tableUID._upper = 0;
      if (v234 == 2)
      {
        if (objc_msgSend_numberOfBaseHeaderColumns(v143, v144, v145))
        {
          if (v232)
          {
            isSpanningAllRows = TSCERangeRef::isSpanningAllRows(&v243);
            row = v243.range._topLeft.row;
            if (isSpanningAllRows)
            {
              v153 = sub_275F2AEB8(v77, *&v243.range._topLeft, *&v243.range._bottomRight, 0);
              row = v153;
              v243.range._topLeft = v153;
              v243.range._bottomRight = v150;
            }
          }

          else
          {
            row = v243.range._topLeft.row;
          }

          v155 = v232 + row;
          if (HIDWORD(v155))
          {
            v220 = v77;
            v196 = MEMORY[0x277D81150];
            v197 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v150, "[TNChartMediator p_repairCategorizedCategoryLabelsInMap:]");
            v199 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v198, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v196, v200, v197, v199, 4880, 0, "Out-of-bounds type assignment was clamped to max");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v201, v202);
            v155 = 0xFFFFFFFFLL;
            v7 = v213;
            v77 = v220;
          }

LABEL_84:
          v245[0] = v155;
          v238.range._topLeft = __C();
          v238.range._bottomRight = v156;
          v238._tableUID._lower = objc_msgSend_tableUID(v77, v156, v157);
          v238._tableUID._upper = v158;
        }
      }

      else if (objc_msgSend_numberOfBaseHeaderRows(v143, v144, v145))
      {
        if (v232)
        {
          isSpanningAllColumns = TSCERangeRef::isSpanningAllColumns(&v243);
          column = v243.range._topLeft.column;
          if (isSpanningAllColumns)
          {
            v149 = sub_275F2AEB8(v77, *&v243.range._topLeft, *&v243.range._bottomRight, 0);
            column = WORD2(v149);
            v243.range._topLeft = v149;
            v243.range._bottomRight = v146;
          }
        }

        else
        {
          column = v243.range._topLeft.column;
        }

        v154 = v232 + column;
        if (v154 >= 0x10000)
        {
          v219 = v77;
          v189 = MEMORY[0x277D81150];
          v190 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v146, "[TNChartMediator p_repairCategorizedCategoryLabelsInMap:]");
          v192 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v191, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v189, v193, v190, v192, 4890, 0, "Out-of-bounds type assignment was clamped to max");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v194, v195);
          v155 = 0xFFFF00000000;
          v7 = v213;
          v77 = v219;
        }

        else
        {
          v155 = v154 << 32;
        }

        goto LABEL_84;
      }

      if (TSCERangeRef::isValid(&v238))
      {
        v159 = v238.range._topLeft;
        v160 = v238.range._bottomRight;
        v124 = sub_275F14DBC(v230, &v238._tableUID, v159, v160);
      }

      else
      {
        v124 = 0;
      }

      goto LABEL_112;
    }

LABEL_117:
    TSCEASTNodeArray::freeNodeArray();
LABEL_118:
    v229 += v66;
    if (v229 >= v226)
    {
      v71 = v32 + 1;
      v72 = v236 - (v32 + 1);
      if (v236 > v32 + 1)
      {
        objc_msgSend_removeObjectsInRange_(v222, v70, v71, v72);
      }
    }

    if (v224 + 1 >= objc_msgSend_count(v237, v70, v71, v72))
    {

      v237 = 0;
      v232 = 0;
      v188 = 0;
      ++v33;
    }

    else
    {
      v188 = v224 + 1;
    }

    if (v233)
    {
      ++v225;
    }

    else if (++v225 >= objc_msgSend_count(v35, v186, v187))
    {
      ++v32;

      v35 = 0;
      v225 = 0;
    }

    v34 = v188;
    if (v229 >= v226)
    {
      goto LABEL_132;
    }
  }

LABEL_134:
  mapCopy = v212;
LABEL_135:
}

- (void)p_promoteSpanningCategorizedCategoryLabelsInMap:(id)map
{
  v124 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v6 = objc_msgSend_categoryLabelFormulaType(mapCopy, v4, v5);
  v93 = objc_msgSend_calculationEngine(self, v7, v8);
  v84 = objc_msgSend_mutableFormulaListForType_(mapCopy, v9, v6);
  if (objc_msgSend_count(v84, v10, v11) >= 2)
  {
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    obj = v84;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v107, v123, 16);
    selfCopy = self;
    if (v13)
    {
      v90 = *v108;
      while (2)
      {
        v14 = 0;
        v88 = v13;
        do
        {
          if (*v108 != v90)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v107 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          v18 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v15, v17, v93, &selfCopy->_entityUID);
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v19 = v18;
          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v103, v122, 16);
          if (v23)
          {
            v24 = *v104;
            while (2)
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v104 != v24)
                {
                  objc_enumerationMutation(v19);
                }

                v26 = *(*(&v103 + 1) + 8 * i);
                if (!objc_msgSend_isCategoryReference(v26, v21, v22))
                {
                  v35 = 0;
                  goto LABEL_28;
                }

                v29 = objc_msgSend_categoryReference(v26, v27, v28);
                v30 = v112;
                if (v112 >= v113)
                {
                  v32 = v112 - v111;
                  if ((v32 + 1) >> 61)
                  {
                    sub_275F07904();
                  }

                  v33 = (v113 - v111) >> 2;
                  if (v33 <= v32 + 1)
                  {
                    v33 = v32 + 1;
                  }

                  if (v113 - v111 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v34 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v34 = v33;
                  }

                  v119 = &v111;
                  if (v34)
                  {
                    sub_275F0791C(&v111, v34);
                  }

                  v115 = 0;
                  v116 = (8 * v32);
                  v118 = 0;
                  *v116 = v29;
                  v117 = 8 * v32 + 8;
                  sub_275F07854(&v111, &v115);
                  v31 = v112;
                  sub_275F07964(&v115);
                }

                else
                {
                  *v112 = v29;
                  v31 = v30 + 1;
                }

                v112 = v31;
              }

              v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v103, v122, 16);
              if (v23)
              {
                continue;
              }

              break;
            }
          }

          v35 = 1;
LABEL_28:

          objc_autoreleasePoolPop(v16);
          if (!v35)
          {
            v38 = obj;
            goto LABEL_67;
          }

          ++v14;
        }

        while (v14 != v88);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v107, v123, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v38 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(MEMORY[0x277D80D18], v37, *v111, v93);
    objc_msgSend_formulaListForType_(mapCopy, v39, 1);
    v102 = 0u;
    v100 = 0u;
    v101 = 0u;
    v85 = v99 = 0u;
    v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v40, &v99, v121, 16);
    if (v41)
    {
      v91 = *v100;
      while (2)
      {
        v42 = 0;
        v89 = v41;
        do
        {
          if (*v100 != v91)
          {
            objc_enumerationMutation(v85);
          }

          v43 = *(*(&v99 + 1) + 8 * v42);
          v44 = objc_autoreleasePoolPush();
          v46 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v43, v45, v93, &selfCopy->_entityUID);
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v47 = v46;
          v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v95, v120, 16);
          if (v51)
          {
            v52 = *v96;
            while (2)
            {
              for (j = 0; j != v51; ++j)
              {
                if (*v96 != v52)
                {
                  objc_enumerationMutation(v47);
                }

                v54 = *(*(&v95 + 1) + 8 * j);
                if (objc_msgSend_isCategoryReference(v54, v49, v50))
                {
                  v55 = objc_msgSend_categoryReference(v54, v49, v50);
                  v58 = objc_msgSend_groupByUid(v55, v56, v57);
                  v60 = v59;
                  if (v58 == objc_msgSend_groupByUid(v38, v59, v61) && v60 == v62)
                  {
                    isSpanningCategoryRef = objc_msgSend_isSpanningCategoryRef_(v38, v62, v55);

                    if ((isSpanningCategoryRef & 1) == 0)
                    {
                      v65 = 0;
                      goto LABEL_52;
                    }
                  }

                  else
                  {
                  }
                }
              }

              v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v49, &v95, v120, 16);
              if (v51)
              {
                continue;
              }

              break;
            }
          }

          v65 = 1;
LABEL_52:

          objc_autoreleasePoolPop(v44);
          if (!v65)
          {

            goto LABEL_66;
          }

          ++v42;
        }

        while (v42 != v89);
        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v66, &v99, v121, 16);
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    memset(v94, 0, sizeof(v94));
    sub_275F079B8(v94, v111, v112, v112 - v111);
    if (v38)
    {
      objc_msgSend_promoteSpanningReferences_(v38, v67, v94);
    }

    else
    {
      v115 = 0;
      v116 = 0;
      v117 = 0;
    }

    v114 = v94;
    sub_275F077D4(&v114);
    v68 = __C();
    v69 = v115;
    v70 = v116;
    if (v115 != v116)
    {
      v71 = v68;
      v72 = 0;
      do
      {
        v73 = *v69;
        TSCEASTCategoryRefElement::appendCategoryRefElement(v71, v73, v74);

        ++v69;
        --v72;
      }

      while (v69 != v70);
      if (v72)
      {
        TSCEASTFunctionElement::appendFunctionElement(v71, 0xAF, -v72, 0, v75);
        v76 = objc_alloc(MEMORY[0x277D80C60]);
        v78 = objc_msgSend_initWithNodeArray_(v76, v77, v71);
        v80 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v79, v78);
        TSCEASTNodeArray::freeNodeArray();
        objc_msgSend_removeAllObjects(obj, v81, v82);
        objc_msgSend_addObject_(obj, v83, v80);
      }
    }

    v114 = &v115;
    sub_275F077D4(&v114);
LABEL_66:

LABEL_67:
    v115 = &v111;
    sub_275F077D4(&v115);
  }
}

- (void)p_repairMissingCategoryLabelsInMap:(id)map
{
  mapCopy = map;
  v6 = objc_msgSend_categoryLabelFormulaType(mapCopy, v4, v5);
  v9 = objc_msgSend_scheme(mapCopy, v7, v8);
  v11 = objc_msgSend_maxLabeledGroupsForScheme_(TNChartFormulaStorage, v10, v9);
  shouldSkipHiddenData = objc_msgSend_shouldSkipHiddenData(self, v12, v13);
  v16 = objc_msgSend_formulaListForType_(mapCopy, v15, v6);
  v19 = objc_msgSend_count(v16, v17, v18);
  if (v19 <= objc_msgSend_maxGroupLabelFormulas(TNChartFormulaStorage, v20, v21))
  {
    v24 = objc_msgSend_calculationEngine(self, v22, v23);
    v27 = objc_msgSend_entityUID(self, v25, v26);
    v29 = objc_msgSend_numberOfGroupsWithCalcEngine_inEntity_shouldSkipHiddenData_(mapCopy, v28, v24, v27, v28, shouldSkipHiddenData);

    if (v29 <= v11)
    {
      v31 = objc_msgSend_p_formulaComponentsInMap_ofType_(self, v30, mapCopy, 1);
      v33 = objc_msgSend_p_formulaComponentsInMap_ofType_(self, v32, mapCopy, v6);
      v35 = v33;
      if (!v33 || (v33 & 1) != 0)
      {
        objc_msgSend_p_repairMissingStaticCategoryLabelsInMap_(self, v34, mapCopy);
      }

      else if (((v33 | v31) & 0xC) != 0)
      {
        objc_msgSend_p_repairCategorizedCategoryLabelsInMap_(self, v34, mapCopy);
        if (v35 == 8 && v6 == 2)
        {
          objc_msgSend_p_promoteSpanningCategorizedCategoryLabelsInMap_(self, v36, mapCopy);
        }
      }

      else if (((v33 | v31) & 2) != 0)
      {
        if (objc_msgSend_p_tabularCategoryLabelsAppearRegularInMap_(self, v34, mapCopy))
        {
          objc_msgSend_p_repairMissingTabularCategoryLabelsRegularInMap_(self, v37, mapCopy);
        }

        else
        {
          objc_msgSend_p_repairMissingTabularCategoryLabelsIrregularInMap_(self, v37, mapCopy);
        }
      }
    }
  }

  else
  {
  }
}

- (void)repairMissingCategoryLabelsInMap:(id)map ignoringNonVisibleLabels:(BOOL)labels
{
  labelsCopy = labels;
  v55 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  context = objc_autoreleasePoolPush();
  v8 = objc_msgSend_calculationEngine(self, v6, v7);
  v53[0] = objc_msgSend_entityUID(self, v9, v10);
  v53[1] = v11;
  if (labelsCopy)
  {
    v13 = objc_msgSend_categoryLabelFormulaType(mapCopy, v11, v12);
    v15 = objc_msgSend_mutableFormulaListForType_(mapCopy, v14, v13);
    v19 = objc_msgSend_count(v15, v16, v17) - 1;
    if (v19 >= 0xFFFF)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      do
      {
        v49 = 0;
        v50 = &v49;
        v51 = 0x2020000000;
        v52 = 0;
        v21 = objc_msgSend_objectAtIndex_(v15, v18, v19);
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = sub_275F042A0;
        v46[3] = &unk_27A6A2968;
        v48 = &v49;
        v47 = v8;
        v23 = objc_msgSend_formulaByProcessingArgumentsWithCalcEngine_inOwner_usingBlock_(v21, v22, v47, v53, v46);
        if ((v50[3] & 1) == 0)
        {
          if (!v20)
          {
            v20 = objc_msgSend_array(MEMORY[0x277CBEB18], v24, v25);
          }

          objc_msgSend_insertObject_atIndex_(v20, v24, v21, 0);
          objc_msgSend_removeObjectAtIndex_(v15, v26, v19);
        }

        _Block_object_dispose(&v49, 8);
        --v19;
      }

      while (v19 != -1);
    }
  }

  else
  {
    v20 = 0;
  }

  objc_msgSend_p_repairMissingCategoryLabelsInMap_(self, v11, mapCopy);
  if (objc_msgSend_count(v20, v27, v28))
  {
    v31 = objc_msgSend_categoryLabelFormulaType(mapCopy, v29, v30);
    v33 = objc_msgSend_mutableFormulaListForType_(mapCopy, v32, v31);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = v20;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v42, v54, 16);
    if (v37)
    {
      v38 = *v43;
      do
      {
        v39 = 0;
        do
        {
          if (*v43 != v38)
          {
            objc_enumerationMutation(v34);
          }

          objc_msgSend_addObject_(v33, v36, *(*(&v42 + 1) + 8 * v39++));
        }

        while (v37 != v39);
        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v42, v54, 16);
      }

      while (v37);
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)repairMissingSeriesLabelsInMap:(id)map
{
  v282 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v241 = objc_msgSend_direction(mapCopy, v4, v5);
  if (!v241)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TNChartMediator repairMissingSeriesLabelsInMap:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 5110, 0, "How do I fix up category labels when I don't know what direction they are?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v231 = objc_msgSend_calculationEngine(self, v6, v7);
  v234 = objc_msgSend_seriesLabelFormulaType(mapCopy, v15, v16);
  v224 = objc_msgSend_mutableFormulaListForType_(mapCopy, v17, v234);
  v221 = objc_msgSend_formulaListForType_(mapCopy, v18, 1);
  v21 = objc_msgSend_count(v224, v19, v20);
  selfCopy = self;
  if (v21 < objc_msgSend_count(v221, v22, v23))
  {
    v26 = objc_msgSend_p_formulaComponents_(self, v24, v224);
    v30 = objc_msgSend_p_numberOfLabelsFromExpandedGeometricRangeRefsWithFormulas_formulaType_(self, v27, v224, v234);
    v31 = v26 & 0xC;
    if ((v26 & 0xC) == 0 && objc_msgSend_count(v224, v28, v29) > v30)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TNChartMediator repairMissingSeriesLabelsInMap:]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 5121, 0, "We should not have less labels from expanded rangeRefs than we have labels formulas. This might be a problem in the label expansion code");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
    }

    v39 = objc_msgSend_count(v224, v28, v29);
    if (v31 || v39 < v30)
    {
      v40 = objc_msgSend_array(MEMORY[0x277CBEB18], v24, v25);
      v278 = 0u;
      v279 = 0u;
      v276 = 0u;
      v277 = 0u;
      obj = v224;
      v219 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v276, v281, 16);
      if (!v219)
      {
        goto LABEL_85;
      }

      v218 = *v277;
      while (1)
      {
        for (i = 0; i != v219; ++i)
        {
          if (*v277 != v218)
          {
            objc_enumerationMutation(obj);
          }

          v232 = *(*(&v276 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v217 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v232, v42, v231, &selfCopy->_entityUID);
          v43 = __C();
          v274 = 0u;
          v275 = 0u;
          v272 = 0u;
          v273 = 0u;
          v236 = v217;
          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v236, v44, &v272, v280, 16);
          if (v45)
          {
            v48 = 0;
            v49 = 0;
            v238 = *v273;
            do
            {
              v240 = v45;
              for (j = 0; j != v240; ++j)
              {
                if (*v273 != v238)
                {
                  objc_enumerationMutation(v236);
                }

                v51 = *(*(&v272 + 1) + 8 * j);
                if (objc_msgSend_isGeometricReference(v51, v46, v47))
                {
                  if (v51)
                  {
                    objc_msgSend_rangeReference(v51, v52, v53);
                  }

                  else
                  {
                    v264 = 0u;
                    v265 = 0u;
                  }

                  objc_msgSend_expandSingleRangeForLabels_formulaType_(selfCopy, v52, &v264, v234);
                  v76 = __p[0];
                  v77 = __p[1];
                  if (__p[1] == __p[0])
                  {
                    v92 = *(&v264 + 1);
                    v91 = v264;
                    v48 = v48 + sub_275F14DBC(v43, &v265, v91, v92);
                  }

                  else
                  {
                    if (v48)
                    {
                      TSCEASTFunctionElement::appendFunctionElement(v43, 0xAF, v48, 0, v75);
                      v78 = objc_alloc(MEMORY[0x277D80C60]);
                      v80 = objc_msgSend_initWithNodeArray_(v78, v79, v43);
                      v82 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v81, v80);
                      TSCEASTNodeArray::freeNodeArray();
                      objc_msgSend_addObject_(v40, v83, v82);
                      v43 = __C();

                      v76 = __p[0];
                      v77 = __p[1];
                    }

                    while (v76 != v77)
                    {
                      memset(&v271, 0, sizeof(v271));
                      TSCEASTNodeArray::appendRangeReference(v43, v76, 0, &v271);
                      TSCEASTFunctionElement::appendFunctionElement(v43, 0xAF, 1, 0, v84);
                      v85 = objc_alloc(MEMORY[0x277D80C60]);
                      v87 = objc_msgSend_initWithNodeArray_(v85, v86, v43);
                      v89 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v88, v87);
                      TSCEASTNodeArray::freeNodeArray();
                      objc_msgSend_addObject_(v40, v90, v89);
                      v43 = __C();

                      ++v76;
                    }

                    v48 = 0;
                    v49 = 1;
                  }

                  if (__p[0])
                  {
                    __p[1] = __p[0];
                    operator delete(__p[0]);
                  }
                }

                else if (objc_msgSend_isCategoryReference(v51, v52, v53))
                {
                  v56 = objc_msgSend_categoryReference(v51, v54, v55);
                  v58 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(MEMORY[0x277D80D18], v57, v56, v231);
                  v62 = v58;
                  if (v58)
                  {
                    objc_msgSend_expandSpanningCategoryRef_(v58, v59, v56);
                    v63 = *(&v264 + 1);
                    v64 = v264;
                  }

                  else
                  {
                    v64 = 0;
                    v63 = 0;
                    v264 = 0uLL;
                    *&v265 = 0;
                  }

                  if ((v63 - v64) < 9)
                  {
                    v48 = v48 + sub_275F11AB8(v43, v56, v60);
                  }

                  else
                  {
                    if (v48)
                    {
                      TSCEASTFunctionElement::appendFunctionElement(v43, 0xAF, v48, 0, v61);
                      v95 = objc_alloc(MEMORY[0x277D80C60]);
                      v97 = objc_msgSend_initWithNodeArray_(v95, v96, v43);
                      v99 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v98, v97);
                      TSCEASTNodeArray::freeNodeArray();
                      objc_msgSend_addObject_(v40, v100, v99);
                      v43 = __C();

                      v63 = *(&v264 + 1);
                      v64 = v264;
                    }

                    while (v64 != v63)
                    {
                      v101 = *v64;
                      TSCEASTCategoryRefElement::appendCategoryRefElement(v43, v101, v102);
                      TSCEASTFunctionElement::appendFunctionElement(v43, 0xAF, 1, 0, v103);
                      v104 = objc_alloc(MEMORY[0x277D80C60]);
                      v106 = objc_msgSend_initWithNodeArray_(v104, v105, v43);
                      v108 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v107, v106);
                      TSCEASTNodeArray::freeNodeArray();
                      objc_msgSend_addObject_(v40, v109, v108);
                      v43 = __C();

                      ++v64;
                    }

                    v48 = 0;
                    v49 = 1;
                  }

                  __p[0] = &v264;
                  sub_275F077D4(__p);
                }

                else if (objc_msgSend_isTractReference(v51, v54, v55))
                {
                  v67 = objc_msgSend_tractReference(v51, v65, v66);
                  v70 = v67;
                  if (v241 == 1)
                  {
                    if (objc_msgSend_numRows(v67, v68, v69) > 1)
                    {
                      goto LABEL_56;
                    }
                  }

                  else if (objc_msgSend_numColumns(v67, v68, v69) >= 2)
                  {
LABEL_56:
                    if (v48)
                    {
                      TSCEASTFunctionElement::appendFunctionElement(v43, 0xAF, v48, 0, v73);
                      v110 = objc_alloc(MEMORY[0x277D80C60]);
                      v112 = objc_msgSend_initWithNodeArray_(v110, v111, v43);
                      v114 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v113, v112);
                      TSCEASTNodeArray::freeNodeArray();
                      objc_msgSend_addObject_(v40, v115, v114);
                      v43 = __C();
                    }

                    v116 = MEMORY[0x277D80D40];
                    v117 = objc_msgSend_tableUID(v70, v71, v72);
                    v119 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(v116, v118, v117, v118, v231);
                    v122 = objc_msgSend_translator(v119, v120, v121);
                    v229 = objc_msgSend_viewTractRefForBaseTractRef_(v122, v123, v70);

                    *&v264 = 0;
                    *(&v264 + 1) = &v264;
                    *&v265 = 0x4812000000;
                    *(&v265 + 1) = sub_275F056D8;
                    v266 = sub_275F056FC;
                    v267 = "";
                    v269 = 0;
                    v270 = 0;
                    v268 = 0;
                    objc_msgSend_rows(v229, v124, v125);
                    v258 = MEMORY[0x277D85DD0];
                    v259 = 3221225472;
                    v260 = sub_275F05714;
                    v261 = &unk_27A6A2990;
                    v263 = &v264;
                    v126 = v119;
                    v262 = v126;
                    TSUIndexSet::enumerateIndexesUsingBlock();
                    __p[0] = 0;
                    __p[1] = __p;
                    *&v252 = 0x4812000000;
                    *(&v252 + 1) = sub_275F056D8;
                    v253 = sub_275F056FC;
                    v254 = "";
                    v256 = 0;
                    v257 = 0;
                    v255 = 0;
                    objc_msgSend_columns(v70, v127, v128);
                    v246 = MEMORY[0x277D85DD0];
                    v247 = 3221225472;
                    v248 = sub_275F05828;
                    v249 = &unk_27A6A29B8;
                    v250 = __p;
                    TSUIndexSet::enumerateIndexesUsingBlock();
                    if (v241 == 1)
                    {
                      v129 = &v264 + 1;
                    }

                    else
                    {
                      v129 = &__p[1];
                    }

                    v130 = *v129;
                    memset(&v271, 0, sizeof(v271));
                    sub_275F07ABC(&v271, v130[6], v130[7], (v130[7] - v130[6]) >> 3);
                    if (v241 == 1)
                    {
                      v131 = &__p[1];
                    }

                    else
                    {
                      v131 = &v264 + 1;
                    }

                    v132 = *v131;
                    v244 = 0;
                    v245 = 0;
                    v243 = 0;
                    sub_275F07ABC(&v243, v132[6], v132[7], (v132[7] - v132[6]) >> 3);
                    var0 = v271.var0;
                    lower = v271.var1._lower;
                    while (var0 != lower)
                    {
                      if (v241 == 1)
                      {
                        v137 = *var0 | (*v243 << 32);
                      }

                      else
                      {
                        v137 = *v243 | (*var0 << 32);
                      }

                      if (v241 == 1)
                      {
                        v138 = *var0 | (*(v244 - 2) << 32);
                      }

                      else
                      {
                        v138 = *(v244 - 2) | (*var0 << 32);
                      }

                      v242._lower = objc_msgSend_tableUID(v70, v133, v134);
                      v242._upper = v139;
                      v140 = v137;
                      v141 = v138;
                      v142 = sub_275F14DBC(v43, &v242, v140, v141);
                      TSCEASTFunctionElement::appendFunctionElement(v43, 0xAF, v142, 0, v143);
                      v144 = objc_alloc(MEMORY[0x277D80C60]);
                      v146 = objc_msgSend_initWithNodeArray_(v144, v145, v43);
                      v148 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v147, v146);
                      TSCEASTNodeArray::freeNodeArray();
                      objc_msgSend_addObject_(v40, v149, v148);
                      v43 = __C();

                      var0 += 2;
                    }

                    if (v243)
                    {
                      v244 = v243;
                      operator delete(v243);
                    }

                    if (v271.var0)
                    {
                      v271.var1._lower = v271.var0;
                      operator delete(*&v271.var0);
                    }

                    _Block_object_dispose(__p, 8);
                    if (v255)
                    {
                      v256 = v255;
                      operator delete(v255);
                    }

                    _Block_object_dispose(&v264, 8);
                    if (v268)
                    {
                      v269 = v268;
                      operator delete(v268);
                    }

                    v48 = 0;
LABEL_51:
                    v49 = 1;
                    continue;
                  }

                  v74 = sub_275F11A20(v43, v70);

                  v48 = (v48 + v74);
                }

                else if (objc_msgSend_isStaticValue(v51, v65, v66))
                {
                  v93 = objc_msgSend_staticValue(v51, v46, v47);
                  objc_msgSend_appendASTForConstantToNodeArray_(v93, v94, v43);

                  v48 = (v48 + 1);
                }

                if (v49)
                {
                  goto LABEL_51;
                }

                objc_msgSend_addObject_(v40, v46, v232);
                v49 = 0;
              }

              v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v236, v46, &v272, v280, 16);
            }

            while (v45);
          }

          objc_autoreleasePoolPop(context);
        }

        v219 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v150, &v276, v281, 16);
        if (!v219)
        {
LABEL_85:

          if (v40)
          {
            objc_msgSend_removeAllObjects(obj, v151, v152);
            objc_msgSend_addObjectsFromArray_(obj, v153, v40);
          }

          self = selfCopy;
          break;
        }
      }
    }
  }

  v239 = objc_msgSend_numberOfDataFormulas(mapCopy, v24, v25);
  v156 = objc_msgSend_count(v221, v154, v155);
  v159 = objc_msgSend_chartInfo(self, v157, v158);
  v162 = objc_msgSend_chartType(v159, v160, v161);
  v165 = v156 <= objc_msgSend_maxSeries(v162, v163, v164);

  if (v239)
  {
    v168 = v165;
  }

  else
  {
    v168 = 0;
  }

  if (!v168)
  {
    goto LABEL_124;
  }

  v169 = 0;
  v170 = 0;
  v237 = v234 << 32;
  while (1)
  {
    if (v170 < objc_msgSend_count(v224, v166, v167))
    {
      v172 = objc_msgSend_objectAtIndex_(v224, v171, v170);
      if (v172)
      {
        goto LABEL_103;
      }
    }

    if (v169)
    {
      break;
    }

    v176 = 0;
LABEL_101:
    v183 = objc_msgSend_p_untitledLabelWithIndex_(selfCopy, v171, v170 + 1);
    v172 = objc_msgSend_chartFormulaForString_(TNChartFormulaWrapper, v184, v183);
    objc_msgSend_addFormula_withFormulaID_(mapCopy, v185, v172, v170 | v237);

LABEL_102:
LABEL_103:

    ++v170;
    v169 = v172;
    if (v239 == v170)
    {
      goto LABEL_123;
    }
  }

  v173 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v169, v171, v231, &selfCopy->_entityUID);
  v176 = objc_msgSend_lastElement(v173, v174, v175);

  if (!v176 || !objc_msgSend_isGeometricReference(v176, v171, v177))
  {
    goto LABEL_101;
  }

  objc_msgSend_rangeReference(v176, v171, v178);
  v180 = v264;
  if (v241 == 1)
  {
    v230 = v264 + 1;
    v226 = 0xFFFFFFFF00000000;
    v181 = 1;
    v182 = 0xFFFFFFFFLL;
    v233 = DWORD1(v264);
  }

  else
  {
    LOWORD(v233) = WORD2(v264) + 1;
    v226 = 0xFFFF0000FFFFFFFFLL;
    v182 = 0xFFFF00000000;
    v181 = 0x100000000;
    v230 = v264;
  }

  v187 = *(&v265 + 1);
  v186 = v265;
  v188 = *(&v264 + 1);
  v225 = objc_msgSend_objectAtIndex_(v221, v179, v170);
  v228 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v225, v189, v231, &selfCopy->_entityUID);
  v227 = HIWORD(v180);
  v193 = (v188 + v181) & v182 | v188 & v226;
  if (objc_msgSend_count(v228, v190, v191))
  {
    v194 = objc_msgSend_elementAtIndex_(v228, v192, 0);
    v196 = objc_msgSend_tableUID_(v194, v195, v231);
    v198 = v197;
    __p[0] = (v180 & 0xFFFF000000000000 | (v233 << 32) | v230);
    __p[1] = v193;
    v252 = __PAIR128__(v187, v186);
    if (!objc_msgSend_p_tableHasBaseRange_withCalcEngine_(selfCopy, v197, __p, v231) || __PAIR128__(v198, v196) != v265)
    {
      if (objc_msgSend_isGeometricReference(v194, v199, v200))
      {
        if (v194)
        {
          objc_msgSend_rangeReference(v194, v201, v202);
          v187 = *(&v252 + 1);
          v186 = v252;
          objc_msgSend_rangeReference(v194, v203, v204);
          v205 = __p[0];
          v193 = __p[1];
        }

        else
        {
          v193 = 0;
          v205 = 0;
          v187 = 0;
          v186 = 0;
        }

        v233 = HIDWORD(v205);
        v227 = HIWORD(v205);
      }

      else
      {
        LODWORD(v205) = v230;
        if (objc_msgSend_isTractReference(v194, v201, v202))
        {
          v208 = objc_msgSend_tractReference(v194, v206, v207);
          v186 = objc_msgSend_tableUID(v208, v209, v210);
          v187 = v211;
          v205 = objc_msgSend_boundingRange(v208, v211, v212);
          v193 = v213;

          v227 = HIWORD(v205);
          v233 = HIDWORD(v205);
        }
      }

      if (v241 == 1)
      {
        LOWORD(v233) = v233 - 1;
        v230 = v205;
        v193 = v193 & 0xFFFF000000000000 | (v233 << 32) | v205;
      }

      else
      {
        v193 = v193 & 0xFFFF000000000000 | (v205 - 1) | (v233 << 32);
        v230 = v205 - 1;
      }
    }
  }

  *&v264 = (v227 << 48) | (v233 << 32) | v230;
  *(&v264 + 1) = v193;
  *&v265 = v186;
  *(&v265 + 1) = v187;
  *__p = v264;
  v252 = v265;
  if (objc_msgSend_p_tableHasBaseRange_withCalcEngine_(selfCopy, v192, __p, v231))
  {
    *__p = v264;
    v252 = v265;
    v172 = objc_msgSend_chartFormulaForRangeReference_(TNChartFormulaWrapper, v214, __p);
    objc_msgSend_addFormula_withFormulaID_(mapCopy, v215, v172, v170 | v237);

    goto LABEL_102;
  }

  objc_msgSend_p_disconnectLabelsInMap_ofType_(selfCopy, v214, mapCopy, v234);

  v172 = v169;
LABEL_123:

LABEL_124:
}

- (void)p_transposeSeriesAndCategoryLabelsInMap:(id)map
{
  mapCopy = map;
  v5 = objc_msgSend_seriesLabelFormulaType(mapCopy, v3, v4);
  v8 = objc_msgSend_categoryLabelFormulaType(mapCopy, v6, v7);
  v10 = objc_msgSend_mutableFormulaListForType_(mapCopy, v9, v5);
  v12 = objc_msgSend_mutableFormulaListForType_(mapCopy, v11, v8);
  objc_msgSend_setFormulaList_forKey_(mapCopy, v13, v12, v5);
  objc_msgSend_setFormulaList_forKey_(mapCopy, v14, v10, v8);
}

- (vector<TSCERangeRef,)expandSingleTractForProposedCategoryLabels:(TNChartMediator *)self byRow:(SEL)row
{
  v5 = a5;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x4812000000;
  v25 = sub_275F05C98;
  v26 = sub_275F05CBC;
  v27 = "";
  v29 = 0;
  v30 = 0;
  v28 = 0;
  if ((objc_msgSend_isSingleCell(v7, v8, v9) & 1) == 0)
  {
    if (v5)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x5012000000;
      v17 = sub_275F05CD4;
      v18 = nullsub_2;
      v19 = "";
      if (v7)
      {
        objc_msgSend_boundingRangeRef(v7, v10, v11);
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      objc_msgSend_rows(v7, v10, v11);
      TSUIndexSet::enumerateIndexesUsingBlock();
    }

    else
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x5012000000;
      v17 = sub_275F05CD4;
      v18 = nullsub_2;
      v19 = "";
      if (v7)
      {
        objc_msgSend_boundingRangeRef(v7, v10, v11);
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      objc_msgSend_columns(v7, v10, v11);
      TSUIndexSet::enumerateIndexesUsingBlock();
    }

    _Block_object_dispose(&v14, 8);
  }

  v12 = v23;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_275F07B74(retstr, v12[6], v12[7], (v12[7] - v12[6]) >> 5);
  _Block_object_dispose(&v22, 8);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return result;
}

- (vector<TSCERangeRef,)p_expandSingleRangeForLabels:()vector<TSCERangeRef iterateOverRowsNotColumns:(std:(SEL)columns :(const TSCERangeRef *)a4 allocator<TSCERangeRef>> *)self
{
  row = a4->range._topLeft.row;
  column = a4->range._topLeft.column;
  v8 = *&a4->range._topLeft._preserveRow;
  v9 = a4->range._bottomRight.row;
  v10 = a4->range._bottomRight.column;
  v11 = *&a4->range._bottomRight._preserveRow;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v12 = (((v10 << 32) | (v11 << 48)) ^ ((column << 32) | (v8 << 48))) & 0x101FFFF00000000;
  if (row != v9 || v12 != 0)
  {
    v14 = a5;
    v15 = a5 ? row : column;
    for (i = a5 ? v9 : v10; v15 <= i; ++v15)
    {
      tableUID = a4->_tableUID;
      v19.range = a4->range;
      v19._tableUID = tableUID;
      if (v14)
      {
        v19.range._topLeft.row = v15;
        v19.range._bottomRight.row = v15;
      }

      else
      {
        v19.range._topLeft.column = v15;
        v19.range._bottomRight.column = v15;
      }

      self = TSCERangeRef::isValid(&v19);
      if (self)
      {
        sub_275F05D14(retstr, &v19);
      }
    }
  }

  return self;
}

- (id)referencedEntities
{
  v4 = objc_msgSend_rawFormulaStorage(self, a2, v2);
  v7 = objc_msgSend_calculationEngine(self, v5, v6);
  v9 = objc_msgSend_referencedEntitiesWithCalcEngine_(v4, v8, v7);

  return v9;
}

- (BOOL)p_tableHasBaseRange:(TSCERangeRef *)range withCalcEngine:(id)engine
{
  v5 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(MEMORY[0x277D80D40], a2, range->_tableUID._lower, range->_tableUID._upper, engine);
  v8 = objc_msgSend_baseTableModel(v5, v6, v7);
  v23.var0 = objc_msgSend_range(v8, v9, v10);
  v23.var1 = v11;
  topLeft = range->range._topLeft;
  if (TSUCellRect::contains(&v23, topLeft))
  {
    v15 = objc_msgSend_baseTableModel(v5, v13, v14);
    v22.var0 = objc_msgSend_range(v15, v16, v17);
    v22.var1 = v18;
    bottomRight = range->range._bottomRight;
    v20 = TSUCellRect::contains(&v22, bottomRight);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)p_tableHasBaseCell:(TSCECellRef *)cell withCalcEngine:(id)engine
{
  v5 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(MEMORY[0x277D80D40], a2, cell->var1._lower, cell->var1._upper, engine);
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_baseTableModel(v5, v6, v7);
    v16.var0 = objc_msgSend_range(v9, v10, v11);
    v16.var1 = v12;
    var0 = cell->var0;
    v14 = TSUCellRect::contains(&v16, var0);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)dataFormulas
{
  v3 = objc_msgSend_formulaStorage(self, a2, v2);
  v5 = objc_msgSend_formulaListForType_(v3, v4, 1);

  return v5;
}

- (int)formulasDirection
{
  v3 = objc_msgSend_formulaStorage(self, a2, v2);
  v6 = objc_msgSend_direction(v3, v4, v5);

  return v6;
}

- (id)rowFormulas
{
  v3 = objc_msgSend_formulaStorage(self, a2, v2);
  v5 = objc_msgSend_formulaListForType_(v3, v4, 2);

  return v5;
}

- (id)columnFormulas
{
  v3 = objc_msgSend_formulaStorage(self, a2, v2);
  v5 = objc_msgSend_formulaListForType_(v3, v4, 3);

  return v5;
}

- (id)customPosFormulas
{
  v3 = objc_msgSend_formulaStorage(self, a2, v2);
  v5 = objc_msgSend_formulaListForType_(v3, v4, 4);

  return v5;
}

- (id)customNegFormulas
{
  v3 = objc_msgSend_formulaStorage(self, a2, v2);
  v5 = objc_msgSend_formulaListForType_(v3, v4, 5);

  return v5;
}

- (id)customPosScatterXFormulas
{
  v3 = objc_msgSend_formulaStorage(self, a2, v2);
  v5 = objc_msgSend_formulaListForType_(v3, v4, 6);

  return v5;
}

- (id)customNegScatterXFormulas
{
  v3 = objc_msgSend_formulaStorage(self, a2, v2);
  v5 = objc_msgSend_formulaListForType_(v3, v4, 7);

  return v5;
}

- (void)localizeFormulaLiteralsWithTemplateBundle:(id)bundle locale:(id)locale
{
  bundleCopy = bundle;
  localeCopy = locale;
  selfCopy = self;
  v10 = objc_msgSend_calculationEngine(self, v6, v7);
  v90 = v10;
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TNChartMediator localizeFormulaLiteralsWithTemplateBundle:locale:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 5645, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_msgSend_formulaStorage(selfCopy, v8, v9);
  v21 = objc_msgSend_mutableCopy(v18, v19, v20);

  v82 = v21;
  v83 = objc_msgSend_formulaTypeEnumerator(v21, v22, v23);
  v84 = 0;
  v89 = *MEMORY[0x277D80008];
  while (1)
  {
    FormulaType = objc_msgSend_nextFormulaType(v83, v24, v25);
    if (FormulaType == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v88 = objc_msgSend_mutableFormulaListForType_(v82, v26, FormulaType);
    if (!v88)
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TNChartMediator localizeFormulaLiteralsWithTemplateBundle:locale:]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 5653, 0, "invalid nil value for '%{public}s'", "formulaArray");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
    }

    v37 = objc_msgSend_count(v88, v28, v29);
    v39 = v37;
    if (v37)
    {
      v40 = 0;
      v85 = FormulaType << 32;
      v86 = v37;
      v41 = v88;
      do
      {
        v93 = objc_msgSend_objectAtIndex_(v41, v38, v40);
        v43 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v93, v42, v10, &selfCopy->_entityUID);
        v46 = objc_msgSend_mutableCopy(v43, v44, v45);

        v50 = objc_msgSend_count(v46, v47, v48);
        if (v50)
        {
          v51 = 0;
          for (i = 0; i != v50; ++i)
          {
            v53 = objc_msgSend_elementAtIndex_(v46, v49, i);
            if (objc_msgSend_isStaticValue(v53, v54, v55))
            {
              v58 = objc_msgSend_staticValue(v53, v56, v57);
              v61 = v58;
              if (v58 && objc_msgSend_nativeType(v58, v59, v60) == 7)
              {
                v64 = objc_msgSend_documentLocale(v10, v62, v63);
                v66 = objc_msgSend_coercedStringWithLocale_(v61, v65, v64);

                if (objc_msgSend_length(v66, v67, v68))
                {
                  v70 = objc_msgSend_localizedTemplateStringForKey_value_table_templateBundle_locale_(TNDocumentRoot, v69, v66, v66, v89, bundleCopy, localeCopy);
                  v72 = objc_msgSend_stringValue_(MEMORY[0x277D80CB0], v71, v70);
                  v73 = [TNChartFormulaArgument alloc];
                  v75 = objc_msgSend_initWithStaticValue_(v73, v74, v72);
                  objc_msgSend_replaceElementAtIndex_withElement_(v46, v76, i, v75);

                  v51 = 1;
                  v10 = v90;
                }
              }
            }
          }

          if (v51)
          {
            v78 = objc_msgSend_documentLocale(v10, v49, v77);
            v80 = objc_msgSend_wrappedChartFormulaWithID_andLocale_(v46, v79, v40 | v85, v78);

            v39 = v86;
            if (v80)
            {
              objc_msgSend_replaceObjectAtIndex_withObject_(v88, v81, v40, v80);
              v84 = 1;
            }
          }

          else
          {
            v39 = v86;
          }
        }

        ++v40;
        v41 = v88;
      }

      while (v40 != v39);
    }

    else
    {
      v41 = v88;
    }
  }

  if (v84)
  {
    objc_msgSend_setFormulaStorage_(selfCopy, v26, v82);
  }
}

- (TSKUIDStruct)entityUID
{
  p_entityUID = &self->_entityUID;
  lower = self->_entityUID._lower;
  upper = p_entityUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  return self;
}

- (id)dataFormatterForAxis:(id)axis documentRoot:(id)root
{
  v51 = *MEMORY[0x277D85DE8];
  axisCopy = axis;
  rootCopy = root;
  v45 = objc_msgSend_axisID(axisCopy, v6, v7);
  v10 = objc_msgSend_type(v45, v8, v9);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = objc_msgSend_chartInfo(self, v11, v12);
  v16 = objc_msgSend_model(v13, v14, v15);
  v19 = objc_msgSend_seriesList(v16, v17, v18);

  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v46, v50, 16);
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    v25 = *v47;
LABEL_3:
    v26 = 0;
    while (1)
    {
      if (*v47 != v25)
      {
        objc_enumerationMutation(v19);
      }

      if (v24)
      {
        break;
      }

      v27 = *(*(&v46 + 1) + 8 * v26);
      v28 = objc_msgSend_axisIDForAxisType_(v27, v21, v10);
      isEqual = objc_msgSend_isEqual_(v45, v29, v28);

      if (isEqual)
      {
        v31 = objc_msgSend_nonDefaultDataFormatterForSeries_index_axisType_documentRoot_(self, v21, v27, 0, v10, rootCopy);
        v33 = v31;
        if (v31)
        {
          if (v23)
          {
            if ((objc_msgSend_isCompatibleWithDataFormatter_(v23, v32, v31) & 1) == 0)
            {

              goto LABEL_20;
            }
          }

          else
          {
            v23 = v31;
          }

          v24 = 1;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }

      if (v22 == ++v26)
      {
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v46, v50, 16);
        if (v22)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
LABEL_20:
    v23 = 0;
  }

  objc_opt_class();
  v34 = TSUDynamicCast();
  v37 = v34;
  if (v34 && objc_msgSend_supportsNumericProperties(v34, v35, v36) && objc_msgSend_useAccountingStyle(v37, v35, v36))
  {
    v38 = objc_msgSend_mutableCopy(v37, v35, v36);
    objc_msgSend_setUseAccountingStyle_(v38, v39, 0);

    if (v38)
    {
LABEL_25:
      v40 = v38;
      goto LABEL_28;
    }
  }

  else
  {
    v38 = v23;
    if (v23)
    {
      goto LABEL_25;
    }
  }

  v40 = objc_msgSend_defaultDecimalNumberFormat(MEMORY[0x277D80048], v35, v36);
LABEL_28:
  v41 = v40;

  return v41;
}

- (id)dataFormatterFromFormat:(id)format in:(id)in
{
  formatCopy = format;
  inCopy = in;
  v11 = objc_msgSend_formatType(formatCopy, v8, v9);
  if ((v11 - 261) > 0xB || ((1 << (v11 - 5)) & 0x881) == 0)
  {
    if (objc_msgSend_supportsFormatType_(MEMORY[0x277D80048], v10, v11))
    {
      objc_msgSend_numberFormatWithTSKFormat_prefixString_suffixString_(MEMORY[0x277D80048], v18, formatCopy, 0, 0);
    }

    else
    {
      objc_msgSend_defaultDecimalNumberFormat(MEMORY[0x277D80048], v18, v19);
    }
    v15 = ;
    v22 = objc_msgSend_chartInfo(self, v20, v21);
    v25 = objc_msgSend_pasteboardCustomFormatList(v22, v23, v24);
    v17 = objc_msgSend_dataFormatterForDocumentRoot_pasteboardCustomFormatList_(v15, v26, inCopy, v25);
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277D80068]);
    v15 = objc_msgSend_initWithTSKFormat_(v13, v14, formatCopy);
    v17 = objc_msgSend_dataFormatterForDocumentRoot_(v15, v16, inCopy);
  }

  return v17;
}

- (id)nonDefaultDataFormatterForSeries:(id)series index:(unint64_t)index axisType:(int)type documentRoot:(id)root
{
  v7 = *&type;
  v216 = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  rootCopy = root;
  v209 = 0;
  v210 = &v209;
  v211 = 0x3032000000;
  v212 = sub_275F2F0A0;
  v213 = sub_275F2F0B0;
  v214 = 0;
  v161 = objc_msgSend_p_chartFormulaStorageForEditingOverride(self, v10, v11);
  if (objc_msgSend_p_isScatterOrBubble(self, v12, v13) && (v16 = objc_msgSend_numberOfDataFormulas(v161, v14, v15), v7 == 1) && v16 == 1 && !objc_msgSend_scheme(v161, v14, v15) || !objc_msgSend_numberOfDataFormulas(v161, v14, v15))
  {
    v19 = objc_msgSend_defaultDecimalNumberFormat(MEMORY[0x277D80048], v14, v15);
    goto LABEL_64;
  }

  if (objc_msgSend_scheme(v161, v14, v15) == 2)
  {
    v19 = objc_msgSend_nonDefaultDataFormatterForSummarySeries_index_axisType_documentRoot_(self, v17, seriesCopy, index, v7, rootCopy);
LABEL_64:
    v135 = v210[5];
    v210[5] = v19;
    goto LABEL_71;
  }

  v20 = objc_msgSend_seriesIndex(seriesCopy, v17, v18);
  v22 = objc_msgSend_seriesDimensionWithSeriesIndex_axisType_(MEMORY[0x277D80058], v21, v20, v7);
  v24 = objc_msgSend_formulaIndexForSeriesDimension_(self, v23, v22);

  if (v24 == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_formulaForID_(v161, v25, 0x100000000);
  }

  else
  {
    objc_msgSend_formulaForID_(v161, v25, v24 | 0x100000000);
  }
  v155 = ;
  v159 = objc_msgSend_calculationEngine(self, v26, v27);
  v205 = 0;
  v206 = &v205;
  v207 = 0x2020000000;
  v208 = 0;
  v30 = objc_msgSend_chartInfo(self, v28, v29);
  v33 = objc_msgSend_chartType(v30, v31, v32);
  v36 = objc_msgSend_maxCellsToCheckForGridValueType(v33, v34, v35);

  v189 = objc_msgSend_entityUID(self, v37, v38);
  v190 = v39;
  v154 = objc_msgSend_argumentCollectionWithCalcEngine_inChart_(v155, v39, v159, &v189);
  if (objc_msgSend_count(v154, v40, v41))
  {
    v44 = objc_msgSend_chartInfo(self, v42, v43);
    v46 = objc_msgSend_intValueForProperty_defaultValue_(v44, v45, 1115, 0);
    v153 = v46 == 0;

    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    obj = objc_msgSend_elementEnumerator(v154, v47, v48);
    v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, &v201, v215, 16);
    if (v52)
    {
      v53 = *v202;
      if (v46)
      {
        v54 = 19;
      }

      else
      {
        v54 = 16;
      }

      v152 = v54;
      v150 = v163;
      v151 = v170;
      v156 = 2 * (v46 == 0);
LABEL_18:
      v55 = 0;
      while (1)
      {
        if (*v202 != v53)
        {
          objc_enumerationMutation(obj);
        }

        if (v206[3] >= v36)
        {
          break;
        }

        v56 = *(*(&v201 + 1) + 8 * v55);
        v57 = objc_msgSend_type(v56, v50, v51);
        if (v57 > 1)
        {
          if (v57 <= 3)
          {
            if (v57 == 2)
            {
              v105 = objc_msgSend_tractReference(v56, v58, v59);
              v106 = MEMORY[0x277D80D40];
              v109 = objc_msgSend_tableUID(v105, v107, v108);
              v111 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(v106, v110, v109, v110, v159);
              if ((objc_msgSend_spansAllRows(v105, v112, v113) & 1) != 0 || objc_msgSend_spansAllColumns(v105, v114, v115))
              {
                v116 = objc_msgSend_calcEngine(v111, v114, v115);
                v189 = objc_msgSend_tableUID(v105, v117, v118);
                v190 = v119;
                v120 = objc_msgSend_tableResolverForTableUID_(v116, v119, &v189);

                if (v120)
                {
                  if (v105)
                  {
                    objc_msgSend_cppCellTractRef(v105, v121, v122);
                  }

                  else
                  {
                    v188 = 0;
                    v186 = 0u;
                    memset(v187, 0, sizeof(v187));
                    v185 = 0u;
                  }

                  objc_msgSend_apparentTractRefForTractRef_rangeContext_(v120, v121, &v185, 0);
                  TSUIndexSet::~TSUIndexSet(v187);
                  TSUIndexSet::~TSUIndexSet(&v185);
                  v124 = objc_alloc(MEMORY[0x277D80C38]);
                  v126 = objc_msgSend_initWithCppCellTractRef_(v124, v125, &v189);

                  TSUIndexSet::~TSUIndexSet(&v193);
                  TSUIndexSet::~TSUIndexSet(&v189);
                  v105 = v126;
                }
              }

              v127 = objc_msgSend_translator(v111, v114, v115);
              v129 = objc_msgSend_viewTractRefForBaseTractRef_(v127, v128, v105);

              v189 = 0;
              v190 = &v189;
              v191 = 0x3032000000;
              v192 = sub_275F2F0A0;
              v193 = sub_275F2F0B0;
              v194 = 0;
              v176[0] = MEMORY[0x277D85DD0];
              v176[1] = 3221225472;
              v176[2] = sub_275F2F22C;
              v176[3] = &unk_27A6A3128;
              v184 = v153;
              v130 = v111;
              v180 = &v205;
              v183 = v36;
              v177 = v130;
              selfCopy = self;
              v179 = rootCopy;
              v181 = &v209;
              v182 = &v189;
              objc_msgSend_foreachCellRect_(v129, v131, v176);

              _Block_object_dispose(&v189, 8);
              goto LABEL_42;
            }

            if (v57 == 3)
            {
              v61 = objc_msgSend_categoryReference(v56, v58, v59);
              v64 = objc_msgSend_calculationEngine(self, v62, v63);
              v175 = 0;
              v66 = objc_msgSend_valueGridForCategoryRef_atRowUid_hidingActionMask_error_(v64, v65, v61, &v189, 0, &v175);
              v67 = v175;

              if (!v67)
              {
                v169[0] = MEMORY[0x277D85DD0];
                v169[1] = 3221225472;
                v170[0] = sub_275F2F4A8;
                v170[1] = &unk_27A6A3150;
                v174 = v36;
                v172 = &v205;
                v170[2] = self;
                v171 = rootCopy;
                v173 = &v209;
                objc_msgSend_enumerateValuesUsingBlock_(v66, v68, v169);
              }

              goto LABEL_42;
            }

            goto LABEL_44;
          }

          if (v57 != 4)
          {
            if (v57 == 6)
            {
              v69 = objc_msgSend_viewTractReference(v56, v58, v59);
              v72 = objc_msgSend_calculationEngine(self, v70, v71);
              v189 = objc_msgSend_tableUID(v69, v73, v74);
              v190 = v75;
              v76 = objc_msgSend_tableResolverForTableUID_(v72, v75, &v189);

              if (v76)
              {
                v168 = 0;
                v78 = objc_msgSend_valuesForViewTractRef_hidingActionMask_outError_(v76, v77, v69, v152, &v168);
                v79 = v168;
                if (!v79)
                {
                  v162[0] = MEMORY[0x277D85DD0];
                  v162[1] = 3221225472;
                  v163[0] = sub_275F2F5E8;
                  v163[1] = &unk_27A6A3150;
                  v167 = v36;
                  v165 = &v205;
                  v163[2] = self;
                  v164 = rootCopy;
                  v166 = &v209;
                  objc_msgSend_enumerateValuesUsingBlock_(v78, v80, v162);
                }
              }

              goto LABEL_42;
            }

LABEL_44:
            v95 = MEMORY[0x277D81150];
            v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TNChartMediator(Formatting) nonDefaultDataFormatterForSeries:index:axisType:documentRoot:]");
            v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator_NumberFormat.mm");
            v101 = objc_msgSend_description(v56, v99, v100);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v95, v102, v96, v98, 288, 0, "unknown formula argument type: %@", v101, v150, v151);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104);
            goto LABEL_42;
          }

          v84 = objc_msgSend_defaultDecimalNumberFormat(MEMORY[0x277D80048], v58, v59);
          if (v84)
          {
            ++v206[3];
            if (v210[5])
            {
              if ((objc_msgSend_isCompatibleWithDataFormatter_(v210[5], v123, v84) & 1) == 0)
              {
                v136 = v210[5];
                v210[5] = 0;

                break;
              }
            }

            else
            {
              objc_storeStrong(v210 + 5, v84);
            }
          }
        }

        else
        {
          if (v56)
          {
            objc_msgSend_rangeReference(v56, v58, v59);
            objc_msgSend_tableInfoForTableUID_withCalcEngine_(MEMORY[0x277D80D40], v60, v186, *(&v186 + 1), v159);
          }

          else
          {
            v185 = 0u;
            v186 = 0u;
            objc_msgSend_tableInfoForTableUID_withCalcEngine_(MEMORY[0x277D80D40], v58, 0, 0, v159);
          }
          v81 = ;
          v84 = v81;
          if (v81)
          {
            v85 = objc_msgSend_translator(v81, v82, v83);
            v88 = objc_msgSend_baseTableModel(v84, v86, v87);
            objc_msgSend_bodyRange(v88, v89, v90);
            v91 = __C();
            v93 = objc_msgSend_viewCellRegionForBaseCellRect_(v85, v92, v91, v92);

            v189 = 0;
            v190 = &v189;
            v191 = 0x3032000000;
            v192 = sub_275F2F0A0;
            v193 = sub_275F2F0B0;
            v194 = 0;
            v195[0] = MEMORY[0x277D85DD0];
            v195[1] = 3221225472;
            v195[2] = sub_275F2F0B8;
            v195[3] = &unk_27A6A30D8;
            v200 = v36;
            v197 = &v205;
            v195[4] = self;
            v196 = rootCopy;
            v198 = &v209;
            v199 = &v189;
            objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(v84, v94, v93, v156, 66058240, v195);

            _Block_object_dispose(&v189, 8);
          }
        }

LABEL_42:
        if (v52 == ++v55)
        {
          v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v201, v215, 16);
          v52 = v132;
          if (v132)
          {
            goto LABEL_18;
          }

          break;
        }
      }
    }

    v134 = obj;
  }

  else
  {
    v133 = objc_msgSend_defaultDecimalNumberFormat(MEMORY[0x277D80048], v42, v43);
    v134 = v210[5];
    v210[5] = v133;
  }

  objc_opt_class();
  v137 = TSUDynamicCast();
  v140 = v137;
  if (v137 && objc_msgSend_supportsNumericProperties(v137, v138, v139) && objc_msgSend_useAccountingStyle(v140, v141, v142))
  {
    v145 = objc_msgSend_mutableCopy(v140, v143, v144);
    objc_msgSend_setUseAccountingStyle_(v145, v146, 0);
    v147 = v210[5];
    v210[5] = v145;
  }

  _Block_object_dispose(&v205, 8);
  v135 = v155;
LABEL_71:

  v148 = v210[5];
  _Block_object_dispose(&v209, 8);

  return v148;
}

- (id)dataFormatterForSeries:(id)series index:(unint64_t)index axisType:(int)type documentRoot:(id)root
{
  v6 = objc_msgSend_nonDefaultDataFormatterForSeries_index_axisType_documentRoot_(self, a2, series, index, *&type, root);
  v9 = v6;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = objc_msgSend_defaultDecimalNumberFormat(MEMORY[0x277D80048], v7, v8);
  }

  v11 = v10;

  return v11;
}

- (id)nonDefaultDataFormatterForSummarySeries:(id)series index:(unint64_t)index axisType:(int)type documentRoot:(id)root
{
  v6 = *&type;
  rootCopy = root;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = sub_275F2F0A0;
  v78 = sub_275F2F0B0;
  v79 = 0;
  v11 = objc_msgSend_seriesIndex(series, v9, v10);
  v14 = objc_msgSend_p_chartFormulaStorageForEditingOverride(self, v12, v13);
  v16 = objc_msgSend_seriesDimensionWithSeriesIndex_axisType_(MEMORY[0x277D80058], v15, v11, v6);
  v18 = objc_msgSend_formulaIndexForSeriesDimension_(self, v17, v16);

  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  v65 = objc_msgSend_calculationEngine(self, v19, v20);
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  v73[3] = 0;
  v24 = objc_msgSend_chartInfo(self, v22, v23);
  v27 = objc_msgSend_chartType(v24, v25, v26);
  v30 = objc_msgSend_maxCellsToCheckForGridValueType(v27, v28, v29);

  v32 = objc_msgSend_formulaListForType_(v14, v31, 1);
  if (objc_msgSend_count(v32, v33, v34))
  {
    v37 = objc_msgSend_objectAtIndex_(v32, v35, 0);
    v40 = objc_msgSend_chartInfo(self, v38, v39);
    v42 = objc_msgSend_intValueForProperty_defaultValue_(v40, v41, 1115, 0);

    v72[0] = objc_msgSend_entityUID(self, v43, v44);
    v72[1] = v45;
    v46 = objc_msgSend_newEvaluationContextWith_inChart_forSummaryChart_(TNChartFormulaWrapper, v45, v65, v72, 1);
    v49 = objc_msgSend_direction(v14, v47, v48) == 1;
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = sub_275F2FBA4;
    v67[3] = &unk_27A6A3178;
    v71 = v30;
    v69 = v73;
    v67[4] = self;
    v68 = rootCopy;
    v70 = &v74;
    objc_msgSend_enumerateOutputGridForSeries_withContext_byRow_shouldSkipHiddenData_withBlock_(v37, v50, v21, v46, v49, v42 != 0, v67);
  }

  else
  {
    v51 = objc_msgSend_defaultDecimalNumberFormat(MEMORY[0x277D80048], v35, v36);
    v37 = v75[5];
    v75[5] = v51;
  }

  objc_opt_class();
  v52 = TSUDynamicCast();
  v55 = v52;
  if (v52 && objc_msgSend_supportsNumericProperties(v52, v53, v54) && objc_msgSend_useAccountingStyle(v55, v56, v57))
  {
    v60 = objc_msgSend_mutableCopy(v55, v58, v59);
    objc_msgSend_setUseAccountingStyle_(v60, v61, 0);
    v62 = v75[5];
    v75[5] = v60;
  }

  v63 = v75[5];

  _Block_object_dispose(v73, 8);
  _Block_object_dispose(&v74, 8);

  return v63;
}

@end