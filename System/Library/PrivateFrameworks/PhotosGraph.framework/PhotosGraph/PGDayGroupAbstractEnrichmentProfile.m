@interface PGDayGroupAbstractEnrichmentProfile
- (BOOL)canEnrichHighlight:(id)a3 withOptions:(unint64_t)a4;
- (NSString)identifier;
- (PGDayGroupAbstractEnrichmentProfile)initWithCurationManager:(id)a3 loggingConnection:(id)a4;
- (double)promotionScoreWithHighlightInfo:(id)a3;
- (id)curationOptionsWithHighlightInfo:(id)a3 sharingFilter:(unsigned __int16)a4;
- (id)highlightInfoWithHighlight:(id)a3 graph:(id)a4 highlightTailorContext:(id)a5;
- (id)titleWithHighlightInfo:(id)a3 sharingFilter:(unsigned __int16)a4 curatedAssets:(id)a5 keyAsset:(id)a6 createVerboseTitle:(BOOL)a7 error:(id *)a8;
- (unsigned)enrichmentStateWithHighlightInfo:(id)a3 highlightTailorContext:(id)a4;
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

- (double)promotionScoreWithHighlightInfo:(id)a3
{
  v5 = a3;
  v6 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v6);
}

- (id)curationOptionsWithHighlightInfo:(id)a3 sharingFilter:(unsigned __int16)a4
{
  v6 = a3;
  v7 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v7);
}

- (id)titleWithHighlightInfo:(id)a3 sharingFilter:(unsigned __int16)a4 curatedAssets:(id)a5 keyAsset:(id)a6 createVerboseTitle:(BOOL)a7 error:(id *)a8
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v15);
}

- (id)highlightInfoWithHighlight:(id)a3 graph:(id)a4 highlightTailorContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[PGHighlightTailorHighlightInfo alloc] initWithHighlight:v9 graph:v8 highlightTailorContext:v7];

  return v10;
}

- (BOOL)canEnrichHighlight:(id)a3 withOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v7);
}

- (unsigned)enrichmentStateWithHighlightInfo:(id)a3 highlightTailorContext:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [a3 childHighlights];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 uuid];
        v14 = [v5 pendingEnrichmentStateForHighlightUUID:v13];

        if (!v14)
        {
          v14 = [v12 enrichmentState];
        }

        if (v10 >= v14)
        {
          v10 = v14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (PGDayGroupAbstractEnrichmentProfile)initWithCurationManager:(id)a3 loggingConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PGDayGroupAbstractEnrichmentProfile;
  v9 = [(PGDayGroupAbstractEnrichmentProfile *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_curationManager, a3);
    objc_storeStrong(&v10->_loggingConnection, a4);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mutableDebugInfos = v10->_mutableDebugInfos;
    v10->_mutableDebugInfos = v11;
  }

  return v10;
}

@end