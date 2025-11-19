@interface SBCenterWindowToFullScreenSwitcherModifier
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (SBCenterWindowToFullScreenSwitcherModifier)initWithTransitionID:(id)a3 fullScreenWithCenterAppLayout:(id)a4;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)handleSceneReadyEvent:(id)a3;
@end

@implementation SBCenterWindowToFullScreenSwitcherModifier

- (SBCenterWindowToFullScreenSwitcherModifier)initWithTransitionID:(id)a3 fullScreenWithCenterAppLayout:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [SBCenterWindowToFullScreenSwitcherModifier initWithTransitionID:a2 fullScreenWithCenterAppLayout:self];
  }

  v18.receiver = self;
  v18.super_class = SBCenterWindowToFullScreenSwitcherModifier;
  v9 = [(SBTransitionSwitcherModifier *)&v18 initWithTransitionID:v7];
  if (v9)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __97__SBCenterWindowToFullScreenSwitcherModifier_initWithTransitionID_fullScreenWithCenterAppLayout___block_invoke;
    v16[3] = &unk_2783A8C90;
    v10 = v8;
    v17 = v10;
    v11 = [v10 appLayoutWithItemsPassingTest:v16];
    fullScreenAppLayoutWithCenterRemoved = v9->_fullScreenAppLayoutWithCenterRemoved;
    v9->_fullScreenAppLayoutWithCenterRemoved = v11;

    v13 = [v10 itemForLayoutRole:4];
    movingCenterItem = v9->_movingCenterItem;
    v9->_movingCenterItem = v13;

    if (!v9->_movingCenterItem)
    {
      [SBCenterWindowToFullScreenSwitcherModifier initWithTransitionID:a2 fullScreenWithCenterAppLayout:v9];
    }
  }

  return v9;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v3 = self;
  v10.receiver = self;
  v10.super_class = SBCenterWindowToFullScreenSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v10 handleSceneReadyEvent:v4];
  v6 = [v4 appLayout];

  LODWORD(v3) = [v6 containsItem:v3->_movingCenterItem];
  if (v3)
  {
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v11.receiver = self;
  v11.super_class = SBCenterWindowToFullScreenSwitcherModifier;
  v6 = a4;
  v7 = [(SBCenterWindowToFullScreenSwitcherModifier *)&v11 isLayoutRoleMatchMovedToScene:a3 inAppLayout:v6];
  movingCenterItem = self->_movingCenterItem;
  v9 = [v6 itemForLayoutRole:{a3, v11.receiver, v11.super_class}];

  LOBYTE(movingCenterItem) = [(SBDisplayItem *)movingCenterItem isEqualToItem:v9];
  return (movingCenterItem | v7) & 1;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = SBCenterWindowToFullScreenSwitcherModifier;
  LOBYTE(v7) = [(SBCenterWindowToFullScreenSwitcherModifier *)&v11 isLayoutRoleBlurred:a3 inAppLayout:v6];
  movingCenterItem = self->_movingCenterItem;
  v9 = [v6 itemForLayoutRole:a3];
  LODWORD(movingCenterItem) = [(SBDisplayItem *)movingCenterItem isEqualToItem:v9];

  if (movingCenterItem)
  {
    v7 = [(SBCenterWindowToFullScreenSwitcherModifier *)self isLayoutRoleContentReady:a3 inAppLayout:v6]^ 1;
  }

  return v7;
}

- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v15.receiver = self;
  v15.super_class = SBCenterWindowToFullScreenSwitcherModifier;
  v6 = a4;
  [(SBCenterWindowToFullScreenSwitcherModifier *)&v15 blurDelayForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  movingCenterItem = self->_movingCenterItem;
  v10 = [v6 itemForLayoutRole:{a3, v15.receiver, v15.super_class}];

  LODWORD(movingCenterItem) = [(SBDisplayItem *)movingCenterItem isEqualToItem:v10];
  if (movingCenterItem)
  {
    v11 = [(SBCenterWindowToFullScreenSwitcherModifier *)self switcherSettings];
    v12 = [v11 animationSettings];
    [v12 resizeBlurDelay];
    v8 = v13;
  }

  return v8;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v4 = a3;
  if ([v4 containsItem:self->_movingCenterItem])
  {
    v5 = SBSwitcherAsyncRenderingAttributesMake(0, 0);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCenterWindowToFullScreenSwitcherModifier;
    v5 = [(SBTransitionSwitcherModifier *)&v8 asyncRenderingAttributesForAppLayout:v4];
  }

  v6 = v5;

  return v6;
}

- (void)initWithTransitionID:(uint64_t)a1 fullScreenWithCenterAppLayout:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCenterWindowToFullScreenSwitcherModifier.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"fullScreenWithCenterAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 fullScreenWithCenterAppLayout:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCenterWindowToFullScreenSwitcherModifier.m" lineNumber:37 description:@"fullScreenWithCenterAppLayout must have center item"];
}

@end