@interface PPSSQLiteComparisonPredicate
+ (id)predicateWithProperty:(id)property beginsWithString:(id)string;
+ (id)predicateWithProperty:(id)property containsString:(id)string;
+ (id)predicateWithProperty:(id)property endsWithString:(id)string;
+ (id)predicateWithProperty:(id)property equalToValue:(id)value;
+ (id)predicateWithProperty:(id)property greaterThanOrEqualToValue:(id)value;
+ (id)predicateWithProperty:(id)property greaterThanValue:(id)value;
+ (id)predicateWithProperty:(id)property lessThanOrEqualToValue:(id)value;
+ (id)predicateWithProperty:(id)property lessThanValue:(id)value;
+ (id)predicateWithProperty:(id)property likePattern:(id)pattern;
+ (id)predicateWithProperty:(id)property likeValue:(id)value;
+ (id)predicateWithProperty:(id)property likeValue:(id)value escapeCharacter:(id)character;
+ (id)predicateWithProperty:(id)property notEqualToValue:(id)value;
+ (id)predicateWithProperty:(id)property value:(id)value comparisonType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (PPSSQLiteComparisonPredicate)initWithProperty:(id)property value:(id)value comparisonType:(int64_t)type;
- (id)_comparisonTypeString;
- (id)description;
- (id)sqlForEntity:(id)entity;
- (unint64_t)hash;
- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index;
@end

@implementation PPSSQLiteComparisonPredicate

- (id)_comparisonTypeString
{
  comparisonType = [(PPSSQLiteComparisonPredicate *)self comparisonType];
  if ((comparisonType - 1) > 7)
  {
    return 0;
  }

  else
  {
    return off_279A11750[comparisonType - 1];
  }
}

+ (id)predicateWithProperty:(id)property value:(id)value comparisonType:(int64_t)type
{
  propertyCopy = property;
  valueCopy = value;
  v9 = [[PPSSQLiteComparisonPredicate alloc] initWithProperty:propertyCopy value:valueCopy comparisonType:type];

  return v9;
}

+ (id)predicateWithProperty:(id)property equalToValue:(id)value
{
  v4 = [self predicateWithProperty:property value:value comparisonType:1];

  return v4;
}

+ (id)predicateWithProperty:(id)property notEqualToValue:(id)value
{
  v4 = [self predicateWithProperty:property value:value comparisonType:2];

  return v4;
}

+ (id)predicateWithProperty:(id)property lessThanValue:(id)value
{
  v4 = [self predicateWithProperty:property value:value comparisonType:3];

  return v4;
}

+ (id)predicateWithProperty:(id)property lessThanOrEqualToValue:(id)value
{
  v4 = [self predicateWithProperty:property value:value comparisonType:4];

  return v4;
}

+ (id)predicateWithProperty:(id)property greaterThanValue:(id)value
{
  v4 = [self predicateWithProperty:property value:value comparisonType:5];

  return v4;
}

+ (id)predicateWithProperty:(id)property greaterThanOrEqualToValue:(id)value
{
  v4 = [self predicateWithProperty:property value:value comparisonType:6];

  return v4;
}

+ (id)predicateWithProperty:(id)property likeValue:(id)value
{
  v4 = [self predicateWithProperty:property value:value comparisonType:7];

  return v4;
}

+ (id)predicateWithProperty:(id)property likeValue:(id)value escapeCharacter:(id)character
{
  propertyCopy = property;
  valueCopy = value;
  characterCopy = character;
  v10 = [[_PPSSQLiteComparisonPredicateLikeWithEscape alloc] initWithProperty:propertyCopy value:valueCopy escapeCharacter:characterCopy];

  return v10;
}

+ (id)predicateWithProperty:(id)property likePattern:(id)pattern
{
  propertyCopy = property;
  patternCopy = pattern;
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v8 = [patternCopy length];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = ___ZL43_stringEscapingGlobPatternsForLikePredicateP8NSString_block_invoke;
  v15 = &unk_279A11730;
  v17 = v18;
  v9 = v7;
  v16 = v9;
  [patternCopy enumerateSubstringsInRange:0 options:v8 usingBlock:{2, &v12}];

  _Block_object_dispose(v18, 8);
  v10 = [PPSSQLiteComparisonPredicate predicateWithProperty:propertyCopy likeValue:v9 escapeCharacter:@"~", v12, v13, v14, v15];

  return v10;
}

+ (id)predicateWithProperty:(id)property beginsWithString:(id)string
{
  propertyCopy = property;
  v6 = MEMORY[0x277CCACA8];
  v7 = _stringEscapingSpecialCharactersForLikePredicate(string);
  v8 = [v6 stringWithFormat:@"%@%%", v7];

  v9 = [PPSSQLiteComparisonPredicate predicateWithProperty:propertyCopy likeValue:v8 escapeCharacter:@"~"];

  return v9;
}

+ (id)predicateWithProperty:(id)property endsWithString:(id)string
{
  propertyCopy = property;
  v6 = MEMORY[0x277CCACA8];
  v7 = _stringEscapingSpecialCharactersForLikePredicate(string);
  v8 = [v6 stringWithFormat:@"%%%@", v7];

  v9 = [PPSSQLiteComparisonPredicate predicateWithProperty:propertyCopy likeValue:v8 escapeCharacter:@"~"];

  return v9;
}

+ (id)predicateWithProperty:(id)property containsString:(id)string
{
  propertyCopy = property;
  v6 = MEMORY[0x277CCACA8];
  v7 = _stringEscapingSpecialCharactersForLikePredicate(string);
  v8 = [v6 stringWithFormat:@"%%%@%%", v7];

  v9 = [PPSSQLiteComparisonPredicate predicateWithProperty:propertyCopy likeValue:v8 escapeCharacter:@"~"];

  return v9;
}

- (unint64_t)hash
{
  property = [(PPSSQLitePropertyPredicate *)self property];
  v4 = [property hash];
  value = [(PPSSQLiteComparisonPredicate *)self value];
  v6 = [value hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = PPSSQLiteComparisonPredicate;
  if (-[PPSSQLitePropertyPredicate isEqual:](&v12, sel_isEqual_, equalCopy) && (v5 = -[PPSSQLiteComparisonPredicate comparisonType](self, "comparisonType"), v5 == [equalCopy comparisonType]))
  {
    value = [(PPSSQLiteComparisonPredicate *)self value];
    value2 = [equalCopy value];
    if (value == value2)
    {
      v10 = 1;
    }

    else
    {
      value3 = [(PPSSQLiteComparisonPredicate *)self value];
      value4 = [equalCopy value];
      v10 = [value3 isEqual:value4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index
{
  value = [(PPSSQLiteComparisonPredicate *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = *index;
    value2 = [(PPSSQLiteComparisonPredicate *)self value];
    uTF8String = [value2 UTF8String];
    if (uTF8String)
    {
      v12 = uTF8String;
    }

    else
    {
      v12 = "";
    }

    sqlite3_bind_text(statement, v9, v12, -1, 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_21;
  }

  value3 = [(PPSSQLiteComparisonPredicate *)self value];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  value4 = [(PPSSQLiteComparisonPredicate *)self value];
  v16 = value4;
  if (v14)
  {
    objCType = [value4 objCType];

    v18 = *objCType;
    if (v18 == 81)
    {
      if (!objCType[1])
      {
        v32 = *index;
        value2 = [(PPSSQLiteComparisonPredicate *)self value];
        sqlite3_bind_double(statement, v32, [value2 unsignedLongLongValue]);
        goto LABEL_21;
      }
    }

    else if ((v18 == 102 || v18 == 100) && !objCType[1])
    {
      v19 = *index;
      value2 = [(PPSSQLiteComparisonPredicate *)self value];
      [value2 doubleValue];
      sqlite3_bind_double(statement, v19, v20);
LABEL_21:

      goto LABEL_22;
    }

    v30 = *index;
    value2 = [(PPSSQLiteComparisonPredicate *)self value];
    sqlite3_bind_int64(statement, v30, [value2 longLongValue]);
    goto LABEL_21;
  }

  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v22 = *index;
    value2 = [(PPSSQLiteComparisonPredicate *)self value];
    bytes = [value2 bytes];
    if (bytes)
    {
      v24 = bytes;
    }

    else
    {
      v24 = "";
    }

    value5 = [(PPSSQLiteComparisonPredicate *)self value];
    sqlite3_bind_blob(statement, v22, v24, [value5 length], 0xFFFFFFFFFFFFFFFFLL);

    goto LABEL_21;
  }

  value6 = [(PPSSQLiteComparisonPredicate *)self value];
  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if (v27)
  {
    v28 = *index;
    value2 = [(PPSSQLiteComparisonPredicate *)self value];
    [value2 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(statement, v28, v29);
    goto LABEL_21;
  }

  value7 = [(PPSSQLiteComparisonPredicate *)self value];

  if (!value7)
  {
    sqlite3_bind_null(statement, *index);
  }

LABEL_22:
  ++*index;
}

- (id)sqlForEntity:(id)entity
{
  entityCopy = entity;
  property = [(PPSSQLitePropertyPredicate *)self property];
  v6 = [entityCopy disambiguatedSQLForProperty:property shouldEscape:1];

  v7 = MEMORY[0x277CCACA8];
  _comparisonTypeString = [(PPSSQLiteComparisonPredicate *)self _comparisonTypeString];
  v9 = [v7 stringWithFormat:@"(%@ %@ ?)", v6, _comparisonTypeString];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  property = [(PPSSQLitePropertyPredicate *)self property];
  _comparisonTypeString = [(PPSSQLiteComparisonPredicate *)self _comparisonTypeString];
  v6 = [v3 stringWithFormat:@"'%@' %@ %@", property, _comparisonTypeString, self->_value];

  return v6;
}

- (PPSSQLiteComparisonPredicate)initWithProperty:(id)property value:(id)value comparisonType:(int64_t)type
{
  propertyCopy = property;
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = PPSSQLiteComparisonPredicate;
  v10 = [(PPSSQLiteComparisonPredicate *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_comparisonType = type;
    v12 = [propertyCopy copy];
    property = v11->super._property;
    v11->super._property = v12;

    if ([valueCopy conformsToProtocol:&unk_2870198A8])
    {
      v14 = [valueCopy copy];
    }

    else
    {
      v14 = valueCopy;
    }

    value = v11->_value;
    v11->_value = v14;
  }

  return v11;
}

@end