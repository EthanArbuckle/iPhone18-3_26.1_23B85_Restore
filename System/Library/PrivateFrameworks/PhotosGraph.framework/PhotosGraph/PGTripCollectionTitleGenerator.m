@interface PGTripCollectionTitleGenerator
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGTripCollectionTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v4 = a3;
  v5 = [(PGDefaultCollectionTitleGenerator *)self collection];
  v6 = [v5 isLongTrip];

  if (v6)
  {
    v7 = 0;
LABEL_5:
    v10 = [PGTripMemoryTitleGenerator alloc];
    v11 = [(PGTitleGenerator *)self momentNodes];
    v12 = [(PGTitleGenerator *)self titleGenerationContext];
    v13 = [(PGTripMemoryTitleGenerator *)v10 initWithMomentNodes:v11 type:v7 titleGenerationContext:v12];

    if (v4)
    {
      v14 = [(PGTitleGenerator *)v13 title];
      v15 = [(PGTitleGenerator *)v13 subtitle];
      v4[2](v4, v14, v15);
    }

    goto LABEL_11;
  }

  v8 = [(PGDefaultCollectionTitleGenerator *)self collection];
  v9 = [v8 isShortTrip];

  if (v9)
  {
    v7 = 1;
    goto LABEL_5;
  }

  v16 = +[PGLogging sharedLogging];
  v17 = [v16 loggingConnection];

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Collection is not a trip, can't use trip collection title generator", buf, 2u);
  }

  v18.receiver = self;
  v18.super_class = PGTripCollectionTitleGenerator;
  [(PGTitleGenerator *)&v18 _generateTitleAndSubtitleWithResult:v4];
LABEL_11:
}

@end