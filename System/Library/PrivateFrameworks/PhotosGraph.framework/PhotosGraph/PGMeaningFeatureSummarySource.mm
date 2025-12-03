@interface PGMeaningFeatureSummarySource
- (PGMeaningFeatureSummarySource)initWithLoggingConnection:(id)connection titleGenerationContext:(id)context graph:(id)graph;
- (id)summarizedFeaturesForMomentNodes:(id)nodes;
@end

@implementation PGMeaningFeatureSummarySource

- (id)summarizedFeaturesForMomentNodes:(id)nodes
{
  v21[1] = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  temporarySet = [nodesCopy temporarySet];
  v6 = [PGHighlightTitleGenerator commonMeaningLabelForTitleUsingMomentNodes:temporarySet];
  if (v6)
  {
    v7 = +[PGMeaningfulEventRequiredCriteriaFactory availableMeaningLabels];
    v8 = [v7 containsObject:v6];

    if (v8)
    {
      if (+[PGUserDefaults isAlwaysShowingHolidayCalendarEvents])
      {
        [v6 isEqualToString:@"HolidayEvent"];
LABEL_5:
        v21[0] = v6;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
        v10 = [PGGraphMeaningNodeCollection meaningNodesWithMeaningLabels:v9 inGraph:self->_graph];

        momentNodes = [v10 momentNodes];
        v12 = [momentNodes collectionByIntersecting:nodesCopy];

        v13 = [PGMeaningSummarizedFeature alloc];
        universalDateIntervals = [v12 universalDateIntervals];
        v15 = [(PGMeaningSummarizedFeature *)v13 initWithIntervalsPresent:universalDateIntervals isMandatoryForKeyAsset:0 meaningLabel:v6];

        v20 = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];

        goto LABEL_9;
      }

      v17 = +[PGUserDefaults isShowingHolidayCalendarEvents];
      if (![v6 isEqualToString:@"HolidayEvent"] || v17)
      {
        goto LABEL_5;
      }
    }
  }

  v16 = MEMORY[0x277CBEBF8];
LABEL_9:

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (PGMeaningFeatureSummarySource)initWithLoggingConnection:(id)connection titleGenerationContext:(id)context graph:(id)graph
{
  connectionCopy = connection;
  contextCopy = context;
  graphCopy = graph;
  v15.receiver = self;
  v15.super_class = PGMeaningFeatureSummarySource;
  v12 = [(PGMeaningFeatureSummarySource *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_loggingConnection, connection);
    objc_storeStrong(&v13->_titleGenerationContext, context);
    objc_storeStrong(&v13->_graph, graph);
  }

  return v13;
}

@end