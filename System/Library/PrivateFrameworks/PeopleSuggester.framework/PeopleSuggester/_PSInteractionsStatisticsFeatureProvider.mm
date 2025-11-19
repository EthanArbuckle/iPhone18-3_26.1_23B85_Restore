@interface _PSInteractionsStatisticsFeatureProvider
- (_PSInteractionsStatisticsFeatureProvider)initWithInteractionsStatistics:(id)a3;
- (id)featureValueForFeature:(id)a3 forConversationId:(id)a4;
- (id)mlFeatures;
- (id)mlFeaturesForConversationId:(id)a3;
@end

@implementation _PSInteractionsStatisticsFeatureProvider

- (_PSInteractionsStatisticsFeatureProvider)initWithInteractionsStatistics:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v42.receiver = self;
  v42.super_class = _PSInteractionsStatisticsFeatureProvider;
  v5 = [(_PSInteractionsStatisticsFeatureProvider *)&v42 init];
  if (v5)
  {
    v6 = objc_opt_new();
    mlFeatures = v5->_mlFeatures;
    v5->_mlFeatures = v6;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [v4 properties];
    v8 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v39;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v38 + 1) + 8 * i);
          v13 = objc_opt_new();
          v14 = [v4 properties];
          v15 = [v14 objectForKeyedSubscript:v12];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __75___PSInteractionsStatisticsFeatureProvider_initWithInteractionsStatistics___block_invoke;
          v36[3] = &unk_1E7C23C68;
          v37 = v13;
          v16 = v13;
          [v15 enumerateKeysAndObjectsUsingBlock:v36];

          [(NSMutableDictionary *)v5->_mlFeatures setObject:v16 forKeyedSubscript:v12];
        }

        v9 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v9);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obja = [v4 features];
    v17 = [obja countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(obja);
          }

          v21 = *(*(&v32 + 1) + 8 * j);
          v22 = [(NSMutableDictionary *)v5->_mlFeatures objectForKeyedSubscript:v21];
          if (!v22)
          {
            v22 = objc_opt_new();
            [(NSMutableDictionary *)v5->_mlFeatures setObject:v22 forKeyedSubscript:v21];
          }

          v23 = [v4 features];
          v24 = [v23 objectForKeyedSubscript:v21];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __75___PSInteractionsStatisticsFeatureProvider_initWithInteractionsStatistics___block_invoke_2;
          v30[3] = &unk_1E7C23C90;
          v31 = v22;
          v25 = v22;
          [v24 enumerateKeysAndObjectsUsingBlock:v30];
        }

        v18 = [obja countByEnumeratingWithState:&v32 objects:v43 count:16];
      }

      while (v18);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)mlFeatures
{
  v2 = [(NSMutableDictionary *)self->_mlFeatures copy];

  return v2;
}

- (id)mlFeaturesForConversationId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_mlFeatures objectForKeyedSubscript:a3];
  v4 = [v3 copy];

  return v4;
}

- (id)featureValueForFeature:(id)a3 forConversationId:(id)a4
{
  mlFeatures = self->_mlFeatures;
  v6 = a3;
  v7 = [(NSMutableDictionary *)mlFeatures objectForKeyedSubscript:a4];
  v8 = [v7 featureValueForName:v6];

  v9 = [v8 copy];

  return v9;
}

@end