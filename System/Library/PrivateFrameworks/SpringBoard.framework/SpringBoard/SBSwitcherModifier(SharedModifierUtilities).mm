@interface SBSwitcherModifier(SharedModifierUtilities)
@end

@implementation SBSwitcherModifier(SharedModifierUtilities)

- (void)performWithTemporarilyInsertedAppLayout:()SharedModifierUtilities atIndex:block:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherModifierUtilities.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end