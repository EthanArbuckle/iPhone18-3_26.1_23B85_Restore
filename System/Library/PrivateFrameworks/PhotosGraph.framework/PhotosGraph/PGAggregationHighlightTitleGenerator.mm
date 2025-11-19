@interface PGAggregationHighlightTitleGenerator
- (PGAggregationHighlightTitleGenerator)initWithCollection:(id)a3 keyAsset:(id)a4 curatedAssetCollection:(id)a5 titleGenerationContext:(id)a6;
- (PGAggregationHighlightTitleGenerator)initWithMomentNodes:(id)a3 keyAsset:(id)a4 curatedAssetCollection:(id)a5 titleGenerationContext:(id)a6;
- (id)_locationTitleUsingKeyAssetAddressNode:(id)a3 curationAddressNodes:(id)a4;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGAggregationHighlightTitleGenerator

- (id)_locationTitleUsingKeyAssetAddressNode:(id)a3 curationAddressNodes:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PGTitleGenerator *)self titleGenerationContext];
  v9 = [v8 locationHelper];

  if (v6 && ([v9 cityNodeFromAddressNode:v6], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "anyNode"), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = v7;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [v9 cityNodeFromAddressNode:*(*(&v34 + 1) + 8 * i)];
          v18 = [v17 anyNode];

          LODWORD(v17) = [v11 isSameNodeAsNode:v18];
          if (!v17)
          {
            v19 = 1;
            goto LABEL_14;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v19 = 0;
LABEL_14:

    v21 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:v11 locationHelper:v9];
    v22 = MEMORY[0x277CCACA8];
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = v23;
    if (v19)
    {
      v25 = @"PGAggregationHighlightTitleFormatOneLocationAndMore %@";
    }

    else
    {
      v25 = @"PGAggregationHighlightTitleFormatOneLocation %@";
    }

    v26 = [v23 localizedStringForKey:v25 value:v25 table:@"Localizable"];
    v27 = [v22 localizedStringWithFormat:v26, v21];

    v28 = [(PGTitleGenerator *)self lineBreakBehavior];
    v38 = v21;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v30 = [PGLocationTitleUtility _titleWithLineBreakBehavior:v28 forTitle:v27 titleComponents:v29];

    v20 = v30;
    v7 = v33;
  }

  else
  {
    v20 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v12 = a3;
  v4 = [(PGTitleGenerator *)self keyAsset];
  if (v4 && (v5 = v4, [(PGTitleGenerator *)self curatedAssetCollection], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [(PGTitleGenerator *)self _addressNodeFromKeyAsset];
    v8 = [(PGTitleGenerator *)self _addressNodesFromCuratedAssetCollection];
    v9 = [(PGAggregationHighlightTitleGenerator *)self _locationTitleUsingKeyAssetAddressNode:v7 curationAddressNodes:v8];

    if (v9)
    {
      v10 = [PGTitle titleWithString:v9 category:4];
    }

    else
    {
      v10 = 0;
    }

    if (v12)
    {
      v12[2](v12, v10, 0);
    }
  }

  else
  {
    v11 = v12;
    if (!v12)
    {
      goto LABEL_12;
    }

    v12[2](v12, 0, 0);
  }

  v11 = v12;
LABEL_12:
}

- (PGAggregationHighlightTitleGenerator)initWithMomentNodes:(id)a3 keyAsset:(id)a4 curatedAssetCollection:(id)a5 titleGenerationContext:(id)a6
{
  v7.receiver = self;
  v7.super_class = PGAggregationHighlightTitleGenerator;
  return [(PGTitleGenerator *)&v7 initWithMomentNodes:a3 referenceDateInterval:0 keyAsset:a4 curatedAssetCollection:a5 assetCollection:a5 type:0 titleGenerationContext:a6];
}

- (PGAggregationHighlightTitleGenerator)initWithCollection:(id)a3 keyAsset:(id)a4 curatedAssetCollection:(id)a5 titleGenerationContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 isAggregation])
  {
    v14 = [v10 eventEnrichmentMomentNodes];
    v15 = [v14 temporarySet];

    self = [(PGAggregationHighlightTitleGenerator *)self initWithMomentNodes:v15 keyAsset:v11 curatedAssetCollection:v12 titleGenerationContext:v13];
    v16 = self;
  }

  else
  {
    v17 = +[PGLogging sharedLogging];
    v18 = [v17 loggingConnection];

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Collection is not an aggregation, can't use aggregation collection title generator", v20, 2u);
    }

    v16 = 0;
  }

  return v16;
}

@end