@interface PPExtractionContext
- (PPExtractionContext)initWithProbabilities:(id)a3;
@end

@implementation PPExtractionContext

- (PPExtractionContext)initWithProbabilities:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PPExtractionContext;
  v6 = [(PPExtractionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_probabilities, a3);
  }

  return v7;
}

@end