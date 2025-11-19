@interface PGPublicEventContextualRule
- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)a3;
- (PGPublicEventContextualRule)initWithGraph:(id)a3 photoLibrary:(id)a4 loggingConnection:(id)a5;
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

- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = [a3 localToday];
  v5 = [PGGraphMonthDayNodeCollection monthDayNodesForLocalDate:v4 inGraph:self->_graph];
  v6 = [v5 dateNodes];
  v7 = [v6 momentNodes];

  v8 = [v7 publicEventNodes];
  v33 = [v8 isEmpty];
  v9 = objc_alloc(MEMORY[0x277CCA970]);
  v10 = [v4 dateByAddingTimeInterval:-172800.0];
  v11 = [v9 initWithStartDate:v10 endDate:v4];

  v12 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:v11 inGraph:self->_graph];
  v13 = [v12 publicEventNodes];
  v32 = [v13 isEmpty];
  v14 = [v8 collectionByFormingUnionWith:v13];
  publicEventNodes = self->_publicEventNodes;
  self->_publicEventNodes = v14;

  v16 = [(MAElementCollection *)self->_publicEventNodes count];
  if (v16)
  {
    v17 = [(PGGraphPublicEventNodeCollection *)self->_publicEventNodes categoryNodes];
    [v17 labels];
    v31 = v4;
    v18 = v8;
    v19 = v12;
    v20 = v11;
    v21 = v7;
    v23 = v22 = v5;

    v24 = [PGGraphPublicEventNodeCollection publicEventNodesWithCategories:v23 inGraph:self->_graph];
    v25 = [v24 momentNodes];
    momentNodesMatchingPublicEvents = self->_momentNodesMatchingPublicEvents;
    self->_momentNodesMatchingPublicEvents = v25;

    v5 = v22;
    v7 = v21;
    v11 = v20;
    v12 = v19;
    v8 = v18;
    v4 = v31;
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v28 = self->_publicEventNodes;
    *buf = 138413314;
    v35 = self;
    v36 = 1024;
    v37 = v16 != 0;
    v38 = 2112;
    v39 = v28;
    v40 = 1024;
    v41 = v32 ^ 1;
    v42 = 1024;
    v43 = v33 ^ 1;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "%@: canProvideContextualKeyAssets: %d\n\tMatched public events: %@\n\tRecently at public event: %d\n\tMatched on this day public event: %d", buf, 0x28u);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v16 != 0;
}

- (PGPublicEventContextualRule)initWithGraph:(id)a3 photoLibrary:(id)a4 loggingConnection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGPublicEventContextualRule;
  v12 = [(PGPublicEventContextualRule *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_graph, a3);
    objc_storeStrong(&v13->_photoLibrary, a4);
    objc_storeStrong(&v13->_loggingConnection, a5);
  }

  return v13;
}

@end