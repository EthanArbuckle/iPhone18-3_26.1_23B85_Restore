@interface PPEventFeatureScore
+ (id)eventFeatureScoreWithFeatureValues:(id)a3 weightedScore:(double)a4 prominentFeature:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEventFeatureScore:(id)a3;
- (PPEventFeatureScore)initWithFeatureValues:(id)a3 weightedScore:(double)a4 prominentFeature:(unint64_t)a5;
- (id)copyWithReplacementFeatureValues:(id)a3;
- (id)copyWithReplacementProminentFeature:(unint64_t)a3;
- (id)copyWithReplacementWeightedScore:(double)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPEventFeatureScore *)self isEqualToEventFeatureScore:v5];
  }

  return v6;
}

- (BOOL)isEqualToEventFeatureScore:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v6 = self->_featureValues == 0;
  v7 = [v4 featureValues];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_7;
  }

  featureValues = self->_featureValues;
  if (featureValues)
  {
    v10 = [v5 featureValues];
    v11 = [(NSArray *)featureValues isEqual:v10];

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

- (id)copyWithReplacementProminentFeature:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  featureValues = self->_featureValues;
  weightedScore = self->_weightedScore;

  return [v5 initWithFeatureValues:featureValues weightedScore:a3 prominentFeature:weightedScore];
}

- (id)copyWithReplacementWeightedScore:(double)a3
{
  v5 = objc_alloc(objc_opt_class());
  featureValues = self->_featureValues;
  prominentFeature = self->_prominentFeature;

  return [v5 initWithFeatureValues:featureValues weightedScore:prominentFeature prominentFeature:a3];
}

- (id)copyWithReplacementFeatureValues:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFeatureValues:v4 weightedScore:self->_prominentFeature prominentFeature:self->_weightedScore];

  return v5;
}

- (PPEventFeatureScore)initWithFeatureValues:(id)a3 weightedScore:(double)a4 prominentFeature:(unint64_t)a5
{
  v10 = a3;
  if (!v10)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PPEventTuples.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"featureValues != nil"}];
  }

  v15.receiver = self;
  v15.super_class = PPEventFeatureScore;
  v11 = [(PPEventFeatureScore *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_featureValues, a3);
    v12->_weightedScore = a4;
    v12->_prominentFeature = a5;
    v12->_ocnt_precomputedHash = [(PPEventFeatureScore *)v12 _hash];
  }

  return v12;
}

+ (id)eventFeatureScoreWithFeatureValues:(id)a3 weightedScore:(double)a4 prominentFeature:(unint64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] initWithFeatureValues:v8 weightedScore:a5 prominentFeature:a4];

  return v9;
}

@end