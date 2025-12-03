@interface REMLPredictionSet
- (REMLPredictionSet)initWithPrediction:(id)prediction predictionMap:(id)map;
@end

@implementation REMLPredictionSet

- (REMLPredictionSet)initWithPrediction:(id)prediction predictionMap:(id)map
{
  predictionCopy = prediction;
  mapCopy = map;
  v12.receiver = self;
  v12.super_class = REMLPredictionSet;
  v9 = [(REMLPredictionSet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_prediction, prediction);
    objc_storeStrong(&v10->_predictionsByKey, map);
  }

  return v10;
}

@end