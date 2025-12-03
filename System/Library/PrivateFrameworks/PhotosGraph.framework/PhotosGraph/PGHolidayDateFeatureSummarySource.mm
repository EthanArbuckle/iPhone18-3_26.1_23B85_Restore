@interface PGHolidayDateFeatureSummarySource
- (PGHolidayDateFeatureSummarySource)initWithLoggingConnection:(id)connection titleGenerationContext:(id)context graph:(id)graph;
- (id)summarizedFeaturesForMomentNodes:(id)nodes;
@end

@implementation PGHolidayDateFeatureSummarySource

- (id)summarizedFeaturesForMomentNodes:(id)nodes
{
  v26 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  dateNodes = [nodesCopy dateNodes];
  if (![dateNodes count] || (objc_msgSend(nodesCopy, "celebratedHolidayNodes"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    v8 = MEMORY[0x277CBEBF8];
    goto LABEL_11;
  }

  v9 = [dateNodes set];
  v22 = 0;
  v10 = [PGCommonTitleUtility containsCelebrationForDateNodes:v9 holidayName:&v22 titleGenerationContext:self->_titleGenerationContext graph:self->_graph];
  v11 = v22;

  if (!v10)
  {
    goto LABEL_9;
  }

  if (!v11)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = dateNodes;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Date %@ contains celebration but holiday name is nil", buf, 0xCu);
    }

LABEL_9:
    v8 = MEMORY[0x277CBEBF8];
    goto LABEL_10;
  }

  v12 = [PGGraphHolidayNodeCollection holidayNodesWithName:v11 inGraph:self->_graph];
  dateNodes2 = [v12 dateNodes];
  momentNodes = [dateNodes2 momentNodes];
  v15 = [momentNodes collectionByIntersecting:nodesCopy];

  v16 = [PGHolidayDateSummarizedFeature alloc];
  universalDateIntervals = [v15 universalDateIntervals];
  v18 = [(PGHolidayDateSummarizedFeature *)v16 initWithIntervalsPresent:universalDateIntervals isMandatoryForKeyAsset:0 holidayName:v11];

  v23 = v18;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];

LABEL_10:
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

- (PGHolidayDateFeatureSummarySource)initWithLoggingConnection:(id)connection titleGenerationContext:(id)context graph:(id)graph
{
  connectionCopy = connection;
  contextCopy = context;
  graphCopy = graph;
  v15.receiver = self;
  v15.super_class = PGHolidayDateFeatureSummarySource;
  v12 = [(PGHolidayDateFeatureSummarySource *)&v15 init];
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