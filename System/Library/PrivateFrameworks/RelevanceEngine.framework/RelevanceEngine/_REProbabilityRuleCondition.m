@interface _REProbabilityRuleCondition
- (BOOL)_acceptsFeatureMap:(id)a3 predictionSet:(id)a4 explanation:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (_REProbabilityRuleCondition)initWithProbability:(id)a3 relation:(int64_t)a4 feature:(id)a5 threshold:(float)a6;
- (id)_dependentFeatures;
- (id)_inflectionFeatureValuePairs;
- (id)_notCondition;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation _REProbabilityRuleCondition

- (_REProbabilityRuleCondition)initWithProbability:(id)a3 relation:(int64_t)a4 feature:(id)a5 threshold:(float)a6
{
  v11 = a3;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = _REProbabilityRuleCondition;
  v13 = [(_REProbabilityRuleCondition *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_interaction, a3);
    v14->_relation = a4;
    objc_storeStrong(&v14->_feature, a5);
    v14->_threshold = a6;
  }

  return v14;
}

- (id)_dependentFeatures
{
  if (self->_feature)
  {
    [REFeatureSet featureSetWithFeature:?];
  }

  else
  {
    +[REFeatureSet featureSet];
  }
  v2 = ;

  return v2;
}

- (id)_notCondition
{
  v3 = [_REProbabilityRuleCondition alloc];
  interaction = self->_interaction;
  v5 = REInvertRelation(self->_relation);
  *&v6 = self->_threshold;
  v7 = [(_REProbabilityRuleCondition *)v3 initWithProbability:interaction relation:v5 feature:self->_feature threshold:v6];

  return v7;
}

- (BOOL)_acceptsFeatureMap:(id)a3 predictionSet:(id)a4 explanation:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (self->_interaction)
  {
    [v9 predictionForKey:?];
  }

  else
  {
    [v9 prediction];
  }
  v11 = ;
  [v11 probability];

  if (self->_feature)
  {
    if (![v8 hasValueForFeature:?])
    {
      v23 = 0;
      goto LABEL_27;
    }

    v12 = [v8 valueForFeature:self->_feature];
    RERetainFeatureValueTaggedPointer(v12);
  }

  else
  {
    threshold = self->_threshold;
    v12 = RECreateDoubleFeatureValueTaggedPointer();
  }

  v14 = RECreateDoubleFeatureValueTaggedPointer();
  relation = self->_relation;
  v16 = RECompareFeatureValues(v14, v12);
  v17 = v16 != -1;
  v18 = v16 == 1;
  v19 = v16 != 0;
  if (relation != 4)
  {
    v19 = v16 != -1;
  }

  if (relation != 2)
  {
    v18 = v19;
  }

  if (relation != 1)
  {
    v17 = v18;
  }

  v20 = v16 == -1;
  v21 = v16 != 1;
  v22 = v16 == 0;
  if (relation)
  {
    v22 = v17;
  }

  if (relation != -1)
  {
    v21 = v22;
  }

  if (relation != -2)
  {
    v20 = v21;
  }

  if (relation <= 0)
  {
    v23 = v20;
  }

  else
  {
    v23 = v17;
  }

  REReleaseFeatureValueTaggedPointer(v12);
  REReleaseFeatureValueTaggedPointer(v14);
  if (a5 && (v23 & 1) != 0)
  {
    *a5 = [REMLExplanation explanationForCondition:self];
    v23 = 1;
  }

LABEL_27:

  return v23 & 1;
}

- (id)_inflectionFeatureValuePairs
{
  v2 = MEMORY[0x277CBEB98];
  if (self->_feature)
  {
    v3 = [[REFeatureValuePair alloc] initWithFeature:self->_feature value:0];
    v4 = [v2 setWithObject:v3];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  return v4;
}

- (unint64_t)hash
{
  v3 = self->_relation ^ [(NSString *)self->_interaction hash];
  v4 = v3 ^ [(REFeature *)self->_feature hash];
  *&v5 = self->_threshold;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v7 = [v6 hash];

  return v4 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      interaction = v5->_interaction;
      v7 = self->_interaction;
      v8 = v7;
      if (v7 == interaction)
      {
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:interaction];

        if (!v9)
        {
          goto LABEL_15;
        }
      }

      feature = v5->_feature;
      v12 = self->_feature;
      v13 = v12;
      if (v12 == feature)
      {
      }

      else
      {
        v14 = [(REFeature *)v12 isEqual:feature];

        if (!v14)
        {
          goto LABEL_15;
        }
      }

      if (self->_relation == v5->_relation)
      {
        v10 = RERelevanceEqualToRelevance(self->_threshold, v5->_threshold);
LABEL_16:

        goto LABEL_17;
      }

LABEL_15:
      v10 = 0;
      goto LABEL_16;
    }

    v10 = 0;
  }

LABEL_17:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  interaction = self->_interaction;
  relation = self->_relation;
  feature = self->_feature;
  *&v8 = self->_threshold;

  return [v4 initWithProbability:interaction relation:relation feature:feature threshold:v8];
}

@end