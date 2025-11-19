@interface PGCLIPQueryAssetFilter
- (BOOL)passesWithAsset:(id)a3;
- (PGCLIPQueryAssetFilter)initWithPositiveQueryEmbeddings:(id)a3 cosineSimilarityThresholdByVersion:(id)a4;
- (double)cosineSimilarityBetweenQueryEmbedding:(id)a3 assetEmbedding:(id)a4;
- (id)filteredAssetsFromAssets:(id)a3;
@end

@implementation PGCLIPQueryAssetFilter

- (double)cosineSimilarityBetweenQueryEmbedding:(id)a3 assetEmbedding:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 length];
  v8 = [v6 elementCount];
  v9 = [v6 elementType];
  v10 = 0.0;
  if (v8 == v7 >> 2 && v9 == 1)
  {
    v11 = [v6 descriptorData];
    v12 = [v11 bytes];

    v13 = [v5 bytes];
    if (v12)
    {
      if (v13)
      {
        v14 = 0.0;
        if (v7 >= 4)
        {
          v15 = v7 >> 2;
          v16 = 0.0;
          v17 = 0.0;
          do
          {
            v18 = *v12++;
            v19 = v18;
            v20 = *v13++;
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

- (BOOL)passesWithAsset:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 curationModel];
  v6 = [v5 CLIPprintModel];
  v7 = [v6 version];

  if (v7 == [MEMORY[0x277D3CAB0] latestVersion])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    v9 = [v8 stringValue];

    v10 = [(NSDictionary *)self->_cosineSimilarityThresholdByVersion allKeys];
    if ([v10 containsObject:v9])
    {
      v11 = [(NSDictionary *)self->_cosineSimilarityThresholdByVersion objectForKeyedSubscript:v9];
      [v11 doubleValue];
      v13 = v12;

      v14 = [v4 clsSceneprint];
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

            [(PGCLIPQueryAssetFilter *)self cosineSimilarityBetweenQueryEmbedding:*(*(&v24 + 1) + 8 * i) assetEmbedding:v14, v24];
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

- (id)filteredAssetsFromAssets:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__PGCLIPQueryAssetFilter_filteredAssetsFromAssets___block_invoke;
  v8[3] = &unk_2788894C0;
  v8[4] = self;
  v4 = a3;
  v5 = [v3 predicateWithBlock:v8];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  return v6;
}

- (PGCLIPQueryAssetFilter)initWithPositiveQueryEmbeddings:(id)a3 cosineSimilarityThresholdByVersion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGCLIPQueryAssetFilter;
  v9 = [(PGCLIPQueryAssetFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_positiveQueryEmbeddings, a3);
    objc_storeStrong(&v10->_cosineSimilarityThresholdByVersion, a4);
  }

  return v10;
}

@end