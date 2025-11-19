@interface SSSQLiteComparisonPredicate
+ (id)predicateWithProperty:(id)a3 equalToLongLong:(int64_t)a4;
+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)_comparisonTypeString;
- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
- (void)dealloc;
@end

@implementation SSSQLiteComparisonPredicate

- (id)_comparisonTypeString
{
  v4 = [(SSSQLiteComparisonPredicate *)self comparisonType];
  if ((v4 - 1) < 7)
  {
    return off_1E84B2048[v4 - 1];
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

+ (id)predicateWithProperty:(id)a3 equalToLongLong:(int64_t)a4
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:a4];
  v7 = [a1 predicateWithProperty:a3 equalToValue:v6];

  return v7;
}

+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5
{
  v8 = objc_alloc_init(objc_opt_class());
  v8[2] = a5;
  v8[1] = [a3 copy];
  if ([a4 conformsToProtocol:&unk_1F507D4B0])
  {
    v9 = [a4 copy];
  }

  else
  {
    v9 = a4;
  }

  v8[3] = v9;

  return v8;
}

- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
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
      v8 = [self->_value objCType];
      v9 = *v8;
      if ((v9 == 102 || v9 == 100) && !v8[1])
      {
        v10 = *a4;
        [self->_value doubleValue];
        sqlite3_bind_double(a3, v10, v11);
      }

      else
      {
        sqlite3_bind_int64(a3, *a4, [self->_value longLongValue]);
      }
    }

    else
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }
  }

  ++*a4;
}

- (BOOL)isEqual:(id)a3
{
  v9.receiver = self;
  v9.super_class = SSSQLiteComparisonPredicate;
  v5 = [(SSSQLitePropertyPredicate *)&v9 isEqual:?];
  if (v5)
  {
    v6 = [(SSSQLiteComparisonPredicate *)self comparisonType];
    if (v6 == [a3 comparisonType])
    {
      v7 = [(SSSQLiteComparisonPredicate *)self value];
      if (v7 == [a3 value])
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