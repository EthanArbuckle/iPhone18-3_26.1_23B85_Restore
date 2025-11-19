@interface PPSTimeSeries
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTimeSeries:(id)a3;
- (NSArray)allTimestamps;
- (NSArray)array;
- (PPSEvent)firstObject;
- (PPSEvent)lastObject;
- (PPSTimeSeries)init;
- (PPSTimeSeries)initWithCoder:(id)a3;
- (PPSTimeSeries)initWithEvents:(id)a3;
- (id)JSONRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)filteredTimeSeriesUsingPredicate:(id)a3;
- (id)metricValuesForKey:(id)a3;
- (id)objectEnumerator;
- (id)reverseObjectEnumerator;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)hash;
- (void)JSONRepresentation;
- (void)_guaranteeSortedness;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateObjectsUsingBlock:(id)a3;
- (void)mergeWithTimeSeries:(id)a3;
@end

@implementation PPSTimeSeries

- (void)_guaranteeSortedness
{
  if (!self->_isSorted)
  {
    v3 = objc_autoreleasePoolPush();
    events = self->_events;
    if (self->_sortHint)
    {
      [(NSMutableArray *)events sortedArrayUsingFunction:_eventSortComparator context:0 hint:?];
    }

    else
    {
      [(NSMutableArray *)events sortedArrayUsingSelector:sel_compare_];
    }
    v5 = ;
    v6 = [v5 mutableCopy];
    v7 = self->_events;
    self->_events = v6;

    v8 = [(NSMutableArray *)self->_events sortedArrayHint];
    sortHint = self->_sortHint;
    self->_sortHint = v8;

    self->_isSorted = 1;

    objc_autoreleasePoolPop(v3);
  }
}

- (NSArray)array
{
  [(PPSTimeSeries *)self _guaranteeSortedness];
  v3 = [(NSMutableArray *)self->_events copy];

  return v3;
}

- (PPSTimeSeries)init
{
  v6.receiver = self;
  v6.super_class = PPSTimeSeries;
  v2 = [(PPSTimeSeries *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    events = v2->_events;
    v2->_events = v3;

    v2->_isSorted = 1;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PPSTimeSeries allocWithZone:a3];
  events = self->_events;

  return [(PPSTimeSeries *)v4 initWithEvents:events];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(PPSTimeSeries *)self _guaranteeSortedness];
  [v4 encodeBool:self->_isSorted forKey:@"isSorted"];
  [v4 encodeObject:self->_sortHint forKey:@"sortHint"];
  [v4 encodeObject:self->_events forKey:@"events"];
}

- (PPSTimeSeries)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PPSTimeSeries;
  v5 = [(PPSTimeSeries *)&v14 init];
  if (v5)
  {
    v5->_isSorted = [v4 decodeBoolForKey:@"isSorted"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sortHint"];
    sortHint = v5->_sortHint;
    v5->_sortHint = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"events"];
    events = v5->_events;
    v5->_events = v11;

    [(PPSTimeSeries *)v5 _guaranteeSortedness];
  }

  return v5;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  [(PPSTimeSeries *)self _guaranteeSortedness];
  events = self->_events;

  return [(NSMutableArray *)events countByEnumeratingWithState:a3 objects:a4 count:a5];
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  [(PPSTimeSeries *)self _guaranteeSortedness];
  [(NSMutableArray *)self->_events enumerateObjectsUsingBlock:v4];
}

- (id)objectEnumerator
{
  [(PPSTimeSeries *)self _guaranteeSortedness];
  events = self->_events;

  return [(NSMutableArray *)events objectEnumerator];
}

- (id)reverseObjectEnumerator
{
  [(PPSTimeSeries *)self _guaranteeSortedness];
  events = self->_events;

  return [(NSMutableArray *)events reverseObjectEnumerator];
}

- (PPSTimeSeries)initWithEvents:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PPSTimeSeries;
  v5 = [(PPSTimeSeries *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    events = v5->_events;
    v5->_events = v6;

    v5->_isSorted = 0;
    [(PPSTimeSeries *)v5 _guaranteeSortedness];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [(PPSTimeSeries *)self isEqualToTimeSeries:v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PPSTimeSeries;
    v6 = [(PPSTimeSeries *)&v9 isEqual:v4];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isEqualToTimeSeries:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  [(PPSTimeSeries *)self _guaranteeSortedness];
  events = self->_events;
  v6 = v4[4];

  v7 = [v6 copy];
  LOBYTE(events) = [(NSMutableArray *)events isEqualToArray:v7];

  return events;
}

- (NSArray)allTimestamps
{
  v19 = *MEMORY[0x277D85DE8];
  [(PPSTimeSeries *)self _guaranteeSortedness];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_events, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_events;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = MEMORY[0x277CCABB0];
        [*(*(&v14 + 1) + 8 * i) monotonicTimestamp];
        v10 = [v9 numberWithDouble:?];
        [v3 addObject:v10];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> count=%lu", v5, self, -[PPSTimeSeries count](self, "count")];

  return v6;
}

- (id)description
{
  v17 = *MEMORY[0x277D85DE8];
  [(PPSTimeSeries *)self _guaranteeSortedness];
  v3 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_events;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        v9 = [*(*(&v12 + 1) + 8 * i) description];
        [v3 appendFormat:@"\n%@, ", v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [v3 appendFormat:@"\n"]);
  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (PPSEvent)firstObject
{
  [(PPSTimeSeries *)self _guaranteeSortedness];
  events = self->_events;

  return [(NSMutableArray *)events firstObject];
}

- (unint64_t)hash
{
  [(PPSTimeSeries *)self _guaranteeSortedness];
  events = self->_events;

  return [(NSMutableArray *)events hash];
}

- (PPSEvent)lastObject
{
  [(PPSTimeSeries *)self _guaranteeSortedness];
  events = self->_events;

  return [(NSMutableArray *)events lastObject];
}

- (id)JSONRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  [(PPSTimeSeries *)self _guaranteeSortedness];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[PPSTimeSeries count](self, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_events;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v16 = 0;
  v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:1 error:&v16];
  v12 = v16;
  if (v12)
  {
    v13 = PPSReaderLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(PPSTimeSeries *)v12 JSONRepresentation];
    }
  }

  objc_autoreleasePoolPop(v3);
  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)filteredTimeSeriesUsingPredicate:(id)a3
{
  v3 = [(NSMutableArray *)self->_events filteredArrayUsingPredicate:a3];
  v4 = [[PPSTimeSeries alloc] initWithEvents:v3];

  return v4;
}

- (void)mergeWithTimeSeries:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSMutableArray *)self->_events addObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  self->_isSorted = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (id)metricValuesForKey:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSMutableArray *)self->_events count])
  {
    v14 = 0;
    goto LABEL_18;
  }

  [(PPSTimeSeries *)self _guaranteeSortedness];
  v5 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_events;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v7)
  {

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v18;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = [*(*(&v17 + 1) + 8 * i) metricValueForKey:{v4, v17}];
      if (v12)
      {
        [v5 addObject:v12];
        v9 = 1;
      }

      else
      {
        v13 = [MEMORY[0x277CBEB68] null];
        [v5 addObject:v13];
      }
    }

    v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_16;
  }

  v14 = [v5 copy];
LABEL_17:

LABEL_18:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)JSONRepresentation
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25E225000, a2, OS_LOG_TYPE_DEBUG, "Error while parsing JSON data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end