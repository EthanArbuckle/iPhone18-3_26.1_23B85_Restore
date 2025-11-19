@interface PGPublicEventFeatureSummarySource
- (PGPublicEventFeatureSummarySource)initWithLoggingConnection:(id)a3 titleGenerationContext:(id)a4 graph:(id)a5;
- (id)summarizedFeaturesForMomentNodes:(id)a3;
@end

@implementation PGPublicEventFeatureSummarySource

- (id)summarizedFeaturesForMomentNodes:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(MAElementCollection *)self->_momentNodesWithRelevantPublicEvent collectionByIntersecting:a3];
  if ([v3 count])
  {
    v4 = [MEMORY[0x277D27780] appleEvents];
    v5 = [PGPublicEventSummarizedFeature alloc];
    v6 = [v3 universalDateIntervals];
    v7 = [(PGPublicEventSummarizedFeature *)v5 initWithIntervalsPresent:v6 isMandatoryForKeyAsset:0 publicEventLabel:v4];

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

- (PGPublicEventFeatureSummarySource)initWithLoggingConnection:(id)a3 titleGenerationContext:(id)a4 graph:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = PGPublicEventFeatureSummarySource;
  v12 = [(PGPublicEventFeatureSummarySource *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_loggingConnection, a3);
    objc_storeStrong(&v13->_titleGenerationContext, a4);
    objc_storeStrong(&v13->_graph, a5);
    v14 = [(PGTitleGenerationContext *)v13->_titleGenerationContext appleEventsCategoryNodes];
    v15 = [v14 publicEventNodes];
    v16 = [v15 momentNodes];
    momentNodesWithRelevantPublicEvent = v13->_momentNodesWithRelevantPublicEvent;
    v13->_momentNodesWithRelevantPublicEvent = v16;
  }

  return v13;
}

@end