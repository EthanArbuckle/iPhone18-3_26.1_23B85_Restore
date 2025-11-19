@interface REMLPredictionSet
- (REMLPredictionSet)initWithPrediction:(id)a3 predictionMap:(id)a4;
@end

@implementation REMLPredictionSet

- (REMLPredictionSet)initWithPrediction:(id)a3 predictionMap:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMLPredictionSet;
  v9 = [(REMLPredictionSet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_prediction, a3);
    objc_storeStrong(&v10->_predictionsByKey, a4);
  }

  return v10;
}

@end