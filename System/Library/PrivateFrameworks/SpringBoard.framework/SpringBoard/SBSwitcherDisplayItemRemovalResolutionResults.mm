@interface SBSwitcherDisplayItemRemovalResolutionResults
- (void)setActions:(id)a3 forDisplayItem:(id)a4;
@end

@implementation SBSwitcherDisplayItemRemovalResolutionResults

- (void)setActions:(id)a3 forDisplayItem:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = v13;
  v8 = v6;
  displayItemToActions = self->_displayItemToActions;
  if (v13)
  {
    if (!displayItemToActions)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
      v11 = self->_displayItemToActions;
      self->_displayItemToActions = v10;

      v7 = v13;
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