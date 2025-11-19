@interface PGDayHighlightFeatureSummaryGenerator
- (PGDayHighlightFeatureSummaryGenerator)initWithHighlightNode:(id)a3 loggingConnection:(id)a4 highlightTailorContext:(id)a5 graph:(id)a6;
- (double)durationFromDateIntervals:(id)a3;
- (id)sortedSummarizedFeaturesForMomentNodes:(id)a3;
- (unint64_t)locationGranularityScoreForSummarizedFeatureSubtype:(unsigned __int16)a3;
@end

@implementation PGDayHighlightFeatureSummaryGenerator

- (unint64_t)locationGranularityScoreForSummarizedFeatureSubtype:(unsigned __int16)a3
{
  if ((a3 - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return 5 - (a3 - 1);
  }
}

- (double)durationFromDateIntervals:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * i) duration];
        v7 = v7 + v9;
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)sortedSummarizedFeaturesForMomentNodes:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31 = [(PGHighlightTailorContext *)self->_highlightTailorContext locationFeatureSummarySource];
  v5 = [v31 summarizedFeaturesForMomentNodes:v4];
  if (![v5 count])
  {
    v6 = [v4 addressNodes];
    v7 = [v6 count];

    if (v7)
    {
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        highlightNode = self->_highlightNode;
        v26 = loggingConnection;
        v27 = [(PGGraphHighlightNode *)highlightNode localIdentifier];
        *buf = 138412290;
        v34 = v27;
        _os_log_error_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_ERROR, "No summarized features found for highlight, %@", buf, 0xCu);
      }
    }
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __80__PGDayHighlightFeatureSummaryGenerator_sortedSummarizedFeaturesForMomentNodes___block_invoke;
  v32[3] = &unk_278883008;
  v32[4] = self;
  v30 = v5;
  v9 = [v5 sortedArrayUsingComparator:v32];
  v29 = [(PGHighlightTailorContext *)self->_highlightTailorContext meaningFeatureSummarySource];
  v10 = [v29 summarizedFeaturesForMomentNodes:v4];
  v28 = [(PGHighlightTailorContext *)self->_highlightTailorContext holidayDateFeatureSummarySource];
  v11 = [v28 summarizedFeaturesForMomentNodes:v4];
  v12 = [(PGHighlightTailorContext *)self->_highlightTailorContext publicEventFeatureSummarySource];
  v13 = [v12 summarizedFeaturesForMomentNodes:v4];
  v14 = [(PGHighlightTailorContext *)self->_highlightTailorContext businessFeatureSummarySource];
  v15 = [v14 summarizedFeaturesForMomentNodes:v4];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = v9;
  if ([v15 count] == 1)
  {
    v18 = [v15 firstObject];
  }

  else
  {
    if (![v9 count])
    {
      goto LABEL_10;
    }

    v18 = [v9 objectAtIndexedSubscript:0];
  }

  v19 = v18;
  [v16 addObject:v18];

  v9 = v17;
LABEL_10:
  if ([v10 count] == 1)
  {
    v20 = [v10 firstObject];
    [v16 addObject:v20];

    v9 = v17;
  }

  if ([v11 count] == 1)
  {
    v21 = [v11 firstObject];
    [v16 addObject:v21];

    v9 = v17;
  }

  if ([v13 count] == 1)
  {
    v22 = [v13 firstObject];
    [v16 addObject:v22];

    v9 = v17;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __80__PGDayHighlightFeatureSummaryGenerator_sortedSummarizedFeaturesForMomentNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 numberOfAssets];
  v8 = [v6 numberOfAssets];
  if (v7 <= v8)
  {
    if (v8 > v7)
    {
      v9 = 1;
      goto LABEL_10;
    }

    v10 = [v5 intervalsPresent];
    v11 = [v6 intervalsPresent];
    [*(a1 + 32) durationFromDateIntervals:v10];
    v13 = v12;
    [*(a1 + 32) durationFromDateIntervals:v11];
    if (v13 > v14)
    {
      goto LABEL_6;
    }

    if (v14 > v13)
    {
LABEL_8:
      v9 = 1;
      goto LABEL_9;
    }

    v16 = [*(a1 + 32) locationGranularityScoreForSummarizedFeatureSubtype:{objc_msgSend(v5, "subtype")}];
    v17 = [*(a1 + 32) locationGranularityScoreForSummarizedFeatureSubtype:{objc_msgSend(v6, "subtype")}];
    if (v16 <= v17)
    {
      if (v17 > v16)
      {
        goto LABEL_8;
      }

      v18 = [v5 locationNode];
      [v18 centroidCoordinate];
      v20 = v19;
      v22 = v21;

      v23 = [v6 locationNode];
      [v23 centroidCoordinate];
      v25 = v24;
      v27 = v26;

      if (v20 <= v25)
      {
        if (v20 >= v25)
        {
          if (v22 <= v27)
          {
            v9 = 1;
          }

          else
          {
            v9 = -1;
          }

          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

LABEL_6:
    v9 = -1;
LABEL_9:

    goto LABEL_10;
  }

  v9 = -1;
LABEL_10:

  return v9;
}

- (PGDayHighlightFeatureSummaryGenerator)initWithHighlightNode:(id)a3 loggingConnection:(id)a4 highlightTailorContext:(id)a5 graph:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PGDayHighlightFeatureSummaryGenerator;
  v15 = [(PGDayHighlightFeatureSummaryGenerator *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_highlightNode, a3);
    objc_storeStrong(&v16->_loggingConnection, a4);
    objc_storeStrong(&v16->_highlightTailorContext, a5);
    objc_storeStrong(&v16->_graph, a6);
  }

  return v16;
}

@end