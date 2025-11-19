@interface SBMoveDisplayItemFromOtherDisplaySwitcherModifierEvent
- (SBMoveDisplayItemFromOtherDisplaySwitcherModifierEvent)initWithDisplayItem:(id)a3;
@end

@implementation SBMoveDisplayItemFromOtherDisplaySwitcherModifierEvent

- (SBMoveDisplayItemFromOtherDisplaySwitcherModifierEvent)initWithDisplayItem:(id)a3
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = SBMoveDisplayItemFromOtherDisplaySwitcherModifierEvent;
  v7 = [(SBWindowingModifierActivity *)&v9 init];
  if (v7)
  {
    if (!v6)
    {
      [(SBMoveDisplayItemFromOtherDisplaySwitcherModifierEvent *)a2 initWithDisplayItem:v7];
    }

    objc_storeStrong(&v7->_displayItem, a3);
  }

  return v7;
}

- (void)initWithDisplayItem:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMoveDisplayItemFromOtherDisplaySwitcherModifierEvent.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"displayItem"}];
}

@end