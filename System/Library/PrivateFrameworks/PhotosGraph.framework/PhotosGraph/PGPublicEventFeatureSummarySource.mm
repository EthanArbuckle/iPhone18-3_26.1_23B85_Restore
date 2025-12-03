@interface PGPublicEventFeatureSummarySource
- (PGPublicEventFeatureSummarySource)initWithLoggingConnection:(id)connection titleGenerationContext:(id)context graph:(id)graph;
- (id)summarizedFeaturesForMomentNodes:(id)nodes;
@end

@implementation PGPublicEventFeatureSummarySource

- (id)summarizedFeaturesForMomentNodes:(id)nodes
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(MAElementCollection *)self->_momentNodesWithRelevantPublicEvent collectionByIntersecting:nodes];
  if ([v3 count])
  {
    appleEvents = [MEMORY[0x277D27780] appleEvents];
    v5 = [PGPublicEventSummarizedFeature alloc];
    universalDateIntervals = [v3 universalDateIntervals];
    v7 = [(PGPublicEventSummarizedFeature *)v5 initWithIntervalsPresent:universalDateIntervals isMandatoryForKeyAsset:0 publicEventLabel:appleEvents];

    v11[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (PGPublicEventFeatureSummarySource)initWithLoggingConnection:(id)connection titleGenerationContext:(id)context graph:(id)graph
{
  connectionCopy = connection;
  contextCopy = context;
  graphCopy = graph;
  v19.receiver = self;
  v19.super_class = PGPublicEventFeatureSummarySource;
  v12 = [(PGPublicEventFeatureSummarySource *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_loggingConnection, connection);
    objc_storeStrong(&v13->_titleGenerationContext, context);
    objc_storeStrong(&v13->_graph, graph);
    appleEventsCategoryNodes = [(PGTitleGenerationContext *)v13->_titleGenerationContext appleEventsCategoryNodes];
    publicEventNodes = [appleEventsCategoryNodes publicEventNodes];
    momentNodes = [publicEventNodes momentNodes];
    momentNodesWithRelevantPublicEvent = v13->_momentNodesWithRelevantPublicEvent;
    v13->_momentNodesWithRelevantPublicEvent = momentNodes;
  }

  return v13;
}

@end