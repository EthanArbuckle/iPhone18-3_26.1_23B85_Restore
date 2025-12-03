@interface PPEventFeatureScore
+ (id)eventFeatureScoreWithFeatureValues:(id)values weightedScore:(double)score prominentFeature:(unint64_t)feature;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEventFeatureScore:(id)score;
- (PPEventFeatureScore)initWithFeatureValues:(id)values weightedScore:(double)score prominentFeature:(unint64_t)feature;
- (id)copyWithReplacementFeatureValues:(id)values;
- (id)copyWithReplacementProminentFeature:(unint64_t)feature;
- (id)copyWithReplacementWeightedScore:(double)score;
- (id)description;
- (unint64_t)_hash;
@end

@implementation PPEventFeatureScore

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  featureValues = self->_featureValues;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_weightedScore];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_prominentFeature];
  v7 = [v3 initWithFormat:@"<PPEventFeatureScore | featureValues:%@ weightedScore:%@ prominentFeature:%@>", featureValues, v5, v6];

  return v7;
}

- (unint64_t)_hash
{
  v3 = [(NSArray *)self->_featureValues hash];
  weightedScore = self->_weightedScore;
  if (weightedScore < 0.0)
  {
    weightedScore = -weightedScore;
  }

  *v4.i64 = floor(weightedScore + 0.5);
  v7 = (weightedScore - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v5, v4).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

  return self->_prominentFeature - (v9 - v3 + 32 * v3) + 32 * (v9 - v3 + 32 * v3);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPEventFeatureScore *)self isEqualToEventFeatureScore:v5];
  }

  return v6;
}

- (BOOL)isEqualToEventFeatureScore:(id)score
{
  scoreCopy = score;
  v5 = scoreCopy;
  if (!scoreCopy)
  {
    goto LABEL_7;
  }

  v6 = self->_featureValues == 0;
  featureValues = [scoreCopy featureValues];
  v8 = featureValues != 0;

  if (v6 == v8)
  {
    goto LABEL_7;
  }

  featureValues = self->_featureValues;
  if (featureValues)
  {
    featureValues2 = [v5 featureValues];
    v11 = [(NSArray *)featureValues isEqual:featureValues2];

    if (!v11)
    {
      goto LABEL_7;
    }
  }

  [v5 weightedScore];
  weightedScore = self->_weightedScore;
  [v5 weightedScore];
  if (weightedScore == v13)
  {
    prominentFeature = self->_prominentFeature;
    v14 = prominentFeature == [v5 prominentFeature];
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  return v14;
}

- (id)copyWithReplacementProminentFeature:(unint64_t)feature
{
  v5 = objc_alloc(objc_opt_class());
  featureValues = self->_featureValues;
  weightedScore = self->_weightedScore;

  return [v5 initWithFeatureValues:featureValues weightedScore:feature prominentFeature:weightedScore];
}

- (id)copyWithReplacementWeightedScore:(double)score
{
  v5 = objc_alloc(objc_opt_class());
  featureValues = self->_featureValues;
  prominentFeature = self->_prominentFeature;

  return [v5 initWithFeatureValues:featureValues weightedScore:prominentFeature prominentFeature:score];
}

- (id)copyWithReplacementFeatureValues:(id)values
{
  valuesCopy = values;
  v5 = [objc_alloc(objc_opt_class()) initWithFeatureValues:valuesCopy weightedScore:self->_prominentFeature prominentFeature:self->_weightedScore];

  return v5;
}

- (PPEventFeatureScore)initWithFeatureValues:(id)values weightedScore:(double)score prominentFeature:(unint64_t)feature
{
  valuesCopy = values;
  if (!valuesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPEventTuples.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"featureValues != nil"}];
  }

  v15.receiver = self;
  v15.super_class = PPEventFeatureScore;
  v11 = [(PPEventFeatureScore *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_featureValues, values);
    v12->_weightedScore = score;
    v12->_prominentFeature = feature;
    v12->_ocnt_precomputedHash = [(PPEventFeatureScore *)v12 _hash];
  }

  return v12;
}

+ (id)eventFeatureScoreWithFeatureValues:(id)values weightedScore:(double)score prominentFeature:(unint64_t)feature
{
  valuesCopy = values;
  v9 = [[self alloc] initWithFeatureValues:valuesCopy weightedScore:feature prominentFeature:score];

  return v9;
}

@end