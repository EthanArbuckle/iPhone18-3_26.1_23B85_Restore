@interface SBTransitionSwitcherModifierMoveDisplaysContext
+ (id)moveDisplaysContextWithCoordinatedLayoutStateTransitionContext:(id)context relativeToSwitcherController:(id)controller;
- (BOOL)pertainsToAppLayout:(id)layout;
- (BOOL)pertainsToDisplayItem:(id)item;
- (CGRect)fromFrameForDisplayItem:(id)item;
- (CGRect)toFrameForDisplayItem:(id)item;
- (NSSet)movingDisplayItems;
- (SBSwitcherController)switcherController;
- (SBSwitcherCoordinatedLayoutStateTransitionContext)coordinatedLayoutStateTransitionContext;
- (SBTransitionSwitcherModifierMoveDisplaysContext)initWithCoordinatedLayoutStateTransitionContext:(id)context switcherController:(id)controller;
@end

@implementation SBTransitionSwitcherModifierMoveDisplaysContext

+ (id)moveDisplaysContextWithCoordinatedLayoutStateTransitionContext:(id)context relativeToSwitcherController:(id)controller
{
  controllerCopy = controller;
  contextCopy = context;
  v8 = [[self alloc] initWithCoordinatedLayoutStateTransitionContext:contextCopy switcherController:controllerCopy];

  return v8;
}

- (SBTransitionSwitcherModifierMoveDisplaysContext)initWithCoordinatedLayoutStateTransitionContext:(id)context switcherController:(id)controller
{
  contextCopy = context;
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = SBTransitionSwitcherModifierMoveDisplaysContext;
  v8 = [(SBTransitionSwitcherModifierMoveDisplaysContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_coordinatedLayoutStateTransitionContext, contextCopy);
    objc_storeWeak(&v9->_switcherController, controllerCopy);
  }

  return v9;
}

- (NSSet)movingDisplayItems
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinatedLayoutStateTransitionContext);
  displayItems = [WeakRetained displayItems];

  return displayItems;
}

- (BOOL)pertainsToAppLayout:(id)layout
{
  layoutCopy = layout;
  WeakRetained = objc_loadWeakRetained(&self->_coordinatedLayoutStateTransitionContext);
  if (WeakRetained)
  {
    v6 = MEMORY[0x277CBEB98];
    allItems = [layoutCopy allItems];
    v8 = [v6 setWithArray:allItems];

    displayItems = [WeakRetained displayItems];
    v10 = [v8 intersectsSet:displayItems];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)pertainsToDisplayItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_coordinatedLayoutStateTransitionContext);
  displayItems = [WeakRetained displayItems];
  v7 = [displayItems containsObject:itemCopy];

  return v7;
}

- (CGRect)fromFrameForDisplayItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v6 = objc_loadWeakRetained(&self->_coordinatedLayoutStateTransitionContext);
  v7 = v6;
  if (!WeakRetained || !v6)
  {
    goto LABEL_8;
  }

  fromSwitcherController = [v6 fromSwitcherController];
  v9 = [WeakRetained isEqual:fromSwitcherController];

  if (!v9)
  {
    toSwitcherController = [v7 toSwitcherController];
    v15 = [WeakRetained isEqual:toSwitcherController];

    if (v15)
    {
      [v7 fromFrameInToSwitcherForDisplayItem:itemCopy];
      goto LABEL_7;
    }

LABEL_8:
    v16 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    goto LABEL_9;
  }

  [v7 fromFrameInFromSwitcherForDisplayItem:itemCopy];
LABEL_7:
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
LABEL_9:

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)toFrameForDisplayItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v6 = objc_loadWeakRetained(&self->_coordinatedLayoutStateTransitionContext);
  v7 = v6;
  if (!WeakRetained || !v6)
  {
    goto LABEL_8;
  }

  fromSwitcherController = [v6 fromSwitcherController];
  v9 = [WeakRetained isEqual:fromSwitcherController];

  if (!v9)
  {
    toSwitcherController = [v7 toSwitcherController];
    v15 = [WeakRetained isEqual:toSwitcherController];

    if (v15)
    {
      [v7 toFrameInToSwitcherForDisplayItem:itemCopy];
      goto LABEL_7;
    }

LABEL_8:
    v16 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    goto LABEL_9;
  }

  [v7 toFrameInFromSwitcherForDisplayItem:itemCopy];
LABEL_7:
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
LABEL_9:

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (SBSwitcherCoordinatedLayoutStateTransitionContext)coordinatedLayoutStateTransitionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinatedLayoutStateTransitionContext);

  return WeakRetained;
}

- (SBSwitcherController)switcherController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);

  return WeakRetained;
}

@end