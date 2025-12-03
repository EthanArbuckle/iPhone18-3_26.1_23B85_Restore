@interface SQLiteContainsPredicate
+ (id)containsPredicateWithProperty:(id)property query:(id)query queryProperty:(id)queryProperty;
+ (id)containsPredicateWithProperty:(id)property values:(id)values;
+ (id)doesNotContainPredicateWithProperty:(id)property values:(id)values;
- (BOOL)isEqual:(id)equal;
- (id)SQLForEntityClass:(Class)class;
- (id)description;
- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index;
@end

@implementation SQLiteContainsPredicate

+ (id)containsPredicateWithProperty:(id)property values:(id)values
{
  valuesCopy = values;
  propertyCopy = property;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = [propertyCopy copy];

  v9 = v7[1];
  v7[1] = v8;

  *(v7 + 16) = 0;
  v10 = [valuesCopy copy];

  v11 = v7[5];
  v7[5] = v10;

  return v7;
}

+ (id)containsPredicateWithProperty:(id)property query:(id)query queryProperty:(id)queryProperty
{
  queryCopy = query;
  queryPropertyCopy = queryProperty;
  propertyCopy = property;
  v10 = objc_alloc_init(objc_opt_class());
  v11 = [propertyCopy copy];

  v12 = v10[1];
  v10[1] = v11;

  *(v10 + 16) = 0;
  v13 = v10[3];
  v10[3] = queryCopy;
  v14 = queryCopy;

  v15 = [queryPropertyCopy copy];
  v16 = v10[4];
  v10[4] = v15;

  return v10;
}

+ (id)doesNotContainPredicateWithProperty:(id)property values:(id)values
{
  valuesCopy = values;
  propertyCopy = property;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = [propertyCopy copy];

  v9 = v7[1];
  v7[1] = v8;

  *(v7 + 16) = 1;
  v10 = [valuesCopy copy];

  v11 = v7[5];
  v7[5] = v10;

  return v7;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"property: %@; ", self->super._property];
  if (self->_negative)
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  [v3 appendFormat:@"negative: %@; ", v4];
  if (self->_values)
  {
    [v3 appendFormat:@"values: %@; ", self->_values];
  }

  if (self->_query || self->_queryProperty)
  {
    [v3 appendFormat:@"query: %@; ", self->_query];
    [v3 appendFormat:@"queryProperty: %@; ", self->_queryProperty];
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index
{
  if (self->_query)
  {
    query = self->_query;

    [SQLiteQuery bindToSelectStatement:"bindToSelectStatement:bindingIndex:" bindingIndex:?];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_values;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          SQLiteBindFoundationValueToStatement(statement, *index, *(*(&v12 + 1) + 8 * v11));
          ++*index;
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = SQLiteContainsPredicate;
  if ([(SQLitePropertyPredicate *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (self->_negative == *(v5 + 16) && ((values = self->_values, values == v5[5]) || [(SQLiteQuery *)values isEqual:?]))
    {
      query = self->_query;
      if (query == v5[3])
      {
        v8 = 1;
      }

      else
      {
        v8 = [(SQLiteQuery *)query isEqual:?];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)SQLForEntityClass:(Class)class
{
  v5 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"(");
  v6 = [(objc_class *)class disambiguatedSQLForProperty:self->super._property];
  [v5 appendString:v6];

  if (self->_negative)
  {
    v7 = CFSTR(" NOT IN (");
  }

  else
  {
    v7 = CFSTR(" IN (");
  }

  [v5 appendString:v7];
  query = self->_query;
  if (query)
  {
    v9 = [NSArray arrayWithObjects:self->_queryProperty, 0];
    v10 = [(SQLiteQuery *)query copySelectSQLWithProperties:v9];

    if (v10)
    {
      [v5 appendString:v10];
    }
  }

  else
  {
    v12 = [self->_values count];
    if (v12)
    {
      v13 = v12;
      [v5 appendString:@"?"];
      v14 = v13 - 1;
      if (v13 != 1)
      {
        do
        {
          [v5 appendString:{@", ?"}];
          --v14;
        }

        while (v14);
      }
    }
  }

  [v5 appendString:@""]);
  [v5 appendString:@""]);

  return v5;
}

@end