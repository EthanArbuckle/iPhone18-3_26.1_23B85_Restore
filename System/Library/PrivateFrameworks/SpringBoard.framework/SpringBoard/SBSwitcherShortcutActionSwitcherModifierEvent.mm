@interface SBSwitcherShortcutActionSwitcherModifierEvent
- (SBSwitcherShortcutActionSwitcherModifierEvent)initWithShortcutActionType:(int64_t)a3 displayItem:(id)a4 displayItemEnvironment:(int64_t)a5 shortcutSource:(int64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBSwitcherShortcutActionSwitcherModifierEvent

- (SBSwitcherShortcutActionSwitcherModifierEvent)initWithShortcutActionType:(int64_t)a3 displayItem:(id)a4 displayItemEnvironment:(int64_t)a5 shortcutSource:(int64_t)a6
{
  v11 = a4;
  v14.receiver = self;
  v14.super_class = SBSwitcherShortcutActionSwitcherModifierEvent;
  v12 = [(SBWindowingModifierActivity *)&v14 init];
  if (v12)
  {
    if (a3)
    {
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [SBSwitcherShortcutActionSwitcherModifierEvent initWithShortcutActionType:displayItem:displayItemEnvironment:shortcutSource:];
      if (v11)
      {
LABEL_4:
        if (a5)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    [SBSwitcherShortcutActionSwitcherModifierEvent initWithShortcutActionType:displayItem:displayItemEnvironment:shortcutSource:];
    if (a5)
    {
LABEL_5:
      if (a6)
      {
LABEL_6:
        v12->_shortcutActionType = a3;
        objc_storeStrong(&v12->_displayItem, a4);
        v12->_displayItemEnvironment = a5;
        v12->_shortcutSource = a6;
        goto LABEL_7;
      }

LABEL_11:
      [SBSwitcherShortcutActionSwitcherModifierEvent initWithShortcutActionType:displayItem:displayItemEnvironment:shortcutSource:];
      goto LABEL_6;
    }

LABEL_10:
    [SBSwitcherShortcutActionSwitcherModifierEvent initWithShortcutActionType:displayItem:displayItemEnvironment:shortcutSource:];
    if (a6)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_7:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBSwitcherShortcutActionSwitcherModifierEvent alloc];
  shortcutActionType = self->_shortcutActionType;
  displayItem = self->_displayItem;
  displayItemEnvironment = self->_displayItemEnvironment;
  shortcutSource = self->_shortcutSource;

  return [(SBSwitcherShortcutActionSwitcherModifierEvent *)v4 initWithShortcutActionType:shortcutActionType displayItem:displayItem displayItemEnvironment:displayItemEnvironment shortcutSource:shortcutSource];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v14.receiver = self;
  v14.super_class = SBSwitcherShortcutActionSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v14 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_shortcutActionType];
  v6 = [v4 appendObject:v5 withName:@"shortcutActionType"];

  v7 = [(SBDisplayItem *)self->_displayItem succinctDescription];
  v8 = [v4 appendObject:v7 withName:@"displayItem"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_displayItemEnvironment];
  v10 = [v4 appendObject:v9 withName:@"displayItemEnvironment"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_shortcutSource];
  v12 = [v4 appendObject:v11 withName:@"shortcutSource"];

  return v4;
}

- (void)initWithShortcutActionType:displayItem:displayItemEnvironment:shortcutSource:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"shortcutActionType" object:? file:? lineNumber:? description:?];
}

- (void)initWithShortcutActionType:displayItem:displayItemEnvironment:shortcutSource:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"displayItem" object:? file:? lineNumber:? description:?];
}

- (void)initWithShortcutActionType:displayItem:displayItemEnvironment:shortcutSource:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"displayItemEnvironment" object:? file:? lineNumber:? description:?];
}

- (void)initWithShortcutActionType:displayItem:displayItemEnvironment:shortcutSource:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"source" object:? file:? lineNumber:? description:?];
}

@end