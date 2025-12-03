@interface PFStoryAutoEditFrequencyTable
- (PFStoryAutoEditFrequencyTable)initWithValueCounts:(id)counts randomNumberGenerator:(id)generator fallbackValue:(id)value;
- (id)nextValuePassingTest:(id)test;
@end

@implementation PFStoryAutoEditFrequencyTable

- (id)nextValuePassingTest:(id)test
{
  testCopy = test;
  v5 = 2 * [(NSArray *)self->_baseTable count]+ 2;
  if ([(NSMutableArray *)self->_workingElements count]< v5)
  {
    v6 = PFShuffledArrayWithRandomNumberGenerator(self->_baseTable, self->_randomNumberGenerator);
    [(NSMutableArray *)self->_workingElements addObjectsFromArray:v6];
  }

  firstObject = [(NSMutableArray *)self->_workingElements firstObject];
  [(NSMutableArray *)self->_workingElements removeObjectAtIndex:0];
  v8 = testCopy[2](testCopy, firstObject);
  fallbackValue = firstObject;
  if (v8)
  {
    goto LABEL_4;
  }

  if (![(NSMutableArray *)self->_workingElements count])
  {
    goto LABEL_14;
  }

  v11 = 1;
  do
  {
    v12 = [(NSMutableArray *)self->_workingElements objectAtIndexedSubscript:v11 - 1];
    if (testCopy[2](testCopy, v12))
    {
      [(NSMutableArray *)self->_workingElements replaceObjectAtIndex:v11 - 1 withObject:firstObject];
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }

    v13 = [(NSMutableArray *)self->_workingElements count];
    if (v10)
    {
      break;
    }

    v14 = v11++ >= v13;
  }

  while (!v14);
  if (!v10)
  {
LABEL_14:
    v15 = PFShuffledArrayWithRandomNumberGenerator(self->_baseTable, self->_randomNumberGenerator);
    if ([v15 count])
    {
      v16 = 1;
      do
      {
        v17 = [v15 objectAtIndexedSubscript:v16 - 1];
        if (testCopy[2](testCopy, v17))
        {
          v10 = v17;
        }

        else
        {
          v10 = 0;
        }

        v18 = [v15 count];
        if (v10)
        {
          break;
        }

        v14 = v16++ >= v18;
      }

      while (!v14);

      if (v10)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

    [(NSMutableArray *)self->_workingElements insertObject:firstObject atIndex:0];
    v10 = 0;
    if (testCopy[2](testCopy, self->_fallbackValue))
    {
      fallbackValue = self->_fallbackValue;
LABEL_4:
      v10 = fallbackValue;
    }
  }

LABEL_27:

  return v10;
}

- (PFStoryAutoEditFrequencyTable)initWithValueCounts:(id)counts randomNumberGenerator:(id)generator fallbackValue:(id)value
{
  v25 = *MEMORY[0x1E69E9840];
  countsCopy = counts;
  generatorCopy = generator;
  valueCopy = value;
  v22.receiver = self;
  v22.super_class = PFStoryAutoEditFrequencyTable;
  v11 = [(PFStoryAutoEditFrequencyTable *)&v22 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(countsCopy, "count")}];
    if ([countsCopy count])
    {
      v13 = 0;
      do
      {
        v14 = [countsCopy objectAtIndexedSubscript:v13];
        intValue = [v14 intValue];

        if (intValue >= 1)
        {
          do
          {
            v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
            [v12 addObject:v16];

            --intValue;
          }

          while (intValue);
        }

        ++v13;
      }

      while (v13 < [countsCopy count]);
    }

    if (![v12 count])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v24 = valueCopy;
        _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Empty frequency table. Inserting a default value of %{public}@ for safety.", buf, 0xCu);
      }

      [v12 addObject:valueCopy];
    }

    v17 = [v12 copy];
    baseTable = v11->_baseTable;
    v11->_baseTable = v17;

    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{2 * -[NSArray count](v11->_baseTable, "count")}];
    workingElements = v11->_workingElements;
    v11->_workingElements = v19;

    objc_storeStrong(&v11->_randomNumberGenerator, generator);
    objc_storeStrong(&v11->_fallbackValue, value);
  }

  return v11;
}

@end