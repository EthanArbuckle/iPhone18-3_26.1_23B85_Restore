@interface PMLAWDSessionTracker
- (void)trackSessionWithCovariates:(id)a3 label:(unint64_t)a4 locale:(id)a5 supervisionType:(unint64_t)a6;
@end

@implementation PMLAWDSessionTracker

- (void)trackSessionWithCovariates:(id)a3 label:(unint64_t)a4 locale:(id)a5 supervisionType:(unint64_t)a6
{
  v10 = a5;
  v11 = a3;
  v16 = objc_opt_new();
  v12 = [(PMLAWDBaseTracker *)self modelInfo];
  v13 = [v12 copy];
  [v16 setModelInfo:v13];

  v14 = [v16 modelInfo];
  [v14 setLocale:v10];

  v15 = [AWDProactiveModelFittingSparseFloatVector sparseFloatVectorFromSparseVector:v11];

  [v16 setSparseFloatFeatures:v15];
  [v16 setLabel:a4];
  [v16 setSupervisionType:a6];
  [(PMLAWDBaseTracker *)self postMetricId:5636097 message:v16];
}

@end