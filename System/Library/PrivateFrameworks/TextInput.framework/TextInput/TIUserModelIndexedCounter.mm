@interface TIUserModelIndexedCounter
- (NSArray)currentCounts;
- (TIUserModelIndexedCounter)initWithName:(id)name;
- (id)_createEmptyCountsArray;
- (id)aggregatedCountForNumberOfDays:(int)days;
- (id)countsForNumberOfDays:(int)days;
- (void)doPersist:(id)persist forDate:(id)date forContext:(id)context;
- (void)extendToNumberOfDays:(int)days;
- (void)prepareBuckets;
- (void)updateWithDouble:(double)double forIndex:(int)index;
- (void)updateWithInteger:(int)integer forIndex:(int)index;
- (void)updateWithLoadedInteger:(int)integer andDouble:(double)double forIndex:(int)index andDaysPrior:(int)prior;
@end

@implementation TIUserModelIndexedCounter

- (void)doPersist:(id)persist forDate:(id)date forContext:(id)context
{
  persistCopy = persist;
  dateCopy = date;
  contextCopy = context;
  if (self->_current && self->_dataType)
  {
    v45 = 0;
    v42 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:contextCopy requiringSecureCoding:1 error:&v45];
    v39 = v45;
    v41 = [kUserModelDatabasePrefix stringByAppendingString:self->_name];
    v9 = [(NSMutableArray *)self->_persisted objectAtIndex:0];
    v10 = 0;
    v11 = 0x1E696A000uLL;
    while (1)
    {
      v12 = [(NSMutableArray *)self->_current objectAtIndex:v10];
      v13 = v12;
      if (self->_dataType == 2)
      {
        [v12 doubleValue];
        if (v14 != 0.0)
        {
          v15 = v14;
          v16 = [*(v11 + 3480) numberWithInt:0];
          v17 = [*(v11 + 3480) numberWithInt:v10];
          v18 = [*(v11 + 3480) numberWithDouble:v15];
          inputLanguageAndRegion = [contextCopy inputLanguageAndRegion];
          [persistCopy addValue:v16 andSecondaryValue:v17 andRealValue:v18 andProperties:v42 forKey:v41 forInputMode:inputLanguageAndRegion forDate:dateCopy];

          v20 = [v9 objectAtIndex:v10];
          [v20 doubleValue];
          v22 = v21;

          v23 = *(v11 + 3480);
          v24 = v15 + v22;
LABEL_9:
          v36 = [v23 numberWithDouble:v24];
          [v9 setObject:v36 atIndexedSubscript:v10];

          current = self->_current;
          v38 = [*(v11 + 3480) numberWithInt:0];
          [(NSMutableArray *)current setObject:v38 atIndexedSubscript:v10];
        }
      }

      else
      {
        intValue = [v12 intValue];
        if (intValue)
        {
          v26 = intValue;
          v27 = [*(v11 + 3480) numberWithInt:intValue];
          v28 = [*(v11 + 3480) numberWithInt:v10];
          v29 = [*(v11 + 3480) numberWithDouble:0.0];
          [contextCopy inputLanguageAndRegion];
          v40 = v13;
          selfCopy = self;
          v31 = v11;
          v32 = v9;
          v34 = v33 = contextCopy;
          [persistCopy addValue:v27 andSecondaryValue:v28 andRealValue:v29 andProperties:v42 forKey:v41 forInputMode:v34 forDate:dateCopy];

          contextCopy = v33;
          v9 = v32;
          v11 = v31;
          self = selfCopy;
          v13 = v40;

          v35 = [v9 objectAtIndex:v10];
          LODWORD(v28) = [v35 intValue];

          v23 = *(v11 + 3480);
          v24 = (v28 + v26);
          goto LABEL_9;
        }
      }

      if (++v10 == 11)
      {

        break;
      }
    }
  }
}

- (id)_createEmptyCountsArray
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:11];
  for (i = 0; i != 11; ++i)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [v2 setObject:v4 atIndexedSubscript:i];
  }

  return v2;
}

- (void)updateWithLoadedInteger:(int)integer andDouble:(double)double forIndex:(int)index andDaysPrior:(int)prior
{
  v6 = *&prior;
  v7 = *&index;
  v9 = *&integer;
  v27 = *MEMORY[0x1E69E9840];
  [(TIUserModelIndexedCounter *)self prepareBuckets];
  if (v9 || double != 0.0)
  {
    if (v9)
    {
      self->_dataType = 1;
      v11 = [(NSMutableArray *)self->_persisted objectAtIndex:v6];
      v12 = [v11 objectAtIndex:v7];
      intValue = [v12 intValue];

      v14 = [MEMORY[0x1E696AD98] numberWithInt:(intValue + v9)];
      [v11 setObject:v14 atIndexedSubscript:v7];

      v15 = IXADefaultLogFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = MEMORY[0x1E696AEC0];
        name = [(TIUserModelIndexedCounter *)self name];
        v18 = [v16 stringWithFormat:@"%s Loaded indexed counter %@: Added %d to %d at index %d for %d days prior. _persisted: %@", "-[TIUserModelIndexedCounter updateWithLoadedInteger:andDouble:forIndex:andDaysPrior:]", name, v9, intValue, v7, v6, self->_persisted];
        *buf = 138412290;
        v26 = v18;
        _os_log_debug_impl(&dword_1863F7000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

LABEL_10:
      }
    }

    else
    {
      self->_dataType = 2;
      v11 = [(NSMutableArray *)self->_persisted objectAtIndex:v6];
      v19 = [v11 objectAtIndex:v7];
      [v19 doubleValue];
      v21 = v20;

      double = [MEMORY[0x1E696AD98] numberWithDouble:v21 + double];
      [v11 setObject:double atIndexedSubscript:v7];

      v15 = IXADefaultLogFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v23 = MEMORY[0x1E696AEC0];
        name2 = [(TIUserModelIndexedCounter *)self name];
        v18 = [v23 stringWithFormat:@"%s Loaded indexed counter %@: Added %f to %f at index %d for %d days prior. _persisted: %@", "-[TIUserModelIndexedCounter updateWithLoadedInteger:andDouble:forIndex:andDaysPrior:]", name2, *&double, *&v21, v7, v6, self->_persisted];
        *buf = 138412290;
        v26 = v18;
        _os_log_debug_impl(&dword_1863F7000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

        goto LABEL_10;
      }
    }
  }
}

- (void)updateWithDouble:(double)double forIndex:(int)index
{
  v4 = *&index;
  v18 = *MEMORY[0x1E69E9840];
  [(TIUserModelIndexedCounter *)self prepareBuckets];
  self->_dataType = 2;
  v7 = [(NSMutableArray *)self->_current objectAtIndex:v4];
  [v7 doubleValue];
  v9 = v8;

  current = self->_current;
  double = [MEMORY[0x1E696AD98] numberWithDouble:v9 + double];
  [(NSMutableArray *)current setObject:double atIndexedSubscript:v4];

  v12 = IXADefaultLogFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = MEMORY[0x1E696AEC0];
    name = [(TIUserModelIndexedCounter *)self name];
    v15 = [v13 stringWithFormat:@"%s Updated indexed counter %@: Added %f to %f at index %d. _current: %@", "-[TIUserModelIndexedCounter updateWithDouble:forIndex:]", name, *&double, *&v9, v4, self->_current];
    *buf = 138412290;
    v17 = v15;
    _os_log_debug_impl(&dword_1863F7000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }
}

- (void)updateWithInteger:(int)integer forIndex:(int)index
{
  v4 = *&index;
  v5 = *&integer;
  v17 = *MEMORY[0x1E69E9840];
  [(TIUserModelIndexedCounter *)self prepareBuckets];
  self->_dataType = 1;
  v7 = [(NSMutableArray *)self->_current objectAtIndex:v4];
  intValue = [v7 intValue];

  current = self->_current;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:(intValue + v5)];
  [(NSMutableArray *)current setObject:v10 atIndexedSubscript:v4];

  v11 = IXADefaultLogFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x1E696AEC0];
    name = [(TIUserModelIndexedCounter *)self name];
    v14 = [v12 stringWithFormat:@"%s Updated indexed counter %@: Added %d to %d at index %d. _current: %@", "-[TIUserModelIndexedCounter updateWithInteger:forIndex:]", name, v5, intValue, v4, self->_current];
    *buf = 138412290;
    v16 = v14;
    _os_log_debug_impl(&dword_1863F7000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }
}

- (void)extendToNumberOfDays:(int)days
{
  v3 = *&days;
  v15 = *MEMORY[0x1E69E9840];
  [(TIUserModelIndexedCounter *)self prepareBuckets];
  v5 = [(NSMutableArray *)self->_persisted count];
  v6 = v3 - v5;
  if (v3 > v5)
  {
    do
    {
      persisted = self->_persisted;
      _createEmptyCountsArray = [(TIUserModelIndexedCounter *)self _createEmptyCountsArray];
      [(NSMutableArray *)persisted addObject:_createEmptyCountsArray];

      --v6;
    }

    while (v6);
    v9 = IXADefaultLogFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = MEMORY[0x1E696AEC0];
      name = [(TIUserModelIndexedCounter *)self name];
      v12 = [v10 stringWithFormat:@"%s Extended indexed counter %@ from %d to %d days", "-[TIUserModelIndexedCounter extendToNumberOfDays:]", name, v5, v3];
      *buf = 138412290;
      v14 = v12;
      _os_log_debug_impl(&dword_1863F7000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }
}

- (id)aggregatedCountForNumberOfDays:(int)days
{
  v29 = *MEMORY[0x1E69E9840];
  current = self->_current;
  if (self->_dataType == 2)
  {
    if (current)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v4 = [(TIUserModelIndexedCounter *)self countsForNumberOfDays:*&days];
      v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v24;
        v8 = 0.0;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v24 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v23 + 1) + 8 * i) doubleValue];
            v8 = v8 + v10;
          }

          v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v6);
      }

      else
      {
        v8 = 0.0;
      }
    }

    else
    {
      v8 = 0.0;
    }

    v17 = [MEMORY[0x1E696AD98] numberWithDouble:{*&days, v8}];
  }

  else
  {
    if (current)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = [(TIUserModelIndexedCounter *)self countsForNumberOfDays:*&days, 0];
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        LODWORD(v14) = 0;
        v15 = *v20;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v14 = [*(*(&v19 + 1) + 8 * j) intValue] + v14;
          }

          v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v13);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v17 = [MEMORY[0x1E696AD98] numberWithInt:v14];
  }

  return v17;
}

- (id)countsForNumberOfDays:(int)days
{
  [(TIUserModelIndexedCounter *)self prepareBuckets];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:11];
  if (self->_dataType == 2)
  {
    for (i = 0; i != 11; ++i)
    {
      v7 = [(NSMutableArray *)self->_current objectAtIndex:i];
      [v7 doubleValue];
      v9 = v8;

      if (days >= 1)
      {
        v10 = 0;
        do
        {
          v11 = [(NSMutableArray *)self->_persisted objectAtIndex:v10];
          v12 = [v11 objectAtIndex:i];
          [v12 doubleValue];
          v9 = v9 + v13;

          ++v10;
        }

        while (days != v10);
      }

      v14 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
      [v5 setObject:v14 atIndexedSubscript:i];
    }
  }

  else
  {
    for (j = 0; j != 11; ++j)
    {
      v16 = [(NSMutableArray *)self->_current objectAtIndex:j];
      intValue = [v16 intValue];

      if (days >= 1)
      {
        v18 = 0;
        do
        {
          v19 = [(NSMutableArray *)self->_persisted objectAtIndex:v18];
          v20 = [v19 objectAtIndex:j];
          intValue = [v20 intValue] + intValue;

          ++v18;
        }

        while (days != v18);
      }

      v21 = [MEMORY[0x1E696AD98] numberWithInt:intValue];
      [v5 setObject:v21 atIndexedSubscript:j];
    }
  }

  return v5;
}

- (NSArray)currentCounts
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:11];
  if (self->_dataType == 2)
  {
    for (i = 0; i != 11; ++i)
    {
      current = self->_current;
      v6 = MEMORY[0x1E696AD98];
      if (current)
      {
        v7 = [(NSMutableArray *)current objectAtIndex:i];
        [v7 doubleValue];
        v8 = [v6 numberWithDouble:?];
        [v3 setObject:v8 atIndexedSubscript:i];
      }

      else
      {
        v7 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
        [v3 setObject:v7 atIndexedSubscript:i];
      }
    }
  }

  else
  {
    for (j = 0; j != 11; ++j)
    {
      v10 = self->_current;
      v11 = MEMORY[0x1E696AD98];
      if (v10)
      {
        v12 = [(NSMutableArray *)v10 objectAtIndex:j];
        v13 = [v11 numberWithInt:{objc_msgSend(v12, "intValue")}];
        [v3 setObject:v13 atIndexedSubscript:j];
      }

      else
      {
        v12 = [MEMORY[0x1E696AD98] numberWithInt:0];
        [v3 setObject:v12 atIndexedSubscript:j];
      }
    }
  }

  return v3;
}

- (void)prepareBuckets
{
  if (!self->_current)
  {
    _createEmptyCountsArray = [(TIUserModelIndexedCounter *)self _createEmptyCountsArray];
    current = self->_current;
    self->_current = _createEmptyCountsArray;

    v6 = objc_opt_new();
    persisted = self->_persisted;
    self->_persisted = v6;

    v8 = self->_persisted;
    _createEmptyCountsArray2 = [(TIUserModelIndexedCounter *)self _createEmptyCountsArray];
    [(NSMutableArray *)v8 addObject:_createEmptyCountsArray2];
  }
}

- (TIUserModelIndexedCounter)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = TIUserModelIndexedCounter;
  v6 = [(TIUserModelIndexedCounter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    v7->_dataType = 0;
  }

  return v7;
}

@end