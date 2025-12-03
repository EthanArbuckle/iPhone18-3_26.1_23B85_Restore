@interface _REMLConditionExplanation
- (_REMLConditionExplanation)explanationWithStyle:(unint64_t)style;
- (_REMLConditionExplanation)initWithCondition:(id)condition;
- (id)_constantConditionExplanationWithStyle:(unint64_t)style;
- (id)_featureRuleExplanation:(id)explanation withStyle:(unint64_t)style;
- (id)_hasFeatureExplanation:(id)explanation withStyle:(unint64_t)style;
- (id)_probabilityExplanation:(id)explanation withStyle:(unint64_t)style;
- (id)_valueExplanation:(id)explanation withStyle:(unint64_t)style;
- (id)explanationByCombiningWithExplanation:(id)explanation;
- (int64_t)_rankExplanationToSimilarExplanation:(id)explanation;
@end

@implementation _REMLConditionExplanation

- (_REMLConditionExplanation)initWithCondition:(id)condition
{
  conditionCopy = condition;
  v15.receiver = self;
  v15.super_class = _REMLConditionExplanation;
  v6 = [(_REMLConditionExplanation *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_condition, condition);
    v7->_type = 6;
    condition = v7->_condition;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 1;
LABEL_12:
      v7->_type = v9;
      goto LABEL_13;
    }

    v10 = v7->_condition;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 3;
      goto LABEL_12;
    }

    v11 = v7->_condition;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 2;
      goto LABEL_12;
    }

    v12 = v7->_condition;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 4;
      goto LABEL_12;
    }

    v13 = v7->_condition;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 5;
      goto LABEL_12;
    }
  }

LABEL_13:

  return v7;
}

- (id)explanationByCombiningWithExplanation:(id)explanation
{
  explanationCopy = explanation;
  if ([(REMLExplanation *)self rankExplanationToExplanation:explanationCopy]!= -1)
  {
    self = explanationCopy;
  }

  selfCopy = self;

  return self;
}

- (int64_t)_rankExplanationToSimilarExplanation:(id)explanation
{
  v3 = MEMORY[0x277CCABB0];
  type = self->_type;
  explanationCopy = explanation;
  v6 = [v3 numberWithUnsignedInteger:type];
  v7 = MEMORY[0x277CCABB0];
  v8 = explanationCopy[2];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (_REMLConditionExplanation)explanationWithStyle:(unint64_t)style
{
  type = self->_type;
  v4 = &stru_283B97458;
  if (type <= 2)
  {
    if (type == 1)
    {
      v5 = [(_REMLConditionExplanation *)self _constantConditionExplanationWithStyle:style];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_13;
      }

      v5 = [(_REMLConditionExplanation *)self _probabilityExplanation:self->_condition withStyle:style];
    }
  }

  else
  {
    switch(type)
    {
      case 3:
        v5 = [(_REMLConditionExplanation *)self _featureRuleExplanation:self->_condition withStyle:style];
        break;
      case 4:
        v5 = [(_REMLConditionExplanation *)self _valueExplanation:self->_condition withStyle:style];
        break;
      case 5:
        v5 = [(_REMLConditionExplanation *)self _hasFeatureExplanation:self->_condition withStyle:style];
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = v5;
LABEL_13:

  return v4;
}

- (id)_constantConditionExplanationWithStyle:(unint64_t)style
{
  v3 = @"condition is always true";
  if (style != 1)
  {
    v3 = 0;
  }

  if (style)
  {
    return v3;
  }

  else
  {
    return @"always true";
  }
}

- (id)_featureRuleExplanation:(id)explanation withStyle:(unint64_t)style
{
  explanationCopy = explanation;
  firstFeature = [explanationCopy firstFeature];
  name = [firstFeature name];

  secondFeature = [explanationCopy secondFeature];
  name2 = [secondFeature name];

  relation = [explanationCopy relation];
  if (style == 1)
  {
    if ((relation + 2) <= 6)
    {
      v11 = off_2785FDE00[relation + 2];
      goto LABEL_7;
    }
  }

  else if (!style)
  {
    v11 = RERelationDescription(relation);
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", name, v11, name2];

  return v12;
}

- (id)_probabilityExplanation:(id)explanation withStyle:(unint64_t)style
{
  explanationCopy = explanation;
  feature = [explanationCopy feature];

  if (feature)
  {
    feature2 = [explanationCopy feature];
    [feature2 name];
  }

  else
  {
    v8 = MEMORY[0x277CCABB0];
    [explanationCopy threshold];
    feature2 = [v8 numberWithFloat:?];
    [feature2 stringValue];
  }
  v9 = ;

  interaction = [explanationCopy interaction];

  if (interaction)
  {
    if (style != 1)
    {
      if (!style)
      {
        v11 = MEMORY[0x277CCACA8];
        interaction2 = [explanationCopy interaction];
        v13 = [v11 stringWithFormat:@"%@ prob", interaction2];

LABEL_11:
        v14 = RERelationDescription([explanationCopy relation]);
        goto LABEL_14;
      }

LABEL_12:
      [explanationCopy relation];
      v13 = 0;
LABEL_13:
      v14 = 0;
      goto LABEL_14;
    }

    v17 = MEMORY[0x277CCACA8];
    interaction3 = [explanationCopy interaction];
    v13 = [v17 stringWithFormat:@"probability for %@", interaction3];
  }

  else
  {
    if (style != 1)
    {
      if (!style)
      {
        v13 = @"prob";
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    v13 = @"probability";
  }

  relation = [explanationCopy relation];
  if (relation > 0)
  {
    switch(relation)
    {
      case 1:
        v14 = @"greater than or equal to";
        break;
      case 2:
        v14 = @"greater than";
        break;
      case 4:
        v14 = @"not equal to";
        break;
      default:
        goto LABEL_13;
    }
  }

  else if (relation == -2)
  {
    v14 = @"less than";
  }

  else if (relation == -1)
  {
    v14 = @"less than or equal to";
  }

  else
  {
    if (relation)
    {
      goto LABEL_13;
    }

    v14 = @"equal to";
  }

LABEL_14:
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v13, v14, v9];

  return v15;
}

- (id)_valueExplanation:(id)explanation withStyle:(unint64_t)style
{
  explanationCopy = explanation;
  v6 = REDescriptionForTaggedPointer([explanationCopy value]);
  feature = [explanationCopy feature];
  name = [feature name];

  relation = [explanationCopy relation];
  if (style == 1)
  {
    if ((relation + 2) <= 6)
    {
      v10 = off_2785FDE00[relation + 2];
      goto LABEL_7;
    }
  }

  else if (!style)
  {
    v10 = RERelationDescription(relation);
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", name, v10, v6];

  return v11;
}

- (id)_hasFeatureExplanation:(id)explanation withStyle:(unint64_t)style
{
  explanationCopy = explanation;
  feature = [explanationCopy feature];
  name = [feature name];

  LODWORD(feature) = [explanationCopy contains];
  v8 = @"doesn't contain";
  if (feature)
  {
    v8 = @"contains";
  }

  v9 = v8;
  if (!style)
  {
    v10 = @"%@ %@";
    goto LABEL_7;
  }

  if (style == 1)
  {
    v10 = @"%@ value for %@";
LABEL_7:
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v9, name];
    goto LABEL_9;
  }

  v11 = @"Unknown style";
LABEL_9:

  return v11;
}

@end