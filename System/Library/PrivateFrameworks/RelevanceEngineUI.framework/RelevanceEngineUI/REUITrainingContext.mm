@interface REUITrainingContext
- (BOOL)isDisplayingElementWithIdentifier:(id)identifier;
- (BOOL)performSimulationCommand:(id)command withOptions:(id)options;
- (REUITrainingContext)init;
- (id)_higherElementsThanElement:(id)element;
- (id)_interactionForElement:(id)element;
- (id)_lowerElementsThanElement:(id)element;
- (id)_visibleElements;
- (void)_trainDwellForElement:(id)element withInterval:(double)interval;
- (void)_willResignCurrent;
- (void)elementWithIdentifierDidDisplay:(id)display;
- (void)elementWithIdentifierDidEndDisplay:(id)display;
- (void)resetContext;
- (void)selectElementWithIdentifier:(id)identifier;
@end

@implementation REUITrainingContext

- (REUITrainingContext)init
{
  v8.receiver = self;
  v8.super_class = REUITrainingContext;
  v2 = [(RETrainingContext *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    becameVisibleDates = v2->_becameVisibleDates;
    v2->_becameVisibleDates = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    visibilityDurations = v2->_visibilityDurations;
    v2->_visibilityDurations = dictionary2;

    v2->_resetsWhenResignsCurrent = 1;
  }

  return v2;
}

- (void)selectElementWithIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    _visibleElements = [(REUITrainingContext *)self _visibleElements];
    [v5 addObjectsFromArray:_visibleElements];

    [v5 removeObject:identifierCopy];
    v7 = [(REUITrainingContext *)self _higherElementsThanElement:identifierCopy];
    [v5 addObjectsFromArray:v7];

    if (soft_RETrainingSimulationIsCurrentlyActive())
    {
      v8 = [(REUITrainingContext *)self _lowerElementsThanElement:identifierCopy];
      if ([v8 count])
      {
        firstObject = [v8 firstObject];
        [v5 addObject:firstObject];
      }
    }

    v10 = [(REUITrainingContext *)self _interactionForElement:identifierCopy];
    if (([v10 isEqualToString:*MEMORY[0x277D44508]] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277D44510]))
    {
      [(RETrainingContext *)self trainWithElement:identifierCopy isPositiveEvent:1 interaction:@"tap"];
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

- (void)elementWithIdentifierDidDisplay:(id)display
{
  displayCopy = display;
  v4 = [(NSMutableDictionary *)self->_becameVisibleDates objectForKeyedSubscript:?];

  if (!v4)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(NSMutableDictionary *)self->_becameVisibleDates setObject:date forKeyedSubscript:displayCopy];
  }
}

- (void)_trainDwellForElement:(id)element withInterval:(double)interval
{
  elementCopy = element;
  [(REUITrainingContext *)self maximumNegativeDwellTime];
  if (v6 > interval)
  {
    [(RETrainingContext *)self trainWithElement:elementCopy isPositiveEvent:0 interaction:@"tap"];
  }

  [(REUITrainingContext *)self minimumPositiveDwellTime];
  if (v7 < interval)
  {
    v8 = [(REUITrainingContext *)self _interactionForElement:elementCopy];
    if (([v8 isEqualToString:*MEMORY[0x277D44508]] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277D44518]))
    {
      [(RETrainingContext *)self trainWithElement:elementCopy isPositiveEvent:1 interaction:@"tap"];
    }
  }
}

- (void)elementWithIdentifierDidEndDisplay:(id)display
{
  displayCopy = display;
  v4 = [(NSMutableDictionary *)self->_becameVisibleDates objectForKeyedSubscript:?];

  if (v4)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v6 = [(NSMutableDictionary *)self->_becameVisibleDates objectForKeyedSubscript:displayCopy];
    [(NSMutableDictionary *)self->_becameVisibleDates removeObjectForKey:displayCopy];
    if ((soft_RETrainingSimulationIsCurrentlyActive() & 1) == 0)
    {
      [date timeIntervalSinceDate:v6];
      v8 = v7;
      v9 = [(NSMutableDictionary *)self->_visibilityDurations objectForKeyedSubscript:displayCopy];
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

      [(NSMutableDictionary *)self->_visibilityDurations setObject:v13 forKeyedSubscript:displayCopy];
    }
  }
}

- (BOOL)isDisplayingElementWithIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_becameVisibleDates objectForKeyedSubscript:identifier];
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
  allKeys = [(NSMutableDictionary *)self->_becameVisibleDates allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        [(REUITrainingContext *)self elementWithIdentifierDidEndDisplay:*(*(&v11 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)_interactionForElement:(id)element
{
  v3 = [(REUITrainingContext *)self interactionTypeForElement:element];
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
    visibleElementIdentifiers = [(REUITrainingContext *)self visibleElementIdentifiers];
    v5 = visibleElementIdentifiers;
    if (visibleElementIdentifiers)
    {
      v6 = visibleElementIdentifiers;
    }

    else
    {
      v6 = v3;
    }

    v3 = v6;
  }

  return v3;
}

- (id)_higherElementsThanElement:(id)element
{
  v3 = [(REUITrainingContext *)self elementsOrdered:1 relativeToElement:element];
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

- (id)_lowerElementsThanElement:(id)element
{
  v3 = [(REUITrainingContext *)self elementsOrdered:0 relativeToElement:element];
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

- (BOOL)performSimulationCommand:(id)command withOptions:(id)options
{
  v47 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  optionsCopy = options;
  if ([commandCopy isEqualToString:@"tap"])
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"id"];
    v9 = v8 != 0;
    if (v8)
    {
      [(REUITrainingContext *)self selectElementWithIdentifier:v8];
    }
  }

  else if ([commandCopy isEqualToString:@"dwell"])
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"id"];
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
    if (![commandCopy isEqualToString:@"action"])
    {
      v9 = 0;
      goto LABEL_28;
    }

    v8 = [optionsCopy objectForKeyedSubscript:@"id"];
    v9 = v8 != 0;
    if (v8)
    {
      date = [MEMORY[0x277CBEAA8] date];
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