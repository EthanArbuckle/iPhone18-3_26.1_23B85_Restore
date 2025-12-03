@interface SBSwitcherDisplayItemRemovalResolutionRequest
- (NSArray)displayItems;
- (int64_t)removalIntentTypeForDisplayItem:(id)item;
- (void)setRemovalIntentType:(int64_t)type forDisplayItem:(id)item;
@end

@implementation SBSwitcherDisplayItemRemovalResolutionRequest

- (NSArray)displayItems
{
  keyEnumerator = [(NSMapTable *)self->_displayItemToRemovalIntentType keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  return allObjects;
}

- (int64_t)removalIntentTypeForDisplayItem:(id)item
{
  v3 = [(NSMapTable *)self->_displayItemToRemovalIntentType objectForKey:item];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setRemovalIntentType:(int64_t)type forDisplayItem:(id)item
{
  itemCopy = item;
  displayItemToRemovalIntentType = self->_displayItemToRemovalIntentType;
  v11 = itemCopy;
  if (type)
  {
    if (!displayItemToRemovalIntentType)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v9 = self->_displayItemToRemovalIntentType;
      self->_displayItemToRemovalIntentType = strongToStrongObjectsMapTable;

      displayItemToRemovalIntentType = self->_displayItemToRemovalIntentType;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    [(NSMapTable *)displayItemToRemovalIntentType setObject:v10 forKey:v11];
    goto LABEL_5;
  }

  [(NSMapTable *)displayItemToRemovalIntentType removeObjectForKey:itemCopy];
  if (![(NSMapTable *)self->_displayItemToRemovalIntentType count])
  {
    v10 = self->_displayItemToRemovalIntentType;
    self->_displayItemToRemovalIntentType = 0;
LABEL_5:
  }
}

@end