@interface PGAggregationHighlightTitleGenerator
- (PGAggregationHighlightTitleGenerator)initWithCollection:(id)collection keyAsset:(id)asset curatedAssetCollection:(id)assetCollection titleGenerationContext:(id)context;
- (PGAggregationHighlightTitleGenerator)initWithMomentNodes:(id)nodes keyAsset:(id)asset curatedAssetCollection:(id)collection titleGenerationContext:(id)context;
- (id)_locationTitleUsingKeyAssetAddressNode:(id)node curationAddressNodes:(id)nodes;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGAggregationHighlightTitleGenerator

- (id)_locationTitleUsingKeyAssetAddressNode:(id)node curationAddressNodes:(id)nodes
{
  v40 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  nodesCopy = nodes;
  titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
  locationHelper = [titleGenerationContext locationHelper];

  if (nodeCopy && ([locationHelper cityNodeFromAddressNode:nodeCopy], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "anyNode"), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = nodesCopy;
    v12 = nodesCopy;
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

          v17 = [locationHelper cityNodeFromAddressNode:*(*(&v34 + 1) + 8 * i)];
          anyNode = [v17 anyNode];

          LODWORD(v17) = [v11 isSameNodeAsNode:anyNode];
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

    v21 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:v11 locationHelper:locationHelper];
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

    lineBreakBehavior = [(PGTitleGenerator *)self lineBreakBehavior];
    v38 = v21;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v30 = [PGLocationTitleUtility _titleWithLineBreakBehavior:lineBreakBehavior forTitle:v27 titleComponents:v29];

    v20 = v30;
    nodesCopy = v33;
  }

  else
  {
    v20 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  resultCopy = result;
  keyAsset = [(PGTitleGenerator *)self keyAsset];
  if (keyAsset && (v5 = keyAsset, [(PGTitleGenerator *)self curatedAssetCollection], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    _addressNodeFromKeyAsset = [(PGTitleGenerator *)self _addressNodeFromKeyAsset];
    _addressNodesFromCuratedAssetCollection = [(PGTitleGenerator *)self _addressNodesFromCuratedAssetCollection];
    v9 = [(PGAggregationHighlightTitleGenerator *)self _locationTitleUsingKeyAssetAddressNode:_addressNodeFromKeyAsset curationAddressNodes:_addressNodesFromCuratedAssetCollection];

    if (v9)
    {
      v10 = [PGTitle titleWithString:v9 category:4];
    }

    else
    {
      v10 = 0;
    }

    if (resultCopy)
    {
      resultCopy[2](resultCopy, v10, 0);
    }
  }

  else
  {
    v11 = resultCopy;
    if (!resultCopy)
    {
      goto LABEL_12;
    }

    resultCopy[2](resultCopy, 0, 0);
  }

  v11 = resultCopy;
LABEL_12:
}

- (PGAggregationHighlightTitleGenerator)initWithMomentNodes:(id)nodes keyAsset:(id)asset curatedAssetCollection:(id)collection titleGenerationContext:(id)context
{
  v7.receiver = self;
  v7.super_class = PGAggregationHighlightTitleGenerator;
  return [(PGTitleGenerator *)&v7 initWithMomentNodes:nodes referenceDateInterval:0 keyAsset:asset curatedAssetCollection:collection assetCollection:collection type:0 titleGenerationContext:context];
}

- (PGAggregationHighlightTitleGenerator)initWithCollection:(id)collection keyAsset:(id)asset curatedAssetCollection:(id)assetCollection titleGenerationContext:(id)context
{
  collectionCopy = collection;
  assetCopy = asset;
  assetCollectionCopy = assetCollection;
  contextCopy = context;
  if ([collectionCopy isAggregation])
  {
    eventEnrichmentMomentNodes = [collectionCopy eventEnrichmentMomentNodes];
    temporarySet = [eventEnrichmentMomentNodes temporarySet];

    self = [(PGAggregationHighlightTitleGenerator *)self initWithMomentNodes:temporarySet keyAsset:assetCopy curatedAssetCollection:assetCollectionCopy titleGenerationContext:contextCopy];
    selfCopy = self;
  }

  else
  {
    v17 = +[PGLogging sharedLogging];
    loggingConnection = [v17 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Collection is not an aggregation, can't use aggregation collection title generator", v20, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end