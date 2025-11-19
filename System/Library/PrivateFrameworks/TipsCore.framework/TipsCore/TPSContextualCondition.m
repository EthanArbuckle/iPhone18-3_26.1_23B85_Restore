@interface TPSContextualCondition
+ (id)eventsForConditionDictionary:(id)a3;
- (TPSContextualCondition)initWithCoder:(id)a3;
- (TPSContextualCondition)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)eventIdentifiers;
- (void)encodeWithCoder:(id)a3;
- (void)restartTracking;
@end

@implementation TPSContextualCondition

+ (id)eventsForConditionDictionary:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [a3 TPSSafeArrayForKey:@"rules"];
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [TPSContextualRule eventsForRuleDictionary:*(*(&v13 + 1) + 8 * i), v13];
          if (v10)
          {
            [v4 addObjectsFromArray:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (TPSContextualCondition)initWithDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = TPSContextualCondition;
  v5 = [(TPSSerializableObject *)&v27 initWithDictionary:v4];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [v4 TPSSafeStringForKey:@"joinType"];
  v5->_joinType = [v6 isEqualToString:@"AND"] ^ 1;
  v7 = [v4 TPSSafeArrayForKey:@"rules"];
  v8 = 0x1EBE05000;
  if ([v7 count])
  {
    v22 = v6;
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        v14 = 0;
        do
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[TPSContextualRule alloc] initWithDictionary:*(*(&v23 + 1) + 8 * v14)];
          if (v15)
          {
            [v9 addObject:v15];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v12);
    }

    v8 = 0x1EBE05000uLL;
    if ([v9 count])
    {
      v16 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
      rules = v5->_rules;
      v5->_rules = v16;
    }

    v6 = v22;
  }

  v18 = [*(&v5->super.super.isa + *(v8 + 2720)) count];

  if (!v18)
  {
    v19 = 0;
  }

  else
  {
LABEL_16:
    v19 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (TPSContextualCondition)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TPSContextualCondition;
  v5 = [(TPSSerializableObject *)&v14 initWithCoder:v4];
  if (v5)
  {
    v5->_type = [v4 decodeIntForKey:@"type"];
    v5->_joinType = [v4 decodeIntForKey:@"joinType"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"rules"];
    rules = v5->_rules;
    v5->_rules = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchedDate"];
    matchedDate = v5->_matchedDate;
    v5->_matchedDate = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSContextualCondition;
  v4 = a3;
  [(TPSSerializableObject *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_joinType forKey:@"joinType"];
  [v4 encodeObject:self->_rules forKey:@"rules"];
  [v4 encodeObject:self->_matchedDate forKey:@"matchedDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TPSContextualCondition;
  v4 = [(TPSSerializableObject *)&v6 copyWithZone:a3];
  [v4 setType:self->_type];
  [v4 setJoinType:self->_joinType];
  [v4 setRules:self->_rules];
  [v4 setMatchedDate:self->_matchedDate];
  return v4;
}

- (id)eventIdentifiers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_rules;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) eventIdentifiers];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)restartTracking
{
  v15 = *MEMORY[0x1E69E9840];
  matchedDate = self->_matchedDate;
  self->_matchedDate = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_rules;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) restartTracking];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = TPSContextualCondition;
  v4 = [(TPSSerializableObject *)&v9 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"%@ = %lu\n", @"type", self->_type];
  [v5 appendFormat:@"%@ = %lu\n", @"joinType", self->_joinType];
  matchedDate = self->_matchedDate;
  if (matchedDate)
  {
    [v5 appendFormat:@"%@ = %@\n", @"matchedDate", matchedDate];
  }

  if ([(NSArray *)self->_rules count])
  {
    v7 = [(NSArray *)self->_rules debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"rules", v7];
  }

  return v5;
}

@end