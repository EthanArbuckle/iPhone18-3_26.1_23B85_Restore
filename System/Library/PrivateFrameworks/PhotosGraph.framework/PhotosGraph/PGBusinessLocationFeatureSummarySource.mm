@interface PGBusinessLocationFeatureSummarySource
- (PGBusinessLocationFeatureSummarySource)initWithLoggingConnection:(id)connection titleGenerationContext:(id)context graph:(id)graph;
- (id)summarizedBusinessNodesForMomentNode:(id)node;
- (id)summarizedFeaturesForMomentNodes:(id)nodes;
@end

@implementation PGBusinessLocationFeatureSummarySource

- (id)summarizedBusinessNodesForMomentNode:(id)node
{
  v26 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v5 = [PGLocationTitleUtility businessNodeForTitlingFromMomentNodes:nodeCopy businessNodesByMomentNode:self->_businessNodesByMomentNode];
  v6 = v5;
  if (v5)
  {
    collection = [v5 collection];
    v8 = [(PGGraphEdgeCollection *)PGGraphPlaceBusinessEdgeCollection edgesFromNodes:nodeCopy toNodes:collection];

    anyEdge = [v8 anyEdge];
    v10 = anyEdge;
    if (anyEdge)
    {
      universalStartDate = [anyEdge universalStartDate];
      universalEndDate = [v10 universalEndDate];
      v13 = universalEndDate;
      if (universalStartDate)
      {
        v14 = universalEndDate == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        loggingConnection = self->_loggingConnection;
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
        {
          v16 = loggingConnection;
          *buf = 134217984;
          muid = [v6 muid];
          _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[PGBusinessLocationFeatureSummarySource] No start and end date found for business edge for business node %llu", buf, 0xCu);
        }

        v20 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:universalStartDate endDate:universalEndDate];
        v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v17, 0}];
        v19 = [[PGBusinessLocationSummarizedFeature alloc] initWithIntervalsPresent:v18 isMandatoryForKeyAsset:1 businessNode:v6];
        v23 = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      }
    }

    else
    {
      v20 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)summarizedFeaturesForMomentNodes:(id)nodes
{
  v4 = MEMORY[0x277CBEB18];
  nodesCopy = nodes;
  v6 = objc_alloc_init(v4);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__PGBusinessLocationFeatureSummarySource_summarizedFeaturesForMomentNodes___block_invoke;
  v11[3] = &unk_27887FD40;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [nodesCopy enumerateIdentifiersAsCollectionsWithBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __75__PGBusinessLocationFeatureSummarySource_summarizedFeaturesForMomentNodes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) summarizedBusinessNodesForMomentNode:?];
  [*(a1 + 40) addObjectsFromArray:v2];
}

- (PGBusinessLocationFeatureSummarySource)initWithLoggingConnection:(id)connection titleGenerationContext:(id)context graph:(id)graph
{
  connectionCopy = connection;
  contextCopy = context;
  graphCopy = graph;
  v21.receiver = self;
  v21.super_class = PGBusinessLocationFeatureSummarySource;
  v12 = [(PGBusinessLocationFeatureSummarySource *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_loggingConnection, connection);
    objc_storeStrong(&v13->_titleGenerationContext, context);
    objc_storeStrong(&v13->_graph, graph);
    v14 = MEMORY[0x277D22BF8];
    v15 = [(PGGraphNodeCollection *)PGGraphBusinessNodeCollection nodesInGraph:graphCopy];
    v16 = +[PGGraphBusinessNode momentOfBusiness];
    v17 = [v14 adjacencyWithSources:v15 relation:v16 targetsClass:objc_opt_class()];

    transposed = [v17 transposed];
    businessNodesByMomentNode = v13->_businessNodesByMomentNode;
    v13->_businessNodesByMomentNode = transposed;
  }

  return v13;
}

@end