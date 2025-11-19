@interface _REMLConditionExplanation
- (_REMLConditionExplanation)explanationWithStyle:(unint64_t)a3;
- (_REMLConditionExplanation)initWithCondition:(id)a3;
- (id)_constantConditionExplanationWithStyle:(unint64_t)a3;
- (id)_featureRuleExplanation:(id)a3 withStyle:(unint64_t)a4;
- (id)_hasFeatureExplanation:(id)a3 withStyle:(unint64_t)a4;
- (id)_probabilityExplanation:(id)a3 withStyle:(unint64_t)a4;
- (id)_valueExplanation:(id)a3 withStyle:(unint64_t)a4;
- (id)explanationByCombiningWithExplanation:(id)a3;
- (int64_t)_rankExplanationToSimilarExplanation:(id)a3;
@end

@implementation _REMLConditionExplanation

- (_REMLConditionExplanation)initWithCondition:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = _REMLConditionExplanation;
  v6 = [(_REMLConditionExplanation *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_condition, a3);
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

- (id)explanationByCombiningWithExplanation:(id)a3
{
  v4 = a3;
  if ([(REMLExplanation *)self rankExplanationToExplanation:v4]!= -1)
  {
    self = v4;
  }

  v5 = self;

  return self;
}

- (int64_t)_rankExplanationToSimilarExplanation:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  type = self->_type;
  v5 = a3;
  v6 = [v3 numberWithUnsignedInteger:type];
  v7 = MEMORY[0x277CCABB0];
  v8 = v5[2];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (_REMLConditionExplanation)explanationWithStyle:(unint64_t)a3
{
  type = self->_type;
  v4 = &stru_283B97458;
  if (type <= 2)
  {
    if (type == 1)
    {
      v5 = [(_REMLConditionExplanation *)self _constantConditionExplanationWithStyle:a3];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_13;
      }

      v5 = [(_REMLConditionExplanation *)self _probabilityExplanation:self->_condition withStyle:a3];
    }
  }

  else
  {
    switch(type)
    {
      case 3:
        v5 = [(_REMLConditionExplanation *)self _featureRuleExplanation:self->_condition withStyle:a3];
        break;
      case 4:
        v5 = [(_REMLConditionExplanation *)self _valueExplanation:self->_condition withStyle:a3];
        break;
      case 5:
        v5 = [(_REMLConditionExplanation *)self _hasFeatureExplanation:self->_condition withStyle:a3];
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = v5;
LABEL_13:

  return v4;
}

- (id)_constantConditionExplanationWithStyle:(unint64_t)a3
{
  v3 = @"condition is always true";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"always true";
  }
}

- (id)_featureRuleExplanation:(id)a3 withStyle:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 firstFeature];
  v7 = [v6 name];

  v8 = [v5 secondFeature];
  v9 = [v8 name];

  v10 = [v5 relation];
  if (a4 == 1)
  {
    if ((v10 + 2) <= 6)
    {
      v11 = off_2785FDE00[v10 + 2];
      goto LABEL_7;
    }
  }

  else if (!a4)
  {
    v11 = RERelationDescription(v10);
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v7, v11, v9];

  return v12;
}

- (id)_probabilityExplanation:(id)a3 withStyle:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 feature];

  if (v6)
  {
    v7 = [v5 feature];
    [v7 name];
  }

  else
  {
    v8 = MEMORY[0x277CCABB0];
    [v5 threshold];
    v7 = [v8 numberWithFloat:?];
    [v7 stringValue];
  }
  v9 = ;

  v10 = [v5 interaction];

  if (v10)
  {
    if (a4 != 1)
    {
      if (!a4)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [v5 interaction];
        v13 = [v11 stringWithFormat:@"%@ prob", v12];

LABEL_11:
        v14 = RERelationDescription([v5 relation]);
        goto LABEL_14;
      }

LABEL_12:
      [v5 relation];
      v13 = 0;
LABEL_13:
      v14 = 0;
      goto LABEL_14;
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = [v5 interaction];
    v13 = [v17 stringWithFormat:@"probability for %@", v18];
  }

  else
  {
    if (a4 != 1)
    {
      if (!a4)
      {
        v13 = @"prob";
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    v13 = @"probability";
  }

  v19 = [v5 relation];
  if (v19 > 0)
  {
    switch(v19)
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

  else if (v19 == -2)
  {
    v14 = @"less than";
  }

  else if (v19 == -1)
  {
    v14 = @"less than or equal to";
  }

  else
  {
    if (v19)
    {
      goto LABEL_13;
    }

    v14 = @"equal to";
  }

LABEL_14:
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v13, v14, v9];

  return v15;
}

- (id)_valueExplanation:(id)a3 withStyle:(unint64_t)a4
{
  v5 = a3;
  v6 = REDescriptionForTaggedPointer([v5 value]);
  v7 = [v5 feature];
  v8 = [v7 name];

  v9 = [v5 relation];
  if (a4 == 1)
  {
    if ((v9 + 2) <= 6)
    {
      v10 = off_2785FDE00[v9 + 2];
      goto LABEL_7;
    }
  }

  else if (!a4)
  {
    v10 = RERelationDescription(v9);
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v8, v10, v6];

  return v11;
}

- (id)_hasFeatureExplanation:(id)a3 withStyle:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 feature];
  v7 = [v6 name];

  LODWORD(v6) = [v5 contains];
  v8 = @"doesn't contain";
  if (v6)
  {
    v8 = @"contains";
  }

  v9 = v8;
  if (!a4)
  {
    v10 = @"%@ %@";
    goto LABEL_7;
  }

  if (a4 == 1)
  {
    v10 = @"%@ value for %@";
LABEL_7:
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v9, v7];
    goto LABEL_9;
  }

  v11 = @"Unknown style";
LABEL_9:

  return v11;
}

@end