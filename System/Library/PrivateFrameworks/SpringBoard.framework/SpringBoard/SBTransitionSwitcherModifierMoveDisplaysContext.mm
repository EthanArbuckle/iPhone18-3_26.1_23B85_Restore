@interface SBTransitionSwitcherModifierMoveDisplaysContext
+ (id)moveDisplaysContextWithCoordinatedLayoutStateTransitionContext:(id)a3 relativeToSwitcherController:(id)a4;
- (BOOL)pertainsToAppLayout:(id)a3;
- (BOOL)pertainsToDisplayItem:(id)a3;
- (CGRect)fromFrameForDisplayItem:(id)a3;
- (CGRect)toFrameForDisplayItem:(id)a3;
- (NSSet)movingDisplayItems;
- (SBSwitcherController)switcherController;
- (SBSwitcherCoordinatedLayoutStateTransitionContext)coordinatedLayoutStateTransitionContext;
- (SBTransitionSwitcherModifierMoveDisplaysContext)initWithCoordinatedLayoutStateTransitionContext:(id)a3 switcherController:(id)a4;
@end

@implementation SBTransitionSwitcherModifierMoveDisplaysContext

+ (id)moveDisplaysContextWithCoordinatedLayoutStateTransitionContext:(id)a3 relativeToSwitcherController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithCoordinatedLayoutStateTransitionContext:v7 switcherController:v6];

  return v8;
}

- (SBTransitionSwitcherModifierMoveDisplaysContext)initWithCoordinatedLayoutStateTransitionContext:(id)a3 switcherController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBTransitionSwitcherModifierMoveDisplaysContext;
  v8 = [(SBTransitionSwitcherModifierMoveDisplaysContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_coordinatedLayoutStateTransitionContext, v6);
    objc_storeWeak(&v9->_switcherController, v7);
  }

  return v9;
}

- (NSSet)movingDisplayItems
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinatedLayoutStateTransitionContext);
  v3 = [WeakRetained displayItems];

  return v3;
}

- (BOOL)pertainsToAppLayout:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_coordinatedLayoutStateTransitionContext);
  if (WeakRetained)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = [v4 allItems];
    v8 = [v6 setWithArray:v7];

    v9 = [WeakRetained displayItems];
    v10 = [v8 intersectsSet:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)pertainsToDisplayItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_coordinatedLayoutStateTransitionContext);
  v6 = [WeakRetained displayItems];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (CGRect)fromFrameForDisplayItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v6 = objc_loadWeakRetained(&self->_coordinatedLayoutStateTransitionContext);
  v7 = v6;
  if (!WeakRetained || !v6)
  {
    goto LABEL_8;
  }

  v8 = [v6 fromSwitcherController];
  v9 = [WeakRetained isEqual:v8];

  if (!v9)
  {
    v14 = [v7 toSwitcherController];
    v15 = [WeakRetained isEqual:v14];

    if (v15)
    {
      [v7 fromFrameInToSwitcherForDisplayItem:v4];
      goto LABEL_7;
    }

LABEL_8:
    v16 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    goto LABEL_9;
  }

  [v7 fromFrameInFromSwitcherForDisplayItem:v4];
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

- (CGRect)toFrameForDisplayItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v6 = objc_loadWeakRetained(&self->_coordinatedLayoutStateTransitionContext);
  v7 = v6;
  if (!WeakRetained || !v6)
  {
    goto LABEL_8;
  }

  v8 = [v6 fromSwitcherController];
  v9 = [WeakRetained isEqual:v8];

  if (!v9)
  {
    v14 = [v7 toSwitcherController];
    v15 = [WeakRetained isEqual:v14];

    if (v15)
    {
      [v7 toFrameInToSwitcherForDisplayItem:v4];
      goto LABEL_7;
    }

LABEL_8:
    v16 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    goto LABEL_9;
  }

  [v7 toFrameInFromSwitcherForDisplayItem:v4];
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