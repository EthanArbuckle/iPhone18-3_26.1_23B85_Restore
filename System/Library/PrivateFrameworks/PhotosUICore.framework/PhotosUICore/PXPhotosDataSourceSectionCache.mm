@interface PXPhotosDataSourceSectionCache
- (PXPhotosDataSourceSectionCache)initWithCollectionListFetchResult:(id)a3;
@end

@implementation PXPhotosDataSourceSectionCache

- (PXPhotosDataSourceSectionCache)initWithCollectionListFetchResult:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v38.receiver = self;
  v38.super_class = PXPhotosDataSourceSectionCache;
  v6 = [(PXPhotosDataSourceSectionCache *)&v38 init];
  if (v6)
  {
    v30 = a3;
    v33 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v31 = v5;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (!v8)
    {
      goto LABEL_33;
    }

    v9 = v8;
    v10 = 0;
    v11 = *v35;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        if ([v13 alwaysRecalculateCounts])
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
        }

        else
        {
          v14 = [v13 estimatedAssetCount];
          v17 = [v13 estimatedPhotosCount];
          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = 0;
          }

          else
          {
            v15 = v17;
          }

          v18 = [v13 estimatedVideosCount];
          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = 0;
          }

          else
          {
            v16 = v18;
          }

          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = 0;
          }
        }

        v19 = v6->_estimatedVideosCount + v16;
        v6->_estimatedPhotosCount += v15;
        v6->_estimatedVideosCount = v19;
        if (v14 < 1)
        {
          if ([v13 isRecent])
          {
            goto LABEL_27;
          }

LABEL_25:
          p_estimatedAssetCountWithEnrichmentStateComplete = &v6->_estimatedAssetCountWithEnrichmentStateComplete;
          p_numberOfEnrichmentStateCompleteAssetCollections = &v6->_numberOfEnrichmentStateCompleteAssetCollections;
LABEL_26:
          ++*p_numberOfEnrichmentStateCompleteAssetCollections;
          *p_estimatedAssetCountWithEnrichmentStateComplete += v14;
          goto LABEL_27;
        }

        v6->_estimatedOtherCount += v14 - (v15 + v16);
        if ([v13 isRecent])
        {
          goto LABEL_27;
        }

        v20 = [v13 px_highlightEnrichmentState];
        if (v20 <= 1)
        {
          p_estimatedAssetCountWithEnrichmentStateComplete = &v6->_estimatedAssetCountWithEnrichmentStateNotEnriched;
          p_numberOfEnrichmentStateCompleteAssetCollections = &v6->_numberOfEnrichmentStateNotEnrichedAssetCollections;
          if (!v20)
          {
            goto LABEL_26;
          }

          p_estimatedAssetCountWithEnrichmentStateComplete = &v6->_estimatedAssetCountWithEnrichmentStateAssetMetadataOnly;
          p_numberOfEnrichmentStateCompleteAssetCollections = &v6->_numberOfEnrichmentStateAssetMetadataOnlyAssetCollections;
          if (v20 == 1)
          {
            goto LABEL_26;
          }
        }

        else
        {
          p_estimatedAssetCountWithEnrichmentStateComplete = &v6->_estimatedAssetCountWithEnrichmentStateAssetMetadataAndScore;
          p_numberOfEnrichmentStateCompleteAssetCollections = &v6->_numberOfEnrichmentStateAssetMetadataAndScoreAssetCollections;
          if (v20 == 2)
          {
            goto LABEL_26;
          }

          p_estimatedAssetCountWithEnrichmentStateComplete = &v6->_estimatedAssetCountWithEnrichmentStateAssetMetadataAndScenesProcessed;
          p_numberOfEnrichmentStateCompleteAssetCollections = &v6->_numberOfEnrichmentStateAssetMetadataAndScenesProcessedAssetCollections;
          if (v20 == 3)
          {
            goto LABEL_26;
          }

          if (v20 == 4)
          {
            goto LABEL_25;
          }
        }

LABEL_27:
        [(NSArray *)v7 addObject:v13];
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
        [(NSDictionary *)v33 setObject:v23 forKeyedSubscript:v13];

        ++v10;
        ++v12;
      }

      while (v9 != v12);
      v24 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      v9 = v24;
      if (!v24)
      {
LABEL_33:

        assetCollections = v6->_assetCollections;
        v6->_assetCollections = v7;
        v26 = v7;

        assetCollectionToSection = v6->_assetCollectionToSection;
        v6->_assetCollectionToSection = v33;
        v28 = v33;

        objc_storeStrong(&v6->_collectionListFetchResult, v30);
        v5 = v31;
        break;
      }
    }
  }

  return v6;
}

@end