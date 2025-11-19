@interface SQLiteComparisonPredicate
+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5;
+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5 collatingStrategy:(int64_t)a6;
- (BOOL)_isCollatingStrategyNoCase;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
- (id)_comparisonTypeFormat;
- (id)description;
- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
@end

@implementation SQLiteComparisonPredicate

- (id)_comparisonTypeFormat
{
  result = 0;
  comparisonType = self->_comparisonType;
  if (comparisonType <= 4)
  {
    if (comparisonType > 2)
    {
      if (comparisonType == 3)
      {
        v5 = [(SQLiteComparisonPredicate *)self _isCollatingStrategyNoCase];
        v6 = @"(%@ < ?)";
        v7 = @"(%@ < ? COLLATE NOCASE)";
      }

      else
      {
        v5 = [(SQLiteComparisonPredicate *)self _isCollatingStrategyNoCase];
        v6 = @"(%@ <= ?)";
        v7 = @"(%@ <= ? COLLATE NOCASE)";
      }
    }

    else if (comparisonType == 1)
    {
      v5 = [(SQLiteComparisonPredicate *)self _isCollatingStrategyNoCase];
      v6 = @"(%@ = ?)";
      v7 = @"(%@ = ? COLLATE NOCASE)";
    }

    else
    {
      if (comparisonType != 2)
      {
        return result;
      }

      v5 = [(SQLiteComparisonPredicate *)self _isCollatingStrategyNoCase];
      v6 = @"(%@ != ?)";
      v7 = @"(%@ != ? COLLATE NOCASE)";
    }

    goto LABEL_17;
  }

  if (comparisonType <= 6)
  {
    if (comparisonType == 5)
    {
      v5 = [(SQLiteComparisonPredicate *)self _isCollatingStrategyNoCase];
      v6 = @"(%@ > ?)";
      v7 = @"(%@ > ? COLLATE NOCASE)";
    }

    else
    {
      v5 = [(SQLiteComparisonPredicate *)self _isCollatingStrategyNoCase];
      v6 = @"(%@ >= ?)";
      v7 = @"(%@ >= ? COLLATE NOCASE)";
    }

LABEL_17:
    if (v5)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  if (comparisonType == 7)
  {
    return @"(%@ & ?)";
  }

  if (comparisonType == 8)
  {
    return @"(NOT %@ & ?)";
  }

  return result;
}

- (BOOL)_isCollatingStrategyNoCase
{
  if (self->_collatingStrategy == 1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  objc_opt_class();
  v10 = (objc_opt_isKindOfClass() & 1) != 0 && [v8 length] > 0x20;
  v11 = objc_alloc_init(objc_opt_class());
  *(v11 + 3) = a5;
  v12 = [v9 copy];

  v13 = *(v11 + 1);
  *(v11 + 1) = v12;

  if (v10)
  {
    *(v11 + 16) = 1;
  }

  else if ([v8 conformsToProtocol:&OBJC_PROTOCOL___NSCopying])
  {
    v14 = [v8 copy];
    v15 = *(v11 + 4);
    *(v11 + 4) = v14;
  }

  else
  {
    objc_storeStrong(v11 + 4, a4);
  }

  return v11;
}

+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5 collatingStrategy:(int64_t)a6
{
  result = [a1 predicateWithProperty:a3 value:a4 comparisonType:a5];
  *(result + 5) = a6;
  return result;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"property: %@; ", self->super._property];
  v4 = SQLiteComparisonTypeToString(self->_comparisonType);
  [v3 appendFormat:@"comparisonType: %@; ", v4];

  [v3 appendFormat:@"value: %@; ", self->_value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    collatingStrategy = self->_collatingStrategy;
    v6 = @"unknown";
    if (collatingStrategy == 1)
    {
      v6 = @"nocase";
    }

    if (collatingStrategy)
    {
      v7 = v6;
    }

    else
    {
      v7 = @"none";
    }

    [v3 appendFormat:@"collatingStrategy: %@; ", v7];
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  if (!self->_forceFalse)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sqlite3_bind_text(a3, *a4, [self->_value UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [self->_value objCType];
        v8 = *v7;
        if ((v8 == 102 || v8 == 100) && !v7[1])
        {
          v9 = *a4;
          [self->_value doubleValue];
          sqlite3_bind_double(a3, v9, v10);
        }

        else
        {
          sqlite3_bind_int64(a3, *a4, [self->_value longLongValue]);
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [self->_value length] <= 0x20)
        {
          sqlite3_bind_blob(a3, *a4, [self->_value bytes], objc_msgSend(self->_value, "length"), 0xFFFFFFFFFFFFFFFFLL);
        }

        else if (!self->_value)
        {
          sqlite3_bind_null(a3, *a4);
        }
      }
    }

    ++*a4;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SQLiteComparisonPredicate;
  if ([(SQLitePropertyPredicate *)&v9 isEqual:v4])
  {
    v5 = v4;
    v7 = self->_comparisonType == v5[3] && ((value = self->_value, value == v5[4]) || [value isEqual:?]) && self->_forceFalse == *(v5 + 16) && self->_collatingStrategy == v5[5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)SQLForEntityClass:(Class)a3
{
  if (self->_forceFalse)
  {
    v3 = @"(0)";
  }

  else
  {
    v5 = [(objc_class *)a3 disambiguatedSQLForProperty:self->super._property];
    v6 = [(SQLiteComparisonPredicate *)self _comparisonTypeFormat];
    v7 = +[NSLocale systemLocale];
    v3 = PKStringWithValidatedFormatWithLocale();
  }

  return v3;
}

@end