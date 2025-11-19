@interface REUITrainingContext
- (BOOL)isDisplayingElementWithIdentifier:(id)a3;
- (BOOL)performSimulationCommand:(id)a3 withOptions:(id)a4;
- (REUITrainingContext)init;
- (id)_higherElementsThanElement:(id)a3;
- (id)_interactionForElement:(id)a3;
- (id)_lowerElementsThanElement:(id)a3;
- (id)_visibleElements;
- (void)_trainDwellForElement:(id)a3 withInterval:(double)a4;
- (void)_willResignCurrent;
- (void)elementWithIdentifierDidDisplay:(id)a3;
- (void)elementWithIdentifierDidEndDisplay:(id)a3;
- (void)resetContext;
- (void)selectElementWithIdentifier:(id)a3;
@end

@implementation REUITrainingContext

- (REUITrainingContext)init
{
  v8.receiver = self;
  v8.super_class = REUITrainingContext;
  v2 = [(RETrainingContext *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    becameVisibleDates = v2->_becameVisibleDates;
    v2->_becameVisibleDates = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    visibilityDurations = v2->_visibilityDurations;
    v2->_visibilityDurations = v5;

    v2->_resetsWhenResignsCurrent = 1;
  }

  return v2;
}

- (void)selectElementWithIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = [(REUITrainingContext *)self _visibleElements];
    [v5 addObjectsFromArray:v6];

    [v5 removeObject:v4];
    v7 = [(REUITrainingContext *)self _higherElementsThanElement:v4];
    [v5 addObjectsFromArray:v7];

    if (soft_RETrainingSimulationIsCurrentlyActive())
    {
      v8 = [(REUITrainingContext *)self _lowerElementsThanElement:v4];
      if ([v8 count])
      {
        v9 = [v8 firstObject];
        [v5 addObject:v9];
      }
    }

    v10 = [(REUITrainingContext *)self _interactionForElement:v4];
    if (([v10 isEqualToString:*MEMORY[0x277D44508]] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277D44510]))
    {
      [(RETrainingContext *)self trainWithElement:v4 isPositiveEvent:1 interaction:@"tap"];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(RETrainingContext *)self trainWithElement:*(*(&v17 + 1) + 8 * v15++) isPositiveEvent:0 interaction:@"tap", v17];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)elementWithIdentifierDidDisplay:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_becameVisibleDates objectForKeyedSubscript:?];

  if (!v4)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    [(NSMutableDictionary *)self->_becameVisibleDates setObject:v5 forKeyedSubscript:v6];
  }
}

- (void)_trainDwellForElement:(id)a3 withInterval:(double)a4
{
  v9 = a3;
  [(REUITrainingContext *)self maximumNegativeDwellTime];
  if (v6 > a4)
  {
    [(RETrainingContext *)self trainWithElement:v9 isPositiveEvent:0 interaction:@"tap"];
  }

  [(REUITrainingContext *)self minimumPositiveDwellTime];
  if (v7 < a4)
  {
    v8 = [(REUITrainingContext *)self _interactionForElement:v9];
    if (([v8 isEqualToString:*MEMORY[0x277D44508]] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277D44518]))
    {
      [(RETrainingContext *)self trainWithElement:v9 isPositiveEvent:1 interaction:@"tap"];
    }
  }
}

- (void)elementWithIdentifierDidEndDisplay:(id)a3
{
  v14 = a3;
  v4 = [(NSMutableDictionary *)self->_becameVisibleDates objectForKeyedSubscript:?];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [(NSMutableDictionary *)self->_becameVisibleDates objectForKeyedSubscript:v14];
    [(NSMutableDictionary *)self->_becameVisibleDates removeObjectForKey:v14];
    if ((soft_RETrainingSimulationIsCurrentlyActive() & 1) == 0)
    {
      [v5 timeIntervalSinceDate:v6];
      v8 = v7;
      v9 = [(NSMutableDictionary *)self->_visibilityDurations objectForKeyedSubscript:v14];
      v10 = MEMORY[0x277CCABB0];
      if (v9)
      {
        v11 = v9;
        [v9 doubleValue];
        if (v12 < v8)
        {
          v12 = v8;
        }

        v13 = [v10 numberWithDouble:v12];
      }

      else
      {
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
      }

      [(NSMutableDictionary *)self->_visibilityDurations setObject:v13 forKeyedSubscript:v14];
    }
  }
}

- (BOOL)isDisplayingElementWithIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_becameVisibleDates objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)resetContext
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMutableDictionary *)self->_becameVisibleDates allKeys];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(REUITrainingContext *)self elementWithIdentifierDidEndDisplay:*(*(&v11 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  visibilityDurations = self->_visibilityDurations;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__REUITrainingContext_resetContext__block_invoke;
  v10[3] = &unk_279AF64D8;
  v10[4] = self;
  [(NSMutableDictionary *)visibilityDurations enumerateKeysAndObjectsUsingBlock:v10];
  [(NSMutableDictionary *)self->_visibilityDurations removeAllObjects];
  v9 = *MEMORY[0x277D85DE8];
}

void __35__REUITrainingContext_resetContext__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [a3 doubleValue];
  [v4 _trainDwellForElement:v5 withInterval:?];
}

- (id)_interactionForElement:(id)a3
{
  v3 = [(REUITrainingContext *)self interactionTypeForElement:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = *MEMORY[0x277D44508];
  }

  v6 = v5;

  return v5;
}

- (id)_visibleElements
{
  v3 = MEMORY[0x277CBEBF8];
  if ((soft_RETrainingSimulationIsCurrentlyActive() & 1) == 0)
  {
    v4 = [(REUITrainingContext *)self visibleElementIdentifiers];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v3;
    }

    v3 = v6;
  }

  return v3;
}

- (id)_higherElementsThanElement:(id)a3
{
  v3 = [(REUITrainingContext *)self elementsOrdered:1 relativeToElement:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (id)_lowerElementsThanElement:(id)a3
{
  v3 = [(REUITrainingContext *)self elementsOrdered:0 relativeToElement:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (void)_willResignCurrent
{
  if (self->_resetsWhenResignsCurrent)
  {
    [(REUITrainingContext *)self resetContext];
  }
}

- (BOOL)performSimulationCommand:(id)a3 withOptions:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"tap"])
  {
    v8 = [v7 objectForKeyedSubscript:@"id"];
    v9 = v8 != 0;
    if (v8)
    {
      [(REUITrainingContext *)self selectElementWithIdentifier:v8];
    }
  }

  else if ([v6 isEqualToString:@"dwell"])
  {
    v8 = [v7 objectForKeyedSubscript:@"id"];
    [(REUITrainingContext *)self selectElementWithIdentifier:v8];
    v9 = v8 != 0;
    if (v8)
    {
      v10 = [(REUITrainingContext *)self _higherElementsThanElement:v8];
      v11 = ([(REUITrainingContext *)self onScreenElementCount]- 1) >> 1;
      v12 = [v10 count];
      v13 = (v12 - v11) & ~((v12 - v11) >> 63);
      if (v13 + v11 <= [v10 count])
      {
        v14 = v11;
      }

      else
      {
        v14 = 0;
      }

      v15 = [MEMORY[0x277CBEB58] setWithObject:v8];
      v16 = [v10 subarrayWithRange:{v13, v14}];
      [v15 addObjectsFromArray:v16];

      v35 = v10;
      v17 = [v10 subarrayWithRange:{0, v13}];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v18 = v15;
      v19 = [v18 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v42;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v42 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v41 + 1) + 8 * i);
            [(REUITrainingContext *)self minimumPositiveDwellTime];
            [(REUITrainingContext *)self _trainDwellForElement:v23 withInterval:v24 * 1.1];
          }

          v20 = [v18 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v20);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v25 = v17;
      v26 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v38;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v38 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v37 + 1) + 8 * j);
            [(REUITrainingContext *)self maximumNegativeDwellTime];
            [(REUITrainingContext *)self _trainDwellForElement:v30 withInterval:v31 * 0.9];
          }

          v27 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v27);
      }

      v9 = 1;
    }
  }

  else
  {
    if (![v6 isEqualToString:@"action"])
    {
      v9 = 0;
      goto LABEL_28;
    }

    v8 = [v7 objectForKeyedSubscript:@"id"];
    v9 = v8 != 0;
    if (v8)
    {
      v32 = [MEMORY[0x277CBEAA8] date];
      v36 = v8;
      REEnumerateTrainingStateForDate();

      [(RETrainingContext *)self setAttribute:0 forKey:*MEMORY[0x277D44538]];
    }
  }

LABEL_28:
  v33 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __60__REUITrainingContext_performSimulationCommand_withOptions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) setAttribute:a3 forKey:*MEMORY[0x277D44538]];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 trainWithElement:v6 isPositiveEvent:a2 interaction:@"action"];
}

@end