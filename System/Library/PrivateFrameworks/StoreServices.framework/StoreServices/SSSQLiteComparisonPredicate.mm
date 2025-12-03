@interface SSSQLiteComparisonPredicate
+ (id)predicateWithProperty:(id)property equalToLongLong:(int64_t)long;
+ (id)predicateWithProperty:(id)property value:(id)value comparisonType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (id)_comparisonTypeString;
- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index;
- (void)dealloc;
@end

@implementation SSSQLiteComparisonPredicate

- (id)_comparisonTypeString
{
  comparisonType = [(SSSQLiteComparisonPredicate *)self comparisonType];
  if ((comparisonType - 1) < 7)
  {
    return off_1E84B2048[comparisonType - 1];
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSSQLiteComparisonPredicate;
  [(SSSQLitePropertyPredicate *)&v3 dealloc];
}

+ (id)predicateWithProperty:(id)property equalToLongLong:(int64_t)long
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:long];
  v7 = [self predicateWithProperty:property equalToValue:v6];

  return v7;
}

+ (id)predicateWithProperty:(id)property value:(id)value comparisonType:(int64_t)type
{
  v8 = objc_alloc_init(objc_opt_class());
  v8[2] = type;
  v8[1] = [property copy];
  if ([value conformsToProtocol:&unk_1F507D4B0])
  {
    valueCopy = [value copy];
  }

  else
  {
    valueCopy = value;
  }

  v8[3] = valueCopy;

  return v8;
}

- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sqlite3_bind_text(statement, *index, [self->_value UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objCType = [self->_value objCType];
      v9 = *objCType;
      if ((v9 == 102 || v9 == 100) && !objCType[1])
      {
        v10 = *index;
        [self->_value doubleValue];
        sqlite3_bind_double(statement, v10, v11);
      }

      else
      {
        sqlite3_bind_int64(statement, *index, [self->_value longLongValue]);
      }
    }

    else
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }
  }

  ++*index;
}

- (BOOL)isEqual:(id)equal
{
  v9.receiver = self;
  v9.super_class = SSSQLiteComparisonPredicate;
  v5 = [(SSSQLitePropertyPredicate *)&v9 isEqual:?];
  if (v5)
  {
    comparisonType = [(SSSQLiteComparisonPredicate *)self comparisonType];
    if (comparisonType == [equal comparisonType])
    {
      value = [(SSSQLiteComparisonPredicate *)self value];
      if (value == [equal value])
      {
        LOBYTE(v5) = 1;
      }

      else
      {
        LOBYTE(v5) = [-[SSSQLiteComparisonPredicate value](self "value")];
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end