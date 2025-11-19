@interface PGTripHighlightTitleGenerator
- (PGTripHighlightTitleGenerator)initWithCollection:(id)a3 titleGenerationContext:(id)a4;
- (id)_locationTitle;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGTripHighlightTitleGenerator

- (id)_locationTitle
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__63124;
  v14 = __Block_byref_object_dispose__63125;
  v15 = 0;
  v3 = [(PGTitleGenerator *)self momentNodes];
  v4 = [(PGTitleGenerator *)self lineBreakBehavior];
  v5 = [(PGTitleGenerator *)self titleGenerationContext];
  v6 = [v5 locationHelper];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__PGTripHighlightTitleGenerator__locationTitle__block_invoke;
  v9[3] = &unk_278888460;
  v9[4] = self;
  v9[5] = &v10;
  [PGLocationTitleUtility generateHighlightLocationTitleForTripWithMomentNodes:v3 lineBreakBehavior:v4 locationHelper:v6 result:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __47__PGTripHighlightTitleGenerator__locationTitle__block_invoke(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a2;
  v7 = a3;
  [*(a1 + 32) setUsedLocationNodes:v7];
}

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v4 = a3;
  v5 = [(PGTripHighlightTitleGenerator *)self collection];
  v6 = [v5 isTrip];

  if (v6)
  {
    v7 = [(PGTripHighlightTitleGenerator *)self _locationTitle];
    if (v7)
    {
      v8 = [PGTitle titleWithString:v7 category:4];
      if (!v4)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v8 = 0;
    if (v4)
    {
LABEL_11:
      v4[2](v4, v8, 0);
    }
  }

  else
  {
    v9 = +[PGLogging sharedLogging];
    v10 = [v9 loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 0;
      _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "Collection is not a trip, can't use trip collection title generator", v11, 2u);
    }

    if (v4)
    {
      v4[2](v4, 0, 0);
    }

    v7 = 0;
    v8 = 0;
  }

LABEL_12:
}

- (PGTripHighlightTitleGenerator)initWithCollection:(id)a3 titleGenerationContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 eventEnrichmentMomentNodes];
  v10 = [v9 temporarySet];

  v13.receiver = self;
  v13.super_class = PGTripHighlightTitleGenerator;
  v11 = [(PGTitleGenerator *)&v13 initWithMomentNodes:v10 type:0 titleGenerationContext:v8];

  if (v11)
  {
    objc_storeStrong(&v11->_collection, a3);
  }

  return v11;
}

@end