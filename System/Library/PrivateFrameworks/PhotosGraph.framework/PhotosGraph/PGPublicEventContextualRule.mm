@interface PGPublicEventContextualRule
- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)options;
- (PGPublicEventContextualRule)initWithGraph:(id)graph photoLibrary:(id)library loggingConnection:(id)connection;
@end

@implementation PGPublicEventContextualRule

void __141__PGPublicEventContextualRule_enumerateContextualKeyAssetsForYearHighlight_sharingFilter_withOptions_modelReader_curationContext_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 localStartDate];
  [v3 timeIntervalSinceDate:*(a1 + 32)];
  v5 = fabs(v4);

  if (v5 / 86400.0 <= 0.0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 1.0 / (v5 / 86400.0);
  }

  [PGContextualRuleUtils returnContextualKeyAssetForHighlightNode:v7 yearHighlight:*(a1 + 40) sharingFilter:*(a1 + 64) score:*(*(a1 + 48) + 32) inPhotoLibrary:*(*(a1 + 48) + 40) loggingConnection:*(a1 + 56) usingBlock:v6];
}

- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)options
{
  v44 = *MEMORY[0x277D85DE8];
  localToday = [options localToday];
  v5 = [PGGraphMonthDayNodeCollection monthDayNodesForLocalDate:localToday inGraph:self->_graph];
  dateNodes = [v5 dateNodes];
  momentNodes = [dateNodes momentNodes];

  publicEventNodes = [momentNodes publicEventNodes];
  isEmpty = [publicEventNodes isEmpty];
  v9 = objc_alloc(MEMORY[0x277CCA970]);
  v10 = [localToday dateByAddingTimeInterval:-172800.0];
  v11 = [v9 initWithStartDate:v10 endDate:localToday];

  v12 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:v11 inGraph:self->_graph];
  publicEventNodes2 = [v12 publicEventNodes];
  isEmpty2 = [publicEventNodes2 isEmpty];
  v14 = [publicEventNodes collectionByFormingUnionWith:publicEventNodes2];
  publicEventNodes = self->_publicEventNodes;
  self->_publicEventNodes = v14;

  v16 = [(MAElementCollection *)self->_publicEventNodes count];
  if (v16)
  {
    categoryNodes = [(PGGraphPublicEventNodeCollection *)self->_publicEventNodes categoryNodes];
    [categoryNodes labels];
    v31 = localToday;
    v18 = publicEventNodes;
    v19 = v12;
    v20 = v11;
    v21 = momentNodes;
    v23 = v22 = v5;

    v24 = [PGGraphPublicEventNodeCollection publicEventNodesWithCategories:v23 inGraph:self->_graph];
    momentNodes2 = [v24 momentNodes];
    momentNodesMatchingPublicEvents = self->_momentNodesMatchingPublicEvents;
    self->_momentNodesMatchingPublicEvents = momentNodes2;

    v5 = v22;
    momentNodes = v21;
    v11 = v20;
    v12 = v19;
    publicEventNodes = v18;
    localToday = v31;
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v28 = self->_publicEventNodes;
    *buf = 138413314;
    selfCopy = self;
    v36 = 1024;
    v37 = v16 != 0;
    v38 = 2112;
    v39 = v28;
    v40 = 1024;
    v41 = isEmpty2 ^ 1;
    v42 = 1024;
    v43 = isEmpty ^ 1;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "%@: canProvideContextualKeyAssets: %d\n\tMatched public events: %@\n\tRecently at public event: %d\n\tMatched on this day public event: %d", buf, 0x28u);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v16 != 0;
}

- (PGPublicEventContextualRule)initWithGraph:(id)graph photoLibrary:(id)library loggingConnection:(id)connection
{
  graphCopy = graph;
  libraryCopy = library;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = PGPublicEventContextualRule;
  v12 = [(PGPublicEventContextualRule *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_graph, graph);
    objc_storeStrong(&v13->_photoLibrary, library);
    objc_storeStrong(&v13->_loggingConnection, connection);
  }

  return v13;
}

@end