@interface PGDayGroupAbstractEnrichmentProfile
- (BOOL)canEnrichHighlight:(id)highlight withOptions:(unint64_t)options;
- (NSString)identifier;
- (PGDayGroupAbstractEnrichmentProfile)initWithCurationManager:(id)manager loggingConnection:(id)connection;
- (double)promotionScoreWithHighlightInfo:(id)info;
- (id)curationOptionsWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter;
- (id)highlightInfoWithHighlight:(id)highlight graph:(id)graph highlightTailorContext:(id)context;
- (id)titleWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter curatedAssets:(id)assets keyAsset:(id)asset createVerboseTitle:(BOOL)title error:(id *)error;
- (unsigned)enrichmentStateWithHighlightInfo:(id)info highlightTailorContext:(id)context;
@end

@implementation PGDayGroupAbstractEnrichmentProfile

void __100__PGDayGroupAbstractEnrichmentProfile_summaryCurationWithHighlightInfo_sharingFilter_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (double)promotionScoreWithHighlightInfo:(id)info
{
  infoCopy = info;
  v6 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v6);
}

- (id)curationOptionsWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter
{
  infoCopy = info;
  v7 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v7);
}

- (id)titleWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter curatedAssets:(id)assets keyAsset:(id)asset createVerboseTitle:(BOOL)title error:(id *)error
{
  infoCopy = info;
  assetsCopy = assets;
  assetCopy = asset;
  v15 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v15);
}

- (id)highlightInfoWithHighlight:(id)highlight graph:(id)graph highlightTailorContext:(id)context
{
  contextCopy = context;
  graphCopy = graph;
  highlightCopy = highlight;
  v10 = [[PGHighlightTailorHighlightInfo alloc] initWithHighlight:highlightCopy graph:graphCopy highlightTailorContext:contextCopy];

  return v10;
}

- (BOOL)canEnrichHighlight:(id)highlight withOptions:(unint64_t)options
{
  highlightCopy = highlight;
  v7 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v7);
}

- (unsigned)enrichmentStateWithHighlightInfo:(id)info highlightTailorContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  childHighlights = [info childHighlights];
  v7 = [childHighlights countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 4;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(childHighlights);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        uuid = [v12 uuid];
        enrichmentState = [contextCopy pendingEnrichmentStateForHighlightUUID:uuid];

        if (!enrichmentState)
        {
          enrichmentState = [v12 enrichmentState];
        }

        if (v10 >= enrichmentState)
        {
          v10 = enrichmentState;
        }
      }

      v8 = [childHighlights countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 4;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (NSString)identifier
{
  v2 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (PGDayGroupAbstractEnrichmentProfile)initWithCurationManager:(id)manager loggingConnection:(id)connection
{
  managerCopy = manager;
  connectionCopy = connection;
  v14.receiver = self;
  v14.super_class = PGDayGroupAbstractEnrichmentProfile;
  v9 = [(PGDayGroupAbstractEnrichmentProfile *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_curationManager, manager);
    objc_storeStrong(&v10->_loggingConnection, connection);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mutableDebugInfos = v10->_mutableDebugInfos;
    v10->_mutableDebugInfos = v11;
  }

  return v10;
}

@end