@interface RMPredicateDescription
- (BOOL)_buildPredicateFromFormatString:(id)a3 error:(id *)a4;
- (RMPredicateDescription)initWithCoder:(id)a3;
- (RMPredicateDescription)initWithFormat:(id)a3 error:(id *)a4;
- (id)debugDescription;
- (id)description;
- (int64_t)_evaluateVersion1WithStatus:(id)a3 error:(id *)a4;
- (int64_t)_evaluateVersion2WithStatus:(id)a3 properties:(id)a4 error:(id *)a5;
- (int64_t)evaluateWithStatus:(id)a3 properties:(id)a4 error:(id *)a5;
- (void)_buildPredicateWithVisitorFromFormatString:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMPredicateDescription

- (RMPredicateDescription)initWithFormat:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = RMPredicateDescription;
  v7 = [(RMPredicateDescription *)&v11 init];
  v8 = v7;
  if (v7 && ![(RMPredicateDescription *)v7 _buildPredicateFromFormatString:v6 error:a4])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (BOOL)_buildPredicateFromFormatString:(id)a3 error:(id *)a4
{
  v4 = a3;
  v44[0] = 0;
  v37 = [NSRegularExpression regularExpressionWithPattern:"regularExpressionWithPattern:options:error:" options:@"@(status|property|key)\\(([^)]+)\\" error:?], 1, v44);
  v34 = v44[0];
  if (v37)
  {
    v32 = [v4 length];
    v36 = [v37 matchesInString:v4 options:0 range:0];
    if ([v36 count])
    {
      v39 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v36 count]);
      v38 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v36 count]);
      v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v36 count]);
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v6 = v36;
      v7 = [v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (!v7)
      {
        goto LABEL_18;
      }

      v8 = *v41;
      while (1)
      {
        v9 = 0;
        do
        {
          if (*v41 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v40 + 1) + 8 * v9);
          v11 = [v10 rangeAtIndex:1];
          v13 = [v4 substringWithRange:{v11, v12}];
          v14 = [v10 rangeAtIndex:2];
          v16 = [v4 substringWithRange:{v14, v15}];
          if ([v13 isEqualToString:@"status"])
          {
            [v39 addObject:v16];
            v17 = [NSString stringWithFormat:@"%@.%@", v13, v16];
            [v5 addObject:v17];
LABEL_12:

            goto LABEL_13;
          }

          if ([v13 isEqualToString:@"property"])
          {
            [v38 addObject:v16];
            v17 = [NSString stringWithFormat:@"%@.%@", v13, v16];
            [v5 addObject:v17];
            goto LABEL_12;
          }

          if ([v13 isEqualToString:@"key"])
          {
            [v5 addObject:v16];
          }

LABEL_13:

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v18 = [v6 countByEnumeratingWithState:&v40 objects:v45 count:16];
        v7 = v18;
        if (!v18)
        {
LABEL_18:

          v19 = [v37 stringByReplacingMatchesInString:v4 options:0 range:0 withTemplate:{v32, @"%K"}];
          v20 = [NSPredicate predicateWithFormat:v19 argumentArray:v5];
          predicate = self->_predicate;
          self->_predicate = v20;

          v22 = [v39 copy];
          statusKeyPaths = self->_statusKeyPaths;
          self->_statusKeyPaths = v22;

          v24 = [v38 copy];
          properties = self->_properties;
          self->_properties = v24;

          version = self->_version;
          self->_version = &off_1000D6EF8;

          v27 = v36;
          goto LABEL_27;
        }
      }
    }

    [(RMPredicateDescription *)self _buildPredicateWithVisitorFromFormatString:v4];
    v27 = v36;
LABEL_27:

    v30 = 1;
  }

  else
  {
    v28 = +[RMLog predicateDescription];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10005D4B4(v34, v28);
    }

    if (a4)
    {
      v29 = [RMErrorUtilities createUnableToParsePredicateErrorWithFormat:v4 reason:@"Unable to create predicate regular expression"];
      if (v29)
      {
        v29 = v29;
        *a4 = v29;
      }
    }

    v30 = 0;
  }

  return v30;
}

- (void)_buildPredicateWithVisitorFromFormatString:(id)a3
{
  v14 = a3;
  v4 = [NSPredicate predicateWithFormat:v14];
  predicate = self->_predicate;
  self->_predicate = v4;

  statusKeyPaths = self->_statusKeyPaths;
  self->_statusKeyPaths = &__NSArray0__struct;

  properties = self->_properties;
  self->_properties = &__NSArray0__struct;

  version = self->_version;
  self->_version = &off_1000D6EE0;

  v9 = objc_autoreleasePoolPush();
  v10 = [[_RMPredicateVisitor alloc] initWithFormat:v14];
  [(NSPredicate *)self->_predicate acceptVisitor:v10 flags:3];
  v11 = [(_RMPredicateVisitor *)v10 statusKeyPaths];
  v12 = [v11 allObjects];
  v13 = self->_statusKeyPaths;
  self->_statusKeyPaths = v12;

  objc_autoreleasePoolPop(v9);
}

- (RMPredicateDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = RMPredicateDescription;
  v5 = [(RMPredicateDescription *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    predicate = v5->_predicate;
    v5->_predicate = v6;

    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"keyPaths"];
    statusKeyPaths = v5->_statusKeyPaths;
    v5->_statusKeyPaths = v10;

    if ([v4 containsValueForKey:@"version"])
    {
      v12 = objc_opt_class();
      v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
      v14 = [v4 decodeObjectOfClasses:v13 forKey:@"properties"];
      properties = v5->_properties;
      v5->_properties = v14;

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    }

    else
    {
      v17 = v5->_properties;
      v5->_properties = &__NSArray0__struct;

      v16 = &off_1000D6EE0;
    }

    version = v5->_version;
    v5->_version = v16;

    [(NSPredicate *)v5->_predicate allowEvaluation];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMPredicateDescription *)self predicate];
  [v4 encodeObject:v5 forKey:@"predicate"];

  v6 = [(RMPredicateDescription *)self statusKeyPaths];
  [v4 encodeObject:v6 forKey:@"keyPaths"];

  v7 = [(RMPredicateDescription *)self properties];
  [v4 encodeObject:v7 forKey:@"properties"];

  v8 = [(RMPredicateDescription *)self version];
  [v4 encodeObject:v8 forKey:@"version"];
}

- (id)description
{
  v2 = [(RMPredicateDescription *)self predicate];
  v3 = [v2 predicateFormat];

  return v3;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(RMPredicateDescription *)self statusKeyPaths];
  v6 = [(RMPredicateDescription *)self properties];
  v7 = [(RMPredicateDescription *)self predicate];
  v8 = [NSString stringWithFormat:@"<%@: %p { statusKeyPaths = %@, properties = %@, predicate = %@ }>", v4, self, v5, v6, v7];

  return v8;
}

- (int64_t)evaluateWithStatus:(id)a3 properties:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(RMPredicateDescription *)self version];
  v11 = [v10 isEqualToNumber:&off_1000D6EE0];

  if (v11)
  {
    v12 = [(RMPredicateDescription *)self _evaluateVersion1WithStatus:v8 error:a5];
LABEL_5:
    v15 = v12;
    goto LABEL_13;
  }

  v13 = [(RMPredicateDescription *)self version];
  v14 = [v13 isEqualToNumber:&off_1000D6EF8];

  if (v14)
  {
    v12 = [(RMPredicateDescription *)self _evaluateVersion2WithStatus:v8 properties:v9 error:a5];
    goto LABEL_5;
  }

  v16 = +[RMLog predicateDescription];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10005D52C(self, v16);
  }

  if (a5)
  {
    v17 = [(RMPredicateDescription *)self predicate];
    v18 = [v17 predicateFormat];
    v19 = [RMErrorUtilities createUnableToEvaluatePredicateErrorWithFormat:v18 reason:@"Invalid version"];

    if (v19)
    {
      v20 = v19;
      *a5 = v19;
    }
  }

  v15 = -1;
LABEL_13:

  return v15;
}

- (int64_t)_evaluateVersion1WithStatus:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(RMPredicateDescription *)self predicate];
  v7 = [v6 evaluateWithObject:v5];

  return v7;
}

- (int64_t)_evaluateVersion2WithStatus:(id)a3 properties:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v13[0] = @"status";
  v13[1] = @"property";
  v14[0] = v7;
  v14[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [(RMPredicateDescription *)self predicate];
  v11 = [v10 evaluateWithObject:v9];

  return v11;
}

@end