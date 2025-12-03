@interface QUData
- (QUData)initWithQueryContext:(id)context;
@end

@implementation QUData

- (QUData)initWithQueryContext:(id)context
{
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = QUData;
  v5 = [(QUData *)&v24 init];
  if (v5)
  {
    v6 = _os_feature_enabled_impl();
    if (contextCopy)
    {
      if (v6)
      {
        queryUnderstandingOutput = [contextCopy queryUnderstandingOutput];
        v8 = [queryUnderstandingOutput count];

        if (v8 >= 2)
        {
          queryUnderstandingOutput2 = [contextCopy queryUnderstandingOutput];
          v10 = [queryUnderstandingOutput2 objectForKeyedSubscript:@"kQPQUIntentIds"];

          queryUnderstandingOutput3 = [contextCopy queryUnderstandingOutput];
          v12 = [queryUnderstandingOutput3 objectForKeyedSubscript:@"kQPQUIntentLabels"];

          queryUnderstandingOutput4 = [contextCopy queryUnderstandingOutput];
          v14 = [queryUnderstandingOutput4 objectForKeyedSubscript:@"kQPQUIntentScores"];

          firstObject = [v10 firstObject];
          intValue = [firstObject intValue];

          if (intValue >= 1)
          {
            firstObject2 = [v12 firstObject];
            intentLabel = v5->_intentLabel;
            v5->_intentLabel = firstObject2;

            firstObject3 = [v14 firstObject];
            [firstObject3 floatValue];
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