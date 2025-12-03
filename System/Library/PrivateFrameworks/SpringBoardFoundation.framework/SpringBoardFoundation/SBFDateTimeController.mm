@interface SBFDateTimeController
+ (SBFDateTimeController)sharedInstance;
- (NSDate)currentDate;
- (void)addObserver:(id)observer;
- (void)setOverrideDate:(id)date;
- (void)setOverrideDateOffset:(double)offset;
- (void)setOverrideDateWithAutoupdatingSeconds:(id)seconds;
@end

@implementation SBFDateTimeController

+ (SBFDateTimeController)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[SBFDateTimeController sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

- (NSDate)currentDate
{
  date = self->_overrideDate;
  if (!date)
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  if (self->_overrideDateOffset != 0.0)
  {
    v4 = [(NSDate *)date dateByAddingTimeInterval:?];

    date = v4;
  }

  if (self->_overrideDateWithAutoupdatingSeconds)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v8 = 0;
    v9 = 0;
    [currentCalendar getHour:0 minute:0 second:&v9 nanosecond:&v8 fromDate:date];
    v7 = [currentCalendar dateByAddingUnit:128 value:v9 toDate:self->_overrideDateWithAutoupdatingSeconds options:0];

    date = [currentCalendar dateByAddingUnit:0x8000 value:v8 toDate:v7 options:0];
  }

  return date;
}

uint64_t __39__SBFDateTimeController_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(SBFDateTimeController);

  return MEMORY[0x1EEE66BB8]();
}

- (void)setOverrideDate:(id)date
{
  v20 = *MEMORY[0x1E69E9840];
  overrideDate = self->_overrideDate;
  if (overrideDate != date)
  {
    v6 = overrideDate;
    v7 = [date copy];
    v8 = self->_overrideDate;
    self->_overrideDate = v7;

    overrideDateWithAutoupdatingSeconds = self->_overrideDateWithAutoupdatingSeconds;
    self->_overrideDateOffset = 0.0;
    self->_overrideDateWithAutoupdatingSeconds = 0;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v11 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v15 + 1) + 8 * v14++) controller:self didChangeOverrideDateFromDate:v6];
        }

        while (v12 != v14);
        v12 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (void)setOverrideDateOffset:(double)offset
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_overrideDateOffset != offset)
  {
    v5 = self->_overrideDate;
    overrideDate = self->_overrideDate;
    self->_overrideDate = 0;

    self->_overrideDateOffset = offset;
    overrideDateWithAutoupdatingSeconds = self->_overrideDateWithAutoupdatingSeconds;
    self->_overrideDateWithAutoupdatingSeconds = 0;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v13 + 1) + 8 * v12++) controller:self didChangeOverrideDateFromDate:v5];
        }

        while (v10 != v12);
        v10 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)setOverrideDateWithAutoupdatingSeconds:(id)seconds
{
  v19 = *MEMORY[0x1E69E9840];
  secondsCopy = seconds;
  if (self->_overrideDateWithAutoupdatingSeconds != secondsCopy)
  {
    v5 = self->_overrideDate;
    overrideDate = self->_overrideDate;
    self->_overrideDate = 0;

    self->_overrideDateOffset = 0.0;
    v7 = [(NSDate *)secondsCopy copy];
    overrideDateWithAutoupdatingSeconds = self->_overrideDateWithAutoupdatingSeconds;
    self->_overrideDateWithAutoupdatingSeconds = v7;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v10 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v14 + 1) + 8 * v13++) controller:self didChangeOverrideDateFromDate:v5];
        }

        while (v11 != v13);
        v11 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

@end