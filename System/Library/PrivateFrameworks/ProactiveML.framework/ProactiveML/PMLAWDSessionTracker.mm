@interface PMLAWDSessionTracker
- (void)trackSessionWithCovariates:(id)covariates label:(unint64_t)label locale:(id)locale supervisionType:(unint64_t)type;
@end

@implementation PMLAWDSessionTracker

- (void)trackSessionWithCovariates:(id)covariates label:(unint64_t)label locale:(id)locale supervisionType:(unint64_t)type
{
  localeCopy = locale;
  covariatesCopy = covariates;
  v16 = objc_opt_new();
  modelInfo = [(PMLAWDBaseTracker *)self modelInfo];
  v13 = [modelInfo copy];
  [v16 setModelInfo:v13];

  modelInfo2 = [v16 modelInfo];
  [modelInfo2 setLocale:localeCopy];

  v15 = [AWDProactiveModelFittingSparseFloatVector sparseFloatVectorFromSparseVector:covariatesCopy];

  [v16 setSparseFloatFeatures:v15];
  [v16 setLabel:label];
  [v16 setSupervisionType:type];
  [(PMLAWDBaseTracker *)self postMetricId:5636097 message:v16];
}

@end