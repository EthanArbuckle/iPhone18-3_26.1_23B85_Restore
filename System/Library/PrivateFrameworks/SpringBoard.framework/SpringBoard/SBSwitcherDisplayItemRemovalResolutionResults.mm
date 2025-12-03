@interface SBSwitcherDisplayItemRemovalResolutionResults
- (void)setActions:(id)actions forDisplayItem:(id)item;
@end

@implementation SBSwitcherDisplayItemRemovalResolutionResults

- (void)setActions:(id)actions forDisplayItem:(id)item
{
  actionsCopy = actions;
  itemCopy = item;
  v7 = actionsCopy;
  v8 = itemCopy;
  displayItemToActions = self->_displayItemToActions;
  if (actionsCopy)
  {
    if (!displayItemToActions)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
      v11 = self->_displayItemToActions;
      self->_displayItemToActions = v10;

      v7 = actionsCopy;
      displayItemToActions = self->_displayItemToActions;
    }

    [(NSMutableDictionary *)displayItemToActions setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)displayItemToActions removeObjectForKey:v8];
    if (![(NSMutableDictionary *)self->_displayItemToActions count])
    {
      v12 = self->_displayItemToActions;
      self->_displayItemToActions = 0;
    }
  }
}

@end