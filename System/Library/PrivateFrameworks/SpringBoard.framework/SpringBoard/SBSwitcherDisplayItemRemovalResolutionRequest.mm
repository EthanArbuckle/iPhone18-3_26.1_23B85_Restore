@interface SBSwitcherDisplayItemRemovalResolutionRequest
- (NSArray)displayItems;
- (int64_t)removalIntentTypeForDisplayItem:(id)a3;
- (void)setRemovalIntentType:(int64_t)a3 forDisplayItem:(id)a4;
@end

@implementation SBSwitcherDisplayItemRemovalResolutionRequest

- (NSArray)displayItems
{
  v2 = [(NSMapTable *)self->_displayItemToRemovalIntentType keyEnumerator];
  v3 = [v2 allObjects];

  return v3;
}

- (int64_t)removalIntentTypeForDisplayItem:(id)a3
{
  v3 = [(NSMapTable *)self->_displayItemToRemovalIntentType objectForKey:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setRemovalIntentType:(int64_t)a3 forDisplayItem:(id)a4
{
  v6 = a4;
  displayItemToRemovalIntentType = self->_displayItemToRemovalIntentType;
  v11 = v6;
  if (a3)
  {
    if (!displayItemToRemovalIntentType)
    {
      v8 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v9 = self->_displayItemToRemovalIntentType;
      self->_displayItemToRemovalIntentType = v8;

      displayItemToRemovalIntentType = self->_displayItemToRemovalIntentType;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMapTable *)displayItemToRemovalIntentType setObject:v10 forKey:v11];
    goto LABEL_5;
  }

  [(NSMapTable *)displayItemToRemovalIntentType removeObjectForKey:v6];
  if (![(NSMapTable *)self->_displayItemToRemovalIntentType count])
  {
    v10 = self->_displayItemToRemovalIntentType;
    self->_displayItemToRemovalIntentType = 0;
LABEL_5:
  }
}

@end