@interface TSCHMultiDataChartRepMultiDataBuildStages
+ (id)buildStagesWithRep:(id)rep stages:(_NSRange)stages totalDuration:(double)duration;
+ (unint64_t)dataSetIndexForRep:(id)rep buildStage:(unint64_t)stage;
- (BOOL)isFadingInLayers;
- (TSCHMultiDataChartRepMultiDataBuildStages)initWithRep:(id)rep stages:(_NSRange)stages totalDuration:(double)duration;
- (id)chartLayout;
- (unint64_t)dataSetIndexForStage:(unint64_t)stage;
- (void)setupLayoutDataSetIndexForCurrentStage;
- (void)setupLayoutDataSetIndexForNextStage;
@end

@implementation TSCHMultiDataChartRepMultiDataBuildStages

+ (unint64_t)dataSetIndexForRep:(id)rep buildStage:(unint64_t)stage
{
  v8 = objc_msgSend_numberOfFadingBuildStages(self, a2, v4, v5, v6, rep);
  if (stage >= v8)
  {
    return stage - v8;
  }

  else
  {
    return 0;
  }
}

+ (id)buildStagesWithRep:(id)rep stages:(_NSRange)stages totalDuration:(double)duration
{
  length = stages.length;
  location = stages.location;
  repCopy = rep;
  v10 = [self alloc];
  v14 = objc_msgSend_initWithRep_stages_totalDuration_(v10, v11, duration, v12, v13, repCopy, location, length);

  return v14;
}

- (TSCHMultiDataChartRepMultiDataBuildStages)initWithRep:(id)rep stages:(_NSRange)stages totalDuration:(double)duration
{
  length = stages.length;
  location = stages.location;
  repCopy = rep;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCHMultiDataChartRepMultiDataBuildStages initWithRep:stages:totalDuration:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMultiDataChartRepMultiDataBuildStages.m");
    v38.location = 0x7FFFFFFFFFFFFFFFLL;
    v38.length = length;
    v21 = NSStringFromRange(v38);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v23, v24, v25, v15, v20, 43, 0, "invalid stages %@", v21);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v37.receiver = self;
  v37.super_class = TSCHMultiDataChartRepMultiDataBuildStages;
  v30 = [(TSCHMultiDataChartRepMultiDataBuildStages *)&v37 init];
  v31 = v30;
  if (v30)
  {
    objc_storeWeak(&v30->_rep, repCopy);
    v31->_stages.location = location;
    v31->_stages.length = length;
    v32 = duration / length;
    v31->_totalDuration = duration;
    v31->_duration = v32;
    v31->_currentStage = location;
    objc_msgSend_setupLayoutDataSetIndexForCurrentStage(v31, v33, v32, v34, v35);
  }

  return v31;
}

- (void)setupLayoutDataSetIndexForCurrentStage
{
  v6 = objc_msgSend_dataSetIndexForStage_(self, a2, v2, v3, v4, self->_currentStage);
  v15 = objc_msgSend_chartLayout(self, v7, v8, v9, v10);
  objc_msgSend_setDataSetIndex_(v15, v11, v12, v13, v14, v6);
}

- (void)setupLayoutDataSetIndexForNextStage
{
  v6 = objc_msgSend_dataSetIndexForStage_(self, a2, v2, v3, v4, self->_currentStage + 1);
  v15 = objc_msgSend_chartLayout(self, v7, v8, v9, v10);
  objc_msgSend_setDataSetIndex_(v15, v11, v12, v13, v14, v6);
}

- (id)chartLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);
  v7 = objc_msgSend_chartLayout(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (BOOL)isFadingInLayers
{
  currentStage = self->_currentStage;
  v3 = objc_opt_class();
  return currentStage < objc_msgSend_numberOfFadingBuildStages(v3, v4, v5, v6, v7);
}

- (unint64_t)dataSetIndexForStage:(unint64_t)stage
{
  v5 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_rep);
  v11 = objc_msgSend_dataSetIndexForRep_buildStage_(v5, v7, v8, v9, v10, WeakRetained, stage);

  return v11;
}

@end