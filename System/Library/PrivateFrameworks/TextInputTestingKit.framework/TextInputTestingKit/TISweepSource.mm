@interface TISweepSource
+ (id)sharedInstance;
- (BOOL)finished;
- (id)sweepStateHeader;
- (id)sweepStateValues;
- (void)addValue:(id)value withMin:(float)min withMax:(float)max;
- (void)addValue:(id)value withValue:(float)withValue;
- (void)advanceSweep;
- (void)setStepCount:(int)count;
@end

@implementation TISweepSource

- (void)setStepCount:(int)count
{
  v21 = *MEMORY[0x277D85DE8];
  self->stepCount = count;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->debugValues;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    countCopy = count;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [(NSMutableDictionary *)self->debugValues objectForKey:*(*(&v16 + 1) + 8 * v10), v16];
        [v11 sweepMax];
        v13 = v12;
        [v11 sweepMin];
        *&v15 = (v13 - v14) / countCopy;
        [v11 setStepSize:v15];

        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (BOOL)finished
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->debugValues;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->debugValues objectForKey:*(*(&v15 + 1) + 8 * i), v15];
        [v8 sweepMax];
        v10 = v9;
        [v8 sweepValue];
        v12 = v10 - v11;

        if (v12 > 0.00000011921)
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (void)advanceSweep
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->debugValues;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->debugValues objectForKey:*(*(&v16 + 1) + 8 * i), v16];
        [v8 sweepMax];
        v10 = v9;
        [v8 sweepValue];
        if ((v10 - v11) > 0.00000011921)
        {
          [v8 stepSize];
          v13 = v12;
          [v8 sweepValue];
          *&v15 = v13 + v14;
          [v8 setSweepValue:v15];

          goto LABEL_11;
        }

        [v8 sweepMin];
        [v8 setSweepValue:?];
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)sweepStateValues
{
  v17 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->debugValues;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->debugValues objectForKey:*(*(&v12 + 1) + 8 * i)];
        [v9 sweepValue];
        [string appendFormat:@"%f, ", v10];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return string;
}

- (id)sweepStateHeader
{
  v15 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->debugValues;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [string appendFormat:@"%@, ", *(*(&v10 + 1) + 8 * i)];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return string;
}

- (void)addValue:(id)value withValue:(float)withValue
{
  valueCopy = value;
  v6 = objc_alloc_init(TIDebugValue);
  *&v7 = withValue;
  [(TIDebugValue *)v6 setDefaultValue:v7];
  *&v8 = withValue;
  [(TIDebugValue *)v6 setSweepValue:v8];
  *&v9 = withValue;
  [(TIDebugValue *)v6 setSweepMin:v9];
  *&v10 = withValue;
  [(TIDebugValue *)v6 setSweepMax:v10];
  [(TIDebugValue *)v6 setStepSize:0.0];
  debugValues = self->debugValues;
  if (!debugValues)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = self->debugValues;
    self->debugValues = v12;

    debugValues = self->debugValues;
  }

  [(NSMutableDictionary *)debugValues setObject:v6 forKey:valueCopy];
}

- (void)addValue:(id)value withMin:(float)min withMax:(float)max
{
  valueCopy = value;
  v8 = objc_alloc_init(TIDebugValue);
  *&v9 = (min + max) * 0.5;
  [(TIDebugValue *)v8 setDefaultValue:v9];
  *&v10 = min;
  [(TIDebugValue *)v8 setSweepValue:v10];
  *&v11 = min;
  [(TIDebugValue *)v8 setSweepMin:v11];
  *&v12 = max;
  [(TIDebugValue *)v8 setSweepMax:v12];
  *&v13 = (max - min) / self->stepCount;
  [(TIDebugValue *)v8 setStepSize:v13];
  debugValues = self->debugValues;
  if (!debugValues)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v16 = self->debugValues;
    self->debugValues = v15;

    debugValues = self->debugValues;
  }

  [(NSMutableDictionary *)debugValues setObject:v8 forKey:valueCopy];
}

+ (id)sharedInstance
{
  v2 = sharedInstance_shared;
  if (!sharedInstance_shared)
  {
    v3 = objc_alloc_init(TISweepSource);
    v4 = sharedInstance_shared;
    sharedInstance_shared = v3;

    v2 = sharedInstance_shared;
  }

  return v2;
}

@end