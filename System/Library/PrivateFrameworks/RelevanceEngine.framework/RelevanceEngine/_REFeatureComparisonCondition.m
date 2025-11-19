@interface _REFeatureComparisonCondition
- (BOOL)_acceptsLeftFeatureMap:(id)a3 rightFeatureMap:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_REFeatureComparisonCondition)initWithLeftFeature:(id)a3 relation:(int64_t)a4 rightFeature:(id)a5;
- (id)_dependentFeatures;
- (id)_inflectionFeatureValuePairs;
- (id)_notCondition;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _REFeatureComparisonCondition

- (_REFeatureComparisonCondition)initWithLeftFeature:(id)a3 relation:(int64_t)a4 rightFeature:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _REFeatureComparisonCondition;
  v11 = [(_REFeatureComparisonCondition *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_leftFeature, a3);
    v12->_relation = a4;
    objc_storeStrong(&v12->_rightFeature, a5);
  }

  return v12;
}

- (id)_dependentFeatures
{
  v7[2] = *MEMORY[0x277D85DE8];
  rightFeature = self->_rightFeature;
  v7[0] = self->_leftFeature;
  v7[1] = rightFeature;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [REFeatureSet featureSetWithFeatures:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_notCondition
{
  v2 = [[_REFeatureComparisonCondition alloc] initWithLeftFeature:self->_leftFeature relation:REInvertRelation(self->_relation) rightFeature:self->_rightFeature];

  return v2;
}

- (BOOL)_acceptsLeftFeatureMap:(id)a3 rightFeatureMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 hasValueForFeature:self->_leftFeature] || !objc_msgSend(v7, "hasValueForFeature:", self->_rightFeature))
  {
    LOBYTE(self) = 0;
    goto LABEL_9;
  }

  v8 = [v6 valueForFeature:self->_leftFeature];
  v9 = [v7 valueForFeature:self->_rightFeature];
  relation = self->_relation;
  v11 = RECompareFeatureValues(v8, v9);
  if (relation > 0)
  {
    if (relation == 1)
    {
      v14 = v11 == -1;
      goto LABEL_17;
    }

    if (relation != 2)
    {
      if (relation != 4)
      {
        goto LABEL_9;
      }

      v14 = v11 == 0;
      goto LABEL_17;
    }

    v12 = v11 == 1;
LABEL_21:
    LOBYTE(self) = v12;
    goto LABEL_9;
  }

  if (relation == -2)
  {
    v12 = v11 == -1;
    goto LABEL_21;
  }

  if (relation != -1)
  {
    if (relation)
    {
      goto LABEL_9;
    }

    v12 = v11 == 0;
    goto LABEL_21;
  }

  v14 = v11 == 1;
LABEL_17:
  LOBYTE(self) = !v14;
LABEL_9:

  return self & 1;
}

- (id)_inflectionFeatureValuePairs
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [[REFeatureValuePair alloc] initWithFeature:self->_leftFeature value:0];
  v9[0] = v3;
  v4 = [[REFeatureValuePair alloc] initWithFeature:self->_rightFeature value:0];
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
      leftFeature = v5->_leftFeature;
      v7 = self->_leftFeature;
      v8 = v7;
      if (v7 == leftFeature)
      {
      }

      else
      {
        v9 = [(REFeature *)v7 isEqual:leftFeature];

        if (!v9)
        {
          goto LABEL_11;
        }
      }

      rightFeature = v5->_rightFeature;
      v12 = self->_rightFeature;
      v13 = v12;
      if (v12 == rightFeature)
      {
      }

      else
      {
        v14 = [(REFeature *)v12 isEqual:rightFeature];

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
  leftFeature = self->_leftFeature;
  relation = self->_relation;
  rightFeature = self->_rightFeature;

  return [v4 initWithLeftFeature:leftFeature relation:relation rightFeature:rightFeature];
}

@end