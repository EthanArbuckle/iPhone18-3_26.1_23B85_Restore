@interface PXSmartAlbumDateValueCondition
- (BOOL)hasNumberOfUnitValue;
- (NSArray)unitValues;
- (NSDate)dateValue;
- (NSDate)secondDateValue;
- (NSNumber)numberOfUnitValue;
- (PXLabeledValue)unitValue;
- (void)setComparatorValue:(id)value;
- (void)setDateValue:(id)value;
- (void)setNumberOfUnitValue:(id)value;
- (void)setSecondDateValue:(id)value;
- (void)setUnitValue:(id)value;
@end

@implementation PXSmartAlbumDateValueCondition

- (void)setUnitValue:(id)value
{
  v18 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumDateValueCondition.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"unitValue"}];
  }

  unitValues = [(PXSmartAlbumDateValueCondition *)self unitValues];
  v7 = [unitValues containsObject:valueCopy];

  if ((v7 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumDateValueCondition.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"[self.unitValues containsObject:unitValue]"}];
  }

  value = [valueCopy value];
  integerValue = [value integerValue];
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  [singleQuery setUnit:integerValue];
  v11 = PLUIGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = PLStringFromPLQueryUnit();
    *buf = 138412290;
    v17 = v12;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: unit value set to: %@", buf, 0xCu);
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (PXLabeledValue)unitValue
{
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  if ([singleQuery hasUnit])
  {
    unit = [singleQuery unit];
    if (!unit)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumDateValueCondition.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"unit != kPLQueryUnit_unused"}];

      unit = 0;
    }
  }

  else
  {
    unit = 1;
  }

  v7 = PXSmartAlbumLocalizedStringForUnit(unit);
  v8 = [PXLabeledValue alloc];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:unit];
  v10 = [(PXLabeledValue *)v8 initWithValue:v9 localizedLabel:v7];

  return v10;
}

- (NSArray)unitValues
{
  unitValues = self->_unitValues;
  if (!unitValues)
  {
    singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
    v6 = [singleQuery key];
    v7 = [MEMORY[0x1E69BF2C0] validUnitValuesForQueryKey:v6];
    v8 = PXSmartAlbumLocalizedStringsForUnitValues(v7);
    v9 = PXLabeledValuesWithValuesAndLocalizedLabels(v7, v8);

    v10 = self->_unitValues;
    self->_unitValues = v9;

    if (![(NSArray *)self->_unitValues count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumDateValueCondition.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"_unitValues.count"}];
    }

    unitValues = self->_unitValues;
  }

  return unitValues;
}

- (void)setNumberOfUnitValue:(id)value
{
  v12 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumDateValueCondition.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"numberOfUnitValue"}];
  }

  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  [singleQuery setIntegerValue:{objc_msgSend(valueCopy, "integerValue")}];
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = valueCopy;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: number of units set to: %@", buf, 0xCu);
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (NSNumber)numberOfUnitValue
{
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  if ([singleQuery hasFirstValue])
  {
    integerValue = [singleQuery integerValue];
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
  }

  else
  {
    v4 = &unk_1F190C580;
  }

  return v4;
}

- (BOOL)hasNumberOfUnitValue
{
  comparatorValue = [(PXSmartAlbumCondition *)self comparatorValue];
  value = [comparatorValue value];

  LOBYTE(comparatorValue) = ([value integerValue] & 0xFFFFFFFELL) == 40;
  return comparatorValue;
}

- (void)setSecondDateValue:(id)value
{
  v12 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumDateValueCondition.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"dateValue"}];
  }

  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  [singleQuery setSecondDateValue:valueCopy];
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = valueCopy;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: second date value set to: %@", buf, 0xCu);
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (NSDate)secondDateValue
{
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  secondDateValue = [singleQuery secondDateValue];
  v4 = secondDateValue;
  if (secondDateValue)
  {
    date = secondDateValue;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v6 = date;

  return v6;
}

- (void)setDateValue:(id)value
{
  v12 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSmartAlbumDateValueCondition.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"dateValue"}];
  }

  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  [singleQuery setDateValue:valueCopy];
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = valueCopy;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: date value set to: %@", buf, 0xCu);
  }

  delegate = [(PXSmartAlbumCondition *)self delegate];
  [delegate conditionDidChange:self];
}

- (NSDate)dateValue
{
  singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
  dateValue = [singleQuery dateValue];
  v4 = dateValue;
  if (dateValue)
  {
    date = dateValue;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v6 = date;

  return v6;
}

- (void)setComparatorValue:(id)value
{
  valueCopy = value;
  comparatorValue = [(PXSmartAlbumCondition *)self comparatorValue];
  value = [comparatorValue value];

  integerValue = [value integerValue];
  value2 = [valueCopy value];
  integerValue2 = [value2 integerValue];
  v14.receiver = self;
  v14.super_class = PXSmartAlbumDateValueCondition;
  [(PXSmartAlbumCondition *)&v14 setComparatorValue:valueCopy];

  if (integerValue != integerValue2)
  {
    singleQuery = [(PXSmartAlbumCondition *)self singleQuery];
    v11 = singleQuery;
    if ((integerValue2 & 0xFFFFFFFE) == 0x28)
    {
      [singleQuery setSecondDateValue:0];
      [v11 setIntegerValue:30];
      [v11 setUnit:1];
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
      [v11 setDateValue:date];

      if (integerValue2 == 30)
      {
        date2 = [MEMORY[0x1E695DF00] date];
        [v11 setSecondDateValue:date2];
      }

      else
      {
        [v11 setSecondDateValue:0];
      }
    }
  }
}

@end