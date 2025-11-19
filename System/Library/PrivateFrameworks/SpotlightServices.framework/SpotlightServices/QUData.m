@interface QUData
- (QUData)initWithQueryContext:(id)a3;
@end

@implementation QUData

- (QUData)initWithQueryContext:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = QUData;
  v5 = [(QUData *)&v24 init];
  if (v5)
  {
    v6 = _os_feature_enabled_impl();
    if (v4)
    {
      if (v6)
      {
        v7 = [v4 queryUnderstandingOutput];
        v8 = [v7 count];

        if (v8 >= 2)
        {
          v9 = [v4 queryUnderstandingOutput];
          v10 = [v9 objectForKeyedSubscript:@"kQPQUIntentIds"];

          v11 = [v4 queryUnderstandingOutput];
          v12 = [v11 objectForKeyedSubscript:@"kQPQUIntentLabels"];

          v13 = [v4 queryUnderstandingOutput];
          v14 = [v13 objectForKeyedSubscript:@"kQPQUIntentScores"];

          v15 = [v10 firstObject];
          v16 = [v15 intValue];

          if (v16 >= 1)
          {
            v17 = [v12 firstObject];
            intentLabel = v5->_intentLabel;
            v5->_intentLabel = v17;

            v19 = [v14 firstObject];
            [v19 floatValue];
            v5->_intentScore = v20;

            if (v5->_intentLabel)
            {
              v21 = [SSRankingManager bundleIDSetsForQUIntent:?];
              intentBundleIds = v5->_intentBundleIds;
              v5->_intentBundleIds = v21;
            }
          }
        }
      }
    }
  }

  return v5;
}

@end