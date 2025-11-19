@interface REMLPrediction
+ (id)predictionWithProbability:(float)a3 mean:(float)a4 variance:(float)a5 pessimistic:(float)a6;
- (NSSet)explanations;
- (id)copyWithZone:(_NSZone *)a3;
- (id)explanationDescription;
- (void)addExplanation:(id)a3;
@end

@implementation REMLPrediction

+ (id)predictionWithProbability:(float)a3 mean:(float)a4 variance:(float)a5 pessimistic:(float)a6
{
  v10 = objc_opt_new();
  *(v10 + 16) = a4;
  *(v10 + 20) = a5;
  *(v10 + 24) = a3;
  *(v10 + 28) = a6;
  *(v10 + 32) = 0;

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  *&v4 = self->_mean;
  *&v5 = self->_variance;
  *&v3 = self->_probability;
  *&v6 = self->_pessimistic;
  v8 = [REMLPrediction predictionWithProbability:a3 mean:v3 variance:v4 pessimistic:v5, v6];
  *(v8 + 32) = self->_bias;
  v9 = [*(v8 + 8) mutableCopy];
  v10 = *(v8 + 8);
  *(v8 + 8) = v9;

  return v8;
}

- (void)addExplanation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    explanations = self->_explanations;
    v8 = v4;
    if (!explanations)
    {
      v6 = [MEMORY[0x277CBEB58] set];
      v7 = self->_explanations;
      self->_explanations = v6;

      explanations = self->_explanations;
    }

    [(NSMutableSet *)explanations addObject:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (id)explanationDescription
{
  v3 = objc_alloc_init(REMLExplanationFormatter);
  v4 = [(REMLExplanationFormatter *)v3 descriptionFromExplanations:self->_explanations];

  return v4;
}

- (NSSet)explanations
{
  v2 = [(NSMutableSet *)self->_explanations copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

@end