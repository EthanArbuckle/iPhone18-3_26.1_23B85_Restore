@interface SBFDateTimeController
+ (SBFDateTimeController)sharedInstance;
- (NSDate)currentDate;
- (void)addObserver:(id)a3;
- (void)setOverrideDate:(id)a3;
- (void)setOverrideDateOffset:(double)a3;
- (void)setOverrideDateWithAutoupdatingSeconds:(id)a3;
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
  v3 = self->_overrideDate;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF00] date];
  }

  if (self->_overrideDateOffset != 0.0)
  {
    v4 = [(NSDate *)v3 dateByAddingTimeInterval:?];

    v3 = v4;
  }

  if (self->_overrideDateWithAutoupdatingSeconds)
  {
    v6 = [MEMORY[0x1E695DEE8] currentCalendar];
    v8 = 0;
    v9 = 0;
    [v6 getHour:0 minute:0 second:&v9 nanosecond:&v8 fromDate:v3];
    v7 = [v6 dateByAddingUnit:128 value:v9 toDate:self->_overrideDateWithAutoupdatingSeconds options:0];

    v3 = [v6 dateByAddingUnit:0x8000 value:v8 toDate:v7 options:0];
  }

  return v3;
}

uint64_t __39__SBFDateTimeController_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(SBFDateTimeController);

  return MEMORY[0x1EEE66BB8]();
}

- (void)setOverrideDate:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  overrideDate = self->_overrideDate;
  if (overrideDate != a3)
  {
    v6 = overrideDate;
    v7 = [a3 copy];
    v8 = self->_overrideDate;
    self->_overrideDate = v7;

    overrideDateWithAutoupdatingSeconds = self->_overrideDateWithAutoupdatingSeconds;
    self->_overrideDateOffset = 0.0;
    self->_overrideDateWithAutoupdatingSeconds = 0;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = [(NSHashTable *)self->_observers allObjects];
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * v14++) controller:self didChangeOverrideDateFromDate:v6];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (void)setOverrideDateOffset:(double)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_overrideDateOffset != a3)
  {
    v5 = self->_overrideDate;
    overrideDate = self->_overrideDate;
    self->_overrideDate = 0;

    self->_overrideDateOffset = a3;
    overrideDateWithAutoupdatingSeconds = self->_overrideDateWithAutoupdatingSeconds;
    self->_overrideDateWithAutoupdatingSeconds = 0;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [(NSHashTable *)self->_observers allObjects];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12++) controller:self didChangeOverrideDateFromDate:v5];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)setOverrideDateWithAutoupdatingSeconds:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_overrideDateWithAutoupdatingSeconds != v4)
  {
    v5 = self->_overrideDate;
    overrideDate = self->_overrideDate;
    self->_overrideDate = 0;

    self->_overrideDateOffset = 0.0;
    v7 = [(NSDate *)v4 copy];
    overrideDateWithAutoupdatingSeconds = self->_overrideDateWithAutoupdatingSeconds;
    self->_overrideDateWithAutoupdatingSeconds = v7;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [(NSHashTable *)self->_observers allObjects];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13++) controller:self didChangeOverrideDateFromDate:v5];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

@end