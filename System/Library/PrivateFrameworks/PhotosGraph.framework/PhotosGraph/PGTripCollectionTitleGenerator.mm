@interface PGTripCollectionTitleGenerator
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGTripCollectionTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  resultCopy = result;
  collection = [(PGDefaultCollectionTitleGenerator *)self collection];
  isLongTrip = [collection isLongTrip];

  if (isLongTrip)
  {
    v7 = 0;
LABEL_5:
    v10 = [PGTripMemoryTitleGenerator alloc];
    momentNodes = [(PGTitleGenerator *)self momentNodes];
    titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
    v13 = [(PGTripMemoryTitleGenerator *)v10 initWithMomentNodes:momentNodes type:v7 titleGenerationContext:titleGenerationContext];

    if (resultCopy)
    {
      title = [(PGTitleGenerator *)v13 title];
      subtitle = [(PGTitleGenerator *)v13 subtitle];
      resultCopy[2](resultCopy, title, subtitle);
    }

    goto LABEL_11;
  }

  collection2 = [(PGDefaultCollectionTitleGenerator *)self collection];
  isShortTrip = [collection2 isShortTrip];

  if (isShortTrip)
  {
    v7 = 1;
    goto LABEL_5;
  }

  v16 = +[PGLogging sharedLogging];
  loggingConnection = [v16 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Collection is not a trip, can't use trip collection title generator", buf, 2u);
  }

  v18.receiver = self;
  v18.super_class = PGTripCollectionTitleGenerator;
  [(PGTitleGenerator *)&v18 _generateTitleAndSubtitleWithResult:resultCopy];
LABEL_11:
}

@end