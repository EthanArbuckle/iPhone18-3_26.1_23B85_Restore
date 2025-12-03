@interface SBSwitcherModelRemovalResults
- (BOOL)willHideDisplayItem:(id)item;
- (SBSwitcherModelRemovalResults)init;
- (void)executeActionForAppLayout:(id)layout;
- (void)setAction:(id)action forAppLayout:(id)layout;
- (void)setHide:(BOOL)hide forDisplayItem:(id)item;
@end

@implementation SBSwitcherModelRemovalResults

- (SBSwitcherModelRemovalResults)init
{
  v12.receiver = self;
  v12.super_class = SBSwitcherModelRemovalResults;
  v2 = [(SBSwitcherModelRemovalResults *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    appLayouts = v2->_appLayouts;
    v2->_appLayouts = v3;

    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    appLayoutToAction = v2->_appLayoutToAction;
    v2->_appLayoutToAction = v5;

    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    displayItemToHide = v2->_displayItemToHide;
    v2->_displayItemToHide = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    appLayoutToReplacement = v2->_appLayoutToReplacement;
    v2->_appLayoutToReplacement = v9;
  }

  return v2;
}

- (void)setAction:(id)action forAppLayout:(id)layout
{
  actionCopy = action;
  layoutCopy = layout;
  if (!actionCopy)
  {
    [SBSwitcherModelRemovalResults setAction:a2 forAppLayout:self];
  }

  appLayoutToAction = self->_appLayoutToAction;
  v9 = MEMORY[0x223D6F7F0]();
  [(NSMutableDictionary *)appLayoutToAction setObject:v9 forKey:layoutCopy];

  [(NSMutableSet *)self->_appLayouts addObject:layoutCopy];
}

- (void)setHide:(BOOL)hide forDisplayItem:(id)item
{
  hideCopy = hide;
  displayItemToHide = self->_displayItemToHide;
  v6 = MEMORY[0x277CCABB0];
  itemCopy = item;
  v8 = [v6 numberWithBool:hideCopy];
  [(NSMutableDictionary *)displayItemToHide setObject:v8 forKey:itemCopy];
}

- (void)executeActionForAppLayout:(id)layout
{
  layoutCopy = layout;
  v4 = [(NSMutableDictionary *)self->_appLayoutToAction objectForKey:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->_appLayoutToAction removeObjectForKey:layoutCopy];
    v4[2](v4);
  }
}

- (BOOL)willHideDisplayItem:(id)item
{
  v3 = [(NSMutableDictionary *)self->_displayItemToHide objectForKey:item];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setAction:(uint64_t)a1 forAppLayout:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherModelRemovalResults.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"action"}];
}

@end