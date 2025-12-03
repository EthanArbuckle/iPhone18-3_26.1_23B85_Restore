@interface PGTripHighlightTitleGenerator
- (PGTripHighlightTitleGenerator)initWithCollection:(id)collection titleGenerationContext:(id)context;
- (id)_locationTitle;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
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
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  lineBreakBehavior = [(PGTitleGenerator *)self lineBreakBehavior];
  titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
  locationHelper = [titleGenerationContext locationHelper];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__PGTripHighlightTitleGenerator__locationTitle__block_invoke;
  v9[3] = &unk_278888460;
  v9[4] = self;
  v9[5] = &v10;
  [PGLocationTitleUtility generateHighlightLocationTitleForTripWithMomentNodes:momentNodes lineBreakBehavior:lineBreakBehavior locationHelper:locationHelper result:v9];

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

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  resultCopy = result;
  collection = [(PGTripHighlightTitleGenerator *)self collection];
  isTrip = [collection isTrip];

  if (isTrip)
  {
    _locationTitle = [(PGTripHighlightTitleGenerator *)self _locationTitle];
    if (_locationTitle)
    {
      v8 = [PGTitle titleWithString:_locationTitle category:4];
      if (!resultCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v8 = 0;
    if (resultCopy)
    {
LABEL_11:
      resultCopy[2](resultCopy, v8, 0);
    }
  }

  else
  {
    v9 = +[PGLogging sharedLogging];
    loggingConnection = [v9 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v11[0] = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Collection is not a trip, can't use trip collection title generator", v11, 2u);
    }

    if (resultCopy)
    {
      resultCopy[2](resultCopy, 0, 0);
    }

    _locationTitle = 0;
    v8 = 0;
  }

LABEL_12:
}

- (PGTripHighlightTitleGenerator)initWithCollection:(id)collection titleGenerationContext:(id)context
{
  collectionCopy = collection;
  contextCopy = context;
  eventEnrichmentMomentNodes = [collectionCopy eventEnrichmentMomentNodes];
  temporarySet = [eventEnrichmentMomentNodes temporarySet];

  v13.receiver = self;
  v13.super_class = PGTripHighlightTitleGenerator;
  v11 = [(PGTitleGenerator *)&v13 initWithMomentNodes:temporarySet type:0 titleGenerationContext:contextCopy];

  if (v11)
  {
    objc_storeStrong(&v11->_collection, collection);
  }

  return v11;
}

@end