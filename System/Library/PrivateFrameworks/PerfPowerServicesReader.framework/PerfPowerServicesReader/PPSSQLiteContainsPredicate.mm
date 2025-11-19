@interface PPSSQLiteContainsPredicate
+ (id)_arrayFromValues:(id)a3;
+ (id)containsPredicateWithProperty:(id)a3 values:(id)a4;
+ (id)doesNotContainPredicateWithProperty:(id)a3 values:(id)a4;
- (BOOL)isEqual:(id)a3;
- (PPSSQLiteContainsPredicate)initWithProperty:(id)a3 values:(id)a4 isNegative:(BOOL)a5;
- (id)description;
- (id)sqlForEntity:(id)a3;
- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
@end

@implementation PPSSQLiteContainsPredicate

+ (id)containsPredicateWithProperty:(id)a3 values:(id)a4
{
  v4 = [a1 _containsPredicateWithProperty:a3 values:a4 isNegative:0];

  return v4;
}

+ (id)doesNotContainPredicateWithProperty:(id)a3 values:(id)a4
{
  v4 = [a1 _containsPredicateWithProperty:a3 values:a4 isNegative:1];

  return v4;
}

- (PPSSQLiteContainsPredicate)initWithProperty:(id)a3 values:(id)a4 isNegative:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = PPSSQLiteContainsPredicate;
  v10 = [(PPSSQLiteContainsPredicate *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    property = v10->super._property;
    v10->super._property = v11;

    v13 = [v9 copy];
    values = v10->_values;
    v10->_values = v13;

    v10->_isNegative = a5;
  }

  return v10;
}

+ (id)_arrayFromValues:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 allObjects];
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PPSSQLiteContainsPredicate;
  if (-[PPSSQLitePropertyPredicate isEqual:](&v12, sel_isEqual_, v4) && (v5 = -[PPSSQLiteContainsPredicate isNegative](self, "isNegative"), v5 == [v4 isNegative]))
  {
    v7 = [(PPSSQLiteContainsPredicate *)self values];
    v8 = [v4 values];
    if (v7 == v8)
    {
      v6 = 1;
    }

    else
    {
      v9 = [(PPSSQLiteContainsPredicate *)self values];
      v10 = [v4 values];
      v6 = [v9 isEqual:v10];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(PPSSQLiteContainsPredicate *)self values];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        PPSSQLiteBindFoundationValueToStatement(a3, *a4, *(*(&v11 + 1) + 8 * v9));
        ++*a4;
        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)sqlForEntity:(id)a3
{
  v4 = a3;
  v5 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
  v6 = [(PPSSQLitePropertyPredicate *)self property];
  v7 = [v4 disambiguatedSQLForProperty:v6 shouldEscape:1];
  [v5 appendString:v7];

  if ([(PPSSQLiteContainsPredicate *)self isNegative])
  {
    v8 = CFSTR(" NOT IN (");
  }

  else
  {
    v8 = CFSTR(" IN (");
  }

  [v5 appendString:v8];
  v9 = [(PPSSQLiteContainsPredicate *)self values];
  v10 = [v9 count];

  if (v10)
  {
    [v5 appendString:@"?"];
    v11 = v10 - 1;
    if (v10 != 1)
    {
      do
      {
        [v5 appendString:{@", ?"}];
        --v11;
      }

      while (v11);
    }
  }

  [v5 appendString:@""]);
  [v5 appendString:@""]);

  return v5;
}

- (id)description
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(PPSSQLiteContainsPredicate *)self values];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(PPSSQLiteContainsPredicate *)self values];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v19 + 1) + 8 * i) description];
        [v5 addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v11 = [v5 componentsJoinedByString:{@", "}];
  v12 = MEMORY[0x277CCACA8];
  v13 = [(PPSSQLitePropertyPredicate *)self property];
  v14 = v13;
  if (self->_isNegative)
  {
    v15 = "";
  }

  else
  {
    v15 = "NOT ";
  }

  v16 = [v12 stringWithFormat:@"'%@' %sIN (%@)", v13, v15, v11];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end