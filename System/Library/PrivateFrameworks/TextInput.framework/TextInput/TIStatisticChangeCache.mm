@interface TIStatisticChangeCache
+ (id)sharedInstance;
- (TIStatisticChangeCache)init;
- (id)flush;
- (void)addValue:(int)value toStatisticWithName:(id)name andInputMode:(id)mode;
- (void)addValue:(int)value toStatisticWithName:(id)name inCache:(id)cache;
@end

@implementation TIStatisticChangeCache

uint64_t __40__TIStatisticChangeCache_sharedInstance__block_invoke()
{
  sharedInstance_instance_8678 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8676 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_8676, &__block_literal_global_8677);
  }

  v3 = sharedInstance_instance_8678;

  return v3;
}

- (TIStatisticChangeCache)init
{
  v8.receiver = self;
  v8.super_class = TIStatisticChangeCache;
  v2 = [(TIStatisticChangeCache *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cacheWithoutInputMode = v2->_cacheWithoutInputMode;
    v2->_cacheWithoutInputMode = v3;

    v5 = objc_opt_new();
    cacheWithInputMode = v2->_cacheWithInputMode;
    v2->_cacheWithInputMode = v5;
  }

  return v2;
}

- (id)flush
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = self->_cacheWithoutInputMode;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v43;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v42 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_cacheWithoutInputMode objectForKey:v9];
        intValue = [v10 intValue];

        v12 = [TIStatisticChange statisticChangeWithName:v9 andValue:intValue andInputMode:0];
        [v3 addObject:v12];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v6);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = self->_cacheWithInputMode;
  v32 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v32)
  {
    v30 = *v39;
    selfCopy = self;
    do
    {
      v13 = 0;
      do
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v13;
        v14 = *(*(&v38 + 1) + 8 * v13);
        v15 = [(NSMutableDictionary *)self->_cacheWithInputMode objectForKey:v14];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v35;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v35 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v34 + 1) + 8 * j);
              v21 = [v15 objectForKey:v20];
              intValue2 = [v21 intValue];

              v23 = [TIStatisticChange statisticChangeWithName:v20 andValue:intValue2 andInputMode:v14];
              [v3 addObject:v23];
            }

            v17 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
          }

          while (v17);
        }

        v13 = v33 + 1;
        self = selfCopy;
      }

      while (v33 + 1 != v32);
      v32 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v32);
  }

  v24 = objc_opt_new();
  cacheWithoutInputMode = self->_cacheWithoutInputMode;
  self->_cacheWithoutInputMode = v24;

  v26 = objc_opt_new();
  cacheWithInputMode = self->_cacheWithInputMode;
  self->_cacheWithInputMode = v26;

  return v3;
}

- (void)addValue:(int)value toStatisticWithName:(id)name inCache:(id)cache
{
  v6 = *&value;
  cacheCopy = cache;
  nameCopy = name;
  v9 = [cacheCopy objectForKey:nameCopy];
  v11 = v9;
  if (v9)
  {
    v6 = [v9 intValue] + v6;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  [cacheCopy setValue:v10 forKey:nameCopy];
}

- (void)addValue:(int)value toStatisticWithName:(id)name andInputMode:(id)mode
{
  v6 = *&value;
  nameCopy = name;
  modeCopy = mode;
  if (modeCopy)
  {
    v9 = [(NSMutableDictionary *)self->_cacheWithInputMode objectForKey:modeCopy];
    if (!v9)
    {
      allKeys = [(NSMutableDictionary *)self->_cacheWithInputMode allKeys];
      v11 = [allKeys count];

      if (v11)
      {
        [(NSMutableDictionary *)self->_cacheWithInputMode removeAllObjects];
      }

      v9 = objc_opt_new();
      [(NSMutableDictionary *)self->_cacheWithInputMode setObject:v9 forKey:modeCopy];
    }

    [(TIStatisticChangeCache *)self addValue:v6 toStatisticWithName:nameCopy inCache:v9];
  }

  else
  {
    [(TIStatisticChangeCache *)self addValue:v6 toStatisticWithName:nameCopy inCache:self->_cacheWithoutInputMode];
  }
}

@end