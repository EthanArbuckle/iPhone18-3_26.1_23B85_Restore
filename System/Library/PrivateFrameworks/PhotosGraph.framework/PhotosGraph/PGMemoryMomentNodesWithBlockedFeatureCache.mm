@interface PGMemoryMomentNodesWithBlockedFeatureCache
- (PGMemoryMomentNodesWithBlockedFeatureCache)initWithUserFeedbackCalculator:(id)calculator loggingConnection:(id)connection;
- (id)momentNodesWithBlockedFeatureInGraph:(id)graph progressReporter:(id)reporter;
- (void)prefetchMomentNodesWithBlockedFeatureIfNeededInGraph:(id)graph progressReporter:(id)reporter;
@end

@implementation PGMemoryMomentNodesWithBlockedFeatureCache

- (id)momentNodesWithBlockedFeatureInGraph:(id)graph progressReporter:(id)reporter
{
  [(PGMemoryMomentNodesWithBlockedFeatureCache *)self prefetchMomentNodesWithBlockedFeatureIfNeededInGraph:graph progressReporter:reporter];
  momentNodesWithBlockedFeature = self->_momentNodesWithBlockedFeature;

  return momentNodesWithBlockedFeature;
}

- (void)prefetchMomentNodesWithBlockedFeatureIfNeededInGraph:(id)graph progressReporter:(id)reporter
{
  if (!self->_momentNodesWithBlockedFeature)
  {
    v6 = [PGMemoryFeatureBlocking momentNodesWithBlockedFeatureInGraph:graph userFeedbackCalculator:self->_userFeedbackCalculator loggingConnection:self->_loggingConnection progressReporter:reporter];
    momentNodesWithBlockedFeature = self->_momentNodesWithBlockedFeature;
    self->_momentNodesWithBlockedFeature = v6;
  }
}

- (PGMemoryMomentNodesWithBlockedFeatureCache)initWithUserFeedbackCalculator:(id)calculator loggingConnection:(id)connection
{
  calculatorCopy = calculator;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = PGMemoryMomentNodesWithBlockedFeatureCache;
  v9 = [(PGMemoryMomentNodesWithBlockedFeatureCache *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userFeedbackCalculator, calculator);
    objc_storeStrong(&v10->_loggingConnection, connection);
  }

  return v10;
}

@end