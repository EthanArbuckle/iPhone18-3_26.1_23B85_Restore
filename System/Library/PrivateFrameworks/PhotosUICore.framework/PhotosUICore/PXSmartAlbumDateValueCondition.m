@interface PXSmartAlbumDateValueCondition
- (BOOL)hasNumberOfUnitValue;
- (NSArray)unitValues;
- (NSDate)dateValue;
- (NSDate)secondDateValue;
- (NSNumber)numberOfUnitValue;
- (PXLabeledValue)unitValue;
- (void)setComparatorValue:(id)a3;
- (void)setDateValue:(id)a3;
- (void)setNumberOfUnitValue:(id)a3;
- (void)setSecondDateValue:(id)a3;
- (void)setUnitValue:(id)a3;
@end

@implementation PXSmartAlbumDateValueCondition

- (void)setUnitValue:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumDateValueCondition.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"unitValue"}];
  }

  v6 = [(PXSmartAlbumDateValueCondition *)self unitValues];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumDateValueCondition.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"[self.unitValues containsObject:unitValue]"}];
  }

  v8 = [v5 value];
  v9 = [v8 integerValue];
  v10 = [(PXSmartAlbumCondition *)self singleQuery];
  [v10 setUnit:v9];
  v11 = PLUIGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = PLStringFromPLQueryUnit();
    *buf = 138412290;
    v17 = v12;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: unit value set to: %@", buf, 0xCu);
  }

  v13 = [(PXSmartAlbumCondition *)self delegate];
  [v13 conditionDidChange:self];
}

- (PXLabeledValue)unitValue
{
  v4 = [(PXSmartAlbumCondition *)self singleQuery];
  if ([v4 hasUnit])
  {
    v5 = [v4 unit];
    if (!v5)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumDateValueCondition.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"unit != kPLQueryUnit_unused"}];

      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  v7 = PXSmartAlbumLocalizedStringForUnit(v5);
  v8 = [PXLabeledValue alloc];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v10 = [(PXLabeledValue *)v8 initWithValue:v9 localizedLabel:v7];

  return v10;
}

- (NSArray)unitValues
{
  unitValues = self->_unitValues;
  if (!unitValues)
  {
    v5 = [(PXSmartAlbumCondition *)self singleQuery];
    v6 = [v5 key];
    v7 = [MEMORY[0x1E69BF2C0] validUnitValuesForQueryKey:v6];
    v8 = PXSmartAlbumLocalizedStringsForUnitValues(v7);
    v9 = PXLabeledValuesWithValuesAndLocalizedLabels(v7, v8);

    v10 = self->_unitValues;
    self->_unitValues = v9;

    if (![(NSArray *)self->_unitValues count])
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumDateValueCondition.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"_unitValues.count"}];
    }

    unitValues = self->_unitValues;
  }

  return unitValues;
}

- (void)setNumberOfUnitValue:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumDateValueCondition.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"numberOfUnitValue"}];
  }

  v6 = [(PXSmartAlbumCondition *)self singleQuery];
  [v6 setIntegerValue:{objc_msgSend(v5, "integerValue")}];
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: number of units set to: %@", buf, 0xCu);
  }

  v8 = [(PXSmartAlbumCondition *)self delegate];
  [v8 conditionDidChange:self];
}

- (NSNumber)numberOfUnitValue
{
  v2 = [(PXSmartAlbumCondition *)self singleQuery];
  if ([v2 hasFirstValue])
  {
    v3 = [v2 integerValue];
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  }

  else
  {
    v4 = &unk_1F190C580;
  }

  return v4;
}

- (BOOL)hasNumberOfUnitValue
{
  v2 = [(PXSmartAlbumCondition *)self comparatorValue];
  v3 = [v2 value];

  LOBYTE(v2) = ([v3 integerValue] & 0xFFFFFFFELL) == 40;
  return v2;
}

- (void)setSecondDateValue:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumDateValueCondition.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"dateValue"}];
  }

  v6 = [(PXSmartAlbumCondition *)self singleQuery];
  [v6 setSecondDateValue:v5];
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: second date value set to: %@", buf, 0xCu);
  }

  v8 = [(PXSmartAlbumCondition *)self delegate];
  [v8 conditionDidChange:self];
}

- (NSDate)secondDateValue
{
  v2 = [(PXSmartAlbumCondition *)self singleQuery];
  v3 = [v2 secondDateValue];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] date];
  }

  v6 = v5;

  return v6;
}

- (void)setDateValue:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSmartAlbumDateValueCondition.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"dateValue"}];
  }

  v6 = [(PXSmartAlbumCondition *)self singleQuery];
  [v6 setDateValue:v5];
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "PXSmartAlbums: date value set to: %@", buf, 0xCu);
  }

  v8 = [(PXSmartAlbumCondition *)self delegate];
  [v8 conditionDidChange:self];
}

- (NSDate)dateValue
{
  v2 = [(PXSmartAlbumCondition *)self singleQuery];
  v3 = [v2 dateValue];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] date];
  }

  v6 = v5;

  return v6;
}

- (void)setComparatorValue:(id)a3
{
  v4 = a3;
  v5 = [(PXSmartAlbumCondition *)self comparatorValue];
  v6 = [v5 value];

  v7 = [v6 integerValue];
  v8 = [v4 value];
  v9 = [v8 integerValue];
  v14.receiver = self;
  v14.super_class = PXSmartAlbumDateValueCondition;
  [(PXSmartAlbumCondition *)&v14 setComparatorValue:v4];

  if (v7 != v9)
  {
    v10 = [(PXSmartAlbumCondition *)self singleQuery];
    v11 = v10;
    if ((v9 & 0xFFFFFFFE) == 0x28)
    {
      [v10 setSecondDateValue:0];
      [v11 setIntegerValue:30];
      [v11 setUnit:1];
    }

    else
    {
      v12 = [MEMORY[0x1E695DF00] date];
      [v11 setDateValue:v12];

      if (v9 == 30)
      {
        v13 = [MEMORY[0x1E695DF00] date];
        [v11 setSecondDateValue:v13];
      }

      else
      {
        [v11 setSecondDateValue:0];
      }
    }
  }
}

@end