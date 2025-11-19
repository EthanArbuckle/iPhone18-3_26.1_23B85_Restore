@interface _REFeatureRuleCondition
- (BOOL)_acceptsFeatureMap:(id)a3 predictionSet:(id)a4 explanation:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (_REFeatureRuleCondition)initWithFeature:(id)a3 relation:(int64_t)a4 feature:(id)a5;
- (id)_dependentFeatures;
- (id)_inflectionFeatureValuePairs;
- (id)_notCondition;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _REFeatureRuleCondition

- (_REFeatureRuleCondition)initWithFeature:(id)a3 relation:(int64_t)a4 feature:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _REFeatureRuleCondition;
  v11 = [(_REFeatureRuleCondition *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_firstFeature, a3);
    v12->_relation = a4;
    objc_storeStrong(&v12->_secondFeature, a5);
  }

  return v12;
}

- (id)_dependentFeatures
{
  v7[2] = *MEMORY[0x277D85DE8];
  secondFeature = self->_secondFeature;
  v7[0] = self->_firstFeature;
  v7[1] = secondFeature;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [REFeatureSet featureSetWithFeatures:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_notCondition
{
  v2 = [[_REFeatureRuleCondition alloc] initWithFeature:self->_firstFeature relation:REInvertRelation(self->_relation) feature:self->_secondFeature];

  return v2;
}

- (BOOL)_acceptsFeatureMap:(id)a3 predictionSet:(id)a4 explanation:(id *)a5
{
  v7 = a3;
  if (![v7 hasValueForFeature:self->_firstFeature] || !objc_msgSend(v7, "hasValueForFeature:", self->_secondFeature))
  {
    LOBYTE(v8) = 0;
    goto LABEL_9;
  }

  v8 = [v7 valueForFeature:self->_firstFeature];
  v9 = [v7 valueForFeature:self->_secondFeature];
  relation = self->_relation;
  v11 = RECompareFeatureValues(v8, v9);
  if (relation > 0)
  {
    switch(relation)
    {
      case 1:
        v14 = v11 == -1;
        break;
      case 2:
        v12 = v11 == 1;
        goto LABEL_23;
      case 4:
        v14 = v11 == 0;
        break;
      default:
        goto LABEL_9;
    }

LABEL_17:
    LODWORD(v8) = !v14;
    if (a5)
    {
      goto LABEL_27;
    }

    goto LABEL_9;
  }

  if (relation == -2)
  {
    v12 = v11 == -1;
    goto LABEL_23;
  }

  if (relation == -1)
  {
    v14 = v11 == 1;
    goto LABEL_17;
  }

  if (relation)
  {
    goto LABEL_9;
  }

  v12 = v11 == 0;
LABEL_23:
  LODWORD(v8) = v12;
  if (a5)
  {
LABEL_27:
    if (v8)
    {
      *a5 = [REMLExplanation explanationForCondition:self];
      LOBYTE(v8) = 1;
    }
  }

LABEL_9:

  return v8 & 1;
}

- (id)_inflectionFeatureValuePairs
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [[REFeatureValuePair alloc] initWithFeature:self->_firstFeature value:0];
  v9[0] = v3;
  v4 = [[REFeatureValuePair alloc] initWithFeature:self->_secondFeature value:0];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v6 = [MEMORY[0x277CBEB98] setWithArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
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
      firstFeature = v5->_firstFeature;
      v7 = self->_firstFeature;
      v8 = v7;
      if (v7 == firstFeature)
      {
      }

      else
      {
        v9 = [(REFeature *)v7 isEqual:firstFeature];

        if (!v9)
        {
          goto LABEL_11;
        }
      }

      secondFeature = v5->_secondFeature;
      v12 = self->_secondFeature;
      v13 = v12;
      if (v12 == secondFeature)
      {
      }

      else
      {
        v14 = [(REFeature *)v12 isEqual:secondFeature];

        if (!v14)
        {
LABEL_11:
          v10 = 0;
LABEL_14:

          goto LABEL_15;
        }
      }

      v10 = self->_relation == v5->_relation;
      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  firstFeature = self->_firstFeature;
  relation = self->_relation;
  secondFeature = self->_secondFeature;

  return [v4 initWithFeature:firstFeature relation:relation feature:secondFeature];
}

@end