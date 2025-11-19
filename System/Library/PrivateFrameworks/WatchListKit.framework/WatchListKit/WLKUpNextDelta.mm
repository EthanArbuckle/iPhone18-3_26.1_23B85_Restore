@interface WLKUpNextDelta
+ (id)useWidgetImagesIfAvailable:(id)a3;
- (BOOL)isExpired;
- (NSArray)additions;
- (NSArray)removals;
- (WLKUpNextDelta)initWithCoder:(id)a3;
- (WLKUpNextDelta)initWithDictionary:(id)a3;
- (id)_deltaByMergingItemsFromDelta:(id)a3;
- (id)dataByMergingWith:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WLKUpNextDelta

- (WLKUpNextDelta)initWithDictionary:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = WLKUpNextDelta;
  v5 = [(WLKUpNextDelta *)&v30 init];
  if (v5)
  {
    v6 = [v4 copy];
    backingDictionary = v5->_backingDictionary;
    v5->_backingDictionary = v6;

    v25 = v4;
    v8 = [v4 wlk_arrayForKey:@"upNextChanges"];
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        v14 = 0;
        do
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [WLKUpNextDelta useWidgetImagesIfAvailable:*(*(&v26 + 1) + 8 * v14)];
          v16 = [[WLKDeltaContinuationMetadata alloc] initWithDictionary:v15 context:0];
          if (v16)
          {
            [v9 addObject:v16];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v12);
    }

    v17 = [v9 copy];
    items = v5->_items;
    v5->_items = v17;

    v4 = v25;
    v19 = [v25 wlk_dateFromMillisecondsSince1970ForKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v19;

    v21 = [v25 wlk_dateFromMillisecondsSince1970ForKey:@"expiresAt"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSArray)removals
{
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"deltaType = %d", 1];
  v4 = [(NSArray *)self->_items filteredArrayUsingPredicate:v3];

  return v4;
}

- (NSArray)additions
{
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"deltaType = %d", 2];
  v4 = [(NSArray *)self->_items filteredArrayUsingPredicate:v3];

  return v4;
}

- (BOOL)isExpired
{
  v3 = [MEMORY[0x277CBEAA8] date];
  LOBYTE(self) = [v3 compare:self->_expirationDate] == 1;

  return self;
}

- (id)dataByMergingWith:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WLKUpNextDelta *)self _deltaByMergingItemsFromDelta:v4];
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"class must conform to <WLKMergingCoding>"];
    v5 = self;
  }

  v6 = v5;

  return v6;
}

- (id)_deltaByMergingItemsFromDelta:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSArray *)self->_items mutableCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [v4 additions];
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [WLKContinuationMetadataBase add:*(*(&v36 + 1) + 8 * i) toCollection:v5];
      }

      v8 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v8);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = [v4 removals];
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [WLKContinuationMetadataBase remove:*(*(&v32 + 1) + 8 * j) fromCollection:v5];
      }

      v13 = [v11 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v13);
  }

  v16 = [(NSDictionary *)self->_backingDictionary mutableCopy];
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v28 + 1) + 8 * k) dictionary];
        if (v23)
        {
          [v17 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v20);
  }

  v24 = [v17 copy];
  [v16 setObject:v24 forKeyedSubscript:@"upNextChanges"];

  v25 = [[WLKUpNextDelta alloc] initWithDictionary:v16];
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = WLKUpNextDelta;
  v4 = [(WLKUpNextDelta *)&v9 description];
  v5 = [(NSArray *)self->_items count];
  v6 = [(WLKUpNextDelta *)self expirationDate];
  v7 = [v3 stringWithFormat:@"%@ items:%lu expires:%@", v4, v5, v6];

  return v7;
}

- (WLKUpNextDelta)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = WLKPlistClasses();
    v6 = [v4 decodeObjectOfClasses:v5 forKey:@"upNextDelta"];

    self = [(WLKUpNextDelta *)self initWithDictionary:v6];
    v7 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  [v4 encodeObject:self->_backingDictionary forKey:@"upNextDelta"];
}

+ (id)useWidgetImagesIfAvailable:(id)a3
{
  v3 = a3;
  v4 = [v3 wlk_dictionaryForKey:@"widgetImages"];
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v3];
    [v5 setValue:v4 forKey:@"images"];
    [v5 removeObjectForKey:@"widgetImages"];
    v6 = [v5 copy];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

@end