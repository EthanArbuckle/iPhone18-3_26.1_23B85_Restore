@interface PGCLIPQueryAssetFilter
- (BOOL)passesWithAsset:(id)asset;
- (PGCLIPQueryAssetFilter)initWithPositiveQueryEmbeddings:(id)embeddings cosineSimilarityThresholdByVersion:(id)version;
- (double)cosineSimilarityBetweenQueryEmbedding:(id)embedding assetEmbedding:(id)assetEmbedding;
- (id)filteredAssetsFromAssets:(id)assets;
@end

@implementation PGCLIPQueryAssetFilter

- (double)cosineSimilarityBetweenQueryEmbedding:(id)embedding assetEmbedding:(id)assetEmbedding
{
  embeddingCopy = embedding;
  assetEmbeddingCopy = assetEmbedding;
  v7 = [embeddingCopy length];
  elementCount = [assetEmbeddingCopy elementCount];
  elementType = [assetEmbeddingCopy elementType];
  v10 = 0.0;
  if (elementCount == v7 >> 2 && elementType == 1)
  {
    descriptorData = [assetEmbeddingCopy descriptorData];
    bytes = [descriptorData bytes];

    bytes2 = [embeddingCopy bytes];
    if (bytes)
    {
      if (bytes2)
      {
        v14 = 0.0;
        if (v7 >= 4)
        {
          v15 = v7 >> 2;
          v16 = 0.0;
          v17 = 0.0;
          do
          {
            v18 = *bytes++;
            v19 = v18;
            v20 = *bytes2++;
            v14 = v14 + (v19 * v20);
            v16 = v16 + (v19 * v19);
            v17 = v17 + (v20 * v20);
            --v15;
          }

          while (v15);
          if (v16 > 0.0 && v17 > 0.0)
          {
            v14 = v14 / sqrtf(v17 * v16);
          }
        }

        v10 = v14;
      }
    }
  }

  return v10;
}

- (BOOL)passesWithAsset:(id)asset
{
  v29 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  curationModel = [assetCopy curationModel];
  cLIPprintModel = [curationModel CLIPprintModel];
  version = [cLIPprintModel version];

  if (version == [MEMORY[0x277D3CAB0] latestVersion])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
    stringValue = [v8 stringValue];

    allKeys = [(NSDictionary *)self->_cosineSimilarityThresholdByVersion allKeys];
    if ([allKeys containsObject:stringValue])
    {
      v11 = [(NSDictionary *)self->_cosineSimilarityThresholdByVersion objectForKeyedSubscript:stringValue];
      [v11 doubleValue];
      v13 = v12;

      clsSceneprint = [assetCopy clsSceneprint];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = self->_positiveQueryEmbeddings;
      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v25;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [(PGCLIPQueryAssetFilter *)self cosineSimilarityBetweenQueryEmbedding:*(*(&v24 + 1) + 8 * i) assetEmbedding:clsSceneprint, v24];
            if (v20 >= v13)
            {
              v21 = 1;
              goto LABEL_15;
            }
          }

          v17 = [(NSArray *)v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v21 = 0;
LABEL_15:
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)filteredAssetsFromAssets:(id)assets
{
  v3 = MEMORY[0x277CCAC30];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__PGCLIPQueryAssetFilter_filteredAssetsFromAssets___block_invoke;
  v8[3] = &unk_2788894C0;
  v8[4] = self;
  assetsCopy = assets;
  v5 = [v3 predicateWithBlock:v8];
  v6 = [assetsCopy filteredArrayUsingPredicate:v5];

  return v6;
}

- (PGCLIPQueryAssetFilter)initWithPositiveQueryEmbeddings:(id)embeddings cosineSimilarityThresholdByVersion:(id)version
{
  embeddingsCopy = embeddings;
  versionCopy = version;
  v12.receiver = self;
  v12.super_class = PGCLIPQueryAssetFilter;
  v9 = [(PGCLIPQueryAssetFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_positiveQueryEmbeddings, embeddings);
    objc_storeStrong(&v10->_cosineSimilarityThresholdByVersion, version);
  }

  return v10;
}

@end