@interface PGBusinessLocationFeatureSummarySource
- (PGBusinessLocationFeatureSummarySource)initWithLoggingConnection:(id)a3 titleGenerationContext:(id)a4 graph:(id)a5;
- (id)summarizedBusinessNodesForMomentNode:(id)a3;
- (id)summarizedFeaturesForMomentNodes:(id)a3;
@end

@implementation PGBusinessLocationFeatureSummarySource

- (id)summarizedBusinessNodesForMomentNode:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PGLocationTitleUtility businessNodeForTitlingFromMomentNodes:v4 businessNodesByMomentNode:self->_businessNodesByMomentNode];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 collection];
    v8 = [(PGGraphEdgeCollection *)PGGraphPlaceBusinessEdgeCollection edgesFromNodes:v4 toNodes:v7];

    v9 = [v8 anyEdge];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 universalStartDate];
      v12 = [v10 universalEndDate];
      v13 = v12;
      if (v11)
      {
        v14 = v12 == 0;
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
          v25 = [v6 muid];
          _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[PGBusinessLocationFeatureSummarySource] No start and end date found for business edge for business node %llu", buf, 0xCu);
        }

        v20 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v11 endDate:v12];
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

- (id)summarizedFeaturesForMomentNodes:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__PGBusinessLocationFeatureSummarySource_summarizedFeaturesForMomentNodes___block_invoke;
  v11[3] = &unk_27887FD40;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v5 enumerateIdentifiersAsCollectionsWithBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __75__PGBusinessLocationFeatureSummarySource_summarizedFeaturesForMomentNodes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) summarizedBusinessNodesForMomentNode:?];
  [*(a1 + 40) addObjectsFromArray:v2];
}

- (PGBusinessLocationFeatureSummarySource)initWithLoggingConnection:(id)a3 titleGenerationContext:(id)a4 graph:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = PGBusinessLocationFeatureSummarySource;
  v12 = [(PGBusinessLocationFeatureSummarySource *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_loggingConnection, a3);
    objc_storeStrong(&v13->_titleGenerationContext, a4);
    objc_storeStrong(&v13->_graph, a5);
    v14 = MEMORY[0x277D22BF8];
    v15 = [(PGGraphNodeCollection *)PGGraphBusinessNodeCollection nodesInGraph:v11];
    v16 = +[PGGraphBusinessNode momentOfBusiness];
    v17 = [v14 adjacencyWithSources:v15 relation:v16 targetsClass:objc_opt_class()];

    v18 = [v17 transposed];
    businessNodesByMomentNode = v13->_businessNodesByMomentNode;
    v13->_businessNodesByMomentNode = v18;
  }

  return v13;
}

@end