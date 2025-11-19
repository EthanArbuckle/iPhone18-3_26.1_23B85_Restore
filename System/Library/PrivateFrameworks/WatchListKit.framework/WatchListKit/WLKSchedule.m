@interface WLKSchedule
- (BOOL)_isDate:(id)a3 containedByDate:(id)a4 andDate:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSArray)events;
- (WLKSchedule)initWithDictionary:(id)a3;
- (id)adjacentEventsForDate:(id)a3 fuzziness:(double)a4;
- (id)eventAfterDate:(id)a3;
- (id)eventForDate:(id)a3;
- (id)eventForDate:(id)a3 fuzziness:(double)a4;
- (void)prune;
@end

@implementation WLKSchedule

- (WLKSchedule)initWithDictionary:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    v22 = 0;
    goto LABEL_9;
  }

  v27.receiver = self;
  v27.super_class = WLKSchedule;
  v5 = [(WLKSchedule *)&v27 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [v4 wlk_arrayForKey:@"schedule"];
    if (v7)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __34__WLKSchedule_initWithDictionary___block_invoke;
      v25[3] = &unk_279E5F4A8;
      v26 = v6;
      [v7 enumerateObjectsUsingBlock:v25];
      v8 = [v4 wlk_stringForKey:@"serviceId"];
      v9 = [v8 copy];
      serviceID = v5->_serviceID;
      v5->_serviceID = v9;

      v11 = [v4 wlk_dateFromMillisecondsSince1970ForKey:@"scheduleStartTime"];
      v12 = [v11 copy];
      startDate = v5->_startDate;
      v5->_startDate = v12;

      v14 = [v4 wlk_dateFromMillisecondsSince1970ForKey:@"scheduleEndTime"];
      v15 = [v14 copy];
      endDate = v5->_endDate;
      v5->_endDate = v15;

      v17 = v26;
    }

    else
    {
      v24 = [v4 wlk_stringForKey:@"canonicalId"];

      if (!v24)
      {
        goto LABEL_6;
      }

      v17 = [[WLKEvent alloc] initWithDictionary:v4];
      if (v17)
      {
        [(NSMutableArray *)v6 addObject:v17];
      }
    }

LABEL_6:
    mutableEvents = v5->_mutableEvents;
    v5->_mutableEvents = v6;
    v19 = v6;

    v20 = [v4 copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v20;
  }

  self = v5;
  v22 = self;
LABEL_9:

  return v22;
}

void __34__WLKSchedule_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[WLKEvent alloc] initWithDictionary:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (NSArray)events
{
  v2 = [(NSMutableArray *)self->_mutableEvents copy];

  return v2;
}

- (id)eventForDate:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_mutableEvents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 startDate];
        v12 = [v10 endDate];
        v13 = [(WLKSchedule *)self _isDate:v4 containedByDate:v11 andDate:v12];

        if (v13)
        {
          v14 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)eventForDate:(id)a3 fuzziness:(double)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_mutableEvents;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x277CCA970]);
        v13 = [v12 initWithStartDate:v6 duration:{a4, v18}];
        v14 = [v11 startDate];
        v15 = [v13 containsDate:v14];

        if (v15)
        {
          v8 = v11;

          goto LABEL_11;
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)adjacentEventsForDate:(id)a3 fuzziness:(double)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_mutableEvents;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 startDate];
        v14 = [v13 dateByAddingTimeInterval:-a4];

        v15 = [v12 endDate];
        v16 = [v15 dateByAddingTimeInterval:a4];

        if ([(WLKSchedule *)self _isDate:v6 containedByDate:v14 andDate:v16])
        {
          [v20 addObject:v12];
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v17 = [v20 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)eventAfterDate:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_mutableEvents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 startDate];
        v11 = [v10 compare:v4];

        if (v11 == 1)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)prune
{
  v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v3 = [MEMORY[0x277CBEAA8] date];
  if ([(NSMutableArray *)self->_mutableEvents count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_mutableEvents objectAtIndex:v4];
      v6 = [v5 endDate];
      v7 = [v3 compare:v6];

      if (v7 == 1)
      {
        [v8 addIndex:v4];
      }

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_mutableEvents count]);
  }

  [(NSMutableArray *)self->_mutableEvents removeObjectsAtIndexes:v8];
}

- (BOOL)_isDate:(id)a3 containedByDate:(id)a4 andDate:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 compare:a4] <= 1 && (objc_msgSend(v7, "compare:", v8) + 1) < 2;

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSDictionary *)self->_dictionary isEqualToDictionary:v4->_dictionary];
  }

  return v5;
}

@end