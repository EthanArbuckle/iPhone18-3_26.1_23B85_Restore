@interface PPSSQLiteComparisonPredicate
+ (id)predicateWithProperty:(id)a3 beginsWithString:(id)a4;
+ (id)predicateWithProperty:(id)a3 containsString:(id)a4;
+ (id)predicateWithProperty:(id)a3 endsWithString:(id)a4;
+ (id)predicateWithProperty:(id)a3 equalToValue:(id)a4;
+ (id)predicateWithProperty:(id)a3 greaterThanOrEqualToValue:(id)a4;
+ (id)predicateWithProperty:(id)a3 greaterThanValue:(id)a4;
+ (id)predicateWithProperty:(id)a3 lessThanOrEqualToValue:(id)a4;
+ (id)predicateWithProperty:(id)a3 lessThanValue:(id)a4;
+ (id)predicateWithProperty:(id)a3 likePattern:(id)a4;
+ (id)predicateWithProperty:(id)a3 likeValue:(id)a4;
+ (id)predicateWithProperty:(id)a3 likeValue:(id)a4 escapeCharacter:(id)a5;
+ (id)predicateWithProperty:(id)a3 notEqualToValue:(id)a4;
+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (PPSSQLiteComparisonPredicate)initWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5;
- (id)_comparisonTypeString;
- (id)description;
- (id)sqlForEntity:(id)a3;
- (unint64_t)hash;
- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
@end

@implementation PPSSQLiteComparisonPredicate

- (id)_comparisonTypeString
{
  v2 = [(PPSSQLiteComparisonPredicate *)self comparisonType];
  if ((v2 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return off_279A11750[v2 - 1];
  }
}

+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [[PPSSQLiteComparisonPredicate alloc] initWithProperty:v7 value:v8 comparisonType:a5];

  return v9;
}

+ (id)predicateWithProperty:(id)a3 equalToValue:(id)a4
{
  v4 = [a1 predicateWithProperty:a3 value:a4 comparisonType:1];

  return v4;
}

+ (id)predicateWithProperty:(id)a3 notEqualToValue:(id)a4
{
  v4 = [a1 predicateWithProperty:a3 value:a4 comparisonType:2];

  return v4;
}

+ (id)predicateWithProperty:(id)a3 lessThanValue:(id)a4
{
  v4 = [a1 predicateWithProperty:a3 value:a4 comparisonType:3];

  return v4;
}

+ (id)predicateWithProperty:(id)a3 lessThanOrEqualToValue:(id)a4
{
  v4 = [a1 predicateWithProperty:a3 value:a4 comparisonType:4];

  return v4;
}

+ (id)predicateWithProperty:(id)a3 greaterThanValue:(id)a4
{
  v4 = [a1 predicateWithProperty:a3 value:a4 comparisonType:5];

  return v4;
}

+ (id)predicateWithProperty:(id)a3 greaterThanOrEqualToValue:(id)a4
{
  v4 = [a1 predicateWithProperty:a3 value:a4 comparisonType:6];

  return v4;
}

+ (id)predicateWithProperty:(id)a3 likeValue:(id)a4
{
  v4 = [a1 predicateWithProperty:a3 value:a4 comparisonType:7];

  return v4;
}

+ (id)predicateWithProperty:(id)a3 likeValue:(id)a4 escapeCharacter:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[_PPSSQLiteComparisonPredicateLikeWithEscape alloc] initWithProperty:v7 value:v8 escapeCharacter:v9];

  return v10;
}

+ (id)predicateWithProperty:(id)a3 likePattern:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v8 = [v6 length];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = ___ZL43_stringEscapingGlobPatternsForLikePredicateP8NSString_block_invoke;
  v15 = &unk_279A11730;
  v17 = v18;
  v9 = v7;
  v16 = v9;
  [v6 enumerateSubstringsInRange:0 options:v8 usingBlock:{2, &v12}];

  _Block_object_dispose(v18, 8);
  v10 = [PPSSQLiteComparisonPredicate predicateWithProperty:v5 likeValue:v9 escapeCharacter:@"~", v12, v13, v14, v15];

  return v10;
}

+ (id)predicateWithProperty:(id)a3 beginsWithString:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CCACA8];
  v7 = _stringEscapingSpecialCharactersForLikePredicate(a4);
  v8 = [v6 stringWithFormat:@"%@%%", v7];

  v9 = [PPSSQLiteComparisonPredicate predicateWithProperty:v5 likeValue:v8 escapeCharacter:@"~"];

  return v9;
}

+ (id)predicateWithProperty:(id)a3 endsWithString:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CCACA8];
  v7 = _stringEscapingSpecialCharactersForLikePredicate(a4);
  v8 = [v6 stringWithFormat:@"%%%@", v7];

  v9 = [PPSSQLiteComparisonPredicate predicateWithProperty:v5 likeValue:v8 escapeCharacter:@"~"];

  return v9;
}

+ (id)predicateWithProperty:(id)a3 containsString:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CCACA8];
  v7 = _stringEscapingSpecialCharactersForLikePredicate(a4);
  v8 = [v6 stringWithFormat:@"%%%@%%", v7];

  v9 = [PPSSQLiteComparisonPredicate predicateWithProperty:v5 likeValue:v8 escapeCharacter:@"~"];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(PPSSQLitePropertyPredicate *)self property];
  v4 = [v3 hash];
  v5 = [(PPSSQLiteComparisonPredicate *)self value];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PPSSQLiteComparisonPredicate;
  if (-[PPSSQLitePropertyPredicate isEqual:](&v12, sel_isEqual_, v4) && (v5 = -[PPSSQLiteComparisonPredicate comparisonType](self, "comparisonType"), v5 == [v4 comparisonType]))
  {
    v6 = [(PPSSQLiteComparisonPredicate *)self value];
    v7 = [v4 value];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(PPSSQLiteComparisonPredicate *)self value];
      v9 = [v4 value];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  v7 = [(PPSSQLiteComparisonPredicate *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = *a4;
    v10 = [(PPSSQLiteComparisonPredicate *)self value];
    v11 = [v10 UTF8String];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = "";
    }

    sqlite3_bind_text(a3, v9, v12, -1, 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_21;
  }

  v13 = [(PPSSQLiteComparisonPredicate *)self value];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  v15 = [(PPSSQLiteComparisonPredicate *)self value];
  v16 = v15;
  if (v14)
  {
    v17 = [v15 objCType];

    v18 = *v17;
    if (v18 == 81)
    {
      if (!v17[1])
      {
        v32 = *a4;
        v10 = [(PPSSQLiteComparisonPredicate *)self value];
        sqlite3_bind_double(a3, v32, [v10 unsignedLongLongValue]);
        goto LABEL_21;
      }
    }

    else if ((v18 == 102 || v18 == 100) && !v17[1])
    {
      v19 = *a4;
      v10 = [(PPSSQLiteComparisonPredicate *)self value];
      [v10 doubleValue];
      sqlite3_bind_double(a3, v19, v20);
LABEL_21:

      goto LABEL_22;
    }

    v30 = *a4;
    v10 = [(PPSSQLiteComparisonPredicate *)self value];
    sqlite3_bind_int64(a3, v30, [v10 longLongValue]);
    goto LABEL_21;
  }

  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v22 = *a4;
    v10 = [(PPSSQLiteComparisonPredicate *)self value];
    v23 = [v10 bytes];
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = "";
    }

    v25 = [(PPSSQLiteComparisonPredicate *)self value];
    sqlite3_bind_blob(a3, v22, v24, [v25 length], 0xFFFFFFFFFFFFFFFFLL);

    goto LABEL_21;
  }

  v26 = [(PPSSQLiteComparisonPredicate *)self value];
  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if (v27)
  {
    v28 = *a4;
    v10 = [(PPSSQLiteComparisonPredicate *)self value];
    [v10 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(a3, v28, v29);
    goto LABEL_21;
  }

  v31 = [(PPSSQLiteComparisonPredicate *)self value];

  if (!v31)
  {
    sqlite3_bind_null(a3, *a4);
  }

LABEL_22:
  ++*a4;
}

- (id)sqlForEntity:(id)a3
{
  v4 = a3;
  v5 = [(PPSSQLitePropertyPredicate *)self property];
  v6 = [v4 disambiguatedSQLForProperty:v5 shouldEscape:1];

  v7 = MEMORY[0x277CCACA8];
  v8 = [(PPSSQLiteComparisonPredicate *)self _comparisonTypeString];
  v9 = [v7 stringWithFormat:@"(%@ %@ ?)", v6, v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PPSSQLitePropertyPredicate *)self property];
  v5 = [(PPSSQLiteComparisonPredicate *)self _comparisonTypeString];
  v6 = [v3 stringWithFormat:@"'%@' %@ %@", v4, v5, self->_value];

  return v6;
}

- (PPSSQLiteComparisonPredicate)initWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = PPSSQLiteComparisonPredicate;
  v10 = [(PPSSQLiteComparisonPredicate *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_comparisonType = a5;
    v12 = [v8 copy];
    property = v11->super._property;
    v11->super._property = v12;

    if ([v9 conformsToProtocol:&unk_2870198A8])
    {
      v14 = [v9 copy];
    }

    else
    {
      v14 = v9;
    }

    value = v11->_value;
    v11->_value = v14;
  }

  return v11;
}

@end