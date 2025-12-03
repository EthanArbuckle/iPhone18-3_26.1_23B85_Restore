@interface SBSwitcherShortcutActionSwitcherModifierEvent
- (SBSwitcherShortcutActionSwitcherModifierEvent)initWithShortcutActionType:(int64_t)type displayItem:(id)item displayItemEnvironment:(int64_t)environment shortcutSource:(int64_t)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBSwitcherShortcutActionSwitcherModifierEvent

- (SBSwitcherShortcutActionSwitcherModifierEvent)initWithShortcutActionType:(int64_t)type displayItem:(id)item displayItemEnvironment:(int64_t)environment shortcutSource:(int64_t)source
{
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = SBSwitcherShortcutActionSwitcherModifierEvent;
  v12 = [(SBWindowingModifierActivity *)&v14 init];
  if (v12)
  {
    if (type)
    {
      if (itemCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [SBSwitcherShortcutActionSwitcherModifierEvent initWithShortcutActionType:displayItem:displayItemEnvironment:shortcutSource:];
      if (itemCopy)
      {
LABEL_4:
        if (environment)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    [SBSwitcherShortcutActionSwitcherModifierEvent initWithShortcutActionType:displayItem:displayItemEnvironment:shortcutSource:];
    if (environment)
    {
LABEL_5:
      if (source)
      {
LABEL_6:
        v12->_shortcutActionType = type;
        objc_storeStrong(&v12->_displayItem, item);
        v12->_displayItemEnvironment = environment;
        v12->_shortcutSource = source;
        goto LABEL_7;
      }

LABEL_11:
      [SBSwitcherShortcutActionSwitcherModifierEvent initWithShortcutActionType:displayItem:displayItemEnvironment:shortcutSource:];
      goto LABEL_6;
    }

LABEL_10:
    [SBSwitcherShortcutActionSwitcherModifierEvent initWithShortcutActionType:displayItem:displayItemEnvironment:shortcutSource:];
    if (source)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_7:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBSwitcherShortcutActionSwitcherModifierEvent alloc];
  shortcutActionType = self->_shortcutActionType;
  displayItem = self->_displayItem;
  displayItemEnvironment = self->_displayItemEnvironment;
  shortcutSource = self->_shortcutSource;

  return [(SBSwitcherShortcutActionSwitcherModifierEvent *)v4 initWithShortcutActionType:shortcutActionType displayItem:displayItem displayItemEnvironment:displayItemEnvironment shortcutSource:shortcutSource];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v14.receiver = self;
  v14.super_class = SBSwitcherShortcutActionSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v14 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_shortcutActionType];
  v6 = [v4 appendObject:v5 withName:@"shortcutActionType"];

  succinctDescription = [(SBDisplayItem *)self->_displayItem succinctDescription];
  v8 = [v4 appendObject:succinctDescription withName:@"displayItem"];

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