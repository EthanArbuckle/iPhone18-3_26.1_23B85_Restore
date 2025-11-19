@interface _REAggregateRuleCondition
- (BOOL)_acceptsFeatureMap:(id)a3 predictionSet:(id)a4 explanation:(id *)a5;
- (BOOL)_acceptsLeftFeatureMap:(id)a3 rightFeatureMap:(id)a4;
- (BOOL)_needsProbability;
- (BOOL)_requiresTwoFeatures;
- (BOOL)_validForRanking;
- (BOOL)isEqual:(id)a3;
- (_REAggregateRuleCondition)initWithConditions:(id)a3 type:(unint64_t)a4;
- (id)_dependentFeatures;
- (id)_inflectionFeatureValuePairs;
- (id)_notCondition;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _REAggregateRuleCondition

- (BOOL)_validForRanking
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSSet *)self->_conditions count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_conditions;
    v4 = [(NSSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if (![*(*(&v11 + 1) + 8 * i) _validForRanking])
          {
            v8 = 0;
            goto LABEL_12;
          }
        }

        v5 = [(NSSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_notCondition
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[NSSet count](self->_conditions, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_conditions;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) _notCondition];
        [v3 addObject:v9];
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v10 = objc_alloc_init(_REAggregateRuleCondition);
  v11 = [v3 copy];
  conditions = v10->_conditions;
  v10->_conditions = v11;

  v10->_type = self->_type != 1;
  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (_REAggregateRuleCondition)initWithConditions:(id)a3 type:(unint64_t)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v28 = self;
    v10 = 0;
    v11 = 0;
    v12 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        if (([v14 isMemberOfClass:objc_opt_class()] & 1) == 0)
        {
          v15 = [v14 _validForRanking];
          v10 += v15;
          v11 += v15 ^ 1;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 type] == a4)
          {
            v16 = [v14 conditions];
            [v6 unionSet:v16];
          }

          else
          {
            [v6 addObject:{v14, v28}];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);

    self = v28;
    if (v10 && v11)
    {
      RERaiseInternalException(*MEMORY[0x277CBE660], @"Cannot mix REComparisonCondition and RECondition in the same condition", v17, v18, v19, v20, v21, v22, v28);
    }
  }

  else
  {
  }

  v30.receiver = self;
  v30.super_class = _REAggregateRuleCondition;
  v23 = [(_REAggregateRuleCondition *)&v30 init];
  if (v23)
  {
    v24 = [v6 copy];
    conditions = v23->_conditions;
    v23->_conditions = v24;

    v23->_type = a4;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)_dependentFeatures
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[(REFeatureSet *)REMutableFeatureSet];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_conditions;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) _dependentFeatures];
        [v3 unionFeatureSet:v9];
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_requiresTwoFeatures
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_conditions;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) _requiresTwoFeatures])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_needsProbability
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_conditions;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) _needsProbability])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)_inflectionFeatureValuePairs
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(NSSet *)self->_conditions count])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->_conditions;
    v5 = [(NSSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v13 + 1) + 8 * i) _inflectionFeatureValuePairs];
          [v3 unionSet:v9];
        }

        v6 = [(NSSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v10 = [v3 copy];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB98] set];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_acceptsFeatureMap:(id)a3 predictionSet:(id)a4 explanation:(id *)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = a5;
  if ([(NSSet *)self->_conditions count])
  {
    v10 = self->_type != 1;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = self->_conditions;
    v11 = [(NSSet *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v11)
    {
      v12 = *v27;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v21 = __74___REAggregateRuleCondition__acceptsFeatureMap_predictionSet_explanation___block_invoke;
          v22 = &unk_2785FD438;
          v23 = v8;
          v24 = v9;
          v25 = v30;
          v15 = v21(v20, v14);
          type = self->_type;
          if (type)
          {
            if (type == 1)
            {

              if ((v10 | v15))
              {
                LOBYTE(v10) = 1;
                goto LABEL_20;
              }
            }

            else
            {
            }

            v10 = 0;
          }

          else
          {

            if ((v10 & v15 & 1) == 0)
            {
              LOBYTE(v10) = 0;
              goto LABEL_20;
            }

            v10 = 1;
          }
        }

        v11 = [(NSSet *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  _Block_object_dispose(v30, 8);

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_acceptsLeftFeatureMap:(id)a3 rightFeatureMap:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(NSSet *)self->_conditions count])
  {
    LOBYTE(v8) = 1;
    goto LABEL_20;
  }

  v8 = self->_type != 1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->_conditions;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = *v19;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [*(*(&v18 + 1) + 8 * i) _acceptsLeftFeatureMap:v6 rightFeatureMap:{v7, v18}];
      type = self->_type;
      if (type == 1)
      {
        if ((v8 | v14))
        {
          LOBYTE(v8) = 1;
          goto LABEL_19;
        }

LABEL_12:
        v8 = 0;
        continue;
      }

      if (type)
      {
        goto LABEL_12;
      }

      if ((v8 & v14 & 1) == 0)
      {
        LOBYTE(v8) = 0;
        goto LABEL_19;
      }

      v8 = 1;
    }

    v11 = [(NSSet *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_19:

LABEL_20:
  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (self->_type == v5->_type)
      {
        conditions = self->_conditions;
        v8 = v5->_conditions;
        v9 = conditions;
        v10 = v9;
        if (v9 == v8)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSSet *)v9 isEqual:v8];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 2, self->_conditions);
  v4[1] = self->_type;
  return v4;
}

@end