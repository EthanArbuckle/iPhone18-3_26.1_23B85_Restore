@interface _REValueRuleCondition
- (BOOL)_acceptsFeatureMap:(id)a3 predictionSet:(id)a4 explanation:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (_REValueRuleCondition)initWithFeature:(id)a3 relation:(int64_t)a4 value:(unint64_t)a5;
- (id)_inflectionFeatureValuePairs;
- (id)_notCondition;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation _REValueRuleCondition

- (id)_notCondition
{
  v3 = [[_REValueRuleCondition alloc] initWithFeature:self->_feature relation:REInvertRelation(self->_relation) value:self->_value];
  v3->_allowsEmptyValueForFeature = !self->_allowsEmptyValueForFeature;

  return v3;
}

- (void)dealloc
{
  REReleaseFeatureValueTaggedPointer(self->_value);
  v3.receiver = self;
  v3.super_class = _REValueRuleCondition;
  [(_REValueRuleCondition *)&v3 dealloc];
}

- (_REValueRuleCondition)initWithFeature:(id)a3 relation:(int64_t)a4 value:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = _REValueRuleCondition;
  v10 = [(_REValueRuleCondition *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_feature, a3);
    v11->_relation = a4;
    v11->_value = a5;
    RERetainFeatureValueTaggedPointer(a5);
    v11->_allowsEmptyValueForFeature = 0;
  }

  return v11;
}

- (BOOL)_acceptsFeatureMap:(id)a3 predictionSet:(id)a4 explanation:(id *)a5
{
  v7 = a3;
  allowsEmptyValueForFeature = 16;
  if (([v7 hasValueForFeature:self->_feature] & 1) == 0)
  {
    allowsEmptyValueForFeature = self->_allowsEmptyValueForFeature;
    if (!a5)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v9 = [v7 valueForFeature:self->_feature];
  relation = self->_relation;
  v11 = RECompareFeatureValues(v9, self->_value);
  if (relation > 0)
  {
    switch(relation)
    {
      case 1:
        v13 = v11 == -1;
        break;
      case 2:
        v12 = v11 == 1;
        goto LABEL_22;
      case 4:
        v13 = v11 == 0;
        break;
      default:
        goto LABEL_28;
    }

LABEL_16:
    allowsEmptyValueForFeature = !v13;
    if (a5)
    {
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  if (relation == -2)
  {
    v12 = v11 == -1;
    goto LABEL_22;
  }

  if (relation == -1)
  {
    v13 = v11 == 1;
    goto LABEL_16;
  }

  if (relation)
  {
    goto LABEL_28;
  }

  v12 = v11 == 0;
LABEL_22:
  allowsEmptyValueForFeature = v12;
  if (a5)
  {
LABEL_26:
    if (allowsEmptyValueForFeature)
    {
      *a5 = [REMLExplanation explanationForCondition:self];
      allowsEmptyValueForFeature = 1;
    }
  }

LABEL_28:

  return allowsEmptyValueForFeature & 1;
}

- (id)_inflectionFeatureValuePairs
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [[REFeatureValuePair alloc] initWithFeature:self->_feature value:self->_value];
  v4 = [v2 setWithObject:v3];

  return v4;
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
      feature = v5->_feature;
      v7 = self->_feature;
      v8 = v7;
      if (v7 == feature)
      {
      }

      else
      {
        v9 = [(REFeature *)v7 isEqual:feature];

        if (!v9)
        {
          goto LABEL_13;
        }
      }

      value = self->_value;
      v12 = v5->_value;
      if (value == v12)
      {
        goto LABEL_10;
      }

      v13 = REFeatureValueTypeForTaggedPointer(self->_value);
      if (v13 == REFeatureValueTypeForTaggedPointer(v12))
      {
        v14 = REFeatureValueForTaggedPointer(value);
        v15 = REFeatureValueForTaggedPointer(v12);
        v16 = [v14 isEqual:v15];

        if (v16)
        {
LABEL_10:
          v10 = self->_relation == v5->_relation;
LABEL_14:

          goto LABEL_15;
        }
      }

LABEL_13:
      v10 = 0;
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
  feature = self->_feature;
  relation = self->_relation;
  value = self->_value;

  return [v4 initWithFeature:feature relation:relation value:value];
}

@end