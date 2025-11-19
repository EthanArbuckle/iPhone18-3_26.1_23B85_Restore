@interface SQLiteHasAssociatedEntityPredicate
+ (id)predicateWithAssociatedEntityClass:(Class)a3;
- (id)SQLForEntityClass:(Class)a3;
- (id)description;
@end

@implementation SQLiteHasAssociatedEntityPredicate

+ (id)predicateWithAssociatedEntityClass:(Class)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[1] = a3;

  return v4;
}

- (id)SQLForEntityClass:(Class)a3
{
  v5 = [(objc_class *)a3 associationPropertyForEntityClass:self->_associatedEntityClass];
  v6 = [(objc_class *)self->_associatedEntityClass associationPropertyForEntityClass:a3];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v11 = [NSMutableString stringWithFormat:@"0"];
  }

  else
  {
    v21 = [(objc_class *)a3 disambiguatedSQLForProperty:v5];
    v9 = [(objc_class *)self->_associatedEntityClass disambiguatedSQLForProperty:v7];
    v10 = [(objc_class *)self->_associatedEntityClass databaseTable];
    v11 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", CFSTR("((SELECT 1 FROM %@"), v10);

    v12 = objc_alloc_init(NSMutableSet);
    [(objc_class *)self->_associatedEntityClass addJoinClausesForProperty:v9 toJoins:v12];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * i);
          [v11 appendString:@" "];
          [v11 appendString:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    [v11 appendFormat:@" WHERE %@ = %@ LIMIT 1 IS NOT NULL]"), v21, v9);
  }

  v19 = [v11 copy];

  return v19;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"associatedEntityClass: %@; ", self->_associatedEntityClass];
  [v3 appendFormat:@">"];

  return v3;
}

@end