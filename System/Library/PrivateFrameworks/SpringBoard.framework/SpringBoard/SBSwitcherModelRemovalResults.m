@interface SBSwitcherModelRemovalResults
- (BOOL)willHideDisplayItem:(id)a3;
- (SBSwitcherModelRemovalResults)init;
- (void)executeActionForAppLayout:(id)a3;
- (void)setAction:(id)a3 forAppLayout:(id)a4;
- (void)setHide:(BOOL)a3 forDisplayItem:(id)a4;
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

- (void)setAction:(id)a3 forAppLayout:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (!v10)
  {
    [SBSwitcherModelRemovalResults setAction:a2 forAppLayout:self];
  }

  appLayoutToAction = self->_appLayoutToAction;
  v9 = MEMORY[0x223D6F7F0]();
  [(NSMutableDictionary *)appLayoutToAction setObject:v9 forKey:v7];

  [(NSMutableSet *)self->_appLayouts addObject:v7];
}

- (void)setHide:(BOOL)a3 forDisplayItem:(id)a4
{
  v4 = a3;
  displayItemToHide = self->_displayItemToHide;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithBool:v4];
  [(NSMutableDictionary *)displayItemToHide setObject:v8 forKey:v7];
}

- (void)executeActionForAppLayout:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableDictionary *)self->_appLayoutToAction objectForKey:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->_appLayoutToAction removeObjectForKey:v5];
    v4[2](v4);
  }
}

- (BOOL)willHideDisplayItem:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_displayItemToHide objectForKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setAction:(uint64_t)a1 forAppLayout:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherModelRemovalResults.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"action"}];
}

@end