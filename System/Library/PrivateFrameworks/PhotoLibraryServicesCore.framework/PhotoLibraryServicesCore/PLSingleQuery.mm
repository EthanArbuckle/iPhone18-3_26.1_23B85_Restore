@interface PLSingleQuery
- (BOOL)isEqual:(id)equal;
- (NSDate)dateValue;
- (NSDate)secondDateValue;
- (NSString)secondStringValue;
- (NSString)stringValue;
- (PLQueryCircularRegion)circularRegionValue;
- (PLQueryCircularRegion)secondCircularRegionValue;
- (double)doubleValue;
- (double)secondDoubleValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)logDescription;
- (int)migratedComparator;
- (int64_t)integerValue;
- (int64_t)secondIntegerValue;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setCircularRegionValue:(id)value;
- (void)setDateValue:(id)value;
- (void)setDoubleValue:(double)value;
- (void)setHasKey:(BOOL)key;
- (void)setHasUnit:(BOOL)unit;
- (void)setHasValueType:(BOOL)type;
- (void)setIntegerValue:(int64_t)value;
- (void)setSecondCircularRegionValue:(id)value;
- (void)setSecondDateValue:(id)value;
- (void)setSecondDoubleValue:(double)value;
- (void)setSecondIntegerValue:(int64_t)value;
- (void)setSecondStringValue:(id)value;
- (void)setStringValue:(id)value;
- (void)setValueAndType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation PLSingleQuery

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if ((v5 & 2) != 0)
  {
    self->_key = *(fromCopy + 6);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 48);
  }

  if ((v5 & 8) != 0)
  {
    self->_valueType = *(fromCopy + 11);
    *&self->_has |= 8u;
  }

  v7 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PLSingleQuery *)self setFirstValue:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 4))
  {
    [(PLSingleQuery *)self setSecondValue:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 48);
  if (v6)
  {
    self->_comparator = *(fromCopy + 2);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 48);
  }

  if ((v6 & 4) != 0)
  {
    self->_unit = *(fromCopy + 10);
    *&self->_has |= 4u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_key;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_valueType;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSData *)self->_firstValue hash];
  v6 = [(NSData *)self->_secondValue hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_comparator;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v8 = 2654435761 * self->_unit;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_key != *(equalCopy + 6))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
LABEL_25:
    v7 = 0;
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_valueType != *(equalCopy + 11))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_25;
  }

  firstValue = self->_firstValue;
  if (firstValue | *(equalCopy + 2) && ![(NSData *)firstValue isEqual:?])
  {
    goto LABEL_25;
  }

  secondValue = self->_secondValue;
  if (secondValue | *(equalCopy + 4))
  {
    if (![(NSData *)secondValue isEqual:?])
    {
      goto LABEL_25;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_comparator != *(equalCopy + 2))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_25;
  }

  v7 = (*(equalCopy + 48) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_unit != *(equalCopy + 10))
    {
      goto LABEL_25;
    }

    v7 = 1;
  }

LABEL_26:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_key;
    *(v5 + 48) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v5 + 44) = self->_valueType;
    *(v5 + 48) |= 8u;
  }

  v8 = [(NSData *)self->_firstValue copyWithZone:zone];
  v9 = *(v6 + 16);
  *(v6 + 16) = v8;

  v10 = [(NSData *)self->_secondValue copyWithZone:zone];
  v11 = *(v6 + 32);
  *(v6 + 32) = v10;

  v12 = self->_has;
  if (v12)
  {
    *(v6 + 8) = self->_comparator;
    *(v6 + 48) |= 1u;
    v12 = self->_has;
  }

  if ((v12 & 4) != 0)
  {
    *(v6 + 40) = self->_unit;
    *(v6 + 48) |= 4u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[6] = self->_key;
    *(toCopy + 48) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    toCopy[11] = self->_valueType;
    *(toCopy + 48) |= 8u;
  }

  v7 = toCopy;
  if (self->_firstValue)
  {
    [toCopy setFirstValue:?];
    toCopy = v7;
  }

  if (self->_secondValue)
  {
    [v7 setSecondValue:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    toCopy[2] = self->_comparator;
    *(toCopy + 48) |= 1u;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    toCopy[10] = self->_unit;
    *(toCopy + 48) |= 4u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_firstValue)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_secondValue)
  {
    PBDataWriterWriteDataField();
  }

  v5 = self->_has;
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    v5 = self->_has;
  }

  if ((v5 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_key];
    [dictionary setObject:v5 forKey:@"key"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_valueType];
    [dictionary setObject:v6 forKey:@"valueType"];
  }

  firstValue = self->_firstValue;
  if (firstValue)
  {
    [dictionary setObject:firstValue forKey:@"firstValue"];
  }

  secondValue = self->_secondValue;
  if (secondValue)
  {
    [dictionary setObject:secondValue forKey:@"secondValue"];
  }

  v9 = self->_has;
  if (v9)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:self->_comparator];
    [dictionary setObject:v10 forKey:@"comparator"];

    v9 = self->_has;
  }

  if ((v9 & 4) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_unit];
    [dictionary setObject:v11 forKey:@"unit"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PLSingleQuery;
  v4 = [(PLSingleQuery *)&v8 description];
  dictionaryRepresentation = [(PLSingleQuery *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasValueType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasKey:(BOOL)key
{
  if (key)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)logDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@: %p> {", v5, self];

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __42__PLSingleQuery_Utilities__logDescription__block_invoke;
  v29[3] = &unk_1E7932A58;
  v31 = &v32;
  v6 = v3;
  v30 = v6;
  v7 = MEMORY[0x1AC5925C0](v29);
  if ([(PLSingleQuery *)self hasKey])
  {
    v8 = PLStringFromPLQueryKey([(PLSingleQuery *)self key]);
    [v6 appendFormat:@" key = %@", v8];

    *(v33 + 24) = 1;
  }

  if ([(PLSingleQuery *)self hasValueType])
  {
    v7[2](v7);
    v9 = [(PLSingleQuery *)self valueType]- 1;
    if (v9 > 4)
    {
      v10 = @"kPLQueryValueType_unknown";
    }

    else
    {
      v10 = *(&off_1E7931F00 + v9);
    }

    v11 = v10;
    [v6 appendFormat:@" valueType = %@", v11];

    *(v33 + 24) = 1;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __42__PLSingleQuery_Utilities__logDescription__block_invoke_2;
  v25[3] = &unk_1E79306E8;
  v12 = v7;
  v27 = v12;
  v28 = &v32;
  v25[4] = self;
  v13 = v6;
  v26 = v13;
  v14 = MEMORY[0x1AC5925C0](v25);
  firstValue = [(PLSingleQuery *)self firstValue];

  if (firstValue)
  {
    firstValue2 = [(PLSingleQuery *)self firstValue];
    (v14)[2](v14, @"firstValue", firstValue2);
  }

  secondValue = [(PLSingleQuery *)self secondValue];

  if (secondValue)
  {
    secondValue2 = [(PLSingleQuery *)self secondValue];
    (v14)[2](v14, @"secondValue", secondValue2);
  }

  if ([(PLSingleQuery *)self hasComparator])
  {
    v12[2](v12);
    v19 = PLStringFromPLQueryComparatorType([(PLSingleQuery *)self comparator]);
    [v13 appendFormat:@" comparator = %@", v19];

    *(v33 + 24) = 1;
  }

  if ([(PLSingleQuery *)self hasUnit])
  {
    v12[2](v12);
    v20 = [(PLSingleQuery *)self unit]- 1;
    if (v20 > 4)
    {
      v21 = @"kPLQueryUnit_unused";
    }

    else
    {
      v21 = *(&off_1E7931F28 + v20);
    }

    v22 = v21;
    [v13 appendFormat:@" unit = %@", v22];

    *(v33 + 24) = 0;
  }

  [v13 appendFormat:@" }"];
  v23 = v13;

  _Block_object_dispose(&v32, 8);

  return v23;
}

uint64_t __42__PLSingleQuery_Utilities__logDescription__block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    return [*(result + 32) appendFormat:@", "];
  }

  return result;
}

void __42__PLSingleQuery_Utilities__logDescription__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 48) + 16))();
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v7 = [*(a1 + 32) valueType];
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      v11 = [*(a1 + 32) key];
      v8 = *(a1 + 40);
      if (v11 != 5)
      {
        v14 = 0;
        [v6 getBytes:&v14 length:8];
        [v8 appendFormat:@" %@ = %ld (%@)", v5, v14, v6];
        goto LABEL_19;
      }

      v14 = 0;
      [v6 getBytes:&v14 length:8];
      if ((v14 - 1) > 0x10)
      {
        v12 = @"kPLQueryValue_unknown";
      }

      else
      {
        v12 = *(&off_1E7931F50 + (v14 - 1));
      }

      v9 = v12;
      goto LABEL_18;
    }

    if (v7 == 2)
    {
      v10 = *(a1 + 40);
      v14 = 0;
      [v6 getBytes:&v14 length:8];
      [v10 appendFormat:@" %@ = %lf (%@)", v5, v14, v6];
    }
  }

  else
  {
    switch(v7)
    {
      case 3:
        v8 = *(a1 + 40);
        v9 = stringFromData(v6);
        goto LABEL_18;
      case 4:
        v8 = *(a1 + 40);
        v9 = dateFromData(v6);
        goto LABEL_18;
      case 5:
        v8 = *(a1 + 40);
        v9 = circularRegionFromData(v6);
LABEL_18:
        v13 = v9;
        [v8 appendFormat:@" %@ = %@ (%@)", v5, v9, v6];

        break;
    }
  }

LABEL_19:
}

- (void)setValueAndType:(id)type
{
  number = type;
  if (![(PLSingleQuery *)self hasValueType])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = CFNumberGetType(number) - 5;
      if (v4 >= 0xC)
      {
        v5 = 1;
      }

      else
      {
        v5 = dword_1AAA8F534[v4];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = 3;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = 4;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_13;
          }

          v5 = 5;
        }
      }
    }

    [(PLSingleQuery *)self setValueType:v5];
  }

LABEL_13:
  if (![(PLSingleQuery *)self hasValueType])
  {
    goto LABEL_19;
  }

  if ([(PLSingleQuery *)self hasFirstValue])
  {
    if ([(PLSingleQuery *)self hasSecondValue])
    {
      goto LABEL_19;
    }

    v6 = convertToData(number);
    [(PLSingleQuery *)self setSecondValue:v6];
  }

  else
  {
    v6 = convertToData(number);
    [(PLSingleQuery *)self setFirstValue:v6];
  }

LABEL_19:
}

- (int)migratedComparator
{
  comparator = [(PLSingleQuery *)self comparator];
  v4 = [(PLSingleQuery *)self key];
  if (v4 > 399)
  {
    if ((v4 - 400) >= 4 && v4 != 550 && v4 != 500)
    {
      return comparator;
    }

LABEL_18:
    v8 = comparator == 2;
    v9 = 23;
LABEL_19:
    if (v8)
    {
      return v9;
    }

    return comparator;
  }

  if (v4 > 300)
  {
    if (v4 != 301 && v4 != 305)
    {
      return comparator;
    }

    goto LABEL_18;
  }

  if ((v4 - 200) >= 2)
  {
    if (comparator == 2 || comparator == 50)
    {
      v12 = 23;
    }

    else
    {
      v12 = comparator;
    }

    if (comparator == 51)
    {
      v9 = 22;
    }

    else
    {
      v9 = v12;
    }

    v8 = v4 == 100;
    goto LABEL_19;
  }

  valueType = [(PLSingleQuery *)self valueType];
  if (comparator == 4)
  {
    v6 = 41;
  }

  else
  {
    v6 = comparator;
  }

  if (comparator == 5)
  {
    v7 = 40;
  }

  else
  {
    v7 = v6;
  }

  if (valueType == 1)
  {
    return v7;
  }

  return comparator;
}

- (void)setSecondCircularRegionValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    if ([(PLSingleQuery *)self valueType]!= 5)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"!circularRegionValue || (self.valueType == kPLQueryValueType_isCircularRegion)"}];
    }

    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:valueCopy requiringSecureCoding:1 error:0];
  }

  else
  {
    v5 = 0;
  }

  [(PLSingleQuery *)self setSecondValue:v5];
}

- (PLQueryCircularRegion)secondCircularRegionValue
{
  secondValue = [(PLSingleQuery *)self secondValue];
  if (secondValue)
  {
    if ([(PLSingleQuery *)self valueType]!= 5)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:301 description:{@"Invalid parameter not satisfying: %@", @"self.valueType == kPLQueryValueType_isCircularRegion"}];
    }

    v5 = circularRegionFromData(secondValue);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCircularRegionValue:(id)value
{
  valueCopy = value;
  v8 = valueCopy;
  if (valueCopy)
  {
    v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:valueCopy requiringSecureCoding:1 error:0];
  }

  else
  {
    v6 = 0;
  }

  if ([(PLSingleQuery *)self valueType]!= 5)
  {
    if ([(PLSingleQuery *)self hasSecondValue])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:291 description:{@"Invalid parameter not satisfying: %@", @"!self.hasSecondValue"}];
    }

    [(PLSingleQuery *)self setValueType:5];
  }

  [(PLSingleQuery *)self setFirstValue:v6];
}

- (PLQueryCircularRegion)circularRegionValue
{
  firstValue = [(PLSingleQuery *)self firstValue];
  if (firstValue)
  {
    if ([(PLSingleQuery *)self valueType]!= 5)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:279 description:{@"Invalid parameter not satisfying: %@", @"self.valueType == kPLQueryValueType_isCircularRegion"}];
    }

    v5 = circularRegionFromData(firstValue);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSecondDateValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    if ([(PLSingleQuery *)self valueType]!= 4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:266 description:{@"Invalid parameter not satisfying: %@", @"!dateValue || (self.valueType == kPLQueryValueType_isDate)"}];
    }

    v5 = dataFromDate(valueCopy);
  }

  else
  {
    v5 = 0;
  }

  [(PLSingleQuery *)self setSecondValue:v5];
}

- (NSDate)secondDateValue
{
  secondValue = [(PLSingleQuery *)self secondValue];
  if (secondValue)
  {
    if ([(PLSingleQuery *)self valueType]!= 4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"self.valueType == kPLQueryValueType_isDate"}];
    }

    v5 = dateFromData(secondValue);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setDateValue:(id)value
{
  valueCopy = value;
  v8 = valueCopy;
  if (valueCopy)
  {
    v6 = dataFromDate(valueCopy);
  }

  else
  {
    v6 = 0;
  }

  if ([(PLSingleQuery *)self valueType]!= 4)
  {
    if ([(PLSingleQuery *)self hasSecondValue])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"!self.hasSecondValue"}];
    }

    [(PLSingleQuery *)self setValueType:4];
  }

  [(PLSingleQuery *)self setFirstValue:v6];
}

- (NSDate)dateValue
{
  firstValue = [(PLSingleQuery *)self firstValue];
  if (firstValue)
  {
    if ([(PLSingleQuery *)self valueType]!= 4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"self.valueType == kPLQueryValueType_isDate"}];
    }

    v5 = dateFromData(firstValue);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSecondStringValue:(id)value
{
  valueCopy = value;
  if (valueCopy && [(PLSingleQuery *)self valueType]!= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"!stringValue || (self.valueType == kPLQueryValueType_isString)"}];
  }

  v5 = [valueCopy dataUsingEncoding:4];
  [(PLSingleQuery *)self setSecondValue:v5];
}

- (NSString)secondStringValue
{
  secondValue = [(PLSingleQuery *)self secondValue];
  if (secondValue)
  {
    if ([(PLSingleQuery *)self valueType]!= 3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"self.valueType == kPLQueryValueType_isString"}];
    }

    v5 = stringFromData(secondValue);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setStringValue:(id)value
{
  v6 = [value dataUsingEncoding:4];
  if ([(PLSingleQuery *)self valueType]!= 3)
  {
    if ([(PLSingleQuery *)self hasSecondValue])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"!self.hasSecondValue"}];
    }

    [(PLSingleQuery *)self setValueType:3];
  }

  [(PLSingleQuery *)self setFirstValue:v6];
}

- (NSString)stringValue
{
  firstValue = [(PLSingleQuery *)self firstValue];
  if (firstValue)
  {
    if ([(PLSingleQuery *)self valueType]!= 3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"self.valueType == kPLQueryValueType_isString"}];
    }

    v5 = stringFromData(firstValue);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSecondIntegerValue:(int64_t)value
{
  if ([(PLSingleQuery *)self valueType]!= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"self.valueType == kPLQueryValueType_isInteger"}];
  }

  v7 = dataFromInteger(value);
  [(PLSingleQuery *)self setSecondValue:v7];
}

- (int64_t)secondIntegerValue
{
  secondValue = [(PLSingleQuery *)self secondValue];
  if (secondValue)
  {
    if ([(PLSingleQuery *)self valueType]!= 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"self.valueType == kPLQueryValueType_isInteger"}];
    }

    v8 = 0;
    [secondValue getBytes:&v8 length:8];
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setIntegerValue:(int64_t)value
{
  v6 = dataFromInteger(value);
  if ([(PLSingleQuery *)self valueType]!= 1)
  {
    if ([(PLSingleQuery *)self hasSecondValue])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"!self.hasSecondValue"}];
    }

    [(PLSingleQuery *)self setValueType:1];
  }

  [(PLSingleQuery *)self setFirstValue:v6];
}

- (int64_t)integerValue
{
  firstValue = [(PLSingleQuery *)self firstValue];
  if (firstValue)
  {
    if ([(PLSingleQuery *)self valueType]!= 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"self.valueType == kPLQueryValueType_isInteger"}];
    }

    v8 = 0;
    [firstValue getBytes:&v8 length:8];
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSecondDoubleValue:(double)value
{
  if ([(PLSingleQuery *)self valueType]!= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"self.valueType == kPLQueryValueType_isDouble"}];
  }

  v7 = dataFromDouble(value);
  [(PLSingleQuery *)self setSecondValue:v7];
}

- (double)secondDoubleValue
{
  secondValue = [(PLSingleQuery *)self secondValue];
  if (secondValue)
  {
    if ([(PLSingleQuery *)self valueType]!= 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"self.valueType == kPLQueryValueType_isDouble"}];
    }

    v8 = 0.0;
    [secondValue getBytes:&v8 length:8];
    v5 = v8;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)setDoubleValue:(double)value
{
  v6 = dataFromDouble(value);
  if ([(PLSingleQuery *)self valueType]!= 2)
  {
    if ([(PLSingleQuery *)self hasSecondValue])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"!self.hasSecondValue"}];
    }

    [(PLSingleQuery *)self setValueType:2];
  }

  [(PLSingleQuery *)self setFirstValue:v6];
}

- (double)doubleValue
{
  firstValue = [(PLSingleQuery *)self firstValue];
  if (firstValue)
  {
    if ([(PLSingleQuery *)self valueType]!= 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLSingleQuery+Utilities.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"self.valueType == kPLQueryValueType_isDouble"}];
    }

    v8 = 0.0;
    [firstValue getBytes:&v8 length:8];
    v5 = v8;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

@end