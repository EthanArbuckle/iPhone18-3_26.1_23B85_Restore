@interface PGMemoryMomentNodesWithBlockedFeatureCache
- (PGMemoryMomentNodesWithBlockedFeatureCache)initWithUserFeedbackCalculator:(id)a3 loggingConnection:(id)a4;
- (id)momentNodesWithBlockedFeatureInGraph:(id)a3 progressReporter:(id)a4;
- (void)prefetchMomentNodesWithBlockedFeatureIfNeededInGraph:(id)a3 progressReporter:(id)a4;
@end

@implementation PGMemoryMomentNodesWithBlockedFeatureCache

- (id)momentNodesWithBlockedFeatureInGraph:(id)a3 progressReporter:(id)a4
{
  [(PGMemoryMomentNodesWithBlockedFeatureCache *)self prefetchMomentNodesWithBlockedFeatureIfNeededInGraph:a3 progressReporter:a4];
  momentNodesWithBlockedFeature = self->_momentNodesWithBlockedFeature;

  return momentNodesWithBlockedFeature;
}

- (void)prefetchMomentNodesWithBlockedFeatureIfNeededInGraph:(id)a3 progressReporter:(id)a4
{
  if (!self->_momentNodesWithBlockedFeature)
  {
    v6 = [PGMemoryFeatureBlocking momentNodesWithBlockedFeatureInGraph:a3 userFeedbackCalculator:self->_userFeedbackCalculator loggingConnection:self->_loggingConnection progressReporter:a4];
    momentNodesWithBlockedFeature = self->_momentNodesWithBlockedFeature;
    self->_momentNodesWithBlockedFeature = v6;
  }
}

- (PGMemoryMomentNodesWithBlockedFeatureCache)initWithUserFeedbackCalculator:(id)a3 loggingConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGMemoryMomentNodesWithBlockedFeatureCache;
  v9 = [(PGMemoryMomentNodesWithBlockedFeatureCache *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userFeedbackCalculator, a3);
    objc_storeStrong(&v10->_loggingConnection, a4);
  }

  return v10;
}

@end